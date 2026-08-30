	.include "MPlayDef.s"

	.equ	mus_lucky_grp, voicegroup_lucky
	.equ	mus_lucky_pri, 0
	.equ	mus_lucky_rev, reverb_set+50
	.equ	mus_lucky_mvl, 100
	.equ	mus_lucky_key, 0
	.equ	mus_lucky_tbs, 1
	.equ	mus_lucky_exg, 1
	.equ	mus_lucky_cmp, 1

	.section .rodata
	.global	mus_lucky
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_lucky_1:
	.byte	KEYSH , mus_lucky_key+0
mus_lucky_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 67*mus_lucky_tbs/2
	.byte	TEMPO , 66*mus_lucky_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_lucky_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N23   , En1 , v116
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        An0 
	.byte	W24
	.byte		N23   
	.byte	W24
@ 001   ----------------------------------------
mus_lucky_1_001:
	.byte		N23   , Gn0 , v100
	.byte	W24
	.byte		        Gn0 , v116
	.byte	W24
	.byte		        Bn0 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_lucky_1_002:
	.byte		N23   , Bn0 , v116
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
mus_lucky_1_003:
	.byte		N23   , En1 , v116
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        An0 , v100
	.byte	W24
	.byte		N11   , Dn1 , v116
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte		N23   , Cn1 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   , Gn0 , v100
	.byte	W12
	.byte		        Gn0 , v116
	.byte	W12
	.byte		N23   
	.byte	W24
@ 005   ----------------------------------------
mus_lucky_1_005:
	.byte		N23   , Bn0 , v116
	.byte	W24
	.byte		        Fs1 
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
mus_lucky_1_006:
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   , An0 , v100
	.byte	W06
	.byte		        Bn0 , v116
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
mus_lucky_1_007:
	.byte		N23   , En1 , v116
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   , An0 , v100
	.byte	W06
	.byte		        Bn0 , v116
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
mus_lucky_1_008:
	.byte		N23   , En1 , v116
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        An0 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_001
@ 010   ----------------------------------------
mus_lucky_1_010:
	.byte		N11   , Bn0 , v116
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_007
@ 012   ----------------------------------------
	.byte		N23   , Cn1 , v116
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Gn0 , v100
	.byte	W24
	.byte		        Gn0 , v116
	.byte	W24
@ 013   ----------------------------------------
mus_lucky_1_013:
	.byte		N11   , Bn0 , v116
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N23   , En1 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_007
@ 016   ----------------------------------------
	.byte	TEMPO , 66*mus_lucky_tbs/2
	.byte		N23   , An1 , v116
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   , An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N23   , An0 
	.byte	W24
@ 017   ----------------------------------------
mus_lucky_1_017:
	.byte		N23   , En1 , v116
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N05   , An0 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte	PEND
@ 018   ----------------------------------------
mus_lucky_1_018:
	.byte		N23   , An1 , v116
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   , An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N23   , An0 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_017
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_018
@ 021   ----------------------------------------
	.byte	TEMPO , 65*mus_lucky_tbs/2
	.byte		N23   , En1 , v116
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	TEMPO , 64*mus_lucky_tbs/2
	.byte		N23   
	.byte	W24
	.byte		N05   , An0 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
@ 022   ----------------------------------------
	.byte		N11   , Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N23   , As1 
	.byte	W24
	.byte	TEMPO , 64*mus_lucky_tbs/2
	.byte		N92   , Bn0 , v116, gtp3
	.byte	W48
@ 023   ----------------------------------------
	.byte	W48
@ 024   ----------------------------------------
	.byte	TEMPO , 65*mus_lucky_tbs/2
	.byte		N23   , En1 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   , An0 , v100
	.byte	W06
	.byte		        Bn0 , v116
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_007
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_007
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_007
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_008
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_003
@ 032   ----------------------------------------
	.byte	TEMPO , 66*mus_lucky_tbs/2
	.byte		N23   , Cn1 , v116
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   , Gn0 , v100
	.byte	W12
	.byte		        Gn0 , v116
	.byte	W12
	.byte		N23   
	.byte	W24
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_005
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_006
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_007
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_008
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_010
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_007
@ 040   ----------------------------------------
	.byte	TEMPO , 67*mus_lucky_tbs/2
	.byte		N23   , Cn1 , v116
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Gn0 , v100
	.byte	W24
	.byte		        Gn0 , v116
	.byte	W24
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_013
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_006
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_007
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_018
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_017
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_018
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_017
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_018
@ 049   ----------------------------------------
	.byte		N23   , En1 , v116
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	TEMPO , 64*mus_lucky_tbs/2
	.byte		N23   
	.byte	W24
	.byte		N05   , An0 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
@ 050   ----------------------------------------
	.byte		N11   , Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N23   , As1 
	.byte	W24
	.byte	TEMPO , 65*mus_lucky_tbs/2
	.byte		N92   , Bn0 , v116, gtp3
	.byte	W48
