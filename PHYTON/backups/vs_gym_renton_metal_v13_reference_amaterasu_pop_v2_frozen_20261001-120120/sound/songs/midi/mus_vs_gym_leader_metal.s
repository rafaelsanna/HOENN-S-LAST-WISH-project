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
	.byte	TEMPO , 152*mus_vs_gym_leader_metal_tbs/2
	.byte		VOICE , 29
	.byte		VOL   , 102*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+12
	.byte		N06   , Gn3 , v104
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N12   
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Cs4 
	.byte	W24
	.byte		        Gn2 
	.byte	W12
	.byte		N04   , Gn2 , v108
	.byte	W12
	.byte		N12   , Dn3 , v104
	.byte	W12
	.byte		N04   , Dn3 , v108
	.byte	W12
	.byte		N12   , Gs2 , v104
	.byte	W12
	.byte		N04   , Gs2 , v108
	.byte	W12
@ 003   ----------------------------------------
	.byte		N12   , Gn3 , v104
	.byte	W12
	.byte		N04   , Gn3 , v108
	.byte	W12
	.byte		N12   , Dn4 , v104
	.byte	W12
	.byte		N04   , Dn4 , v108
	.byte	W12
	.byte		N12   , Gn3 , v104
	.byte	W12
	.byte		N04   , Gn3 , v108
	.byte	W12
	.byte		N12   , Gs3 , v104
	.byte	W12
	.byte		N04   , Gs3 , v108
	.byte	W12
@ 004   ----------------------------------------
	.byte		N12   , Gn3 , v104
	.byte	W12
	.byte		N04   , Gn3 , v108
	.byte	W12
	.byte		N12   , Gn2 , v104
	.byte	W12
	.byte		N04   , Gn2 , v108
	.byte	W12
	.byte		N12   , Dn3 , v104
	.byte	W12
	.byte		N04   , Dn3 , v108
	.byte	W12
	.byte		N12   , Gs2 , v104
	.byte	W12
	.byte		N04   , Gs2 , v108
	.byte	W12
@ 005   ----------------------------------------
	.byte		N12   , Gn3 , v104
	.byte	W12
	.byte		N04   , Gn3 , v108
	.byte	W12
	.byte		N12   , Gn2 , v104
	.byte	W12
	.byte		N04   , Gn2 , v108
	.byte	W12
	.byte		N12   , Gs3 , v104
	.byte	W12
	.byte		N04   , Gs3 , v108
	.byte	W12
	.byte		N12   , As2 , v104
	.byte	W12
	.byte		        Gs3 
	.byte	W12
mus_vs_gym_leader_metal_1_B1:
@ 006   ----------------------------------------
mus_vs_gym_leader_metal_1_006:
	.byte		N12   , Gn3 , v104
	.byte	W12
	.byte		N04   , Gn3 , v108
	.byte	W12
	.byte		N12   , Fn3 , v104
	.byte	W12
	.byte		N04   , Fn3 , v108
	.byte	W12
	.byte		N12   , An3 , v104
	.byte	W12
	.byte		N04   , An3 , v108
	.byte	W06
	.byte		N12   , Dn3 , v104
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
mus_vs_gym_leader_metal_1_007:
	.byte		N12   , Bn3 , v104
	.byte	W12
	.byte		N04   , Bn3 , v108
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N06   , An3 , v104
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N04   , Gn3 , v108
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
	.byte		N12   , Cn4 , v104
	.byte	W12
	.byte		N04   , Cn4 , v108
	.byte	W12
	.byte		N12   , En4 , v104
	.byte	W12
	.byte		N04   , En4 , v108
	.byte	W12
	.byte		N12   , Dn4 , v104
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 009   ----------------------------------------
	.byte		        Bn3 
	.byte	W12
	.byte		N04   , Bn3 , v108
	.byte	W06
	.byte		N12   , Cn4 , v104
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N04   , Bn3 , v108
	.byte	W12
	.byte		N12   , Gn3 , v104
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N04   , Gn3 , v108
	.byte	W06
