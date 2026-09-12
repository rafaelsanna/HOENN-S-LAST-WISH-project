	.include "MPlayDef.s"

	.equ	mus_divine_grace_grp, voicegroup_divine_grace
	.equ	mus_divine_grace_pri, 0
	.equ	mus_divine_grace_rev, reverb_set+50
	.equ	mus_divine_grace_mvl, 100
	.equ	mus_divine_grace_key, 0
	.equ	mus_divine_grace_tbs, 1
	.equ	mus_divine_grace_exg, 1
	.equ	mus_divine_grace_cmp, 1

	.section .rodata
	.global	mus_divine_grace
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_divine_grace_1:
	.byte	KEYSH , mus_divine_grace_key+0
mus_divine_grace_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 125*mus_divine_grace_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 125*mus_divine_grace_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		TIE   , Bn0 , v127
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
	.byte	W03
	.byte		EOT   
	.byte	W44
	.byte	W01
@ 002   ----------------------------------------
	.byte	W08
	.byte		TIE   
	.byte	W88
@ 003   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		EOT   
	.byte	W36
	.byte	W01
@ 004   ----------------------------------------
	.byte	W16
	.byte		TIE   , An1 
	.byte	W80
@ 005   ----------------------------------------
	.byte	W17
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Gn1 
	.byte	W76
@ 006   ----------------------------------------
	.byte	W21
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Fs1 
	.byte	W72
@ 007   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		N44   , Cs2 , v127, gtp3
	.byte	W48
	.byte	W02
	.byte		        Bn1 , v127, gtp3
	.byte	W18
@ 008   ----------------------------------------
	.byte	W32
	.byte		        As1 , v127, gtp3
	.byte	W48
	.byte	W02
	.byte		        Fs1 , v127, gtp3
	.byte	W14
@ 009   ----------------------------------------
	.byte	W36
	.byte		N22   , Ds2 
	.byte	W24
	.byte	W01
	.byte		        Cs2 
	.byte	W24
	.byte	W01
	.byte		        Bn1 
	.byte	W10
@ 010   ----------------------------------------
	.byte	W15
	.byte		        An1 
	.byte	W24
	.byte	W01
	.byte		        Gn1 
	.byte	W24
	.byte	W01
	.byte		N10   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W13
	.byte		        Dn1 
	.byte	W06
@ 011   ----------------------------------------
	.byte	W06
	.byte		        En1 
	.byte	W13
	.byte		        Dn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W13
	.byte		N22   , Cs2 
	.byte	W24
	.byte	W01
	.byte		        Bn1 
	.byte	W24
	.byte	W01
	.byte		        An1 
	.byte	W02
@ 012   ----------------------------------------
	.byte	W23
	.byte		        Gn1 
	.byte	W24
	.byte	W01
	.byte		        Fs1 
	.byte	W24
	.byte	W01
	.byte		N10   , En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W11
@ 013   ----------------------------------------
	.byte	W02
	.byte		        Cs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W13
	.byte		        Cs1 
	.byte	W12
	.byte		        Bn0 
	.byte	W13
	.byte		N22   , Gn1 
	.byte	W24
	.byte	W01
	.byte		N10   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W07
@ 014   ----------------------------------------
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W13
	.byte		        Bn0 
	.byte	W12
	.byte		        An0 
	.byte	W13
	.byte		        Gs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W13
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W03
@ 015   ----------------------------------------
	.byte	W10
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W13
	.byte		        As0 
	.byte	W12
	.byte		        Cn1 
	.byte	W13
	.byte		TIE   , Fs1 
	.byte	W36
@ 016   ----------------------------------------
	.byte	W60
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   
	.byte	W32
@ 017   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		EOT   
	.byte	W30
	.byte	W01
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W80
	.byte		TIE   , Bn0 
	.byte	W16
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		EOT   
	.byte	W52
	.byte	W01
	.byte		TIE   
	.byte	W08
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W42
	.byte	W01
	.byte		EOT   
	.byte	W52
	.byte	W01
@ 025   ----------------------------------------
	.byte		N72   , Gn1 
	.byte	W72
	.byte	W03
	.byte		N22   , Fs1 
	.byte	W21
@ 026   ----------------------------------------
	.byte	W04
	.byte		N72   , En1 
	.byte	W72
	.byte	W03
	.byte		N22   , Dn1 
	.byte	W17
@ 027   ----------------------------------------
	.byte	W08
	.byte		TIE   , Cn1 
	.byte	W88
@ 028   ----------------------------------------
	.byte	W09
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Dn1 
	.byte	W84
@ 029   ----------------------------------------
	.byte	W13
	.byte		EOT   
	.byte	W03
	.byte		N72   , Gn1 
	.byte	W72
	.byte	W03
	.byte		N22   , Fs1 
	.byte	W05
