	.include "MPlayDef.s"

	.equ	mus_vs_wild_grp, voicegroup_vs_wild
	.equ	mus_vs_wild_pri, 1
	.equ	mus_vs_wild_rev, reverb_set+50
	.equ	mus_vs_wild_mvl, 80
	.equ	mus_vs_wild_key, 0
	.equ	mus_vs_wild_tbs, 1
	.equ	mus_vs_wild_exg, 1
	.equ	mus_vs_wild_cmp, 1

	.section .rodata
	.global	mus_vs_wild
	.align	2

@**************** Track 1 (Midi-Chn.2) ****************@

mus_vs_wild_1:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 194*mus_vs_wild_tbs/2
	.byte		VOICE , 59
	.byte		VOL   , 127*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N92   , Gn3 , v076, gtp3
	.byte	W96
@ 002   ----------------------------------------
	.byte		N44   , As3 , v076, gtp3
	.byte	W48
	.byte		        Bn3 , v076, gtp3
	.byte	W48
@ 003   ----------------------------------------
mus_vs_wild_1_003:
	.byte		N17   , Cn4 , v088
	.byte	W36
	.byte		        Gn3 
	.byte	W36
	.byte		N11   , Cn4 
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
mus_vs_wild_1_004:
	.byte		N17   , Cs4 , v088
	.byte	W36
	.byte		        Ds4 
	.byte	W36
	.byte		N11   , Cs4 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_003
@ 006   ----------------------------------------
mus_vs_wild_1_006:
	.byte		N17   , Cs4 , v088
	.byte	W36
	.byte		        Ds4 
	.byte	W36
	.byte		N23   , Fn4 
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_006
mus_vs_wild_1_B1:
@ 011   ----------------------------------------
mus_vs_wild_1_011:
	.byte		N32   , Cn4 , v088, gtp3
	.byte	W36
	.byte		        Dn4 , v088, gtp3
	.byte	W36
	.byte		N23   , Gn4 
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 013   ----------------------------------------
mus_vs_wild_1_013:
	.byte		N44   , As3 , v088, gtp3
	.byte	W48
	.byte		        Dn4 , v088, gtp3
	.byte	W48
	.byte	PEND
@ 014   ----------------------------------------
	.byte		N32   , Fn4 , v088, gtp3
	.byte	W36
	.byte		N23   , An4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_011
@ 016   ----------------------------------------
	.byte		N11   , Fn4 , v088
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N11   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_013
@ 018   ----------------------------------------
	.byte		N32   , Fn4 , v088, gtp3
	.byte	W36
	.byte		N23   , As4 
	.byte	W24
	.byte		N11   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 019   ----------------------------------------
mus_vs_wild_1_019:
	.byte		N68   , En4 , v088, gtp3
	.byte	W72
	.byte		N23   , Cn4 
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
	.byte		N68   , Gn4 , v088, gtp3
	.byte	W96
@ 021   ----------------------------------------
	.byte		        Dn4 , v088, gtp3
	.byte	W72
	.byte		N23   , As3 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N68   , Fn4 , v088, gtp3
	.byte	W96
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_019
@ 024   ----------------------------------------
	.byte		TIE   , Gn4 , v088
	.byte	W96
@ 025   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte		N17   , Dn4 , v076
	.byte	W36
	.byte		        As3 
	.byte	W36
	.byte		N11   , Dn4 
	.byte	W24
@ 028   ----------------------------------------
	.byte	W12
	.byte		N17   , As3 
	.byte	W36
	.byte		N11   , Dn4 
	.byte	W24
	.byte		        As3 
	.byte	W24
@ 029   ----------------------------------------
mus_vs_wild_1_029:
	.byte		N17   , Cn4 , v076
	.byte	W36
	.byte		        Gn3 
	.byte	W36
	.byte		N11   , Cn4 
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
	.byte	W12
	.byte		N17   , Gn3 
	.byte	W36
	.byte		N11   , Cn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
@ 031   ----------------------------------------
	.byte		N17   , Cs4 
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		N11   , Cs4 
	.byte	W24
@ 032   ----------------------------------------
	.byte	W12
	.byte		N17   , Gs3 
	.byte	W36
	.byte		N11   , Cs4 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_029
@ 034   ----------------------------------------
	.byte	W12
	.byte		N17   , Gn3 , v076
	.byte	W36
	.byte		N11   , Cn4 
	.byte	W24
	.byte		N23   , En4 
	.byte	W24
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_003
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_003
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_006
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_003
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_006
	.byte	GOTO
	 .word	mus_vs_wild_1_B1
