	.include "MPlayDef.s"

	.equ	mus_ive_seen_much_grp, voicegroup_brothers
	.equ	mus_ive_seen_much_pri, 0
	.equ	mus_ive_seen_much_rev, reverb_set+18
	.equ	mus_ive_seen_much_mvl, 90
	.equ	mus_ive_seen_much_key, 0
	.equ	mus_ive_seen_much_tbs, 1
	.equ	mus_ive_seen_much_exg, 0
	.equ	mus_ive_seen_much_cmp, 1

	.section .rodata
	.global	mus_ive_seen_much
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_ive_seen_much_1:
	.byte	KEYSH , mus_ive_seen_much_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 130*mus_ive_seen_much_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 94*mus_ive_seen_much_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		N22   , As1 , v072
	.byte		N44   , As2 , v044
	.byte	W24
	.byte		N22   , Fn2 , v072
	.byte	W24
	.byte		N44   , As2 
	.byte		N22   , Cs3 , v044
	.byte	W24
	.byte		        Ds3 
	.byte	W24
@ 001   ----------------------------------------
	.byte		        Fs1 , v072
	.byte		N68   , Fn3 , v044
	.byte	W24
	.byte		N22   , Cs2 , v072
	.byte	W24
	.byte		N24   , As2 
	.byte	W24
	.byte		N22   , As2 , v044
	.byte	W24
@ 002   ----------------------------------------
	.byte		        Gs1 , v072
	.byte		N44   , Ds3 , v044
	.byte	W24
	.byte		N22   , Ds2 , v072
	.byte	W24
	.byte		N44   , Cn3 
	.byte		N22   , Fn3 , v044
	.byte	W24
	.byte		        Fs3 
	.byte	W24
@ 003   ----------------------------------------
	.byte		        Cs1 , v072
	.byte		N90   , Fn3 , v044
	.byte	W24
	.byte		N22   , Gs1 , v072
	.byte	W24
	.byte		        Fn2 
	.byte	W24
	.byte		        Cs2 
	.byte	W24
@ 004   ----------------------------------------
mus_ive_seen_much_1_004:
	.byte		N22   , Fs1 , v072
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte		N44   , As2 
	.byte		N22   , Fn3 , v044
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte		        Gs1 , v072
	.byte		N68   , Ds3 , v044
	.byte	W24
	.byte		N22   , Ds2 , v072
	.byte	W24
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N22   , Cn3 , v044
	.byte	W24
@ 006   ----------------------------------------
	.byte		N44   , As1 , v072
	.byte		N44   , Cs3 , v044
	.byte	W48
	.byte		        Gs1 , v072
	.byte		N44   , Cn3 , v044
	.byte	W48
@ 007   ----------------------------------------
	.byte		N22   , As1 , v072
	.byte		N90   , Cs3 , v044
	.byte	W24
	.byte		N23   , Fn2 , v072
	.byte	W24
	.byte		        Ds2 
	.byte	W24
	.byte		        Cs2 
	.byte	W24
@ 008   ----------------------------------------
	.byte		N22   , As1 
	.byte		N44   , As2 , v044
	.byte		N44   , Cs3 
	.byte	W24
	.byte		N22   , Fn2 , v072
	.byte	W24
	.byte		N44   , As2 
	.byte		N22   , Cs3 , v044
	.byte	W24
	.byte		        Ds4 
	.byte	W24
@ 009   ----------------------------------------
	.byte		        Fs1 , v072
	.byte		N68   , Fn3 , v044
	.byte		N68   , Cs4 
	.byte	W24
	.byte		N22   , Cs2 , v072
	.byte	W24
	.byte		N44   , Fs2 
	.byte		N24   , As2 
	.byte	W24
	.byte		N22   , As2 , v044
	.byte	W24
@ 010   ----------------------------------------
	.byte		        Gs1 , v072
	.byte		N44   , Ds3 , v044
	.byte		N44   , Gs3 
	.byte	W24
	.byte		N22   , Ds2 , v072
	.byte	W24
	.byte		N44   , Cn3 
	.byte		N22   , Fn3 , v044
	.byte	W24
	.byte		        Fs3 
	.byte	W24
@ 011   ----------------------------------------
	.byte		        Cs1 , v072
	.byte		N68   , Fn3 , v044
	.byte		N68   , Cs4 
	.byte	W24
	.byte		N22   , Gs1 , v072
	.byte	W24
	.byte		N44   , Fn2 
	.byte	W48
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_ive_seen_much_1_004
@ 013   ----------------------------------------
	.byte		N22   , Gs1 , v072
	.byte		N68   , Ds3 , v044
	.byte		N68   , Gs3 
	.byte	W24
	.byte		N22   , Ds2 , v072
	.byte	W24
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N22   , Cn3 , v044
	.byte	W24
@ 014   ----------------------------------------
	.byte		N44   , As1 , v072
	.byte		N44   , Fn2 
	.byte		N44   , Cs3 , v044
	.byte	W48
	.byte		        Gs1 , v072
	.byte		N44   , Ds2 
	.byte		N44   , Cn3 , v044
	.byte	W48
