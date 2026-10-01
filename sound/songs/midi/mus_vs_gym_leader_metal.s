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

@**************** Track 1 (Midi-Chn.2) ****************@

mus_vs_gym_leader_metal_1:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 116*mus_vs_gym_leader_metal_tbs/2
	.byte		VOICE , 29
	.byte		VOL   , 100*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v-20
	.byte		N08   , En2 , v096
	.byte		N08   , Bn2 , v088
	.byte	W48
	.byte		        Cn2 , v096
	.byte		N08   , Gn2 , v088
	.byte	W48
@ 001   ----------------------------------------
	.byte	TEMPO , 120*mus_vs_gym_leader_metal_tbs/2
	.byte	W96
@ 002   ----------------------------------------
	.byte		N05   , Cn2 , v096
	.byte		N05   , Gn2 , v092
	.byte	W06
	.byte		        Cn2 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte		N05   , Dn3 , v092
	.byte	W06
	.byte		        Gn2 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn3 
	.byte		N05   , Gn3 , v092
	.byte	W06
	.byte		        Cn3 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs2 
	.byte		N05   , Gs2 , v092
	.byte	W06
	.byte		        Cs2 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
mus_vs_gym_leader_metal_1_B1:
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte		N05   , Cn2 , v092
	.byte		N05   , Gn2 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        An1 , v092
	.byte		N05   , En2 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn2 , v092
	.byte		N05   , Gn2 , v088
	.byte	W06
	.byte		        Gn1 , v096
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn1 , v092
	.byte		N05   , Dn2 , v088
	.byte	W06
	.byte		        Cn2 , v096
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
mus_vs_gym_leader_metal_1_010:
	.byte		N05   , Cn2 , v092
	.byte		N05   , Gn2 , v088
	.byte	W06
	.byte		        Gn1 , v096
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 , v092
	.byte		N05   , Gn2 , v088
	.byte	W06
	.byte		        Gn1 , v096
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 , v092
	.byte		N05   , Gn2 , v088
	.byte	W06
	.byte		        Gn1 , v096
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 , v092
	.byte		N05   , Gn2 , v088
	.byte	W06
	.byte		        Gn1 , v096
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte		        Cn2 , v092
	.byte		N05   , Gn2 , v088
	.byte	W06
	.byte		        Gn1 , v096
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 , v092
	.byte		N05   , Gn2 , v088
	.byte	W06
	.byte		        Gn1 , v096
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 , v092
	.byte		N05   , Gn2 , v088
	.byte	W06
	.byte		        Gn1 , v096
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 , v092
	.byte		N05   , Gn2 , v088
	.byte	W06
	.byte		        Gn1 , v096
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_010
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_010
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte		N05   , As1 , v092
	.byte		N05   , Fn2 , v088
	.byte	W06
	.byte		        Fn1 , v096
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As1 , v092
	.byte		N05   , Fn2 , v088
	.byte	W06
	.byte		        Fn1 , v096
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As1 , v092
	.byte		N05   , Fn2 , v088
	.byte	W06
	.byte		        Fn1 , v096
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As1 , v092
	.byte		N05   , Fn2 , v088
	.byte	W06
	.byte		        Fn1 , v096
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_010
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_1_B1
mus_vs_gym_leader_metal_1_B2:
@ 031   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.1) ****************@

mus_vs_gym_leader_metal_2:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 31
	.byte		VOL   , 106*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+18
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
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
mus_vs_gym_leader_metal_2_B1:
@ 005   ----------------------------------------
	.byte		N23   , Cn3 , v104
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte		N17   , Dn3 
	.byte	W18
	.byte		N06   , Gn2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
@ 006   ----------------------------------------
	.byte		N32   , En3 
	.byte	W36
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W12
	.byte		N28   , Cn3 
	.byte	W30
@ 007   ----------------------------------------
	.byte		N22   , Fn3 
	.byte		N22   , As3 
	.byte	W24
	.byte		        En3 
	.byte		N22   , An3 
	.byte	W24
	.byte		N11   , Dn3 
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        En3 
	.byte		N11   , An3 
	.byte	W12
	.byte		        Dn3 
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte		N11   , Fn3 
	.byte	W12
