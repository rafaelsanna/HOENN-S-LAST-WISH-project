	.include "MPlayDef.s"

	.equ	mus_vs_gym_leader_metal_grp, voicegroup_hlw_rock_metal
	.equ	mus_vs_gym_leader_metal_pri, 0
	.equ	mus_vs_gym_leader_metal_rev, reverb_set+12
	.equ	mus_vs_gym_leader_metal_mvl, 90
	.equ	mus_vs_gym_leader_metal_key, 0
	.equ	mus_vs_gym_leader_metal_tbs, 1
	.equ	mus_vs_gym_leader_metal_exg, 0
	.equ	mus_vs_gym_leader_metal_cmp, 1

	.section .rodata
	.global	mus_vs_gym_leader_metal
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_vs_gym_leader_metal_1:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 112*mus_vs_gym_leader_metal_tbs/2
	.byte		VOICE , 29
	.byte		VOL   , 108*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N08   , Cn2 , v096
	.byte		N08   , Gn2 , v088
	.byte	W12
	.byte		        Cn2 , v096
	.byte		N08   , Gn2 , v088
	.byte	W12
	.byte		        As2 , v096
	.byte		N08   , Fn3 , v088
	.byte	W12
	.byte		        As1 , v096
	.byte		N08   , Fn2 , v088
	.byte	W12
	.byte		        Gs2 , v096
	.byte		N08   , Ds3 , v088
	.byte	W12
	.byte		N04   , As2 , v096
	.byte		N04   , Fn3 , v088
	.byte	W06
	.byte		        Gs2 , v096
	.byte		N04   , Ds3 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte		        Ds2 , v096
	.byte		N04   , As2 , v088
	.byte	W06
	.byte		        Cs2 , v096
	.byte		N04   , Gs2 , v088
	.byte	W06
@ 002   ----------------------------------------
mus_vs_gym_leader_metal_1_002:
	.byte		N04   , Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Fs2 , v096
	.byte		N04   , Cs3 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte		        Ds2 , v096
	.byte		N04   , As2 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte		        Ds2 , v096
	.byte		N04   , As2 , v088
	.byte	W06
	.byte		        Ds2 , v096
	.byte		N04   , As2 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Fs2 , v096
	.byte		N04   , Cs3 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte		        Ds2 , v096
	.byte		N04   , As2 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte		        Ds2 , v096
	.byte		N04   , As2 , v088
	.byte	W06
	.byte		        Ds2 , v096
	.byte		N04   , As2 , v088
	.byte	W06
	.byte		        Cs2 , v096
	.byte		N04   , Gs2 , v088
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_002
mus_vs_gym_leader_metal_1_B1:
@ 006   ----------------------------------------
	.byte		N04   , Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Dn2 , v096
	.byte		N04   , An2 , v088
	.byte	W06
@ 007   ----------------------------------------
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        As2 , v096
	.byte		N04   , Fn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        An2 , v096
	.byte		N04   , En3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Dn2 , v096
	.byte		N04   , An2 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
@ 008   ----------------------------------------
mus_vs_gym_leader_metal_1_008:
	.byte		N04   , As1 , v096
	.byte		N04   , Fn2 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte		        As1 , v096
	.byte		N04   , Fn2 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte		        As1 , v096
	.byte		N04   , Fn2 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte		        As1 , v096
	.byte		N04   , Fn2 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte		        As1 , v096
	.byte		N04   , Fn2 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte		        As1 , v096
	.byte		N04   , Fn2 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte		        As1 , v096
	.byte		N04   , Fn2 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte		        As1 , v096
	.byte		N04   , Fn2 , v088
	.byte	W06
	.byte		        Bn1 , v096
	.byte		N04   , Fs2 , v088
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
mus_vs_gym_leader_metal_1_009:
	.byte		N04   , Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        En2 , v096
	.byte		N04   , Bn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
mus_vs_gym_leader_metal_1_010:
	.byte		N04   , As1 , v096
	.byte		N04   , Fn2 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte		        As1 , v096
	.byte		N04   , Fn2 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte		        As1 , v096
	.byte		N04   , Fn2 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte		        As1 , v096
	.byte		N04   , Fn2 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte		        As1 , v096
	.byte		N04   , Fn2 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte		        As1 , v096
	.byte		N04   , Fn2 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte		        As1 , v096
	.byte		N04   , Fn2 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte		        As1 , v096
	.byte		N04   , Fn2 , v088
	.byte	W06
	.byte		        Fn2 , v096
	.byte		N04   , Cn3 , v088
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
mus_vs_gym_leader_metal_1_011:
	.byte		N04   , Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_011
