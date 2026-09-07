	.include "MPlayDef.s"

	.equ	mus_shadow_lugia_theme_grp, voicegroup_rayquaza_appears
	.equ	mus_shadow_lugia_theme_pri, 0
	.equ	mus_shadow_lugia_theme_rev, reverb_set+50
	.equ	mus_shadow_lugia_theme_mvl, 90
	.equ	mus_shadow_lugia_theme_key, 0
	.equ	mus_shadow_lugia_theme_tbs, 1
	.equ	mus_shadow_lugia_theme_exg, 1
	.equ	mus_shadow_lugia_theme_cmp, 1

	.section .rodata
	.global	mus_shadow_lugia_theme
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_shadow_lugia_theme_1:
	.byte	KEYSH , mus_shadow_lugia_theme_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 152*mus_shadow_lugia_theme_tbs/2
	.byte		VOICE , 35
	.byte		VOL   , 118*mus_shadow_lugia_theme_mvl/mxv
	.byte		PAN   , c_v+6
	.byte	W12
	.byte		N22   , Cs3 , v092
	.byte	W24
	.byte		N10   , Fs3 , v100
	.byte	W12
	.byte		        Gn3 , v096
	.byte	W12
	.byte		        Fs3 , v100
	.byte	W12
	.byte		        Gn3 , v096
	.byte	W12
	.byte		        Cs3 , v104
	.byte	W12
@ 002   ----------------------------------------
	.byte		N22   , Cn3 , v096
	.byte	W36
	.byte		N32   , Cn3 , v116, gtp2
	.byte	W48
	.byte		N22   , Ds3 , v112
	.byte	W12
@ 003   ----------------------------------------
	.byte	W36
	.byte		N10   
	.byte	W12
	.byte		N44   , Cn3 , v096, gtp2
	.byte	W48
@ 004   ----------------------------------------
	.byte	W12
	.byte		N10   , Cs3 
	.byte	W12
	.byte		N44   , Fn3 , v108, gtp2
	.byte	W72
@ 005   ----------------------------------------
	.byte	W12
	.byte		N10   , Fn3 , v092
	.byte	W12
	.byte		N22   , Gn3 , v104
	.byte	W24
	.byte		        Cs3 , v096
	.byte	W24
	.byte		N10   , Bn2 , v108
	.byte	W12
	.byte		N22   , Cs3 , v096
	.byte	W12
@ 006   ----------------------------------------
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N44   , Cn3 , v104, gtp2
	.byte	W60
@ 007   ----------------------------------------
	.byte	W36
	.byte		N10   , Fn3 , v084
	.byte	W12
	.byte		N22   , As3 , v104
	.byte	W36
	.byte		N32   , As3 , v084, gtp2
	.byte	W12
@ 008   ----------------------------------------
	.byte	W48
	.byte		N22   , Bn2 , v108
	.byte	W24
	.byte		        Cn3 
	.byte	W24
@ 009   ----------------------------------------
	.byte	W36
	.byte		        Ds3 , v096
	.byte	W24
	.byte		N10   , Fs3 
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N10   , En4 , v088
	.byte	W12
	.byte		        As4 , v092
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Ds4 , v096
	.byte	W12
	.byte		N22   , As3 , v092
	.byte	W24
	.byte		N10   , Ds3 , v096
	.byte	W12
@ 011   ----------------------------------------
	.byte		N22   , Dn3 
	.byte	W36
	.byte		N44   , Bn3 , v092, gtp2
	.byte	W48
	.byte		N10   , Gn3 , v096
	.byte	W12
@ 012   ----------------------------------------
	.byte		        Gs3 , v088
	.byte	W12
	.byte		        Dn3 , v096
	.byte	W12
	.byte		N22   , Cs3 
	.byte	W24
	.byte		N10   , Gn3 , v092
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N32   , Cs3 , v096, gtp2
	.byte	W24
@ 013   ----------------------------------------
	.byte	W12
	.byte		N22   , En3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		N10   , En3 , v092
	.byte	W24
	.byte		N32   , Bn2 , v100, gtp2
	.byte	W12
@ 014   ----------------------------------------
	.byte	W24
	.byte		N10   , As2 , v092
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gs3 , v100
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cs3 , v104
	.byte	W12
@ 015   ----------------------------------------
	.byte	W12
	.byte		        Fs3 , v100
	.byte	W12
	.byte		        En3 , v112
	.byte	W12
	.byte		N68   , Bn2 , v108, gtp2
	.byte	W60
@ 016   ----------------------------------------
	.byte	W12
	.byte		N44   , Bn2 , v116, gtp2
	.byte	W48
	.byte		N32   , Ds3 , v124, gtp2
	.byte	W36
@ 017   ----------------------------------------
	.byte	W72
	.byte		N10   , Fn3 , v092
	.byte	W12
	.byte		N22   , Gs3 , v112
	.byte	W12
@ 018   ----------------------------------------
	.byte	W12
	.byte		N68   , Fn3 , v108, gtp2
	.byte	W72
	.byte		N32   , Fn3 , v112, gtp2
	.byte	W12
@ 019   ----------------------------------------
	.byte	W48
	.byte		        Gn3 , v104, gtp2
	.byte	W36
	.byte		N22   , Cs3 , v112
	.byte	W12
@ 020   ----------------------------------------
	.byte	W12
	.byte		N10   , Fn3 , v100
	.byte	W12
	.byte		        En3 , v096
	.byte	W12
	.byte		N22   , Cs3 , v108
	.byte	W24
	.byte		N10   , En3 , v100
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N22   , Gn3 , v108
	.byte	W12
@ 021   ----------------------------------------
	.byte	W12
	.byte		        Bn2 , v096
	.byte	W24
	.byte		N10   , Dn3 , v104
	.byte	W12
	.byte		        Cs3 , v100
	.byte	W12
	.byte		N22   , Bn2 
	.byte	W24
	.byte		        Cs3 , v096
	.byte	W12
@ 022   ----------------------------------------
	.byte	W12
	.byte		N10   , Fn3 , v088
	.byte	W12
	.byte		        Fs3 , v092
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N68   , Fs3 , v092, gtp2
	.byte	W48
@ 023   ----------------------------------------
	.byte	W36
	.byte		N10   , Fn3 
	.byte	W24
	.byte		        Fn3 , v088
	.byte	W24
	.byte		N68   , Fn3 , v092, gtp2
	.byte	W12
@ 024   ----------------------------------------
	.byte	W60
	.byte		N10   
	.byte	W12
	.byte		N68   , Fs3 , v096, gtp2
	.byte	W24
@ 025   ----------------------------------------
	.byte	W60
	.byte		N32   , Fs3 , v116, gtp2
	.byte	W36
@ 026   ----------------------------------------
	.byte		        Fn3 , v116, gtp2
	.byte	W96
@ 027   ----------------------------------------
	.byte		N22   , Fn3 , v096
	.byte	W24
	.byte		N10   , Gs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn3 , v092
	.byte	W12
	.byte		        Ds3 , v096
	.byte	W12
	.byte		N22   , Cn3 , v088
	.byte	W24