mus_vs_wild_1_B2:
@ 043   ----------------------------------------
	.byte		VOICE , 59
	.byte		        59
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_vs_wild_2:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		VOL   , 63*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N92   , Dn3 , v076, gtp3
	.byte	W96
@ 001   ----------------------------------------
	.byte		N44   , Fn3 , v076, gtp3
	.byte	W48
	.byte		        Fn3 , v076, gtp3
	.byte	W48
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
mus_vs_wild_2_B1:
@ 010   ----------------------------------------
mus_vs_wild_2_010:
	.byte		N32   , Gn3 , v076, gtp3
	.byte	W36
	.byte		        Gn3 , v076, gtp3
	.byte	W36
	.byte		N23   , En4 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 012   ----------------------------------------
mus_vs_wild_2_012:
	.byte		N44   , Fn3 , v076, gtp3
	.byte	W48
	.byte		        As3 , v076, gtp3
	.byte	W48
	.byte	PEND
@ 013   ----------------------------------------
	.byte		N32   , Dn4 , v076, gtp3
	.byte	W36
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_010
@ 015   ----------------------------------------
	.byte		N11   , Cn4 , v076
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_012
@ 017   ----------------------------------------
	.byte		N32   , Dn4 , v076, gtp3
	.byte	W36
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N11   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 018   ----------------------------------------
mus_vs_wild_2_018:
	.byte		N68   , Cn4 , v076, gtp3
	.byte	W72
	.byte		N23   , Gn3 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
	.byte		N68   , En4 , v076, gtp3
	.byte	W96
@ 020   ----------------------------------------
	.byte		        As3 , v076, gtp3
	.byte	W72
	.byte		N23   , Fn3 
	.byte	W24
@ 021   ----------------------------------------
	.byte		N68   , Dn4 , v076, gtp3
	.byte	W96
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_018
@ 023   ----------------------------------------
	.byte		TIE   , En4 , v076
	.byte	W96
@ 024   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte		N17   , As3 
	.byte	W36
	.byte		        Fn3 
	.byte	W36
	.byte		N11   , As3 
	.byte	W24
@ 027   ----------------------------------------
	.byte	W12
	.byte		N17   , Fn3 
	.byte	W36
	.byte		N11   , As3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
@ 028   ----------------------------------------
mus_vs_wild_2_028:
	.byte		N17   , Gn3 , v076
	.byte	W36
	.byte		        En3 
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W24
	.byte	PEND
@ 029   ----------------------------------------
	.byte	W12
	.byte		N17   , En3 
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
@ 030   ----------------------------------------
mus_vs_wild_2_030:
	.byte		N17   , Gs3 , v076
	.byte	W36
	.byte		        Fn3 
	.byte	W36
	.byte		N11   , Gs3 
	.byte	W24
	.byte	PEND
@ 031   ----------------------------------------
	.byte	W12
	.byte		N17   , Fn3 
	.byte	W36
	.byte		N11   , Gs3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_028
@ 033   ----------------------------------------
	.byte	W12
	.byte		N17   , En3 , v076
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W24
	.byte		N23   , Cn4 
	.byte	W24
@ 034   ----------------------------------------
mus_vs_wild_2_034:
	.byte		N17   , Gn3 , v076
	.byte	W36
	.byte		        Cn3 
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_030
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_034
@ 037   ----------------------------------------
mus_vs_wild_2_037:
	.byte		N17   , Gs3 , v076
	.byte	W36
	.byte		        As3 
	.byte	W36
	.byte		N23   , Bn3 
	.byte	W24
	.byte	PEND
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_034
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_030
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_034
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_037
	.byte	GOTO
	 .word	mus_vs_wild_2_B1
mus_vs_wild_2_B2:
@ 042   ----------------------------------------
	.byte		VOICE , 80
	.byte		        80
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.4) ****************@

mus_vs_wild_3:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 47
	.byte		VOL   , 127*mus_vs_wild_mvl/mxv
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
	.byte		N23   , Cn2 , v076
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W48
@ 002   ----------------------------------------
mus_vs_wild_3_002:
	.byte		N23   , Cn2 , v076
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W36
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
mus_vs_wild_3_B1:
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 025   ----------------------------------------
	.byte		N23   , Cn2 , v076
	.byte	W60
	.byte		N11   
	.byte	W36
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_002
	.byte	GOTO
	 .word	mus_vs_wild_3_B1
mus_vs_wild_3_B2:
@ 042   ----------------------------------------
	.byte		VOICE , 47
	.byte		        47
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.5) ****************@

mus_vs_wild_4:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 127*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N92   , Gn0 , v076, gtp3
	.byte	W96
