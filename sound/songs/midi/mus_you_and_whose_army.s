	.include "MPlayDef.s"

	.equ	mus_you_and_whose_army_grp, voicegroup_you_and_whose_army
	.equ	mus_you_and_whose_army_pri, 0
	.equ	mus_you_and_whose_army_rev, reverb_set+50
	.equ	mus_you_and_whose_army_mvl, 100
	.equ	mus_you_and_whose_army_key, 0
	.equ	mus_you_and_whose_army_tbs, 1
	.equ	mus_you_and_whose_army_exg, 1
	.equ	mus_you_and_whose_army_cmp, 1

	.section .rodata
	.global	mus_you_and_whose_army
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_you_and_whose_army_1:
	.byte	KEYSH , mus_you_and_whose_army_key+0
mus_you_and_whose_army_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 67*mus_you_and_whose_army_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_you_and_whose_army_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N01   , Ds2 , v100
	.byte	W01
	.byte		N22   , As1 
	.byte	W23
	.byte		N11   , Ds2 
	.byte	W24
	.byte		N23   , Gs1 
	.byte	W24
	.byte		N23   
	.byte	W24
@ 001   ----------------------------------------
mus_you_and_whose_army_1_001:
	.byte		N01   , Cs2 , v100
	.byte	W01
	.byte		N22   , Gs2 
	.byte	W23
	.byte		N11   , Cs2 
	.byte	W24
	.byte		N23   , Fs1 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_you_and_whose_army_1_002:
	.byte		N01   , Bn1 , v100
	.byte	W01
	.byte		        Fs2 
	.byte	W01
	.byte		N21   , Bn1 
	.byte	W22
	.byte		N11   
	.byte	W24
	.byte		N23   , En1 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
mus_you_and_whose_army_1_003:
	.byte		N23   , An1 , v100
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N44   , Cs2 , v100, gtp3
	.byte	W48
	.byte	PEND
@ 004   ----------------------------------------
mus_you_and_whose_army_1_004:
	.byte		N01   , Ds2 , v100
	.byte	W01
	.byte		N22   , As1 
	.byte	W23
	.byte		N11   , Ds2 
	.byte	W24
	.byte		N23   , Gs1 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_1_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_1_003
@ 008   ----------------------------------------
mus_you_and_whose_army_1_008:
	.byte		N23   , En1 , v100
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
mus_you_and_whose_army_1_009:
	.byte	W24
	.byte		N11   , An2 , v100
	.byte	W12
	.byte		N01   , En2 
	.byte	W12
	.byte		N23   , Cs2 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_1_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_1_001
@ 012   ----------------------------------------
	.byte	TEMPO , 69*mus_you_and_whose_army_tbs/2
	.byte		N01   , Bn1 , v100
	.byte	W01
	.byte		        Fs2 
	.byte	W01
	.byte		N21   , Bn1 
	.byte	W22
	.byte		N11   
	.byte	W24
	.byte		N23   , En1 
	.byte	W24
	.byte		N23   
	.byte	W24
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_1_003
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_1_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_1_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_1_002
@ 017   ----------------------------------------
	.byte		N23   , An1 , v100
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte		N23   
	.byte	W24
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_1_008
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_1_009
@ 020   ----------------------------------------
	.byte	TEMPO , 68*mus_you_and_whose_army_tbs/2
	.byte		N44   , Ds1 , v104, gtp3
	.byte	W48
	.byte		N32   , Gs1 , v104, gtp2
	.byte	W36
	.byte		N10   
	.byte	W12
@ 021   ----------------------------------------
	.byte		N30   , Ds1 , v104, gtp1
	.byte	W36
	.byte		N10   
	.byte	W12
	.byte		N44   , Gs1 , v104, gtp3
	.byte	W48
@ 022   ----------------------------------------
	.byte		N32   , Cs1 
	.byte	W36
	.byte		N10   
	.byte	W12
	.byte		N44   , Bn0 , v104, gtp3
	.byte	W48
