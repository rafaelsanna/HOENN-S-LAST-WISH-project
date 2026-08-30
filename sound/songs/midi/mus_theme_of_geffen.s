	.include "MPlayDef.s"

	.equ	mus_theme_of_geffen_grp, voicegroup_theme_of_geffen
	.equ	mus_theme_of_geffen_pri, 0
	.equ	mus_theme_of_geffen_rev, reverb_set+50
	.equ	mus_theme_of_geffen_mvl, 100
	.equ	mus_theme_of_geffen_key, 0
	.equ	mus_theme_of_geffen_tbs, 1
	.equ	mus_theme_of_geffen_exg, 1
	.equ	mus_theme_of_geffen_cmp, 1

	.section .rodata
	.global	mus_theme_of_geffen
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_theme_of_geffen_1:
	.byte	KEYSH , mus_theme_of_geffen_key+0
mus_theme_of_geffen_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 125*mus_theme_of_geffen_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 125*mus_theme_of_geffen_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		TIE   , Dn1 , v127
	.byte	W96
@ 001   ----------------------------------------
	.byte	W42
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		N08   , An0 
	.byte	W10
	.byte		TIE   , Dn1 
	.byte	W42
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W11
	.byte		EOT   
	.byte	W01
	.byte		N92   , Cn1 
	.byte	W84
@ 004   ----------------------------------------
	.byte	W09
	.byte		N09   , Gn1 
	.byte	W10
	.byte		N08   , An1 
	.byte	W09
	.byte		TIE   , Gn1 
	.byte	W68
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W22
	.byte		EOT   
	.byte	W02
	.byte		N92   , Dn1 
	.byte	W72
@ 007   ----------------------------------------
	.byte	W21
	.byte		N09   , Dn2 
	.byte	W10
	.byte		N08   , En2 
	.byte	W09
	.byte		N17   , Dn2 
	.byte	W19
	.byte		N08   , Cn2 
	.byte	W09
	.byte		N64   , An1 
	.byte	W28
@ 008   ----------------------------------------
	.byte	W36
	.byte	W02
	.byte		N09   , Fn1 
	.byte	W09
	.byte		N08   , En1 
	.byte	W10
	.byte		N17   , Fn1 
	.byte	W18
	.byte		N09   , Gn1 
	.byte	W10
	.byte		N18   , Fn1 
	.byte	W11
@ 009   ----------------------------------------
	.byte	W07
	.byte		N24   , En1 , v127, gtp3
	.byte	W28
	.byte	W01
	.byte		TIE   , An1 
	.byte	W60
@ 010   ----------------------------------------
	.byte	W48
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N17   , An0 
	.byte	W19
	.byte		N09   , Gn0 
	.byte	W09
	.byte		N08   , An0 
	.byte	W10
	.byte		TIE   
	.byte	W06
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W48
	.byte	W01
@ 013   ----------------------------------------
	.byte	W64
	.byte		N13   , Dn2 
	.byte	W14
	.byte		        En2 
	.byte	W14
	.byte		N08   , Fn2 
	.byte	W04
@ 014   ----------------------------------------
	.byte	W06
	.byte		TIE   , Dn2 
	.byte	W90
@ 015   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		EOT   
	.byte	W36
	.byte	W01
@ 016   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		N18   , Cn2 
	.byte	W19
	.byte		N08   , Bn1 
	.byte	W09
	.byte		        Cn2 
	.byte	W10
	.byte		N09   , Bn1 
	.byte	W01
@ 017   ----------------------------------------
	.byte	W08
	.byte		N08   , Gn1 
	.byte	W10
	.byte		N92   
	.byte	W78
@ 018   ----------------------------------------
	.byte	W15
	.byte		N08   , En1 
	.byte	W10
	.byte		N18   , Gn1 
	.byte	W18
	.byte		        An1 
	.byte	W19
	.byte		N08   , Cn2 
	.byte	W10
	.byte		TIE   , Dn2 
	.byte	W24
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W10
	.byte		EOT   
	.byte	W01
	.byte		N09   , Gn2 
	.byte	W09
	.byte		N08   , An2 
	.byte	W10
	.byte		N92   , Gn2 
	.byte	W66
@ 021   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte		N08   , Cn2 
	.byte	W10
	.byte		        Bn1 
	.byte	W09
	.byte		        Gn2 
	.byte	W09
	.byte		        Fn2 
	.byte	W10
	.byte		        En2 
	.byte	W09
	.byte		        Dn2 
	.byte	W10
	.byte		TIE   , En2 
	.byte	W12
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W30
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W10
	.byte		N72   , En1 , v127, gtp2
	.byte	W54
