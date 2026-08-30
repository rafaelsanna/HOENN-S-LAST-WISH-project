	.include "MPlayDef.s"

	.equ	mus_360_grp, voicegroup_littleroot_test
	.equ	mus_360_pri, 0
	.equ	mus_360_rev, reverb_set+50
	.equ	mus_360_mvl, 96
	.equ	mus_360_key, 0
	.equ	mus_360_tbs, 1
	.equ	mus_360_exg, 1
	.equ	mus_360_cmp, 1

	.section .rodata
	.global	mus_360
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_360_1:
	.byte		VOL   , 127*mus_360_mvl/mxv
	.byte	KEYSH , mus_360_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 120*mus_360_tbs/2
	.byte		VOICE , 80
	.byte		N12   , En2 , v040
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Fn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N12   , Fn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Fn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N24   
	.byte		N24   , An3 
	.byte	W36
@ 002   ----------------------------------------
mus_360_1_002:
	.byte		N12   , En2 , v040
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Fn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N12   , Fn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Fn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N24   , Cn3 , v040, gtp3
	.byte		N24   , An3 , v040, gtp3
	.byte	W36
	.byte	PEND
@ 003   ----------------------------------------
mus_360_1_003:
	.byte		N12   , En2 , v040
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Fn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N12   , Fn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Fn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N24   
	.byte		N24   , An3 
	.byte	W36
	.byte	PEND
@ 004   ----------------------------------------
mus_360_1_004:
	.byte	W12
	.byte		N12   , Gn2 , v040
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		N12   
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , An2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N18   
	.byte		N18   , Cn4 
	.byte	W36
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_360_1_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_360_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_360_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_360_1_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_360_1_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_360_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_360_1_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_360_1_004
@ 013   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_360_2:
	.byte		VOL   , 127*mus_360_mvl/mxv
	.byte	KEYSH , mus_360_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_360_2_004:
	.byte		N06   , En1 , v088
	.byte		N06   , En2 
	.byte	W24
	.byte		        En1 
	.byte		N06   , En2 
	.byte	W12
	.byte		        Fn1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Fn2 
	.byte	W18
	.byte		        Fn1 
	.byte	W36
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_360_2_004
@ 006   ----------------------------------------
mus_360_2_006:
	.byte	W12
	.byte		N06   , En1 , v088
	.byte		N06   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N06   , En2 
	.byte	W12
	.byte		        Fn1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Fn2 
	.byte	W21
	.byte		        Fn1 
	.byte	W32
	.byte	W01
	.byte	PEND
@ 007   ----------------------------------------
mus_360_2_007:
	.byte		N06   , Gn1 , v088
	.byte		N06   , Gn2 
	.byte	W24
	.byte		        Gn1 
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        An1 
	.byte		N06   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , An2 
	.byte	W18
	.byte		        Gn1 
	.byte	W18
	.byte		        Fn1 
	.byte	W12
	.byte		        En1 
	.byte		N06   , En2 
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_360_2_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_360_2_004
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_360_2_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_360_2_007
@ 012   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_360_3:
	.byte		VOL   , 127*mus_360_mvl/mxv
	.byte	KEYSH , mus_360_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_360_3_004:
	.byte		N12   , En1 , v036
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N06   , Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N12   , Fn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N06   , Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N24   
	.byte		N24   , An2 
	.byte	W36
	.byte	PEND
@ 005   ----------------------------------------
mus_360_3_005:
	.byte		N12   , En1 , v036
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N06   , Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N12   , Fn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N06   , Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N24   , Cn2 , v036, gtp3
	.byte		N24   , An2 , v036, gtp3
	.byte	W36
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_360_3_004
@ 007   ----------------------------------------
mus_360_3_007:
	.byte	W12
	.byte		N12   , Gn1 , v036
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N06   , An1 
	.byte	W06
	.byte		N12   
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N18   , An1 
	.byte		N18   , Cn3 
	.byte	W36
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_360_3_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_360_3_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_360_3_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_360_3_007
@ 012   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_360_4:
	.byte		VOL   , 127*mus_360_mvl/mxv
	.byte	KEYSH , mus_360_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_360_4_004:
	.byte		N06   , En1 , v048
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		        Cn1 
	.byte	W36
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_360_4_004
@ 006   ----------------------------------------
mus_360_4_006:
	.byte	W12
	.byte		N06   , En1 , v048
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W21
	.byte		        Cn1 
	.byte	W32
	.byte	W01
	.byte	PEND
@ 007   ----------------------------------------
mus_360_4_007:
	.byte		N06   , Gn1 , v048
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		        Dn1 
	.byte	W18
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_360_4_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_360_4_004
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_360_4_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_360_4_007
@ 012   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_360_5:
	.byte		VOL   , 127*mus_360_mvl/mxv
	.byte	KEYSH , mus_360_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_360_5_004:
	.byte	W24
	.byte		N06   , Ds1 , v040
	.byte	W48
	.byte		N06   
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_360_5_004
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_360_5_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_360_5_004
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_360_5_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_360_5_004
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_360_5_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_360_5_004
@ 012   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_360:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_360_pri	@ Priority
	.byte	mus_360_rev	@ Reverb.

	.word	mus_360_grp

	.word	mus_360_1
	.word	mus_360_2
	.word	mus_360_3
	.word	mus_360_4
	.word	mus_360_5

	.end