@ 015   ----------------------------------------
	.byte		N22   , As1 , v072
	.byte		N22   , As2 , v044
	.byte		N22   , Cs3 
	.byte	W24
	.byte		        Fn2 , v072
	.byte		N22   , Cn3 , v044
	.byte	W24
	.byte		        As2 , v076
	.byte		N22   , Cs3 , v044
	.byte	W24
	.byte		        Gs1 , v080
	.byte		N22   , Ds3 , v044
	.byte	W24
@ 016   ----------------------------------------
mus_ive_seen_much_1_016:
	.byte		N22   , Fs1 , v084
	.byte		N44   , Fn3 , v044
	.byte		N44   , Cs4 
	.byte	W24
	.byte		N22   , Cs2 , v084
	.byte	W24
	.byte		        Fs2 
	.byte		N22   , As2 
	.byte		N22   , Fn3 , v044
	.byte		N22   , As3 
	.byte	W24
	.byte		        Cs2 , v084
	.byte		N22   , Fs3 , v044
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
	.byte		        Fs2 , v084
	.byte		N22   , As2 
	.byte		N44   , Fn3 , v044
	.byte		N44   , Cs4 
	.byte	W24
	.byte		N22   , Cs2 , v084
	.byte	W24
	.byte		N44   , Fs2 
	.byte		N44   , As2 
	.byte		N22   , Cs3 , v044
	.byte	W24
	.byte		        Ds3 
	.byte	W24
@ 018   ----------------------------------------
	.byte		        Cs1 , v084
	.byte		TIE   , Fn3 , v044
	.byte		TIE   , Cs4 
	.byte	W24
	.byte		N22   , Gs1 , v084
	.byte	W24
	.byte		        Fn2 
	.byte	W24
	.byte		        Cs2 
	.byte	W24
@ 019   ----------------------------------------
	.byte		        Gs2 
	.byte	W24
	.byte		        Fn2 
	.byte	W16
	.byte		EOT   , Fn3 
	.byte		        Cs4 
	.byte	W08
	.byte		N22   , Cs3 
	.byte	W24
	.byte		        Gs2 
	.byte	W24
@ 020   ----------------------------------------
	.byte		        Ds2 
	.byte		N22   , Ds3 
	.byte		N44   , Fs3 , v044
	.byte	W24
	.byte		N22   , As2 , v084
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
@ 021   ----------------------------------------
	.byte		        Ds3 
	.byte		N44   , Fs3 , v044
	.byte	W24
	.byte		N22   , As2 , v084
	.byte	W24
	.byte		N44   , Ds2 
	.byte		N22   , As2 , v044
	.byte	W24
	.byte		        Cn3 
	.byte	W24
@ 022   ----------------------------------------
	.byte		        As1 , v084
	.byte		N44   , Cs3 , v044
	.byte	W24
	.byte		N22   , Fn2 , v084
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		        Fn2 
	.byte	W24
@ 023   ----------------------------------------
	.byte		        Cn3 
	.byte	W24
	.byte		        Fn2 
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte		        Gs1 
	.byte	W24
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_ive_seen_much_1_016
@ 025   ----------------------------------------
	.byte		N22   , Fs2 , v084
	.byte		N22   , As2 
	.byte		N44   , Fn3 , v044
	.byte		N44   , Cs4 
	.byte	W24
	.byte		N22   , Cs2 , v084
	.byte	W24
	.byte		N44   , Fs2 
	.byte		N44   , As2 
	.byte		N22   , As3 , v044
	.byte	W24
	.byte		        Gs3 
	.byte	W24
@ 026   ----------------------------------------
	.byte		        As1 , v084
	.byte		N44   , Fn3 , v044
	.byte		N44   , Cs4 
	.byte	W24
	.byte		N22   , Fn2 , v084
	.byte	W24
	.byte		        Cs3 
	.byte		N44   , Fn3 , v044
	.byte		N44   , Cn4 
	.byte	W24
	.byte		N22   , Fn2 , v084
	.byte	W24
@ 027   ----------------------------------------
	.byte		        Cs3 
	.byte		N90   , Fn3 , v044
	.byte		N90   , As3 
	.byte	W24
	.byte		N22   , As2 , v084
	.byte	W24
	.byte		        Fn2 
	.byte	W24
	.byte		        As1 
	.byte	W24
@ 028   ----------------------------------------
	.byte		        Fn1 
	.byte		N44   , Gs3 , v044
	.byte		N44   , Ds4 
	.byte	W24
	.byte		N22   , Cn2 , v084
	.byte	W24
	.byte		        Fn2 
	.byte		N44   , Fn3 , v044
	.byte		N44   , Cn4 
	.byte	W24
	.byte		N22   , Gs2 , v084
	.byte	W24
@ 029   ----------------------------------------
	.byte		N90   , Cn3 
	.byte		N90   , Fn3 
	.byte		N22   , Cs4 , v044
	.byte	W24
	.byte		        Cn4 
	.byte		N22   , Ds4 
	.byte	W24
	.byte		        As3 
	.byte		N22   , Cs4 
	.byte	W24
	.byte		        Gs3 
	.byte		N22   , Cn4 
	.byte	W24
