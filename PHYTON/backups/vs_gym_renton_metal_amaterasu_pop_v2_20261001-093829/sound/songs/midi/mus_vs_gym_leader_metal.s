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
	.byte	TEMPO , 108*mus_vs_gym_leader_metal_tbs/2
	.byte		VOICE , 33
	.byte		VOL   , 106*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N11   , Cn2 , v088
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
@ 002   ----------------------------------------
mus_vs_gym_leader_metal_1_002:
	.byte		N05   , Cn1 , v088
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
	.byte		N05   , Cn1 , v088
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
@ 007   ----------------------------------------
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
@ 008   ----------------------------------------
mus_vs_gym_leader_metal_1_008:
	.byte		N05   , As0 , v088
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
@ 009   ----------------------------------------
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
@ 010   ----------------------------------------
mus_vs_gym_leader_metal_1_010:
	.byte		N05   , As0 , v088
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
@ 011   ----------------------------------------
mus_vs_gym_leader_metal_1_011:
	.byte		N05   , Cn1 , v088
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
@ 012   ----------------------------------------
mus_vs_gym_leader_metal_1_012:
	.byte		N05   , Cn1 , v088
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
@ 013   ----------------------------------------
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
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_008
@ 015   ----------------------------------------
	.byte		N05   , Cn1 , v088
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
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_010
@ 017   ----------------------------------------
	.byte		N05   , Cn1 , v088
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
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_012
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_012
@ 020   ----------------------------------------
mus_vs_gym_leader_metal_1_020:
	.byte		N05   , Cs1 , v088
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
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_012
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_020
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_012
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
	 .word	mus_vs_gym_leader_metal_1_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_012
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
	.byte		VOICE , 29
	.byte		VOL   , 104*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N02   , Gn3 , v092
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Fn3 
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
	.byte		        Gs3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		N05   , Cn3 , v080
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
mus_vs_gym_leader_metal_2_B1:
@ 005   ----------------------------------------
	.byte		N08   , En4 , v080
	.byte	W18
	.byte		        Fn3 
	.byte	W18
	.byte		N05   , Gn3 
	.byte	W42
	.byte		N05   
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 006   ----------------------------------------
mus_vs_gym_leader_metal_2_006:
	.byte		N17   , En4 , v080
	.byte	W18
	.byte		        Cn4 
	.byte	W18
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En4 
	.byte	W12
	.byte		N28   , Cn4 
	.byte	W30
	.byte	PEND
@ 007   ----------------------------------------
mus_vs_gym_leader_metal_2_007:
	.byte		N23   , As3 , v080
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte		N32   , En3 
	.byte	W36
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N28   , Gn3 
	.byte	W30
	.byte		N05   , En3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 009   ----------------------------------------
	.byte		        As2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
@ 010   ----------------------------------------
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
@ 011   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N11   , Fn3 
	.byte	W12
	.byte		N05   , En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N05   , Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_006
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_007
@ 014   ----------------------------------------
	.byte		N32   , En4 , v080
	.byte	W36
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N44   , Gn3 
	.byte	W48
@ 015   ----------------------------------------
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 016   ----------------------------------------
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W72
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
@ 019   ----------------------------------------
	.byte		N02   , Cs4 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N02   , Fn3 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N02   , Ds4 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N02   , Gn3 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
@ 020   ----------------------------------------
	.byte		N02   , Cn4 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   , En4 
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
@ 021   ----------------------------------------
	.byte	W12
	.byte		        Cn4 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		        Ds4 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 022   ----------------------------------------
	.byte		N03   , Dn4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        As2 
	.byte	W04
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        Cn3 
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
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn3 
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
@ 028   ----------------------------------------
mus_vs_gym_leader_metal_2_028:
	.byte		N05   , Gn3 , v080
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte	PEND
@ 029   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_028
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_2_B1
mus_vs_gym_leader_metal_2_B2:
@ 031   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_vs_gym_leader_metal_3:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 31
	.byte		VOL   , 112*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+14
	.byte		N02   , Cn5 , v104
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
mus_vs_gym_leader_metal_3_B1:
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte		N22   , Fn4 , v088
	.byte		N22   , As4 
	.byte	W24
	.byte		        En4 
	.byte		N22   , An4 
	.byte	W24
	.byte		N11   , Dn4 
	.byte		N11   , Gn4 
	.byte	W12
	.byte		        En4 
	.byte		N11   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N11   , Gn4 
	.byte	W12
	.byte		        Cn4 
	.byte		N11   , Fn4 
	.byte	W12