@ 010   ----------------------------------------
	.byte		N12   , Cn4 , v104
	.byte	W12
	.byte		N04   , Cn4 , v108
	.byte	W12
	.byte		N12   , Bn3 , v104
	.byte	W12
	.byte		N04   , Bn3 , v108
	.byte	W12
	.byte		N12   , Cn4 , v104
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 011   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		N04   , Gn3 , v108
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N12   , En4 , v104
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N04   , Dn4 , v108
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_006
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_007
@ 014   ----------------------------------------
	.byte		N12   , Fn2 , v104
	.byte	W12
	.byte		N04   , Fn2 , v100
	.byte	W12
	.byte		N12   , En2 , v104
	.byte	W12
	.byte		N04   , En2 , v100
	.byte	W12
	.byte		N12   , Dn2 , v104
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		N04   , Bn2 , v100
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N12   , Gn2 , v104
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N04   , Dn2 , v100
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N06   , Dn2 , v104
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        Fn3 
	.byte	W12
	.byte		N04   , Fn3 , v100
	.byte	W12
	.byte		N12   , En4 , v104
	.byte	W12
	.byte		N04   , En4 , v100
	.byte	W12
	.byte		N12   , Fn3 , v104
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 017   ----------------------------------------
	.byte		        Bn3 
	.byte	W12
	.byte		N04   , Bn3 , v100
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N12   , Gn3 , v104
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N04   , Dn4 , v100
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
@ 018   ----------------------------------------
	.byte		N10   , Dn3 , v108
	.byte	W06
	.byte		N04   , Dn3 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , Cn3 , v108
	.byte	W06
	.byte		N04   , Cn3 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , Dn3 , v108
	.byte	W06
	.byte		N04   , Dn3 , v112
	.byte	W06
	.byte		N10   , En3 , v108
	.byte	W06
	.byte		N04   , En3 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , Cn3 , v108
	.byte	W06
	.byte		N04   , Cn3 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , En3 , v108
	.byte	W06
	.byte		N04   , En3 , v112
	.byte	W06
@ 019   ----------------------------------------
	.byte		N10   , Dn3 , v108
	.byte	W06
	.byte		N04   , Dn3 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W54
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W84
	.byte		N06   , Gn3 , v108
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 022   ----------------------------------------
	.byte		N10   , Gs3 
	.byte	W06
	.byte		N04   , Gs3 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , As3 , v108
	.byte	W06
	.byte		N04   , As3 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
@ 023   ----------------------------------------
	.byte		N10   , Gn3 , v108
	.byte	W06
	.byte		N04   , Gn3 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W54
@ 024   ----------------------------------------
	.byte	W12
	.byte		N10   , Cn3 , v108
	.byte	W06
	.byte		N04   , Cn3 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , Ds4 , v108
	.byte	W06
	.byte		N04   , Ds4 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   , Ds4 , v108
	.byte	W06
	.byte		N10   , As3 
	.byte	W06
	.byte		N04   , As3 , v112
	.byte	W06
	.byte		N10   , As3 , v108
	.byte	W06
	.byte		N04   , As3 , v112
	.byte	W06
	.byte		N06   , Dn4 , v108
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 025   ----------------------------------------
	.byte		N10   , Cn4 
	.byte	W06
	.byte		N04   , Cn4 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   , Cn4 , v108
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N10   , Dn3 
	.byte	W06
	.byte		N04   , Dn3 , v112
	.byte	W30
@ 026   ----------------------------------------
	.byte		N06   , As3 , v108
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   , As3 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   , As3 , v108
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   , An3 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   , An3 , v108
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 027   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   , Gn3 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   , Gn3 , v108
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N10   , Fn3 , v108
	.byte	W06
	.byte		N04   , Fn3 , v112
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 028   ----------------------------------------
	.byte		N10   , Gn2 , v108
	.byte	W06
	.byte		N04   , Gn2 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , Fn2 , v108
	.byte	W06
	.byte		N04   , Fn2 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , An2 , v108
	.byte	W06
	.byte		N04   , An2 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
