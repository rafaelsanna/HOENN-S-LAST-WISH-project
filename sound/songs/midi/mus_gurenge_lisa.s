	.include "MPlayDef.s"

	.equ	mus_gurenge_lisa_grp, voicegroup_hlw_rock_metal
	.equ	mus_gurenge_lisa_pri, 0
	.equ	mus_gurenge_lisa_rev, reverb_set+15
	.equ	mus_gurenge_lisa_mvl, 92
	.equ	mus_gurenge_lisa_key, 0
	.equ	mus_gurenge_lisa_tbs, 1
	.equ	mus_gurenge_lisa_exg, 1
	.equ	mus_gurenge_lisa_cmp, 1

	.section .rodata
	.global	mus_gurenge_lisa
	.align	2

@**************** Track 1 (Midi-Chn.16) ****************@

mus_gurenge_lisa_1:
	.byte		VOL   , 127*mus_gurenge_lisa_mvl/mxv
	.byte	KEYSH , mus_gurenge_lisa_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 135*mus_gurenge_lisa_tbs/2
	.byte		VOICE , 29
	.byte		N18   , Gn3 , v076
	.byte	W18
	.byte		        Fs3 
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W60
@ 001   ----------------------------------------
mus_gurenge_lisa_1_001:
	.byte		N18   , Gn3 , v076
	.byte	W18
	.byte		        Fs3 
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W48
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_gurenge_lisa_1_002:
	.byte		N18   , Gn3 , v076
	.byte	W18
	.byte		        Fs3 
	.byte	W18
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N24   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_gurenge_lisa_1_003:
	.byte	W60
	.byte		N18   , Bn2 , v076
	.byte	W18
	.byte		        Dn3 
	.byte	W18
	.byte	PEND
@ 004   ----------------------------------------
mus_gurenge_lisa_1_004:
	.byte		N18   , Dn3 , v076
	.byte	W18
	.byte		        En3 
	.byte	W42
	.byte		N18   
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte	PEND
@ 005   ----------------------------------------
mus_gurenge_lisa_1_005:
	.byte		N18   , Gn3 , v076
	.byte	W18
	.byte		        An3 
	.byte	W42
	.byte		        Gn3 
	.byte	W18
	.byte		        An3 
	.byte	W18
	.byte	PEND
@ 006   ----------------------------------------
mus_gurenge_lisa_1_006:
	.byte		N18   , An3 , v076
	.byte	W18
	.byte		        Bn3 
	.byte	W78
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte		        En3 
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		N12   , Fs3 
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte		N18   , En3 
	.byte	W18
	.byte		N06   , Dn3 
	.byte	W06
@ 009   ----------------------------------------
	.byte	W48
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        Bn2 
	.byte	W18
	.byte		N18   , En2 
	.byte	W78
@ 011   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W18
	.byte		N12   , An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 012   ----------------------------------------
	.byte		        En3 
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		        Fs3 
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte		N18   , En3 
	.byte	W18
	.byte		N06   , Dn3 
	.byte	W06
@ 013   ----------------------------------------
	.byte	W36
	.byte		        Gn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N12   , An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 014   ----------------------------------------
	.byte		        Bn3 
	.byte	W18
	.byte		N18   , Gn3 
	.byte	W66
	.byte		N12   
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Fs3 
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W36
	.byte		        Gn3 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        An3 
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		N18   , Bn3 
	.byte	W18
	.byte		N06   , An3 
	.byte	W06
@ 017   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N18   , En3 
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W12
@ 018   ----------------------------------------
	.byte		        An3 
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		        Dn4 
	.byte	W24
@ 019   ----------------------------------------
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N18   , Fs2 
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        An3 
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		        En3 
	.byte	W24
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 021   ----------------------------------------
	.byte	W24
	.byte		        Bn3 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N12   , An3 
	.byte	W18
	.byte		N18   , Gn3 
	.byte	W66
	.byte		N12   
	.byte	W12
@ 023   ----------------------------------------
	.byte		        Fs3 
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W48
@ 024   ----------------------------------------
	.byte		N18   , Gn3 
	.byte	W18
	.byte		        Fs3 
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W60
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_gurenge_lisa_1_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_gurenge_lisa_1_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_gurenge_lisa_1_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_gurenge_lisa_1_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_gurenge_lisa_1_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_gurenge_lisa_1_006
@ 031   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn3 , v076
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Bn3 
	.byte	W24
@ 032   ----------------------------------------
	.byte		N12   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 033   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N12   , Dn3 
	.byte	W12
@ 034   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 035   ----------------------------------------
	.byte		        Dn4 
	.byte	W24
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N18   , Bn3 
	.byte	W18
	.byte		N06   , An3 
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W12
@ 036   ----------------------------------------
mus_gurenge_lisa_1_036:
	.byte		N12   , Gn3 , v076
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
	.byte	W24
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W24
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W84
	.byte		N12   
	.byte	W12
@ 040   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		        Gn3 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 041   ----------------------------------------
	.byte		N12   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W18
	.byte		N12   , Fs3 
	.byte	W12
@ 042   ----------------------------------------
	.byte		        Gn3 
	.byte	W24
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
@ 043   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N18   , Bn3 
	.byte	W18
	.byte		N06   , An3 
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W12
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_gurenge_lisa_1_036
@ 045   ----------------------------------------
	.byte	W36
	.byte		N12   , An3 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
@ 046   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_gurenge_lisa:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_gurenge_lisa_pri	@ Priority
	.byte	mus_gurenge_lisa_rev	@ Reverb.

	.word	mus_gurenge_lisa_grp

	.word	mus_gurenge_lisa_1

	.end