@ 001   ----------------------------------------
	.byte		N44   , As0 , v076, gtp3
	.byte	W48
	.byte		        Bn0 , v076, gtp3
	.byte	W48
@ 002   ----------------------------------------
mus_vs_wild_4_002:
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N23   , Cs1 
	.byte	W24
	.byte		N11   , Cn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_vs_wild_4_003:
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N23   , En1 
	.byte	W24
	.byte		N11   , Cn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_002
@ 009   ----------------------------------------
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N23   , Fn1 
	.byte	W24
	.byte		N11   , Gn0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
mus_vs_wild_4_B1:
@ 010   ----------------------------------------
mus_vs_wild_4_010:
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N23   , Gn1 
	.byte	W24
	.byte		N11   , Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 012   ----------------------------------------
mus_vs_wild_4_012:
	.byte		N11   , As0 , v076
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_vs_wild_4_013:
	.byte		N11   , As0 , v076
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		N23   , Fn1 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_010
@ 015   ----------------------------------------
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N23   , Gn1 
	.byte	W24
	.byte		N11   , Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_013
@ 018   ----------------------------------------
	.byte		N11   , En1 , v076
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_010
@ 020   ----------------------------------------
	.byte		N11   , Dn1 , v076
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 021   ----------------------------------------
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		N23   , Fn1 
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
@ 022   ----------------------------------------
mus_vs_wild_4_022:
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W36
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_022
@ 025   ----------------------------------------
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 026   ----------------------------------------
	.byte		        Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 027   ----------------------------------------
	.byte		        Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 028   ----------------------------------------
mus_vs_wild_4_028:
	.byte		N11   , Gn1 , v076
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_028
@ 030   ----------------------------------------
mus_vs_wild_4_030:
	.byte		N11   , Gs1 , v076
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_030
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_028
@ 033   ----------------------------------------
	.byte		N11   , Gn1 , v076
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_010
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_010
@ 037   ----------------------------------------
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N23   , Gn1 
	.byte	W24
	.byte		N11   , Cs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_010
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_010
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_010
@ 041   ----------------------------------------
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N23   , Gn1 
	.byte	W24
	.byte		N11   , Cs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	GOTO
	 .word	mus_vs_wild_4_B1
mus_vs_wild_4_B2:
@ 042   ----------------------------------------
	.byte		VOICE , 33
	.byte		        33
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.6) ****************@

mus_vs_wild_5:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 84
	.byte		VOL   , 127*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N05   , Gn5 , v076
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N11   , Gn5 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N11   , Gn5 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N11   , Gn5 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N11   , Gn5 
	.byte	W12
@ 001   ----------------------------------------
	.byte		N05   
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N11   , Gn5 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N11   , Gn5 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N11   , Gn5 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N11   , Gn5 
	.byte	W12
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
mus_vs_wild_5_B1:
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
	.byte		N32   , En3 , v076, gtp3
	.byte	W36
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 025   ----------------------------------------
	.byte		N56   , Cn3 , v076, gtp3
	.byte	W60
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W24
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
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_vs_wild_5_B1
mus_vs_wild_5_B2:
@ 042   ----------------------------------------
	.byte		VOICE , 84
	.byte		        84
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.7) ****************@

mus_vs_wild_6:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 85
	.byte		VOL   , 127*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
mus_vs_wild_6_002:
	.byte		N17   , Cn2 , v064
	.byte	W36
	.byte		N17   
	.byte	W36
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
mus_vs_wild_6_003:
	.byte		N17   , Cs2 , v064
	.byte	W36
	.byte		        Ds2 
	.byte	W36
	.byte		N11   , Cs2 
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_002
@ 005   ----------------------------------------
mus_vs_wild_6_005:
	.byte		N17   , Cs2 , v064
	.byte	W36
	.byte		        Ds2 
	.byte	W36
	.byte		N23   , Fn2 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_005
mus_vs_wild_6_B1:
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
	.byte		N17   , Dn2 , v064
	.byte	W36
	.byte		N17   
	.byte	W36
	.byte		N11   
	.byte	W24
@ 027   ----------------------------------------
	.byte	W12
	.byte		N17   
	.byte	W36
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W24
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_002
@ 029   ----------------------------------------
	.byte	W12
	.byte		N17   , Cn2 , v064
	.byte	W36
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W24
@ 030   ----------------------------------------
	.byte		N17   , Cs2 
	.byte	W36
	.byte		N17   
	.byte	W36
	.byte		N11   
	.byte	W24
