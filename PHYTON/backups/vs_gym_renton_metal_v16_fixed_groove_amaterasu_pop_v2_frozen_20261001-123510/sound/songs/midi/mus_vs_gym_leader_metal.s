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
	.byte	TEMPO , 116*mus_vs_gym_leader_metal_tbs/2
	.byte		VOICE , 31
	.byte		VOL   , 112*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+14
	.byte		N06   , En3 , v108
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N12   , An2 
	.byte	W12
@ 001   ----------------------------------------
	.byte	TEMPO , 120*mus_vs_gym_leader_metal_tbs/2
	.byte		        An3 
	.byte	W24
	.byte		        En2 
	.byte	W12
	.byte		N04   , En2 , v112
	.byte	W12
	.byte		N12   , Bn2 , v108
	.byte	W12
	.byte		N04   , Bn2 , v112
	.byte	W12
	.byte		N12   , Fn2 , v108
	.byte	W12
	.byte		N04   , Fn2 , v112
	.byte	W12
@ 002   ----------------------------------------
	.byte		N12   , En3 , v108
	.byte	W12
	.byte		N04   , En3 , v112
	.byte	W12
	.byte		N12   , Bn3 , v108
	.byte	W12
	.byte		N04   , Bn2 , v112
	.byte	W12
	.byte		N12   , En3 , v108
	.byte	W12
	.byte		N04   , En3 , v112
	.byte	W12
	.byte		N12   , Fn3 , v108
	.byte	W12
	.byte		N04   , Fn3 , v112
	.byte	W12
@ 003   ----------------------------------------
	.byte		N12   , En3 , v108
	.byte	W12
	.byte		N04   , En3 , v112
	.byte	W12
	.byte		N12   , En2 , v108
	.byte	W12
	.byte		N04   , En2 , v112
	.byte	W12
	.byte		N12   , Bn2 , v108
	.byte	W12
	.byte		N04   , Bn2 , v112
	.byte	W12
	.byte		N12   , Fn2 , v108
	.byte	W12
	.byte		N04   , Fn2 , v112
	.byte	W12
@ 004   ----------------------------------------
	.byte		N12   , En3 , v108
	.byte	W12
	.byte		N04   , En3 , v112
	.byte	W12
	.byte		N12   , En2 , v108
	.byte	W12
	.byte		N04   , En2 , v112
	.byte	W12
	.byte		N12   , Fn3 , v108
	.byte	W12
	.byte		N04   , Fn3 , v112
	.byte	W12
	.byte		N12   , Gn2 , v108
	.byte	W12
	.byte		        Fn3 
	.byte	W12
mus_vs_gym_leader_metal_1_B1:
@ 005   ----------------------------------------
mus_vs_gym_leader_metal_1_005:
	.byte		N12   , En3 , v108
	.byte	W12
	.byte		N04   , En3 , v112
	.byte	W12
	.byte		N12   , Dn3 , v108
	.byte	W12
	.byte		N04   , Dn3 , v112
	.byte	W12
	.byte		N12   , Fn3 , v108
	.byte	W12
	.byte		N04   , Fn3 , v112
	.byte	W06
	.byte		N12   , Bn2 , v108
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
mus_vs_gym_leader_metal_1_006:
	.byte		N12   , Gn3 , v108
	.byte	W12
	.byte		N04   , Gn3 , v112
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N06   , Fn3 , v108
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N04   , En3 , v112
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
	.byte		N12   , An3 , v108
	.byte	W12
	.byte		N04   , An2 , v112
	.byte	W12
	.byte		N12   , Cn4 , v108
	.byte	W12
	.byte		N04   , Cn3 , v112
	.byte	W12
	.byte		N12   , Bn3 , v108
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 008   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		N04   , Gn3 , v112
	.byte	W06
	.byte		N12   , An2 , v108
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N04   , Gn3 , v112
	.byte	W12
	.byte		N12   , En3 , v108
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N04   , En3 , v112
	.byte	W06
