	.include "MPlayDef.s"

	.equ	mus_omokage_grp, voicegroup_omokage
	.equ	mus_omokage_pri, 0
	.equ	mus_omokage_rev, reverb_set+50
	.equ	mus_omokage_mvl, 100
	.equ	mus_omokage_key, 0
	.equ	mus_omokage_tbs, 1
	.equ	mus_omokage_exg, 1
	.equ	mus_omokage_cmp, 1

	.section .rodata
	.global	mus_omokage
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_omokage_1:
	.byte	KEYSH , mus_omokage_key+0
mus_omokage_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 110*mus_omokage_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_omokage_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
@ 001   ----------------------------------------
	.byte		N21   , Gs1 , v096
	.byte	W24
	.byte		N10   , Ds2 
	.byte	W24
	.byte		N21   , Gn1 
	.byte	W24
	.byte		N10   , Dn2 
	.byte	W24
@ 002   ----------------------------------------
	.byte		N21   , Cn2 
	.byte	W24
	.byte		N10   , Gn2 
	.byte	W48
	.byte		        Fn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 003   ----------------------------------------
	.byte	W64
	.byte		N15   , Gs1 
	.byte	W15
	.byte		N16   
	.byte	W17
@ 004   ----------------------------------------
	.byte	W06
	.byte		        Gs2 
	.byte	W18
	.byte		N24   , Gs1 
	.byte	W12
	.byte		N10   , Gs2 
	.byte	W12
	.byte		N21   , Gn1 
	.byte	W24
	.byte		N21   
	.byte	W24
@ 005   ----------------------------------------
mus_omokage_1_005:
	.byte		N21   , Cn2 , v096
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		        As1 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
mus_omokage_1_006:
	.byte		N21   , Gs1 , v096
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
	.byte		        Cn2 
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W15
	.byte		N16   , As1 
	.byte	W17
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_1_006
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_1_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_1_006
@ 011   ----------------------------------------
	.byte		N21   , Cn2 , v096
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		N10   , As1 
	.byte	W24
	.byte		N21   
	.byte	W24
@ 012   ----------------------------------------
mus_omokage_1_012:
	.byte	W24
	.byte		N10   , Ds2 , v096
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N21   
	.byte	W24
	.byte		N10   , Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_omokage_1_013:
	.byte		N21   , Gs1 , v096
	.byte	W24
	.byte		N10   , Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W36
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte		N21   , Gn1 
	.byte	W24
	.byte		N10   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N21   
	.byte	W24
	.byte		N10   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 015   ----------------------------------------
	.byte	W24
	.byte		        Dn2 
	.byte	W40
	.byte		N15   , Gn1 , v084
	.byte	W15
	.byte		N16   
	.byte	W17
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_1_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_1_013
@ 018   ----------------------------------------
mus_omokage_1_018:
	.byte		N21   , Gn1 , v096
	.byte	W24
	.byte		N10   , Dn2 
	.byte	W24
	.byte		N21   , Gn1 
	.byte	W24
	.byte		N10   , Dn2 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_1_018
@ 020   ----------------------------------------
	.byte		N21   , Gn1 , v096
	.byte	W12
	.byte		N10   , Bn1 , v084
	.byte	W12
	.byte		        Dn2 , v096
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N21   
	.byte	W12
	.byte		N10   , Bn1 , v124
	.byte	W12
	.byte		        Dn2 , v096
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 021   ----------------------------------------
	.byte	W12
	.byte		N03   , Gn2 
	.byte	W12
	.byte		N10   , Fn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
@ 022   ----------------------------------------
mus_omokage_1_022:
	.byte		N07   , Gs1 , v096
	.byte	W24
	.byte		N21   
	.byte	W36
	.byte		N12   , Bn1 , v084
	.byte	W12
	.byte		N10   , Dn2 , v096
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
mus_omokage_1_023:
	.byte	W24
	.byte		N10   , Gn2 , v096
	.byte	W12
	.byte		        Cn2 
	.byte	W36
	.byte		        Gn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