@ 030   ----------------------------------------
	.byte		N11   , Fs1 , v084
	.byte		N68   , As3 , v044
	.byte		N68   , Cs4 
	.byte	W12
	.byte		N11   , Cs2 , v084
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W36
@ 031   ----------------------------------------
	.byte		N07   , Gs1 
	.byte		N44   , Cn4 , v044
	.byte		N44   , Ds4 
	.byte	W08
	.byte		N07   , Ds2 , v084
	.byte	W08
	.byte		        Gs2 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		N03   , Ds3 
	.byte	W04
	.byte		N11   , Gs3 
	.byte	W60
@ 032   ----------------------------------------
	.byte		N22   , Cn1 
	.byte		N22   , Gn1 
	.byte		N44   , Gn3 , v044
	.byte		N44   , Ds4 
	.byte	W24
	.byte		N11   , Cn2 , v084
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte		N22   , Gn3 , v044
	.byte		N22   , Cn4 
	.byte	W12
	.byte		N11   , Ds3 , v084
	.byte	W12
	.byte		N22   , As3 , v044
	.byte		N22   , Ds4 
	.byte	W12
	.byte		N11   , Ds3 , v084
	.byte	W12
@ 033   ----------------------------------------
	.byte		N22   , Gn3 , v044
	.byte		N22   , Dn4 
	.byte	W12
	.byte		N10   , Gn3 , v084
	.byte	W12
	.byte		N11   , Ds3 
	.byte		N22   , Cn4 , v044
	.byte	W12
	.byte		N11   , Cn3 , v084
	.byte	W12
	.byte		        Gn2 
	.byte		N22   , Ds3 , v044
	.byte	W12
	.byte		N11   , Cn2 , v084
	.byte	W12
	.byte		        Gn2 
	.byte		N22   , Fn3 , v044
	.byte	W12
	.byte		N11   , Cn3 , v084
	.byte	W12
@ 034   ----------------------------------------
mus_ive_seen_much_1_034:
	.byte		N11   , Gn1 , v084
	.byte		N60   , Gn3 , v044
	.byte		N68   , Dn4 
	.byte	W12
	.byte		N11   , Dn2 , v084
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W36
	.byte	PEND
@ 035   ----------------------------------------
mus_ive_seen_much_1_035:
	.byte	W12
	.byte		N11   , Gn3 , v084
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N22   , Gn1 
	.byte	W24
	.byte	PEND
@ 036   ----------------------------------------
	.byte		        Gs1 
	.byte		N44   , Gn3 , v044
	.byte		N44   , Ds4 
	.byte	W24
	.byte		N11   , Gs1 , v084
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte		N22   , Gn3 , v044
	.byte		N22   , Cn4 
	.byte	W12
	.byte		N11   , Cn3 , v084
	.byte	W12
	.byte		N22   , As3 , v044
	.byte	W12
	.byte		N11   , Cn3 , v084
	.byte	W12
@ 037   ----------------------------------------
	.byte		N22   , Gn3 , v044
	.byte		N22   , Dn4 
	.byte	W12
	.byte		N11   , Gs3 , v084
	.byte	W12
	.byte		        Ds3 
	.byte		N22   , Cn4 , v044
	.byte	W12
	.byte		N11   , Cn3 , v084
	.byte	W12
	.byte		        Gs2 
	.byte		N22   , Ds4 , v044
	.byte	W12
	.byte		N11   , Ds2 , v084
	.byte	W12
	.byte		        Gs1 
	.byte		N22   , Dn4 , v044
	.byte	W12
	.byte		N11   , Ds2 , v084
	.byte	W12
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_ive_seen_much_1_034
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_ive_seen_much_1_035
@ 040   ----------------------------------------
	.byte		N22   , Fn1 , v084
	.byte		N22   , Fn2 
	.byte		N68   , Gs3 , v044
	.byte		N68   , Cn4 
	.byte	W24
	.byte		N22   , Gs2 , v084
	.byte	W24
	.byte		        Cn3 
	.byte		N22   , Fn3 
	.byte	W24
	.byte		        Fn1 
	.byte		N22   , Fn2 
	.byte		N22   , Fn3 , v044
	.byte		N22   , Gs3 
	.byte	W24
@ 041   ----------------------------------------
	.byte		        Cn1 , v084
	.byte		N22   , Cn2 
	.byte		N44   , Cn4 , v044
	.byte		N44   , Ds4 
	.byte	W24
	.byte		N22   , Cn2 , v084
	.byte	W24
	.byte		        Cn3 
	.byte		N44   , Ds3 , v044
	.byte	W24
	.byte		N22   , Gn2 , v084
	.byte	W24
@ 042   ----------------------------------------
	.byte		        Gn1 
	.byte		N22   , Gn2 
	.byte	W24
	.byte		        As2 
	.byte		N22   , Ds4 , v044
	.byte	W24
	.byte		N44   , Dn3 , v084
	.byte		N44   , Gn3 
	.byte		N22   , Dn4 , v044
	.byte	W24
	.byte		        As3 
	.byte	W24
@ 043   ----------------------------------------
mus_ive_seen_much_1_043:
	.byte		N22   , Cn1 , v084
	.byte		N22   , Cn2 
	.byte		N44   , Gn3 , v044
	.byte		N44   , Cn4 
	.byte	W24
	.byte		N22   , Cn2 , v084
	.byte	W24
	.byte		        Gn2 
	.byte		N22   , Cn3 
	.byte	W24
	.byte		        As1 
	.byte	W24
	.byte	PEND