@ 008   ----------------------------------------
	.byte		N17   , Cn3 
	.byte		N17   , En3 
	.byte	W18
	.byte		N11   , Dn3 
	.byte		N11   , Fn3 
	.byte	W12
	.byte		N22   , Cn3 
	.byte		N22   , En3 
	.byte	W24
	.byte		N11   , En2 
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N17   , En2 
	.byte		N17   , Cn3 
	.byte	W18
@ 009   ----------------------------------------
mus_vs_gym_leader_metal_2_009:
	.byte		N22   , Fn3 , v104
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte		N32   , Cn4 
	.byte	W36
	.byte		N11   , An3 
	.byte	W12
	.byte		N44   , Gn3 
	.byte	W48
@ 011   ----------------------------------------
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 012   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 013   ----------------------------------------
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 014   ----------------------------------------
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N11   , Dn2 
	.byte	W12
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_009
@ 016   ----------------------------------------
	.byte		N08   , Gn2 , v104
	.byte	W18
	.byte		N06   
	.byte	W42
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W12
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N17   , Cn2 
	.byte		N17   , Gn2 
	.byte	W18
	.byte		        Fn2 
	.byte		N17   , As2 
	.byte	W18
	.byte		N11   , Cn2 
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N17   , Dn2 
	.byte		N17   , An2 
	.byte	W18
	.byte		        Fn2 
	.byte		N17   , As2 
	.byte	W18
	.byte		N11   , Dn2 
	.byte		N11   , An2 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N44   , Cn2 
	.byte		N44   , Gn2 
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W84
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 021   ----------------------------------------
	.byte		N44   , Cs3 
	.byte	W48
	.byte		        Ds3 
	.byte	W48
@ 022   ----------------------------------------
	.byte	W48
	.byte		N32   , Cn3 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 023   ----------------------------------------
	.byte	W12
	.byte		N17   , Cs2 
	.byte		N17   , Fn2 
	.byte	W18
	.byte		        Cs3 
	.byte		N17   , Gs3 
	.byte	W18
	.byte		N06   , Cs3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N11   , Ds3 
	.byte		N11   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N11   , As3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N06   
	.byte		N06   , As3 
	.byte	W06
@ 024   ----------------------------------------
	.byte		N17   , Fn3 
	.byte		N17   , As3 
	.byte	W18
	.byte		N06   , Fn3 
	.byte		N06   , As3 
	.byte	W06
	.byte		        En3 
	.byte	W01
	.byte		        Ds3 
	.byte	W02
	.byte		        Dn3 
	.byte	W01
	.byte		        Cs3 
	.byte	W02
	.byte		        Cn4 
	.byte	W01
	.byte		        Bn3 
	.byte	W02
	.byte		        As3 
	.byte	W02
	.byte		        An3 
	.byte	W01
	.byte		        Gs3 
	.byte	W02
	.byte		        Gn3 
	.byte	W01
	.byte		        Fs3 
	.byte	W02
	.byte		        Fn3 
	.byte	W02
	.byte		        En3 
	.byte	W01
	.byte		        Ds3 
	.byte	W02
	.byte		        Dn3 
	.byte	W01
	.byte		        Cs3 
	.byte	W02
	.byte		        Cn3 
	.byte	W02
	.byte		        Bn2 
	.byte	W01
	.byte		        As2 
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte		        Gs2 
	.byte	W02
	.byte		        Gn2 
	.byte	W03
	.byte		N11   , Fs2 
	.byte	W36
@ 025   ----------------------------------------
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 026   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 027   ----------------------------------------
	.byte		N44   , Cn2 
	.byte	W48
	.byte		N23   , As2 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
@ 028   ----------------------------------------
	.byte		N44   , Gn2 
	.byte	W48
	.byte		        Cn2 
	.byte	W48
@ 029   ----------------------------------------
	.byte		        Cs2 
	.byte	W48
	.byte		N23   , As2 
	.byte	W24
	.byte		N17   , Cs2 
	.byte	W18
	.byte		N06   , En2 
	.byte	W06
@ 030   ----------------------------------------
	.byte		N44   , Cn2 
	.byte	W48
	.byte		        En2 
	.byte	W48
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
	.byte		VOL   , 116*mus_vs_gym_leader_metal_mvl/mxv
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
mus_vs_gym_leader_metal_3_001:
	.byte		N05   , An0 , v108
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_001
@ 004   ----------------------------------------
	.byte		N05   , An0 , v104
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
mus_vs_gym_leader_metal_3_B1:
@ 005   ----------------------------------------
	.byte		N05   , Cn1 , v108
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
@ 006   ----------------------------------------
	.byte		        Cn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
