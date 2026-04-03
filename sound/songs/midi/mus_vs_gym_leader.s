	.include "MPlayDef.s"

	.equ	mus_vs_gym_leader_grp, voicegroup_vs_gym_leader
	.equ	mus_vs_gym_leader_pri, 1
	.equ	mus_vs_gym_leader_rev, reverb_set+50
	.equ	mus_vs_gym_leader_mvl, 90
	.equ	mus_vs_gym_leader_key, 0
	.equ	mus_vs_gym_leader_tbs, 1
	.equ	mus_vs_gym_leader_exg, 1
	.equ	mus_vs_gym_leader_cmp, 1

	.section .rodata
	.global	mus_vs_gym_leader
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_vs_gym_leader_1:
	.byte	KEYSH , mus_vs_gym_leader_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 96*mus_vs_gym_leader_tbs/2
	.byte		VOICE , 87
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Cn2 , v076
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
mus_vs_gym_leader_1_002:
	.byte		N05   , Cn1 , v076
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
	 .word	mus_vs_gym_leader_1_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_1_002
mus_vs_gym_leader_1_B1:
@ 006   ----------------------------------------
	.byte		N05   , Cn1 , v076
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
mus_vs_gym_leader_1_008:
	.byte		N05   , As0 , v076
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
mus_vs_gym_leader_1_010:
	.byte		N05   , As0 , v076
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
mus_vs_gym_leader_1_011:
	.byte		N05   , Cn1 , v076
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
mus_vs_gym_leader_1_012:
	.byte		N05   , Cn1 , v076
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
	 .word	mus_vs_gym_leader_1_008
@ 015   ----------------------------------------
	.byte		N05   , Cn1 , v076
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
	 .word	mus_vs_gym_leader_1_010
@ 017   ----------------------------------------
	.byte		N05   , Cn1 , v076
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
	 .word	mus_vs_gym_leader_1_012
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_1_012
@ 020   ----------------------------------------
mus_vs_gym_leader_1_020:
	.byte		N05   , Cs1 , v076
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
	 .word	mus_vs_gym_leader_1_012
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_1_020
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_1_012
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_1_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_1_010
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_1_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_1_010
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_1_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_1_012
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_1_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_1_011
	.byte	GOTO
	 .word	mus_vs_gym_leader_1_B1
mus_vs_gym_leader_1_B2:
@ 032   ----------------------------------------
	.byte		VOICE , 87
	.byte		        87
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_vs_gym_leader_2:
	.byte	KEYSH , mus_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 126
	.byte		VOL   , 107*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W48
	.byte		N05   , Fs4 , v076
	.byte	W06
	.byte		N05   
	.byte	W09
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W09
	.byte		N02   
	.byte	W09
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
mus_vs_gym_leader_2_B1:
@ 005   ----------------------------------------
mus_vs_gym_leader_2_005:
	.byte		N05   , Fs4 , v076
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
	.byte	PEND
@ 006   ----------------------------------------
	.byte		N05   
	.byte	W15
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W09
	.byte		N02   
	.byte	W09
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
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
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
@ 010   ----------------------------------------
mus_vs_gym_leader_2_010:
	.byte		N05   , Fs4 , v076
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
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W15
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W09
	.byte		N02   
	.byte	W09
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_010
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_2_005
	.byte	GOTO
	 .word	mus_vs_gym_leader_2_B1
mus_vs_gym_leader_2_B2:
@ 031   ----------------------------------------
	.byte		VOICE , 126
	.byte		        126
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_vs_gym_leader_3:
	.byte	KEYSH , mus_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte		VOL   , 127*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte		N17   , Cn4 , v088
	.byte	W18
	.byte		        Cs4 
	.byte	W18
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N17   , Gn3 
	.byte	W18
	.byte		        Gs3 
	.byte	W18
	.byte		N11   , Cs3 
	.byte	W12
@ 002   ----------------------------------------
	.byte		N17   , Cn4 
	.byte	W18
	.byte		        Cs4 
	.byte	W18
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N17   , Gn3 
	.byte	W18
	.byte		        Gs3 
	.byte	W18
	.byte		N11   , Cs4 
	.byte	W12