@ 009   ----------------------------------------
	.byte		N12   , An3 , v108
	.byte	W12
	.byte		N04   , An2 , v112
	.byte	W12
	.byte		N12   , Gn3 , v108
	.byte	W12
	.byte		N04   , Gn3 , v112
	.byte	W12
	.byte		N12   , An3 , v108
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        En3 
	.byte	W12
	.byte		N04   , En3 , v112
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N12   , Cn3 , v108
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N04   , Bn2 , v112
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_006
@ 013   ----------------------------------------
	.byte		N12   , Dn2 , v108
	.byte	W12
	.byte		N04   , Dn2 , v104
	.byte	W12
	.byte		N12   , Cn2 , v108
	.byte	W12
	.byte		N04   , Cn2 , v104
	.byte	W12
	.byte		N12   , Bn1 , v108
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 014   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		N04   , Gn2 , v104
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N12   , En2 , v108
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N04   , Bn1 , v104
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N06   , Bn1 , v108
	.byte	W06
	.byte		N12   , En2 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		N04   , Dn3 , v104
	.byte	W12
	.byte		N12   , Cn4 , v108
	.byte	W12
	.byte		N04   , Cn3 , v104
	.byte	W12
	.byte		N12   , Dn3 , v108
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		N04   , Gn3 , v104
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N12   , En3 , v108
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N04   , Bn2 , v104
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N10   , Bn2 , v112
	.byte	W06
	.byte		N04   , Bn2 , v116
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , An2 , v112
	.byte	W06
	.byte		N04   , An2 , v116
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , Bn2 , v112
	.byte	W06
	.byte		N04   , Bn2 , v116
	.byte	W06
	.byte		N10   , Cn3 , v112
	.byte	W06
	.byte		N04   , Cn3 , v116
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , An2 , v112
	.byte	W06
	.byte		N04   , An2 , v116
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , Cn3 , v112
	.byte	W06
	.byte		N04   , Cn3 , v116
	.byte	W06
@ 018   ----------------------------------------
	.byte		N10   , Bn2 , v112
	.byte	W06
	.byte		N04   , Bn2 , v116
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
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W84
	.byte		N06   , En3 , v112
	.byte	W06
	.byte		        Dn3 
	.byte	W06
@ 021   ----------------------------------------
	.byte		N10   , Fn3 
	.byte	W06
	.byte		N04   , Fn3 , v116
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
	.byte		N10   , Gn3 , v112
	.byte	W06
	.byte		N04   , Gn3 , v116
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
@ 022   ----------------------------------------
	.byte		N10   , En3 , v112
	.byte	W06
	.byte		N04   , En3 , v116
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
@ 023   ----------------------------------------
	.byte	W12
	.byte		N10   , An2 , v112
	.byte	W06
	.byte		N04   , An2 , v116
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , Cn4 , v112
	.byte	W06
	.byte		N06   , Cn3 , v116
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   , Cn4 , v112
	.byte	W06
	.byte		N10   , Gn3 
	.byte	W06
	.byte		N04   , Gn3 , v116
	.byte	W06
	.byte		N10   , Gn3 , v112
	.byte	W06
	.byte		N04   , Gn3 , v116
	.byte	W06
	.byte		N06   , Bn3 , v112
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 024   ----------------------------------------
	.byte		N10   , An3 
	.byte	W06
	.byte		N04   , An3 , v116
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N06   , An2 , v112
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N10   , Bn2 
	.byte	W06
	.byte		N04   , Bn2 , v116
	.byte	W30
@ 025   ----------------------------------------
	.byte		N06   , Gn3 , v112
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   , Gn3 , v116
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   , Gn3 , v112
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   , Fn3 , v116
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   , Fn3 , v112
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 026   ----------------------------------------
	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   , En3 , v116
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   , En3 , v112
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 , v116
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N10   , Dn3 , v112
	.byte	W06
	.byte		N04   , Dn3 , v116
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 027   ----------------------------------------
	.byte		N10   , En2 , v112
	.byte	W06
	.byte		N04   , En2 , v116
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
	.byte		N10   , Dn2 , v112
	.byte	W06
	.byte		N04   , Dn2 , v116
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , Fn2 , v112
	.byte	W06
	.byte		N04   , Fn2 , v116
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
@ 028   ----------------------------------------
	.byte		N10   , Bn1 , v112
	.byte	W06
	.byte		N04   , Bn1 , v116
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
	.byte		N10   , En2 , v112
	.byte	W06
	.byte		N04   , En2 , v116
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
@ 029   ----------------------------------------
	.byte		N10   , Fn2 , v112
	.byte	W06
	.byte		N04   , Fn2 , v116
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
	.byte		N10   , Dn2 , v112
	.byte	W06
	.byte		N04   , Dn2 , v116
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , Fn2 , v112
	.byte	W06
	.byte		N04   , Fn2 , v116
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   , Gn2 , v112
	.byte	W06
@ 030   ----------------------------------------
	.byte		N10   , En2 
	.byte	W06
	.byte		N04   , En2 , v116
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
	.byte		N06   , En3 
	.byte	W06
	.byte		N10   , Gn2 , v112
	.byte	W06
	.byte		N04   , Gn2 , v116
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
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_1_B1
mus_vs_gym_leader_metal_1_B2:
@ 031   ----------------------------------------
	.byte		N01   , En2 , v116
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_vs_gym_leader_metal_2:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 108*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v-26
	.byte		N08   , En2 , v096
	.byte		N08   , Bn2 , v088
	.byte	W48
	.byte		        Cn2 , v096
	.byte		N08   , Gn2 , v088
	.byte	W48