@ 028   ----------------------------------------
	.byte		        Fn3 , v096
	.byte	W36
	.byte		N22   
	.byte	W24
	.byte		N10   , Gs3 , v092
	.byte	W12
	.byte		N22   , Cn3 
	.byte	W24
@ 029   ----------------------------------------
	.byte		N56   , Fn3 , v096, gtp2
	.byte	W60
	.byte		N10   , Ds3 , v092
	.byte	W12
	.byte		N32   , Cn3 , v092, gtp2
	.byte	W24
@ 030   ----------------------------------------
	.byte	W12
	.byte		N44   , Fn3 , v092, gtp2
	.byte	W48
	.byte		N10   , Gs3 
	.byte	W12
	.byte		N22   , Cn3 
	.byte	W24
@ 031   ----------------------------------------
	.byte		N44   , As2 , v096, gtp2
	.byte	W48
	.byte		N32   , An2 , v100, gtp2
	.byte	W36
	.byte		N68   , Fn3 , v096, gtp2
	.byte	W12
@ 032   ----------------------------------------
	.byte	W60
	.byte		N32   , Fn3 , v100, gtp2
	.byte	W36
@ 033   ----------------------------------------
	.byte		N22   , Fs4 , v092
	.byte	W24
	.byte		N10   , Fn3 , v100
	.byte	W12
	.byte		N22   , Fs3 , v096
	.byte	W24
	.byte		        Fn3 , v092
	.byte	W24
	.byte		        Cs3 , v104
	.byte	W12
@ 034   ----------------------------------------
	.byte	W12
	.byte		N10   , Gn2 , v108
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N32   , Gn2 , v108, gtp2
	.byte	W60
@ 035   ----------------------------------------
	.byte		N22   , Fn3 , v092
	.byte	W24
	.byte		N32   , Gs3 , v112, gtp2
	.byte	W36
	.byte		N44   , Fn3 , v104, gtp2
	.byte	W36
@ 036   ----------------------------------------
	.byte	W12
	.byte		N10   , Cs3 , v112
	.byte	W12
	.byte		N32   , As2 , v112, gtp2
	.byte	W36
	.byte		N44   , Gn3 , v100, gtp2
	.byte	W36
@ 037   ----------------------------------------
	.byte	W12
	.byte		N22   , Cs3 , v112
	.byte	W24
	.byte		N10   , Fn3 , v100
	.byte	W12
	.byte		N22   , En3 , v096
	.byte	W24
	.byte		N10   , Cs3 , v100
	.byte	W12
	.byte		        En3 , v096
	.byte	W12
@ 038   ----------------------------------------
	.byte		        Cs3 , v100
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W24
	.byte		        Bn2 , v096
	.byte	W36
	.byte		N10   , Cs3 
	.byte	W12
	.byte		N22   , Bn2 , v100
	.byte	W12
@ 039   ----------------------------------------
	.byte	W12
	.byte		        Cs3 , v112
	.byte	W24
	.byte		N10   , Cn3 , v100
	.byte	W12
	.byte		        Bn2 , v096
	.byte	W12
	.byte		        Gs2 , v100
	.byte	W12
	.byte		        Gn2 , v096
	.byte	W12
	.byte		N56   , Bn2 , v100, gtp2
	.byte	W12
@ 040   ----------------------------------------
	.byte	W48
	.byte		N10   , As2 
	.byte	W12
	.byte		        Dn3 , v096
	.byte	W12
	.byte		N56   , Cs3 , v100, gtp2
	.byte	W24
@ 041   ----------------------------------------
	.byte	W36
	.byte		N22   , Fn3 , v104
	.byte	W36
	.byte		N10   , Bn3 , v100
	.byte	W12
	.byte		        En3 , v096
	.byte	W12
@ 042   ----------------------------------------
	.byte		N32   , Cs3 , v104, gtp2
	.byte	W36
	.byte		N10   , En3 , v100
	.byte	W12
	.byte		N22   , Bn2 , v108
	.byte	W36
	.byte		N10   , Cs3 , v104
	.byte	W12
@ 043   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_shadow_lugia_theme_2:
	.byte	KEYSH , mus_shadow_lugia_theme_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 35
	.byte		VOL   , 102*mus_shadow_lugia_theme_mvl/mxv
	.byte		PAN   , c_v-22
	.byte	W96
@ 001   ----------------------------------------
	.byte	W36
	.byte		N10   , Cn4 , v084
	.byte	W48
	.byte		        Ds4 , v080
	.byte	W12
@ 002   ----------------------------------------
	.byte	W36
	.byte		N10   
	.byte	W24
	.byte		        Cn4 
	.byte	W36
@ 003   ----------------------------------------
	.byte	W24
	.byte		        Fn4 
	.byte	W12
	.byte		        Fn4 , v092
	.byte	W12
	.byte		        Fn4 , v088
	.byte	W48
@ 004   ----------------------------------------
	.byte	W60
	.byte		        Cs4 , v076
	.byte	W12
	.byte		        Bn3 , v080
	.byte	W24
@ 005   ----------------------------------------
	.byte		        Cs4 
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W48
	.byte		        Bn3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
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
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Bn3 
	.byte	W12
	.byte		        Bn3 , v084
	.byte	W24
	.byte		        Bn3 , v080
	.byte	W12
@ 015   ----------------------------------------
	.byte		N10   
	.byte	W12
	.byte		        Bn3 , v084
	.byte	W12
	.byte		N10   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		        Ds4 , v088
	.byte	W36
@ 016   ----------------------------------------
	.byte	W84
	.byte		        Gs4 , v084
	.byte	W12
@ 017   ----------------------------------------
	.byte		N10   
	.byte	W12
	.byte		        Fn4 , v080
	.byte	W36
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W24
	.byte		N10   
	.byte	W12
@ 018   ----------------------------------------
	.byte		N10   
	.byte	W60
	.byte		        Gn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W12
@ 019   ----------------------------------------
	.byte	W36
	.byte		N10   
	.byte	W48
	.byte		        Gn4 
	.byte	W12
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte		        Fn4 
	.byte	W12
	.byte		        Fn4 , v092
	.byte	W12
	.byte		        Fn4 , v088
	.byte	W72
@ 024   ----------------------------------------
	.byte	W12
	.byte		        Fs4 , v076
	.byte	W24
	.byte		        Fs4 , v080
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Fs4 , v084
	.byte	W24
	.byte		        Fs4 , v088
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Fn4 , v084
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
	.byte	W24
	.byte		        As3 , v076
	.byte	W72
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 , v080
	.byte	W12
	.byte		        Gn3 
	.byte	W60
@ 034   ----------------------------------------
	.byte	W24
	.byte		        Gs4 
	.byte	W60
	.byte		        Fn4 
	.byte	W12
@ 035   ----------------------------------------
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        As3 , v084
	.byte	W12
	.byte		        As3 , v080
	.byte	W48
	.byte		        Gn4 
	.byte	W12