mus_omokage_1_024:
	.byte	W24
	.byte		N10   , Ds2 , v096
	.byte	W12
	.byte		        Gs1 
	.byte	W36
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_omokage_1_025:
	.byte		N21   , Cn2 , v096
	.byte	W24
	.byte		N10   , Gn2 
	.byte	W12
	.byte		N24   , Cn2 , v096, gtp3
	.byte	W28
	.byte		N15   
	.byte	W15
	.byte		N16   , As1 
	.byte	W17
	.byte	PEND
@ 026   ----------------------------------------
mus_omokage_1_026:
	.byte		N07   , Gs1 , v096
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N10   
	.byte	W24
	.byte		N12   , Bn1 , v084
	.byte	W12
	.byte		N10   , Dn2 , v096
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_omokage_1_027:
	.byte	W24
	.byte		N10   , Gn2 , v096
	.byte	W12
	.byte		        Cn2 
	.byte	W36
	.byte		        Fn2 , v072
	.byte	W12
	.byte		        As1 , v084
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_omokage_1_028:
	.byte		N21   , Gs1 , v092
	.byte	W24
	.byte		N10   , Ds2 , v104
	.byte	W12
	.byte		        Gs1 , v112
	.byte	W06
	.byte		N54   , Bn1 , v084
	.byte	W30
	.byte		N10   , Dn2 , v124
	.byte	W24
	.byte	PEND
@ 029   ----------------------------------------
	.byte		N21   , Gn1 , v096
	.byte	W24
	.byte		N10   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N19   , Cn2 
	.byte	W19
	.byte		N16   , As1 
	.byte	W17
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_1_022
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_1_023
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_1_024
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_1_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_1_026
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_1_027
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_1_028
@ 037   ----------------------------------------
	.byte		N05   , Gn1 , v096
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N21   
	.byte	W12
	.byte		N32   , Cn2 , v096, gtp1
	.byte	W36
@ 038   ----------------------------------------
	.byte	W18
	.byte		N21   , Ds2 
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		N10   , Gn1 
	.byte	W12
	.byte		N21   , Cn1 
	.byte	W21
	.byte	GOTO
	 .word	mus_omokage_1_B1
mus_omokage_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_omokage_2:
	.byte	KEYSH , mus_omokage_key+0
mus_omokage_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 48*mus_omokage_mvl/mxv
	.byte		PAN   , c_v-12
	.byte	W24
@ 001   ----------------------------------------
	.byte		N21   , Ds3 , v056
	.byte	W24
	.byte		N10   , Gs2 
	.byte		N21   , Gn4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		N10   , Gn2 
	.byte		N21   , Dn4 
	.byte	W24
@ 002   ----------------------------------------
	.byte		        Cn4 
	.byte	W24
	.byte		N10   , Cn3 
	.byte		N72   , Dn4 
	.byte	W48
	.byte		N10   , As2 
	.byte		N10   , Dn3 
	.byte	W12
	.byte		N76   , Ds3 
	.byte	W12
@ 003   ----------------------------------------
	.byte	W36
	.byte		N28   , Cn3 
	.byte	W28
	.byte		N15   , Gs2 
	.byte		N15   , Cn4 
	.byte	W15
	.byte		N16   , Gs2 
	.byte		N30   , Cn4 , v056, gtp1
	.byte	W17
@ 004   ----------------------------------------
	.byte	W06
	.byte		N16   , Cn3 
	.byte	W18
	.byte		N10   , Gs2 
	.byte		N10   , Cn3 
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N24   , Bn2 , v048
	.byte	W24
	.byte		        Bn1 
	.byte		N10   , Dn2 , v056
	.byte	W24
@ 005   ----------------------------------------
mus_omokage_2_005:
	.byte		N21   , Ds2 , v056
	.byte		N21   , Gn2 
	.byte	W24
	.byte		        Ds2 
	.byte	W24
	.byte		N21   
	.byte		N21   , Ds4 
	.byte	W24
	.byte		        Dn2 
	.byte		N10   , Gn2 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