@ 003   ----------------------------------------
	.byte		N17   , Cn5 
	.byte	W18
	.byte		        Cs5 
	.byte	W18
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N17   , Gn4 
	.byte	W18
	.byte		        Gs4 
	.byte	W18
	.byte		N11   , Cs4 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N17   , Cn5 
	.byte	W18
	.byte		        Cs5 
	.byte	W18
	.byte		N11   , Gn4 
	.byte	W12
	.byte		N17   , Cn5 
	.byte	W18
	.byte		        Cs5 
	.byte	W18
	.byte		N11   
	.byte	W12
mus_vs_gym_leader_3_B1:
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
	 .word	mus_vs_gym_leader_3_B1
mus_vs_gym_leader_3_B2:
@ 031   ----------------------------------------
	.byte		VOICE , 45
	.byte		        45
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_vs_gym_leader_4:
	.byte	KEYSH , mus_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
mus_vs_gym_leader_4_B1:
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte		N23   , As4 , v088
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		N11   , As4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
@ 010   ----------------------------------------
	.byte		N32   , En5 , v088, gtp3
	.byte	W36
	.byte		N11   , Dn5 
	.byte	W12
	.byte		N44   , Cn5 , v088, gtp3
	.byte	W48
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte		VOICE , 31
	.byte		N23   , As2 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N32   , En2 , v088, gtp3
	.byte	W36
	.byte		N11   , Cn2 
	.byte	W12
	.byte		N28   , Gn2 , v088, gtp1
	.byte	W30
	.byte		N05   
	.byte	W06
	.byte		        Cn3 
	.byte	W12
@ 015   ----------------------------------------
	.byte		VOICE , 73
	.byte		N23   , As4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		N11   , As4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N32   , En5 , v088, gtp3
	.byte	W36
	.byte		N11   , Cn5 
	.byte	W12
	.byte		N44   , Gn5 , v088, gtp3
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
	 .word	mus_vs_gym_leader_4_B1
mus_vs_gym_leader_4_B2:
@ 031   ----------------------------------------
	.byte		VOICE , 73
	.byte		        73
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_vs_gym_leader_5:
	.byte	KEYSH , mus_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 59
	.byte		VOL   , 42*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Gn3 , v080
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
mus_vs_gym_leader_5_001:
	.byte		N23   , Cn4 , v080
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
	.byte		        Cn4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_5_001
@ 004   ----------------------------------------
	.byte		N23   , Cn4 , v080
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N11   , Ds3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
mus_vs_gym_leader_5_B1:
@ 005   ----------------------------------------
	.byte		N23   , Gn3 , v096
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
	.byte		N28   , Gn3 , v096, gtp1
	.byte	W30
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte		N17   , Cn3 
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
	.byte		N28   , Gn3 , v096, gtp1
	.byte	W30
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
	.byte		N44   , Cn3 , v112, gtp3
	.byte	W48
	.byte		N23   , As2 
	.byte	W24
	.byte		N02   , Cn3 
	.byte	W02
	.byte		N21   , Dn3 
	.byte	W22
@ 028   ----------------------------------------
	.byte		N44   , Gn2 , v112, gtp3
	.byte	W48
	.byte		        Cn3 , v112, gtp3
	.byte	W48
@ 029   ----------------------------------------
	.byte		        Cs3 , v112, gtp3
	.byte	W48
	.byte		N23   , As2 
	.byte	W24
	.byte		N17   , Cs3 
	.byte	W18
	.byte		N05   , En3 
	.byte	W06
@ 030   ----------------------------------------
	.byte		N44   , Cn3 , v112, gtp3
	.byte	W48
	.byte		        En3 , v112, gtp3
	.byte	W48
	.byte	GOTO
	 .word	mus_vs_gym_leader_5_B1
mus_vs_gym_leader_5_B2:
@ 031   ----------------------------------------
	.byte		VOICE , 59
	.byte		        59
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_vs_gym_leader_6:
	.byte	KEYSH , mus_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Cn5 , v088
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
mus_vs_gym_leader_6_B1:
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
mus_vs_gym_leader_6_009:
	.byte		N22   , Fn4 , v068
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
	.byte	PEND
@ 010   ----------------------------------------
	.byte		N32   , Cn5 , v068, gtp2
	.byte	W36
	.byte		N11   , An4 
	.byte	W12
	.byte		N44   , Gn4 , v068, gtp1
	.byte	W48
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_6_009
@ 016   ----------------------------------------
	.byte		N32   , Cn5 , v068, gtp2
	.byte	W36
	.byte		N11   , En4 
	.byte	W12
	.byte		N44   , Cn5 , v068, gtp1
	.byte	W48
