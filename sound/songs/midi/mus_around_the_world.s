	.include "MPlayDef.s"

	.equ	mus_around_the_world_grp, voicegroup_diva_pop
	.equ	mus_around_the_world_pri, 0
	.equ	mus_around_the_world_rev, reverb_set+12
	.equ	mus_around_the_world_mvl, 90
	.equ	mus_around_the_world_key, 0
	.equ	mus_around_the_world_tbs, 1
	.equ	mus_around_the_world_exg, 1
	.equ	mus_around_the_world_cmp, 1

	.section .rodata
	.global	mus_around_the_world
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_around_the_world_1:
	.byte		VOL   , 127*mus_around_the_world_mvl/mxv
	.byte	KEYSH , mus_around_the_world_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 121*mus_around_the_world_tbs/2
	.byte		VOICE , 1
	.byte		N24   , En1 , v056
	.byte		N12   , Fs1 , v064
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N09   
	.byte	W09
	.byte		N03   , En1 , v056
	.byte	W03
@ 002   ----------------------------------------
mus_around_the_world_1_002:
	.byte		N12   , Fs1 , v064
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N09   
	.byte	W09
	.byte		N03   , En1 , v056
	.byte	W03
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_1_002
@ 004   ----------------------------------------
	.byte		N12   , Fs1 , v064
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 005   ----------------------------------------
mus_around_the_world_1_005:
	.byte		N24   , An1 , v064
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
mus_around_the_world_1_006:
	.byte	W24
	.byte		N24   , Cn1 , v064
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
mus_around_the_world_1_007:
	.byte	W24
	.byte		N24   , En1 , v064
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N21   
	.byte	W21
	.byte		N03   , En1 , v056
	.byte	W03
	.byte	PEND
@ 008   ----------------------------------------
mus_around_the_world_1_008:
	.byte		N12   , Fs1 , v064
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_1_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_1_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_1_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_1_008
@ 013   ----------------------------------------
mus_around_the_world_1_013:
	.byte		N12   , En1 , v064
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
mus_around_the_world_1_014:
	.byte		N12   , Cn1 , v064
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		N03   , An1 
	.byte	W03
	.byte		        An1 , v056
	.byte	W03
	.byte		N12   , Bn1 , v064
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_1_013
@ 016   ----------------------------------------
mus_around_the_world_1_016:
	.byte		N12   , Cn1 , v064
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		        Gn1 , v056
	.byte	W03
	.byte		N12   , An1 , v064
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_1_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_1_014
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_1_013
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_1_016
@ 021   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_around_the_world_2:
	.byte		VOL   , 127*mus_around_the_world_mvl/mxv
	.byte	KEYSH , mus_around_the_world_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		N12   , En2 , v028
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N09   
	.byte	W09
	.byte		N12   , En2 
	.byte	W03
@ 001   ----------------------------------------
mus_around_the_world_2_001:
	.byte		N12   , Fs2 , v028
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N09   
	.byte	W09
	.byte		N12   , En2 
	.byte	W03
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_2_001
@ 003   ----------------------------------------
	.byte		N12   , Fs2 , v028
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 004   ----------------------------------------
mus_around_the_world_2_004:
	.byte		N12   , An2 , v028
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_around_the_world_2_005:
	.byte	W24
	.byte		N12   , Cn2 , v028
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		N12   , En2 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
mus_around_the_world_2_006:
	.byte	W24
	.byte		N12   , En2 , v028
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W21
	.byte		N12   
	.byte	W03
	.byte	PEND
@ 007   ----------------------------------------
mus_around_the_world_2_007:
	.byte		N12   , Fs2 , v028
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_2_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_2_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_2_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_2_007
@ 012   ----------------------------------------
mus_around_the_world_2_012:
	.byte		N12   , En2 , v028
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
mus_around_the_world_2_013:
	.byte		N12   , Cn2 , v028
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte	W06
	.byte		N03   , An2 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_2_012
@ 015   ----------------------------------------
mus_around_the_world_2_015:
	.byte		N12   , Cn2 , v028
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N09   , En2 
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		N12   , An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_2_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_2_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_2_012
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_2_015
@ 020   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.10) ****************@

mus_around_the_world_3:
	.byte		VOL   , 127*mus_around_the_world_mvl/mxv
	.byte	KEYSH , mus_around_the_world_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 8
	.byte	W24
	.byte		N12   , En1 , v060
	.byte	W48
	.byte		N12   
	.byte	W24
@ 001   ----------------------------------------
mus_around_the_world_3_001:
	.byte	W24
	.byte		N12   , En1 , v060
	.byte	W48
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_3_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_3_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_3_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_3_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_3_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_3_001
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_3_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_3_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_3_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_3_001
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_3_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_3_001
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_3_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_3_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_3_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_3_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_3_001
@ 020   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_around_the_world_4:
	.byte		VOL   , 127*mus_around_the_world_mvl/mxv
	.byte	KEYSH , mus_around_the_world_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 8
	.byte		N12   , Cn1 , v060
	.byte		N12   , Fs1 , v032
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v064
	.byte		N12   , Fs1 , v032
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , Fs1 , v032
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v064
	.byte		N12   , Fs1 , v032
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte	W12
@ 001   ----------------------------------------
mus_around_the_world_4_001:
	.byte		N12   , Cn1 , v060
	.byte		N12   , Fs1 , v032
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v064
	.byte		N12   , Fs1 , v032
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , Fs1 , v032
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N12   , En1 , v064
	.byte		N12   , Fs1 , v032
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_4_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_4_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_4_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_4_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_4_001
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_4_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_4_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_4_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_4_001
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_4_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_4_001
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_4_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_4_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_4_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_4_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_world_4_001
@ 020   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_around_the_world:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_around_the_world_pri	@ Priority
	.byte	mus_around_the_world_rev	@ Reverb.

	.word	mus_around_the_world_grp

	.word	mus_around_the_world_1
	.word	mus_around_the_world_2
	.word	mus_around_the_world_3
	.word	mus_around_the_world_4

	.end
