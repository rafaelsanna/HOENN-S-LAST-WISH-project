	.include "MPlayDef.s"

	.equ	mus_brothers_grp, voicegroup_brothers
	.equ	mus_brothers_pri, 0
	.equ	mus_brothers_rev, reverb_set+50
	.equ	mus_brothers_mvl, 100
	.equ	mus_brothers_key, 0
	.equ	mus_brothers_tbs, 1
	.equ	mus_brothers_exg, 1
	.equ	mus_brothers_cmp, 1

	.section .rodata
	.global	mus_brothers
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_brothers_1:
	.byte	KEYSH , mus_brothers_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 138*mus_brothers_tbs/2
	.byte	TEMPO , 138*mus_brothers_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_brothers_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N68   , Dn2 , v112, gtp3
	.byte	W68
	.byte	W03
	.byte		        Cn2 , v112, gtp3
	.byte	W01
@ 001   ----------------------------------------
mus_brothers_1_001:
	.byte	W68
	.byte	W03
	.byte		N68   , As1 , v112, gtp3
	.byte	W01
	.byte	PEND
@ 002   ----------------------------------------
mus_brothers_1_002:
	.byte	W68
	.byte	W03
	.byte		N68   , Cn2 , v112, gtp3
	.byte	W01
	.byte	PEND
@ 003   ----------------------------------------
mus_brothers_1_003:
	.byte	W68
	.byte	W03
	.byte		N68   , Dn2 , v112, gtp3
	.byte	W01
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_1_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_1_002
@ 007   ----------------------------------------
	.byte	W68
	.byte	W03
mus_brothers_1_B1:
	.byte		N68   , Dn2 , v112, gtp3
	.byte	W01
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_1_003
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_1_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_1_003
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_1_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_1_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_1_002
@ 014   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N68   , En2 , v112, gtp3
	.byte	W01
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_1_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_1_003
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_1_003
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_1_003
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_1_002
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_1_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_1_003
@ 022   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N72   , Dn2 , v112
	.byte	W01
@ 023   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte	GOTO
	 .word	mus_brothers_1_B1
mus_brothers_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_brothers_2:
	.byte	KEYSH , mus_brothers_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 48*mus_brothers_mvl/mxv
	.byte		PAN   , c_v-12
	.byte	W72
@ 001   ----------------------------------------
	.byte	W72
@ 002   ----------------------------------------
	.byte	W72
@ 003   ----------------------------------------
	.byte	W72
@ 004   ----------------------------------------
	.byte	W72
@ 005   ----------------------------------------
	.byte	W72
@ 006   ----------------------------------------
	.byte	W72
@ 007   ----------------------------------------
	.byte	W68
	.byte	W03
mus_brothers_2_B1:
	.byte		N22   , Dn3 , v056
	.byte	W01
@ 008   ----------------------------------------
mus_brothers_2_008:
	.byte	W24
	.byte		N21   , Fn3 , v056
	.byte	W24
	.byte		N09   , En3 
	.byte	W11
	.byte		N10   , Fn3 , v052
	.byte	W12
	.byte		N44   , Gn3 , v052, gtp2
	.byte	W01
	.byte	PEND
@ 009   ----------------------------------------
mus_brothers_2_009:
	.byte	W48
	.byte		N21   , An3 , v056
	.byte	W23
	.byte		N44   , Fn3 , v052, gtp2
	.byte	W01
	.byte	PEND
@ 010   ----------------------------------------
	.byte	W48
	.byte		N21   , En3 , v056
	.byte	W23
	.byte		N68   , Dn3 , v052, gtp3
	.byte	W01
@ 011   ----------------------------------------
mus_brothers_2_011:
	.byte	W68
	.byte	W03
	.byte		N22   , Dn3 , v056
	.byte	W01
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_2_008
@ 013   ----------------------------------------
	.byte	W48
	.byte		N21   , Cn4 , v056
	.byte	W23
	.byte		N44   , An3 , v052, gtp2
	.byte	W01
@ 014   ----------------------------------------
	.byte	W48
	.byte		N21   , Gn3 , v056
	.byte	W23
	.byte		N68   , An3 , v052, gtp2
	.byte	W01
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_2_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_2_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_2_009
@ 018   ----------------------------------------
	.byte	W48
	.byte		N21   , En3 , v056
	.byte	W23
	.byte		N48   , Dn3 , v052
	.byte	W01
@ 019   ----------------------------------------
	.byte	W48
	.byte		N21   , Dn3 , v056
	.byte	W23
	.byte		N44   , Cn3 , v052, gtp2
	.byte	W01