@ 030   ----------------------------------------
	.byte	W20
	.byte		N72   , En1 
	.byte	W72
	.byte	W03
	.byte		N22   , Dn1 
	.byte	W01
@ 031   ----------------------------------------
	.byte	W24
	.byte		N44   , Cs1 , v127, gtp3
	.byte	W48
	.byte	W02
	.byte		        An0 , v127, gtp3
	.byte	W22
@ 032   ----------------------------------------
	.byte	W28
	.byte		TIE   , Dn1 
	.byte	W68
@ 033   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Cs1 
	.byte	W64
@ 034   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Fs1 
	.byte	W60
@ 035   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Bn0 
	.byte	W56
@ 036   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , En1 
	.byte	W52
@ 037   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , An0 
	.byte	W48
@ 038   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Dn1 
	.byte	W44
@ 039   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Gn1 
	.byte	W40
@ 040   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , An1 
	.byte	W36
@ 041   ----------------------------------------
	.byte	W60
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Dn1 
	.byte	W32
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		EOT   
	.byte	GOTO
	 .word	mus_divine_grace_1_B1
mus_divine_grace_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_divine_grace_2:
	.byte	KEYSH , mus_divine_grace_key+0
mus_divine_grace_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 48*mus_divine_grace_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N24   , Bn2 , v084
	.byte	W24
	.byte	W01
	.byte		N22   , Fs2 
	.byte	W24
	.byte	W01
	.byte		N44   , Dn3 , v084, gtp3
	.byte	W44
	.byte	W02
@ 001   ----------------------------------------
	.byte	W04
	.byte		        Cs3 , v084, gtp3
	.byte	W92
@ 002   ----------------------------------------
	.byte	W08
	.byte		N24   , Bn2 
	.byte	W24
	.byte	W01
	.byte		N22   , Fs2 
	.byte	W24
	.byte	W01
	.byte		N32   , Dn3 , v084, gtp3
	.byte	W36
	.byte	W01
	.byte		N10   , En3 
	.byte	W01
@ 003   ----------------------------------------
	.byte	W12
	.byte		N44   , Cs3 , v084, gtp3
	.byte	W84
@ 004   ----------------------------------------
mus_divine_grace_2_004:
	.byte	W16
	.byte		TIE   , Fs3 , v084
	.byte	W80
	.byte	PEND
@ 005   ----------------------------------------
	.byte	W17
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Gn3 
	.byte	W76
@ 006   ----------------------------------------
	.byte	W21
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Fs3 
	.byte	W72
@ 007   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Fn3 
	.byte	W68
@ 008   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Fs3 
	.byte	W64
@ 009   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Bn3 
	.byte	W60
@ 010   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Gn3 
	.byte	W56
@ 011   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , An3 
	.byte	W52
@ 012   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Bn3 
	.byte	W44
@ 014   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Gs3 
	.byte	W40
@ 015   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Bn3 
	.byte	W36
@ 016   ----------------------------------------
	.byte	W60
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , As3 
	.byte	W32
@ 017   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		EOT   
	.byte	W30
	.byte	W01
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W80
	.byte		N24   , Bn2 
	.byte	W16
@ 021   ----------------------------------------
	.byte	W09
	.byte		N22   , Fs2 
	.byte	W24
	.byte	W01
	.byte		N44   , Dn3 , v084, gtp3
	.byte	W48
	.byte	W02
	.byte		        Cs3 , v084, gtp3
	.byte	W12
@ 022   ----------------------------------------
	.byte	W88
	.byte		N24   , Bn2 
	.byte	W08
@ 023   ----------------------------------------
	.byte	W17
	.byte		N22   , Fs2 
	.byte	W24
	.byte	W01
	.byte		N32   , Dn3 , v084, gtp3
	.byte	W36
	.byte	W01
	.byte		N10   , En3 
	.byte	W13
	.byte		N44   , Cs3 , v084, gtp3
	.byte	W04
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte	W96
@ 026   ----------------------------------------
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   
	.byte	W92
@ 027   ----------------------------------------
	.byte	W05
	.byte		EOT   
	.byte	W03
	.byte		N44   , Fs3 , v084, gtp3
	.byte	W48
	.byte	W02
	.byte		        Gn3 , v084, gtp3
	.byte	W36
	.byte	W02
@ 028   ----------------------------------------
	.byte	W12
	.byte		        Gn3 , v084, gtp3
	.byte	W48
	.byte	W02
	.byte		        Fs3 , v084, gtp3
	.byte	W32
	.byte	W02
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_divine_grace_2_004
@ 030   ----------------------------------------
	.byte	W17
	.byte		EOT   , Fs3 
	.byte	W03
	.byte		TIE   , Fs3 , v084
	.byte	W76