@ 029   ----------------------------------------
	.byte		N10   , Dn2 , v108
	.byte	W06
	.byte		N04   , Dn2 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , Gn2 , v108
	.byte	W06
	.byte		N04   , Gn2 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
@ 030   ----------------------------------------
	.byte		N10   , Gs2 , v108
	.byte	W06
	.byte		N04   , Gs2 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , Fn2 , v108
	.byte	W06
	.byte		N04   , Fn2 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , Gs2 , v108
	.byte	W06
	.byte		N04   , Gs2 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   , Bn2 , v108
	.byte	W06
@ 031   ----------------------------------------
	.byte		N10   , Gn2 
	.byte	W06
	.byte		N04   , Gn2 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N10   , Bn2 , v108
	.byte	W06
	.byte		N04   , Bn2 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   , Bn3 
	.byte	W06
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_1_B1
mus_vs_gym_leader_metal_1_B2:
@ 032   ----------------------------------------
	.byte		N01   , Gn2 , v112
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_vs_gym_leader_metal_2:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 88*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v-18
	.byte		N08   , Gn1 , v096
	.byte		N08   , Dn2 , v088
	.byte	W48
	.byte		        Ds2 , v096
	.byte		N08   , As2 , v088
	.byte	W48
@ 001   ----------------------------------------
	.byte		        Gn1 , v096
	.byte		N08   , Dn2 , v088
	.byte	W48
	.byte		        Gn1 , v096
	.byte		N08   , Dn2 , v088
	.byte	W48
@ 002   ----------------------------------------
mus_vs_gym_leader_metal_2_002:
	.byte		N08   , Gn1 , v096
	.byte		N08   , Dn2 , v088
	.byte	W48
	.byte		        Gn1 , v096
	.byte		N08   , Dn2 , v088
	.byte	W24
	.byte		        Cn2 , v096
	.byte		N08   , Gn2 , v088
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_002
mus_vs_gym_leader_metal_2_B1:
@ 005   ----------------------------------------
mus_vs_gym_leader_metal_2_005:
	.byte		N08   , Gn1 , v096
	.byte		N08   , Dn2 , v088
	.byte	W48
	.byte		        Gn1 , v096
	.byte		N08   , Dn2 , v088
	.byte	W24
	.byte		        Gn1 , v096
	.byte		N08   , Dn2 , v088
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte		        Gn1 , v096
	.byte		N08   , Dn2 , v088
	.byte	W48
	.byte		        Gn1 , v096
	.byte		N08   , Dn2 , v088
	.byte	W24
	.byte		        Dn2 , v096
	.byte		N08   , An2 , v088
	.byte	W24
@ 007   ----------------------------------------
mus_vs_gym_leader_metal_2_007:
	.byte		N08   , Fn1 , v096
	.byte		N08   , Cn2 , v088
	.byte	W48
	.byte		        Fn1 , v096
	.byte		N08   , Cn2 , v088
	.byte	W24
	.byte		        Fn1 , v096
	.byte		N08   , Cn2 , v088
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_005
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_007
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_005
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_005
@ 013   ----------------------------------------
mus_vs_gym_leader_metal_2_013:
	.byte		N08   , Fn1 , v088
	.byte		N08   , Cn2 , v084
	.byte	W48
	.byte		        Fn1 , v088
	.byte		N08   , Cn2 , v084
	.byte	W48
	.byte	PEND