@ 044   ----------------------------------------
	.byte		        Gs1 
	.byte		N22   , Cn3 
	.byte		N44   , As3 , v044
	.byte		N44   , Ds4 
	.byte	W24
	.byte		N22   , Gs2 , v084
	.byte	W24
	.byte		        Cn3 
	.byte		N22   , Ds3 
	.byte		N44   , Gs3 , v044
	.byte	W24
	.byte		N22   , Gs2 , v084
	.byte	W24
@ 045   ----------------------------------------
	.byte		        Cn3 
	.byte		N22   , Ds3 
	.byte		N22   , Dn4 , v044
	.byte	W24
	.byte		        Gs2 , v084
	.byte		N22   , Cn4 , v044
	.byte	W24
	.byte		N44   , Cn3 , v084
	.byte		N44   , Ds3 
	.byte		N22   , Gs3 , v044
	.byte	W24
	.byte		        As3 
	.byte	W24
@ 046   ----------------------------------------
	.byte		        Gn1 , v084
	.byte		N22   , Dn2 
	.byte		N22   , Gn2 
	.byte		N44   , Gn3 , v044
	.byte		N44   , Dn4 
	.byte	W24
	.byte		N22   , Gn2 , v084
	.byte	W24
	.byte		        Dn3 
	.byte		N22   , Gn3 
	.byte		N22   , Cn4 , v044
	.byte		N22   , Dn4 
	.byte	W24
	.byte		        As2 , v084
	.byte		N22   , Dn3 
	.byte		N22   , Gn3 
	.byte		N22   , Bn3 , v044
	.byte	W24
@ 047   ----------------------------------------
	.byte		        As2 , v084
	.byte		N22   , Dn3 
	.byte		N22   , Gn3 
	.byte		N22   , Bn3 , v052
	.byte		N22   , Dn4 
	.byte	W24
	.byte		        As2 , v084
	.byte		N22   , Gn3 , v052
	.byte		N22   , Dn4 
	.byte	W24
	.byte		        Gn1 , v084
	.byte		N22   , Dn2 
	.byte		N22   , Gn3 , v052
	.byte		N22   , Bn3 
	.byte	W24
	.byte		        Gn1 , v084
	.byte		N22   , Bn3 , v052
	.byte		N22   , Dn4 
	.byte	W24
@ 048   ----------------------------------------
	.byte		        Cn1 , v084
	.byte		N22   , Gn1 
	.byte		N22   , Cn2 
	.byte		N44   , Gn3 , v052
	.byte		N44   , Cn4 
	.byte	W24
	.byte		N11   , Cn2 , v084
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte		N22   , Gn3 , v052
	.byte		N22   , Cn4 
	.byte	W12
	.byte		N11   , Ds3 , v084
	.byte	W12
	.byte		        Gn3 
	.byte		N22   , As3 , v052
	.byte	W12
	.byte		N11   , Cn4 , v084
	.byte	W12
@ 049   ----------------------------------------
	.byte		N22   , Gn3 , v052
	.byte		N22   , Dn4 
	.byte	W12
	.byte		N11   , Cn4 , v084
	.byte	W12
	.byte		        Gn3 
	.byte		N22   , Cn4 , v052
	.byte	W12
	.byte		N11   , Ds3 , v084
	.byte	W12
	.byte		        Cn3 
	.byte		N22   , Ds3 , v052
	.byte	W12
	.byte		N11   , Gn2 , v084
	.byte	W12
	.byte		        Cn2 
	.byte		N22   , Fn3 , v052
	.byte	W12
	.byte		N11   , Gn2 , v084
	.byte	W12
@ 050   ----------------------------------------
	.byte		        Gn1 
	.byte		N60   , Gn3 , v052
	.byte		N84   , Dn4 
	.byte	W12
	.byte		N11   , Dn2 , v084
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N30   , Gn3 
	.byte	W12
	.byte		N19   , As3 
	.byte	W12
	.byte		N11   , Dn4 
	.byte	W12
@ 051   ----------------------------------------
	.byte		N07   , Gn3 
	.byte	W08
	.byte		        Dn4 
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		N03   , Dn3 
	.byte	W04
	.byte		N11   , As2 
	.byte	W12
	.byte		N07   , Gn2 
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		N22   , Gn1 
	.byte	W24
@ 052   ----------------------------------------
	.byte		        Ds1 
	.byte		N22   , Gs1 
	.byte		N44   , Gn3 , v052
	.byte		N44   , Ds4 
	.byte	W24
	.byte		N11   , Gs1 , v084
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte		N22   , Gn3 , v052
	.byte		N22   , Cn4 
	.byte	W12
	.byte		N11   , Cn3 , v084
	.byte	W12
	.byte		        Ds3 
	.byte		N22   , Gn3 , v052
	.byte		N22   , As3 
	.byte	W12
	.byte		N11   , Gs3 , v084
	.byte	W12