@ 024   ----------------------------------------
	.byte	W21
	.byte		        Bn0 , v127, gtp2
	.byte	W72
	.byte	W03
@ 025   ----------------------------------------
	.byte		N64   , An0 
	.byte	W64
	.byte	W01
	.byte		N08   , Gn0 
	.byte	W10
	.byte		N17   , An0 
	.byte	W18
	.byte		N18   
	.byte	W03
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W14
	.byte		N08   , En1 
	.byte	W09
	.byte		        Gn0 
	.byte	W10
	.byte		        An0 
	.byte	W09
	.byte		        Gn0 
	.byte	W09
	.byte		N18   , An0 
	.byte	W44
	.byte	W01
@ 028   ----------------------------------------
	.byte	W12
	.byte		N54   , Gn0 , v127, gtp1
	.byte	W56
	.byte		N92   , Gn1 , v127, gtp1
	.byte	W28
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W07
	.byte		N36   , Gn0 
	.byte	W36
	.byte	W02
	.byte		N17   , An1 
	.byte	W18
	.byte		N36   , Gn1 
	.byte	W32
	.byte	W01
@ 031   ----------------------------------------
	.byte	W05
	.byte		N09   , Fn1 
	.byte	W09
	.byte		N08   , En1 
	.byte	W10
	.byte		N54   , Fn1 , v127, gtp1
	.byte	W72
@ 032   ----------------------------------------
	.byte	W21
	.byte		N18   
	.byte	W19
	.byte		N36   
	.byte	W36
	.byte	W02
	.byte		N54   , En1 , v127, gtp1
	.byte	W18
@ 033   ----------------------------------------
	.byte	W36
	.byte	W02
	.byte		N08   , Gn0 
	.byte	W09
	.byte		        Cn1 
	.byte	W10
	.byte		N72   , En1 , v127, gtp2
	.byte	W36
	.byte	W03
@ 034   ----------------------------------------
	.byte	W36
	.byte		N54   , Dn1 , v127, gtp1
	.byte	W60
@ 035   ----------------------------------------
	.byte	W05
	.byte		N08   , An0 
	.byte	W10
	.byte		N17   , Dn1 
	.byte	W18
	.byte		N24   , Dn1 , v127, gtp3
	.byte	W44
	.byte	W03
	.byte		N08   , An0 
	.byte	W10
	.byte		N54   , Gn0 , v127, gtp1
	.byte	W06
@ 036   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		N08   
	.byte	W10
	.byte		N36   
	.byte	W24
	.byte	W03
@ 037   ----------------------------------------
	.byte	W10
	.byte		        Gn1 
	.byte	W36
	.byte	W02
	.byte		N54   , Cn1 , v127, gtp1
	.byte	W48
@ 038   ----------------------------------------
	.byte	W08
	.byte		N08   
	.byte	W09
	.byte		        Dn1 
	.byte	W10
	.byte		N64   , Ds1 
	.byte	W64
	.byte	W01
	.byte		N08   
	.byte	W04
@ 039   ----------------------------------------
	.byte	W06
	.byte		N64   , Fn1 
	.byte	W64
	.byte	W01
	.byte		N08   , Cn1 
	.byte	W10
	.byte		N17   , As0 
	.byte	W15
@ 040   ----------------------------------------
	.byte	W03
	.byte		N36   
	.byte	W44
	.byte	W03
	.byte		N08   
	.byte	W10
	.byte		N64   , Cn1 
	.byte	W36
@ 041   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		N08   
	.byte	W10
	.byte		N72   , As0 , v127, gtp2
	.byte	W56
	.byte	W01
@ 042   ----------------------------------------
	.byte	W18
	.byte		TIE   , Gs0 
	.byte	W78
@ 043   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		N36   , Gn0 
	.byte	W36
	.byte	W02
	.byte		N17   , Fn1 
	.byte	W24
@ 044   ----------------------------------------
	.byte	W04
	.byte		N08   
	.byte	W36
	.byte	W01
	.byte		N08   
	.byte	W10
	.byte		N17   , As0 
	.byte	W18
	.byte		N36   
	.byte	W24
	.byte	W03
@ 045   ----------------------------------------
	.byte	W11
	.byte		N08   , Cn1 
	.byte	W09
	.byte		        Dn1 
	.byte	W10
	.byte		N54   , Ds1 , v127, gtp1
	.byte	W56
	.byte		N09   , Dn1 
	.byte	W09
	.byte		N08   , Ds1 
	.byte	W01
@ 046   ----------------------------------------
	.byte	W09
	.byte		        As0 
	.byte	W18
	.byte		N54   , Gs0 , v127, gtp1
	.byte	W56
	.byte	W01
	.byte		N64   , Cs1 
	.byte	W12