@ 001   ----------------------------------------
mus_vs_gym_leader_metal_2_001:
	.byte		N08   , En1 , v104
	.byte		N08   , Bn1 , v096
	.byte	W12
	.byte		N06   , An1 , v092
	.byte	W12
	.byte		N08   , An1 , v096
	.byte	W12
	.byte		N06   , Gn1 , v092
	.byte	W12
	.byte		N08   , En1 , v104
	.byte		N08   , Bn1 , v096
	.byte	W12
	.byte		N06   , An1 , v092
	.byte	W12
	.byte		N08   , An1 , v096
	.byte	W12
	.byte		N06   , Gn1 , v092
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_001
mus_vs_gym_leader_metal_2_B1:
@ 005   ----------------------------------------
mus_vs_gym_leader_metal_2_005:
	.byte		N08   , En1 , v104
	.byte		N08   , Bn1 , v096
	.byte	W12
	.byte		N06   , En1 , v092
	.byte	W12
	.byte		N08   , En1 , v096
	.byte	W12
	.byte		N06   , En1 , v092
	.byte	W12
	.byte		N08   , En1 , v104
	.byte		N08   , Bn1 , v096
	.byte	W12
	.byte		N06   , En1 , v092
	.byte	W12
	.byte		N08   , En1 , v096
	.byte	W12
	.byte		N06   , En1 , v092
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte		N08   , En1 , v104
	.byte		N08   , Bn1 , v096
	.byte	W12
	.byte		N06   , Dn2 , v092
	.byte	W12
	.byte		N08   , Cn2 , v096
	.byte	W12
	.byte		N06   , Bn1 , v092
	.byte	W12
	.byte		N08   , En1 , v104
	.byte		N08   , Bn1 , v096
	.byte	W12
	.byte		N06   , En1 , v092
	.byte	W12
	.byte		N08   , Bn1 , v096
	.byte	W12
	.byte		N06   , Fn1 , v092
	.byte	W12
@ 007   ----------------------------------------
mus_vs_gym_leader_metal_2_007:
	.byte		N08   , Dn2 , v104
	.byte		N08   , An2 , v096
	.byte	W12
	.byte		N06   , Dn2 , v092
	.byte	W12
	.byte		N08   , Dn2 , v096
	.byte	W12
	.byte		N06   , Dn2 , v092
	.byte	W12
	.byte		N08   , Dn2 , v104
	.byte		N08   , An2 , v096
	.byte	W12
	.byte		N06   , Dn2 , v092
	.byte	W12
	.byte		N08   , Dn2 , v096
	.byte	W12
	.byte		N06   , Dn2 , v092
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte		N08   , En1 , v104
	.byte		N08   , Bn1 , v096
	.byte	W12
	.byte		N06   , En1 , v092
	.byte	W12
	.byte		N08   , En1 , v096
	.byte	W12
	.byte		N06   , En1 , v092
	.byte	W12
	.byte		N08   , En1 , v104
	.byte		N08   , Bn1 , v096
	.byte	W12
	.byte		N06   , En1 , v092
	.byte	W12
	.byte		N08   , En2 , v096
	.byte	W12
	.byte		N06   , Gn1 , v092
	.byte	W12
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_007
@ 010   ----------------------------------------
mus_vs_gym_leader_metal_2_010:
	.byte		N08   , En1 , v104
	.byte		N08   , Bn1 , v096
	.byte	W12
	.byte		N06   , En1 , v092
	.byte	W12
	.byte		N08   , En1 , v096
	.byte	W12
	.byte		N06   , En1 , v092
	.byte	W12
	.byte		N08   , En1 , v104
	.byte		N08   , Bn1 , v096
	.byte	W12
	.byte		N06   , En1 , v092
	.byte	W12
	.byte		N08   , En1 , v096
	.byte	W12
	.byte		N06   , En2 , v092
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_005
@ 012   ----------------------------------------
	.byte		N08   , En1 , v104
	.byte		N08   , Bn1 , v096
	.byte	W12
	.byte		N06   , En1 , v092
	.byte	W12
	.byte		N08   , En1 , v096
	.byte	W12
	.byte		N06   , En1 , v092
	.byte	W12
	.byte		N08   , En1 , v104
	.byte		N08   , Bn1 , v096
	.byte	W12
	.byte		N06   , Bn1 , v092
	.byte	W12
	.byte		N08   , En2 , v096
	.byte	W12
	.byte		N06   , Fn1 , v092
	.byte	W12
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_007
@ 014   ----------------------------------------
mus_vs_gym_leader_metal_2_014:
	.byte		N08   , En1 , v104
	.byte		N08   , Bn1 , v096
	.byte	W12
	.byte		N06   , En1 , v092
	.byte	W12
	.byte		N08   , En1 , v096
	.byte	W12
	.byte		N06   , En1 , v092
	.byte	W12
	.byte		N08   , En1 , v104
	.byte		N08   , Bn1 , v096
	.byte	W12
	.byte		N06   , En1 , v092
	.byte	W12
	.byte		N08   , En1 , v096
	.byte	W12
	.byte		N06   , Gn1 , v092
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_014
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_005
@ 019   ----------------------------------------
mus_vs_gym_leader_metal_2_019:
	.byte		N08   , Fn1 , v104
	.byte		N08   , Cn2 , v096
	.byte	W12
	.byte		N06   , Fn1 , v092
	.byte	W12
	.byte		N08   , Fn1 , v096
	.byte	W12
	.byte		N06   , Fn1 , v092
	.byte	W12
	.byte		N08   , Gn1 , v104
	.byte		N08   , Dn2 , v096
	.byte	W12
	.byte		N06   , Gn1 , v092
	.byte	W12
	.byte		N08   , Gn1 , v096
	.byte	W12
	.byte		N06   , Gn1 , v092
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_005
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_005
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_007
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_007
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_007
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_005
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_005
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_007
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_010
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_2_B1
mus_vs_gym_leader_metal_2_B2:
@ 031   ----------------------------------------
	.byte		N01   , Bn1 , v104
	.byte		N01   , Fs2 , v096
	.byte	FINE