@ 017   ----------------------------------------
	.byte		VOICE , 30
	.byte		N17   , Cn3 , v088
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
	.byte		N44   , Cn3 , v088, gtp3
	.byte		N44   , Gn3 , v088, gtp3
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
	.byte		N44   , Cs4 , v088, gtp3
	.byte	W48
	.byte		        Ds4 , v088, gtp3
	.byte	W48
@ 022   ----------------------------------------
	.byte		        Cn4 , v088, gtp3
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
	.byte		VOICE , 48
	.byte	W96
	.byte	GOTO
	 .word	mus_vs_gym_leader_6_B1
mus_vs_gym_leader_6_B2:
@ 031   ----------------------------------------
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_vs_gym_leader_7:
	.byte	KEYSH , mus_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 86
	.byte		PAN   , c_v-44
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Gn4 , v088
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
	.byte		N05   , Cn3 , v076
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
mus_vs_gym_leader_7_B1:
@ 005   ----------------------------------------
	.byte		N08   , En4 , v076
	.byte	W18
	.byte		        Fn4 
	.byte	W18
	.byte		N05   , Gn4 
	.byte	W42
	.byte		N05   
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
@ 006   ----------------------------------------
mus_vs_gym_leader_7_006:
	.byte		N17   , En5 , v076
	.byte	W18
	.byte		        Cn5 
	.byte	W18
	.byte		N05   , Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        En5 
	.byte	W12
	.byte		N28   , Cn5 , v076, gtp1
	.byte	W30
	.byte	PEND
@ 007   ----------------------------------------
	.byte		N23   , As3 
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
@ 008   ----------------------------------------
	.byte		N32   , En3 , v076, gtp3
	.byte	W36
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N28   , Gn3 , v076, gtp1
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
	.byte		        Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N11   , Fn5 
	.byte	W12
	.byte		N05   , En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N11   , Dn5 
	.byte	W12
	.byte		N05   , Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_7_006
@ 013   ----------------------------------------
	.byte		N23   , As4 , v076
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
@ 014   ----------------------------------------
	.byte		N32   , En4 , v076, gtp3
	.byte	W36
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N44   , Gn4 , v076, gtp3
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
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W72
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
	.byte		N02   , Fn4 
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
	.byte		N02   , Gn4 
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
	.byte		N02   , Cn5 
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
	.byte		N05   , En5 
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
	.byte		        Gn5 
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
	.byte		N03   , Dn6 
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn4 
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
	.byte		        Gn4 
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
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 028   ----------------------------------------
mus_vs_gym_leader_7_028:
	.byte		N05   , Gn3 , v076
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
	.byte		        Gs4 
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
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_7_028
	.byte	GOTO
	 .word	mus_vs_gym_leader_7_B1
mus_vs_gym_leader_7_B2:
@ 031   ----------------------------------------
	.byte		VOICE , 86
	.byte		        86
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_vs_gym_leader_8:
	.byte	KEYSH , mus_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 60
	.byte		VOL   , 127*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
mus_vs_gym_leader_8_B1:
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
mus_vs_gym_leader_8_007:
	.byte		N23   , As4 , v088
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
	.byte	PEND
@ 008   ----------------------------------------
	.byte		N32   , En4 , v088, gtp3
	.byte	W36
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N44   , Gn4 , v088, gtp3
	.byte	W48
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_8_007
@ 014   ----------------------------------------
	.byte		N32   , En4 , v088, gtp3
	.byte	W36
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N28   , Gn4 , v088, gtp1
	.byte	W30
	.byte		N05   
	.byte	W06
	.byte		        Cn5 
	.byte	W12
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W48
	.byte		N32   , Cn2 , v076, gtp3
	.byte	W36
	.byte		N05   
	.byte	W06
	.byte		        As1 
	.byte	W06
@ 019   ----------------------------------------
	.byte		N44   , Cs2 , v076, gtp3
	.byte	W48
	.byte		        Ds2 , v076, gtp3
	.byte	W48