@ 013   ----------------------------------------
	.byte		N04   , Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W12
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Dn2 , v096
	.byte		N04   , An2 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_008
@ 015   ----------------------------------------
	.byte		N04   , Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
	.byte		        Gn2 , v096
	.byte		N04   , Dn3 , v088
	.byte	W06
	.byte		        En2 , v096
	.byte		N04   , Bn2 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte		N04   , Gn2 , v088
	.byte	W06
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_010
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_011
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_011
@ 020   ----------------------------------------
mus_vs_gym_leader_metal_1_020:
	.byte		N04   , Cs2 , v096
	.byte		N04   , Gs2 , v088
	.byte	W06
	.byte		        Gs2 , v096
	.byte		N04   , Ds3 , v088
	.byte	W06
	.byte		        Cs2 , v096
	.byte		N04   , Gs2 , v088
	.byte	W06
	.byte		        Gs2 , v096
	.byte		N04   , Ds3 , v088
	.byte	W06
	.byte		        Cs2 , v096
	.byte		N04   , Gs2 , v088
	.byte	W06
	.byte		        Gs2 , v096
	.byte		N04   , Ds3 , v088
	.byte	W06
	.byte		        Cs2 , v096
	.byte		N04   , Gs2 , v088
	.byte	W06
	.byte		        Gs2 , v096
	.byte		N04   , Ds3 , v088
	.byte	W06
	.byte		        Ds2 , v096
	.byte		N04   , As2 , v088
	.byte	W06
	.byte		        As2 , v096
	.byte		N04   , Fn3 , v088
	.byte	W06
	.byte		        Ds2 , v096
	.byte		N04   , As2 , v088
	.byte	W06
	.byte		        As2 , v096
	.byte		N04   , Fn3 , v088
	.byte	W06
	.byte		        Ds2 , v096
	.byte		N04   , As2 , v088
	.byte	W06
	.byte		        As2 , v096
	.byte		N04   , Fn3 , v088
	.byte	W06
	.byte		        Ds2 , v096
	.byte		N04   , As2 , v088
	.byte	W06
	.byte		        As2 , v096
	.byte		N04   , Fn3 , v088
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_011
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_020
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_011
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_010
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_010
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_011
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_011
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_011
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_1_B1
mus_vs_gym_leader_metal_1_B2:
@ 032   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_vs_gym_leader_metal_2:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 31
	.byte		VOL   , 112*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		N02   , Cn5 , v108
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
mus_vs_gym_leader_metal_2_B1:
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte		N22   , As4 , v096
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		N11   , Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 008   ----------------------------------------
	.byte		N17   , En4 
	.byte	W18
	.byte		N11   , Fn4 
	.byte	W12
	.byte		N22   , En4 
	.byte	W24
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N17   , Cn4 
	.byte	W18
@ 009   ----------------------------------------
	.byte		N22   , Fn4 , v084
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
@ 010   ----------------------------------------
	.byte		N32   , Cn5 
	.byte	W36
	.byte		N11   , An4 
	.byte	W12
	.byte		N44   , Gn4 
	.byte	W48
@ 011   ----------------------------------------
	.byte		N02   , Gn2 , v080
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 012   ----------------------------------------
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 013   ----------------------------------------
	.byte	W06
	.byte		        Dn3 
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 014   ----------------------------------------
	.byte		        Gn2 
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N22   , Fn4 , v084
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        An4 
	.byte	W06
	.byte		N02   , Fn2 , v080
	.byte	W06
	.byte		N11   , Dn5 , v084
	.byte	W06
	.byte		N02   , Fn2 , v080
	.byte	W06