@**************** Track 3 (Midi-Chn.5) ****************@

mus_vs_gym_leader_metal_3:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 102*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+28
	.byte	W96
@ 001   ----------------------------------------
	.byte		N12   , Fn2 , v092
	.byte	W24
	.byte		        Cn2 
	.byte	W12
	.byte		N04   , Cn2 , v096
	.byte	W12
	.byte		N12   , Gn2 , v092
	.byte	W12
	.byte		N04   , Gn2 , v096
	.byte	W12
	.byte		N12   , Dn2 , v092
	.byte	W12
	.byte		N04   , Dn2 , v096
	.byte	W12
@ 002   ----------------------------------------
	.byte		N12   , Cn3 , v092
	.byte	W12
	.byte		N04   , Cn3 , v096
	.byte	W12
	.byte		N12   , Gn2 , v092
	.byte	W12
	.byte		N04   , Gn2 , v096
	.byte	W12
	.byte		N12   , Cn3 , v092
	.byte	W12
	.byte		N04   , Cn3 , v096
	.byte	W12
	.byte		N12   , Dn3 , v092
	.byte	W12
	.byte		N04   , Dn3 , v096
	.byte	W12
@ 003   ----------------------------------------
	.byte		N12   , Cn3 , v092
	.byte	W12
	.byte		N04   , Cn3 , v096
	.byte	W12
	.byte		N12   , Cn2 , v092
	.byte	W12
	.byte		N04   , Cn2 , v096
	.byte	W12
	.byte		N12   , Gn2 , v092
	.byte	W12
	.byte		N04   , Gn2 , v096
	.byte	W12
	.byte		N12   , Dn2 , v092
	.byte	W12
	.byte		N04   , Dn2 , v096
	.byte	W12
@ 004   ----------------------------------------
	.byte		N12   , Cn3 , v092
	.byte	W12
	.byte		N04   , Cn3 , v096
	.byte	W12
	.byte		N12   , Cn2 , v092
	.byte	W12
	.byte		N04   , Cn2 , v096
	.byte	W12
	.byte		N12   , Dn3 , v092
	.byte	W12
	.byte		N04   , Dn3 , v096
	.byte	W12
	.byte		N12   , En2 , v092
	.byte	W12
	.byte		        Dn3 
	.byte	W12