@ 020   ----------------------------------------
	.byte		N80   , Cn2 , v076, gtp3
	.byte	W84
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 021   ----------------------------------------
	.byte		N44   , Cs3 , v076, gtp3
	.byte	W48
	.byte		        Ds3 , v076, gtp3
	.byte	W48
@ 022   ----------------------------------------
	.byte		        Cn3 , v076, gtp3
	.byte	W48
	.byte		N32   , Gn2 , v076, gtp3
	.byte	W36
	.byte		N05   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
@ 023   ----------------------------------------
	.byte		N44   , Gs2 , v076, gtp3
	.byte	W48
	.byte		        As2 , v076, gtp3
	.byte	W48
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
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_vs_gym_leader_8_B1
mus_vs_gym_leader_8_B2:
@ 031   ----------------------------------------
	.byte		VOICE , 60
	.byte		        60
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 9 (Midi-Chn.9) ****************@

mus_vs_gym_leader_9:
	.byte	KEYSH , mus_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 81
	.byte		PAN   , c_v-28
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
mus_vs_gym_leader_9_B1:
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
	.byte		N44   , Cs3 , v088, gtp3
	.byte	W48
	.byte		        Ds3 , v088, gtp3
	.byte	W48
@ 024   ----------------------------------------
	.byte		N92   , Fn3 , v088, gtp3
	.byte	W96
@ 025   ----------------------------------------
mus_vs_gym_leader_9_025:
	.byte		N05   , Fn3 , v088
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
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_9_025
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_vs_gym_leader_9_B1
mus_vs_gym_leader_9_B2:
@ 031   ----------------------------------------
	.byte		VOICE , 81
	.byte		        81
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 10 (Midi-Chn.10) ****************@

mus_vs_gym_leader_10:
	.byte	KEYSH , mus_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N23   , An2 , v088
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
	.byte		N05   , Bn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N02   
	.byte		N02   , An2 
	.byte	W03
	.byte		        Cn1 
	.byte	W09
	.byte		N05   
	.byte		N05   , Dn1 
	.byte	W06
	.byte		N02   , Cn1 
	.byte		N02   , Fn2 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		        Dn1 
	.byte		N02   , Cn2 
	.byte	W03
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W03
mus_vs_gym_leader_10_B1:
@ 005   ----------------------------------------
	.byte		N05   , Cn1 , v088
	.byte		N05   , An2 
	.byte	W12
	.byte		        Dn1 
	.byte		N05   , Cn2 
	.byte	W18
	.byte		        Cn1 
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        Dn1 
	.byte		N05   , Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte		N05   , Bn1 
	.byte	W12
	.byte		        Dn1 
	.byte		N05   , Cn2 
	.byte	W18
	.byte		        Cn1 
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        Dn1 
	.byte		N05   , Cn2 
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Cn1 
	.byte		N05   , Bn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N02   
	.byte		N02   , Cn2 
	.byte	W03
	.byte		        Cn1 
	.byte	W09
	.byte		N05   
	.byte		N05   , Dn1 
	.byte	W06
	.byte		N02   , Cn1 
	.byte		N02   , Fn2 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		        Dn1 
	.byte		N02   , Cn2 
	.byte	W03
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W03
	.byte		N05   , Cn1 
	.byte		N05   , Bn1 
	.byte	W12
	.byte		        Dn1 
	.byte		N05   , Cn2 
	.byte	W18
	.byte		        Cn1 
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        Dn1 
	.byte		N05   , Cn2 
	.byte	W12
