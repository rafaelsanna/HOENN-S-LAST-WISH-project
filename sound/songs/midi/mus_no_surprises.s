	.include "MPlayDef.s"

	.equ	mus_no_surprises_grp, voicegroup_no_surprises
	.equ	mus_no_surprises_pri, 0
	.equ	mus_no_surprises_rev, reverb_set+50
	.equ	mus_no_surprises_mvl, 100
	.equ	mus_no_surprises_key, 0
	.equ	mus_no_surprises_tbs, 1
	.equ	mus_no_surprises_exg, 1
	.equ	mus_no_surprises_cmp, 1

	.section .rodata
	.global	mus_no_surprises
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_no_surprises_1:
	.byte	KEYSH , mus_no_surprises_key+0
mus_no_surprises_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 75*mus_no_surprises_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_no_surprises_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N44   , Fn1 , v112, gtp3
	.byte	W48
	.byte		N08   
	.byte	W12
	.byte		N32   , Fn1 , v112, gtp3
	.byte	W36
@ 001   ----------------------------------------
	.byte		N44   , Fn1 , v112, gtp3
	.byte	W48
	.byte		N17   , As1 
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N11   , Gn1 
	.byte	W12
@ 002   ----------------------------------------
	.byte		N44   , Fn1 , v112, gtp3
	.byte	W48
	.byte		N08   
	.byte	W12
	.byte		N32   , Fn1 , v112, gtp3
	.byte	W36
@ 003   ----------------------------------------
	.byte		N44   , Fn1 , v112, gtp3
	.byte	W48
	.byte		N17   , As1 
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   , An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 004   ----------------------------------------
	.byte		N44   , Fn1 , v112, gtp3
	.byte	W48
	.byte		N05   
	.byte	W12
	.byte		N17   
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 005   ----------------------------------------
mus_no_surprises_1_005:
	.byte		N32   , Fn1 , v112, gtp3
	.byte	W36
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N17   , As1 
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
mus_no_surprises_1_006:
	.byte		N44   , Fn1 , v112, gtp3
	.byte	W48
	.byte		N02   
	.byte	W12
	.byte		N17   
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_005
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_006
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_006
@ 010   ----------------------------------------
	.byte		N44   , As0 , v112, gtp3
	.byte	W48
	.byte		N02   
	.byte	W12
	.byte		N32   , As0 , v112, gtp3
	.byte	W36
@ 011   ----------------------------------------
	.byte		N44   , As0 , v112, gtp3
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , An1 
	.byte	W12
@ 012   ----------------------------------------
mus_no_surprises_1_012:
	.byte		N32   , Gn1 , v112, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		        As1 
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
mus_no_surprises_1_013:
	.byte		N32   , Cn2 , v112, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		        As1 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
	.byte		N44   , Fn1 , v112, gtp3
	.byte	W12
	.byte	TEMPO , 76*mus_no_surprises_tbs/2
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N32   , Fn1 , v112, gtp3
	.byte	W36
@ 015   ----------------------------------------
mus_no_surprises_1_015:
	.byte		N44   , Fn1 , v112, gtp3
	.byte	W48
	.byte		N05   , As1 
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N11   , Gn1 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_006
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_006
@ 018   ----------------------------------------
mus_no_surprises_1_018:
	.byte		N44   , As1 , v112, gtp3
	.byte	W48
	.byte		N02   
	.byte	W12
	.byte		N32   , As1 , v112, gtp3
	.byte	W36
	.byte	PEND
@ 019   ----------------------------------------
mus_no_surprises_1_019:
	.byte		N44   , As1 , v112, gtp3
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , An1 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_013
@ 022   ----------------------------------------
	.byte	TEMPO , 77*mus_no_surprises_tbs/2
	.byte		N44   , Fn1 , v112, gtp3
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N32   , Fn1 , v112, gtp3
	.byte	W36
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_015
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_006
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_006
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_019
@ 028   ----------------------------------------
mus_no_surprises_1_028:
	.byte		N23   , Gn1 , v112
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_no_surprises_1_029:
	.byte		N11   , Cn2 , v112
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_028
@ 031   ----------------------------------------
mus_no_surprises_1_031:
	.byte		N11   , Cn2 , v112
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte	PEND
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_028
@ 033   ----------------------------------------
mus_no_surprises_1_033:
	.byte		N11   , Cn2 , v112
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte	PEND
@ 034   ----------------------------------------
	.byte	TEMPO , 74*mus_no_surprises_tbs/2
	.byte		TIE   , Fn1 
	.byte	W96