@ 047   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		N08   , Cn1 
	.byte	W10
	.byte		N17   , Cs1 
	.byte	W18
	.byte		N36   
	.byte	W15
@ 048   ----------------------------------------
	.byte	W32
	.byte		N08   
	.byte	W10
	.byte		N64   , Gn0 
	.byte	W54
@ 049   ----------------------------------------
	.byte	W11
	.byte		N08   
	.byte	W10
	.byte		N72   , Gn0 , v127, gtp2
	.byte	W72
	.byte	W03
@ 050   ----------------------------------------
	.byte		N54   , Cn1 , v127, gtp1
	.byte	W56
	.byte		N08   
	.byte	W09
	.byte		        Dn1 
	.byte	W10
	.byte		N64   , Ds1 
	.byte	W21
@ 051   ----------------------------------------
	.byte	W44
	.byte		N08   
	.byte	W10
	.byte		N64   , Fn1 
	.byte	W42
@ 052   ----------------------------------------
	.byte	W23
	.byte		N08   , Cn1 
	.byte	W10
	.byte		N17   , As0 
	.byte	W18
	.byte		N36   
	.byte	W44
	.byte	W01
@ 053   ----------------------------------------
	.byte	W02
	.byte		N08   
	.byte	W10
	.byte		N64   , Cn1 
	.byte	W64
	.byte	W01
	.byte		N08   
	.byte	W10
	.byte		N72   , As0 , v127, gtp2
	.byte	W09
@ 054   ----------------------------------------
	.byte	W66
	.byte		TIE   , Gs0 
	.byte	W30
@ 055   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		N36   , Gn0 
	.byte	W14
@ 056   ----------------------------------------
	.byte	W24
	.byte		N17   , Fn1 
	.byte	W28
	.byte		N08   
	.byte	W36
	.byte	W01
	.byte		N08   
	.byte	W07
@ 057   ----------------------------------------
	.byte	W03
	.byte		N17   , As0 
	.byte	W18
	.byte		N36   
	.byte	W36
	.byte	W02
	.byte		N08   , Cn1 
	.byte	W09
	.byte		        Dn1 
	.byte	W10
	.byte		N54   , Ds1 , v127, gtp1
	.byte	W18
@ 058   ----------------------------------------
	.byte	W36
	.byte	W02
	.byte		N09   , Dn1 
	.byte	W09
	.byte		N08   , Ds1 
	.byte	W10
	.byte		        As0 
	.byte	W18
	.byte		N54   , Gs0 , v127, gtp1
	.byte	W21
@ 059   ----------------------------------------
	.byte	W36
	.byte		N64   , Cs1 
	.byte	W60
@ 060   ----------------------------------------
	.byte	W05
	.byte		N08   , Cn1 
	.byte	W10
	.byte		N17   , Cs1 
	.byte	W18
	.byte		N36   
	.byte	W44
	.byte	W03
	.byte		N08   
	.byte	W10
	.byte		TIE   , Gn0 
	.byte	W06
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	GOTO
	 .word	mus_theme_of_geffen_1_B1
mus_theme_of_geffen_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_theme_of_geffen_2:
	.byte	KEYSH , mus_theme_of_geffen_key+0
mus_theme_of_geffen_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 48*mus_theme_of_geffen_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		TIE   , An2 , v084
	.byte	W96
@ 001   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		TIE   
	.byte	W42
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W11
	.byte		EOT   
	.byte	W01
	.byte		TIE   , Gn2 
	.byte	W84
@ 004   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		TIE   
	.byte	W30
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W23
	.byte		EOT   
	.byte	W01
	.byte		TIE   , An2 
	.byte	W72
@ 007   ----------------------------------------
	.byte	W76
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		TIE   
	.byte	W18
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		TIE   
	.byte	W60
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		TIE   
	.byte	W48
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		TIE   , Gn2 
	.byte	W36
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		TIE   , An2 
	.byte	W24
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		TIE   , Gn2 
	.byte	W12
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W20
	.byte		EOT   
	.byte	W01
	.byte		N72   , Gn2 , v084, gtp2
	.byte	W72
	.byte	W03
@ 025   ----------------------------------------
	.byte		TIE   , An2 
	.byte	W96
@ 026   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		EOT   
	.byte	W42
	.byte	W01
@ 027   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		N24   , Cn3 , v084, gtp3
	.byte	W28
	.byte		        En3 , v084, gtp3
	.byte	W28
	.byte		N18   , Bn3 
	.byte	W07
@ 028   ----------------------------------------
	.byte	W12
	.byte		TIE   , Dn3 
	.byte	W84