mus_vs_gym_leader_metal_3_B1:
@ 005   ----------------------------------------
mus_vs_gym_leader_metal_3_005:
	.byte		N12   , Cn3 , v092
	.byte	W12
	.byte		N04   , Cn3 , v096
	.byte	W12
	.byte		N12   , Bn2 , v092
	.byte	W12
	.byte		N04   , Bn2 , v096
	.byte	W12
	.byte		N12   , Dn3 , v092
	.byte	W12
	.byte		N04   , Dn3 , v096
	.byte	W06
	.byte		N12   , Gn2 , v092
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
mus_vs_gym_leader_metal_3_006:
	.byte		N12   , En3 , v092
	.byte	W12
	.byte		N04   , En3 , v096
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N06   , Dn3 , v092
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N04   , Cn3 , v096
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
	.byte		N12   , Fn2 , v092
	.byte	W12
	.byte		N04   , Fn2 , v096
	.byte	W12
	.byte		N12   , An2 , v092
	.byte	W12
	.byte		N04   , An2 , v096
	.byte	W12
	.byte		N12   , Gn2 , v092
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 008   ----------------------------------------
	.byte		        En3 
	.byte	W12
	.byte		N04   , En3 , v096
	.byte	W06
	.byte		N12   , Fn2 , v092
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N04   , En3 , v096
	.byte	W06
	.byte		N18   , En1 , v088
	.byte		N18   , Bn1 , v080
	.byte	W06
	.byte		N12   , Cn3 , v092
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N04   , Cn3 , v096
	.byte	W06
@ 009   ----------------------------------------
	.byte		N12   , Fn2 , v092
	.byte	W12
	.byte		N04   , Fn2 , v096
	.byte	W12
	.byte		N12   , En3 , v092
	.byte	W12
	.byte		N04   , En3 , v096
	.byte	W12
	.byte		N12   , Fn2 , v092
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        Cn3 
	.byte	W12
	.byte		N04   , Cn3 , v096
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N12   , An2 , v092
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N04   , Gn2 , v096
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_006
@ 013   ----------------------------------------
	.byte		N12   , Bn1 , v092
	.byte	W12
	.byte		N04   , Bn1 , v088
	.byte	W12
	.byte		N12   , An1 , v092
	.byte	W12
	.byte		N04   , An1 , v088
	.byte	W12
	.byte		N12   , Gn1 , v092
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 014   ----------------------------------------
	.byte		        En2 
	.byte	W12
	.byte		N04   , En2 , v088
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N12   , Cn2 , v092
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N04   , Gn1 , v088
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N06   , Gn1 , v092
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		N04   , Bn2 , v088
	.byte	W12
	.byte		N12   , An2 , v092
	.byte	W12
	.byte		N04   , An2 , v088
	.byte	W12
	.byte		N12   , Bn2 , v092
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        En3 
	.byte	W12
	.byte		N04   , En3 , v088
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N12   , Cn3 , v092
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N04   , Gn2 , v088
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
@ 017   ----------------------------------------
	.byte		N10   , Gn2 , v096
	.byte	W06
	.byte		N04   , Gn2 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , Fn2 , v096
	.byte	W06
	.byte		N04   , Fn2 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , Gn2 , v096
	.byte	W06
	.byte		N04   , Gn2 , v100
	.byte	W06
	.byte		N10   , An2 , v096
	.byte	W06
	.byte		N04   , An2 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , Fn2 , v096
	.byte	W06
	.byte		N04   , Fn2 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , An2 , v096
	.byte	W06
	.byte		N04   , An2 , v100
	.byte	W06
@ 018   ----------------------------------------
	.byte		N10   , Gn2 , v096
	.byte	W06
	.byte		N04   , Gn2 , v100
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
	.byte		N18   , En1 , v092
	.byte		N18   , Bn1 , v084
	.byte	W24
	.byte		        En1 , v092
	.byte		N18   , Bn1 , v084
	.byte	W24
@ 019   ----------------------------------------
	.byte		        Fn1 , v092
	.byte		N18   , Cn2 , v084
	.byte	W24
	.byte		        Fn1 , v092
	.byte		N18   , Cn2 , v084
	.byte	W24
	.byte		        Gn1 , v092
	.byte		N18   , Dn2 , v084
	.byte	W24
	.byte		        Gn1 , v092
	.byte		N18   , Dn2 , v084
	.byte	W24
@ 020   ----------------------------------------
	.byte		        En1 , v092
	.byte		N18   , Bn1 , v084
	.byte	W24
	.byte		        En1 , v092
	.byte		N18   , Bn1 , v084
	.byte	W24
	.byte		        En1 , v092
	.byte		N18   , Bn1 , v084
	.byte	W24
	.byte		        En1 , v092
	.byte		N18   , Bn1 , v084
	.byte	W12
	.byte		N06   , Cn3 , v096
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 021   ----------------------------------------
	.byte		N10   , Dn3 
	.byte	W06
	.byte		N04   , Dn3 , v100
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
	.byte		N10   , En3 , v096
	.byte	W06
	.byte		N04   , En3 , v100
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
@ 022   ----------------------------------------
	.byte		N10   , Cn3 , v096
	.byte	W06
	.byte		N04   , Cn3 , v100
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
	.byte		N18   , En1 , v092
	.byte		N18   , Bn1 , v084
	.byte	W24
	.byte		        En1 , v092
	.byte		N18   , Bn1 , v084
	.byte	W24