@ 016   ----------------------------------------
	.byte		N32   , Cn5 , v084
	.byte	W18
	.byte		N02   , Gn2 , v080
	.byte	W18
	.byte		N11   , En4 , v084
	.byte	W12
	.byte		N44   , Cn5 
	.byte	W12
	.byte		N02   , En2 , v080
	.byte	W06
	.byte		        Gn2 
	.byte	W12
	.byte		        En2 
	.byte	W06
	.byte		N05   , Gn2 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N17   , Gn3 , v108
	.byte	W18
	.byte		        Fn3 
	.byte	W18
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N17   , An3 
	.byte	W18
	.byte		        Fn3 
	.byte	W18
	.byte		N11   , An3 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N44   , Gn3 
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W84
	.byte		N05   , Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 021   ----------------------------------------
	.byte		N44   , Cs4 
	.byte	W48
	.byte		        Ds4 
	.byte	W48
@ 022   ----------------------------------------
	.byte		        Cn4 
	.byte	W96
@ 023   ----------------------------------------
	.byte	W12
	.byte		N17   , Fn3 , v096
	.byte	W18
	.byte		        Cs5 
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N11   , Ds5 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 024   ----------------------------------------
	.byte		N17   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N01   , En5 
	.byte	W01
	.byte		        Ds5 
	.byte	W02
	.byte		        Dn5 
	.byte	W01
	.byte		        Cs5 
	.byte	W02
	.byte		        Cn5 
	.byte	W01
	.byte		        Bn4 
	.byte	W02
	.byte		        As4 
	.byte	W02
	.byte		        An4 
	.byte	W01
	.byte		        Gs4 
	.byte	W02
	.byte		        Gn4 
	.byte	W01
	.byte		        Fs4 
	.byte	W02
	.byte		        Fn4 
	.byte	W02
	.byte		        En4 
	.byte	W01
	.byte		        Ds4 
	.byte	W02
	.byte		        Dn4 
	.byte	W01
	.byte		        Cs4 
	.byte	W02
	.byte		        Cn4 
	.byte	W02
	.byte		        Bn3 
	.byte	W01
	.byte		        As3 
	.byte	W02
	.byte		        An3 
	.byte	W01
	.byte		        Gs3 
	.byte	W02
	.byte		N02   , Gn3 
	.byte	W03
	.byte		N11   , Fs3 
	.byte	W36
@ 025   ----------------------------------------
	.byte		N05   , Ds5 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 026   ----------------------------------------
	.byte		        Cn5 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_2_B1
mus_vs_gym_leader_metal_2_B2:
@ 031   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_vs_gym_leader_metal_3:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 106*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N11   , Cn2 , v092
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N05   , As1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
@ 001   ----------------------------------------
mus_vs_gym_leader_metal_3_001:
	.byte		N05   , Cn1 , v092
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_001
mus_vs_gym_leader_metal_3_B1:
@ 005   ----------------------------------------
	.byte		N05   , Cn1 , v092
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
@ 006   ----------------------------------------
	.byte		        Cn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
@ 007   ----------------------------------------
mus_vs_gym_leader_metal_3_007:
	.byte		N05   , As0 , v092
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 009   ----------------------------------------
mus_vs_gym_leader_metal_3_009:
	.byte		N05   , As0 , v092
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
mus_vs_gym_leader_metal_3_010:
	.byte		N05   , Cn1 , v092
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
mus_vs_gym_leader_metal_3_011:
	.byte		N05   , Cn1 , v092
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_007
@ 014   ----------------------------------------
	.byte		N05   , Cn1 , v092
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_009
@ 016   ----------------------------------------
	.byte		N05   , Cn1 , v092
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_011
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_011
@ 019   ----------------------------------------
mus_vs_gym_leader_metal_3_019:
	.byte		N05   , Cs1 , v092
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_011
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_011
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_009
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_009
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_011
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_010
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_3_B1
mus_vs_gym_leader_metal_3_B2:
@ 031   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_vs_gym_leader_metal_4:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 84*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+4
	.byte		N02   , Gn3 , v064
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N02   , Gn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N02   , Gn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N02   , Gn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N02   , Fn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N05   , Fn4 
	.byte	W06
	.byte		N02   , Fn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N05   , Fn4 
	.byte	W06
	.byte		N02   , Fn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N05   , Fn4 
	.byte	W09
	.byte		N02   
	.byte	W06
	.byte		        Fs4 
	.byte	W03
@ 001   ----------------------------------------
	.byte		N23   , Cn4 
	.byte	W18
	.byte		N17   , Cs4 , v068
	.byte	W06
	.byte		N23   , Cn3 , v064
	.byte	W12
	.byte		N11   , Cn3 , v068
	.byte	W12
	.byte		N23   , Gn3 , v064
	.byte	W24
	.byte		        Cs3 
	.byte	W24