@ 036   ----------------------------------------
	.byte	W12
	.byte		        Cs4 
	.byte	W84
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W12
	.byte		N10   
	.byte	W84
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte		        Cs4 , v076
	.byte	W48
	.byte		        Bn3 , v080
	.byte	W48
@ 042   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_shadow_lugia_theme_3:
	.byte	KEYSH , mus_shadow_lugia_theme_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 35
	.byte		VOL   , 118*mus_shadow_lugia_theme_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N21   , Fs1 , v088
	.byte	W24
	.byte		        Fs1 , v092
	.byte	W24
	.byte		        Fs1 , v088
	.byte	W24
	.byte		        Cn2 , v092
	.byte	W24
@ 001   ----------------------------------------
	.byte		        Cn2 , v088
	.byte	W24
	.byte		        Fs1 , v092
	.byte	W24
	.byte		        Fs1 , v088
	.byte	W24
	.byte		        Fs1 , v092
	.byte	W24
@ 002   ----------------------------------------
	.byte		        Fs1 , v088
	.byte	W24
	.byte		        Fs1 , v092
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		        Fs1 , v088
	.byte	W24
@ 003   ----------------------------------------
	.byte		        Gn1 
	.byte	W24
	.byte		        Gn1 , v104
	.byte	W24
	.byte		        Gn1 , v096
	.byte	W24
	.byte		        Gn1 , v084
	.byte	W24
@ 004   ----------------------------------------
	.byte		        Gn1 , v088
	.byte	W24
	.byte		        Gn1 , v092
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte		N21   
	.byte	W24
@ 005   ----------------------------------------
	.byte		        An1 , v096
	.byte	W24
	.byte		        Fs1 , v092
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		        Fs1 , v084
	.byte	W24
@ 006   ----------------------------------------
	.byte		N21   
	.byte	W24
	.byte		        Fn1 
	.byte	W24
	.byte		        Ds1 , v092
	.byte	W24
	.byte		        Ds1 , v084
	.byte	W24
@ 007   ----------------------------------------
	.byte		        Ds1 , v092
	.byte	W24
	.byte		        Ds1 , v084
	.byte	W24
	.byte		        En1 , v092
	.byte	W24
	.byte		        Fs1 
	.byte	W24
@ 008   ----------------------------------------
	.byte		        Fs1 , v084
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		        Fs1 , v088
	.byte	W24
	.byte		N21   
	.byte	W24
@ 009   ----------------------------------------
	.byte		        Gs1 
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		N21   
	.byte	W24
@ 010   ----------------------------------------
	.byte		        Dn1 
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte		        Gs1 , v092
	.byte	W24
	.byte		        Bn1 
	.byte	W24
@ 011   ----------------------------------------
	.byte		        Bn1 , v088
	.byte	W24
	.byte		        Bn1 , v092
	.byte	W24
	.byte		        Cs1 , v088
	.byte	W24
	.byte		        Gn1 
	.byte	W24
@ 012   ----------------------------------------
	.byte		        Fs1 , v092
	.byte	W24
	.byte		        Ds1 , v088
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		        Ds1 , v092
	.byte	W24
@ 013   ----------------------------------------
	.byte		        En1 
	.byte	W24
	.byte		        En1 , v088
	.byte	W24
	.byte		        En1 , v092
	.byte	W24
	.byte		        Ds1 
	.byte	W24
@ 014   ----------------------------------------
	.byte		N21   
	.byte	W24
	.byte		        En1 , v100
	.byte	W24
	.byte		        As1 
	.byte	W24
	.byte		        As1 , v096
	.byte	W24
@ 015   ----------------------------------------
	.byte		        As1 , v100
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		        As1 , v104
	.byte	W24
	.byte		        As1 , v088
	.byte	W24
@ 016   ----------------------------------------
	.byte		        As1 , v084
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		        Fs1 , v092
	.byte	W24
@ 017   ----------------------------------------
	.byte		        Fs1 , v096
	.byte	W24
	.byte		        Fs1 , v092
	.byte	W24
	.byte		        Gs1 , v096
	.byte	W24
	.byte		        An1 
	.byte	W24
@ 018   ----------------------------------------
	.byte		        As1 , v100
	.byte	W24
	.byte		        Gn1 , v092
	.byte	W24
	.byte		        Gn1 , v096
	.byte	W24
	.byte		        As1 
	.byte	W24
@ 019   ----------------------------------------
	.byte		        As1 , v092
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		N21   
	.byte	W24
@ 020   ----------------------------------------
	.byte		N21   
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		        Fn1 , v088
	.byte	W24
@ 021   ----------------------------------------
	.byte		N21   
	.byte	W24
	.byte		        Fs1 
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		N21   
	.byte	W24
@ 022   ----------------------------------------
	.byte		N21   
	.byte	W24
	.byte		        Fn1 
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		N21   
	.byte	W24
@ 023   ----------------------------------------
	.byte		        Fs1 , v104
	.byte	W24
	.byte		        Fs1 , v096
	.byte	W24
	.byte		        Fs1 , v088
	.byte	W24
	.byte		        Fs1 , v092
	.byte	W24
@ 024   ----------------------------------------
	.byte		N21   
	.byte	W24
	.byte		        Fs1 , v096
	.byte	W24
	.byte		        Fs1 , v100
	.byte	W24
	.byte		N21   
	.byte	W24
@ 025   ----------------------------------------
	.byte		        Fs1 , v096
	.byte	W24
	.byte		        Fs1 , v088
	.byte	W24
	.byte		        Fs1 , v084
	.byte	W24
	.byte		N21   
	.byte	W24
@ 026   ----------------------------------------
	.byte		        Fs1 , v088
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		        Fn1 
	.byte	W24
	.byte		        Fn1 , v084
	.byte	W24
@ 027   ----------------------------------------
mus_shadow_lugia_theme_3_027:
	.byte		N21   , Fn1 , v088
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_3_027
@ 029   ----------------------------------------
	.byte		N21   , Fs1 , v088
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		N21   
	.byte	W24
@ 030   ----------------------------------------
	.byte		        As1 , v092
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		N21   
	.byte	W24
@ 031   ----------------------------------------
	.byte		        Gs1 
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		        Gn1 , v088
	.byte	W24
@ 032   ----------------------------------------
	.byte		        Fn1 
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		        Fs1 , v092
	.byte	W24
	.byte		N21   
	.byte	W24
@ 033   ----------------------------------------
	.byte		        Fs1 , v096
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		        Fs1 , v092
	.byte	W24
	.byte		        Fs1 , v084
	.byte	W24
@ 034   ----------------------------------------
	.byte		        Fs1 , v092
	.byte	W24
	.byte		        Fs1 , v096
	.byte	W24
	.byte		        Fs1 , v092
	.byte	W24
	.byte		        Gs1 , v096
	.byte	W24
@ 035   ----------------------------------------
	.byte		        An1 
	.byte	W24
	.byte		        As1 , v100
	.byte	W24
	.byte		        Gn1 , v092
	.byte	W24
	.byte		        Gn1 , v096
	.byte	W24