@ 014   ----------------------------------------
mus_vs_gym_leader_metal_2_014:
	.byte		N08   , Gn1 , v088
	.byte		N08   , Dn2 , v084
	.byte	W48
	.byte		        Gn1 , v088
	.byte		N08   , Dn2 , v084
	.byte	W48
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_013
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_014
@ 017   ----------------------------------------
mus_vs_gym_leader_metal_2_017:
	.byte		N12   , Gn1 , v100
	.byte		N12   , Dn2 , v096
	.byte	W12
	.byte		N04   , Gn1 , v100
	.byte		N04   , Dn2 , v096
	.byte	W12
	.byte		N12   , Gn1 , v100
	.byte		N12   , Dn2 , v096
	.byte	W12
	.byte		N04   , Gn1 , v100
	.byte		N04   , Dn2 , v096
	.byte	W12
	.byte		N12   , Gn1 , v100
	.byte		N12   , Dn2 , v096
	.byte	W12
	.byte		N04   , Gn1 , v100
	.byte		N04   , Dn2 , v096
	.byte	W12
	.byte		N12   , Gn1 , v100
	.byte		N12   , Dn2 , v096
	.byte	W12
	.byte		N04   , Gn1 , v100
	.byte		N04   , Dn2 , v096
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_017
@ 019   ----------------------------------------
mus_vs_gym_leader_metal_2_019:
	.byte		N12   , Gs1 , v100
	.byte		N12   , Ds2 , v096
	.byte	W12
	.byte		N04   , Gs1 , v100
	.byte		N04   , Ds2 , v096
	.byte	W12
	.byte		N12   , Gs1 , v100
	.byte		N12   , Ds2 , v096
	.byte	W12
	.byte		N04   , Gs1 , v100
	.byte		N04   , Ds2 , v096
	.byte	W12
	.byte		N12   , As1 , v100
	.byte		N12   , Fn2 , v096
	.byte	W12
	.byte		N04   , As1 , v100
	.byte		N04   , Fn2 , v096
	.byte	W12
	.byte		N12   , As1 , v100
	.byte		N12   , Fn2 , v096
	.byte	W12
	.byte		N04   , As1 , v100
	.byte		N04   , Fn2 , v096
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_017
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_017
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_019
@ 024   ----------------------------------------
mus_vs_gym_leader_metal_2_024:
	.byte		N12   , Fn1 , v100
	.byte		N12   , Cn2 , v096
	.byte	W12
	.byte		N04   , Fn1 , v100
	.byte		N04   , Cn2 , v096
	.byte	W12
	.byte		N12   , Fn1 , v100
	.byte		N12   , Cn2 , v096
	.byte	W12
	.byte		N04   , Fn1 , v100
	.byte		N04   , Cn2 , v096
	.byte	W12
	.byte		N12   , Fn1 , v100
	.byte		N12   , Cn2 , v096
	.byte	W12
	.byte		N04   , Fn1 , v100
	.byte		N04   , Cn2 , v096
	.byte	W12
	.byte		N12   , Fn1 , v100
	.byte		N12   , Cn2 , v096
	.byte	W12
	.byte		N04   , Fn1 , v100
	.byte		N04   , Cn2 , v096
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_024
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_024
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_017
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_017
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_024
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_017
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_2_B1
mus_vs_gym_leader_metal_2_B2:
@ 031   ----------------------------------------
	.byte		N12   , Dn2 , v100
	.byte		N12   , An2 , v096
	.byte	W12
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_vs_gym_leader_metal_3:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 116*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N11   , Gn1 , v104
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fn0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N05   , Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
@ 001   ----------------------------------------
mus_vs_gym_leader_metal_3_001:
	.byte		N05   , Gn0 , v104
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs0 
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
	.byte		N05   , Gn0 , v104
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        An0 
	.byte	W06
@ 006   ----------------------------------------
	.byte		        Gn0 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
@ 007   ----------------------------------------
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
@ 008   ----------------------------------------
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
@ 009   ----------------------------------------
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
@ 010   ----------------------------------------
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
@ 011   ----------------------------------------
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
@ 012   ----------------------------------------
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
@ 013   ----------------------------------------
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
@ 014   ----------------------------------------
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
@ 015   ----------------------------------------
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
@ 016   ----------------------------------------
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
@ 017   ----------------------------------------
mus_vs_gym_leader_metal_3_017:
	.byte		N05   , Gn0 , v108
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_017
@ 019   ----------------------------------------
mus_vs_gym_leader_metal_3_019:
	.byte		N05   , Gs0 , v108
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        Ds1 
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
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_017
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_017
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_019
@ 024   ----------------------------------------
mus_vs_gym_leader_metal_3_024:
	.byte		N05   , Fn0 , v108
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_024
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_024
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_017
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_017
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_024
@ 030   ----------------------------------------
	.byte		N05   , Gn0 , v108
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
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
	.byte		VOL   , 72*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+4
	.byte		N12   , Dn3 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 001   ----------------------------------------
	.byte		        Cs3 
	.byte	W24
	.byte		N23   , Gn2 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        Gs2 
	.byte	W24