@ 035   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N44   , As1 , v092, gtp3
	.byte	W48
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W48
	.byte		        As1 , v112, gtp3
	.byte	W48
@ 038   ----------------------------------------
	.byte	TEMPO , 74*mus_no_surprises_tbs/2
	.byte		TIE   , Fn2 , v120
	.byte	W96
@ 039   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N44   , En2 , v112, gtp3
	.byte	W48
@ 040   ----------------------------------------
	.byte	TEMPO , 78*mus_no_surprises_tbs/2
	.byte		        Dn2 , v112, gtp3
	.byte	W48
	.byte		        Dn2 , v112, gtp3
	.byte	W48
@ 041   ----------------------------------------
	.byte		        Dn2 , v112, gtp3
	.byte	W48
	.byte		N23   
	.byte	W24
	.byte		        Cn2 
	.byte	W24
@ 042   ----------------------------------------
	.byte	TEMPO , 79*mus_no_surprises_tbs/2
	.byte		        Gn1 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_029
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_028
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_031
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_028
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_033
@ 048   ----------------------------------------
	.byte	TEMPO , 79*mus_no_surprises_tbs/2
	.byte		N23   , Fn1 , v112
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 049   ----------------------------------------
	.byte		N44   , Fn1 , v112, gtp3
	.byte	W48
	.byte		N23   , As1 
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N05   
	.byte	W06
@ 050   ----------------------------------------
mus_no_surprises_1_050:
	.byte		N11   , Cn2 , v112
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
@ 051   ----------------------------------------
	.byte		        As1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_050
@ 053   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 054   ----------------------------------------
	.byte	TEMPO , 78*mus_no_surprises_tbs/2
	.byte		N23   , Gn1 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 055   ----------------------------------------
	.byte		N23   , As1 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		        As1 
	.byte	W24
	.byte		        En2 
	.byte	W24
@ 056   ----------------------------------------
	.byte		N44   , Fn1 , v112, gtp3
	.byte	W12
	.byte	TEMPO , 79*mus_no_surprises_tbs/2
	.byte	W36
	.byte		N02   
	.byte	W12
	.byte		N17   
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_006
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_018
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_019
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_028
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_029
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_028
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_031
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_028
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_1_033
@ 066   ----------------------------------------
	.byte	TEMPO , 75*mus_no_surprises_tbs/2
	.byte		TIE   , Fn1 , v112
	.byte	W54
	.byte	TEMPO , 72*mus_no_surprises_tbs/2
	.byte	W42
@ 067   ----------------------------------------
	.byte	TEMPO , 70*mus_no_surprises_tbs/2
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte	TEMPO , 69*mus_no_surprises_tbs/2
	.byte		N44   , As1 , v092, gtp3
	.byte	W48
@ 068   ----------------------------------------
	.byte	TEMPO , 69*mus_no_surprises_tbs/2
	.byte	W48
	.byte	TEMPO , 68*mus_no_surprises_tbs/2
	.byte	W48
@ 069   ----------------------------------------
	.byte	TEMPO , 66*mus_no_surprises_tbs/2
	.byte	W48
	.byte	TEMPO , 45*mus_no_surprises_tbs/2
	.byte		        As1 , v112, gtp3
	.byte	W48
@ 070   ----------------------------------------
	.byte		N92   , Fn1 , v108, gtp3
	.byte	W92
	.byte	W03
	.byte	GOTO
	 .word	mus_no_surprises_1_B1
mus_no_surprises_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_no_surprises_2:
	.byte	KEYSH , mus_no_surprises_key+0