@ 051   ----------------------------------------
	.byte	W48
@ 052   ----------------------------------------
	.byte	TEMPO , 68*mus_lucky_tbs/2
	.byte		N44   , En1 , v116, gtp3
	.byte	W60
	.byte		N23   
	.byte	W24
	.byte		        Dn1 
	.byte	W12
@ 053   ----------------------------------------
mus_lucky_1_053:
	.byte	W12
	.byte		N23   , Cn1 , v116
	.byte	W24
	.byte		        Fs1 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 054   ----------------------------------------
mus_lucky_1_054:
	.byte		N44   , En1 , v116, gtp3
	.byte	W60
	.byte		N23   
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_053
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_054
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_053
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_054
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_053
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_007
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_007
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_018
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_017
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_018
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_017
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_018
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_1_017
@ 068   ----------------------------------------
	.byte	TEMPO , 66*mus_lucky_tbs/2
	.byte		N11   , Cn1 , v116
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N23   , As1 
	.byte	W24
	.byte	TEMPO , 65*mus_lucky_tbs/2
	.byte		N92   , Bn0 , v116, gtp3
	.byte	W48
@ 069   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte	GOTO
	 .word	mus_lucky_1_B1
mus_lucky_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_lucky_2:
	.byte	KEYSH , mus_lucky_key+0
mus_lucky_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 46*mus_lucky_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		TIE   , Bn3 , v036
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W48
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W48
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W48
@ 015   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		N05   , Bn1 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 016   ----------------------------------------
mus_lucky_2_016:
	.byte		N23   , Cs3 , v052
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 017   ----------------------------------------
mus_lucky_2_017:
	.byte		N23   , Bn2 , v052
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_2_016
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_2_017
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_2_016
@ 021   ----------------------------------------
mus_lucky_2_021:
	.byte		N23   , Bn2 , v052
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 022   ----------------------------------------
mus_lucky_2_022:
	.byte		N11   , En2 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N92   , An2 , v052, gtp3
	.byte	W48
	.byte	PEND
@ 023   ----------------------------------------
	.byte	W48
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte		N11   , En3 , v032
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N05   , Gn2 , v052
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N28   , En2 , v052, gtp1
	.byte	W30
	.byte		N05   , Fn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		TIE   
	.byte	W06
@ 026   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 027   ----------------------------------------
	.byte		N11   , En3 , v032
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N05   , Gn2 , v052
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N52   , En2 , v052, gtp1
	.byte	W54
@ 028   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		N11   , An2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N05   , Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 029   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N23   , Fs2 
	.byte	W24
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 030   ----------------------------------------
	.byte		        Dn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 031   ----------------------------------------
mus_lucky_2_031:
	.byte		N23   , En2 , v052
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N05   , Bn1 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   , Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 032   ----------------------------------------
	.byte		N23   , En2 
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N23   
	.byte	W24
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 033   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N23   , Bn1 
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 034   ----------------------------------------
mus_lucky_2_034:
	.byte		N11   , Bn1 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   , Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_2_031
@ 036   ----------------------------------------
	.byte		N23   , En2 , v052
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N23   , An2 
	.byte	W24
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N05   , Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 037   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 038   ----------------------------------------
	.byte		        Dn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W12
	.byte		N05   , Bn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , An2 
	.byte	W12
@ 039   ----------------------------------------
	.byte		N23   , En2 
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 040   ----------------------------------------
	.byte		N23   , En2 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 041   ----------------------------------------
	.byte		N23   , Bn2 
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Bn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N23   , En2 
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_2_034
@ 043   ----------------------------------------
	.byte		N23   , En2 , v052
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_2_016
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_2_017
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_2_016
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_2_017
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_2_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_2_021
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_2_022
@ 051   ----------------------------------------
	.byte	W48
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
mus_lucky_2_056:
	.byte		N11   , En2 , v052
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N01   , Cs2 
	.byte	W06
	.byte		N11   , En3 
	.byte	W12
	.byte		N01   , Cs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte	PEND
@ 057   ----------------------------------------
mus_lucky_2_057:
	.byte		N01   , Cs2 , v052
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N01   , Cs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N17   , Fs2 
	.byte	W18
	.byte		N05   , Bn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 , v044
	.byte	W06
	.byte		N11   , Fs2 , v052
	.byte	W12
	.byte	PEND
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_2_056
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_2_057
@ 060   ----------------------------------------
	.byte		N05   , Bn1 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 061   ----------------------------------------
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 062   ----------------------------------------
mus_lucky_2_062:
	.byte		N23   , Cs3 , v052
	.byte	W24
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
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_2_017
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_2_062
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_2_017
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_2_062
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_2_021
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_2_022
@ 069   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte	GOTO
	 .word	mus_lucky_2_B1