@ 002   ----------------------------------------
	.byte		        Gn3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
@ 003   ----------------------------------------
	.byte		        Gn3 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        Gs2 
	.byte	W24
@ 004   ----------------------------------------
	.byte	W96
mus_vs_gym_leader_metal_4_B1:
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
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte		N23   , Fn3 , v072
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N32   , Bn2 
	.byte	W36
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N28   , Dn3 
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N12   , Gn3 
	.byte	W12
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
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
	.byte		VOL   , 127*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Cn1 , v124
	.byte		N03   , Cs2 , v127
	.byte		N03   , Cs2 , v124
	.byte	W24
	.byte		N02   , Fs1 , v072
	.byte	W24
	.byte		        Cn1 , v120
	.byte	W24
	.byte		        En1 , v127
	.byte	W12
	.byte		        Fs1 , v076
	.byte	W12
@ 001   ----------------------------------------
	.byte		        Cn1 , v124
	.byte		N03   , Cs2 
	.byte	W24
	.byte		N02   , Fs1 , v072
	.byte	W24
	.byte		        Cn1 , v120
	.byte	W24
	.byte		        En1 , v127
	.byte	W12
	.byte		        Fs1 , v076
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Cn1 , v124
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte		N04   , Cs2 , v127
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , Cn1 , v124
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cs2 , v124
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
@ 003   ----------------------------------------
	.byte		N02   , Cn1 , v124
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte		N03   , Cs2 , v124
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , Cn1 , v124
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
@ 004   ----------------------------------------
	.byte		N02   , Cn1 , v124
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , En1 , v124
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N02   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte		N02   , Cs2 , v124
	.byte	W03
	.byte		        Cn1 
	.byte	W09
	.byte		N03   
	.byte		N02   , En1 , v127
	.byte		N01   , En1 , v124
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N02   , Cn1 , v124
	.byte		N01   , En1 , v112
	.byte		N02   , Ds2 , v124
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N01   , Cn1 , v112
	.byte		N01   , En1 , v120
	.byte		N01   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W03
	.byte		N02   , Cn1 , v124
	.byte	W03
	.byte		N01   , En1 , v127
	.byte	W03
	.byte		N02   , En1 , v124
	.byte	W03
mus_vs_gym_leader_metal_5_B1:
@ 005   ----------------------------------------
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte		N03   , Cs2 , v127
	.byte		N03   , Cs2 , v124
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N03   , Ds2 
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N03   , Ds2 
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
@ 006   ----------------------------------------
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , En1 , v124
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N02   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W03
	.byte		N02   , Cn1 , v124
	.byte	W09
	.byte		N03   
	.byte		N02   , En1 , v127
	.byte		N01   , En1 , v124
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N02   , Cn1 , v124
	.byte		N02   , Ds2 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N01   , Cn1 , v112
	.byte		N02   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W03
	.byte		N02   , Cn1 , v124
	.byte	W06
	.byte		        En1 
	.byte	W03
	.byte		        Cn1 
	.byte		N01   
	.byte		N03   , En1 
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N03   , Ds2 
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
@ 007   ----------------------------------------
mus_vs_gym_leader_metal_5_007:
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N03   , Ds2 
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N03   , Ds2 
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_vs_gym_leader_metal_5_008:
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N03   , Ds2 
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N01   , En1 , v112
	.byte		N03   , Ds2 , v124
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N01   , En1 , v120
	.byte		N01   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_007
