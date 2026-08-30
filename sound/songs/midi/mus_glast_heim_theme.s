	.include "MPlayDef.s"

	.equ	mus_glast_heim_theme_grp, voicegroup_glast_heim_theme
	.equ	mus_glast_heim_theme_pri, 0
	.equ	mus_glast_heim_theme_rev, reverb_set+50
	.equ	mus_glast_heim_theme_mvl, 100
	.equ	mus_glast_heim_theme_key, 0
	.equ	mus_glast_heim_theme_tbs, 1
	.equ	mus_glast_heim_theme_exg, 1
	.equ	mus_glast_heim_theme_cmp, 1

	.section .rodata
	.global	mus_glast_heim_theme
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_glast_heim_theme_1:
	.byte	KEYSH , mus_glast_heim_theme_key+0
mus_glast_heim_theme_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 87*mus_glast_heim_theme_tbs/2
	.byte	TEMPO , 85*mus_glast_heim_theme_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 125*mus_glast_heim_theme_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N68   , An1 , v120, gtp3
	.byte	W72
	.byte		N23   , As1 
	.byte	W24
@ 001   ----------------------------------------
	.byte		N48   , An1 
	.byte	W96
@ 002   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        As1 
	.byte	W24
@ 003   ----------------------------------------
mus_glast_heim_theme_1_003:
	.byte		N44   , An1 , v120, gtp3
	.byte	W48
	.byte		        Gs1 , v120, gtp3
	.byte	W48
	.byte	PEND
@ 004   ----------------------------------------
mus_glast_heim_theme_1_004:
	.byte		N44   , Gn1 , v120, gtp3
	.byte	W48
	.byte		        Gs1 , v120, gtp3
	.byte	W48
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_1_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_1_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_1_004
@ 009   ----------------------------------------
mus_glast_heim_theme_1_009:
	.byte		N44   , An1 , v120, gtp3
	.byte	W48
	.byte		        As1 , v120, gtp3
	.byte	W48
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_1_009
@ 011   ----------------------------------------
	.byte		N44   , Bn1 , v120, gtp3
	.byte	W48
	.byte		        Cn2 , v120, gtp3
	.byte	W48
@ 012   ----------------------------------------
	.byte		N92   , Cn1 , v120, gtp3
	.byte	W96
@ 013   ----------------------------------------
	.byte		        Cs1 , v120, gtp3
	.byte	W96
@ 014   ----------------------------------------
	.byte		        Bn0 , v120, gtp3
	.byte	W96
@ 015   ----------------------------------------
	.byte		TIE   , As0 
	.byte	W96
@ 016   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
@ 017   ----------------------------------------
	.byte		N92   , Cn1 , v116, gtp3
	.byte	W96
@ 018   ----------------------------------------
	.byte		        Cn1 , v116, gtp3
	.byte	W96
@ 019   ----------------------------------------
	.byte		        Cn1 , v116, gtp3
	.byte	W96
@ 020   ----------------------------------------
	.byte		        Cn1 , v116, gtp3
	.byte	W96
@ 021   ----------------------------------------
	.byte		        Gn0 , v116, gtp3
	.byte	W96
@ 022   ----------------------------------------
	.byte		        An0 , v116, gtp3
	.byte	W96
@ 023   ----------------------------------------
	.byte		N44   , Gs0 , v116, gtp3
	.byte	W48
	.byte		        Gn0 , v116, gtp3
	.byte	W48
@ 024   ----------------------------------------
	.byte		        Fs1 , v116, gtp3
	.byte	W48
	.byte		        Bn0 , v116, gtp3
	.byte	W48
@ 025   ----------------------------------------
	.byte		N92   , Cn1 , v104, gtp3
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Cn1 , v104, gtp3
	.byte	W96
@ 027   ----------------------------------------
	.byte		        As0 , v104, gtp3
	.byte	W96
@ 028   ----------------------------------------
	.byte		        Cn1 , v104, gtp3
	.byte	W96
@ 029   ----------------------------------------
	.byte		        As0 , v116, gtp3
	.byte	W96
@ 030   ----------------------------------------
	.byte		        An0 , v116, gtp3
	.byte	W96
@ 031   ----------------------------------------
mus_glast_heim_theme_1_031:
	.byte		N44   , Gs0 , v120, gtp3
	.byte	W48
	.byte		        Gn0 , v120, gtp3
	.byte	W48
	.byte	PEND