@ 007   ----------------------------------------
mus_vs_gym_leader_10_007:
	.byte		N05   , Cn1 , v088
	.byte		N05   , Bn1 
	.byte	W12
	.byte		        Dn1 
	.byte		N05   , Cn2 
	.byte	W18
	.byte		        Cn1 
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        Dn1 
	.byte		N05   , Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte		N05   , Bn1 
	.byte	W12
	.byte		        Dn1 
	.byte		N05   , Cn2 
	.byte	W18
	.byte		        Cn1 
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        Dn1 
	.byte		N05   , Cn2 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_10_007
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_10_007
@ 010   ----------------------------------------
mus_vs_gym_leader_10_010:
	.byte		N05   , Cn1 , v088
	.byte		N05   , Bn1 
	.byte	W12
	.byte		        Dn1 
	.byte		N05   , Cn2 
	.byte	W18
	.byte		        Cn1 
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        Dn1 
	.byte		N05   , Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte		N05   , Bn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N02   
	.byte		N02   , Cn2 
	.byte	W03
	.byte		        Cn1 
	.byte	W09
	.byte		N05   
	.byte		N05   , Dn1 
	.byte	W06
	.byte		N02   , Cn1 
	.byte		N02   , Fn2 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		        Dn1 
	.byte		N02   , Cn2 
	.byte	W03
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W03
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_10_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_10_007
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_10_007
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_10_007
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_10_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_10_010
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_10_007
@ 018   ----------------------------------------
	.byte		N05   , Cn1 , v088
	.byte		N05   , Bn1 
	.byte	W12
	.byte		        Dn1 
	.byte		N05   , Cn2 
	.byte	W18
	.byte		        Cn1 
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        Dn1 
	.byte		N05   , Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W18
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
@ 019   ----------------------------------------
mus_vs_gym_leader_10_019:
	.byte		N05   , Cn1 , v088
	.byte	W12
	.byte		        Dn1 
	.byte	W18
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W18
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_10_019
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_10_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_10_019
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_10_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_10_019
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_10_019
@ 026   ----------------------------------------
	.byte		N05   , Cn1 , v088
	.byte	W12
	.byte		        Dn1 
	.byte	W18
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte		N05   , Bn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N02   
	.byte		N02   , Cn2 
	.byte	W03
	.byte		        Cn1 
	.byte	W09
	.byte		N05   
	.byte		N05   , Dn1 
	.byte	W06
	.byte		N02   , Cn1 
	.byte		N02   , Fn2 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		        Dn1 
	.byte		N02   , Cn2 
	.byte	W03
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W03
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_10_007
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_10_007
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_10_007
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_10_007
	.byte	GOTO
	 .word	mus_vs_gym_leader_10_B1
mus_vs_gym_leader_10_B2:
@ 031   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 11 (Midi-Chn.11) ****************@

mus_vs_gym_leader_11:
	.byte	KEYSH , mus_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		PAN   , c_v+48
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
mus_vs_gym_leader_11_B1:
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
	.byte		N23   , Cn5 , v076
	.byte	W24
	.byte		        As4 
	.byte	W24
	.byte		N17   , Dn5 
	.byte	W18
	.byte		N05   , Gn4 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
@ 012   ----------------------------------------
	.byte		N32   , En5 , v076, gtp3
	.byte	W36
	.byte		N05   , Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		N02   , Fn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte		N17   , Gn4 
	.byte	W18
	.byte		        Fn4 
	.byte	W18
	.byte		N11   , Gn4 
	.byte	W12
	.byte		N17   , An4 
	.byte	W18
	.byte		        Fn4 
	.byte	W18
	.byte		N11   , An4 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N23   , Gn4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
@ 019   ----------------------------------------
	.byte		N44   , Cs3 , v076, gtp3
	.byte	W96
@ 020   ----------------------------------------
	.byte	W48
	.byte		N23   , En4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
@ 021   ----------------------------------------
	.byte		N44   , Fn4 , v076, gtp3
	.byte	W48
	.byte		        Gn4 , v076, gtp3
	.byte	W48
@ 022   ----------------------------------------
	.byte		        Cn5 , v076, gtp3
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
mus_vs_gym_leader_11_027:
	.byte		N02   , Fn5 , v076
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_11_027
@ 029   ----------------------------------------
	.byte		N02   , Gs5 , v076
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte		        Cs2 
	.byte	W03
	.byte		        Gs1 
	.byte	W03
	.byte		        Gs5 
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte		N05   , Cs2 
	.byte	W06
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_11_027
	.byte	GOTO
	 .word	mus_vs_gym_leader_11_B1
mus_vs_gym_leader_11_B2:
@ 031   ----------------------------------------
	.byte		VOICE , 80
	.byte		        80
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 12 (Midi-Chn.12) ****************@

