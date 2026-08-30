	.include "MPlayDef.s"

	.equ	mus_the_young_photographer_grp, voicegroup_the_young_photographer
	.equ	mus_the_young_photographer_pri, 0
	.equ	mus_the_young_photographer_rev, reverb_set+50
	.equ	mus_the_young_photographer_mvl, 100
	.equ	mus_the_young_photographer_key, 0
	.equ	mus_the_young_photographer_tbs, 1
	.equ	mus_the_young_photographer_exg, 1
	.equ	mus_the_young_photographer_cmp, 1

	.section .rodata
	.global	mus_the_young_photographer
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_the_young_photographer_1:
	.byte	KEYSH , mus_the_young_photographer_key+0
mus_the_young_photographer_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 94*mus_the_young_photographer_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 124*mus_the_young_photographer_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N44   , Gs0 , v124, gtp3
	.byte	W48
	.byte		        Gn0 , v124, gtp3
	.byte	W48
@ 002   ----------------------------------------
mus_the_young_photographer_1_002:
	.byte		N44   , Fs1 , v124, gtp3
	.byte	W48
	.byte		        Fn1 , v124, gtp3
	.byte	W48
	.byte	PEND
@ 003   ----------------------------------------
mus_the_young_photographer_1_003:
	.byte		N44   , En1 , v124, gtp3
	.byte	W48
	.byte		        Gs0 , v124, gtp3
	.byte	W48
	.byte	PEND
@ 004   ----------------------------------------
	.byte		        Gn0 , v124, gtp3
	.byte	W48
	.byte		        Ds1 , v124, gtp3
	.byte	W48
@ 005   ----------------------------------------
	.byte		        Gs0 , v124, gtp3
	.byte	W48
	.byte		        Gn0 , v124, gtp3
	.byte	W48
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_the_young_photographer_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_the_young_photographer_1_003
@ 008   ----------------------------------------
	.byte		N44   , Gn0 , v124, gtp3
	.byte	W48
	.byte		        Gs0 , v124, gtp3
	.byte	W48
	.byte	GOTO
	 .word	mus_the_young_photographer_1_B1
mus_the_young_photographer_1_B2:
@ 009   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_the_young_photographer_2:
	.byte	KEYSH , mus_the_young_photographer_key+0
mus_the_young_photographer_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 50*mus_the_young_photographer_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N11   , Ds4 , v072
	.byte	W12
	.byte		N08   , Ds4 , v068
	.byte	W12
	.byte		        Cs4 , v072
	.byte	W12
	.byte		        Cn4 , v068
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 001   ----------------------------------------
	.byte		N11   , Cs4 , v072
	.byte	W12
	.byte		N08   , Fs4 , v068
	.byte	W12
	.byte		        Cn4 , v072
	.byte	W12
	.byte		        Cn4 , v068
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 002   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N08   , As3 , v072
	.byte	W12
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N08   , Cn4 , v068
	.byte	W12
	.byte		N11   , Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs3 , v072
	.byte	W12
	.byte		N08   , Cn4 , v068
	.byte	W12
@ 003   ----------------------------------------
	.byte		N11   , Gn4 , v072
	.byte	W12
	.byte		N08   , Gn4 , v068
	.byte	W12
	.byte		N11   , Fn4 , v072
	.byte	W12
	.byte		N08   , As3 , v068
	.byte	W12
	.byte		N11   , Ds4 , v072
	.byte	W12
	.byte		N08   , Gs3 , v068
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N11   , Ds4 , v072
	.byte	W12
	.byte		N08   , As3 , v068
	.byte	W12
	.byte		        Cs4 , v072
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 , v068
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Cn4 , v072
	.byte	W12
@ 005   ----------------------------------------
	.byte		        Cs4 , v068
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 , v072
	.byte	W12
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N08   , Gs3 , v068
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N11   , Cn4 , v072
	.byte	W12
	.byte		N08   , Gs3 , v068
	.byte	W12
@ 007   ----------------------------------------
	.byte		N11   , Cs4 , v072
	.byte	W12
	.byte		N08   , Gs3 , v068
	.byte	W12
	.byte		N11   , As3 , v072
	.byte	W12
	.byte		N08   , As3 , v068
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	GOTO
	 .word	mus_the_young_photographer_2_B1
mus_the_young_photographer_2_B2:
@ 008   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_the_young_photographer_3:
	.byte	KEYSH , mus_the_young_photographer_key+0
mus_the_young_photographer_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 106*mus_the_young_photographer_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N44   , Cn4 , v108, gtp3
	.byte	W48
	.byte		        As3 , v108, gtp3
	.byte	W48
@ 001   ----------------------------------------
mus_the_young_photographer_3_001:
	.byte		N44   , As3 , v108, gtp3
	.byte	W48
	.byte		        Gs3 , v108, gtp3
	.byte	W48
	.byte	PEND
@ 002   ----------------------------------------
	.byte		        Gs3 , v108, gtp3
	.byte	W48
	.byte		        Cn4 , v108, gtp3
	.byte	W48
@ 003   ----------------------------------------
	.byte		        As3 , v108, gtp3
	.byte	W48
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N56   , Cn4 , v108, gtp3
	.byte	W60
	.byte		N11   , As3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N56   , As3 , v108, gtp3
	.byte	W60
	.byte		N11   , Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N23   , Ds4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_the_young_photographer_3_001
	.byte	GOTO
	 .word	mus_the_young_photographer_3_B1
mus_the_young_photographer_3_B2:
@ 008   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_the_young_photographer_4:
	.byte	KEYSH , mus_the_young_photographer_key+0
mus_the_young_photographer_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 96*mus_the_young_photographer_mvl/mxv
	.byte		N22   , Cn1 , v112
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        En1 
	.byte	W24
@ 001   ----------------------------------------
mus_the_young_photographer_4_001:
	.byte		N22   , Cn1 , v112
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_the_young_photographer_4_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_the_young_photographer_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_the_young_photographer_4_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_the_young_photographer_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_the_young_photographer_4_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_the_young_photographer_4_001
	.byte	GOTO
	 .word	mus_the_young_photographer_4_B1
mus_the_young_photographer_4_B2:
@ 008   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_the_young_photographer:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_the_young_photographer_pri	@ Priority
	.byte	mus_the_young_photographer_rev	@ Reverb.

	.word	mus_the_young_photographer_grp

	.word	mus_the_young_photographer_1
	.word	mus_the_young_photographer_2
	.word	mus_the_young_photographer_3
	.word	mus_the_young_photographer_4

	.end