@ 053   ----------------------------------------
	.byte		N22   , Gn3 , v052
	.byte		N11   , Cn4 , v084
	.byte		N22   , Dn4 , v052
	.byte	W12
	.byte		N11   , Ds4 , v084
	.byte	W12
	.byte		N22   , Gn3 , v052
	.byte		N22   , Cn4 
	.byte	W12
	.byte		N11   , Gs3 , v084
	.byte	W12
	.byte		N22   , Ds4 
	.byte	W12
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte		N22   , Dn4 , v052
	.byte	W12
	.byte		N11   , Gs2 , v084
	.byte	W12
@ 054   ----------------------------------------
	.byte		        Gn1 
	.byte		N60   , Gn3 , v052
	.byte		N68   , Dn4 
	.byte	W12
	.byte		N11   , Dn2 , v084
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W36
@ 055   ----------------------------------------
	.byte		N23   , As3 , v052
	.byte	W12
	.byte		N22   , Gn3 , v084
	.byte	W12
	.byte		N23   , Gs3 , v052
	.byte	W12
	.byte		N22   , Dn3 , v084
	.byte	W12
	.byte		N23   , Gn3 , v048
	.byte	W12
	.byte		N32   , Gn2 , v084
	.byte	W12
	.byte		N23   , Fn3 , v048
	.byte	W24
@ 056   ----------------------------------------
	.byte		N22   , Fn1 , v084
	.byte		N22   , Fn2 
	.byte		N68   , Ds3 , v044
	.byte		N68   , Gs3 
	.byte	W24
	.byte		N22   , Fn2 , v084
	.byte	W24
	.byte		        Cn3 
	.byte		N22   , Fn3 
	.byte	W24
	.byte		        Fn1 
	.byte		N22   , Fn2 
	.byte		N22   , Fn3 , v044
	.byte		N22   , Gs3 
	.byte	W24
@ 057   ----------------------------------------
	.byte		        Cn1 , v084
	.byte		N22   , Cn2 
	.byte		N44   , Cn4 , v044
	.byte		N44   , Ds4 
	.byte	W24
	.byte		N22   , Cn2 , v084
	.byte	W24
	.byte		        Cn3 
	.byte		N44   , Ds3 , v044
	.byte		N44   , Gn3 
	.byte	W24
	.byte		N22   , Gn2 , v084
	.byte	W24
@ 058   ----------------------------------------
	.byte		        Gn1 
	.byte		N22   , Gn2 
	.byte	W24
	.byte		N22   
	.byte		N22   , Ds4 , v044
	.byte	W24
	.byte		N44   , Dn3 , v084
	.byte		N44   , Gn3 
	.byte		N22   , Dn4 , v044
	.byte	W24
	.byte		        As3 
	.byte	W24
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_ive_seen_much_1_043
@ 060   ----------------------------------------
	.byte		N22   , Gs1 , v084
	.byte		N22   , Cn3 
	.byte		N44   , As3 , v044
	.byte		N44   , Ds4 
	.byte	W24
	.byte		N22   , Ds2 , v084
	.byte	W24
	.byte		        Gs2 
	.byte		N22   , Cn3 
	.byte		N44   , Gs3 , v044
	.byte	W24
	.byte		N22   , Ds2 , v084
	.byte	W24
@ 061   ----------------------------------------
	.byte		N90   , Dn2 
	.byte		N90   , Fn2 
	.byte		N90   , Gs2 
	.byte		N90   , Cn3 
	.byte	W24
	.byte		N22   , Cn4 , v044
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        As3 
	.byte	W24
@ 062   ----------------------------------------
	.byte		        Gn1 , v084
	.byte		N22   , Gn2 
	.byte		N44   , Gn3 , v044
	.byte		N44   , Cn4 
	.byte	W24
	.byte		N22   , Gn2 , v084
	.byte	W24
	.byte		        Gn3 
	.byte		N22   , Cn4 , v044
	.byte		N22   , Dn4 
	.byte	W24
	.byte		        Dn3 , v084
	.byte		N22   , Gn3 , v044
	.byte		N22   , Bn3 
	.byte	W24
@ 063   ----------------------------------------
	.byte		        Bn2 , v084
	.byte		N22   , Bn3 , v044
	.byte		N22   , Dn4 
	.byte	W24
	.byte		        Gn2 , v084
	.byte		N22   , Gn3 , v044
	.byte		N22   , Dn4 
	.byte	W24
	.byte		        Dn2 , v084
	.byte		N22   , Gn3 , v044
	.byte		N22   , Bn3 
	.byte	W24
	.byte		        Gn1 , v084
	.byte		N22   , Bn3 , v044
	.byte		N22   , Dn4 
	.byte	W24
@ 064   ----------------------------------------
	.byte		        Cn1 , v084
	.byte		N22   , Cn2 
	.byte		TIE   , Gn3 , v044
	.byte		TIE   , Cn4 
	.byte	W24
	.byte		N23   , Gn2 , v084
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
@ 065   ----------------------------------------
	.byte		        Dn3 
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		        Dn3 
	.byte	W14
	.byte		EOT   , Gn3 
	.byte		        Cn4 
	.byte	W08
	.byte	TEMPO , 131*mus_ive_seen_much_tbs/2
	.byte	W02