@ 036   ----------------------------------------
	.byte		        As1 
	.byte	W24
	.byte		        As1 , v092
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		        Gn1 
	.byte	W24
@ 037   ----------------------------------------
	.byte		N21   
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		        Bn1 
	.byte	W24
@ 038   ----------------------------------------
	.byte		        As1 
	.byte	W24
	.byte		        Fs1 
	.byte	W24
	.byte		        Fn1 
	.byte	W24
	.byte		        Fn1 , v088
	.byte	W24
@ 039   ----------------------------------------
	.byte		        Fn1 , v092
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte		        As1 , v088
	.byte	W24
	.byte		        As1 , v092
	.byte	W24
@ 040   ----------------------------------------
	.byte		N21   
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		N21   
	.byte	W24
@ 041   ----------------------------------------
	.byte		        Cs1 , v096
	.byte	W24
	.byte		        Gn1 , v092
	.byte	W24
	.byte		        Gn1 , v096
	.byte	W24
	.byte		        Dn1 , v092
	.byte	W24
@ 042   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_shadow_lugia_theme_4:
	.byte	KEYSH , mus_shadow_lugia_theme_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 35
	.byte		VOL   , 100*mus_shadow_lugia_theme_mvl/mxv
	.byte		PAN   , c_v-8
	.byte		N10   , Fs1 , v072
	.byte	W12
	.byte		        Cs2 , v068
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
	.byte		        Cs2 , v068
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 , v072
	.byte	W12
@ 001   ----------------------------------------
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        Gn1 , v064
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 , v076
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
	.byte		        Cs2 , v064
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 , v076
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Fs1 , v080
	.byte	W12
	.byte		        Cs2 , v064
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 , v076
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
	.byte		        Cs2 , v076
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Cs2 , v064
	.byte	W12
@ 003   ----------------------------------------
	.byte		        Gn1 , v076
	.byte	W12
	.byte		        Dn2 , v068
	.byte	W12
	.byte		        Gn1 , v076
	.byte	W12
	.byte		        Dn2 , v084
	.byte	W12
	.byte		        Gn1 , v092
	.byte	W12
	.byte		        Dn2 , v064
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Gn1 , v072
	.byte	W12
	.byte		        Dn2 , v068
	.byte	W12
	.byte		        Gn1 , v072
	.byte	W12
	.byte		        Dn2 , v068
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        Gn1 , v072
	.byte	W12
	.byte		        Cn1 , v076
	.byte	W12
	.byte		        Gn1 , v068
	.byte	W12
@ 005   ----------------------------------------
	.byte		        An1 , v088
	.byte	W12
	.byte		        En2 , v072
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Fs1 , v084
	.byte	W12
	.byte		        Cs2 , v068
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Fs1 , v076
	.byte	W12
	.byte		        Cs2 , v060
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 , v064
	.byte	W12
	.byte		        Ds1 , v084
	.byte	W12
	.byte		        As1 , v064
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 007   ----------------------------------------
	.byte		        Ds1 , v084
	.byte	W12
	.byte		        As1 , v064
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        En1 , v084
	.byte	W12
	.byte		        Bn1 , v064
	.byte	W12
	.byte		        Fs1 , v076
	.byte	W12
	.byte		        Cs2 , v068
	.byte	W12
@ 008   ----------------------------------------
	.byte		        Fs1 , v076
	.byte	W12
	.byte		        Cs2 , v064
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cs2 , v068
	.byte	W12
	.byte		        Fs1 , v076
	.byte	W12
	.byte		        Cs2 , v068
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 009   ----------------------------------------
	.byte		        Gs1 , v076
	.byte	W12
	.byte		        Ds2 , v064
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 , v080
	.byte	W12
	.byte		        Ds2 , v064
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 , v068
	.byte	W12
@ 010   ----------------------------------------
	.byte		        Dn1 , v076
	.byte	W12
	.byte		        An1 , v064
	.byte	W12
	.byte		        Gs1 , v068
	.byte	W12
	.byte		        Ds2 , v064
	.byte	W12
	.byte		        Gs1 , v080
	.byte	W12
	.byte		        Ds2 , v068
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 011   ----------------------------------------
	.byte		        Bn1 , v080
	.byte	W12
	.byte		        Fs2 , v068
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Cs1 , v080
	.byte	W12
	.byte		        Gs1 , v068
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 012   ----------------------------------------
	.byte		        Fs1 , v080
	.byte	W12
	.byte		        Cs2 , v068
	.byte	W12
	.byte		        Ds1 , v064
	.byte	W12
	.byte		        As1 , v068
	.byte	W12
	.byte		        Ds1 , v076
	.byte	W12
	.byte		        As1 , v068
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 013   ----------------------------------------
	.byte		        En1 , v080
	.byte	W12
	.byte		        Bn1 , v068
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En1 , v084
	.byte	W12
	.byte		        Bn1 , v068
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 , v072
	.byte	W12
@ 014   ----------------------------------------
	.byte		        Ds1 , v080
	.byte	W12
	.byte		        As1 , v068
	.byte	W12
	.byte		        En1 , v076
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        As1 , v088
	.byte	W12
	.byte		        Fn2 , v076
	.byte	W12
	.byte		        As1 , v072
	.byte	W12
	.byte		        Fn2 , v076
	.byte	W12
@ 015   ----------------------------------------
	.byte		        As1 , v088
	.byte	W12
	.byte		        Fn2 , v080
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn2 , v076
	.byte	W12
	.byte		        As1 , v092
	.byte	W12
	.byte		        Fn2 , v084
	.byte	W12
	.byte		        As1 , v072
	.byte	W12
	.byte		        Fn2 , v064
	.byte	W12
@ 016   ----------------------------------------
	.byte		        As1 , v076
	.byte	W12
	.byte		        Fn2 , v064
	.byte	W12
	.byte		        As1 , v060
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As1 , v072
	.byte	W12
	.byte		        Fn2 , v060
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W12
	.byte		        Cs2 , v076
	.byte	W12
@ 017   ----------------------------------------
	.byte		        Fs1 , v088
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Gs1 , v084
	.byte	W12
	.byte		        Ds2 , v072
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 , v076
	.byte	W12
@ 018   ----------------------------------------
	.byte		        As1 , v088
	.byte	W12
	.byte		        Fn2 , v076
	.byte	W12
	.byte		        Gn1 , v068
	.byte	W12
	.byte		        Dn2 , v072
	.byte	W12
	.byte		        Gn1 , v084
	.byte	W12
	.byte		        Dn2 , v076
	.byte	W12
	.byte		        As1 , v072
	.byte	W12
	.byte		        Fn2 , v076
	.byte	W12
@ 019   ----------------------------------------
	.byte		        As1 , v084
	.byte	W12
	.byte		        Fn2 , v068
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn2 , v076
	.byte	W12
	.byte		        Gn1 , v080
	.byte	W12
	.byte		        Dn2 , v068
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 , v072
	.byte	W12