@ 010   ----------------------------------------
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N03   , Ds2 
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , En1 , v124
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N02   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W03
	.byte		N02   , Cn1 , v124
	.byte	W09
	.byte		N03   
	.byte		N02   , En1 , v127
	.byte		N01   , En1 , v124
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N02   , Cn1 , v124
	.byte		N02   , Ds2 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N01   , Cn1 , v112
	.byte		N02   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W03
	.byte		N02   , Cn1 , v124
	.byte	W06
	.byte		        En1 
	.byte	W03
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_008
@ 013   ----------------------------------------
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v068
	.byte		N04   , Cs2 , v127
	.byte	W12
	.byte		N03   , En1 , v124
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N03   , Ds2 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		N03   , En1 , v124
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v124
	.byte		N02   , Fs1 , v068
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N03   , Ds2 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v068
	.byte	W12
@ 014   ----------------------------------------
mus_vs_gym_leader_metal_5_014:
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		N03   , En1 , v124
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N03   , Ds2 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		N03   , En1 , v124
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v124
	.byte		N02   , Fs1 , v068
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N03   , Ds2 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_014
@ 016   ----------------------------------------
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		N03   , En1 , v124
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N03   , Ds2 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v124
	.byte		N01   
	.byte		N01   , En1 , v112
	.byte		N01   , En1 , v124
	.byte		N02   , Fs1 , v068
	.byte	W06
	.byte		N01   , En1 , v112
	.byte		N01   , En1 , v124
	.byte	W06
	.byte		        En1 , v112
	.byte		N01   , En1 , v124
	.byte		N02   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v124
	.byte	W03
	.byte		N01   , En1 , v112
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N02   , En1 
	.byte		N01   
	.byte		N02   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v124
	.byte		N01   , En1 , v120
	.byte		N02   , Ds2 , v124
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N01   , En1 
	.byte		N01   
	.byte		N02   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v124
	.byte	W03
	.byte		N01   , En1 , v127
	.byte	W03
	.byte		N02   , En1 , v124
	.byte	W03
@ 017   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   
	.byte		N03   , En1 
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte		N04   , Cs2 , v127
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N03   , Ds2 
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v116
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N03   , Ds2 
	.byte	W06
	.byte		N02   , Cn1 , v116
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
@ 018   ----------------------------------------
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N03   , Ds2 
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v116
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte	W06
	.byte		N02   , Cn1 , v116
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
@ 019   ----------------------------------------
mus_vs_gym_leader_metal_5_019:
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v116
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte	W06
	.byte		N02   , Cn1 , v116
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_vs_gym_leader_metal_5_020:
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v116
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N01   , En1 , v112
	.byte	W06
	.byte		N02   , Cn1 , v116
	.byte		N02   , Cn1 , v112
	.byte		N01   , En1 , v120
	.byte		N01   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte		N04   , Cs2 , v127
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte		N02   
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W12
	.byte		N02   , Cn1 , v116
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte	W06
	.byte		N02   , Cn1 , v116
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fs1 , v068
	.byte	W12
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_019
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_020
@ 025   ----------------------------------------
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N01   , Fs1 , v076
	.byte		N04   , Cs2 , v127
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        Cn1 , v112
	.byte		N02   
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v068
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        En1 , v127
	.byte		N01   , Fs1 , v076
	.byte		N02   , Ds2 , v108
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v068
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        Cn1 , v124
	.byte		N01   
	.byte		N01   , Fs1 , v076
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        Cn1 , v116
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v068
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        En1 , v127
	.byte		N01   , Fs1 , v076
	.byte		N02   , Ds2 , v108
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte	W06
	.byte		N02   , Cn1 , v116
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v068
	.byte		N02   , Ds2 , v108
	.byte	W12
