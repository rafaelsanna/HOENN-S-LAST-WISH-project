	.include "MPlayDef.s"

	.equ	mus_vs_gym_leader_pop_grp, voicegroup_diva_pop
	.equ	mus_vs_gym_leader_pop_pri, 0
	.equ	mus_vs_gym_leader_pop_rev, reverb_set+12
	.equ	mus_vs_gym_leader_pop_mvl, 90
	.equ	mus_vs_gym_leader_pop_key, 0
	.equ	mus_vs_gym_leader_pop_tbs, 1
	.equ	mus_vs_gym_leader_pop_exg, 0
	.equ	mus_vs_gym_leader_pop_cmp, 1

	.section .rodata
	.global	mus_vs_gym_leader_pop
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_vs_gym_leader_pop_1:
	.byte	KEYSH , mus_vs_gym_leader_pop_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 120*mus_vs_gym_leader_pop_tbs/2
	.byte		VOICE , 1
	.byte		VOL   , 92*mus_vs_gym_leader_pop_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N08   , Ds2 , v072
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N04   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
@ 002   ----------------------------------------
mus_vs_gym_leader_pop_1_002:
	.byte		N04   , Ds1 , v072
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_1_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_1_002
mus_vs_gym_leader_pop_1_B1:
@ 006   ----------------------------------------
	.byte		N04   , Ds1 , v072
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
	.byte		        Fn1 
	.byte	W06
@ 007   ----------------------------------------
	.byte		        Ds1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
@ 008   ----------------------------------------
mus_vs_gym_leader_pop_1_008:
	.byte		N04   , Cs2 , v072
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
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
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
@ 010   ----------------------------------------
mus_vs_gym_leader_pop_1_010:
	.byte		N04   , Cs2 , v072
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
mus_vs_gym_leader_pop_1_011:
	.byte		N04   , Ds1 , v072
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
	.byte		        Ds2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
mus_vs_gym_leader_pop_1_012:
	.byte		N04   , Ds1 , v072
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
@ 013   ----------------------------------------
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
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_1_008
@ 015   ----------------------------------------
	.byte		N04   , Ds1 , v072
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
	.byte		        Gn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_1_010
@ 017   ----------------------------------------
	.byte		N04   , Ds1 , v072
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
	.byte		        Gn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_1_012
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_1_012
@ 020   ----------------------------------------
mus_vs_gym_leader_pop_1_020:
	.byte		N04   , En1 , v072
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_1_012
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_1_020
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_1_012
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_1_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_1_010
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_1_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_1_010
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_1_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_1_012
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_1_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_1_011
	.byte	GOTO
	 .word	mus_vs_gym_leader_pop_1_B1
mus_vs_gym_leader_pop_1_B2:
@ 032   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_vs_gym_leader_pop_2:
	.byte	KEYSH , mus_vs_gym_leader_pop_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 80*mus_vs_gym_leader_pop_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N02   , As3 , v064
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
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 
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
	.byte		        Bn3 
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
	.byte		        Gn3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        An3 
	.byte	W03
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		N05   , Ds3 , v056
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En3 
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
mus_vs_gym_leader_pop_2_B1:
@ 005   ----------------------------------------
	.byte		N08   , Gn3 , v056
	.byte	W18
	.byte		        Gs3 
	.byte	W18
	.byte		N05   , As3 
	.byte	W42
	.byte		N05   
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 006   ----------------------------------------
mus_vs_gym_leader_pop_2_006:
	.byte		N17   , Gn3 , v056
	.byte	W18
	.byte		        Ds4 
	.byte	W18
	.byte		N05   , Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W12
	.byte		N28   , Ds4 
	.byte	W30
	.byte	PEND
@ 007   ----------------------------------------
mus_vs_gym_leader_pop_2_007:
	.byte		N23   , Cs4 , v056
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		N11   , As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte		N32   , Gn3 
	.byte	W36
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N28   , As3 
	.byte	W30
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 009   ----------------------------------------
	.byte		        Cs3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 010   ----------------------------------------
	.byte		        Ds3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 011   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N11   , Fn3 
	.byte	W12
	.byte		N05   , Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_2_006
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_2_007
@ 014   ----------------------------------------
	.byte		N32   , Gn3 , v056
	.byte	W36
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N44   , As3 
	.byte	W48
@ 015   ----------------------------------------
	.byte		N05   , Gs2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 016   ----------------------------------------
	.byte		        As2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
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
	.byte		N02   , En4 
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
	.byte		N02   , Gs3 
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
	.byte		N02   , Fs3 
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
	.byte		N02   , As3 
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
	.byte		N05   , Gn3 
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
	.byte		        As3 
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
	.byte	W18
	.byte		        Fs3 
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
	.byte		N03   , Fn3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Cs3 
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
	.byte		N05   , As3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 028   ----------------------------------------
mus_vs_gym_leader_pop_2_028:
	.byte		N05   , As3 , v056
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte	PEND
@ 029   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_2_028
	.byte	GOTO
	 .word	mus_vs_gym_leader_pop_2_B1
mus_vs_gym_leader_pop_2_B2:
@ 031   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_vs_gym_leader_pop_3:
	.byte	KEYSH , mus_vs_gym_leader_pop_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 7
	.byte		VOL   , 104*mus_vs_gym_leader_pop_mvl/mxv
	.byte		PAN   , c_v+14
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
mus_vs_gym_leader_pop_3_B1:
@ 005   ----------------------------------------
mus_vs_gym_leader_pop_3_005:
	.byte		N23   , Ds4 , v088
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N17   , Fn4 
	.byte	W18
	.byte		N05   , As3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