@ 020   ----------------------------------------
	.byte		        Gn1 , v084
	.byte	W12
	.byte		        Dn2 , v068
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 , v072
	.byte	W12
	.byte		        Gn1 , v084
	.byte	W12
	.byte		        Dn2 , v068
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 021   ----------------------------------------
	.byte		        Fn1 , v080
	.byte	W12
	.byte		        Cn2 , v064
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 , v068
	.byte	W12
	.byte		        Fs1 , v076
	.byte	W12
	.byte		        Cs2 , v064
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 , v068
	.byte	W12
@ 022   ----------------------------------------
	.byte		        Fs1 , v076
	.byte	W12
	.byte		        Cs2 , v068
	.byte	W12
	.byte		        Fn1 , v064
	.byte	W12
	.byte		        Cn2 , v068
	.byte	W12
	.byte		        Fn1 , v076
	.byte	W12
	.byte		        Cn2 , v064
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 , v068
	.byte	W12
@ 023   ----------------------------------------
	.byte		        Fs1 , v088
	.byte	W12
	.byte		        Cs2 , v084
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
	.byte		        Cs2 , v068
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
	.byte		        Cs2 , v068
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
@ 024   ----------------------------------------
	.byte		        Fs1 , v084
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 , v076
	.byte	W12
	.byte		        Fs1 , v088
	.byte	W12
	.byte		        Cs2 , v080
	.byte	W12
	.byte		        Fs1 , v076
	.byte	W12
	.byte		        Cs2 , v080
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Fs1 , v088
	.byte	W12
	.byte		        Cs2 , v068
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 , v076
	.byte	W12
	.byte		        Cs2 , v060
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 , v064
	.byte	W12
@ 026   ----------------------------------------
	.byte		        Fs1 , v076
	.byte	W12
	.byte		        Cs2 , v064
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fn1 , v076
	.byte	W12
	.byte		        Cn2 , v064
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 027   ----------------------------------------
mus_shadow_lugia_theme_4_027:
	.byte		N10   , Fn1 , v080
	.byte	W12
	.byte		        Cn2 , v064
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 , v068
	.byte	W12
	.byte		        Fn1 , v076
	.byte	W12
	.byte		        Cn2 , v064
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_4_027
@ 029   ----------------------------------------
	.byte		N10   , Fs1 , v076
	.byte	W12
	.byte		        Cs2 , v064
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 , v068
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
	.byte		        Cs2 , v064
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 030   ----------------------------------------
	.byte		        As1 , v080
	.byte	W12
	.byte		        Fn2 , v072
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn2 , v068
	.byte	W12
	.byte		        An1 , v084
	.byte	W12
	.byte		        En2 , v072
	.byte	W12
	.byte		        An1 , v068
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 031   ----------------------------------------
	.byte		        Gs1 , v080
	.byte	W12
	.byte		        Ds2 , v072
	.byte	W12
	.byte		        Gn1 , v068
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 , v084
	.byte	W12
	.byte		        Dn2 , v068
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 , v064
	.byte	W12
@ 032   ----------------------------------------
	.byte		        Fn1 , v076
	.byte	W12
	.byte		        Cn2 , v068
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
	.byte		        Cs2 , v068
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 033   ----------------------------------------
	.byte		        Fs1 , v084
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Fs1 , v076
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 , v084
	.byte	W12
	.byte		        Cs2 , v068
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 034   ----------------------------------------
	.byte		        Fs1 , v076
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Fs1 , v076
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
@ 035   ----------------------------------------
	.byte		        An1 , v084
	.byte	W12
	.byte		        En2 , v076
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Gn1 , v080
	.byte	W12
	.byte		        Dn2 , v072
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 , v076
	.byte	W12
@ 036   ----------------------------------------
	.byte		        As1 , v084
	.byte	W12
	.byte		        Fn2 , v076
	.byte	W12
	.byte		        As1 , v072
	.byte	W12
	.byte		        Fn2 , v068
	.byte	W12
	.byte		        As1 , v080
	.byte	W12
	.byte		        Fn2 , v072
	.byte	W12
	.byte		        Gn1 , v068
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 037   ----------------------------------------
	.byte		        Gn1 , v080
	.byte	W12
	.byte		        Dn2 , v072
	.byte	W12
	.byte		        Gn1 , v068
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 , v080
	.byte	W12
	.byte		        Dn2 , v072
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 , v068
	.byte	W12
@ 038   ----------------------------------------
	.byte		        As1 , v080
	.byte	W12
	.byte		        Fn2 , v076
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W12
	.byte		        Cs2 , v068
	.byte	W12
	.byte		        Fn1 , v080
	.byte	W12
	.byte		        Cn2 , v068
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 039   ----------------------------------------
	.byte		        Fn1 , v080
	.byte	W12
	.byte		        Cn2 , v072
	.byte	W12
	.byte		        Gs1 , v068
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As1 , v080
	.byte	W12
	.byte		        Fn2 , v068
	.byte	W12
	.byte		        As1 , v072
	.byte	W12
	.byte		        Fn2 , v068
	.byte	W12
@ 040   ----------------------------------------
	.byte		        As1 , v084
	.byte	W12
	.byte		        Fn2 , v072
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As1 , v080
	.byte	W12
	.byte		        Fn2 , v068
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn2 , v072
	.byte	W12
@ 041   ----------------------------------------
	.byte		        Cs1 , v084
	.byte	W12
	.byte		        Gs1 , v072
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 , v084
	.byte	W12
	.byte		        Dn2 , v072
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 042   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_shadow_lugia_theme_5:
	.byte	KEYSH , mus_shadow_lugia_theme_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 35
	.byte		VOL   , 112*mus_shadow_lugia_theme_mvl/mxv
	.byte		PAN   , c_v+18
	.byte		N12   , Fs2 , v088
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W48
	.byte		        Fs2 , v084
	.byte		N12   , As2 
	.byte		N12   , Cs3 
	.byte	W48
@ 001   ----------------------------------------
	.byte		        Cn2 
	.byte		N12   , En2 
	.byte		N12   , Gn2 
	.byte	W48
	.byte		        Fs2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W48
@ 002   ----------------------------------------
	.byte		        Fs2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W48
	.byte		        Fs2 , v088
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W48
@ 003   ----------------------------------------
	.byte		        Gn2 , v084
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W48
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W48
@ 004   ----------------------------------------
	.byte		        Gn2 , v088
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W48
	.byte		        Cn2 
	.byte		N12   , Ds2 
	.byte		N12   , Gn2 
	.byte	W48
@ 005   ----------------------------------------
	.byte		        An2 , v084
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W48
	.byte		        Fs2 
	.byte		N12   , As2 
	.byte		N12   , Cs3 
	.byte	W48
@ 006   ----------------------------------------
	.byte		        Fs2 
	.byte		N12   , As2 
	.byte		N12   , Cs3 
	.byte	W48
	.byte		        Ds2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte	W48