@ 031   ----------------------------------------
	.byte	W12
	.byte		N17   
	.byte	W36
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W24
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_002
@ 033   ----------------------------------------
	.byte	W12
	.byte		N17   , Cn2 , v064
	.byte	W36
	.byte		N11   
	.byte	W24
	.byte		N23   
	.byte	W24
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_003
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_002
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_005
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_005
	.byte	GOTO
	 .word	mus_vs_wild_6_B1
mus_vs_wild_6_B2:
@ 042   ----------------------------------------
	.byte		VOICE , 85
	.byte		        85
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 7 (Midi-Chn.8) ****************@

mus_vs_wild_7:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 24
	.byte		VOL   , 127*mus_vs_wild_mvl/mxv
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
mus_vs_wild_7_B1:
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
mus_vs_wild_7_018:
	.byte		N68   , En4 , v127, gtp3
	.byte	W72
	.byte		N23   , Cn4 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
	.byte		N92   , Gn4 , v127, gtp3
	.byte	W96
@ 020   ----------------------------------------
	.byte		N68   , Dn4 , v127, gtp3
	.byte	W72
	.byte		N23   , As3 
	.byte	W24
@ 021   ----------------------------------------
	.byte		N92   , Fn4 , v127, gtp3
	.byte	W96
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_7_018
@ 023   ----------------------------------------
	.byte		TIE   , Gn4 , v127
	.byte	W96
@ 024   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 025   ----------------------------------------
	.byte		N56   , Gn4 , v127, gtp3
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
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_vs_wild_7_B1
mus_vs_wild_7_B2:
@ 042   ----------------------------------------
	.byte		VOICE , 24
	.byte		        24
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 8 (Midi-Chn.9) ****************@

mus_vs_wild_8:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 81
	.byte		VOL   , 127*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v+63
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
mus_vs_wild_8_B1:
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
mus_vs_wild_8_024:
	.byte		N68   , Cn4 , v080, gtp3
	.byte	W72
	.byte		N23   , Gn3 
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
	.byte		N56   , En4 , v080, gtp3
	.byte	W96
@ 026   ----------------------------------------
	.byte		N44   , As3 , v080, gtp3
	.byte	W48
	.byte		        Dn4 , v080, gtp3
	.byte	W48
@ 027   ----------------------------------------
	.byte		N23   , As3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_024
@ 029   ----------------------------------------
	.byte		N56   , En4 , v080, gtp3
	.byte	W96
@ 030   ----------------------------------------
	.byte		N23   , Cs3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
@ 031   ----------------------------------------
	.byte		        As3 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
@ 032   ----------------------------------------
	.byte		        En3 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
@ 033   ----------------------------------------
	.byte		N44   , Gn3 , v080, gtp3
	.byte	W48
	.byte		        Cn4 , v080, gtp3
	.byte	W48
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_vs_wild_8_B1
mus_vs_wild_8_B2:
@ 042   ----------------------------------------
	.byte		VOICE , 81
	.byte		        81
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 9 (Midi-Chn.10) ****************@

mus_vs_wild_9:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_wild_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N96   , An2 , v076
	.byte	W96
@ 001   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N22   
	.byte	W24
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 002   ----------------------------------------
	.byte		N24   , An2 
	.byte	W24
	.byte		N11   , AnM2
	.byte	W12
	.byte		        Cn1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N11   , AnM2
	.byte	W24
@ 003   ----------------------------------------
	.byte		N12   , Cn1 
	.byte	W24
	.byte		N11   , AnM2
	.byte	W12
	.byte		        Cn1 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        AnM2
	.byte	W24
@ 004   ----------------------------------------
mus_vs_wild_9_004:
	.byte		N11   , Cn1 , v076
	.byte	W24
	.byte		        AnM2
	.byte	W12
	.byte		        Cn1 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        AnM2
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte		        Cn1 
	.byte	W24
	.byte		        AnM2
	.byte	W12
	.byte		        Cn1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N11   , AnM2
	.byte	W24
@ 006   ----------------------------------------
	.byte		N22   , Gn2 
	.byte	W24
	.byte		N11   , AnM2
	.byte	W12
	.byte		        Cn1 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        AnM2
	.byte	W24
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_9_004
@ 008   ----------------------------------------
	.byte		N12   , Cn1 , v076
	.byte	W24
	.byte		N11   , AnM2
	.byte	W12
	.byte		N12   , Cn1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N11   , AnM2
	.byte	W24
@ 009   ----------------------------------------
	.byte		N10   , Cn1 
	.byte	W24
	.byte		N11   , AnM2
	.byte	W12
	.byte		        Cn1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v064
	.byte	W12
	.byte		N11   
	.byte	W12