@ 032   ----------------------------------------
	.byte		        Fs1 , v120, gtp3
	.byte	W48
	.byte		        Dn1 , v120, gtp3
	.byte	W48
@ 033   ----------------------------------------
	.byte		N92   , Gn0 , v120, gtp3
	.byte	W96
@ 034   ----------------------------------------
	.byte		        Cn1 , v120, gtp3
	.byte	W96
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_1_031
@ 036   ----------------------------------------
	.byte		N44   , Cn1 , v120, gtp3
	.byte	W48
	.byte		        Dn1 , v120, gtp3
	.byte	W48
@ 037   ----------------------------------------
	.byte		N92   , Gn0 , v120, gtp3
	.byte	W96
@ 038   ----------------------------------------
	.byte		        Gn0 , v120, gtp3
	.byte	W96
@ 039   ----------------------------------------
	.byte		        Gn0 , v120, gtp3
	.byte	W96
@ 040   ----------------------------------------
	.byte		        Gn0 , v120, gtp3
	.byte	W96
@ 041   ----------------------------------------
	.byte		        Cn1 , v120, gtp3
	.byte	W96
@ 042   ----------------------------------------
	.byte		        Cs1 , v120, gtp3
	.byte	W96
@ 043   ----------------------------------------
	.byte		        Dn1 , v120, gtp3
	.byte	W96
@ 044   ----------------------------------------
	.byte		        Cs1 , v120, gtp3
	.byte	W96
@ 045   ----------------------------------------
	.byte		        Cn1 , v120, gtp3
	.byte	W96
@ 046   ----------------------------------------
	.byte		        Cs1 , v120, gtp3
	.byte	W96
@ 047   ----------------------------------------
	.byte		        Dn1 , v120, gtp3
	.byte	W96
@ 048   ----------------------------------------
	.byte		        Cs1 , v120, gtp3
	.byte	W96
@ 049   ----------------------------------------
	.byte		        Cn1 , v120, gtp3
	.byte	W96
@ 050   ----------------------------------------
	.byte		        Cs1 , v120, gtp3
	.byte	W96
@ 051   ----------------------------------------
	.byte		        Dn1 , v120, gtp3
	.byte	W96
@ 052   ----------------------------------------
	.byte		N96   , Cs1 
	.byte	W96
	.byte	GOTO
	 .word	mus_glast_heim_theme_1_B1
mus_glast_heim_theme_1_B2:
@ 053   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_glast_heim_theme_2:
	.byte	KEYSH , mus_glast_heim_theme_key+0
mus_glast_heim_theme_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 48*mus_glast_heim_theme_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N68   , En3 , v068, gtp3
	.byte	W72
	.byte		N23   , Fn3 
	.byte	W24
@ 001   ----------------------------------------
	.byte		N48   , En3 
	.byte	W96
@ 002   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Fn3 
	.byte	W24
@ 003   ----------------------------------------
mus_glast_heim_theme_2_003:
	.byte		N44   , En3 , v068, gtp3
	.byte	W48
	.byte		        Ds3 , v068, gtp3
	.byte	W48
	.byte	PEND
@ 004   ----------------------------------------
mus_glast_heim_theme_2_004:
	.byte		N44   , Dn3 , v068, gtp3
	.byte	W48
	.byte		        Ds3 , v068, gtp3
	.byte	W48
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_2_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_2_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_2_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_2_004
@ 009   ----------------------------------------
	.byte		N44   , En3 , v068, gtp3
	.byte	W48
	.byte		        Fn3 , v068, gtp3
	.byte	W48
@ 010   ----------------------------------------
	.byte		        Ds3 , v068, gtp3
	.byte	W48
	.byte		        En3 , v068, gtp3
	.byte	W48
@ 011   ----------------------------------------
	.byte		        Fn3 , v068, gtp3
	.byte	W48
	.byte		        Fs3 , v068, gtp3
	.byte	W48
@ 012   ----------------------------------------
	.byte		N12   , Gs3 , v060
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N06   , Ds3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N11   , Gs3 , v068
	.byte	W12
	.byte		N06   , Ds3 , v060
	.byte	W12
@ 013   ----------------------------------------
	.byte		N12   , Gs3 
	.byte	W24
	.byte		N23   , En3 
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N23   
	.byte	W24
@ 014   ----------------------------------------
	.byte		        Fs3 , v068
	.byte	W24
	.byte		        Ds3 , v060
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
@ 015   ----------------------------------------
	.byte		N12   , Dn3 
	.byte	W24
	.byte		N06   , Dn3 , v068
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N44   , Dn3 , v068, gtp3
	.byte	W48