mus_lucky_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_lucky_3:
	.byte	KEYSH , mus_lucky_key+0
mus_lucky_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_lucky_mvl/mxv
	.byte		PAN   , c_v+10
	.byte	W12
	.byte		N11   , Gn2 , v112
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N44   , An2 , v112, gtp3
	.byte	W48
@ 001   ----------------------------------------
mus_lucky_3_001:
	.byte	W12
	.byte		N11   , Gn2 , v112
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N44   , Bn2 , v112, gtp3
	.byte	W48
	.byte	PEND
@ 002   ----------------------------------------
mus_lucky_3_002:
	.byte	W24
	.byte		N11   , An2 , v112
	.byte	W12
	.byte		N44   , Bn2 , v112, gtp3
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W12
	.byte		N23   , Cn3 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		        An2 
	.byte	W12
@ 005   ----------------------------------------
	.byte	W12
	.byte		        Fs3 
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N23   , En3 , v104
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
mus_lucky_3_008:
	.byte	W12
	.byte		N11   , Gn2 , v112
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N44   , An2 , v112, gtp3
	.byte	W48
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_3_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_3_002
@ 011   ----------------------------------------
	.byte	W90
	.byte		N05   , Cn3 , v096
	.byte	W06
@ 012   ----------------------------------------
	.byte		N11   , Cn3 , v112
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		        An2 
	.byte	W12
@ 013   ----------------------------------------
mus_lucky_3_013:
	.byte	W12
	.byte		N23   , Fs3 , v112
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N23   , En3 , v108
	.byte	W48
	.byte	PEND
@ 014   ----------------------------------------
	.byte	W48
@ 015   ----------------------------------------
mus_lucky_3_015:
	.byte	W48
	.byte		N11   , Dn3 , v112
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N68   , Cs3 , v112, gtp3
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_lucky_3_016:
	.byte	W66
	.byte		N11   , Bn2 , v112
	.byte	W12
	.byte		N05   , An2 
	.byte	W06
	.byte		N11   , Bn2 , v108
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_lucky_3_017:
	.byte		N40   , Gn2 , v112, gtp1
	.byte	W48
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N68   , Cs3 , v112, gtp3
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_lucky_3_018:
	.byte	W66
	.byte		N11   , Bn2 , v112
	.byte	W12
	.byte		N05   , An2 
	.byte	W06
	.byte		N44   , Bn2 , v112, gtp3
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_lucky_3_019:
	.byte	W42
	.byte		N05   , En3 , v120
	.byte	W06
	.byte		N11   , Dn3 , v112
	.byte	W12
	.byte		N23   , En3 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
mus_lucky_3_020:
	.byte		N64   , Cs3 , v112, gtp1
	.byte	W72
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N23   
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_lucky_3_021:
	.byte	W12
	.byte		N23   , Gn2 , v112
	.byte	W24
	.byte		        Fs3 
	.byte	W36
	.byte		N11   , En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_lucky_3_022:
	.byte		N11   , Gn2 , v112
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N44   , Bn2 , v112, gtp3
	.byte	W48
	.byte	PEND
@ 023   ----------------------------------------
	.byte	W48
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_3_008
@ 029   ----------------------------------------
	.byte	W12
	.byte		N11   , Gn2 , v112
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N56   , Bn2 , v112, gtp3
	.byte	W48
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_3_002
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte		N11   , En3 , v112
	.byte	W12
	.byte		N23   , Cn3 , v120
	.byte	W24
	.byte		        Bn2 , v112
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		        An2 
	.byte	W12
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_3_013
@ 034   ----------------------------------------
	.byte	W48
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_3_008
@ 037   ----------------------------------------
	.byte	W36
	.byte		N11   , Gn2 , v112
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
@ 038   ----------------------------------------
	.byte		        En3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
@ 039   ----------------------------------------
	.byte		N05   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N56   , Bn2 , v112, gtp3
	.byte	W84
@ 040   ----------------------------------------
	.byte		N23   , En3 , v108
	.byte	W24
	.byte		        Dn3 , v112
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        An2 
	.byte	W24
@ 041   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N32   , Gn2 , v112, gtp3
	.byte	W60
@ 042   ----------------------------------------
	.byte	W48
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_3_015
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_3_016
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_3_017
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_3_018
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_3_019
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_3_020
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_3_021
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_3_022
@ 051   ----------------------------------------
	.byte	W48
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
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W72
	.byte		N11   , En3 , v112
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_lucky_3_022
@ 069   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte	GOTO
	 .word	mus_lucky_3_B1
mus_lucky_3_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_lucky:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_lucky_pri	@ Priority
	.byte	mus_lucky_rev	@ Reverb.

	.word	mus_lucky_grp

	.word	mus_lucky_1
	.word	mus_lucky_2
	.word	mus_lucky_3

	.end
