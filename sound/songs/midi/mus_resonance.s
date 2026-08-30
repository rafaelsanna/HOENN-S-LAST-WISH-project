	.include "MPlayDef.s"

	.equ	mus_resonance_grp, voicegroup_resonance
	.equ	mus_resonance_pri, 0
	.equ	mus_resonance_rev, reverb_set+50
	.equ	mus_resonance_mvl, 100
	.equ	mus_resonance_key, 0
	.equ	mus_resonance_tbs, 1
	.equ	mus_resonance_exg, 1
	.equ	mus_resonance_cmp, 1

	.section .rodata
	.global	mus_resonance
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_resonance_1:
	.byte	KEYSH , mus_resonance_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 165*mus_resonance_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_resonance_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N11   , Cs2 , v112
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		        An1 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		        Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
mus_resonance_1_003:
	.byte		N11   , An1 , v112
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N23   , Bn1 
	.byte	W24
	.byte		N11   , An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N23   , Cs2 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_resonance_1_004:
	.byte	W12
	.byte		N11   , Bn1 , v112
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_1_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_1_004
@ 007   ----------------------------------------
	.byte		TIE   , Cs2 , v112
	.byte	W96
@ 008   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 009   ----------------------------------------
	.byte		TIE   , Cs1 
	.byte	W96
@ 010   ----------------------------------------
	.byte	W23
	.byte		EOT   
	.byte	W01
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W36
@ 011   ----------------------------------------
mus_resonance_1_011:
	.byte		N11   , An0 , v112
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N23   , An0 
	.byte	W24
	.byte		N11   , Bn0 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N23   , Bn0 
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
mus_resonance_1_012:
	.byte		N11   , Cs1 , v112
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N23   , Cs1 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N23   , Cs1 
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_1_011
@ 014   ----------------------------------------
mus_resonance_1_014:
	.byte		N11   , Cs1 , v112
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N23   , Cs1 
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_1_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_1_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_1_011
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_1_014
@ 019   ----------------------------------------
mus_resonance_1_019:
	.byte		N23   , Cn2 , v112
	.byte	W24
	.byte		N11   , Ds2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N23   , Cn2 
	.byte	W24
	.byte		N11   , Ds2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_resonance_1_020:
	.byte		N11   , Ds2 , v112
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N23   , Ds2 
	.byte	W24
	.byte		N11   , Cs2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_resonance_1_021:
	.byte		N11   , Cs2 , v112
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N23   , Cs2 
	.byte	W24
	.byte		N11   , As1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_1_019
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_1_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_1_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_1_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_1_019
@ 027   ----------------------------------------
mus_resonance_1_027:
	.byte		N23   , Cn2 , v112
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
mus_resonance_1_028:
	.byte		N23   , Ds2 , v112
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
mus_resonance_1_B1:
@ 029   ----------------------------------------
mus_resonance_1_029:
	.byte		N23   , Cs2 , v112
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
	.byte		        Cn2 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   , Ds2 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_1_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_1_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_1_029
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_1_019
@ 035   ----------------------------------------
mus_resonance_1_035:
	.byte		N32   , Gs1 , v112, gtp3
	.byte	W36
	.byte		        Ds2 , v112, gtp3
	.byte	W36
	.byte		N23   , Gs2 
	.byte	W24
	.byte	PEND
@ 036   ----------------------------------------
mus_resonance_1_036:
	.byte		N32   , As1 , v112, gtp3
	.byte	W36
	.byte		        Fn2 , v112, gtp3
	.byte	W36
	.byte		N23   , As1 
	.byte	W24
	.byte	PEND
@ 037   ----------------------------------------
	.byte		N32   , Cn2 , v112, gtp3
	.byte	W36
	.byte		        Gn2 , v112, gtp3
	.byte	W36
	.byte		N23   , Ds2 
	.byte	W24
@ 038   ----------------------------------------
	.byte		N32   , Dn2 , v112, gtp3
	.byte	W36
	.byte		        As1 , v112, gtp3
	.byte	W36
	.byte		N23   , Fn1 
	.byte	W24
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_1_035
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_1_036
@ 041   ----------------------------------------
	.byte		N11   , Cn2 , v112
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		        Gs1 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		        As1 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 042   ----------------------------------------
	.byte	W12
	.byte		N80   , Gn1 , v112, gtp3
	.byte	W84
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_1_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_1_012
	.byte	GOTO
	 .word	mus_resonance_1_B1
mus_resonance_1_B2:
@ 045   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_resonance_2:
	.byte	KEYSH , mus_resonance_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 48*mus_resonance_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N11   , Gs3 , v064
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		        En3 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		        Fs3 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 001   ----------------------------------------
	.byte	W48
	.byte		N44   , Ds4 , v064, gtp3
	.byte	W48