@ 031   ----------------------------------------
	.byte	W21
	.byte		EOT   
	.byte	W03
	.byte		N48   , En3 , v084, gtp1
	.byte	W48
	.byte	W02
	.byte		N44   , An2 , v084, gtp3
	.byte	W22
@ 032   ----------------------------------------
	.byte	W28
	.byte		        Gn3 , v084, gtp3
	.byte	W48
	.byte	W02
	.byte		        Fs3 , v084, gtp3
	.byte	W18
@ 033   ----------------------------------------
	.byte	W32
	.byte		        Fs3 , v084, gtp3
	.byte	W48
	.byte	W02
	.byte		        Fn3 , v084, gtp3
	.byte	W14
@ 034   ----------------------------------------
	.byte	W36
	.byte		TIE   , Fs3 
	.byte	W60
@ 035   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		N44   , En3 , v084, gtp3
	.byte	W48
	.byte	W02
	.byte		        Ds3 , v084, gtp3
	.byte	W06
@ 036   ----------------------------------------
	.byte	W44
	.byte		TIE   , En3 
	.byte	W52
@ 037   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		N44   , Dn3 , v084, gtp3
	.byte	W48
@ 038   ----------------------------------------
	.byte	W02
	.byte		        Cs3 , v084, gtp3
	.byte	W48
	.byte	W02
	.byte		TIE   , Dn3 
	.byte	W44
@ 039   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Gn3 
	.byte	W40
@ 040   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   
	.byte	W36
@ 041   ----------------------------------------
	.byte	W60
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   
	.byte	W32
@ 042   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Fs3 
	.byte	W28
@ 043   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		EOT   
	.byte	GOTO
	 .word	mus_divine_grace_2_B1
mus_divine_grace_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_divine_grace_3:
	.byte	KEYSH , mus_divine_grace_key+0
mus_divine_grace_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_divine_grace_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N22   , Fs3 , v127
	.byte	W24
	.byte	W01
	.byte		N22   
	.byte	W24
	.byte	W01
	.byte		N44   , Dn4 , v127, gtp3
	.byte	W44
	.byte	W02
@ 001   ----------------------------------------
	.byte	W04
	.byte		        Cs4 , v127, gtp3
	.byte	W92
@ 002   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		N22   , Fs3 
	.byte	W24
	.byte	W01
	.byte		N32   , Dn4 , v127, gtp3
	.byte	W36
	.byte	W01
	.byte		N10   , En4 
	.byte	W01
@ 003   ----------------------------------------
	.byte	W12
	.byte		N44   , Cs4 , v127, gtp3
	.byte	W84
@ 004   ----------------------------------------
	.byte	W16
	.byte		N24   , Fs4 
	.byte	W24
	.byte	W01
	.byte		N22   , An3 
	.byte	W24
	.byte	W01
	.byte		        Dn4 
	.byte	W24
	.byte	W01
	.byte		        Fs4 
	.byte	W05
@ 005   ----------------------------------------
	.byte	W20
	.byte		N24   , Gn4 
	.byte	W24
	.byte	W01
	.byte		N22   , Dn4 
	.byte	W24
	.byte	W01
	.byte		N44   , Gn4 , v127, gtp3
	.byte	W24
	.byte	W02
@ 006   ----------------------------------------
	.byte	W24
	.byte		N48   , Fs4 , v127, gtp1
	.byte	W48
	.byte	W02
	.byte		N44   , Dn4 , v127, gtp3
	.byte	W22
@ 007   ----------------------------------------
	.byte	W28
	.byte		TIE   , Fn4 
	.byte	W68
@ 008   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Fs4 
	.byte	W64
@ 009   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Bn4 
	.byte	W60
@ 010   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Gn4 
	.byte	W56
@ 011   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , An4 
	.byte	W52
@ 012   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Bn4 
	.byte	W44
@ 014   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		N48   , Gs4 , v127, gtp1
	.byte	W40
@ 015   ----------------------------------------
	.byte	W10
	.byte		N22   , Ds4 
	.byte	W24
	.byte	W01
	.byte		        Fn4 
	.byte	W24
	.byte	W01
	.byte		TIE   , Bn4 
	.byte	W36
@ 016   ----------------------------------------
	.byte	W60
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , As4 
	.byte	W32
@ 017   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		EOT   
	.byte	W30
	.byte	W01
@ 018   ----------------------------------------
	.byte	W72
	.byte		N72   , Fs3 
	.byte	W24
@ 019   ----------------------------------------
	.byte	W60
	.byte	W03
	.byte		N10   , Cs5 
	.byte	W13
	.byte		TIE   , Fs4 
	.byte	W20
@ 020   ----------------------------------------
	.byte	W76
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		N22   , Fs3 
	.byte	W16