mus_vs_wild_9_B1:
@ 010   ----------------------------------------
	.byte		N22   , An2 , v076
	.byte	W24
	.byte		N12   , Dn1 , v064
	.byte	W24
	.byte		        Cn1 , v076
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   , Dn1 , v064
	.byte	W24
@ 011   ----------------------------------------
mus_vs_wild_9_011:
	.byte		N11   , Cn1 , v076
	.byte	W24
	.byte		N12   , Dn1 , v064
	.byte	W24
	.byte		        Cn1 , v076
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   , Dn1 , v064
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
	.byte		N11   , Cn1 , v076
	.byte	W24
	.byte		N12   , Dn1 , v064
	.byte	W24
	.byte		        Cn1 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v064
	.byte	W24
@ 013   ----------------------------------------
	.byte		        Cn1 , v076
	.byte	W24
	.byte		        Dn1 , v064
	.byte	W12
	.byte		N11   , Cn1 , v076
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v064
	.byte	W24
@ 014   ----------------------------------------
	.byte		N23   , Gn2 , v076
	.byte	W24
	.byte		N12   , Dn1 , v064
	.byte	W24
	.byte		        Cn1 , v076
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   , Dn1 , v064
	.byte	W24
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_9_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_9_011
@ 017   ----------------------------------------
	.byte		N11   , Cn1 , v076
	.byte	W24
	.byte		N12   , Dn1 , v064
	.byte	W12
	.byte		N11   , Cn1 , v076
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v064
	.byte	W24
@ 018   ----------------------------------------
	.byte		N24   , An2 , v076
	.byte	W24
	.byte		N12   , Dn1 , v064
	.byte	W24
	.byte		        Cn1 , v076
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   , Dn1 , v064
	.byte	W24
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_9_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_9_011
@ 021   ----------------------------------------
	.byte		N12   , Cn1 , v076
	.byte	W24
	.byte		        Dn1 , v064
	.byte	W24
	.byte		        Cn1 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v064
	.byte	W24
@ 022   ----------------------------------------
	.byte		N23   , An2 , v076
	.byte	W24
	.byte		N12   , Dn1 , v064
	.byte	W24
	.byte		        Cn1 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v064
	.byte	W24
@ 023   ----------------------------------------
	.byte		N11   , Cn1 , v076
	.byte	W24
	.byte		N12   , Dn1 , v064
	.byte	W24
	.byte		        Cn1 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v064
	.byte	W12
	.byte		N12   
	.byte	W12
@ 024   ----------------------------------------
	.byte		N24   , An2 , v076, gtp1
	.byte	W24
	.byte		N12   , Dn1 , v064
	.byte	W24
	.byte		        Cn1 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v064
	.byte	W24
@ 025   ----------------------------------------
	.byte		N11   , Cn1 , v076
	.byte	W24
	.byte		        Dn1 , v064
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Cn1 , v076
	.byte	W12
	.byte		N11   , Dn1 , v064
	.byte	W12
	.byte		N12   , Cn1 , v076
	.byte	W12
@ 026   ----------------------------------------
mus_vs_wild_9_026:
	.byte		N24   , An2 , v076, gtp2
	.byte	W24
	.byte		        An4 , v088
	.byte	W48
	.byte		        Fn2 
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
mus_vs_wild_9_027:
	.byte	W24
	.byte		N24   , An4 , v088
	.byte	W44
	.byte	W03
	.byte		        Fn2 
	.byte	W24
	.byte	W01
	.byte	PEND
@ 028   ----------------------------------------
mus_vs_wild_9_028:
	.byte	W24
	.byte		N24   , An4 , v088
	.byte	W48
	.byte		        Fn2 
	.byte	W24
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_9_027
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_9_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_9_028
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_9_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_9_028
@ 034   ----------------------------------------
	.byte		N24   , An2 , v076, gtp2
	.byte	W24
	.byte		N12   , Dn1 , v064
	.byte	W12
	.byte		        Cn1 , v076
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Dn1 , v064
	.byte	W24
@ 035   ----------------------------------------
	.byte		        Cn1 , v076
	.byte	W24
	.byte		        Dn1 , v064
	.byte	W12
	.byte		N11   , Cn1 , v076
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N12   , Dn1 , v064
	.byte	W24
@ 036   ----------------------------------------
	.byte		N10   , Cn1 , v076
	.byte	W24
	.byte		N12   , Dn1 , v064
	.byte	W12
	.byte		N11   , Cn1 , v076
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Dn1 , v064
	.byte	W24
@ 037   ----------------------------------------
	.byte		        Cn1 , v076
	.byte	W24
	.byte		        Dn1 , v064
	.byte	W12
	.byte		N10   , Cn1 , v076
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v064
	.byte	W24