@ 029   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		EOT   
	.byte	W30
	.byte	W01
@ 030   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		N36   , Gn3 
	.byte	W36
	.byte	W01
	.byte		        Cn3 
	.byte	W14
@ 031   ----------------------------------------
	.byte	W24
	.byte		TIE   , An2 
	.byte	W72
@ 032   ----------------------------------------
	.byte	W76
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		TIE   , Gn2 
	.byte	W18
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		TIE   , An2 
	.byte	W60
@ 035   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		N72   , Bn2 , v084, gtp2
	.byte	W06
@ 036   ----------------------------------------
mus_theme_of_geffen_2_036:
	.byte	W68
	.byte	W01
	.byte		N72   , Bn2 , v084, gtp2
	.byte	W24
	.byte	W03
	.byte	PEND
@ 037   ----------------------------------------
	.byte	W48
	.byte		        Gn2 , v084, gtp2
	.byte	W48
@ 038   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte		        As2 , v084, gtp2
	.byte	W68
	.byte	W01
@ 039   ----------------------------------------
	.byte	W06
	.byte		        Gs2 , v084, gtp2
	.byte	W72
	.byte	W03
	.byte		        Fn2 , v084, gtp2
	.byte	W15
@ 040   ----------------------------------------
	.byte	W60
	.byte		        Gn2 , v084, gtp2
	.byte	W36
@ 041   ----------------------------------------
	.byte	W36
	.byte	W03
	.byte		        As2 , v084, gtp2
	.byte	W56
	.byte	W01
@ 042   ----------------------------------------
	.byte	W18
	.byte		TIE   , Gs2 
	.byte	W78
@ 043   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		N36   , As2 
	.byte	W36
	.byte	W02
	.byte		N72   , Gs2 , v084, gtp2
	.byte	W24
@ 044   ----------------------------------------
	.byte	W48
	.byte	W03
	.byte		        As2 , v084, gtp2
	.byte	W44
	.byte	W01
@ 045   ----------------------------------------
	.byte	W30
	.byte		        As2 , v084, gtp2
	.byte	W66
@ 046   ----------------------------------------
	.byte	W09
	.byte		        Gs2 , v084, gtp2
	.byte	W72
	.byte	W03
	.byte		        Gs2 , v084, gtp2
	.byte	W12
@ 047   ----------------------------------------
	.byte	W60
	.byte	W03
	.byte		        Gs2 , v084, gtp2
	.byte	W32
	.byte	W01
@ 048   ----------------------------------------
	.byte	W42
	.byte		        Gn2 , v084, gtp2
	.byte	W54
@ 049   ----------------------------------------
	.byte	W21
	.byte		        Gn2 , v084, gtp2
	.byte	W72
	.byte	W03
@ 050   ----------------------------------------
	.byte		        Gn2 , v084, gtp2
	.byte	W72
	.byte	W03
	.byte		        As2 , v084, gtp2
	.byte	W21
@ 051   ----------------------------------------
	.byte	W54
	.byte		        Gs2 , v084, gtp2
	.byte	W42
@ 052   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		        Fn2 , v084, gtp2
	.byte	W60
	.byte	W03
@ 053   ----------------------------------------
	.byte	W12
	.byte		        Gn2 , v084, gtp2
	.byte	W72
	.byte	W03
	.byte		        As2 , v084, gtp2
	.byte	W09
@ 054   ----------------------------------------
	.byte	W66
	.byte		TIE   , Gs2 
	.byte	W30
@ 055   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		N36   , As2 
	.byte	W14
@ 056   ----------------------------------------
	.byte	W52
	.byte		N18   , Gs3 
	.byte	W18
	.byte		N18   
	.byte	W19
	.byte		N80   , Gs3 , v084, gtp3
	.byte	W07
@ 057   ----------------------------------------
	.byte	W78
	.byte		N24   , As2 , v084, gtp3
	.byte	W18
@ 058   ----------------------------------------
	.byte	W10
	.byte		N18   , Gn3 
	.byte	W18
	.byte		N18   
	.byte	W19
	.byte		N80   , Gn3 , v084, gtp3
	.byte	W48
	.byte	W01
@ 059   ----------------------------------------
	.byte	W36
	.byte		N72   , Gs2 , v084, gtp2
	.byte	W60
@ 060   ----------------------------------------
	.byte	W15
	.byte		        Gs2 , v084, gtp2
	.byte	W72
	.byte	W03
	.byte		        Bn2 , v084, gtp2
	.byte	W06
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_geffen_2_036
@ 062   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte	GOTO
	 .word	mus_theme_of_geffen_2_B1