@ 002   ----------------------------------------
	.byte		        Cn4 
	.byte	W18
	.byte		N17   , Cs4 , v068
	.byte	W06
	.byte		N23   , Gn4 , v064
	.byte	W12
	.byte		N11   , Cn3 , v068
	.byte	W12
	.byte		N23   , Cn4 , v064
	.byte	W24
	.byte		        Cs4 
	.byte	W24
@ 003   ----------------------------------------
	.byte		        Cn4 
	.byte	W18
	.byte		N17   , Cs4 , v068
	.byte	W06
	.byte		N23   , Cn3 , v064
	.byte	W12
	.byte		N11   , Cn4 , v068
	.byte	W12
	.byte		N23   , Gn3 , v064
	.byte	W24
	.byte		        Cs3 
	.byte	W24
@ 004   ----------------------------------------
	.byte		        Cn4 
	.byte	W18
	.byte		N17   , Cs4 , v068
	.byte	W06
	.byte		N23   , Cn3 , v064
	.byte	W12
	.byte		N11   , Gn4 , v068
	.byte	W12
	.byte		N23   , Cs4 , v064
	.byte	W24
	.byte		N11   , Ds3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
mus_vs_gym_leader_metal_4_B1:
@ 005   ----------------------------------------
	.byte		N23   , Gn3 , v072
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		N02   , Gs3 
	.byte	W02
	.byte		N15   , Gn3 
	.byte	W16
	.byte		N05   , Cn3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 006   ----------------------------------------
	.byte		N17   , Gn3 
	.byte	W18
	.byte		        Cn4 
	.byte	W18
	.byte		N05   , As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W12
	.byte		N28   , Gn3 
	.byte	W30
@ 007   ----------------------------------------
mus_vs_gym_leader_metal_4_007:
	.byte		N23   , As3 , v068
	.byte	W24
	.byte		        An4 
	.byte	W72
	.byte	PEND
@ 008   ----------------------------------------
mus_vs_gym_leader_metal_4_008:
	.byte		N32   , En4 , v068
	.byte	W36
	.byte		N11   , Cn4 
	.byte	W60
	.byte	PEND
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte		N17   , Cn3 , v072
	.byte	W18
	.byte		        Fn3 
	.byte	W18
	.byte		N11   , En3 
	.byte	W12
	.byte		N17   , Fn3 
	.byte	W18
	.byte		N05   , Cn3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 012   ----------------------------------------
	.byte		N17   , Gn3 
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N05   , As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W12
	.byte		N28   , Gn3 
	.byte	W30
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_007
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_008
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte		N44   , Cs2 , v060
	.byte	W96
@ 020   ----------------------------------------
	.byte		N80   , Cn2 
	.byte	W96
@ 021   ----------------------------------------
	.byte		N44   , Cs3 
	.byte	W96
@ 022   ----------------------------------------
	.byte		        Cn3 
	.byte	W96
@ 023   ----------------------------------------
	.byte		        Gs2 
	.byte	W96
@ 024   ----------------------------------------
	.byte		TIE   , Fn3 
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 027   ----------------------------------------
	.byte		N44   , Cn3 , v084
	.byte	W48
	.byte		N23   , As2 
	.byte	W24
	.byte		N02   , Cn3 
	.byte	W02
	.byte		N21   , Dn3 
	.byte	W22
@ 028   ----------------------------------------
	.byte		N44   , Gn2 
	.byte	W48
	.byte		        Cn3 
	.byte	W48
@ 029   ----------------------------------------
	.byte		        Cs3 
	.byte	W48
	.byte		N23   , As2 
	.byte	W24
	.byte		N17   , Cs3 
	.byte	W18
	.byte		N05   , En3 
	.byte	W06