@ 023   ----------------------------------------
	.byte		N32   , As0 , v104, gtp3
	.byte	W36
	.byte		N56   , Fs1 , v104, gtp3
	.byte	W60
@ 024   ----------------------------------------
	.byte		N44   , Ds1 , v104, gtp3
	.byte	W48
	.byte		N32   , Gs1 , v104, gtp2
	.byte	W36
	.byte		N08   , Ds1 
	.byte	W12
@ 025   ----------------------------------------
	.byte		N44   , Ds1 , v104, gtp2
	.byte	W48
	.byte		        Gs1 , v104, gtp3
	.byte	W48
@ 026   ----------------------------------------
	.byte		N30   , Cs1 , v104, gtp1
	.byte	W36
	.byte		N10   
	.byte	W12
	.byte		N21   , Bn0 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N10   , Fs1 
	.byte	W12
@ 027   ----------------------------------------
	.byte		N22   , As0 
	.byte	W24
	.byte		N10   , En1 
	.byte	W12
	.byte		N32   , Fs1 , v104, gtp3
	.byte	W36
	.byte		N22   , Cs1 
	.byte	W24
@ 028   ----------------------------------------
	.byte		N32   , Ds1 , v104, gtp2
	.byte	W36
	.byte		N10   
	.byte	W12
	.byte		N44   , Gs0 , v104, gtp3
	.byte	W48
@ 029   ----------------------------------------
	.byte		N32   , Ds1 , v104, gtp1
	.byte	W36
	.byte		N09   
	.byte	W12
	.byte		N44   , Gs0 , v104, gtp3
	.byte	W48
@ 030   ----------------------------------------
	.byte	TEMPO , 72*mus_you_and_whose_army_tbs/2
	.byte		N32   , Cs1 , v120, gtp1
	.byte	W36
	.byte		N10   
	.byte	W12
	.byte		N30   , Bn0 , v120, gtp1
	.byte	W36
	.byte		N10   
	.byte	W12
@ 031   ----------------------------------------
	.byte		        As0 
	.byte	W12
	.byte		N16   , Fn1 
	.byte	W24
	.byte		N56   , Cs1 , v120, gtp3
	.byte	W60
@ 032   ----------------------------------------
	.byte		N32   
	.byte	W36
	.byte		N09   
	.byte	W12
	.byte		N44   , En1 , v120, gtp3
	.byte	W48
@ 033   ----------------------------------------
	.byte		N32   , Fs1 , v120, gtp3
	.byte	W36
	.byte		N30   , Cs1 , v120, gtp1
	.byte	W36
	.byte		N05   , Bn0 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N10   , En1 
	.byte	W12
@ 034   ----------------------------------------
	.byte	TEMPO , 71*mus_you_and_whose_army_tbs/2
	.byte		N28   , Cs1 , v120, gtp1
	.byte	W36
	.byte		N05   , Bn0 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N28   , En1 
	.byte	W30
	.byte		N14   
	.byte	W18
@ 035   ----------------------------------------
	.byte		N05   , Bn0 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N10   , Fs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N32   , Cs1 , v120, gtp2
	.byte	W36
	.byte		N05   , En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
@ 036   ----------------------------------------
	.byte		N30   , Cs1 , v120, gtp1
	.byte	W36
	.byte		N10   
	.byte	W12
	.byte		N22   , En1 
	.byte	W24
	.byte		N22   
	.byte	W24
@ 037   ----------------------------------------
	.byte		N23   , Fs1 
	.byte	W24
	.byte		N10   , Cs1 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N04   , Cs2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
@ 038   ----------------------------------------
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N22   
	.byte	W24
	.byte		N10   
	.byte	W12
@ 039   ----------------------------------------
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N22   , Cs1 
	.byte	W24
	.byte		N04   
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N10   , Gs0 
	.byte	W12