@ 023   ----------------------------------------
	.byte		        Fn1 , v092
	.byte		N18   , Cn2 , v084
	.byte	W12
	.byte		N10   , Fn2 , v096
	.byte	W06
	.byte		N04   , Fn2 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , An2 , v096
	.byte	W06
	.byte		N04   , An2 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   , An2 , v096
	.byte	W06
	.byte		N10   , En3 
	.byte	W06
	.byte		N04   , En3 , v100
	.byte	W06
	.byte		N10   , En3 , v096
	.byte	W06
	.byte		N04   , En3 , v100
	.byte	W06
	.byte		N06   , Gn2 , v096
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 024   ----------------------------------------
	.byte		N10   , Fn2 
	.byte	W06
	.byte		N04   , Fn2 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   , Fn2 , v096
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N10   , Gn2 
	.byte	W06
	.byte		N04   , Gn2 , v100
	.byte	W06
	.byte		N18   , Dn2 , v092
	.byte		N18   , An2 , v084
	.byte	W24
@ 025   ----------------------------------------
	.byte		N06   , En3 , v096
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   , En3 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   , En3 , v096
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   , Dn3 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 026   ----------------------------------------
	.byte		        Cn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   , Cn3 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   , Cn3 , v096
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N10   , Bn2 , v096
	.byte	W06
	.byte		N04   , Bn2 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 027   ----------------------------------------
	.byte		N10   , Cn2 , v096
	.byte	W06
	.byte		N04   , Cn2 , v100
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
	.byte		N10   , Bn1 , v096
	.byte	W06
	.byte		N04   , Bn1 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , Dn2 , v096
	.byte	W06
	.byte		N04   , Dn2 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
@ 028   ----------------------------------------
	.byte		N10   , Gn1 , v096
	.byte	W06
	.byte		N04   , Gn1 , v100
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
	.byte		N10   , Cn2 , v096
	.byte	W06
	.byte		N04   , Cn2 , v100
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
@ 029   ----------------------------------------
	.byte		N10   , Dn2 , v096
	.byte	W06
	.byte		N04   , Dn2 , v100
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
	.byte		N10   , Bn1 , v096
	.byte	W06
	.byte		N04   , Bn1 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   , Dn2 , v096
	.byte	W06
	.byte		N04   , Dn2 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   , En2 , v096
	.byte	W06
@ 030   ----------------------------------------
	.byte		N10   , Cn2 
	.byte	W06
	.byte		N04   , Cn2 , v100
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
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N10   , En2 , v096
	.byte	W06
	.byte		N04   , En2 , v100
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
	.byte		N06   , En3 
	.byte	W06
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_3_B1
mus_vs_gym_leader_metal_3_B2:
@ 031   ----------------------------------------
	.byte		N01   , Cn2 , v100
	.byte	FINE

@**************** Track 4 (Midi-Chn.3) ****************@

mus_vs_gym_leader_metal_4:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 124*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N23   , En0 , v124
	.byte		N11   , En1 , v120
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N24   , Cn1 , v124
	.byte	W12
	.byte		N08   , Dn1 , v120
	.byte	W06
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N24   , Bn0 , v124
	.byte	W06
	.byte		N08   , An0 , v120
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
@ 001   ----------------------------------------
mus_vs_gym_leader_metal_4_001:
	.byte		N08   , En0 , v120
	.byte	W12
	.byte		        An0 , v112
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        En0 , v120
	.byte	W12
	.byte		        An0 , v112
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_001
mus_vs_gym_leader_metal_4_B1:
@ 005   ----------------------------------------
mus_vs_gym_leader_metal_4_005:
	.byte		N08   , En0 , v120
	.byte	W12
	.byte		        En0 , v112
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        En0 , v120
	.byte	W12
	.byte		        En0 , v112
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte		        En0 , v120
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        En0 , v120
	.byte	W12
	.byte		        En0 , v112
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Fn0 
	.byte	W12