@ 007   ----------------------------------------
	.byte		        Ds2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte	W48
	.byte		        En2 
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 
	.byte	W48
@ 008   ----------------------------------------
	.byte		        Fs2 
	.byte		N12   , As2 
	.byte		N12   , Cs3 
	.byte	W48
	.byte		        Fs2 , v088
	.byte		N12   , As2 
	.byte		N12   , Cs3 
	.byte	W48
@ 009   ----------------------------------------
	.byte		        Gs2 , v084
	.byte		N12   , Cn3 
	.byte		N12   , Ds3 
	.byte	W48
	.byte		        Gs2 , v088
	.byte		N12   , Bn2 
	.byte		N12   , Ds3 
	.byte	W48
@ 010   ----------------------------------------
	.byte		        Dn2 
	.byte		N12   , Fn2 
	.byte		N12   , An2 
	.byte	W48
	.byte		        Gs2 
	.byte		N12   , Bn2 
	.byte		N12   , Ds3 
	.byte	W48
@ 011   ----------------------------------------
	.byte		        Bn2 
	.byte		N12   , Ds3 
	.byte		N12   , Fs3 
	.byte	W48
	.byte		        Cs2 , v084
	.byte		N12   , En2 
	.byte		N12   , Gs2 
	.byte	W48
@ 012   ----------------------------------------
	.byte		        Fs2 , v088
	.byte		N12   , As2 
	.byte		N12   , Cs3 
	.byte	W48
	.byte		        Ds2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte	W48
@ 013   ----------------------------------------
	.byte		        En2 
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 
	.byte	W48
	.byte		        En2 , v084
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 
	.byte	W48
@ 014   ----------------------------------------
	.byte		        Ds2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte	W48
	.byte		        As2 , v088
	.byte		N12   , Dn3 
	.byte		N12   , Fn3 
	.byte	W48
@ 015   ----------------------------------------
mus_shadow_lugia_theme_5_015:
	.byte		N12   , As2 , v088
	.byte		N12   , Cs3 
	.byte		N12   , Fn3 
	.byte	W48
	.byte		        As2 
	.byte		N12   , Cs3 
	.byte		N12   , Fn3 
	.byte	W48
	.byte	PEND
@ 016   ----------------------------------------
	.byte		        As2 , v084
	.byte		N12   , Cs3 
	.byte		N12   , Fn3 
	.byte	W48
	.byte		        As2 
	.byte		N12   , Cs3 
	.byte		N12   , Fn3 
	.byte	W48
@ 017   ----------------------------------------
	.byte		        Fs2 , v088
	.byte		N12   , As2 
	.byte		N12   , Cs3 
	.byte	W48
	.byte		        Gs2 
	.byte		N12   , Bn2 
	.byte		N12   , Ds3 
	.byte	W48
@ 018   ----------------------------------------
	.byte		        As2 , v084
	.byte		N12   , Dn3 
	.byte		N12   , Fn3 
	.byte	W48
	.byte		        Gn2 , v088
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W48
@ 019   ----------------------------------------
	.byte		        As2 , v084
	.byte		N12   , Dn3 
	.byte		N12   , Fn3 
	.byte	W48
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W48
@ 020   ----------------------------------------
	.byte		        Gn2 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W48
	.byte		        Gn2 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W48
@ 021   ----------------------------------------
	.byte		        Fn2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W48
	.byte		        Fs2 
	.byte		N12   , As2 
	.byte		N12   , Cs3 
	.byte	W48
@ 022   ----------------------------------------
	.byte		        Fs2 , v088
	.byte		N12   , As2 
	.byte		N12   , Cs3 
	.byte	W48
	.byte		        Fn2 , v084
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte	W48
@ 023   ----------------------------------------
mus_shadow_lugia_theme_5_023:
	.byte		N12   , Fs2 , v084
	.byte		N12   , As2 
	.byte		N12   , Cs3 
	.byte	W48
	.byte		        Fs2 
	.byte		N12   , As2 
	.byte		N12   , Cs3 
	.byte	W48
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_5_023
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_5_023
@ 026   ----------------------------------------
	.byte		N12   , Fs2 , v084
	.byte		N12   , As2 
	.byte		N12   , Cs3 
	.byte	W48
	.byte		        Fn2 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte	W48
@ 027   ----------------------------------------
mus_shadow_lugia_theme_5_027:
	.byte		N12   , Fn2 , v084
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W48
	.byte		        Fn2 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte	W48
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_5_027
@ 029   ----------------------------------------
	.byte		N12   , Fs2 , v088
	.byte		N12   , As2 
	.byte		N12   , Cs3 
	.byte	W48
	.byte		        Fs2 , v084
	.byte		N12   , As2 
	.byte		N12   , Cs3 
	.byte	W48
@ 030   ----------------------------------------
	.byte		        As2 , v088
	.byte		N12   , Dn3 
	.byte		N12   , Fn3 
	.byte	W48
	.byte		        An2 , v084
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W48
@ 031   ----------------------------------------
	.byte		        Gs2 , v088
	.byte		N12   , Bn2 
	.byte		N12   , Ds3 
	.byte	W48
	.byte		        Gn2 , v084
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W48
@ 032   ----------------------------------------
	.byte		        Fn2 , v088
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte	W48
	.byte		        Fs2 
	.byte		N12   , As2 
	.byte		N12   , Cs3 
	.byte	W48
@ 033   ----------------------------------------
	.byte		        Fs2 
	.byte		N12   , As2 
	.byte		N12   , Cs3 
	.byte	W48
	.byte		        Fs2 , v084
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W48
@ 034   ----------------------------------------
	.byte		        Fs2 , v088
	.byte		N12   , As2 
	.byte		N12   , Cs3 
	.byte	W48
	.byte		        Fs2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W48
@ 035   ----------------------------------------
	.byte		        An2 , v084
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W48
	.byte		        Gn2 , v088
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W48
@ 036   ----------------------------------------
	.byte		        As2 
	.byte		N12   , Dn3 
	.byte		N12   , Fn3 
	.byte	W48
	.byte		        As2 
	.byte		N12   , Cs3 
	.byte		N12   , Fn3 
	.byte	W48
@ 037   ----------------------------------------
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W48
	.byte		        Gn2 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W48
@ 038   ----------------------------------------
	.byte		        As2 
	.byte		N12   , Dn3 
	.byte		N12   , Fn3 
	.byte	W48
	.byte		        Fn2 , v084
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte	W48
@ 039   ----------------------------------------
	.byte		        Fn2 , v088
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W48
	.byte		        As2 
	.byte		N12   , Cs3 
	.byte		N12   , Fn3 
	.byte	W48
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_5_015
@ 041   ----------------------------------------
	.byte		N12   , Cs2 , v088
	.byte		N12   , En2 
	.byte		N12   , Gs2 
	.byte	W48
	.byte		        Gn2 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W48
@ 042   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_shadow_lugia_theme_6:
	.byte	KEYSH , mus_shadow_lugia_theme_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 35
	.byte		VOL   , 88*mus_shadow_lugia_theme_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N92   , Fs2 , v060, gtp1
	.byte		N92   , An2 , v060, gtp1
	.byte		N92   , Cs3 , v060, gtp1
	.byte	W96