@ 002   ----------------------------------------
	.byte		TIE   , Cs4 
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 007   ----------------------------------------
	.byte		N11   , An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N23   , Bn2 
	.byte	W24
	.byte		N11   , An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N23   , Cs3 
	.byte	W12
@ 008   ----------------------------------------
	.byte	W12
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 009   ----------------------------------------
	.byte		        An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N23   , Bn2 
	.byte	W24
	.byte		N11   , An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N32   , Cs3 , v064, gtp3
	.byte	W12
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
mus_resonance_2_011:
	.byte		N23   , Cs4 , v064
	.byte		N23   , En4 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Bn3 
	.byte		N23   , Ds4 
	.byte	W24
	.byte		N17   , Fs4 
	.byte	W18
	.byte		N05   , Cs4 
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
mus_resonance_2_012:
	.byte		N11   , En4 , v064
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W24
	.byte		        Bn3 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_resonance_2_013:
	.byte		N23   , An3 , v064
	.byte	W24
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N23   , Fs3 
	.byte		N23   , Bn3 
	.byte	W24
	.byte		N11   , En4 
	.byte	W12
	.byte		N23   , Fs4 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
	.byte		N44   , Gs3 , v064, gtp3
	.byte	W60
	.byte		N11   , Cs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_2_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_2_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_2_013
@ 018   ----------------------------------------
	.byte		N92   , Gs3 , v064, gtp3
	.byte	W96
@ 019   ----------------------------------------
mus_resonance_2_019:
	.byte		N92   , Cn4 , v064, gtp3
	.byte		N92   , Ds4 , v064, gtp3
	.byte	W96
	.byte	PEND
@ 020   ----------------------------------------
mus_resonance_2_020:
	.byte		N92   , Ds4 , v064, gtp3
	.byte		N92   , Gn4 , v064, gtp3
	.byte	W96
	.byte	PEND
@ 021   ----------------------------------------
	.byte		N68   , Cs4 , v064, gtp3
	.byte		N68   , Fn4 , v064, gtp3
	.byte	W72
	.byte		N23   
	.byte	W24
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_2_019
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_2_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_2_020
@ 025   ----------------------------------------
	.byte		N68   , Cs4 , v064, gtp3
	.byte		N68   , Fn4 , v064, gtp3
	.byte	W72
	.byte		N23   , As3 
	.byte	W24
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_2_019
@ 027   ----------------------------------------
	.byte		N23   , Gn4 , v064
	.byte	W24
	.byte		N11   , Fn4 
	.byte	W12
	.byte		N23   , Ds4 
	.byte	W24
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 028   ----------------------------------------
	.byte		N23   , Cn4 
	.byte	W24
	.byte		N11   , As3 
	.byte	W12
	.byte		N23   , Ds4 
	.byte	W24
	.byte		N11   , As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
mus_resonance_2_B1:
@ 029   ----------------------------------------
mus_resonance_2_029:
	.byte		N11   , Fn4 , v064
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N23   , Gn4 
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
	.byte		        Cn4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N56   , Ds4 , v064, gtp3
	.byte	W60
@ 031   ----------------------------------------
	.byte		N11   , Gn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N23   , Ds4 
	.byte	W24
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 032   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_2_029
@ 034   ----------------------------------------
	.byte		N92   , Cn4 , v064, gtp3
	.byte	W96
@ 035   ----------------------------------------
mus_resonance_2_035:
	.byte		N17   , Cn4 , v064
	.byte	W18
	.byte		        Fn4 
	.byte	W18
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N44   , Fn4 , v064, gtp3
	.byte	W48
	.byte	PEND
@ 036   ----------------------------------------
	.byte		N17   , As3 
	.byte	W18
	.byte		        Fn4 
	.byte	W18
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N23   , Fn4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
@ 037   ----------------------------------------
	.byte		N32   , As3 , v064, gtp3
	.byte	W36
	.byte		        As3 , v064, gtp3
	.byte	W36
	.byte		N23   , Fn3 
	.byte	W24
@ 038   ----------------------------------------
	.byte		N44   , Gn3 , v064, gtp3
	.byte	W48
	.byte		N23   , Cn4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_2_035
@ 040   ----------------------------------------
	.byte		N17   , As3 , v064
	.byte	W18
	.byte		        Fn4 
	.byte	W18
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N23   , Dn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
@ 041   ----------------------------------------
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		        Gs2 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		        As2 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 042   ----------------------------------------
	.byte	W24
	.byte		N05   , Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N23   , Gn4 
	.byte	W24
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_2_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_2_012
	.byte	GOTO
	 .word	mus_resonance_2_B1