@ 066   ----------------------------------------
	.byte		N11   , Cn2 
	.byte		N68   , Gn3 , v044
	.byte		N68   , Ds4 
	.byte	W04
	.byte	TEMPO , 130*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 130*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N11   , Gn2 , v084
	.byte	W04
	.byte	TEMPO , 129*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		        Cn3 
	.byte	W04
	.byte	TEMPO , 129*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 128*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N23   , Dn3 
	.byte	W04
	.byte	TEMPO , 128*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 126*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N32   , Ds3 
	.byte	W04
	.byte	TEMPO , 126*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 126*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 125*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 125*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 124*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 124*mus_ive_seen_much_tbs/2
	.byte	W02
@ 067   ----------------------------------------
	.byte		N11   , Ds2 
	.byte		N80   , As3 , v044
	.byte		N80   , Ds4 
	.byte	W04
	.byte	TEMPO , 123*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 123*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N11   , As2 , v084
	.byte	W04
	.byte	TEMPO , 123*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 122*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		        Ds3 
	.byte	W04
	.byte	TEMPO , 122*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 121*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N23   , Fn3 
	.byte	W04
	.byte	TEMPO , 121*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 121*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 120*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 120*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N11   , Gn3 
	.byte	W04
	.byte	TEMPO , 119*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 119*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N23   , Ds3 
	.byte	W04
	.byte	TEMPO , 118*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 118*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 118*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 117*mus_ive_seen_much_tbs/2
	.byte	W02
@ 068   ----------------------------------------
	.byte		N11   , Fn1 
	.byte		N68   , Gs3 , v044
	.byte		N68   , Cn4 
	.byte	W04
	.byte	TEMPO , 117*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 116*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N11   , Cn2 , v084
	.byte	W04
	.byte	TEMPO , 116*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 115*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		        Fn2 
	.byte	W04
	.byte	TEMPO , 115*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 115*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N23   , Gn2 
	.byte	W04
	.byte	TEMPO , 114*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 114*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 113*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 113*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N32   , Gs2 
	.byte	W04
	.byte	TEMPO , 112*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 112*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 112*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 111*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 111*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 110*mus_ive_seen_much_tbs/2
	.byte	W02
@ 069   ----------------------------------------
	.byte		N44   , Gs1 
	.byte		N23   , Gs3 , v044
	.byte	W04
	.byte	TEMPO , 110*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 110*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 109*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 109*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 108*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 108*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 107*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 107*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N44   , As1 , v084
	.byte		N23   , As3 , v044
	.byte	W04
	.byte	TEMPO , 107*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 106*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 106*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 105*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 105*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 104*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 104*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 104*mus_ive_seen_much_tbs/2
	.byte	W02
@ 070   ----------------------------------------
	.byte		N11   , Cn2 , v084
	.byte		N68   , Gn3 , v044
	.byte		N68   , Ds4 
	.byte	W04
	.byte	TEMPO , 103*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 103*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N11   , Gn2 , v084
	.byte	W04
	.byte	TEMPO , 102*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 102*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		        Cn3 
	.byte	W04
	.byte	TEMPO , 101*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 101*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N23   , Dn3 
	.byte	W04
	.byte	TEMPO , 101*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 100*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 100*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 99*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N32   , Ds3 
	.byte	W04
	.byte	TEMPO , 99*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 99*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 98*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 98*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 97*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 97*mus_ive_seen_much_tbs/2
	.byte	W02
@ 071   ----------------------------------------
	.byte		N11   , Ds2 
	.byte		N80   , As3 , v044
	.byte		N80   , Ds4 
	.byte	W04
	.byte	TEMPO , 96*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 96*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N11   , As2 , v084
	.byte	W04
	.byte	TEMPO , 96*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 95*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		        Ds3 
	.byte	W04
	.byte	TEMPO , 95*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 94*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N23   , Fn3 
	.byte	W04
	.byte	TEMPO , 94*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 93*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 93*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 93*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N11   , Gn3 
	.byte	W04
	.byte	TEMPO , 92*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 92*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N23   , Ds3 
	.byte	W04
	.byte	TEMPO , 91*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 91*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 90*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 90*mus_ive_seen_much_tbs/2
	.byte	W02
@ 072   ----------------------------------------
	.byte		N11   , Fn1 
	.byte		N68   , Gs3 , v044
	.byte		N68   , Cn4 
	.byte	W04
	.byte	TEMPO , 90*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 89*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N11   , Cn2 , v084
	.byte	W04
	.byte	TEMPO , 89*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 88*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		        Fn2 
	.byte	W04
	.byte	TEMPO , 88*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 87*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		        Gn2 
	.byte	W04
	.byte	TEMPO , 87*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 87*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		        Gs2 
	.byte	W04
	.byte	TEMPO , 86*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 86*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		        Cn3 
	.byte	W04
	.byte	TEMPO , 85*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 85*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N23   , Ds3 
	.byte	W04
	.byte	TEMPO , 85*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 84*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 84*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 83*mus_ive_seen_much_tbs/2
	.byte	W02