@ 016   ----------------------------------------
	.byte		N06   , Dn3 , v060
	.byte	W24
	.byte		N36   
	.byte	W72
@ 017   ----------------------------------------
	.byte		N44   , Ds3 , v068, gtp3
	.byte	W48
	.byte		N32   , Gn4 , v068, gtp3
	.byte	W36
	.byte		N11   , Gs3 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N23   , Ds3 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		N44   , Dn4 , v068, gtp3
	.byte	W48
@ 019   ----------------------------------------
	.byte		N23   , Ds3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N32   , As3 , v068, gtp3
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N44   , Ds3 , v068, gtp3
	.byte	W48
	.byte		        Cn4 , v068, gtp3
	.byte	W48
@ 021   ----------------------------------------
	.byte		N11   , Ds3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N32   , Dn4 , v068, gtp3
	.byte	W36
@ 022   ----------------------------------------
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N32   , Cn4 , v068, gtp3
	.byte	W36
	.byte		N11   , As3 
	.byte	W12
@ 023   ----------------------------------------
	.byte		N23   , Ds3 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		N11   , Fn3 
	.byte	W12
	.byte		N23   , Gn4 
	.byte	W24
	.byte		N11   , Fn4 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N23   , Ds3 
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N23   , Dn3 
	.byte	W24
	.byte		N11   , As3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 025   ----------------------------------------
	.byte		N12   , Ds3 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
@ 026   ----------------------------------------
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N12   , Ds3 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
@ 027   ----------------------------------------
	.byte		N23   , As3 
	.byte	W24
	.byte		N12   , Fn3 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 028   ----------------------------------------
	.byte		N12   
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
@ 029   ----------------------------------------
	.byte		N23   , As3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
@ 030   ----------------------------------------
	.byte		N23   , Cn4 
	.byte	W24
	.byte		N12   , An3 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
@ 031   ----------------------------------------
	.byte		        Cn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
@ 032   ----------------------------------------
	.byte		        Gn3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
@ 033   ----------------------------------------
	.byte		N23   , Gn3 , v060
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
@ 034   ----------------------------------------
	.byte		N11   , As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N44   , Gs3 , v060, gtp3
	.byte	W48
@ 035   ----------------------------------------
	.byte		N32   , Cn4 , v060, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N23   , Ds4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
@ 036   ----------------------------------------
	.byte		        Ds4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , An3 
	.byte	W24
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        Gn3 , v068
	.byte	W12
@ 037   ----------------------------------------
	.byte		        Ds3 
	.byte	W12
	.byte		        Ds4 , v060
	.byte	W12
	.byte		N23   , Cn4 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   , Cn3 , v068
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 038   ----------------------------------------
	.byte		N12   , Ds3 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		N11   , Ds3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W24
@ 039   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cn4 , v060
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N23   , Cn4 
	.byte	W24
	.byte		N23   
	.byte	W24
@ 040   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N23   , Cn4 
	.byte	W24
	.byte		N12   , Cn3 , v068
	.byte	W24
@ 041   ----------------------------------------
	.byte		N11   , Gn3 , v072
	.byte	W12
	.byte		        Gn4 , v068
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N32   , Cn4 , v068, gtp3
	.byte	W36
@ 042   ----------------------------------------
mus_glast_heim_theme_2_042:
	.byte		N11   , Gs3 , v072
	.byte	W12
	.byte		        Gs3 , v068
	.byte	W12
	.byte		N23   , As3 
	.byte	W24
	.byte		N44   , Gs3 , v068, gtp3
	.byte	W48
	.byte	PEND
@ 043   ----------------------------------------
mus_glast_heim_theme_2_043:
	.byte		N11   , An3 , v072
	.byte	W12
	.byte		        Gn4 , v068
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N44   , Dn4 , v068, gtp3
	.byte	W48
	.byte	PEND
@ 044   ----------------------------------------
mus_glast_heim_theme_2_044:
	.byte		N23   , Gs3 , v072
	.byte	W24
	.byte		N12   , Cs3 
	.byte	W24
	.byte		N44   , Cs3 , v072, gtp3
	.byte	W48
	.byte	PEND
@ 045   ----------------------------------------
	.byte		N11   , Ds3 
	.byte	W12
	.byte		        Fn4 , v068
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N23   , Cn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_2_042
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_2_043
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_2_044
@ 049   ----------------------------------------
	.byte		N11   , Gn4 , v068
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N44   , Cn4 , v068, gtp3
	.byte	W48