@ 007   ----------------------------------------
mus_vs_gym_leader_metal_3_007:
	.byte		N05   , As0 , v108
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
mus_vs_gym_leader_metal_3_008:
	.byte		N05   , Cn1 , v104
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_vs_gym_leader_metal_3_009:
	.byte		N05   , As0 , v108
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
mus_vs_gym_leader_metal_3_010:
	.byte		N05   , Cn1 , v108
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_010
@ 012   ----------------------------------------
	.byte		N05   , Cn1 , v104
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_007
@ 014   ----------------------------------------
	.byte		N05   , Cn1 , v108
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        En0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_009
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_010
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_010
@ 019   ----------------------------------------
mus_vs_gym_leader_metal_3_019:
	.byte		N05   , Cs1 , v108
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
mus_vs_gym_leader_metal_3_020:
	.byte		N05   , Cn1 , v104
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_010
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_019
@ 024   ----------------------------------------
	.byte		N05   , As0 , v104
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_009
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_010
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_020
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
	.byte		N01   , Gn0 , v108
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_vs_gym_leader_metal_4:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 68*mus_vs_gym_leader_metal_mvl/mxv
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
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
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
	.byte		VOL   , 116*mus_vs_gym_leader_metal_mvl/mxv
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
	.byte		N01   , Cn1 , v116
	.byte		N01   , Fs1 , v064
	.byte		N02   , Cs2 , v108
	.byte	W12
	.byte		N01   , Cn1 , v100
	.byte	W12
	.byte		        En1 , v116
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        Cn1 , v116
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        En1 , v120
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
@ 002   ----------------------------------------
mus_vs_gym_leader_metal_5_002:
	.byte		N01   , Cn1 , v116
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        En1 , v116
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        Cn1 , v116
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        En1 , v120
	.byte		N01   , Fs1 , v064
	.byte	W06
	.byte		N02   , Cs2 , v108
	.byte	W06
	.byte		N01   , Cn1 , v100
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_vs_gym_leader_metal_5_003:
	.byte		N01   , Cn1 , v116
	.byte		N01   , Fs1 , v064
	.byte		N02   , Cs2 , v108
	.byte	W12
	.byte		N01   , Cn1 , v100
	.byte	W12
	.byte		        En1 , v116
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        Cn1 , v116
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N01   , En1 , v120
	.byte		N01   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 , v108
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
mus_vs_gym_leader_metal_5_004:
	.byte		N01   , Cn1 , v116
	.byte		N01   , Fs1 , v060
	.byte		N03   , Cs2 , v104
	.byte	W24
	.byte		N01   , En1 , v116
	.byte		N01   , Fs1 , v060
	.byte	W24
	.byte		        Cn1 , v116
	.byte		N01   , Cn1 , v112
	.byte		N02   , En1 , v108
	.byte		N01   , Fs1 , v060
	.byte	W06
	.byte		N02   , En1 , v108
	.byte	W06
	.byte		N02   
	.byte		N02   , Cs2 
	.byte	W03
	.byte		        Cn1 , v112
	.byte	W09
	.byte		N02   
	.byte		N01   , En1 , v120
	.byte		N01   , En1 , v108
	.byte		N01   , Fs1 , v060
	.byte	W06
	.byte		N02   , Cn1 , v112
	.byte		N02   , Ds2 , v068
	.byte	W03
	.byte		        Cn1 , v112
	.byte	W03
	.byte		        En1 , v108
	.byte	W03
	.byte		        Cn1 , v112
	.byte	W06
	.byte		        En1 , v108
	.byte	W03
	.byte	PEND
mus_vs_gym_leader_metal_5_B1:
@ 005   ----------------------------------------
mus_vs_gym_leader_metal_5_005:
	.byte		N01   , Cn1 , v116
	.byte		N01   , Fs1 , v064
	.byte		N03   , Cs2 , v100
	.byte		N02   , Cs2 , v108
	.byte	W12
	.byte		N01   , Cn1 , v100
	.byte	W12
	.byte		        En1 , v116
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        Cn1 , v116
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        En1 , v120
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_002
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_5_B1
mus_vs_gym_leader_metal_5_B2:
@ 031   ----------------------------------------
	.byte		N01   , Cn1 , v116
	.byte		N01   , Fs1 , v064
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