mus_omokage_2_006:
	.byte		N21   , Cn2 , v056
	.byte		N05   , Cn4 
	.byte	W06
	.byte		N16   , Cn3 
	.byte		N16   , Ds3 
	.byte	W18
	.byte		N21   , Cn2 
	.byte		N21   , Ds2 
	.byte	W24
	.byte		N23   , Bn1 , v048
	.byte		N21   , Dn2 , v056
	.byte	W24
	.byte		N24   , Bn1 , v048
	.byte		N21   , Dn2 , v056
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
	.byte		        Ds2 
	.byte		N21   , Gn2 
	.byte	W24
	.byte		        Ds2 
	.byte	W24
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte		N15   , Ds3 
	.byte	W15
	.byte		N16   , Ds2 
	.byte		N16   , Ds3 
	.byte	W17
@ 008   ----------------------------------------
	.byte		N21   , Cn2 
	.byte	W24
	.byte		N21   
	.byte		N21   , Ds2 
	.byte	W24
	.byte		N23   , Bn1 , v048
	.byte		N21   , Dn2 , v056
	.byte	W24
	.byte		N24   , Bn1 , v048
	.byte		N21   , Dn2 , v056
	.byte	W24
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_2_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_2_006
@ 011   ----------------------------------------
	.byte		N21   , Ds2 , v056
	.byte		N21   , Dn3 
	.byte	W24
	.byte		        Ds2 
	.byte		N21   , Ds3 
	.byte	W24
	.byte		        Ds2 
	.byte		N21   , Dn3 
	.byte	W24
	.byte		N10   , Ds2 
	.byte		N21   , Cn3 
	.byte	W24
@ 012   ----------------------------------------
mus_omokage_2_012:
	.byte	W24
	.byte		N10   , Gs2 , v056
	.byte	W24
	.byte		N17   , Cn3 
	.byte		N17   , Ds3 
	.byte	W18
	.byte		N21   , Cn3 
	.byte		N21   , Ds3 
	.byte	W30
	.byte	PEND
@ 013   ----------------------------------------
mus_omokage_2_013:
	.byte	W24
	.byte		N10   , Gs2 , v056
	.byte		N17   , Ds3 
	.byte	W18
	.byte		N21   , Cn3 
	.byte		N21   , Ds3 
	.byte	W30
	.byte		N10   , Gs2 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
	.byte		N32   , As2 
	.byte	W72
	.byte		N10   , Gn2 
	.byte	W24
@ 015   ----------------------------------------
	.byte	W24
	.byte		N10   
	.byte	W40
	.byte		N15   , Gn2 , v048
	.byte		N15   , Ds3 , v056
	.byte	W15
	.byte		N16   , Gn2 , v048
	.byte		N16   , Cn3 , v056
	.byte	W17
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_2_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_2_013
@ 018   ----------------------------------------
	.byte		N23   , Bn2 , v048
	.byte	W24
	.byte		N10   , Gn2 , v056
	.byte		N23   , Bn2 , v048
	.byte	W24
	.byte		N16   
	.byte	W16
	.byte		N15   , Dn3 
	.byte	W15
	.byte		N16   , Cn3 
	.byte	W17
@ 019   ----------------------------------------
	.byte		N23   , Bn2 
	.byte		N21   , Dn3 , v056
	.byte	W24
	.byte		N10   , Gn2 
	.byte		N23   , Bn2 , v048
	.byte	W24
	.byte		N16   
	.byte	W16
	.byte		N15   , Dn3 
	.byte	W15
	.byte		N16   , Cn3 
	.byte	W17
@ 020   ----------------------------------------
	.byte		N10   , Bn2 , v056
	.byte		N10   , Dn3 
	.byte	W12
	.byte		        Dn3 , v048
	.byte	W12
	.byte		        Gn2 , v056
	.byte		N10   , Dn3 
	.byte	W12
	.byte		        Bn2 , v060
	.byte		N10   , Dn3 
	.byte	W12
	.byte		        Bn2 , v068
	.byte		N10   , Dn3 
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Gn2 , v056
	.byte		N10   , Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N10   , Dn3 
	.byte	W12
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
mus_omokage_2_022:
	.byte		N07   , Ds2 , v056
	.byte		N21   , Ds3 
	.byte	W60
	.byte		N10   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