mus_theme_of_geffen_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_theme_of_geffen_3:
	.byte	KEYSH , mus_theme_of_geffen_key+0
mus_theme_of_geffen_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_theme_of_geffen_mvl/mxv
	.byte		PAN   , c_v+10
	.byte	W36
	.byte	W01
	.byte		N08   , En5 , v127
	.byte	W09
	.byte		        Fn4 
	.byte	W10
	.byte		        Cn5 
	.byte	W09
	.byte		N44   , Gn4 , v127, gtp2
	.byte	W30
	.byte	W01
@ 001   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        Fs4 
	.byte	W04
	.byte		N08   , Fn4 
	.byte	W09
	.byte		        En4 
	.byte	W09
	.byte		        Dn4 
	.byte	W10
	.byte		        Cn4 
	.byte	W09
	.byte		N13   , Bn3 
	.byte	W05
@ 002   ----------------------------------------
	.byte	W09
	.byte		        Cn4 
	.byte	W14
	.byte		N08   , Dn4 
	.byte	W10
	.byte		N13   , Bn3 
	.byte	W14
	.byte		        Gn3 
	.byte	W14
	.byte		N04   , Fn3 
	.byte	W04
	.byte		        En3 
	.byte	W05
	.byte		N13   , Dn3 
	.byte	W14
	.byte		        Cn3 
	.byte	W12
@ 003   ----------------------------------------
	.byte	W02
	.byte		N08   , Cn5 
	.byte	W10
	.byte		        Bn4 
	.byte	W09
	.byte		N18   , Cn5 
	.byte	W28
	.byte		N36   , Bn4 
	.byte	W36
	.byte	W02
	.byte		        Dn5 
	.byte	W09
@ 004   ----------------------------------------
	.byte	W28
	.byte		N24   , En5 , v127, gtp3
	.byte	W28
	.byte		N02   , Cn5 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		N03   , Dn4 
	.byte	W04
	.byte		N08   , Bn4 
	.byte	W09
	.byte		N18   , Cn5 
	.byte	W21
@ 005   ----------------------------------------
	.byte	W80
	.byte	W02
	.byte		N08   , En4 
	.byte	W09
	.byte		        Fn4 
	.byte	W05
@ 006   ----------------------------------------
	.byte	W05
	.byte		        Cn4 
	.byte	W09
	.byte		N09   , Gn3 
	.byte	W10
	.byte		N08   
	.byte	W09
	.byte		        Cn4 
	.byte	W09
	.byte		        En4 
	.byte	W10
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N08   , Gn3 
	.byte	W10
	.byte		        Cn4 
	.byte	W09
	.byte		N44   , Gn4 , v127, gtp2
	.byte	W07
@ 007   ----------------------------------------
	.byte	W40
	.byte		N08   , Dn4 
	.byte	W09
	.byte		N18   , Gn4 
	.byte	W19
	.byte		N08   , An4 
	.byte	W10
	.byte		N64   , Gn4 , v127, gtp1
	.byte	W18
@ 008   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N08   
	.byte	W10
	.byte		N13   , Dn5 
	.byte	W14
	.byte		        Cn5 
	.byte	W14
	.byte		N08   , Bn4 
	.byte	W09
	.byte		N13   , Gn4 
	.byte	W02
@ 009   ----------------------------------------
	.byte	W12
	.byte		        Fn4 
	.byte	W14
	.byte		N08   , Cn5 
	.byte	W10
	.byte		        Bn4 
	.byte	W09
	.byte		N18   , Cn5 
	.byte	W28
	.byte		N36   
	.byte	W23
@ 010   ----------------------------------------
	.byte	W15
	.byte		N72   , En4 , v127, gtp2
	.byte	W72
	.byte	W03
	.byte		N03   , Gn4 
	.byte	W04
	.byte		N04   , Cn4 
	.byte	W02
@ 011   ----------------------------------------
	.byte	W03
	.byte		N24   , Bn3 , v127, gtp3
	.byte	W28
	.byte		N03   , Gn4 
	.byte	W05
	.byte		N04   , Cn4 
	.byte	W04
	.byte		N24   , Bn3 , v127, gtp3
	.byte	W28
	.byte	W01
	.byte		N03   , Gn4 
	.byte	W04
	.byte		N04   , Cn4 
	.byte	W05
	.byte		N24   , Bn3 , v127, gtp3
	.byte	W18
@ 012   ----------------------------------------
	.byte	W10
	.byte		N03   , Gn4 
	.byte	W05
	.byte		N04   , Cn4 
	.byte	W04
	.byte		N24   , Bn3 , v127, gtp3
	.byte	W28
	.byte	W01
	.byte		        En4 , v127, gtp3
	.byte	W28
	.byte		        En4 , v127, gtp3
	.byte	W20