@ 007   ----------------------------------------
mus_vs_gym_leader_metal_4_007:
	.byte		N08   , Dn1 , v120
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        Dn1 , v120
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte		        En0 , v120
	.byte	W12
	.byte		        En0 , v112
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        En0 , v120
	.byte	W12
	.byte		        En0 , v112
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_007
@ 010   ----------------------------------------
mus_vs_gym_leader_metal_4_010:
	.byte		N08   , En0 , v120
	.byte	W12
	.byte		        En0 , v112
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        En0 , v120
	.byte	W12
	.byte		        En0 , v112
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_005
@ 012   ----------------------------------------
	.byte		N08   , En0 , v120
	.byte	W12
	.byte		        En0 , v112
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        En0 , v120
	.byte	W12
	.byte		        Bn0 , v112
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fn0 
	.byte	W12
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_007
@ 014   ----------------------------------------
mus_vs_gym_leader_metal_4_014:
	.byte		N08   , En0 , v120
	.byte	W12
	.byte		        En0 , v112
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        En0 , v120
	.byte	W12
	.byte		        En0 , v112
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_014
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_005
@ 019   ----------------------------------------
mus_vs_gym_leader_metal_4_019:
	.byte		N08   , Fn0 , v120
	.byte	W12
	.byte		        Fn0 , v112
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        Gn0 , v120
	.byte	W12
	.byte		        Gn0 , v112
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_005
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_005
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_007
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_007
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_007
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_005
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_005
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_007
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_010
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_4_B1
mus_vs_gym_leader_metal_4_B2:
@ 031   ----------------------------------------
	.byte		N01   , Bn0 , v120
	.byte	FINE

@**************** Track 5 (Midi-Chn.4) ****************@

mus_vs_gym_leader_metal_5:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 62*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+4
	.byte		N36   , En2 , v072
	.byte		N36   , En3 , v068
	.byte	W48
	.byte		        En2 , v072
	.byte		N36   , En3 , v068
	.byte	W48
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
mus_vs_gym_leader_metal_5_B1:
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
mus_vs_gym_leader_metal_5_008:
	.byte		N48   , En2 , v064
	.byte		N48   , En3 , v060
	.byte	W96
	.byte	PEND
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_008
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
	.byte		N48   , Dn2 , v064
	.byte		N48   , Dn3 , v060
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_008
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_5_B1
mus_vs_gym_leader_metal_5_B2:
@ 031   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.10) ****************@

mus_vs_gym_leader_metal_6:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Cn1 , v124
	.byte		N01   , Fs1 , v088
	.byte		N03   , Cs2 , v127
	.byte		N03   , Cs2 , v124
	.byte	W12
	.byte		N01   , Fs1 , v080
	.byte	W12
	.byte		        En1 , v127
	.byte		N02   , Fs1 , v072
	.byte	W12
	.byte		N01   , Fs1 , v080
	.byte	W12
	.byte		N02   , Cn1 , v120
	.byte		N01   , Fs1 , v088
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
	.byte		N02   , En1 , v127
	.byte		N01   , Fs1 , v088
	.byte	W12
	.byte		N02   , Fs1 , v076
	.byte	W12
@ 001   ----------------------------------------
mus_vs_gym_leader_metal_6_001:
	.byte		N01   , Cn1 , v124
	.byte		N01   , Fs1 , v088
	.byte		N03   , Cs2 , v120
	.byte	W12
	.byte		N01   , Cn1 , v112
	.byte		N01   , Fs1 , v080
	.byte	W12
	.byte		        En1 , v124
	.byte		N01   , Fs1 , v088
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
	.byte		        Cn1 , v120
	.byte		N01   , Fs1 , v088
	.byte	W12
	.byte		        Cn1 , v112
	.byte		N01   , Fs1 , v080
	.byte	W12
	.byte		        En1 , v127
	.byte		N01   , Fs1 , v088
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_vs_gym_leader_metal_6_002:
	.byte		N01   , Cn1 , v124
	.byte		N01   , Fs1 , v088
	.byte	W12
	.byte		        Cn1 , v112
	.byte		N01   , Fs1 , v080
	.byte	W12
	.byte		        En1 , v124
	.byte		N01   , Fs1 , v088
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
	.byte		        Cn1 , v120
	.byte		N01   , Fs1 , v088
	.byte	W12
	.byte		        Cn1 , v112
	.byte		N01   , Fs1 , v080
	.byte	W12
	.byte		        En1 , v127
	.byte		N01   , Fs1 , v088
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Fs1 , v080
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_vs_gym_leader_metal_6_003:
	.byte		N01   , Cn1 , v124
	.byte		N01   , Fs1 , v088
	.byte	W12
	.byte		        Cn1 , v112
	.byte		N01   , Fs1 , v080
	.byte	W12
	.byte		        En1 , v124
	.byte		N01   , Fs1 , v088
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
	.byte		        Cn1 , v120
	.byte		N01   , Fs1 , v088
	.byte	W12
	.byte		        Cn1 , v112
	.byte		N01   , Fs1 , v080
	.byte	W12
	.byte		        En1 , v127
	.byte		N01   , Fs1 , v088
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_vs_gym_leader_metal_6_004:
	.byte		N01   , Cn1 , v124
	.byte		N01   , Fs1 , v088
	.byte	W12
	.byte		        Cn1 , v112
	.byte		N01   , Fs1 , v080
	.byte	W12
	.byte		        En1 , v124
	.byte		N01   , Fs1 , v088
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
	.byte		        Cn1 , v120
	.byte		N01   , Fs1 , v088
	.byte	W12
	.byte		        Cn1 , v112
	.byte		N01   , Fs1 , v080
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , En1 , v127
	.byte		N01   , Fs1 , v088
	.byte	W03
	.byte		        En1 
	.byte	W03
	.byte		        Cn1 , v112
	.byte	W03
	.byte		        En1 , v096
	.byte	W03
	.byte		        Cn1 , v108
	.byte		N01   , Fs1 , v080
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte		        Cn1 , v120
	.byte		N02   , Cs2 
	.byte	W03
	.byte		N01   , En1 , v108
	.byte	W03
	.byte	PEND