@ 040   ----------------------------------------
	.byte		N32   , Cs1 , v120, gtp2
	.byte	W36
	.byte		N09   , Gs0 
	.byte	W12
	.byte		N10   , En1 
	.byte	W12
	.byte		N16   
	.byte	W19
	.byte		N04   , Bn0 
	.byte	W05
	.byte		N10   , En1 
	.byte	W12
@ 041   ----------------------------------------
	.byte		N16   , Fs1 
	.byte	W18
	.byte		N04   , Bn0 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N20   , Cs1 
	.byte	W24
	.byte		N04   , Gs0 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N10   , Cs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 042   ----------------------------------------
	.byte		N22   , Cs1 
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N32   , En1 , v120, gtp1
	.byte	W36
	.byte		N10   
	.byte	W12
@ 043   ----------------------------------------
	.byte		N04   , Fs1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N10   , Bn0 
	.byte	W12
	.byte		N22   , Cs1 
	.byte	W24
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   
	.byte	W12
@ 044   ----------------------------------------
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N22   , En1 
	.byte	W24
	.byte		N22   
	.byte	W24
@ 045   ----------------------------------------
	.byte		N32   , Fs1 , v120, gtp2
	.byte	W36
	.byte		N56   , Cs1 , v120, gtp3
	.byte	W60
@ 046   ----------------------------------------
	.byte	TEMPO , 68*mus_you_and_whose_army_tbs/2
	.byte		N32   , Cs1 , v120, gtp1
	.byte	W36
	.byte		N10   
	.byte	W12
	.byte		N09   , En1 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
@ 047   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		N22   
	.byte	W24
	.byte		N92   , Cs1 , v120, gtp1
	.byte	W60
@ 048   ----------------------------------------
	.byte	W48
	.byte		N44   , En1 , v120, gtp2
	.byte	W48
@ 049   ----------------------------------------
	.byte		N10   , Fs1 
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		N52   , Cs1 , v120, gtp1
	.byte	W60
@ 050   ----------------------------------------
	.byte		N44   , Cs1 , v120, gtp2
	.byte	W48
	.byte		        En1 , v120, gtp2
	.byte	W48
@ 051   ----------------------------------------
	.byte		N10   , Fs1 
	.byte	W12
	.byte		N07   , Cs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		TIE   , Gs1 
	.byte	W60
@ 052   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		EOT   
	.byte	GOTO
	 .word	mus_you_and_whose_army_1_B1
mus_you_and_whose_army_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_you_and_whose_army_2:
	.byte	KEYSH , mus_you_and_whose_army_key+0
mus_you_and_whose_army_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 46*mus_you_and_whose_army_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N01   , As2 , v044
	.byte	W02
	.byte		        Ds3 , v052
	.byte	W01
	.byte		        Fs3 
	.byte	W01
	.byte		N19   , As3 
	.byte	W20
	.byte		N11   , Ds3 
	.byte	W24
	.byte		N23   , Cn3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
@ 001   ----------------------------------------
mus_you_and_whose_army_2_001:
	.byte		N01   , En2 , v044
	.byte	W02
	.byte		        Cs3 , v052
	.byte	W01
	.byte		        En3 
	.byte	W01
	.byte		N19   , Gs3 
	.byte	W20
	.byte		N11   , Cs3 
	.byte	W24
	.byte		N23   , As2 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_you_and_whose_army_2_002:
	.byte		N02   , Fs2 , v044
	.byte	W03
	.byte		N01   , Dn3 , v052
	.byte	W01
	.byte		N19   , Fs3 
	.byte	W20
	.byte		N11   , Bn2 
	.byte	W24
	.byte		N23   , Gs2 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
mus_you_and_whose_army_2_003:
	.byte		N23   , Cs3 , v052
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N44   , En3 , v052, gtp3
	.byte	W48
	.byte	PEND