@ 001   ----------------------------------------
	.byte		        Cn2 , v060, gtp1
	.byte		N92   , En2 , v060, gtp1
	.byte		N92   , Fs2 , v060, gtp1
	.byte	W96
@ 002   ----------------------------------------
	.byte		        Fs2 , v060, gtp1
	.byte		N92   , An2 , v060, gtp1
	.byte		N92   , Cs3 , v060, gtp1
	.byte	W96
@ 003   ----------------------------------------
mus_shadow_lugia_theme_6_003:
	.byte		N92   , Gn2 , v060, gtp1
	.byte		N92   , As2 , v060, gtp1
	.byte		N92   , Cs3 , v060, gtp1
	.byte	W96
	.byte	PEND
@ 004   ----------------------------------------
	.byte		        Gn2 , v060, gtp1
	.byte		N92   , As2 , v060, gtp1
	.byte		N92   , Dn3 , v060, gtp1
	.byte	W96
@ 005   ----------------------------------------
	.byte		        An2 , v060, gtp1
	.byte		N92   , Cn3 , v060, gtp1
	.byte		N92   , Ds3 , v060, gtp1
	.byte	W96
@ 006   ----------------------------------------
mus_shadow_lugia_theme_6_006:
	.byte		N92   , Fs2 , v056, gtp1
	.byte		N92   , As2 , v056, gtp1
	.byte		N92   , Cs3 , v056, gtp1
	.byte	W96
	.byte	PEND
@ 007   ----------------------------------------
	.byte		        Ds2 , v060, gtp1
	.byte		N92   , Fs2 , v060, gtp1
	.byte		N92   , An2 , v060, gtp1
	.byte	W96
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_6_006
@ 009   ----------------------------------------
	.byte		N92   , Gs2 , v060, gtp1
	.byte		N92   , Cn3 , v060, gtp1
	.byte		N92   , Dn3 , v060, gtp1
	.byte	W96
@ 010   ----------------------------------------
	.byte		        Dn2 , v060, gtp1
	.byte		N92   , Fn2 , v060, gtp1
	.byte		N92   , An2 , v060, gtp1
	.byte	W96
@ 011   ----------------------------------------
	.byte		        Bn2 , v060, gtp1
	.byte		N92   , Ds3 , v060, gtp1
	.byte		N92   , Fn3 , v060, gtp1
	.byte	W96
@ 012   ----------------------------------------
mus_shadow_lugia_theme_6_012:
	.byte		N92   , Fs2 , v060, gtp1
	.byte		N92   , As2 , v060, gtp1
	.byte		N92   , Cs3 , v060, gtp1
	.byte	W96
	.byte	PEND
@ 013   ----------------------------------------
	.byte		        En2 , v060, gtp1
	.byte		N92   , Gn2 , v060, gtp1
	.byte		N92   , As2 , v060, gtp1
	.byte	W96
@ 014   ----------------------------------------
	.byte		        Ds2 , v064, gtp1
	.byte		N92   , Fs2 , v064, gtp1
	.byte		N92   , As2 , v064, gtp1
	.byte	W96
@ 015   ----------------------------------------
	.byte		        As2 , v064, gtp1
	.byte		N92   , Cs3 , v064, gtp1
	.byte		N92   , En3 , v064, gtp1
	.byte	W96
@ 016   ----------------------------------------
	.byte		        As2 , v056, gtp1
	.byte		N92   , Cs3 , v056, gtp1
	.byte		N92   , Fn3 , v056, gtp1
	.byte	W96
@ 017   ----------------------------------------
mus_shadow_lugia_theme_6_017:
	.byte		N92   , Fs2 , v064, gtp1
	.byte		N92   , As2 , v064, gtp1
	.byte		N92   , Cn3 , v064, gtp1
	.byte	W96
	.byte	PEND
@ 018   ----------------------------------------
	.byte		        As2 , v064, gtp1
	.byte		N92   , Dn3 , v064, gtp1
	.byte		N92   , Fn3 , v064, gtp1
	.byte	W96
@ 019   ----------------------------------------
	.byte		        As2 , v060, gtp1
	.byte		N92   , Dn3 , v060, gtp1
	.byte		N92   , En3 , v060, gtp1
	.byte	W96
@ 020   ----------------------------------------
	.byte		        Gn2 , v060, gtp1
	.byte		N92   , Bn2 , v060, gtp1
	.byte		N92   , Dn3 , v060, gtp1
	.byte	W96
@ 021   ----------------------------------------
mus_shadow_lugia_theme_6_021:
	.byte		N92   , Fn2 , v060, gtp1
	.byte		N92   , Gs2 , v060, gtp1
	.byte		N92   , Bn2 , v060, gtp1
	.byte	W96
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_6_012
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_6_017
@ 024   ----------------------------------------
mus_shadow_lugia_theme_6_024:
	.byte		N92   , Fs2 , v064, gtp1
	.byte		N92   , As2 , v064, gtp1
	.byte		N92   , Cs3 , v064, gtp1
	.byte	W96
	.byte	PEND
@ 025   ----------------------------------------
mus_shadow_lugia_theme_6_025:
	.byte		N92   , Fs2 , v060, gtp1
	.byte		N92   , As2 , v060, gtp1
	.byte		N92   , Cn3 , v060, gtp1
	.byte	W96
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_6_012
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_6_021
@ 028   ----------------------------------------
	.byte		N92   , Fn2 , v060, gtp1
	.byte		N92   , Gs2 , v060, gtp1
	.byte		N92   , Cn3 , v060, gtp1
	.byte	W96
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_6_025
@ 030   ----------------------------------------
mus_shadow_lugia_theme_6_030:
	.byte		N92   , As2 , v060, gtp1
	.byte		N92   , Dn3 , v060, gtp1
	.byte		N92   , Fn3 , v060, gtp1
	.byte	W96
	.byte	PEND
@ 031   ----------------------------------------
	.byte		        Gs2 , v060, gtp1
	.byte		N92   , Bn2 , v060, gtp1
	.byte		N92   , Dn3 , v060, gtp1
	.byte	W96
@ 032   ----------------------------------------
	.byte		        Fn2 , v060, gtp1
	.byte		N92   , An2 , v060, gtp1
	.byte		N92   , Cn3 , v060, gtp1
	.byte	W96
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_6_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_6_024
@ 035   ----------------------------------------
	.byte		N92   , An2 , v064, gtp1
	.byte		N92   , Cn3 , v064, gtp1
	.byte		N92   , Ds3 , v064, gtp1
	.byte	W96
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_6_030
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_6_003
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_6_030
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_6_021
@ 040   ----------------------------------------
	.byte		N92   , As2 , v060, gtp1
	.byte		N92   , Cs3 , v060, gtp1
	.byte		N92   , Fn3 , v060, gtp1
	.byte	W96
