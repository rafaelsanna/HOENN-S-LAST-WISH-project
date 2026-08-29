	.include "MPlayDef.s"

	.equ	mus_pink_and_white_grp, voicegroup_pink_and_white
	.equ	mus_pink_and_white_pri, 0
	.equ	mus_pink_and_white_rev, reverb_set+50
	.equ	mus_pink_and_white_mvl, 100
	.equ	mus_pink_and_white_key, 0
	.equ	mus_pink_and_white_tbs, 1
	.equ	mus_pink_and_white_exg, 1
	.equ	mus_pink_and_white_cmp, 1

	.section .rodata
	.global	mus_pink_and_white
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_pink_and_white_1:
	.byte		VOL   , 127*mus_pink_and_white_mvl/mxv
	.byte	KEYSH , mus_pink_and_white_key+0
mus_pink_and_white_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 160*mus_pink_and_white_tbs/2
	.byte		VOICE , 33
	.byte		N12   , Cn1 , v028
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
@ 001   ----------------------------------------
mus_pink_and_white_1_001:
	.byte	W18
	.byte		N12   , Bn2 , v028
	.byte	W06
	.byte		        Gn2 
	.byte	W24
	.byte		        Bn0 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
	.byte		        Dn2 
	.byte	W24
	.byte		        Fs2 
	.byte	W42
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W24
@ 003   ----------------------------------------
mus_pink_and_white_1_003:
	.byte		N12   , An0 , v028
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
mus_pink_and_white_1_004:
	.byte	W18
	.byte		N12   , Gn2 , v028
	.byte	W06
	.byte		        En2 
	.byte	W24
	.byte		        An0 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
mus_pink_and_white_1_005:
	.byte		N12   , Cs2 , v028
	.byte	W24
	.byte		N09   , En2 
	.byte	W42
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N06   
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte		N12   , Cn1 
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_and_white_1_001
@ 008   ----------------------------------------
	.byte		N12   , Dn2 , v028
	.byte	W24
	.byte		N09   , Fs2 
	.byte	W42
	.byte		N12   , An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W24
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_and_white_1_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_and_white_1_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_and_white_1_005
	.byte	GOTO
	 .word	mus_pink_and_white_1_B1
mus_pink_and_white_1_B2:
@ 012   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_pink_and_white_2:
	.byte		VOL   , 127*mus_pink_and_white_mvl/mxv
	.byte	KEYSH , mus_pink_and_white_key+0
mus_pink_and_white_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		N24   , En3 , v028
	.byte		N24   , En4 
	.byte	W14
	.byte		TIE   , Gn3 
	.byte		TIE   , Gn4 
	.byte	W80
	.byte	W02
@ 001   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gn3 
	.byte		        Gn4 
	.byte		N16   , An3 
	.byte		N16   , An4 
	.byte	W16
	.byte		N80   , Fs3 
	.byte		N80   , Fs4 
	.byte	W32
@ 002   ----------------------------------------
mus_pink_and_white_2_002:
	.byte	W72
	.byte		N24   , Dn3 , v028
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
mus_pink_and_white_2_003:
	.byte		N36   , En3 , v028
	.byte		N36   , En4 
	.byte	W36
	.byte		        En3 
	.byte		N36   , En4 
	.byte	W36
	.byte		        En3 
	.byte		N36   , En4 
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
mus_pink_and_white_2_004:
	.byte	W12
	.byte		N36   , En3 , v028
	.byte		N36   , En4 
	.byte	W36
	.byte		        En3 
	.byte		N36   , En4 
	.byte	W36
	.byte		        En3 
	.byte		N36   , En4 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_pink_and_white_2_005:
	.byte	W24
	.byte		N36   , En3 , v028
	.byte		N36   , En4 
	.byte	W36
	.byte		        En3 
	.byte		N36   , En4 
	.byte	W36
	.byte	PEND
@ 006   ----------------------------------------
	.byte		TIE   , Bn3 
	.byte		TIE   , Bn4 
	.byte	W14
	.byte		        Gn3 
	.byte		TIE   , Gn4 
	.byte	W80
	.byte	W02