mus_omokage_2_023:
	.byte	W24
	.byte		N21   , Cn3 , v056
	.byte	W48
	.byte		N10   
	.byte		N21   , Gn3 
	.byte	W24
	.byte	PEND
@ 024   ----------------------------------------
mus_omokage_2_024:
	.byte	W24
	.byte		N10   , Gs2 , v056
	.byte		N10   , Cn3 
	.byte	W48
	.byte		        Gn2 
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
mus_omokage_2_025:
	.byte	W24
	.byte		N10   , Cn3 , v056
	.byte	W40
	.byte		N15   , Ds2 
	.byte	W15
	.byte		N15   
	.byte	W17
	.byte	PEND
@ 026   ----------------------------------------
mus_omokage_2_026:
	.byte		N07   , Ds2 , v056
	.byte		N07   , Gs2 
	.byte	W60
	.byte		N10   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
mus_omokage_2_027:
	.byte	W24
	.byte		N10   , Cn3 , v056
	.byte	W48
	.byte		        As2 , v044
	.byte		N21   , Gn3 , v056
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
mus_omokage_2_028:
	.byte		N32   , Cn3 , v056
	.byte		N10   , Ds3 
	.byte	W42
	.byte		N16   , Dn3 
	.byte	W54
	.byte	PEND
@ 029   ----------------------------------------
	.byte		N05   
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N10   , Dn3 
	.byte		N10   , Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte		N10   , Gn3 
	.byte	W18
	.byte		        Dn3 
	.byte		N10   , Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte		N10   , Gn3 
	.byte	W12
	.byte		N19   , Ds2 
	.byte		N32   , Gn3 , v056, gtp1
	.byte	W19
	.byte		N15   , Ds2 
	.byte	W17
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_2_022
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_2_023
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_2_024
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_2_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_2_026
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_2_027
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_2_028
@ 037   ----------------------------------------
	.byte		N05   , Gn2 , v056
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N10   , Gn2 
	.byte		N10   , Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N10   , Gn3 
	.byte	W12
	.byte		N05   , Gn2 
	.byte	W06
	.byte		N10   
	.byte		N10   , Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N10   , Gn3 
	.byte	W12
	.byte		N32   , Cn3 , v056, gtp1
	.byte		N32   , Gn3 , v056, gtp1
	.byte	W36
@ 038   ----------------------------------------
	.byte	W36
	.byte		N21   , As3 
	.byte	W12
	.byte		        Cn2 
	.byte		N21   , Cn4 
	.byte	W21
	.byte	GOTO
	 .word	mus_omokage_2_B1
mus_omokage_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_omokage_3:
	.byte	KEYSH , mus_omokage_key+0
mus_omokage_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 106*mus_omokage_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N05   , Cn3 , v092
	.byte	W06
	.byte		        Dn3 , v084
	.byte	W06
	.byte		        Ds3 , v112
	.byte	W06
	.byte		        Gn3 , v092
	.byte	W06
@ 001   ----------------------------------------
	.byte		N21   , Cn4 
	.byte	W24
	.byte		        Ds5 
	.byte	W12
	.byte		N10   , Gs2 
	.byte	W12
	.byte		N21   , Dn5 
	.byte	W24
	.byte		        As4 
	.byte	W12
	.byte		N10   , Gn2 
	.byte	W12
@ 002   ----------------------------------------
	.byte		N21   , Gs4 
	.byte	W24
	.byte		N42   , As4 , v092, gtp1
	.byte	W12
	.byte		N10   , Cn3 
	.byte	W12
	.byte		N21   , As2 
	.byte	W24
	.byte		N10   , As3 
	.byte	W12
	.byte		N76   , Cn4 
	.byte	W12