@ 004   ----------------------------------------
mus_you_and_whose_army_2_004:
	.byte		N01   , As2 , v044
	.byte	W02
	.byte		        Ds3 , v052
	.byte	W01
	.byte		        Fs3 
	.byte	W01
	.byte		N19   , As3 
	.byte	W20
	.byte		N11   , Ds3 
	.byte	W24
	.byte		N23   , Cn3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_003
@ 008   ----------------------------------------
mus_you_and_whose_army_2_008:
	.byte		N23   , Gs2 , v052
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
mus_you_and_whose_army_2_009:
	.byte		N11   , En3 , v052
	.byte	W12
	.byte		N23   , Cs3 
	.byte	W24
	.byte		N11   , Bn2 , v044
	.byte	W12
	.byte		N23   , En3 , v052
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_003
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_002
@ 017   ----------------------------------------
	.byte		N23   , Cs3 , v052
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_008
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_009
@ 020   ----------------------------------------
mus_you_and_whose_army_2_020:
	.byte		N23   , Fs3 , v056
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_020
@ 022   ----------------------------------------
mus_you_and_whose_army_2_022:
	.byte	W02
	.byte		N01   , Cs3 , v056
	.byte	W01
	.byte		N20   , En3 
	.byte	W21
	.byte		N11   
	.byte	W48
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
mus_you_and_whose_army_2_023:
	.byte	W12
	.byte		N11   , Gs2 , v056
	.byte	W12
	.byte		N44   , En3 , v056, gtp3
	.byte	W48
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_020
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_022
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_023
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_020
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_022
@ 031   ----------------------------------------
	.byte		N11   , As2 , v056
	.byte	W24
	.byte		N05   , Bn2 
	.byte	W12
	.byte		N23   , Cs3 
	.byte	W24
	.byte		N17   , En3 , v036
	.byte	W18
	.byte		        Cs3 , v056
	.byte	W18
@ 032   ----------------------------------------
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N05   , En2 , v064
	.byte	W06
	.byte		N11   , Bn2 , v056
	.byte	W12
	.byte		N05   , En2 , v044
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn2 , v056
	.byte	W06
	.byte		N11   , Bn1 , v064
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
@ 033   ----------------------------------------
	.byte		N11   , Cs3 , v056
	.byte	W12
	.byte		N05   , Fs2 , v044
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs3 , v056
	.byte	W06
	.byte		        Gs2 , v064
	.byte	W06
	.byte		N23   , Fn3 , v056
	.byte	W24
	.byte		N17   , Cs3 , v064
	.byte	W18
	.byte		        Gs2 , v060
	.byte	W18
@ 034   ----------------------------------------
mus_you_and_whose_army_2_034:
	.byte		N11   , En3 , v056
	.byte	W12
	.byte		        Gs3 , v052
	.byte	W12
	.byte		N17   , Bn3 
	.byte	W18
	.byte		N05   , En2 , v064
	.byte	W06
	.byte		N11   , Bn2 , v056
	.byte	W12
	.byte		N05   , Gs3 , v052
	.byte	W06
	.byte		        En2 , v044
	.byte	W06
	.byte		        Bn3 , v052
	.byte	W06
	.byte		N11   , Bn1 , v064
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte	PEND
@ 035   ----------------------------------------
mus_you_and_whose_army_2_035:
	.byte		N11   , As3 , v052
	.byte	W12
	.byte		N05   , Fs2 , v044
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs3 , v056
	.byte	W06
	.byte		        Gs2 , v064
	.byte	W06
	.byte		N23   , Gs3 , v052
	.byte	W24
	.byte		N17   , Cs3 , v064
	.byte	W18
	.byte		        Gs2 , v060
	.byte	W18
	.byte	PEND
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_034
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_035
@ 038   ----------------------------------------
mus_you_and_whose_army_2_038:
	.byte		N23   , Gs3 , v052
	.byte	W24
	.byte		N17   , En3 , v056
	.byte	W18
	.byte		N05   , En2 , v064
	.byte	W06
	.byte		N11   , Fs3 , v052
	.byte	W12
	.byte		N05   , En2 , v044
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn2 , v056
	.byte	W06
	.byte		N11   , Bn1 , v064
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte	PEND
@ 039   ----------------------------------------
mus_you_and_whose_army_2_039:
	.byte		N11   , Fs3 , v052
	.byte	W12
	.byte		N05   , Fs2 , v044
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs3 , v056
	.byte	W06
	.byte		        Gs2 , v064
	.byte	W06
	.byte		N23   , Fn3 , v056
	.byte	W24
	.byte		N17   , Cs3 , v064
	.byte	W18
	.byte		        Gs2 , v060
	.byte	W18
	.byte	PEND