mus_vs_gym_leader_12:
	.byte	KEYSH , mus_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 85
	.byte		PAN   , c_v+36
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Gn1 , v076
	.byte	W03
	.byte		        Gs1 
	.byte	W03
	.byte		N05   , Gn1 
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		        Gs1 
	.byte	W03
	.byte		N05   , Gn1 
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		        Gs1 
	.byte	W03
	.byte		N05   , Gn1 
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		        Gs1 
	.byte	W03
	.byte		N05   , Gn1 
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		        Gs1 
	.byte	W03
	.byte		N05   , Gn1 
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		        Gs1 
	.byte	W03
	.byte		N05   , Gn1 
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		        Gs1 
	.byte	W03
	.byte		N05   , Gn1 
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		        Gs1 
	.byte	W03
	.byte		N05   , Gn1 
	.byte	W06
@ 001   ----------------------------------------
	.byte		        Cn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte		N23   , Cn3 
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		        Cs2 
	.byte	W24
@ 004   ----------------------------------------
	.byte		        Cn3 
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		        Ds2 
	.byte	W24
mus_vs_gym_leader_12_B1:
@ 005   ----------------------------------------
	.byte		N23   , Gn2 , v076
	.byte	W24
	.byte		        Fn2 
	.byte	W24
	.byte		N17   , Gn2 
	.byte	W18
	.byte		N05   , Cn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
@ 006   ----------------------------------------
	.byte		N32   , Gn2 , v076, gtp3
	.byte	W36
	.byte		N05   , As2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cn3 
	.byte	W12
	.byte		N28   , Gn2 , v076, gtp1
	.byte	W30
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
	.byte		N23   , Dn3 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		N11   , As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N32   , Gn2 , v076, gtp3
	.byte	W36
	.byte		N11   , En2 
	.byte	W12
	.byte		N28   , Cn3 , v076, gtp1
	.byte	W30
	.byte		N05   , En3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
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
	 .word	mus_vs_gym_leader_12_B1
mus_vs_gym_leader_12_B2:
@ 031   ----------------------------------------
	.byte		VOICE , 85
	.byte		        85
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 13 (Midi-Chn.13) ****************@

mus_vs_gym_leader_13:
	.byte	KEYSH , mus_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 121
	.byte		VOL   , 72*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W48
	.byte		N03   , En3 , v088
	.byte	W03
	.byte		        Fn3 
	.byte	W04
	.byte		        Fs3 
	.byte	W03
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        An3 
	.byte	W03
	.byte		        As3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Cn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Ds4 
	.byte	W03
	.byte		N04   , En4 
	.byte	W05
@ 003   ----------------------------------------
	.byte		N02   
	.byte	W02
	.byte		N03   , Ds4 
	.byte	W04
	.byte		N02   , Dn4 
	.byte	W02
	.byte		N03   , Cs4 
	.byte	W04
	.byte		N02   , Cn4 
	.byte	W02
	.byte		N03   , Bn3 
	.byte	W04
	.byte		N02   , As3 
	.byte	W02
	.byte		N03   , An3 
	.byte	W04
	.byte		N02   , Gs3 
	.byte	W02
	.byte		N03   , Gn3 
	.byte	W04
	.byte		N02   , Fs3 
	.byte	W02
	.byte		N03   , Fn3 
	.byte	W04
	.byte		N02   , En3 
	.byte	W02
	.byte		N03   , Ds3 
	.byte	W04
	.byte		N02   , Dn3 
	.byte	W02
	.byte		N03   , Cs3 
	.byte	W04
	.byte		N23   , Cn3 
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
	.byte		N02   , Fn4 
	.byte	W02
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Dn4 
	.byte	W02
	.byte		        Cs4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        As3 
	.byte	W02
	.byte		        An3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Fs3 
	.byte	W02
	.byte		N03   , Fn3 
	.byte	W04
	.byte		N11   , En3 
	.byte	W12
mus_vs_gym_leader_13_B1:
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
	 .word	mus_vs_gym_leader_13_B1
mus_vs_gym_leader_13_B2:
@ 031   ----------------------------------------
	.byte		VOICE , 121
	.byte		        121
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 14 (Midi-Chn.14) ****************@

mus_vs_gym_leader_14:
	.byte	KEYSH , mus_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		PAN   , c_v+39
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
mus_vs_gym_leader_14_B1:
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
	.byte		N05   , As3 , v076
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
	.byte		        Fn3 
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
	.byte		        Ds3 
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
	.byte		        Dn3 
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
	 .word	mus_vs_gym_leader_14_B1