@ 026   ----------------------------------------
	.byte		        Cn1 , v124
	.byte		N01   
	.byte		N01   , Fs1 , v076
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        Cn1 , v112
	.byte		N02   
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v068
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        En1 , v127
	.byte		N01   , Fs1 , v076
	.byte		N02   , Ds2 , v108
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v068
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N01   , Fs1 , v076
	.byte		N02   , Ds2 , v108
	.byte	W06
	.byte		N03   , En1 , v124
	.byte	W06
	.byte		N02   , Cn1 , v116
	.byte		N02   , Cn1 , v112
	.byte		N02   , En1 , v124
	.byte		N01   , Fs1 , v068
	.byte		N02   , Ds2 , v108
	.byte	W03
	.byte		        Cn1 , v124
	.byte	W09
	.byte		N03   
	.byte		N02   , En1 , v127
	.byte		N01   , En1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N02   , Ds2 , v108
	.byte	W06
	.byte		        Cn1 , v124
	.byte		N02   , Ds2 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N01   , Cn1 , v116
	.byte		N01   , Cn1 , v112
	.byte		N02   , En1 , v124
	.byte		N01   , Fs1 , v068
	.byte		N02   , Ds2 , v108
	.byte	W03
	.byte		        Cn1 , v124
	.byte	W06
	.byte		        En1 
	.byte	W03
@ 027   ----------------------------------------
mus_vs_gym_leader_metal_5_027:
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N01   , Fs1 , v076
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        Cn1 , v112
	.byte		N02   
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v068
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        En1 , v127
	.byte		N01   , Fs1 , v076
	.byte		N02   , Ds2 , v108
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N03   , Ds2 
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v068
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N01   , Fs1 , v076
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        Cn1 , v116
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v068
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        En1 , v127
	.byte		N01   , Fs1 , v076
	.byte		N02   , Ds2 , v108
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N03   , Ds2 
	.byte	W06
	.byte		N02   , Cn1 , v116
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v068
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
	.byte		        Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N01   , Fs1 , v076
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        Cn1 , v112
	.byte		N02   
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v068
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        En1 , v127
	.byte		N01   , Fs1 , v076
	.byte		N02   , Ds2 , v108
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N03   , Ds2 
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v068
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N01   , Fs1 , v076
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        Cn1 , v116
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v068
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        En1 , v127
	.byte		N01   , Fs1 , v076
	.byte		N02   , Ds2 , v108
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N01   , En1 , v112
	.byte		N03   , Ds2 , v124
	.byte	W06
	.byte		N02   , Cn1 , v116
	.byte		N02   , Cn1 , v112
	.byte		N01   , En1 , v120
	.byte		N01   , En1 , v124
	.byte		N01   , Fs1 , v068
	.byte		N02   , Ds2 , v108
	.byte	W06
	.byte		N01   , En1 , v127
	.byte	W06
@ 029   ----------------------------------------
	.byte		N02   , Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N01   , Fs1 , v076
	.byte		N04   , Cs2 , v127
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        Cn1 , v112
	.byte		N02   
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v068
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        En1 , v127
	.byte		N01   , Fs1 , v076
	.byte		N02   , Ds2 , v108
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N03   , Ds2 
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v068
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        Cn1 , v124
	.byte		N01   
	.byte		N03   , En1 
	.byte		N01   , Fs1 , v076
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        Cn1 , v116
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v068
	.byte		N02   , Ds2 , v108
	.byte	W12
	.byte		        En1 , v127
	.byte		N01   , Fs1 , v076
	.byte		N02   , Ds2 , v108
	.byte	W06
	.byte		N03   , Cn1 , v124
	.byte		N03   , Ds2 
	.byte	W06
	.byte		N02   , Cn1 , v116
	.byte		N02   , Cn1 , v112
	.byte		N03   , En1 , v124
	.byte		N01   , Fs1 , v068
	.byte		N02   , Ds2 , v108
	.byte	W12
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_027
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_5_B1
mus_vs_gym_leader_metal_5_B2:
@ 031   ----------------------------------------
	.byte		N02   , Cn1 , v124
	.byte		N01   , Fs1 , v076
	.byte		N02   , Ds2 , v108
	.byte	W24
	.byte		        En1 , v127
	.byte	W24
	.byte		        Cn1 , v124
	.byte	W24
	.byte		        En1 , v127
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