mus_no_surprises_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 46*mus_no_surprises_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N44   , An3 , v052, gtp3
	.byte	W48
	.byte		        An3 , v052, gtp3
	.byte	W48
@ 001   ----------------------------------------
	.byte		        An3 , v052, gtp3
	.byte	W96
@ 002   ----------------------------------------
mus_no_surprises_2_002:
	.byte		N44   , An3 , v052, gtp3
	.byte	W48
	.byte		        An3 , v052, gtp3
	.byte	W48
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        An3 , v052, gtp3
	.byte	W96
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_002
@ 005   ----------------------------------------
	.byte		N44   , An3 , v052, gtp3
	.byte	W96
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_002
@ 007   ----------------------------------------
	.byte		N44   , An3 , v052, gtp3
	.byte	W96
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_002
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_002
@ 012   ----------------------------------------
mus_no_surprises_2_012:
	.byte		N44   , As3 , v052, gtp3
	.byte	W48
	.byte		        As3 , v052, gtp3
	.byte	W48
	.byte	PEND
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_002
@ 015   ----------------------------------------
	.byte		N44   , An3 , v052, gtp3
	.byte	W96
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_002
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_002
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_002
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_012
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_002
@ 023   ----------------------------------------
	.byte		N44   , An3 , v052, gtp3
	.byte	W96
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_002
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_002
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_002
@ 028   ----------------------------------------
mus_no_surprises_2_028:
	.byte		N44   , As3 , v052, gtp3
	.byte	W84
	.byte		        Cn4 , v052, gtp3
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_028
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_028
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W48
	.byte		N44   , An3 , v048, gtp3
	.byte	W48
@ 035   ----------------------------------------
mus_no_surprises_2_035:
	.byte		N32   , An3 , v048, gtp3
	.byte	W36
	.byte		N10   , Cn4 , v052
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
mus_no_surprises_2_036:
	.byte		N11   , An3 , v048
	.byte		N01   , Cn4 , v052
	.byte	W12
	.byte		N10   , An3 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N44   , An3 , v048, gtp3
	.byte	W48
	.byte	PEND
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_035
@ 038   ----------------------------------------
	.byte		N44   , An3 , v048, gtp3
	.byte		N01   , Fn4 , v052
	.byte	W48
	.byte		N44   , An3 , v048, gtp3
	.byte	W48
@ 039   ----------------------------------------
mus_no_surprises_2_039:
	.byte		N44   , An3 , v048, gtp3
	.byte	W48
	.byte		        An3 , v048, gtp3
	.byte	W48
	.byte	PEND
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_039
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_039
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_028
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_028
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_028
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_002
@ 049   ----------------------------------------
	.byte		N44   , An3 , v052, gtp3
	.byte	W48
	.byte		N10   , Cs4 , v040
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N02   , Cn2 , v064
	.byte	W03
	.byte		N02   
	.byte	W03
@ 050   ----------------------------------------
	.byte		N11   , Gn2 , v048
	.byte		N01   , Cn4 , v040
	.byte	W12
	.byte		N11   , Cn2 , v048
	.byte	W12
	.byte		N32   , Cn2 , v048, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
@ 051   ----------------------------------------
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte		N01   , As3 , v040
	.byte	W12
	.byte		N11   , As2 , v048
	.byte		N01   , Cs4 , v040
	.byte	W12
	.byte		N10   , Fn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N05   , As2 , v048
	.byte	W06
	.byte		N11   
	.byte		N01   , Cs4 , v040
	.byte	W12
@ 052   ----------------------------------------
	.byte		N11   , Gn2 , v048
	.byte		N01   , Cn4 , v040
	.byte	W12
	.byte		N11   , Cn2 , v048
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
	.byte		N11   
	.byte	W12
@ 053   ----------------------------------------
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte		N01   , As3 , v040
	.byte	W12
	.byte		N11   , As2 , v048
	.byte		N01   , Cs4 , v040
	.byte	W12
	.byte		N11   , As2 , v048
	.byte		N01   , Fn4 , v040
	.byte	W12
	.byte		N10   , Gs3 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N02   , Gn2 , v048
	.byte	W03
	.byte		N02   
	.byte	W03