@ 038   ----------------------------------------
	.byte		N23   , An2 , v076
	.byte	W24
	.byte		N12   , Dn1 , v064
	.byte	W12
	.byte		N11   , Cn1 , v076
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Dn1 , v064
	.byte	W24
@ 039   ----------------------------------------
	.byte		N11   , Cn1 , v076
	.byte	W24
	.byte		N12   , Dn1 , v064
	.byte	W12
	.byte		N11   , Cn1 , v076
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N12   , Dn1 , v064
	.byte	W24
@ 040   ----------------------------------------
	.byte		        Cn1 , v076
	.byte	W24
	.byte		        Dn1 , v064
	.byte	W12
	.byte		N11   , Cn1 , v076
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Dn1 , v064
	.byte	W24
@ 041   ----------------------------------------
	.byte		N21   , An2 , v076
	.byte	W24
	.byte		N12   , Dn1 , v064
	.byte	W12
	.byte		N19   , Gn2 , v076
	.byte	W24
	.byte		N12   , Cn1 
	.byte	W12
	.byte		        Dn1 , v064
	.byte	W12
	.byte		        Cn1 , v076
	.byte	W12
	.byte	GOTO
	 .word	mus_vs_wild_9_B1
mus_vs_wild_9_B2:
@ 042   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_wild_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 10 (Midi-Chn.11) ****************@

mus_vs_wild_10:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 87
	.byte		VOL   , 127*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v-64
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
mus_vs_wild_10_B1:
@ 010   ----------------------------------------
mus_vs_wild_10_010:
	.byte		N11   , Cn3 , v064
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N23   , En3 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 012   ----------------------------------------
mus_vs_wild_10_012:
	.byte		N44   , Fn3 , v064, gtp3
	.byte	W48
	.byte		        Dn3 , v064, gtp3
	.byte	W48
	.byte	PEND
@ 013   ----------------------------------------
mus_vs_wild_10_013:
	.byte		N32   , Fn3 , v064, gtp3
	.byte	W36
	.byte		        As3 , v064, gtp3
	.byte	W36
	.byte		N23   , Fn3 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_10_010
@ 015   ----------------------------------------
	.byte		N11   , Cn3 , v064
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_10_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_10_013
@ 018   ----------------------------------------
mus_vs_wild_10_018:
	.byte		N32   , Cn4 , v064, gtp3
	.byte	W36
	.byte		        Gn3 , v064, gtp3
	.byte	W36
	.byte		N23   , En3 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
	.byte		N32   , En4 , v064, gtp3
	.byte	W36
	.byte		        Dn4 , v064, gtp3
	.byte	W36
	.byte		N23   , Cn4 
	.byte	W24
@ 020   ----------------------------------------
	.byte		N32   , As3 , v064, gtp3
	.byte	W36
	.byte		        Fn3 , v064, gtp3
	.byte	W36
	.byte		N23   , Dn3 
	.byte	W24
@ 021   ----------------------------------------
	.byte		N32   , Dn4 , v064, gtp3
	.byte	W36
	.byte		        Cn4 , v064, gtp3
	.byte	W36
	.byte		N23   , As3 
	.byte	W24
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_10_018
@ 023   ----------------------------------------
	.byte		N92   , En4 , v064, gtp3
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
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_vs_wild_10_B1
mus_vs_wild_10_B2:
@ 042   ----------------------------------------
	.byte		VOICE , 87
	.byte		        87
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 11 (Midi-Chn.12) ****************@

mus_vs_wild_11:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 17
	.byte		VOL   , 127*mus_vs_wild_mvl/mxv
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
mus_vs_wild_11_002:
	.byte		N17   , Cn4 , v088
	.byte	W36
	.byte		        Gn3 
	.byte	W36
	.byte		N11   , Cn4 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte		N17   , Cs4 
	.byte	W36
	.byte		        Ds4 
	.byte	W36
	.byte		N11   , Cs4 
	.byte	W24
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_11_002
@ 005   ----------------------------------------
	.byte		N17   , Cs4 , v088
	.byte	W36
	.byte		        Ds4 
	.byte	W36
	.byte		N23   , Fn4 
	.byte	W24
@ 006   ----------------------------------------
mus_vs_wild_11_006:
	.byte		N17   , Cn5 , v088
	.byte	W36
	.byte		        Gn4 
	.byte	W36
	.byte		N11   , Cn5 
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
mus_vs_wild_11_007:
	.byte		N17   , Cs5 , v088
	.byte	W36
	.byte		        Ds5 
	.byte	W36
	.byte		N11   , Cs5 
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_11_006
@ 009   ----------------------------------------
mus_vs_wild_11_009:
	.byte		N17   , Cs5 , v088
	.byte	W36
	.byte		        Ds5 
	.byte	W36
	.byte		N23   , Fn5 
	.byte	W24
	.byte	PEND