mus_vs_gym_leader_14_B2:
@ 031   ----------------------------------------
	.byte		VOL   , 100*mus_vs_gym_leader_mvl/mxv
	.byte		        100*mus_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 15 (Midi-Chn.15) ****************@

mus_vs_gym_leader_15:
	.byte	KEYSH , mus_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 56
	.byte		VOL   , 127*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
mus_vs_gym_leader_15_B1:
@ 005   ----------------------------------------
mus_vs_gym_leader_15_005:
	.byte		N23   , Cn4 , v088
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		N17   , Dn4 
	.byte	W18
	.byte		N05   , Gn3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
mus_vs_gym_leader_15_006:
	.byte		N32   , En4 , v088, gtp3
	.byte	W36
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W12
	.byte		N28   , Cn4 , v088, gtp1
	.byte	W30
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_15_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_15_006
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
	.byte	W48
	.byte		N32   , Cn4 , v088, gtp3
	.byte	W36
	.byte		N05   
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 023   ----------------------------------------
	.byte		N44   , Cs4 , v088, gtp3
	.byte	W48
	.byte		        Ds4 , v088, gtp3
	.byte	W48
@ 024   ----------------------------------------
	.byte		TIE   , Fn4 
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 027   ----------------------------------------
	.byte		N44   , Cn3 , v088, gtp3
	.byte	W48
	.byte		N23   , As2 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
@ 028   ----------------------------------------
	.byte		N44   , Gn2 , v088, gtp3
	.byte	W48
	.byte		        Cn3 , v088, gtp3
	.byte	W48
@ 029   ----------------------------------------
	.byte		        Cs3 , v088, gtp3
	.byte	W48
	.byte		N23   , As2 
	.byte	W24
	.byte		N17   , Cs3 
	.byte	W18
	.byte		N05   , En3 
	.byte	W06
@ 030   ----------------------------------------
	.byte		N44   , Cn3 , v088, gtp3
	.byte	W48
	.byte		        En3 , v088, gtp3
	.byte	W48
	.byte	GOTO
	 .word	mus_vs_gym_leader_15_B1
mus_vs_gym_leader_15_B2:
@ 031   ----------------------------------------
	.byte		VOICE , 56
	.byte		        56
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 16 (Midi-Chn.16) ****************@

mus_vs_gym_leader_16:
	.byte	KEYSH , mus_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 124*mus_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
mus_vs_gym_leader_16_B1:
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte		N22   , Fn4 , v076
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
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte		VOICE , 29
	.byte		N02   , Gn2 , v064
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
	.byte		        Dn2 
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
	.byte	W78
	.byte		N02   , Fn1 
	.byte	W12
	.byte		N02   
	.byte	W06
@ 016   ----------------------------------------
	.byte		N08   , Gn1 
	.byte	W18
	.byte		N02   
	.byte	W42
	.byte		        En1 
	.byte	W06
	.byte		        Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W06
	.byte		N05   , Gn1 
	.byte	W12
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte		VOICE , 1
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W12
	.byte		N17   , Cs3 , v076
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
	.byte		N05   
	.byte		N05   , As5 
	.byte	W06
@ 024   ----------------------------------------
	.byte		N17   , Fn5 
	.byte		N17   , As5 
	.byte	W18
	.byte		N05   , Fn5 
	.byte		N05   , As5 
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
	 .word	mus_vs_gym_leader_16_B1
mus_vs_gym_leader_16_B2:
@ 031   ----------------------------------------
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_vs_gym_leader:
	.byte	16	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_vs_gym_leader_pri	@ Priority
	.byte	mus_vs_gym_leader_rev	@ Reverb.

	.word	mus_vs_gym_leader_grp

	.word	mus_vs_gym_leader_1
	.word	mus_vs_gym_leader_2
	.word	mus_vs_gym_leader_3
	.word	mus_vs_gym_leader_4
	.word	mus_vs_gym_leader_5
	.word	mus_vs_gym_leader_6
	.word	mus_vs_gym_leader_7
	.word	mus_vs_gym_leader_8
	.word	mus_vs_gym_leader_9
	.word	mus_vs_gym_leader_10
	.word	mus_vs_gym_leader_11
	.word	mus_vs_gym_leader_12
	.word	mus_vs_gym_leader_13
	.word	mus_vs_gym_leader_14
	.word	mus_vs_gym_leader_15
	.word	mus_vs_gym_leader_16

	.end