@ 013   ----------------------------------------
	.byte	W08
	.byte		N08   , Dn4 
	.byte	W09
	.byte		N24   , An3 , v127, gtp3
	.byte	W28
	.byte		N08   
	.byte	W10
	.byte		N44   , Cn4 , v127, gtp2
	.byte	W40
	.byte	W01
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W22
	.byte		N24   , Cn4 , v127, gtp3
	.byte	W28
	.byte		N08   , Dn4 
	.byte	W10
	.byte		TIE   
	.byte	W36
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W07
	.byte		EOT   
	.byte	W01
	.byte		TIE   , Gn4 
	.byte	W88
@ 018   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		N36   
	.byte	W36
	.byte	W02
	.byte		N54   , Gn4 , v127, gtp1
	.byte	W24
@ 019   ----------------------------------------
	.byte	W32
	.byte		N08   , Fn4 
	.byte	W09
	.byte		N64   , Cn4 
	.byte	W54
	.byte	W01
@ 020   ----------------------------------------
	.byte	W11
	.byte		N08   , Gn4 
	.byte	W09
	.byte		N18   , Fn4 
	.byte	W19
	.byte		N64   , Cn4 , v127, gtp1
	.byte	W56
	.byte	W01
@ 021   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N24   , An3 , v127, gtp3
	.byte	W28
	.byte		N08   , Cn4 
	.byte	W10
	.byte		N72   , Cn4 , v127, gtp2
	.byte	W12
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W13
	.byte		N08   , Dn3 
	.byte	W10
	.byte		        En3 
	.byte	W09
	.byte		        Gn3 
	.byte	W10
	.byte		        En3 
	.byte	W09
	.byte		        Gn3 
	.byte	W09
	.byte		        Bn3 
	.byte	W10
	.byte		        Gn3 
	.byte	W09
	.byte		        Bn3 
	.byte	W09
	.byte		        Cn4 
	.byte	W08
@ 024   ----------------------------------------
	.byte	W02
	.byte		        Bn3 
	.byte	W09
	.byte		        Cn4 
	.byte	W10
	.byte		        Dn5 
	.byte	W09
	.byte		        Dn4 
	.byte	W09
	.byte		        En4 
	.byte	W10
	.byte		        Gn4 
	.byte	W09
	.byte		        En5 
	.byte	W09
	.byte		        Gn4 
	.byte	W10
	.byte		        An4 
	.byte	W09
	.byte		N09   , Bn4 
	.byte	W10
@ 025   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 026   ----------------------------------------
	.byte	W06
	.byte		EOT   
	.byte	W01
	.byte		N08   , En4 
	.byte	W09
	.byte		        Bn4 
	.byte	W09
	.byte		        Cn5 
	.byte	W10
	.byte		        An4 
	.byte	W09
	.byte		        En4 
	.byte	W10
	.byte		        Bn4 
	.byte	W09
	.byte		        Cn5 
	.byte	W09
	.byte		        An4 
	.byte	W10
	.byte		        En4 
	.byte	W09
	.byte		        Bn4 
	.byte	W05
@ 027   ----------------------------------------
	.byte	W04
	.byte		        Cn5 
	.byte	W10
	.byte		        An4 
	.byte	W09
	.byte		        En4 
	.byte	W10
	.byte		        Bn4 
	.byte	W09
	.byte		        Cn5 
	.byte	W09
	.byte		        An4 
	.byte	W10
	.byte		        En4 
	.byte	W32
	.byte	W03
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W19
	.byte		        Dn4 
	.byte	W09
	.byte		        En4 
	.byte	W09
	.byte		        Bn4 
	.byte	W10
	.byte		        Cn5 
	.byte	W09
	.byte		N18   , En4 
	.byte	W19
	.byte		N08   , Bn4 
	.byte	W09
	.byte		        Cn5 
	.byte	W10
	.byte		N18   , En4 
	.byte	W02
@ 030   ----------------------------------------
	.byte	W16
	.byte		N08   , Bn4 
	.byte	W10
	.byte		        Cn5 
	.byte	W09
	.byte		N18   , En4 
	.byte	W19
	.byte		N08   , Bn4 
	.byte	W09
	.byte		        Cn5 
	.byte	W10
	.byte		N18   , En4 
	.byte	W23
@ 031   ----------------------------------------
	.byte	W24
	.byte		N24   , Gn4 , v127, gtp3
	.byte	W28
	.byte		        An4 , v127, gtp3
	.byte	W28
	.byte		N72   , Cn4 , v127, gtp2
	.byte	W16