mus_vs_wild_11_B1:
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
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_11_006
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_11_007
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_11_006
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_11_009
	.byte	GOTO
	 .word	mus_vs_wild_11_B1
mus_vs_wild_11_B2:
@ 042   ----------------------------------------
	.byte		VOICE , 17
	.byte		        17
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 12 (Midi-Chn.13) ****************@

mus_vs_wild_12:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 59
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_wild_mvl/mxv
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
mus_vs_wild_12_B1:
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
	.byte	W60
	.byte		N11   , Gn4 , v088
	.byte	W12
	.byte		        An4 
	.byte	W24
@ 026   ----------------------------------------
	.byte		N92   , As4 , v088, gtp3
	.byte	W96
@ 027   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
@ 028   ----------------------------------------
	.byte		N68   , En4 , v088, gtp3
	.byte	W72
	.byte		N23   , Cn4 
	.byte	W24
@ 029   ----------------------------------------
	.byte		N56   , Gn4 , v088, gtp3
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte		        Cn5 
	.byte	W24
@ 030   ----------------------------------------
	.byte		N80   , Cs5 , v088, gtp3
	.byte	W84
	.byte		N11   , Cn5 
	.byte	W12
@ 031   ----------------------------------------
	.byte		N23   , Cs5 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        As4 
	.byte	W24
	.byte		N11   , Gs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
@ 032   ----------------------------------------
	.byte		N56   , Gs4 , v088, gtp3
	.byte	W60
	.byte		N11   , As4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 033   ----------------------------------------
	.byte		N44   , Gn4 , v088, gtp3
	.byte	W48
	.byte		        Cn5 , v088, gtp3
	.byte	W48
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_vs_wild_12_B1
mus_vs_wild_12_B2:
@ 042   ----------------------------------------
	.byte		VOICE , 59
	.byte		        59
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_vs_wild_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 13 (Midi-Chn.14) ****************@

mus_vs_wild_13:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 83
	.byte		VOL   , 127*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N05   , Cn5 , v088
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 001   ----------------------------------------
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
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
mus_vs_wild_13_B1:
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
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
mus_vs_wild_13_034:
	.byte	W01
	.byte		N32   , Cn3 , v076, gtp3
	.byte	W36
	.byte		        Gn2 , v076, gtp3
	.byte	W36
	.byte		N23   , Cn3 
	.byte	W23
	.byte	PEND
@ 035   ----------------------------------------
	.byte	W01
	.byte		        Cs3 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte		        Cs3 
	.byte	W23
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_13_034
@ 037   ----------------------------------------
	.byte	W01
	.byte		N32   , En3 , v076, gtp3
	.byte	W36
	.byte		N23   , Cn3 
	.byte	W24
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N23   , Bn2 
	.byte	W23
@ 038   ----------------------------------------
mus_vs_wild_13_038:
	.byte	W01
	.byte		N11   , Cn3 , v076
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N23   , Cs3 
	.byte	W24
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Cs3 
	.byte	W11
	.byte	PEND
@ 039   ----------------------------------------
	.byte	W01
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N23   , En3 
	.byte	W24
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W11
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_13_038
@ 041   ----------------------------------------
	.byte	W01
	.byte		N11   , Cn3 , v076
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W11
	.byte	GOTO
	 .word	mus_vs_wild_13_B1
mus_vs_wild_13_B2:
@ 042   ----------------------------------------
	.byte		VOICE , 83
	.byte		        83
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 14 (Midi-Chn.15) ****************@

mus_vs_wild_14:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 98*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v-14
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W36
	.byte		N12   , Fs4 , v056
	.byte	W36
	.byte		N06   
	.byte	W24
@ 003   ----------------------------------------
mus_vs_wild_14_003:
	.byte		N12   , Fs4 , v056
	.byte	W36
	.byte		N12   
	.byte	W36
	.byte		N06   
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_003
@ 005   ----------------------------------------
mus_vs_wild_14_005:
	.byte		N12   , Fs4 , v056
	.byte	W36
	.byte		N18   
	.byte	W60
	.byte	PEND
@ 006   ----------------------------------------
	.byte	W36
	.byte		N18   
	.byte	W60
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_005
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_005
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_005
mus_vs_wild_14_B1:
@ 010   ----------------------------------------
mus_vs_wild_14_010:
	.byte	W12
	.byte		N12   , Fs4 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_vs_wild_14_011:
	.byte		N12   , Fs4 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_011