@ 008   ----------------------------------------
	.byte		N17   , Cn4 
	.byte		N17   , En4 
	.byte	W18
	.byte		N11   , Dn4 
	.byte		N11   , Fn4 
	.byte	W12
	.byte		N22   , Cn4 
	.byte		N22   , En4 
	.byte	W24
	.byte		N11   , En3 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N05   , Gn3 
	.byte		N05   , Cn4 
	.byte	W06
	.byte		        An3 
	.byte		N05   , Dn4 
	.byte	W06
	.byte		N17   , En3 
	.byte		N17   , Cn4 
	.byte	W18
@ 009   ----------------------------------------
	.byte		N22   , Fn4 , v080
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
	.byte		N02   , Gn2 , v076
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
	.byte		N22   , Fn4 , v080
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        An4 
	.byte	W06
	.byte		N02   , Fn2 , v076
	.byte	W06
	.byte		N11   , Dn5 , v080
	.byte	W06
	.byte		N02   , Fn2 , v076
	.byte	W06
@ 016   ----------------------------------------
	.byte		N08   , Gn2 
	.byte		N32   , Cn5 , v080
	.byte	W18
	.byte		N02   , Gn2 , v076
	.byte	W18
	.byte		N11   , En4 , v080
	.byte	W12
	.byte		N44   , Cn5 
	.byte	W12
	.byte		N02   , En2 , v076
	.byte	W06
	.byte		        Gn2 
	.byte	W12
	.byte		        En2 
	.byte	W06
	.byte		N05   , Gn2 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N17   , Cn3 , v104
	.byte		N17   , Gn3 
	.byte	W18
	.byte		        As2 
	.byte		N17   , Fn3 
	.byte	W18
	.byte		N11   , Cn3 
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N17   , Dn3 
	.byte		N17   , An3 
	.byte	W18
	.byte		        As2 
	.byte		N17   , Fn3 
	.byte	W18
	.byte		N11   , Dn3 
	.byte		N11   , An3 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N44   , Cn3 
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
	.byte		N17   , Cs3 , v088
	.byte		N17   , Fn3 
	.byte	W18
	.byte		        Gs4 
	.byte		N17   , Cs5 
	.byte	W18
	.byte		N05   , Gs4 
	.byte		N05   , Cs5 
	.byte	W06
	.byte		N11   , As4 
	.byte		N11   , Ds5 
	.byte	W12
	.byte		        As4 
	.byte		N11   , Ds5 
	.byte	W12
	.byte		N05   
	.byte		N05   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N05   , Gn5 
	.byte	W06
	.byte		        As4 
	.byte		N05   , Gn5 
	.byte	W06
@ 024   ----------------------------------------
	.byte		N17   , As4 
	.byte		N17   , Fn5 
	.byte	W18
	.byte		N05   , As4 
	.byte		N05   , Fn5 
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
	 .word	mus_vs_gym_leader_metal_3_B1
mus_vs_gym_leader_metal_3_B2:
@ 031   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_vs_gym_leader_metal_4:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 120*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N23   , Cs2 , v100
	.byte	W96
@ 001   ----------------------------------------
	.byte		N23   
	.byte	W96
@ 002   ----------------------------------------
	.byte	W78
	.byte		N17   
	.byte	W18
@ 003   ----------------------------------------
	.byte		N23   
	.byte	W96
@ 004   ----------------------------------------
	.byte	W48
	.byte		N05   , Cn1 
	.byte		N05   , En1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N02   
	.byte		N02   , Cs2 
	.byte	W03
	.byte		        Cn1 
	.byte	W09
	.byte		N05   
	.byte		N05   , En1 
	.byte	W06
	.byte		N02   , Cn1 
	.byte		N02   , Ds2 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		        En1 
	.byte	W03
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W03
mus_vs_gym_leader_metal_4_B1:
@ 005   ----------------------------------------
	.byte		N05   , Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte		N03   , Cs2 , v100
	.byte		N02   
	.byte	W12
	.byte		N05   , En1 
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W06
	.byte		N05   , Cn1 , v100
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N05   , Cn1 , v100
	.byte		N05   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N05   , En1 , v100
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W06
	.byte		N05   , Cn1 , v100
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v052
	.byte	W12