@ 032   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		N08   
	.byte	W09
	.byte		        Dn4 
	.byte	W10
	.byte		N72   , En4 , v127, gtp2
	.byte	W18
@ 033   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		N24   , Cn4 , v127, gtp3
	.byte	W02
@ 034   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		N08   , Gn4 
	.byte	W10
	.byte		N54   , Gn4 , v127, gtp1
	.byte	W56
	.byte		N08   , Fn4 
	.byte	W04
@ 035   ----------------------------------------
	.byte	W05
	.byte		        En4 
	.byte	W10
	.byte		N36   , Fn4 , v127, gtp1
	.byte	W36
	.byte	W01
	.byte		        Gn4 
	.byte	W36
	.byte	W02
	.byte		N36   
	.byte	W06
@ 036   ----------------------------------------
	.byte	W30
	.byte	W01
	.byte		        Gn4 , v127, gtp1
	.byte	W36
	.byte	W02
	.byte		N44   , Gn3 , v127, gtp2
	.byte	W24
	.byte	W03
@ 037   ----------------------------------------
	.byte	W19
	.byte		N24   , Dn4 , v127, gtp3
	.byte	W28
	.byte	W01
	.byte		N44   , Cn5 , v127, gtp2
	.byte	W44
	.byte	W02
	.byte		N24   , Cn4 , v127, gtp3
	.byte	W02
@ 038   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte		        Dn4 , v127, gtp3
	.byte	W28
	.byte		N44   , Cn4 , v127, gtp2
	.byte	W40
	.byte	W01
@ 039   ----------------------------------------
	.byte	W06
	.byte		N24   , Cn5 , v127, gtp3
	.byte	W28
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N24   , Ds4 , v127, gtp3
	.byte	W28
	.byte	W01
	.byte		N17   , Cn5 
	.byte	W15
@ 040   ----------------------------------------
	.byte	W03
	.byte		N08   , As4 
	.byte	W10
	.byte		        Gs4 
	.byte	W18
	.byte		        Ds4 
	.byte	W10
	.byte		        Fn4 
	.byte	W09
	.byte		        Gn4 
	.byte	W10
	.byte		N24   , Gn4 , v127, gtp3
	.byte	W28
	.byte		N44   , Ds4 , v127, gtp2
	.byte	W08
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W08
	.byte		N09   , Dn4 
	.byte	W10
	.byte		N08   , Ds5 
	.byte	W09
	.byte		N72   , Ds4 , v127, gtp2
	.byte	W68
	.byte	W01
@ 043   ----------------------------------------
	.byte	W06
	.byte		N18   , Dn5 
	.byte	W19
	.byte		N08   , Cn5 
	.byte	W09
	.byte		        Gn4 
	.byte	W09
	.byte		        Ds4 
	.byte	W10
	.byte		        Dn4 
	.byte	W09
	.byte		N18   , Cn4 
	.byte	W19
	.byte		N08   , Gs4 
	.byte	W09
	.byte		        Gn4 
	.byte	W06
@ 044   ----------------------------------------
	.byte	W04
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        Cn5 
	.byte	W19
	.byte		N18   
	.byte	W19
	.byte		        Dn5 
	.byte	W19
	.byte		N24   , Ds5 , v127, gtp3
	.byte	W17
@ 045   ----------------------------------------
	.byte	W11
	.byte		N08   , Dn5 
	.byte	W09
	.byte		        As4 
	.byte	W19
	.byte		        Gn4 
	.byte	W09
	.byte		        Fn4 
	.byte	W10
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N18   
	.byte	W19
	.byte		N18   
	.byte	W01
@ 046   ----------------------------------------
	.byte	W18
	.byte		        As4 
	.byte	W19
	.byte		N09   , Cn5 
	.byte	W09
	.byte		N08   , Gn3 
	.byte	W09
	.byte		N18   , Cn4 
	.byte	W19
	.byte		N08   , Gn4 
	.byte	W10
	.byte		N64   , Fn4 
	.byte	W12
@ 047   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		N04   , Ds4 
	.byte	W05
	.byte		        Dn4 
	.byte	W05
	.byte		N24   , Cn4 , v127, gtp3
	.byte	W28
	.byte		N09   , Gn4 
	.byte	W05
@ 048   ----------------------------------------
	.byte	W04
	.byte		N08   , Gn3 
	.byte	W09
	.byte		N18   , Gn4 
	.byte	W19
	.byte		N08   , Fn4 
	.byte	W10
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N08   , Bn3 
	.byte	W10
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N24   , Dn4 , v127, gtp3
	.byte	W08