mus_vs_gym_leader_metal_6_B1:
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_004
@ 021   ----------------------------------------
mus_vs_gym_leader_metal_6_021:
	.byte		N01   , Cn1 , v124
	.byte		N03   , Cs2 , v120
	.byte		N01   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v112
	.byte		N01   , Ds2 , v080
	.byte	W12
	.byte		        En1 , v124
	.byte		N01   , Ds2 , v088
	.byte	W12
	.byte		        Ds2 , v080
	.byte	W12
	.byte		        Cn1 , v120
	.byte		N01   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v112
	.byte		N01   , Ds2 , v080
	.byte	W12
	.byte		        En1 , v127
	.byte		N01   , Ds2 , v088
	.byte	W12
	.byte		        Ds2 , v080
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_vs_gym_leader_metal_6_022:
	.byte		N01   , Cn1 , v124
	.byte		N01   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v112
	.byte		N01   , Ds2 , v080
	.byte	W12
	.byte		        En1 , v124
	.byte		N01   , Ds2 , v088
	.byte	W12
	.byte		        Ds2 , v080
	.byte	W12
	.byte		        Cn1 , v120
	.byte		N01   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v112
	.byte		N01   , Ds2 , v080
	.byte	W12
	.byte		        En1 , v127
	.byte		N01   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Ds2 , v080
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
mus_vs_gym_leader_metal_6_023:
	.byte		N01   , Cn1 , v124
	.byte		N01   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v112
	.byte		N01   , Ds2 , v080
	.byte	W12
	.byte		        En1 , v124
	.byte		N01   , Ds2 , v088
	.byte	W12
	.byte		        Ds2 , v080
	.byte	W12
	.byte		        Cn1 , v120
	.byte		N01   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v112
	.byte		N01   , Ds2 , v080
	.byte	W12
	.byte		        En1 , v127
	.byte		N01   , Ds2 , v088
	.byte	W12
	.byte		        Ds2 , v080
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
mus_vs_gym_leader_metal_6_024:
	.byte		N01   , Cn1 , v124
	.byte		N01   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v112
	.byte		N01   , Ds2 , v080
	.byte	W12
	.byte		        En1 , v124
	.byte		N01   , Ds2 , v088
	.byte	W12
	.byte		        Ds2 , v080
	.byte	W12
	.byte		        Cn1 , v120
	.byte		N01   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v112
	.byte		N01   , Ds2 , v080
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , En1 , v127
	.byte		N01   , Ds2 , v088
	.byte	W03
	.byte		        En1 
	.byte	W03
	.byte		        Cn1 , v112
	.byte	W03
	.byte		        En1 , v096
	.byte	W03
	.byte		        Cn1 , v108
	.byte		N01   , Ds2 , v080
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte		        Cn1 , v120
	.byte		N02   , Cs2 
	.byte	W03
	.byte		N01   , En1 , v108
	.byte	W03
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_022
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_023
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_021
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_6_022
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_6_B1
mus_vs_gym_leader_metal_6_B2:
@ 031   ----------------------------------------
	.byte		N01   , Cn1 , v124
	.byte		N01   , Ds2 , v088
	.byte	FINE

@******************************************************@
	.align	2

mus_vs_gym_leader_metal:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_vs_gym_leader_metal_pri	@ Priority
	.byte	mus_vs_gym_leader_metal_rev	@ Reverb.

	.word	mus_vs_gym_leader_metal_grp

	.word	mus_vs_gym_leader_metal_1
	.word	mus_vs_gym_leader_metal_2
	.word	mus_vs_gym_leader_metal_3
	.word	mus_vs_gym_leader_metal_4
	.word	mus_vs_gym_leader_metal_5
	.word	mus_vs_gym_leader_metal_6

	.end