mus_vs_gym_leader_pop_3_006:
	.byte		N32   , Gn4 , v088
	.byte	W36
	.byte		N05   , Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W12
	.byte		N28   , Ds4 
	.byte	W30
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
mus_vs_gym_leader_pop_3_009:
	.byte		N23   , Cs5 , v088
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		N11   , Cs5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte		N32   , Gn5 
	.byte	W36
	.byte		N11   , Fn5 
	.byte	W12
	.byte		N44   , Ds5 
	.byte	W48
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_3_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_3_006
@ 013   ----------------------------------------
	.byte		N23   , Cs4 , v088
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		N11   , As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N32   , Gn3 
	.byte	W36
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N28   , As3 
	.byte	W30
	.byte		N05   
	.byte	W06
	.byte		        Ds4 
	.byte	W12
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_3_009
@ 016   ----------------------------------------
	.byte		N32   , Gn5 , v088
	.byte	W36
	.byte		N11   , Ds5 
	.byte	W12
	.byte		N44   , As4 
	.byte	W48
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
	.byte	W48
	.byte		N32   , Ds4 
	.byte	W36
	.byte		N05   
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 023   ----------------------------------------
	.byte		N44   , En4 
	.byte	W48
	.byte		        Fs4 
	.byte	W48
@ 024   ----------------------------------------
	.byte		TIE   , Gs4 
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 027   ----------------------------------------
	.byte		N44   , Ds4 
	.byte	W48
	.byte		N23   , Cs4 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
@ 028   ----------------------------------------
	.byte		N44   , As3 
	.byte	W48
	.byte		        Ds4 
	.byte	W48
@ 029   ----------------------------------------
	.byte		        En3 
	.byte	W48
	.byte		N23   , Cs4 
	.byte	W24
	.byte		N17   , En3 
	.byte	W18
	.byte		N05   , Gn3 
	.byte	W06
@ 030   ----------------------------------------
	.byte		N44   , Ds4 
	.byte	W48
	.byte		        Gn3 
	.byte	W48
	.byte	GOTO
	 .word	mus_vs_gym_leader_pop_3_B1
mus_vs_gym_leader_pop_3_B2:
@ 031   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_vs_gym_leader_pop_4:
	.byte	KEYSH , mus_vs_gym_leader_pop_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 86*mus_vs_gym_leader_pop_mvl/mxv
	.byte		PAN   , c_v-10
	.byte	W96
@ 001   ----------------------------------------
	.byte		N12   , Gn4 , v080
	.byte	W18
	.byte		        Gs4 
	.byte	W18
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W18
	.byte		        Ds4 
	.byte	W18
	.byte		N11   , Gs3 
	.byte	W12
@ 002   ----------------------------------------
	.byte		N12   , Gn4 
	.byte	W18
	.byte		        Gs4 
	.byte	W18
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W18
	.byte		        Ds4 
	.byte	W18
	.byte		N11   , Gs4 
	.byte	W12
@ 003   ----------------------------------------
	.byte		N12   , Gn5 
	.byte	W18
	.byte		        Gs4 
	.byte	W18
	.byte		N11   , Gn4 
	.byte	W12
	.byte		N12   , Dn5 
	.byte	W18
	.byte		        Ds5 
	.byte	W18
	.byte		N11   , Gs4 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N12   , Gn5 
	.byte	W18
	.byte		        Gs4 
	.byte	W18
	.byte		N11   , Dn5 
	.byte	W12
	.byte		N12   , Gn5 
	.byte	W18
	.byte		        Gs4 
	.byte	W18
	.byte		N11   
	.byte	W12
mus_vs_gym_leader_pop_4_B1:
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
	 .word	mus_vs_gym_leader_pop_4_B1
mus_vs_gym_leader_pop_4_B2:
@ 031   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_vs_gym_leader_pop_5:
	.byte	KEYSH , mus_vs_gym_leader_pop_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 8
	.byte		VOL   , 92*mus_vs_gym_leader_pop_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Cn1 , v076
	.byte		N01   , Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		N02   , Cn1 , v076
	.byte		N02   , En1 , v072
	.byte		N01   , Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		N02   , Cn1 , v076
	.byte		N01   , Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		N02   , Cn1 , v076
	.byte		N02   , En1 , v072
	.byte		N01   , Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
@ 001   ----------------------------------------
mus_vs_gym_leader_pop_5_001:
	.byte		N02   , Cn1 , v076
	.byte		N01   , Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		N02   , Cn1 , v076
	.byte		N02   , En1 , v072
	.byte		N01   , Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		N02   , Cn1 , v076
	.byte		N01   , Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		N02   , Cn1 , v076
	.byte		N02   , En1 , v072
	.byte		N01   , Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
mus_vs_gym_leader_pop_5_B1:
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_pop_5_001
	.byte	GOTO
	 .word	mus_vs_gym_leader_pop_5_B1
mus_vs_gym_leader_pop_5_B2:
@ 031   ----------------------------------------
	.byte		N02   , Cn1 , v076
	.byte		N01   , Fs1 , v048
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

mus_vs_gym_leader_pop:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_vs_gym_leader_pop_pri	@ Priority
	.byte	mus_vs_gym_leader_pop_rev	@ Reverb.

	.word	mus_vs_gym_leader_pop_grp

	.word	mus_vs_gym_leader_pop_1
	.word	mus_vs_gym_leader_pop_2
	.word	mus_vs_gym_leader_pop_3
	.word	mus_vs_gym_leader_pop_4
	.word	mus_vs_gym_leader_pop_5

	.end