@ 073   ----------------------------------------
	.byte		N44   , Cn2 
	.byte		N92   , Ds3 , v044
	.byte		N92   , Gn3 
	.byte	W04
	.byte	TEMPO , 83*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 82*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 82*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 82*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 81*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 81*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 80*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 80*mus_ive_seen_much_tbs/2
	.byte	W02
	.byte		N44   , Cn2 , v084
	.byte	W04
	.byte	TEMPO , 79*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 79*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 79*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 78*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 78*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 77*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 77*mus_ive_seen_much_tbs/2
	.byte	W06
	.byte	TEMPO , 76*mus_ive_seen_much_tbs/2
	.byte	W02
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	TEMPO , 130*mus_ive_seen_much_tbs/2
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_ive_seen_much_2:
	.byte	KEYSH , mus_ive_seen_much_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 76*mus_ive_seen_much_mvl/mxv
	.byte		PAN   , c_v+18
	.byte		N44   , As3 , v064
	.byte	W48
	.byte		N22   , Cs4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
@ 001   ----------------------------------------
mus_ive_seen_much_2_001:
	.byte		N68   , Fn4 , v064
	.byte	W72
	.byte		N22   , As3 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
	.byte		N44   , Ds4 
	.byte	W48
	.byte		N22   , Fn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
@ 003   ----------------------------------------
	.byte		N90   , Fn4 
	.byte	W96
@ 004   ----------------------------------------
mus_ive_seen_much_2_004:
	.byte		N44   , As2 , v064
	.byte	W48
	.byte		N22   , Fn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
mus_ive_seen_much_2_005:
	.byte		N68   , Ds4 , v064
	.byte	W72
	.byte		N22   , Cn4 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
mus_ive_seen_much_2_006:
	.byte		N44   , As3 , v064
	.byte	W48
	.byte		        Gs3 
	.byte	W48
	.byte	PEND
@ 007   ----------------------------------------
	.byte		N90   , As3 
	.byte	W96
@ 008   ----------------------------------------
	.byte		N44   
	.byte	W48
	.byte		N22   , Cs4 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_ive_seen_much_2_001
@ 010   ----------------------------------------
	.byte		N44   , Ds4 , v064
	.byte	W48
	.byte		N24   , As4 , v076
	.byte	W24
	.byte		        Gs4 
	.byte	W24
@ 011   ----------------------------------------
	.byte		N68   , Fn4 , v064
	.byte	W72
	.byte		N22   , Gs3 
	.byte	W24
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_ive_seen_much_2_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_ive_seen_much_2_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_ive_seen_much_2_006
@ 015   ----------------------------------------
	.byte		N22   , As3 , v064
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Ds4 , v068
	.byte	W24
@ 016   ----------------------------------------
mus_ive_seen_much_2_016:
	.byte		N44   , Fn4 , v072
	.byte	W48
	.byte		N22   , Cs4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
	.byte		N44   , Fn4 
	.byte	W48
	.byte		N22   , Cs4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
@ 018   ----------------------------------------
	.byte		TIE   , Fn4 
	.byte	W96
@ 019   ----------------------------------------
	.byte	W40
	.byte		EOT   
	.byte	W08
	.byte		N44   , Fn3 
	.byte	W48
@ 020   ----------------------------------------
	.byte		        Ds4 
	.byte	W48
	.byte		N22   , Fs3 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
@ 021   ----------------------------------------
	.byte		N44   , Ds4 
	.byte	W48
	.byte		N22   , As3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N44   , Cs4 
	.byte	W48
	.byte		        Fn3 
	.byte	W48
@ 023   ----------------------------------------
	.byte		        Ds3 
	.byte	W48
	.byte		        Cs3 
	.byte	W48
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_ive_seen_much_2_016
@ 025   ----------------------------------------
	.byte		N44   , Fn4 , v072
	.byte	W48
	.byte		N22   , As4 
	.byte	W24
	.byte		        Gs4 
	.byte	W24
@ 026   ----------------------------------------
	.byte		N44   , Cs4 
	.byte	W48
	.byte		        Cn5 
	.byte	W48
@ 027   ----------------------------------------
	.byte		N90   , As4 
	.byte	W96
@ 028   ----------------------------------------
	.byte		N44   , Gs4 
	.byte	W48
	.byte		        Fn4 
	.byte	W48
@ 029   ----------------------------------------
	.byte		N22   , Cs4 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        As4 
	.byte	W24
	.byte		        Gs4 
	.byte	W24
@ 030   ----------------------------------------
	.byte		N68   , As4 
	.byte	W72
	.byte		N22   , As3 
	.byte	W24
@ 031   ----------------------------------------
	.byte		N44   , Cn5 
	.byte	W48
	.byte		N07   , Cn4 
	.byte	W08
	.byte		N03   , Ds4 
	.byte	W04
	.byte		N11   , Gs4 
	.byte	W12
	.byte		N22   , Cn5 
	.byte	W24
@ 032   ----------------------------------------
mus_ive_seen_much_2_032:
	.byte		N44   , Gn4 , v072
	.byte	W48
	.byte		N22   , Cn5 
	.byte	W24
	.byte		        As4 
	.byte	W24
	.byte	PEND
@ 033   ----------------------------------------
	.byte		        Dn4 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