@ 049   ----------------------------------------
	.byte	W21
	.byte		N44   , Cn4 , v127, gtp2
	.byte	W44
	.byte	W02
	.byte		N24   , Cn4 , v127, gtp3
	.byte	W28
	.byte	W01
@ 050   ----------------------------------------
	.byte		        Cn5 , v127, gtp3
	.byte	W28
	.byte		N44   , Cn4 , v127, gtp2
	.byte	W44
	.byte	W03
	.byte		N24   , Dn4 , v127, gtp3
	.byte	W21
@ 051   ----------------------------------------
	.byte	W07
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N24   , Ds4 , v127, gtp3
	.byte	W28
	.byte	W01
	.byte		N17   
	.byte	W18
	.byte		N08   , Dn4 
	.byte	W10
	.byte		N18   , Cn4 
	.byte	W14
@ 052   ----------------------------------------
	.byte	W04
	.byte		N24   , Dn4 , v127, gtp3
	.byte	W28
	.byte	W01
	.byte		N17   , Cn5 
	.byte	W18
	.byte		N08   , As4 
	.byte	W10
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N24   , Gn4 , v127, gtp3
	.byte	W17
@ 053   ----------------------------------------
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N08   , Dn4 
	.byte	W10
	.byte		N18   , Cn4 
	.byte	W18
	.byte		        Dn4 
	.byte	W19
	.byte		N09   
	.byte	W10
	.byte		N08   , Gn4 
	.byte	W09
@ 054   ----------------------------------------
	.byte		N28   , Ds4 
	.byte	W28
	.byte		N36   , As4 
	.byte	W36
	.byte	W02
	.byte		N64   , Cn5 
	.byte	W30
@ 055   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N04   , Gn4 
	.byte	W05
	.byte		        Fn4 
	.byte	W05
	.byte		N08   , Ds5 
	.byte	W09
	.byte		        Dn5 
	.byte	W09
	.byte		        Cn5 
	.byte	W10
	.byte		        Dn5 
	.byte	W09
	.byte		        Ds5 
	.byte	W09
	.byte		        Cn5 
	.byte	W05
@ 056   ----------------------------------------
	.byte	W05
	.byte		        Gn4 
	.byte	W09
	.byte		        Ds4 
	.byte	W10
	.byte		N24   , Cn4 , v127, gtp3
	.byte	W28
	.byte		N18   , Dn4 
	.byte	W18
	.byte		        Ds4 
	.byte	W19
	.byte		N24   , Ds4 , v127, gtp3
	.byte	W07
@ 057   ----------------------------------------
	.byte	W21
	.byte		N08   , Dn4 
	.byte	W10
	.byte		N09   , As3 
	.byte	W09
	.byte		N17   , Fn4 
	.byte	W19
	.byte		N08   , Gn4 
	.byte	W09
	.byte		N18   , Dn5 
	.byte	W19
	.byte		N08   , Gn3 
	.byte	W09
@ 058   ----------------------------------------
	.byte		        As3 
	.byte	W10
	.byte		N18   , Dn4 
	.byte	W18
	.byte		N18   
	.byte	W19
	.byte		N24   , Dn4 , v127, gtp3
	.byte	W28
	.byte		N09   , Cn4 
	.byte	W10
	.byte		N08   , Fn4 
	.byte	W09
	.byte		N24   , Gn4 , v127, gtp3
	.byte	W02
@ 059   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		N04   , Fn4 
	.byte	W05
	.byte		        Dn5 
	.byte	W05
	.byte		N54   , Cn5 , v127, gtp1
	.byte	W56
	.byte		N08   , Fn3 
	.byte	W04
@ 060   ----------------------------------------
	.byte	W05
	.byte		N36   , Gs2 
	.byte	W36
	.byte	W02
	.byte		N08   , Gn4 
	.byte	W09
	.byte		N13   , Ds5 
	.byte	W14
	.byte		N22   , Fn4 
	.byte	W30
@ 061   ----------------------------------------
	.byte	W03
	.byte		N08   , Dn4 
	.byte	W09
	.byte		        Gn4 
	.byte	W10
	.byte		N18   , Cn5 
	.byte	W18
	.byte		        Bn4 
	.byte	W19
	.byte		N80   , Gn4 , v127, gtp3
	.byte	W36
	.byte	W01
@ 062   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte	GOTO
	 .word	mus_theme_of_geffen_3_B1
mus_theme_of_geffen_3_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_theme_of_geffen:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_theme_of_geffen_pri	@ Priority
	.byte	mus_theme_of_geffen_rev	@ Reverb.

	.word	mus_theme_of_geffen_grp

	.word	mus_theme_of_geffen_1
	.word	mus_theme_of_geffen_2
	.word	mus_theme_of_geffen_3

	.end