@ 003   ----------------------------------------
	.byte		N10   , Gs2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N28   , Ds3 
	.byte	W28
	.byte		N15   , Ds4 
	.byte	W15
	.byte		N30   , Ds4 , v092, gtp1
	.byte	W17
@ 004   ----------------------------------------
	.byte		N15   , Gs2 
	.byte	W06
	.byte		N16   , Ds3 
	.byte	W18
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N10   
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N10   , Fn3 
	.byte	W06
	.byte		N21   , Gn2 
	.byte	W06
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N10   , Gn3 
	.byte	W12
	.byte		N07   , Gn4 
	.byte	W07
	.byte		N08   , Fn4 
	.byte	W09
	.byte		N07   , Ds4 
	.byte	W08
	.byte		        Fn4 
	.byte	W07
	.byte		N08   , Ds4 
	.byte	W09
	.byte		N07   , Dn4 
	.byte	W08
@ 006   ----------------------------------------
mus_omokage_3_006:
	.byte		N05   , Ds4 , v092
	.byte	W06
	.byte		N16   , Gn3 
	.byte	W18
	.byte		N10   , Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N10   , Dn3 
	.byte	W06
	.byte		N21   , Gn2 
	.byte	W06
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N28   , Ds3 
	.byte	W12
	.byte		N16   , Gn2 
	.byte	W16
	.byte		N15   , Gn3 
	.byte	W15
	.byte		N16   
	.byte	W17
@ 008   ----------------------------------------
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 009   ----------------------------------------
	.byte		N10   
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N10   , Fn3 
	.byte	W06
	.byte		N21   , Gn2 
	.byte	W06
	.byte		N05   , As3 
	.byte	W06
	.byte		N10   , Gn3 
	.byte	W12
	.byte		N07   , Gn4 
	.byte	W07
	.byte		N08   , Fn4 
	.byte	W09
	.byte		N07   , Ds4 
	.byte	W08
	.byte		        Fn4 
	.byte	W07
	.byte		N08   , Ds4 
	.byte	W09
	.byte		N07   , Dn4 
	.byte	W08
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_3_006
@ 011   ----------------------------------------
	.byte		N21   , Dn4 , v092
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
@ 012   ----------------------------------------
mus_omokage_3_012:
	.byte		N21   , Gs2 , v092
	.byte	W12
	.byte		N10   , Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N05   , Fn3 
	.byte	W06
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N10   , Gs2 
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_omokage_3_013:
	.byte		N10   , Cn3 , v092
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N05   , Fn3 
	.byte	W06
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N21   , Gs2 
	.byte	W12
	.byte		N10   , Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte		N21   , Dn3 
	.byte	W24
	.byte		N10   , Gn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N18   , As2 
	.byte	W06
@ 015   ----------------------------------------
	.byte		N21   , Gn2 
	.byte	W12
	.byte		N06   , Cn3 , v080
	.byte	W06
	.byte		N05   , As2 
	.byte	W06
	.byte		N40   , As2 , v092
	.byte	W12
	.byte		N10   , Gn2 
	.byte	W12
	.byte		N16   
	.byte	W16
	.byte		N15   , Gn3 
	.byte	W15
	.byte		N16   , Fs3 , v080
	.byte	W17
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_3_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_3_013
@ 018   ----------------------------------------
	.byte		N21   , Dn3 , v092
	.byte	W24
	.byte		N21   
	.byte	W12
	.byte		N10   , Gn2 
	.byte	W12
	.byte		N16   , Dn3 
	.byte	W16
	.byte		N15   , As3 , v080
	.byte	W08
	.byte		N10   , Gn2 , v092
	.byte	W07
	.byte		N16   , Gs3 , v080
	.byte	W05
	.byte		N10   , Gn2 , v092
	.byte	W12
@ 019   ----------------------------------------
	.byte		N64   , Gn3 
	.byte	W24
	.byte		N21   , Dn3 
	.byte	W12
	.byte		N10   , Gn2 
	.byte	W12
	.byte		N16   , Dn3 
	.byte	W16
	.byte		N15   , As3 , v080
	.byte	W08
	.byte		N10   , Gn2 , v092
	.byte	W07
	.byte		N16   , Gs3 , v080
	.byte	W05
	.byte		N10   , Gn2 , v092
	.byte	W12