mus_resonance_2_B2:
@ 045   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_resonance_3:
	.byte	KEYSH , mus_resonance_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 106*mus_resonance_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N11   , Cs4 , v104
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		        An3 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		        Bn3 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 001   ----------------------------------------
	.byte	W48
	.byte		N44   , An4 , v104, gtp3
	.byte	W48
@ 002   ----------------------------------------
	.byte		TIE   , Gs4 
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 007   ----------------------------------------
	.byte		N11   , An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N23   , Bn2 
	.byte	W24
	.byte		N11   , An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N23   , Cs3 
	.byte	W12
@ 008   ----------------------------------------
	.byte	W12
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 009   ----------------------------------------
	.byte		        An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N23   , Bn2 
	.byte	W24
	.byte		N11   , An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N32   , Cs3 , v104, gtp3
	.byte	W12
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
mus_resonance_3_011:
	.byte		N23   , Gs4 , v104
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N05   , Cs4 
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
mus_resonance_3_012:
	.byte		N11   , En4 , v104
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W24
	.byte		        Bn3 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_resonance_3_013:
	.byte		N23   , Cs4 , v104
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N23   , En4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N23   , Fs4 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
	.byte		N44   , Cs4 , v104, gtp3
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_3_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_3_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_3_013
@ 018   ----------------------------------------
	.byte		N92   , Cs4 , v104, gtp3
	.byte	W96
@ 019   ----------------------------------------
	.byte		        Gn4 , v104, gtp3
	.byte	W96
@ 020   ----------------------------------------
	.byte		        As4 , v104, gtp3
	.byte	W96
@ 021   ----------------------------------------
	.byte		N68   , Gs4 , v104, gtp3
	.byte	W72
	.byte		N23   , Fn4 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N92   , Gn4 , v104, gtp3
	.byte	W96
@ 023   ----------------------------------------
	.byte		        Gn4 , v104, gtp3
	.byte	W96
@ 024   ----------------------------------------
	.byte		        As4 , v104, gtp3
	.byte	W96
@ 025   ----------------------------------------
	.byte		N68   , Gs4 , v104, gtp3
	.byte	W72
	.byte		N23   , As4 
	.byte	W24
@ 026   ----------------------------------------
	.byte		N92   , Gn4 , v104, gtp3
	.byte	W96
@ 027   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		N11   , Fn4 
	.byte	W12
	.byte		N23   , Ds4 
	.byte	W24
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 028   ----------------------------------------
	.byte		N23   , Cn4 
	.byte	W24
	.byte		N11   , As3 
	.byte	W12
	.byte		N23   , Ds4 
	.byte	W24
	.byte		N11   , As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
mus_resonance_3_B1:
@ 029   ----------------------------------------
mus_resonance_3_029:
	.byte		N11   , Fn4 , v104
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N23   , Gn4 
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
	.byte		        Cn4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N56   , Ds4 , v104, gtp3
	.byte	W60
@ 031   ----------------------------------------
	.byte		N11   , Gn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N23   , Ds4 
	.byte	W24
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 032   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_3_029
@ 034   ----------------------------------------
	.byte		N92   , Cn4 , v104, gtp3
	.byte	W96
@ 035   ----------------------------------------
mus_resonance_3_035:
	.byte		N17   , Ds4 , v104
	.byte	W18
	.byte		        Fn4 
	.byte	W18
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N44   , Fn4 , v104, gtp3
	.byte	W48
	.byte	PEND
@ 036   ----------------------------------------
	.byte		N17   , Ds4 
	.byte	W18
	.byte		        Fn4 
	.byte	W18
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N23   , Fn4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
@ 037   ----------------------------------------
	.byte		N32   , Dn4 , v104, gtp3
	.byte	W36
	.byte		        As3 , v104, gtp3
	.byte	W36
	.byte		N23   , Fn3 
	.byte	W24
@ 038   ----------------------------------------
	.byte		N44   , Gn3 , v104, gtp3
	.byte	W48
	.byte		N23   , Cn4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_3_035
@ 040   ----------------------------------------
	.byte		N17   , Ds4 , v104
	.byte	W18
	.byte		        Fn4 
	.byte	W18
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N23   , Dn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
@ 041   ----------------------------------------
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		        Gs2 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		        As2 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 042   ----------------------------------------
	.byte	W24
	.byte		N05   , Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N23   , Gn4 
	.byte	W24
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_3_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_resonance_3_012
	.byte	GOTO
	 .word	mus_resonance_3_B1
mus_resonance_3_B2:
@ 045   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_resonance:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_resonance_pri	@ Priority
	.byte	mus_resonance_rev	@ Reverb.

	.word	mus_resonance_grp

	.word	mus_resonance_1
	.word	mus_resonance_2
	.word	mus_resonance_3

	.end