@ 034   ----------------------------------------
mus_ive_seen_much_2_034:
	.byte		N68   , Gn4 , v072
	.byte	W72
	.byte		N11   , As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
	.byte		        As3 
	.byte	W96
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_ive_seen_much_2_032
@ 037   ----------------------------------------
	.byte		N22   , Dn4 , v072
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_ive_seen_much_2_034
@ 039   ----------------------------------------
	.byte		N11   , As3 , v072
	.byte	W96
@ 040   ----------------------------------------
	.byte		N68   , Cn5 
	.byte	W72
	.byte		N22   , Gs4 
	.byte	W24
@ 041   ----------------------------------------
	.byte		N44   , Ds4 
	.byte	W48
	.byte		        Gn3 
	.byte	W48
@ 042   ----------------------------------------
	.byte		N03   , Dn4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        As4 
	.byte	W04
	.byte		N13   , Dn4 
	.byte	W14
	.byte		N22   , Ds4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        As4 
	.byte	W24
@ 043   ----------------------------------------
mus_ive_seen_much_2_043:
	.byte		N44   , Cn5 , v072
	.byte	W48
	.byte		N22   , Ds3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte	PEND
@ 044   ----------------------------------------
mus_ive_seen_much_2_044:
	.byte		N44   , As4 , v072
	.byte	W48
	.byte		        Gs4 
	.byte	W48
	.byte	PEND
@ 045   ----------------------------------------
	.byte		N22   , Dn4 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        Gs4 
	.byte	W24
	.byte		        As4 
	.byte	W24
@ 046   ----------------------------------------
	.byte		N44   , Cn5 
	.byte	W48
	.byte		N22   , Gs4 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
@ 047   ----------------------------------------
	.byte		        Dn4 , v076
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 048   ----------------------------------------
	.byte		N44   , Cn5 
	.byte	W48
	.byte		N22   
	.byte	W24
	.byte		        As4 
	.byte	W24
@ 049   ----------------------------------------
	.byte		        Dn4 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
@ 050   ----------------------------------------
	.byte		N90   , Gn4 
	.byte	W96
@ 051   ----------------------------------------
	.byte		N07   , Dn4 
	.byte	W08
	.byte		        As4 
	.byte	W08
	.byte		        Gn4 
	.byte	W08
	.byte		        Dn4 
	.byte	W08
	.byte		N03   , As3 
	.byte	W04
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N07   , Dn3 
	.byte	W08
	.byte		        As2 
	.byte	W08
	.byte		        Gn3 
	.byte	W32
@ 052   ----------------------------------------
	.byte		N44   , Gn4 
	.byte	W48
	.byte		N22   , Cn5 
	.byte	W24
	.byte		        As4 
	.byte	W24
@ 053   ----------------------------------------
	.byte		        Dn4 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 054   ----------------------------------------
	.byte		N68   , Gn4 
	.byte	W72
	.byte		N11   , As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 055   ----------------------------------------
	.byte		N23   , Gn4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 056   ----------------------------------------
	.byte		N68   , Cn4 , v072
	.byte	W72
	.byte		N22   , Gs4 
	.byte	W24
@ 057   ----------------------------------------
	.byte		N44   , Ds4 
	.byte	W48
	.byte		        Gs3 
	.byte	W48
@ 058   ----------------------------------------
	.byte		N03   , Dn4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        As4 
	.byte	W04
	.byte		N13   , Dn4 
	.byte	W14
	.byte		N22   , Ds4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        As4 
	.byte	W24
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_ive_seen_much_2_043
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_ive_seen_much_2_044
@ 061   ----------------------------------------
	.byte		N03   , Dn4 , v072
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Gs4 
	.byte	W04
	.byte		N13   , Dn4 
	.byte	W14
	.byte		N22   , Cn5 
	.byte	W24
	.byte		        Gs4 
	.byte	W24
	.byte		        As4 
	.byte	W24
@ 062   ----------------------------------------
	.byte		N44   , Cn5 
	.byte	W48
	.byte		N22   , Gn4 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
@ 063   ----------------------------------------
	.byte		        Dn4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 064   ----------------------------------------
	.byte		TIE   , Cn5 
	.byte	W96
@ 065   ----------------------------------------
	.byte	W84
	.byte	W02
	.byte		EOT   
	.byte	W10
@ 066   ----------------------------------------
mus_ive_seen_much_2_066:
	.byte		N68   , Cn5 , v072
	.byte	W72
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N05   , Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte	PEND
@ 067   ----------------------------------------
mus_ive_seen_much_2_067:
	.byte		N80   , Gn4 , v072
	.byte	W84
	.byte		N11   , As4 
	.byte	W12
	.byte	PEND
@ 068   ----------------------------------------
mus_ive_seen_much_2_068:
	.byte		N68   , Fn4 , v072
	.byte	W72
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N05   , Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte	PEND
@ 069   ----------------------------------------
	.byte		N23   , Cn4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        As3 
	.byte	W24
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_ive_seen_much_2_066
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_ive_seen_much_2_067
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_ive_seen_much_2_068
@ 073   ----------------------------------------
	.byte		N92   , Cn4 , v072
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_ive_seen_much:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_ive_seen_much_pri	@ Priority
	.byte	mus_ive_seen_much_rev	@ Reverb.

	.word	mus_ive_seen_much_grp

	.word	mus_ive_seen_much_1
	.word	mus_ive_seen_much_2

	.end