@ 013   ----------------------------------------
mus_vs_wild_14_013:
	.byte		N12   , Fs4 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_011
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_011
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_010
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_011
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_010
@ 025   ----------------------------------------
	.byte	W12
	.byte		N12   , Fs4 , v076
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
@ 026   ----------------------------------------
mus_vs_wild_14_026:
	.byte	W12
	.byte		N11   , Fs4 , v076
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 027   ----------------------------------------
mus_vs_wild_14_027:
	.byte		N12   , Fs4 , v076
	.byte	W12
	.byte		N11   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N11   
	.byte	W36
	.byte	PEND
@ 028   ----------------------------------------
mus_vs_wild_14_028:
	.byte		N12   , Fs4 , v076
	.byte	W12
	.byte		N11   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_028
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_026
@ 031   ----------------------------------------
	.byte		N12   , Fs4 , v076
	.byte	W12
	.byte		N11   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N10   
	.byte	W36
@ 032   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N10   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N11   
	.byte	W36
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_027
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_011
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_011
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_013
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_010
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_011
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_14_011
@ 041   ----------------------------------------
	.byte	W12
	.byte		N12   , Fs4 , v076
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	GOTO
	 .word	mus_vs_wild_14_B1
mus_vs_wild_14_B2:
@ 042   ----------------------------------------
	.byte		VOICE , 127
	.byte		        127
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 15 (Midi-Chn.16) ****************@

mus_vs_wild_15:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 126
	.byte		VOL   , 94*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v+34
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
@ 005   ----------------------------------------
	.byte	W72
	.byte	W01
	.byte		N44   , As3 , v064, gtp1
	.byte	W23
@ 006   ----------------------------------------
mus_vs_wild_15_006:
	.byte	W72
	.byte	W01
	.byte		N24   , As3 , v064
	.byte	W23
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_006
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_006
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_006
mus_vs_wild_15_B1:
@ 010   ----------------------------------------
mus_vs_wild_15_010:
	.byte	W72
	.byte	W01
	.byte		N10   , As3 , v076
	.byte	W23
	.byte	PEND
@ 011   ----------------------------------------
mus_vs_wild_15_011:
	.byte	W72
	.byte	W01
	.byte		N09   , As3 , v076
	.byte	W23
	.byte	PEND
@ 012   ----------------------------------------
mus_vs_wild_15_012:
	.byte	W72
	.byte	W01
	.byte		N12   , As3 , v076
	.byte	W23
	.byte	PEND
@ 013   ----------------------------------------
	.byte	W60
	.byte	W01
	.byte		N10   
	.byte	W32
	.byte	W03
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_010
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_012
@ 017   ----------------------------------------
mus_vs_wild_15_017:
	.byte	W60
	.byte	W01
	.byte		N09   , As3 , v076
	.byte	W32
	.byte	W03
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_011
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_011
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_010
@ 024   ----------------------------------------
	.byte	W72
	.byte	W01
	.byte		N24   , As3 , v076
	.byte	W23
@ 025   ----------------------------------------
	.byte	W01
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W23
@ 026   ----------------------------------------
mus_vs_wild_15_026:
	.byte	W24
	.byte	W01
	.byte		N11   , As3 , v076
	.byte	W48
	.byte		N11   
	.byte	W23
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_026
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_026
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_026
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_026
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_026
@ 033   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		N11   , As3 , v076
	.byte	W48
	.byte		N32   , As3 , v076, gtp1
	.byte	W23
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_010
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_010
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_017
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_011
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_010
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_15_010
@ 041   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_vs_wild_15_B1
mus_vs_wild_15_B2:
@ 042   ----------------------------------------
	.byte		VOICE , 126
	.byte		        126
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_vs_wild:
	.byte	15	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_vs_wild_pri	@ Priority
	.byte	mus_vs_wild_rev	@ Reverb.

	.word	mus_vs_wild_grp

	.word	mus_vs_wild_1
	.word	mus_vs_wild_2
	.word	mus_vs_wild_3
	.word	mus_vs_wild_4
	.word	mus_vs_wild_5
	.word	mus_vs_wild_6
	.word	mus_vs_wild_7
	.word	mus_vs_wild_8
	.word	mus_vs_wild_9
	.word	mus_vs_wild_10
	.word	mus_vs_wild_11
	.word	mus_vs_wild_12
	.word	mus_vs_wild_13
	.word	mus_vs_wild_14
	.word	mus_vs_wild_15

	.end