@ 007   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gn3 
	.byte		        Bn3 
	.byte		        Gn4 
	.byte		        Bn4 
	.byte		N16   , An3 
	.byte		N16   , An4 
	.byte	W16
	.byte		N80   , Fs3 
	.byte		N80   , Fs4 
	.byte	W32
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_and_white_2_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_and_white_2_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_and_white_2_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_and_white_2_005
	.byte	GOTO
	 .word	mus_pink_and_white_2_B1
mus_pink_and_white_2_B2:
@ 012   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.8) ****************@

mus_pink_and_white_3:
	.byte		VOL   , 127*mus_pink_and_white_mvl/mxv
	.byte	KEYSH , mus_pink_and_white_key+0
mus_pink_and_white_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		N24   , En3 , v012
	.byte		N24   , En4 
	.byte	W22
	.byte		        Bn3 
	.byte	W48
	.byte	W02
	.byte		N24   
	.byte	W24
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
	.byte	GOTO
	 .word	mus_pink_and_white_3_B1
mus_pink_and_white_3_B2:
@ 012   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_pink_and_white_4:
	.byte		VOL   , 127*mus_pink_and_white_mvl/mxv
	.byte	KEYSH , mus_pink_and_white_key+0
mus_pink_and_white_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 118
	.byte	W22
	.byte		N01   , Fs1 , v076
	.byte	W24
	.byte		N01   
	.byte	W24
	.byte		N01   
	.byte	W02
	.byte		N06   , En1 , v052
	.byte	W22
	.byte		N01   , Fs1 , v076
	.byte	W02
@ 001   ----------------------------------------
mus_pink_and_white_4_001:
	.byte	W22
	.byte		N01   , Fs1 , v076
	.byte	W15
	.byte		        Cn1 
	.byte	W09
	.byte		N01   
	.byte		N01   , Fs1 
	.byte	W24
	.byte		N01   
	.byte	W24
	.byte		N01   
	.byte	W02
	.byte	PEND
@ 002   ----------------------------------------
mus_pink_and_white_4_002:
	.byte	W22
	.byte		N01   , Fs1 , v076
	.byte	W02
	.byte		N06   , En1 , v052
	.byte	W40
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N01   
	.byte	W14
	.byte		        Cn1 
	.byte	W10
	.byte		N01   
	.byte		N01   , Fs1 
	.byte	W02
	.byte	PEND
@ 003   ----------------------------------------
mus_pink_and_white_4_003:
	.byte	W10
	.byte		N01   , Cn1 , v076
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W02
	.byte		N06   , En1 , v052
	.byte	W22
	.byte		N01   , Fs1 , v076
	.byte	W02
	.byte	PEND
@ 004   ----------------------------------------
mus_pink_and_white_4_004:
	.byte	W22
	.byte		N01   , Fs1 , v076
	.byte	W24
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W02
	.byte	PEND
@ 005   ----------------------------------------
	.byte	W10
	.byte		        Cn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W02
	.byte		N06   , En1 , v052
	.byte	W22
	.byte		N01   , Fs1 , v076
	.byte	W24
	.byte	W02
	.byte		N06   , As1 , v052
	.byte	W22
	.byte		N01   , Cn1 , v076
	.byte		N01   , Fs1 
	.byte	W02
@ 006   ----------------------------------------
	.byte	W22
	.byte		N01   
	.byte	W24
	.byte		N01   
	.byte	W24
	.byte		N01   
	.byte	W02
	.byte		N06   , En1 , v052
	.byte	W22
	.byte		N01   , Fs1 , v076
	.byte	W02
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_and_white_4_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_and_white_4_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_and_white_4_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_and_white_4_004
@ 011   ----------------------------------------
	.byte	W10
	.byte		N01   , Cn1 , v076
	.byte	W12
	.byte		        Fs1 
	.byte	W02
	.byte		N06   , En1 , v052
	.byte	W22
	.byte		N01   , Fs1 , v076
	.byte	W24
	.byte	W02
	.byte		N06   , As1 , v052
	.byte	W24
	.byte	GOTO
	 .word	mus_pink_and_white_4_B1
mus_pink_and_white_4_B2:
@ 012   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_pink_and_white:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_pink_and_white_pri	@ Priority
	.byte	mus_pink_and_white_rev	@ Reverb.

	.word	mus_pink_and_white_grp

	.word	mus_pink_and_white_1
	.word	mus_pink_and_white_2
	.word	mus_pink_and_white_3
	.word	mus_pink_and_white_4

	.end