@ 041   ----------------------------------------
	.byte		        Cs2 , v064, gtp1
	.byte		N92   , En2 , v064, gtp1
	.byte		N92   , Gn2 , v064, gtp1
	.byte	W96
@ 042   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_shadow_lugia_theme_7:
	.byte	KEYSH , mus_shadow_lugia_theme_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 81
	.byte		VOL   , 92*mus_shadow_lugia_theme_mvl/mxv
	.byte		PAN   , c_v+24
	.byte	W96
@ 001   ----------------------------------------
mus_shadow_lugia_theme_7_001:
	.byte	W60
	.byte		N09   , Cn2 , v068
	.byte	W12
	.byte		        Cs2 , v076
	.byte	W12
	.byte		        Fs2 , v084
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
mus_shadow_lugia_theme_7_003:
	.byte	W60
	.byte		N09   , Fn2 , v068
	.byte	W12
	.byte		        Fs2 , v076
	.byte	W12
	.byte		        Bn2 , v084
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_7_001
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
mus_shadow_lugia_theme_7_007:
	.byte	W60
	.byte		N09   , Bn1 , v068
	.byte	W12
	.byte		        Cn2 , v076
	.byte	W12
	.byte		        Fn2 , v084
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W60
	.byte		        As2 , v068
	.byte	W12
	.byte		        Bn2 , v076
	.byte	W12
	.byte		        En3 , v084
	.byte	W12
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
mus_shadow_lugia_theme_7_011:
	.byte	W60
	.byte		N09   , Dn2 , v068
	.byte	W12
	.byte		        Ds2 , v076
	.byte	W12
	.byte		        Gs2 , v084
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
mus_shadow_lugia_theme_7_013:
	.byte	W60
	.byte		N09   , Gn2 , v068
	.byte	W12
	.byte		        Gs2 , v076
	.byte	W12
	.byte		        Cs3 , v084
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W60
	.byte		        Ds2 , v068
	.byte	W12
	.byte		        En2 , v076
	.byte	W12
	.byte		        An2 , v084
	.byte	W12
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_7_003
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W60
	.byte		N09   , En2 , v068
	.byte	W12
	.byte		        Fn2 , v076
	.byte	W12
	.byte		        As2 , v084
	.byte	W12
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W60
	.byte		        Fs2 , v068
	.byte	W12
	.byte		        Gn2 , v076
	.byte	W12
	.byte		        Cn3 , v084
	.byte	W12
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_7_003
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_7_003
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
mus_shadow_lugia_theme_7_027:
	.byte	W60
	.byte		N09   , Gs2 , v068
	.byte	W12
	.byte		        An2 , v076
	.byte	W12
	.byte		        Dn3 , v084
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_7_027
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_7_003
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W60
	.byte		N09   , Gn1 , v068
	.byte	W12
	.byte		        Gs1 , v076
	.byte	W12
	.byte		        Cs2 , v084
	.byte	W12
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_7_013
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_7_011
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_7_011
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_7_007
@ 042   ----------------------------------------
	.byte	FINE

@**************** Track 8 (Midi-Chn.10) ****************@

mus_shadow_lugia_theme_8:
	.byte	KEYSH , mus_shadow_lugia_theme_key+0
@ 000   ----------------------------------------
	.byte		VOL   , 120*mus_shadow_lugia_theme_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N04   , Cn1 , v112
	.byte		N03   , Fs1 , v068
	.byte		N06   , Cs2 , v104
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N04   , Cn1 , v088
	.byte		N03   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N04   , Dn1 , v108
	.byte		N03   , Fs1 , v068
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N04   , Cn1 , v092
	.byte		N03   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N04   , Cn1 , v112
	.byte		N03   , Fs1 , v068
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v052
	.byte	W06
	.byte		N04   , Cn1 , v084
	.byte		N04   , Dn1 , v064
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N04   , Dn1 , v116
	.byte		N03   , Fs1 , v068
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N04   , Cn1 , v096
	.byte		N03   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
@ 001   ----------------------------------------
mus_shadow_lugia_theme_8_001:
	.byte		N04   , Cn1 , v112
	.byte		N03   , Fs1 , v068
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N04   , Cn1 , v088
	.byte		N03   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N04   , Dn1 , v108
	.byte		N03   , Fs1 , v068
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N04   , Cn1 , v092
	.byte		N03   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N04   , Cn1 , v112
	.byte		N03   , Fs1 , v068
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v052
	.byte	W06
	.byte		N04   , Cn1 , v084
	.byte		N04   , Dn1 , v064
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N04   , Dn1 , v116
	.byte		N03   , Fs1 , v068
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N04   , Cn1 , v096
	.byte		N03   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_001
@ 003   ----------------------------------------
mus_shadow_lugia_theme_8_003:
	.byte		N04   , Cn1 , v112
	.byte		N03   , Fs1 , v068
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N04   , Cn1 , v088
	.byte		N03   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N04   , Dn1 , v108
	.byte		N03   , Fs1 , v068
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N04   , Cn1 , v092
	.byte		N03   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N04   , Cn1 , v112
	.byte		N03   , Fs1 , v068
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v052
	.byte	W06
	.byte		N04   , Cn1 , v084
	.byte		N04   , Dn1 , v064
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N04   , Dn1 , v116
	.byte		N03   , Fs1 , v068
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N05   , An1 , v084
	.byte	W06
	.byte		N04   , Cn1 , v096
	.byte		N03   , Fs1 , v052
	.byte		N05   , Bn1 , v092
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte		N05   , Dn2 , v104
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
mus_shadow_lugia_theme_8_004:
	.byte		N04   , Cn1 , v112
	.byte		N03   , Fs1 , v068
	.byte		N06   , Cs2 , v104
	.byte	W06
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N04   , Cn1 , v088
	.byte		N03   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N04   , Dn1 , v108
	.byte		N03   , Fs1 , v068
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N04   , Cn1 , v092
	.byte		N03   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N04   , Cn1 , v112
	.byte		N03   , Fs1 , v068
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v052
	.byte	W06
	.byte		N04   , Cn1 , v084
	.byte		N04   , Dn1 , v064
	.byte		N03   , Fs1 , v060
	.byte	W06
	.byte		N04   , Dn1 , v116
	.byte		N03   , Fs1 , v068
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N04   , Cn1 , v096
	.byte		N03   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_001
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_001
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_001
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_003
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_001
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_shadow_lugia_theme_8_001
@ 042   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_shadow_lugia_theme:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_shadow_lugia_theme_pri	@ Priority
	.byte	mus_shadow_lugia_theme_rev	@ Reverb.

	.word	mus_shadow_lugia_theme_grp

	.word	mus_shadow_lugia_theme_1
	.word	mus_shadow_lugia_theme_2
	.word	mus_shadow_lugia_theme_3
	.word	mus_shadow_lugia_theme_4
	.word	mus_shadow_lugia_theme_5
	.word	mus_shadow_lugia_theme_6
	.word	mus_shadow_lugia_theme_7
	.word	mus_shadow_lugia_theme_8

	.end