@ 050   ----------------------------------------
	.byte		N23   , Cs4 
	.byte	W24
	.byte		N12   , Gs3 
	.byte	W24
	.byte		N44   , Gs3 , v068, gtp3
	.byte	W48
@ 051   ----------------------------------------
	.byte		N11   , An3 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N44   , Dn4 , v068, gtp3
	.byte	W48
@ 052   ----------------------------------------
	.byte		N96   , Cs4 
	.byte	W96
	.byte	GOTO
	 .word	mus_glast_heim_theme_2_B1
mus_glast_heim_theme_2_B2:
@ 053   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_glast_heim_theme_3:
	.byte	KEYSH , mus_glast_heim_theme_key+0
mus_glast_heim_theme_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_glast_heim_theme_mvl/mxv
	.byte		PAN   , c_v+10
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
	.byte		N44   , Dn4 , v108, gtp3
	.byte	W48
	.byte		        Ds4 , v108, gtp3
	.byte	W48
@ 009   ----------------------------------------
	.byte		        En4 , v108, gtp3
	.byte	W48
	.byte		        Fn4 , v108, gtp3
	.byte	W48
@ 010   ----------------------------------------
	.byte		        Ds4 , v108, gtp3
	.byte	W48
	.byte		        En4 , v108, gtp3
	.byte	W48
@ 011   ----------------------------------------
	.byte		        Fn4 , v108, gtp3
	.byte	W48
	.byte		        Fs4 , v108, gtp3
	.byte	W48
@ 012   ----------------------------------------
	.byte		N12   , Bn3 , v104
	.byte	W24
	.byte		N44   , Bn3 , v104, gtp3
	.byte	W48
	.byte		N23   , Gs3 
	.byte	W24
@ 013   ----------------------------------------
	.byte		N92   , Cs4 , v104, gtp3
	.byte	W96
@ 014   ----------------------------------------
	.byte		        Fs3 , v108, gtp3
	.byte	W96
@ 015   ----------------------------------------
	.byte		TIE   , Fn3 
	.byte	W96
@ 016   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
@ 017   ----------------------------------------
	.byte		N44   , Dn4 , v108, gtp3
	.byte	W48
	.byte		N32   , Gn4 , v108, gtp3
	.byte	W36
	.byte		N11   , Gs4 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N23   , Fn4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		N44   , Dn4 , v108, gtp3
	.byte	W48
@ 019   ----------------------------------------
	.byte		N23   , Ds4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N32   , As3 , v108, gtp3
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
@ 020   ----------------------------------------
mus_glast_heim_theme_3_020:
	.byte		N44   , Dn4 , v108, gtp3
	.byte	W48
	.byte		        Cn4 , v108, gtp3
	.byte	W48
	.byte	PEND
@ 021   ----------------------------------------
	.byte		N11   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N32   , Dn4 , v108, gtp3
	.byte	W36
@ 022   ----------------------------------------
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N32   , Cn4 , v108, gtp3
	.byte	W36
	.byte		N11   , As3 
	.byte	W12
@ 023   ----------------------------------------
	.byte		N23   , Cn4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		N11   , Fn4 
	.byte	W12
	.byte		N23   , Gn4 
	.byte	W24
	.byte		N11   , Fn4 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N23   , Ds4 
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N44   , Dn4 , v108, gtp3
	.byte	W48
@ 025   ----------------------------------------
	.byte		N92   , Cn3 , v108, gtp3
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Gn3 , v108, gtp3
	.byte	W96
@ 027   ----------------------------------------
	.byte		N80   , As3 , v108, gtp3
	.byte	W84
	.byte		N11   , Gn3 
	.byte	W12
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_3_020
@ 029   ----------------------------------------
	.byte		N92   , As3 , v108, gtp3
	.byte	W96
@ 030   ----------------------------------------
	.byte		        Cn4 , v108, gtp3
	.byte	W96
@ 031   ----------------------------------------
	.byte		N44   , Gn4 , v108, gtp3
	.byte	W48
	.byte		        Fn4 , v108, gtp3
	.byte	W48
@ 032   ----------------------------------------
	.byte		        Ds4 , v108, gtp3
	.byte	W48
	.byte		        Dn4 , v108, gtp3
	.byte	W48
@ 033   ----------------------------------------
	.byte		N23   , Cn4 , v104
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Fn4 
	.byte	W24