@ 020   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Gn3 , v080
	.byte	W12
	.byte		        Gn3 , v092
	.byte	W12
	.byte		        Gn3 , v100
	.byte	W12
	.byte		        Gn3 , v112
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Gn3 , v092
	.byte	W12
	.byte		N10   
	.byte	W12
@ 021   ----------------------------------------
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		N10   , Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 022   ----------------------------------------
mus_omokage_3_022:
	.byte		N21   , Gn3 , v092
	.byte	W24
	.byte		        Ds3 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N16   
	.byte	W06
	.byte		N21   , Gn2 
	.byte	W12
	.byte		N10   , Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N05   , Gs3 
	.byte	W06
	.byte		N40   , Gn3 
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
mus_omokage_3_023:
	.byte		N21   , Cn3 , v092
	.byte	W24
	.byte		        Ds3 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N16   
	.byte	W06
	.byte		N21   , Cn3 
	.byte	W12
	.byte		N10   , Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N05   , Gs3 
	.byte	W06
	.byte		N40   , Gn3 
	.byte	W06
	.byte	PEND
@ 024   ----------------------------------------
mus_omokage_3_024:
	.byte		N21   , Gs2 , v092
	.byte	W24
	.byte		N10   , Ds3 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N16   
	.byte	W06
	.byte		N21   , Gn2 
	.byte	W12
	.byte		N10   , Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_omokage_3_025:
	.byte		N21   , Ds3 , v092
	.byte	W24
	.byte		N10   , Fn3 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N48   , Gn3 , v092, gtp1
	.byte	W22
	.byte		N15   , Gn2 
	.byte	W15
	.byte		N16   
	.byte	W17
	.byte	PEND
@ 026   ----------------------------------------
mus_omokage_3_026:
	.byte		N32   , Gn3 , v092
	.byte	W24
	.byte		N10   , Ds3 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N16   
	.byte	W06
	.byte		N21   , Gn2 
	.byte	W12
	.byte		N10   , Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N05   , Gs3 
	.byte	W06
	.byte		N40   , Gn3 
	.byte	W06
	.byte	PEND
@ 027   ----------------------------------------
mus_omokage_3_027:
	.byte		N21   , Cn3 , v092
	.byte	W24
	.byte		N10   , Ds3 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N16   
	.byte	W06
	.byte		N21   , As2 
	.byte	W12
	.byte		N10   , Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_omokage_3_028:
	.byte		N10   , Gn3 , v092
	.byte	W24
	.byte		        Gs2 , v096
	.byte	W12
	.byte		N05   , Gn3 , v092
	.byte	W06
	.byte		N48   , Fn3 , v092, gtp1
	.byte	W06
	.byte		N21   , Gn2 , v112
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		        Gn2 , v092
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte		N05   , As3 
	.byte	W06
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N10   , As3 
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N32   , Cn4 , v092, gtp1
	.byte	W19
	.byte		N16   , Gn2 
	.byte	W17
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_3_022
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_3_023
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_3_024
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_3_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_3_026
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_3_027
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_omokage_3_028
@ 037   ----------------------------------------
	.byte		N05   , As3 , v092
	.byte	W06
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N10   , As3 
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N32   , Cn4 , v092, gtp1
	.byte	W36
@ 038   ----------------------------------------
	.byte	W18
	.byte		N05   , Ds5 
	.byte	W06
	.byte		N10   , Dn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N21   , Cn5 
	.byte	W21
	.byte	GOTO
	 .word	mus_omokage_3_B1
mus_omokage_3_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_omokage:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_omokage_pri	@ Priority
	.byte	mus_omokage_rev	@ Reverb.

	.word	mus_omokage_grp

	.word	mus_omokage_1
	.word	mus_omokage_2
	.word	mus_omokage_3

	.end