@ 030   ----------------------------------------
	.byte		N44   , Cn3 
	.byte	W48
	.byte		        En3 
	.byte	W48
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_4_B1
mus_vs_gym_leader_metal_4_B2:
@ 031   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_vs_gym_leader_metal_5:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 108*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte		N01   , Fs1 , v088
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v096
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v096
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
@ 001   ----------------------------------------
mus_vs_gym_leader_metal_5_001:
	.byte		N02   , Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte		N01   , Fs1 , v088
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v096
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v096
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v096
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v096
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		N03   , Fs1 , v088
	.byte	W06
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_001
@ 004   ----------------------------------------
	.byte		N02   , Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v096
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N01   , Cn1 , v088
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		N03   , En1 , v088
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte		N01   , Fs1 , v088
	.byte	W03
	.byte		N02   , Cn1 
	.byte	W09
	.byte		N03   
	.byte		N02   , En1 , v096
	.byte		N01   , En1 , v088
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v088
	.byte		N02   , Fs1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		        En1 
	.byte		N02   , Fs1 , v056
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W06
	.byte		        En1 
	.byte	W03
mus_vs_gym_leader_metal_5_B1:
@ 005   ----------------------------------------
	.byte		N02   , Cn1 , v100
	.byte		N01   , Cn1 , v088
	.byte		N02   , Fs1 , v064
	.byte		N01   , Fs1 , v088
	.byte	W12
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v096
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N01   , Cn1 , v088
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N03   , En1 , v088
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v096
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Cn1 , v100
	.byte		N01   , Cn1 , v088
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		N03   , En1 , v088
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W09
	.byte		N03   
	.byte		N02   , En1 , v096
	.byte		N01   , En1 , v088
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v088
	.byte		N02   , Fs1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		        En1 
	.byte		N02   , Fs1 , v056
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W06
	.byte		        En1 
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N01   , Cn1 , v088
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N03   , En1 , v088
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v096
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 007   ----------------------------------------
mus_vs_gym_leader_metal_5_007:
	.byte		N02   , Cn1 , v100
	.byte		N01   , Cn1 , v088
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N03   , En1 , v088
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v096
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N01   , Cn1 , v088
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N03   , En1 , v088
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v096
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_007
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_007
@ 010   ----------------------------------------
mus_vs_gym_leader_metal_5_010:
	.byte		N02   , Cn1 , v100
	.byte		N01   , Cn1 , v088
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N03   , En1 , v088
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v096
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N01   , Cn1 , v088
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		N03   , En1 , v088
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W09
	.byte		N03   
	.byte		N02   , En1 , v096
	.byte		N01   , En1 , v088
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v088
	.byte		N02   , Fs1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		        En1 
	.byte		N02   , Fs1 , v056
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W06
	.byte		        En1 
	.byte	W03
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_007
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_007
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_007
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_010
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_007
@ 018   ----------------------------------------
	.byte		N02   , Cn1 , v100
	.byte		N01   , Cn1 , v088
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N03   , En1 , v088
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v096
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N01   , Cn1 , v088
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N03   , En1 , v088
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v096
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		N03   , Cn1 , v088
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 019   ----------------------------------------
mus_vs_gym_leader_metal_5_019:
	.byte		N02   , Cn1 , v100
	.byte		N01   , Cn1 , v088
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N03   , En1 , v088
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v096
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		N03   , Cn1 , v088
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N01   , Cn1 , v088
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N03   , En1 , v088
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v096
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		N03   , Cn1 , v088
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_019
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_019
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_019
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_019
@ 026   ----------------------------------------
	.byte		N02   , Cn1 , v100
	.byte		N01   , Cn1 , v088
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N03   , En1 , v088
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v096
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		N03   , Cn1 , v088
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N01   , Cn1 , v088
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		N03   , En1 , v088
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W09
	.byte		N03   
	.byte		N02   , En1 , v096
	.byte		N01   , En1 , v088
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v088
	.byte		N02   , Fs1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		        En1 
	.byte		N02   , Fs1 , v056
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W06
	.byte		        En1 
	.byte	W03
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_007
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_007
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_007
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_007
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_5_B1
mus_vs_gym_leader_metal_5_B2:
@ 031   ----------------------------------------
	.byte		N02   , Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

mus_vs_gym_leader_metal:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_vs_gym_leader_metal_pri	@ Priority
	.byte	mus_vs_gym_leader_metal_rev	@ Reverb.

	.word	mus_vs_gym_leader_metal_grp

	.word	mus_vs_gym_leader_metal_1
	.word	mus_vs_gym_leader_metal_2
	.word	mus_vs_gym_leader_metal_3
	.word	mus_vs_gym_leader_metal_4
	.word	mus_vs_gym_leader_metal_5

	.end