@ 034   ----------------------------------------
	.byte		N11   , Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N44   , Cn4 , v104, gtp3
	.byte	W48
@ 035   ----------------------------------------
	.byte		N32   , Ds4 , v104, gtp3
	.byte	W36
	.byte		N11   , Fn4 
	.byte	W12
	.byte		N23   , Gn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
@ 036   ----------------------------------------
	.byte		        Gn4 
	.byte	W24
	.byte		N11   , Gs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N23   , Dn4 
	.byte	W24
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 037   ----------------------------------------
	.byte		        Cn4 , v108
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N23   , Gs4 
	.byte	W24
	.byte		N32   , Fs4 , v108, gtp3
	.byte	W36
	.byte		N11   , Dn4 
	.byte	W12
@ 038   ----------------------------------------
	.byte		N44   , Fn4 , v108, gtp3
	.byte	W48
	.byte		N11   , Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N23   , Ds4 
	.byte	W24
@ 039   ----------------------------------------
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N23   , Gs4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
@ 040   ----------------------------------------
	.byte		N11   , Gn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N44   , Gn4 , v108, gtp3
	.byte	W48
@ 041   ----------------------------------------
	.byte		N11   , Gs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N32   , Cn4 , v108, gtp3
	.byte	W36
@ 042   ----------------------------------------
mus_glast_heim_theme_3_042:
	.byte		N11   , Cs4 , v108
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N23   , As4 
	.byte	W24
	.byte		N44   , Gs4 , v108, gtp3
	.byte	W48
	.byte	PEND
@ 043   ----------------------------------------
mus_glast_heim_theme_3_043:
	.byte		N11   , An4 , v108
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N44   , Dn4 , v108, gtp3
	.byte	W48
	.byte	PEND
@ 044   ----------------------------------------
	.byte		N92   , Cs4 , v108, gtp3
	.byte	W96
@ 045   ----------------------------------------
	.byte		N11   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N23   , Cn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_3_042
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_3_043
@ 048   ----------------------------------------
	.byte		N92   , Cs4 , v108, gtp3
	.byte	W96
@ 049   ----------------------------------------
	.byte		N11   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N44   , Cn4 , v108, gtp3
	.byte	W48
@ 050   ----------------------------------------
	.byte		N23   , Cs4 
	.byte	W24
	.byte		N12   , Gs4 
	.byte	W24
	.byte		N44   , Gs4 , v108, gtp3
	.byte	W48
@ 051   ----------------------------------------
	.byte		N11   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N48   , Dn4 
	.byte	W48
@ 052   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_glast_heim_theme_3_B1
mus_glast_heim_theme_3_B2:
@ 053   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_glast_heim_theme_4:
	.byte	KEYSH , mus_glast_heim_theme_key+0
mus_glast_heim_theme_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 88*mus_glast_heim_theme_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W24
	.byte		N02   , Dn1 , v084
	.byte		N02   , En1 
	.byte	W24
	.byte		        Cn1 
	.byte		N02   , En1 
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , En1 
	.byte	W18
	.byte		        Cn1 
	.byte		N02   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte		N02   , En1 
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , En1 
	.byte	W06
@ 002   ----------------------------------------
mus_glast_heim_theme_4_002:
	.byte	W12
	.byte		N02   , Ds4 , v056
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Ds4 , v056
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Cn1 , v084
	.byte		N02   , An2 , v096
	.byte	W12
	.byte		        Ds4 , v056
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_002
@ 006   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , An2 , v096
	.byte	W12
	.byte		        Ds4 , v056
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , An2 , v096
	.byte	W12
	.byte		        Ds4 , v056
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_002
@ 008   ----------------------------------------
	.byte	W12
	.byte		N02   , Ds4 , v056
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v080
	.byte		N02   , An2 , v096
	.byte	W12
	.byte		        Ds4 , v056
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 009   ----------------------------------------
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        Ds4 , v056
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_002
@ 012   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , An2 , v096
	.byte	W12
	.byte		        Gs1 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Fs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Gs1 
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Fs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W06
	.byte		N02   
	.byte	W06
