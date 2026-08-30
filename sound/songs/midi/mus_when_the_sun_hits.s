	.include "MPlayDef.s"

	.equ	mus_when_the_sun_hits_grp, voicegroup_when_the_sun_hits
	.equ	mus_when_the_sun_hits_pri, 0
	.equ	mus_when_the_sun_hits_rev, reverb_set+50
	.equ	mus_when_the_sun_hits_mvl, 100
	.equ	mus_when_the_sun_hits_key, 0
	.equ	mus_when_the_sun_hits_tbs, 1
	.equ	mus_when_the_sun_hits_exg, 1
	.equ	mus_when_the_sun_hits_cmp, 1

	.section .rodata
	.global	mus_when_the_sun_hits
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_when_the_sun_hits_1:
	.byte	KEYSH , mus_when_the_sun_hits_key+0
mus_when_the_sun_hits_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 100*mus_when_the_sun_hits_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 122*mus_when_the_sun_hits_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N11   , En1 , v108
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
@ 002   ----------------------------------------
mus_when_the_sun_hits_1_002:
	.byte		N11   , Fs1 , v108
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
@ 003   ----------------------------------------
mus_when_the_sun_hits_1_003:
	.byte		N11   , En1 , v108
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
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_1_002
@ 005   ----------------------------------------
mus_when_the_sun_hits_1_005:
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
mus_when_the_sun_hits_1_006:
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
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_1_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_1_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_1_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_1_006
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_1_003
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_1_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_1_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_1_002
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_1_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_1_006
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_1_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_1_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_1_003
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_1_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_1_005
@ 024   ----------------------------------------
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
	.byte		N12   
	.byte	W12
	.byte	GOTO
	 .word	mus_when_the_sun_hits_1_B1
mus_when_the_sun_hits_1_B2:
@ 025   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_when_the_sun_hits_2:
	.byte	KEYSH , mus_when_the_sun_hits_key+0
mus_when_the_sun_hits_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 42*mus_when_the_sun_hits_mvl/mxv
	.byte		PAN   , c_v-14
	.byte		N11   , An2 , v052
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
@ 001   ----------------------------------------
mus_when_the_sun_hits_2_001:
	.byte		N11   , An2 , v052
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
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_2_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_2_001
@ 004   ----------------------------------------
mus_when_the_sun_hits_2_004:
	.byte		N11   , Bn2 , v052
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
	.byte	PATT
	 .word	mus_when_the_sun_hits_2_004
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_2_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_2_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_2_001
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_2_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_2_004
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_2_001
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_2_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_2_001
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_2_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_2_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_2_004
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_2_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_2_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_2_001
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_2_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_2_004
@ 023   ----------------------------------------
	.byte		N11   , Bn2 , v052
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
	.byte		N12   
	.byte	W12
	.byte	GOTO
	 .word	mus_when_the_sun_hits_2_B1
mus_when_the_sun_hits_2_B2:
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_when_the_sun_hits_3:
	.byte	KEYSH , mus_when_the_sun_hits_key+0
mus_when_the_sun_hits_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 92*mus_when_the_sun_hits_mvl/mxv
	.byte		PAN   , c_v+14
	.byte		N11   , Fs3 , v080
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
@ 001   ----------------------------------------
mus_when_the_sun_hits_3_001:
	.byte		N11   , Bn3 , v080
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_when_the_sun_hits_3_002:
	.byte		N11   , Fs3 , v080
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
@ 003   ----------------------------------------
mus_when_the_sun_hits_3_003:
	.byte		N11   , Bn3 , v080
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   , Fs4 , v076
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_when_the_sun_hits_3_004:
	.byte	W12
	.byte		N11   , An3 , v080
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N23   , Fs4 
	.byte	W24
	.byte		N11   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_when_the_sun_hits_3_005:
	.byte	W12
	.byte		N11   , An3 , v080
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N23   , Fs4 
	.byte	W24
	.byte		N11   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_3_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_3_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_3_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_3_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_3_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_3_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_3_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_3_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_3_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_3_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_3_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_3_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_3_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_3_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_3_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_3_003
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_3_004
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_when_the_sun_hits_3_004
	.byte	GOTO
	 .word	mus_when_the_sun_hits_3_B1
mus_when_the_sun_hits_3_B2:
@ 024   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_when_the_sun_hits:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_when_the_sun_hits_pri	@ Priority
	.byte	mus_when_the_sun_hits_rev	@ Reverb.

	.word	mus_when_the_sun_hits_grp

	.word	mus_when_the_sun_hits_1
	.word	mus_when_the_sun_hits_2
	.word	mus_when_the_sun_hits_3

	.end