@ 006   ----------------------------------------
	.byte		N05   , Cn1 , v100
	.byte		N05   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		N05   , En1 , v100
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v052
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W09
	.byte		N05   
	.byte		N05   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v100
	.byte		N02   , Ds2 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		        En1 
	.byte		N02   , Fs1 , v052
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W06
	.byte		        En1 
	.byte	W03
	.byte		N05   , Cn1 
	.byte		N05   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N05   , En1 , v100
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W06
	.byte		N05   , Cn1 , v100
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v052
	.byte	W12
@ 007   ----------------------------------------
mus_vs_gym_leader_metal_4_007:
	.byte		N05   , Cn1 , v100
	.byte		N05   , En1 
	.byte		N02   , Fs1 , v064
	.byte		N03   , Cs2 , v100
	.byte	W12
	.byte		N05   , En1 
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W06
	.byte		N05   , Cn1 , v100
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N05   , Cn1 , v100
	.byte		N05   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N05   , En1 , v100
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W06
	.byte		N05   , Cn1 , v100
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_vs_gym_leader_metal_4_008:
	.byte		N05   , Cn1 , v100
	.byte		N05   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N05   , En1 , v100
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W06
	.byte		N05   , Cn1 , v100
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N05   , Cn1 , v100
	.byte		N05   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N05   , En1 , v100
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W06
	.byte		N05   , Cn1 , v100
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_007
@ 010   ----------------------------------------
mus_vs_gym_leader_metal_4_010:
	.byte		N05   , Cn1 , v100
	.byte		N05   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N05   , En1 , v100
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W06
	.byte		N05   , Cn1 , v100
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N05   , Cn1 , v100
	.byte		N05   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		N05   , En1 , v100
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v052
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W09
	.byte		N05   
	.byte		N05   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v100
	.byte		N02   , Ds2 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		        En1 
	.byte		N02   , Fs1 , v052
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W06
	.byte		        En1 
	.byte	W03
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_007
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_008
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_010
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_007
@ 018   ----------------------------------------
	.byte		N05   , Cn1 , v100
	.byte		N05   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N05   , En1 , v100
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W06
	.byte		N05   , Cn1 , v100
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N05   , Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N05   , En1 , v100
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W06
	.byte		N05   , Cn1 , v100
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v052
	.byte	W12
@ 019   ----------------------------------------
mus_vs_gym_leader_metal_4_019:
	.byte		N05   , Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte		N03   , Cs2 , v100
	.byte	W12
	.byte		N05   , En1 
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W06
	.byte		N05   , Cn1 , v100
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N05   , Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N05   , En1 , v100
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W06
	.byte		N05   , Cn1 , v100
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_vs_gym_leader_metal_4_020:
	.byte		N05   , Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N05   , En1 , v100
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W06
	.byte		N05   , Cn1 , v100
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N05   , Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N05   , En1 , v100
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W06
	.byte		N05   , Cn1 , v100
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_020
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_019
@ 026   ----------------------------------------
	.byte		N05   , Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N05   , En1 , v100
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W06
	.byte		N05   , Cn1 , v100
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N05   , Cn1 , v100
	.byte		N05   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		N05   , En1 , v100
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v052
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W09
	.byte		N05   
	.byte		N05   , En1 
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v100
	.byte		N02   , Ds2 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		        En1 
	.byte		N02   , Fs1 , v052
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W06
	.byte		        En1 
	.byte	W03
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_007
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_008
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_007
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_4_008
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_4_B1
mus_vs_gym_leader_metal_4_B2:
@ 031   ----------------------------------------
	.byte		N02   , Fs1 , v064
	.byte		N03   , Cs2 , v100
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

mus_vs_gym_leader_metal:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_vs_gym_leader_metal_pri	@ Priority
	.byte	mus_vs_gym_leader_metal_rev	@ Reverb.

	.word	mus_vs_gym_leader_metal_grp

	.word	mus_vs_gym_leader_metal_1
	.word	mus_vs_gym_leader_metal_2
	.word	mus_vs_gym_leader_metal_3
	.word	mus_vs_gym_leader_metal_4

	.end