@ 040   ----------------------------------------
	.byte		N23   , Gs3 , v052
	.byte	W24
	.byte		N17   , En3 , v056
	.byte	W18
	.byte		N05   , En2 , v064
	.byte	W06
	.byte		N11   , Gs3 , v052
	.byte	W12
	.byte		N05   , En2 , v044
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn2 , v056
	.byte	W06
	.byte		N11   , Bn1 , v064
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_039
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_034
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_034
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_035
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_038
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_039
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_038
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_2_039
@ 050   ----------------------------------------
	.byte		N23   , Gs3 , v052
	.byte	W24
	.byte		N17   , Cs3 , v056
	.byte	W18
	.byte		N05   , En2 , v064
	.byte	W06
	.byte		N11   , Gs3 , v052
	.byte	W12
	.byte		N05   , En2 , v044
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs2 , v056
	.byte	W06
	.byte		N11   , Bn1 , v064
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
@ 051   ----------------------------------------
	.byte		N11   , Fs3 , v052
	.byte	W12
	.byte		N05   , Cs3 , v056
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N56   , Fn3 , v052, gtp3
	.byte	W60
@ 052   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte	GOTO
	 .word	mus_you_and_whose_army_2_B1
mus_you_and_whose_army_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_you_and_whose_army_3:
	.byte	KEYSH , mus_you_and_whose_army_key+0
mus_you_and_whose_army_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_you_and_whose_army_mvl/mxv
	.byte		PAN   , c_v+10
	.byte	W24
	.byte		N11   , As2 , v096
	.byte	W12
	.byte		N22   , Gs2 
	.byte	W60
@ 001   ----------------------------------------
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N23   , As2 
	.byte	W60
@ 002   ----------------------------------------
	.byte	W24
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N23   , Gs2 
	.byte	W24
	.byte		N11   , En3 
	.byte	W36
@ 003   ----------------------------------------
	.byte		N23   , Cs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Gs2 
	.byte	W24
	.byte		N11   , En3 
	.byte	W12
	.byte		        Cs3 , v072
	.byte	W12
@ 004   ----------------------------------------
	.byte	W24
	.byte		        As2 , v096
	.byte	W12
	.byte		N23   , Gs2 
	.byte	W60
@ 005   ----------------------------------------
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N22   , As2 
	.byte	W60
@ 006   ----------------------------------------
	.byte	W24
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N23   , Gs2 
	.byte	W24
	.byte		N24   , En3 
	.byte	W36
@ 007   ----------------------------------------
	.byte	W36
	.byte		N23   , Gs2 
	.byte	W24
	.byte		N13   , En3 
	.byte	W36
@ 008   ----------------------------------------
	.byte	W24
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N23   , Gs2 
	.byte	W24
	.byte		N11   , Fs3 
	.byte	W12
	.byte		N13   , En3 
	.byte	W24
@ 009   ----------------------------------------
	.byte	W36
	.byte		N23   , Gs2 
	.byte	W24
	.byte		N18   , En3 
	.byte	W36
@ 010   ----------------------------------------
	.byte	W24
	.byte		N11   , As2 
	.byte	W12
	.byte		N21   , Cn3 
	.byte	W24
	.byte		N11   , As2 
	.byte	W12
	.byte		        Gs2 
	.byte	W24