@ 013   ----------------------------------------
	.byte		        Gs1 , v068
	.byte	W12
	.byte		N02   
	.byte		N02   , Ds4 , v044
	.byte	W06
	.byte		        Gs1 , v068
	.byte		N02   , Ds4 , v044
	.byte	W06
	.byte		        Gs1 , v068
	.byte	W12
	.byte		N02   
	.byte		N02   , Ds4 , v044
	.byte	W06
	.byte		        Gs1 , v068
	.byte		N02   , Ds4 , v044
	.byte	W06
	.byte		        Gs1 , v080
	.byte	W12
	.byte		N02   
	.byte		N02   , Ds4 , v044
	.byte	W06
	.byte		        Gs1 , v080
	.byte		N02   , Ds4 , v044
	.byte	W06
	.byte		        Gs1 , v080
	.byte	W12
	.byte		N02   
	.byte		N02   , Ds4 , v044
	.byte	W06
	.byte		        Gs1 , v080
	.byte		N02   , Ds4 , v044
	.byte	W06
@ 014   ----------------------------------------
mus_glast_heim_theme_4_014:
	.byte		N02   , Gs1 , v068
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Gs1 , v080
	.byte	W12
	.byte		N02   
	.byte		N02   , Ds4 , v044
	.byte	W06
	.byte		        Gs1 , v080
	.byte		N02   , Ds4 , v044
	.byte	W06
	.byte		        Gs1 , v080
	.byte		N02   , Ds4 , v044
	.byte	W12
	.byte		        Gs1 , v080
	.byte		N02   , Ds4 , v044
	.byte	W06
	.byte		        Gs1 , v080
	.byte	W06
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_014
@ 016   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , An2 , v096
	.byte	W24
	.byte		        An2 , v044
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        An2 , v056
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        An2 , v068
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        An2 , v080
	.byte	W03
	.byte		N02   
	.byte	W44
	.byte	W01
@ 017   ----------------------------------------
mus_glast_heim_theme_4_017:
	.byte		N02   , Cn1 , v088
	.byte		N02   , Dn3 , v068
	.byte	W12
	.byte		        Gs1 , v084
	.byte		N02   , Dn3 , v068
	.byte	W06
	.byte		        Gs1 , v084
	.byte		N02   , Dn3 , v068
	.byte	W06
	.byte		        Ds1 , v084
	.byte		N02   , As1 
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , Dn3 , v068
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , Dn3 , v068
	.byte	W06
	.byte		        Gs1 , v084
	.byte		N02   , Dn3 , v068
	.byte	W06
	.byte		        Gs1 , v084
	.byte		N02   , Dn3 , v068
	.byte	W12
	.byte		        Ds1 , v084
	.byte		N02   , As1 
	.byte	W12
	.byte		        Gs1 
	.byte		N02   , Dn3 , v068
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_glast_heim_theme_4_018:
	.byte		N02   , Cn1 , v044
	.byte		N02   , Dn3 , v068
	.byte	W12
	.byte		        Gs1 , v084
	.byte		N02   , Dn3 , v068
	.byte	W06
	.byte		        Gs1 , v084
	.byte		N02   , Dn3 , v068
	.byte	W06
	.byte		        Ds1 , v084
	.byte		N02   , As1 
	.byte	W12
	.byte		        Cn1 , v044
	.byte		N02   , Dn3 , v068
	.byte	W12
	.byte		        Cn1 , v044
	.byte		N02   , Dn3 , v068
	.byte	W06
	.byte		        Gs1 , v084
	.byte		N02   , Dn3 , v068
	.byte	W06
	.byte		        Gs1 , v084
	.byte		N02   , Dn3 , v068
	.byte	W12
	.byte		        Ds1 , v084
	.byte		N02   , As1 
	.byte	W12
	.byte		        Gs1 
	.byte		N02   , Dn3 , v068
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_017
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_018
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_017
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_018
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_017
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_017
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_018
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_017
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_018
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_017
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_018
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_017
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_018
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_017
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_018
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_017
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_018
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_017
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_018
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_017
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_018
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_017
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_018
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_017
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_018
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_017
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_018
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_018
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_glast_heim_theme_4_017
@ 052   ----------------------------------------
	.byte		N02   , Cn1 , v068
	.byte		N02   , An2 
	.byte	W96
	.byte	GOTO
	 .word	mus_glast_heim_theme_4_B1
mus_glast_heim_theme_4_B2:
@ 053   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_glast_heim_theme:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_glast_heim_theme_pri	@ Priority
	.byte	mus_glast_heim_theme_rev	@ Reverb.

	.word	mus_glast_heim_theme_grp

	.word	mus_glast_heim_theme_1
	.word	mus_glast_heim_theme_2
	.word	mus_glast_heim_theme_3
	.word	mus_glast_heim_theme_4

	.end