@ 054   ----------------------------------------
	.byte		N01   
	.byte	W02
	.byte		        Dn2 
	.byte	W02
	.byte		        As2 
	.byte	W02
	.byte		N40   , Gn2 , v048, gtp1
	.byte	W42
	.byte		N23   , As2 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Cn2 , v052
	.byte	W12
@ 055   ----------------------------------------
	.byte		N23   , Cs2 , v056
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte		        Cs2 
	.byte	W24
@ 056   ----------------------------------------
mus_no_surprises_2_056:
	.byte		N23   , Cn2 , v048
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N05   , Cn2 , v044
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N23   , Cn2 , v048
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N05   , Cn2 , v044
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_056
@ 058   ----------------------------------------
	.byte		N23   , Dn2 , v044
	.byte	W24
	.byte		N11   , Dn2 , v048
	.byte	W12
	.byte		N05   , Dn2 , v044
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn2 , v048
	.byte	W12
	.byte		N05   , Dn2 , v044
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn2 , v048
	.byte	W12
	.byte		N05   , Dn2 , v044
	.byte	W06
	.byte		N05   
	.byte	W06
@ 059   ----------------------------------------
	.byte		N11   , Dn2 , v048
	.byte	W12
	.byte		N05   , Dn2 , v044
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn2 , v048
	.byte	W12
	.byte		N05   , Dn2 , v044
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn2 , v048
	.byte	W12
	.byte		N05   , Dn2 , v044
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn2 , v048
	.byte	W12
	.byte		N05   , Dn2 , v044
	.byte	W06
	.byte		N05   
	.byte	W06
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_028
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_028
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_028
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_039
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_035
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_036
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_2_035
@ 070   ----------------------------------------
	.byte		N01   , Cn4 , v052
	.byte		N80   , Fn4 , v060, gtp3
	.byte	W92
	.byte	W03
	.byte	GOTO
	 .word	mus_no_surprises_2_B1
mus_no_surprises_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_no_surprises_3:
	.byte	KEYSH , mus_no_surprises_key+0
mus_no_surprises_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_no_surprises_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N23   , An4 , v100
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
@ 001   ----------------------------------------
mus_no_surprises_3_001:
	.byte		N23   , An4 , v100
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		N11   , As3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_no_surprises_3_002:
	.byte		N23   , An4 , v100
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_3_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_3_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_3_002
@ 007   ----------------------------------------
	.byte		N23   , An4 , v100
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		N11   , As3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn3 , v112
	.byte	W12
@ 008   ----------------------------------------
	.byte		N44   , An3 , v112, gtp3
	.byte	W48
	.byte		N30   , Cn3 , v112, gtp1
	.byte	W48
@ 009   ----------------------------------------
	.byte		N11   , An3 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N32   , Gn3 , v112, gtp2
	.byte	W36
	.byte		N10   , Fn3 
	.byte	W12
	.byte		N56   , An3 
	.byte	W12
@ 010   ----------------------------------------
	.byte	W48
	.byte		N22   , As2 
	.byte	W42
	.byte		N05   , Gn3 
	.byte	W06
@ 011   ----------------------------------------
	.byte		N11   , An3 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N28   , Gn3 , v112, gtp1
	.byte	W30
	.byte		N21   , Fn3 
	.byte	W23
	.byte		N44   , As3 , v112, gtp3
	.byte	W07
@ 012   ----------------------------------------
	.byte	W48
	.byte		N23   , Dn3 
	.byte	W48
@ 013   ----------------------------------------
	.byte		N11   , Fn3 
	.byte	W12
	.byte		N21   , En3 
	.byte	W22
	.byte		N24   , Fn3 
	.byte	W24
	.byte	W01
	.byte		N22   , Gn3 
	.byte	W24
	.byte	W01
	.byte		N10   , As3 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N64   , An3 , v112, gtp1
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte		N44   , An3 , v112, gtp3
	.byte	W48
	.byte		N28   , Cn3 
	.byte	W36
	.byte		N11   
	.byte	W12