@ 021   ----------------------------------------
	.byte	W09
	.byte		N22   
	.byte	W24
	.byte	W01
	.byte		N44   , Dn4 , v127, gtp3
	.byte	W48
	.byte	W02
	.byte		        Cs4 , v127, gtp3
	.byte	W12
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W17
	.byte		N22   , Fs3 
	.byte	W24
	.byte	W01
	.byte		N32   , Dn4 , v127, gtp3
	.byte	W36
	.byte	W01
	.byte		N10   , En4 
	.byte	W13
	.byte		N44   , Cs4 , v127, gtp3
	.byte	W04
@ 024   ----------------------------------------
	.byte	W90
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W05
@ 025   ----------------------------------------
	.byte		N48   , Fs4 , v127, gtp1
	.byte	W48
	.byte	W02
	.byte		N44   , Bn3 , v127, gtp1
	.byte	W44
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W01
@ 026   ----------------------------------------
	.byte	W04
	.byte		N48   , Fs4 , v127, gtp1
	.byte	W48
	.byte	W02
	.byte		N44   , Bn3 , v127, gtp3
	.byte	W42
@ 027   ----------------------------------------
	.byte	W08
	.byte		        Fs4 , v127, gtp3
	.byte	W48
	.byte	W02
	.byte		        Gn4 , v127, gtp3
	.byte	W36
	.byte	W02
@ 028   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	W01
	.byte		N22   , En4 
	.byte	W24
	.byte	W01
	.byte		N44   , Fs4 , v127, gtp1
	.byte	W32
	.byte	W02
@ 029   ----------------------------------------
	.byte	W11
	.byte		N04   , Dn4 
	.byte	W05
	.byte		N44   , Fs4 , v127, gtp3
	.byte	W48
	.byte	W02
	.byte		        Bn3 , v127, gtp1
	.byte	W30
@ 030   ----------------------------------------
	.byte	W15
	.byte		N04   , Dn4 
	.byte	W05
	.byte		N44   , Fs4 , v127, gtp3
	.byte	W48
	.byte	W02
	.byte		        Bn3 , v127, gtp3
	.byte	W24
	.byte	W02
@ 031   ----------------------------------------
	.byte	W24
	.byte		N72   , An4 
	.byte	W72
@ 032   ----------------------------------------
	.byte	W03
	.byte		N22   , Gn4 
	.byte	W24
	.byte	W01
	.byte		N44   , Gn4 , v127, gtp3
	.byte	W48
	.byte	W02
	.byte		        Fs4 , v127, gtp3
	.byte	W18
@ 033   ----------------------------------------
	.byte	W32
	.byte		        Fs4 , v127, gtp3
	.byte	W48
	.byte	W02
	.byte		        Fn4 , v127, gtp3
	.byte	W14
@ 034   ----------------------------------------
	.byte	W36
	.byte		        Fs4 , v127, gtp3
	.byte	W48
	.byte	W02
	.byte		        Cs5 , v127, gtp3
	.byte	W10
@ 035   ----------------------------------------
	.byte	W40
	.byte		        En5 , v127, gtp3
	.byte	W48
	.byte	W02
	.byte		        Ds5 , v127, gtp3
	.byte	W06
@ 036   ----------------------------------------
	.byte	W44
	.byte		        En5 , v127, gtp3
	.byte	W48
	.byte	W02
	.byte		        Bn4 , v127, gtp3
	.byte	W02
@ 037   ----------------------------------------
	.byte	W48
	.byte		        Dn5 , v127, gtp3
	.byte	W48
@ 038   ----------------------------------------
	.byte	W02
	.byte		        Cs5 , v127, gtp3
	.byte	W48
	.byte	W02
	.byte		        Dn5 , v127, gtp3
	.byte	W44
@ 039   ----------------------------------------
	.byte	W06
	.byte		N22   , An4 
	.byte	W24
	.byte	W01
	.byte		N22   
	.byte	W24
	.byte	W01
	.byte		N44   , An4 , v127, gtp3
	.byte	W40
@ 040   ----------------------------------------
	.byte	W10
	.byte		        Gn4 , v127, gtp3
	.byte	W48
	.byte	W02
	.byte		N48   , Gn4 , v127, gtp1
	.byte	W36
@ 041   ----------------------------------------
	.byte	W14
	.byte		N44   , Cs4 , v127, gtp3
	.byte	W48
	.byte	W02
	.byte		TIE   , Gn4 
	.byte	W32
@ 042   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Fs4 
	.byte	W28
@ 043   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		EOT   
	.byte	GOTO
	 .word	mus_divine_grace_3_B1
mus_divine_grace_3_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_divine_grace:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_divine_grace_pri	@ Priority
	.byte	mus_divine_grace_rev	@ Reverb.

	.word	mus_divine_grace_grp

	.word	mus_divine_grace_1
	.word	mus_divine_grace_2
	.word	mus_divine_grace_3

	.end