@ 011   ----------------------------------------
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N22   , As2 
	.byte	W24
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        Fs3 
	.byte	W24
@ 012   ----------------------------------------
	.byte	W24
	.byte		        Bn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N22   , An2 
	.byte	W12
@ 013   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte	W23
	.byte		        Gs2 
	.byte	W60
	.byte	W01
@ 014   ----------------------------------------
	.byte	W24
	.byte		N32   , As2 , v096, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 015   ----------------------------------------
	.byte	W24
	.byte		N32   , Cs3 , v096, gtp3
	.byte	W36
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 016   ----------------------------------------
	.byte	W24
	.byte		        Bn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N32   , Bn2 , v096, gtp3
	.byte	W36
@ 017   ----------------------------------------
	.byte	W24
	.byte		N52   , An2 , v096, gtp1
	.byte	W72
@ 018   ----------------------------------------
	.byte	W24
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N32   , An2 , v096, gtp3
	.byte	W36
@ 019   ----------------------------------------
	.byte	W24
	.byte		        An2 , v096, gtp3
	.byte	W36
	.byte		        Fs3 , v096, gtp3
	.byte	W36
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W24
	.byte		N10   , Bn2 , v104
	.byte	W12
	.byte		N22   , Gs2 
	.byte	W24
	.byte		N23   , En3 
	.byte	W24
	.byte		        Gs2 
	.byte	W12
@ 023   ----------------------------------------
	.byte	W12
	.byte		N80   , Gs2 , v104, gtp2
	.byte	W84
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W24
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		        Gs2 
	.byte	W12
@ 027   ----------------------------------------
	.byte	W12
	.byte		TIE   
	.byte	W84
@ 028   ----------------------------------------
	.byte	W15
	.byte		EOT   
	.byte	W80
	.byte	W01
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W24
	.byte		N11   , Bn2 , v116
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , An2 
	.byte	W24
	.byte		        Gs2 
	.byte	W12
@ 031   ----------------------------------------
	.byte	W12
	.byte		N80   , Gs2 , v116, gtp2
	.byte	W84
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
mus_you_and_whose_army_3_034:
	.byte	W12
	.byte		N11   , As3 , v080
	.byte	W12
	.byte		N32   , Bn3 , v080, gtp3
	.byte	W36
	.byte		N11   , As3 
	.byte	W12
	.byte		N56   , Bn3 , v080, gtp2
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
mus_you_and_whose_army_3_035:
	.byte	W36
	.byte		N05   , As3 , v080
	.byte	W06
	.byte		N48   , Gs3 , v080, gtp1
	.byte	W54
	.byte	PEND
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_3_034
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_3_035
@ 038   ----------------------------------------
mus_you_and_whose_army_3_038:
	.byte		N44   , Gs3 , v080, gtp3
	.byte	W48
	.byte		        Fs3 , v080, gtp3
	.byte	W48
	.byte	PEND
@ 039   ----------------------------------------
mus_you_and_whose_army_3_039:
	.byte		N32   , Fn3 , v080, gtp3
	.byte	W36
	.byte		N56   , Gs2 , v116, gtp3
	.byte	W60
	.byte	PEND
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_3_038
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_3_039
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_3_034
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_3_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_3_034
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_3_035
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_3_038
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_3_039
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_3_038
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_3_039
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_3_038
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_you_and_whose_army_3_039
@ 052   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte	GOTO
	 .word	mus_you_and_whose_army_3_B1
mus_you_and_whose_army_3_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_you_and_whose_army:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_you_and_whose_army_pri	@ Priority
	.byte	mus_you_and_whose_army_rev	@ Reverb.

	.word	mus_you_and_whose_army_grp

	.word	mus_you_and_whose_army_1
	.word	mus_you_and_whose_army_2
	.word	mus_you_and_whose_army_3

	.end