@ 020   ----------------------------------------
	.byte	W48
	.byte		N21   , Dn3 , v056
	.byte	W23
	.byte		N32   , En3 , v056, gtp2
	.byte	W01
@ 021   ----------------------------------------
	.byte	W36
	.byte		N10   , Fn3 , v052
	.byte	W12
	.byte		N21   , En3 , v056
	.byte	W23
	.byte		TIE   , Dn3 , v052
	.byte	W01
@ 022   ----------------------------------------
	.byte	W72
@ 023   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		EOT   
	.byte	W01
	.byte	GOTO
	 .word	mus_brothers_2_B1
mus_brothers_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_brothers_3:
	.byte	KEYSH , mus_brothers_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 106*mus_brothers_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N11   , Dn3 , v084
	.byte	W12
	.byte		        An2 , v080
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N23   , An3 
	.byte	W23
	.byte		N11   , Cn3 , v084
	.byte	W01
@ 001   ----------------------------------------
mus_brothers_3_001:
	.byte	W12
	.byte		N11   , An2 , v080
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N23   , An3 
	.byte	W23
	.byte		N11   , As2 , v084
	.byte	W01
	.byte	PEND
@ 002   ----------------------------------------
mus_brothers_3_002:
	.byte	W12
	.byte		N11   , An2 , v080
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N23   , An3 
	.byte	W23
	.byte		N11   , Cn3 , v084
	.byte	W01
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W12
	.byte		        An2 , v080
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N23   , An3 
	.byte	W23
	.byte		N11   , Dn3 , v084
	.byte	W01
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_3_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_3_002
@ 007   ----------------------------------------
	.byte	W12
	.byte		N11   , An2 , v080
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N23   , An3 
	.byte	W23
mus_brothers_3_B1:
	.byte		N22   , Dn3 , v092
	.byte	W01
@ 008   ----------------------------------------
mus_brothers_3_008:
	.byte	W24
	.byte		N21   , Fn3 , v088
	.byte	W24
	.byte		N09   , En3 , v092
	.byte	W11
	.byte		N10   , Fn3 , v088
	.byte	W12
	.byte		N44   , Gn3 , v088, gtp2
	.byte	W01
	.byte	PEND
@ 009   ----------------------------------------
mus_brothers_3_009:
	.byte	W48
	.byte		N21   , An3 , v092
	.byte	W23
	.byte		N44   , Fn3 , v088, gtp2
	.byte	W01
	.byte	PEND
@ 010   ----------------------------------------
	.byte	W48
	.byte		N21   , En3 , v092
	.byte	W23
	.byte		N68   , Dn3 , v088, gtp3
	.byte	W01
@ 011   ----------------------------------------
mus_brothers_3_011:
	.byte	W68
	.byte	W03
	.byte		N22   , Dn3 , v092
	.byte	W01
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_3_008
@ 013   ----------------------------------------
	.byte	W48
	.byte		N21   , Cn4 , v092
	.byte	W23
	.byte		N44   , An3 , v088, gtp2
	.byte	W01
@ 014   ----------------------------------------
	.byte	W48
	.byte		N21   , Gn3 , v092
	.byte	W23
	.byte		N68   , An3 , v088, gtp2
	.byte	W01
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_3_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_3_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_brothers_3_009
@ 018   ----------------------------------------
	.byte	W48
	.byte		N21   , En3 , v092
	.byte	W23
	.byte		N48   , Dn3 , v088
	.byte	W01
@ 019   ----------------------------------------
	.byte	W48
	.byte		N21   , Dn3 , v092
	.byte	W23
	.byte		N44   , Cn3 , v088, gtp2
	.byte	W01
@ 020   ----------------------------------------
	.byte	W48
	.byte		N21   , Dn3 , v092
	.byte	W23
	.byte		N32   , En3 , v092, gtp2
	.byte	W01
@ 021   ----------------------------------------
	.byte	W36
	.byte		N10   , Fn3 , v088
	.byte	W12
	.byte		N21   , En3 , v092
	.byte	W23
	.byte		TIE   , Dn3 , v088
	.byte	W01
@ 022   ----------------------------------------
	.byte	W72
@ 023   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		EOT   
	.byte	W01
	.byte	GOTO
	 .word	mus_brothers_3_B1
mus_brothers_3_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_brothers:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_brothers_pri	@ Priority
	.byte	mus_brothers_rev	@ Reverb.

	.word	mus_brothers_grp

	.word	mus_brothers_1
	.word	mus_brothers_2
	.word	mus_brothers_3

	.end