@ 017   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N28   , Gn3 , v112, gtp1
	.byte	W30
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N52   , An3 , v112, gtp1
	.byte	W06
@ 018   ----------------------------------------
	.byte	W48
	.byte		N32   , As2 , v112, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
@ 019   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N32   , Gn3 , v112, gtp3
	.byte	W60
@ 020   ----------------------------------------
	.byte		N44   , As3 , v112, gtp3
	.byte	W48
	.byte		N23   , Fn3 
	.byte	W48
@ 021   ----------------------------------------
	.byte		N10   , En3 
	.byte	W11
	.byte		N11   
	.byte	W13
	.byte		N10   
	.byte	W11
	.byte		N23   , Fn3 
	.byte	W24
	.byte	W01
	.byte		TIE   , Gn3 
	.byte	W36
@ 022   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W16
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte		N44   , An3 , v112, gtp3
	.byte	W48
	.byte		N24   , Cn3 , v112, gtp2
	.byte	W36
	.byte		N11   
	.byte	W12
@ 025   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N28   , Gn3 , v112, gtp1
	.byte	W30
	.byte		N20   , Fn3 
	.byte	W24
	.byte		N52   , An3 , v112, gtp1
	.byte	W06
@ 026   ----------------------------------------
	.byte	W48
	.byte		N24   , As2 , v112, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
@ 027   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , Fn3 
	.byte	W24
	.byte		        As2 
	.byte	W12
@ 028   ----------------------------------------
	.byte		        As3 , v116
	.byte	W12
	.byte		N23   , An3 
	.byte	W24
	.byte		N32   , Gn3 , v112, gtp3
	.byte	W36
	.byte		N11   , Fn3 , v108
	.byte	W12
	.byte		N32   , En3 , v112
	.byte	W12
@ 029   ----------------------------------------
	.byte	W23
	.byte		N11   
	.byte	W13
	.byte		N22   , Fn3 
	.byte	W23
	.byte		N32   , Gn3 , v112, gtp2
	.byte	W36
	.byte	W01
@ 030   ----------------------------------------
	.byte		N11   , As3 , v116
	.byte	W12
	.byte		N23   , An3 
	.byte	W24
	.byte		N32   , Gn3 , v112, gtp3
	.byte	W36
	.byte		N11   , Fn3 , v108
	.byte	W12
	.byte		N30   , En3 , v112
	.byte	W12
@ 031   ----------------------------------------
	.byte	W23
	.byte		N10   
	.byte	W12
	.byte		N20   , Fn3 
	.byte	W23
	.byte		N32   , Gn3 , v112, gtp2
	.byte	W36
	.byte	W02
@ 032   ----------------------------------------
mus_no_surprises_3_032:
	.byte		N11   , As3 , v116
	.byte	W12
	.byte		N23   , An3 
	.byte	W24
	.byte		N32   , Gn3 , v112, gtp3
	.byte	W36
	.byte		N11   , Fn3 , v108
	.byte	W12
	.byte		N32   , En3 , v112, gtp2
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N32   , Gn3 , v112, gtp2
	.byte	W36
@ 034   ----------------------------------------
	.byte		N92   , An3 , v112, gtp3
	.byte	W96
@ 035   ----------------------------------------
	.byte		N48   , Fn3 
	.byte	W96
@ 036   ----------------------------------------
	.byte		N92   , An3 , v112, gtp3
	.byte	W96
@ 037   ----------------------------------------
	.byte		N44   , Fn3 , v112, gtp3
	.byte	W96
@ 038   ----------------------------------------
	.byte		        An3 , v112, gtp1
	.byte	W48
	.byte		N24   , An3 , v112, gtp3
	.byte	W36
	.byte		N10   
	.byte	W12
@ 039   ----------------------------------------
	.byte		N10   
	.byte	W12
	.byte		N22   
	.byte	W24
	.byte		N28   , As3 
	.byte	W30
	.byte		N16   , Fn4 , v072
	.byte	W18
	.byte		N56   , En4 , v076, gtp2
	.byte	W12
@ 040   ----------------------------------------
mus_no_surprises_3_040:
	.byte	W48
	.byte		N32   , Dn4 , v076, gtp3
	.byte	W48
	.byte	PEND
@ 041   ----------------------------------------
	.byte		N11   , An3 , v112
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N21   , As3 
	.byte	W24
	.byte		N32   , An3 , v112, gtp1
	.byte	W36
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_3_032
@ 043   ----------------------------------------
	.byte	W24
	.byte		N11   , En3 , v112
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N28   , Gn3 
	.byte	W32
	.byte	W03
	.byte		N11   , As3 
	.byte	W01
@ 044   ----------------------------------------
	.byte	W12
	.byte		N23   , An3 , v116
	.byte	W24
	.byte		N32   , Gn3 , v112, gtp3
	.byte	W36
	.byte		N11   , Fn3 , v108
	.byte	W12
	.byte		N32   , En3 , v112, gtp1
	.byte	W12
@ 045   ----------------------------------------
	.byte	W23
	.byte		N11   
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N30   , Gn3 
	.byte	W36
	.byte	W01
@ 046   ----------------------------------------
	.byte		N10   , As3 , v116
	.byte	W12
	.byte		N23   , An3 
	.byte	W24
	.byte		N32   , Gn3 , v112, gtp3
	.byte	W36
	.byte		N11   , Fn3 , v108
	.byte	W12
	.byte		N32   , As3 , v112, gtp2
	.byte	W12
@ 047   ----------------------------------------
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N23   , En3 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		TIE   , Fn3 
	.byte	W12
@ 048   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	W06
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
	.byte		N40   , Cn4 , v060, gtp1
	.byte	W48
	.byte		N44   , Cn4 , v064, gtp3
	.byte	W48
@ 057   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N28   , Cn4 , v064, gtp1
	.byte	W30
	.byte		N22   , An3 , v112
	.byte	W23
	.byte		N01   , Dn4 , v056
	.byte	W01
	.byte		N52   , An3 , v116, gtp1
	.byte	W06
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_3_040
@ 059   ----------------------------------------
	.byte		N11   , Dn4 , v064
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N32   , Fn4 , v076, gtp3
	.byte	W36
	.byte		N20   
	.byte	W24
@ 060   ----------------------------------------
mus_no_surprises_3_060:
	.byte		N11   , As3 , v116
	.byte	W12
	.byte		N23   , An3 
	.byte	W24
	.byte		N32   , Gn3 , v112, gtp3
	.byte	W36
	.byte		N11   , Fn3 , v108
	.byte	W11
	.byte		N32   , As3 , v112, gtp2
	.byte	W13
	.byte	PEND
@ 061   ----------------------------------------
	.byte	W24
	.byte		N10   
	.byte	W10
	.byte		N23   , En3 
	.byte	W24
	.byte	W02
	.byte		N32   , Fn3 , v112, gtp2
	.byte	W36
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_3_032
@ 063   ----------------------------------------
	.byte	W24
	.byte		N11   , En3 , v112
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N28   , Gn3 , v112, gtp1
	.byte	W36
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_no_surprises_3_060
@ 065   ----------------------------------------
	.byte	W24
	.byte		N11   , As3 , v112
	.byte	W12
	.byte		N23   , En3 
	.byte	W24
	.byte		N22   
	.byte	W24
	.byte		TIE   , Fn3 
	.byte	W12
@ 066   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		EOT   
	.byte	W03
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte	GOTO
	 .word	mus_no_surprises_3_B1
mus_no_surprises_3_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_no_surprises:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_no_surprises_pri	@ Priority
	.byte	mus_no_surprises_rev	@ Reverb.

	.word	mus_no_surprises_grp

	.word	mus_no_surprises_1
	.word	mus_no_surprises_2
	.word	mus_no_surprises_3

	.end
