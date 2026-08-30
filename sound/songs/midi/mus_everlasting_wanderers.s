	.include "MPlayDef.s"

	.equ	mus_everlasting_wanderers_grp, voicegroup_everlasting_wanderers
	.equ	mus_everlasting_wanderers_pri, 0
	.equ	mus_everlasting_wanderers_rev, reverb_set+50
	.equ	mus_everlasting_wanderers_mvl, 100
	.equ	mus_everlasting_wanderers_key, 0
	.equ	mus_everlasting_wanderers_tbs, 1
	.equ	mus_everlasting_wanderers_exg, 1
	.equ	mus_everlasting_wanderers_cmp, 1

	.section .rodata
	.global	mus_everlasting_wanderers
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_everlasting_wanderers_1:
	.byte	KEYSH , mus_everlasting_wanderers_key+0
mus_everlasting_wanderers_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 125*mus_everlasting_wanderers_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 125*mus_everlasting_wanderers_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N19   , Cn1 , v127
	.byte	W28
	.byte	W01
	.byte		N19   
	.byte	W21
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W16
@ 001   ----------------------------------------
	.byte	W15
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W20
	.byte		        Bn0 
	.byte	W30
	.byte	W01
@ 002   ----------------------------------------
	.byte		N19   
	.byte	W20
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W30
	.byte	W01
	.byte		N19   
	.byte	W15
@ 003   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N20   , Ds1 
	.byte	W30
	.byte	W01
	.byte		N19   
	.byte	W21
	.byte		N19   
	.byte	W09
@ 004   ----------------------------------------
	.byte	W20
	.byte		N19   
	.byte	W30
	.byte	W01
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W15
@ 005   ----------------------------------------
	.byte	W06
	.byte		        Dn1 
	.byte	W30
	.byte		N19   
	.byte	W20
	.byte		N19   
	.byte	W21
	.byte		N19   
	.byte	W19
@ 006   ----------------------------------------
	.byte	W48
	.byte	W03
	.byte		N19   
	.byte	W21
	.byte		        Cn1 
	.byte	W24
@ 007   ----------------------------------------
	.byte	W06
	.byte		N19   
	.byte	W20
	.byte		N20   
	.byte	W30
	.byte	W01
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W09
@ 008   ----------------------------------------
	.byte	W22
	.byte		N19   
	.byte	W20
	.byte		        Bn0 
	.byte	W30
	.byte		N19   
	.byte	W21
	.byte		N19   
	.byte	W03
@ 009   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W36
	.byte	W03
@ 010   ----------------------------------------
	.byte	W12
	.byte		        Gn0 
	.byte	W30
	.byte		N19   
	.byte	W21
	.byte		N19   
	.byte	W30
	.byte		        An0 
	.byte	W03
@ 011   ----------------------------------------
	.byte	W28
	.byte		        Bn0 
	.byte	W30
	.byte		N19   
	.byte	W20
	.byte		        Cs1 
	.byte	W18
@ 012   ----------------------------------------
	.byte	W13
	.byte		N19   
	.byte	W20
	.byte		N19   
	.byte	W20
	.byte		N19   
	.byte	W42
	.byte	W01
@ 013   ----------------------------------------
	.byte	W28
	.byte		N19   
	.byte	W20
	.byte		        Dn1 
	.byte	W30
	.byte	W01
	.byte		N19   
	.byte	W17
@ 014   ----------------------------------------
	.byte	W03
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W30
	.byte	W01
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W02
@ 015   ----------------------------------------
	.byte	W19
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W20
	.byte		N19   
	.byte	W24
	.byte	W03
@ 016   ----------------------------------------
	.byte	W04
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W48
	.byte	W03
	.byte		N19   
	.byte	W11
@ 017   ----------------------------------------
	.byte	W19
	.byte		N19   
	.byte	W20
	.byte		N19   
	.byte	W30
	.byte	W01
	.byte		        Cs1 
	.byte	W24
	.byte	W02
@ 018   ----------------------------------------
	.byte	W04
	.byte		N19   
	.byte	W30
	.byte	W01
	.byte		N19   
	.byte	W20
	.byte		        Bn0 
	.byte	W30
	.byte		        En1 
	.byte	W11
@ 019   ----------------------------------------
	.byte	W10
	.byte		N19   
	.byte	W20
	.byte		        An0 
	.byte	W66
@ 020   ----------------------------------------
	.byte	W05
	.byte		N19   
	.byte	W20
	.byte		        Dn1 
	.byte	W30
	.byte		N19   
	.byte	W21
	.byte		N19   
	.byte	W20
@ 021   ----------------------------------------
	.byte	W10
	.byte		N19   
	.byte	W30
	.byte	W01
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W20
	.byte		N19   
	.byte	W05
@ 022   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		N19   
	.byte	W20
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W20
@ 023   ----------------------------------------
	.byte	W11
	.byte		N19   
	.byte	W48
	.byte	W02
	.byte		N19   
	.byte	W30
	.byte	W01
	.byte		N19   
	.byte	W04
@ 024   ----------------------------------------
	.byte	W16
	.byte		N19   
	.byte	W30
	.byte		        Cs1 
	.byte	W30
	.byte	W01
	.byte		N19   
	.byte	W19
@ 025   ----------------------------------------
	.byte	W11
	.byte		N19   
	.byte	W21
	.byte		        Cn1 
	.byte	W30
	.byte		        Bn0 
	.byte	W20
	.byte		N19   
	.byte	W14
@ 026   ----------------------------------------
	.byte	W06
	.byte		        Cs1 
	.byte	W90
@ 027   ----------------------------------------
	.byte	W01
	.byte	GOTO
	 .word	mus_everlasting_wanderers_1_B1
mus_everlasting_wanderers_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_everlasting_wanderers_2:
	.byte	KEYSH , mus_everlasting_wanderers_key+0
mus_everlasting_wanderers_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 48*mus_everlasting_wanderers_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		TIE   , Gn3 , v084
	.byte	W96
@ 001   ----------------------------------------
	.byte	W64
	.byte		EOT   
	.byte	W01
	.byte		TIE   
	.byte	W30
	.byte	W01
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		EOT   
	.byte	W01
	.byte		TIE   
	.byte	W60
	.byte	W01
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W04
	.byte		EOT   
	.byte	W02
	.byte		TIE   
	.byte	W90
@ 006   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		TIE   
	.byte	W24
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		TIE   
	.byte	W54
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W11
	.byte		EOT   
	.byte	W01
	.byte		N80   
	.byte	W80
	.byte	W01
	.byte		        Fs3 
	.byte	W03
@ 011   ----------------------------------------
	.byte	W78
	.byte		TIE   , Fn3 
	.byte	W18
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		EOT   
	.byte	W01
	.byte		N03   , Dn3 
	.byte	W03
	.byte		        En3 
	.byte	W04
	.byte		N02   , Fs3 
	.byte	W03
	.byte		N03   , Gs3 
	.byte	W03
	.byte		N48   , Dn3 , v084, gtp2
	.byte	W48
@ 014   ----------------------------------------
	.byte	W03
	.byte		N09   , Gs3 
	.byte	W10
	.byte		        An3 
	.byte	W10
	.byte		        En3 
	.byte	W10
	.byte		N60   , Dn3 
	.byte	W60
	.byte	W01
	.byte		N14   
	.byte	W02
@ 015   ----------------------------------------
	.byte	W13
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N28   , Dn3 , v084, gtp1
	.byte	W30
	.byte		N19   , Bn3 
	.byte	W20
	.byte		N09   , An3 
	.byte	W10
	.byte		        Gs3 
	.byte	W10
	.byte		N10   , En3 
	.byte	W07
@ 016   ----------------------------------------
	.byte	W04
	.byte		N66   , Dn3 , v084, gtp1
	.byte	W66
	.byte	W01
	.byte		N03   , En3 
	.byte	W04
	.byte		N02   , Fs3 
	.byte	W03
	.byte		N03   , Gs3 
	.byte	W03
	.byte		N02   , An3 
	.byte	W04
	.byte		N30   , Dn3 
	.byte	W11
@ 017   ----------------------------------------
	.byte	W19
	.byte		N19   , Dn4 
	.byte	W20
	.byte		N09   , Cs4 
	.byte	W11
	.byte		        Bn3 
	.byte	W10
	.byte		        An3 
	.byte	W10
	.byte		N30   , Cs3 
	.byte	W24
	.byte	W02
@ 018   ----------------------------------------
	.byte	W04
	.byte		N04   , An3 
	.byte	W05
	.byte		        Gs3 
	.byte	W05
	.byte		N40   , En3 
	.byte	W40
	.byte	W01
	.byte		N20   , Bn2 
	.byte	W20
	.byte		N09   , An3 
	.byte	W10
	.byte		N20   , En3 
	.byte	W11
@ 019   ----------------------------------------
	.byte	W10
	.byte		N19   , An3 
	.byte	W20
	.byte		N48   , An2 , v084, gtp2
	.byte	W48
	.byte	W02
	.byte		N14   , Cs4 
	.byte	W16
@ 020   ----------------------------------------
	.byte		        Dn4 
	.byte	W15
	.byte		N09   , En4 
	.byte	W10
	.byte		N19   , Dn3 
	.byte	W20
	.byte		N48   , An3 , v084, gtp2
	.byte	W48
	.byte	W03
@ 021   ----------------------------------------
	.byte		N09   , En4 
	.byte	W10
	.byte		N14   , Dn3 
	.byte	W15
	.byte		        Cs4 
	.byte	W16
	.byte		N28   , Bn3 , v084, gtp1
	.byte	W30
	.byte		N09   , Cs4 
	.byte	W10
	.byte		        Dn4 
	.byte	W10
	.byte		        Dn3 
	.byte	W05
@ 022   ----------------------------------------
	.byte	W05
	.byte		        Dn4 
	.byte	W10
	.byte		        En4 
	.byte	W11
	.byte		        Fs4 
	.byte	W10
	.byte		N19   , An3 
	.byte	W20
	.byte		N09   , Gs3 
	.byte	W10
	.byte		        Fs4 
	.byte	W10
	.byte		N60   , Dn3 , v084, gtp1
	.byte	W20
@ 023   ----------------------------------------
	.byte	W42
	.byte		N08   , Dn4 
	.byte	W09
	.byte		N04   , Cs4 
	.byte	W05
	.byte		        Bn3 
	.byte	W05
	.byte		N60   , Dn3 
	.byte	W32
	.byte	W03
@ 024   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		N09   , An3 
	.byte	W10
	.byte		N04   , Gs3 
	.byte	W05
	.byte		        Fs3 
	.byte	W05
	.byte		N80   , Cs3 
	.byte	W48
	.byte	W02
@ 025   ----------------------------------------
	.byte	W32
	.byte		N19   , Cn3 
	.byte	W20
	.byte		N09   , En4 
	.byte	W10
	.byte		N20   , Bn2 
	.byte	W20
	.byte		N19   , Bn3 
	.byte	W14
@ 026   ----------------------------------------
	.byte	W06
	.byte		N90   , Cs3 , v084, gtp1
	.byte	W90
@ 027   ----------------------------------------
	.byte	W01
	.byte	GOTO
	 .word	mus_everlasting_wanderers_2_B1
mus_everlasting_wanderers_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_everlasting_wanderers_3:
	.byte	KEYSH , mus_everlasting_wanderers_key+0
mus_everlasting_wanderers_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_everlasting_wanderers_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N02   , En5 , v127
	.byte	W02
	.byte		N09   
	.byte	W17
	.byte		N03   , Dn5 
	.byte	W04
	.byte		N09   
	.byte	W17
	.byte		N02   , An4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Dn5 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , En5 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N02   , Dn5 
	.byte	W03
	.byte		N09   
	.byte	W17
	.byte		N03   , An4 
	.byte	W04
	.byte		N06   
	.byte	W02
@ 001   ----------------------------------------
	.byte	W04
	.byte		N03   , Dn5 
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N02   , Gn4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , En5 
	.byte	W04
	.byte		N05   
	.byte	W06
	.byte		N03   , Dn5 
	.byte	W03
	.byte		N09   
	.byte	W24
	.byte	W03
	.byte		N03   , En5 
	.byte	W04
	.byte		N09   
	.byte	W17
	.byte		N02   , Dn5 
	.byte	W03
	.byte		N09   
	.byte	W07
@ 002   ----------------------------------------
	.byte	W10
	.byte		N03   , An4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Dn5 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N02   , En5 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Dn5 
	.byte	W04
	.byte		N09   
	.byte	W16
	.byte		N03   , An4 
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N02   , Dn5 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Gn4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , En5 
	.byte	W03
	.byte		N06   
	.byte	W02
@ 003   ----------------------------------------
	.byte	W05
	.byte		N03   , Dn5 
	.byte	W03
	.byte		N09   
	.byte	W24
	.byte	W03
	.byte		N03   
	.byte	W04
	.byte		N09   
	.byte	W17
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N09   
	.byte	W17
	.byte		N03   , Gn4 
	.byte	W03
	.byte		N07   
	.byte	W08
	.byte		N02   , Cn5 
	.byte	W02
	.byte		N06   
	.byte	W07
@ 004   ----------------------------------------
	.byte		N03   , Dn5 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn5 
	.byte	W04
	.byte		N09   
	.byte	W17
	.byte		N02   , Gn4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Ds5 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N02   , Dn5 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Cn5 
	.byte	W04
	.byte		N09   
	.byte	W21
@ 005   ----------------------------------------
	.byte	W06
	.byte		N02   , Dn5 
	.byte	W03
	.byte		N09   
	.byte	W17
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N09   
	.byte	W17
	.byte		N02   , Gn4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Cn5 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N03   , Dn5 
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N02   , Cn5 
	.byte	W03
	.byte		N09   
	.byte	W16
@ 006   ----------------------------------------
	.byte	W01
	.byte		N03   , Gn4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N02   , En5 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Dn5 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn5 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N09   , Bn3 
	.byte	W11
	.byte		        An3 
	.byte	W10
	.byte		N03   , En5 
	.byte	W03
	.byte		N09   
	.byte	W17
	.byte		N03   , Dn5 
	.byte	W03
	.byte		N06   
	.byte	W01
@ 007   ----------------------------------------
	.byte	W06
	.byte		N09   , Gn3 
	.byte	W10
	.byte		N03   , An4 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N03   , Dn5 
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N02   , En5 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Dn5 
	.byte	W03
	.byte		N09   
	.byte	W17
	.byte		N03   , An4 
	.byte	W03
	.byte		N07   
	.byte	W08
	.byte		N02   , Dn5 
	.byte	W02
	.byte		N06   
	.byte	W07
	.byte		N03   , Gn4 
	.byte	W04
	.byte		N06   
	.byte	W05
@ 008   ----------------------------------------
	.byte	W01
	.byte		N03   , En5 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N03   , Dn5 
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N04   , Bn3 
	.byte	W10
	.byte		N09   , An3 
	.byte	W10
	.byte		N03   , En5 
	.byte	W03
	.byte		N09   
	.byte	W17
	.byte		N03   , Dn5 
	.byte	W04
	.byte		N09   
	.byte	W16
	.byte		N03   , An4 
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N02   , Dn5 
	.byte	W03
@ 009   ----------------------------------------
	.byte		N06   
	.byte	W07
	.byte		N03   , En5 
	.byte	W04
	.byte		N05   
	.byte	W06
	.byte		N03   , Dn5 
	.byte	W03
	.byte		N09   
	.byte	W17
	.byte		N02   , An4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Dn5 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N02   , En5 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Dn5 
	.byte	W03
	.byte		N09   
	.byte	W15
@ 010   ----------------------------------------
	.byte	W12
	.byte		N02   , En5 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , An4 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N03   , Cs5 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N03   , Dn5 
	.byte	W04
	.byte		N09   
	.byte	W17
	.byte		N03   , En5 
	.byte	W03
	.byte		N09   
	.byte	W24
	.byte	W03
	.byte		N03   , Ds5 
	.byte	W03
@ 011   ----------------------------------------
	.byte	W01
	.byte		N09   
	.byte	W16
	.byte		N03   , Bn4 
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N02   , Fs4 
	.byte	W03
	.byte		N09   
	.byte	W17
	.byte		N03   , Bn4 
	.byte	W03
	.byte		N09   
	.byte	W18
	.byte		N02   , Cs5 
	.byte	W02
	.byte		N09   
	.byte	W24
	.byte	W01
@ 012   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		N03   , Gs4 
	.byte	W04
	.byte		N09   
	.byte	W16
	.byte		N03   , Cs5 
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N02   
	.byte	W03
	.byte		N09   
	.byte	W09
@ 013   ----------------------------------------
	.byte	W48
	.byte		N28   , Fs3 , v127, gtp1
	.byte	W30
	.byte	W01
	.byte		N19   , Gs3 
	.byte	W17
@ 014   ----------------------------------------
	.byte	W03
	.byte		N28   , An3 , v127, gtp1
	.byte	W30
	.byte		N40   , Gs3 
	.byte	W40
	.byte	W01
	.byte		N09   , Dn4 
	.byte	W10
	.byte		N28   , Gs3 , v127, gtp1
	.byte	W12
@ 015   ----------------------------------------
	.byte	W19
	.byte		        Fs3 , v127, gtp1
	.byte	W30
	.byte		N19   , Gs3 
	.byte	W20
	.byte		        An3 
	.byte	W20
	.byte		N40   , Gs3 
	.byte	W07
@ 016   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N09   , En4 
	.byte	W10
	.byte		N36   , Bn3 , v127, gtp3
	.byte	W40
	.byte	W01
	.byte		N28   , Fs3 , v127, gtp1
	.byte	W11
@ 017   ----------------------------------------
	.byte	W19
	.byte		N19   , Gs3 
	.byte	W20
	.byte		N28   , An3 , v127, gtp1
	.byte	W30
	.byte	W01
	.byte		        An3 , v127, gtp1
	.byte	W24
	.byte	W02
@ 018   ----------------------------------------
	.byte	W04
	.byte		N19   , Gs3 
	.byte	W20
	.byte		N30   , An3 
	.byte	W30
	.byte	W01
	.byte		N28   , An3 , v127, gtp1
	.byte	W30
	.byte		N19   
	.byte	W11
@ 019   ----------------------------------------
	.byte	W10
	.byte		N19   
	.byte	W20
	.byte		N20   , Gs3 
	.byte	W21
	.byte		N02   , Cs5 
	.byte	W02
	.byte		N06   
	.byte	W07
	.byte		N03   , Dn5 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N03   , En5 
	.byte	W04
	.byte		N04   
	.byte	W17
	.byte		N02   , Fs4 
	.byte	W03
	.byte		N06   
	.byte	W02
@ 020   ----------------------------------------
	.byte	W05
	.byte		N03   , Cs5 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , An4 
	.byte	W03
	.byte		N04   
	.byte	W07
	.byte		N28   , Fs3 , v127, gtp1
	.byte	W30
	.byte		N19   , Gs3 
	.byte	W21
	.byte		N28   , An3 , v127, gtp1
	.byte	W20
@ 021   ----------------------------------------
	.byte	W10
	.byte		N36   , Gs3 , v127, gtp3
	.byte	W40
	.byte	W01
	.byte		N09   , Dn4 
	.byte	W10
	.byte		N28   , Gs3 , v127, gtp1
	.byte	W30
	.byte		        Fs3 , v127, gtp1
	.byte	W05
@ 022   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		N19   , Gs3 
	.byte	W20
	.byte		        An3 
	.byte	W20
	.byte		N40   , Gs3 
	.byte	W30
@ 023   ----------------------------------------
	.byte	W11
	.byte		N09   , Bn4 
	.byte	W10
	.byte		N19   , Cs5 
	.byte	W21
	.byte		N09   , Gs4 
	.byte	W09
	.byte		N04   , Fs4 
	.byte	W05
	.byte		        En4 
	.byte	W05
	.byte		N30   , Fs4 
	.byte	W30
	.byte	W01
	.byte		N19   , Gs3 
	.byte	W04
@ 024   ----------------------------------------
	.byte	W16
	.byte		N28   , An3 , v127, gtp1
	.byte	W30
	.byte		        An3 , v127, gtp1
	.byte	W30
	.byte	W01
	.byte		        An3 , v127, gtp1
	.byte	W19
@ 025   ----------------------------------------
	.byte	W32
	.byte		        Cn4 , v127, gtp1
	.byte	W30
	.byte		N19   , Fs3 
	.byte	W20
	.byte		        Bn3 
	.byte	W14
@ 026   ----------------------------------------
	.byte	W06
	.byte		N20   , Fn3 
	.byte	W21
	.byte		N03   , Cs5 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W04
	.byte		N04   
	.byte	W24
	.byte	W01
@ 027   ----------------------------------------
	.byte	W01
	.byte	GOTO
	 .word	mus_everlasting_wanderers_3_B1
mus_everlasting_wanderers_3_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_everlasting_wanderers:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_everlasting_wanderers_pri	@ Priority
	.byte	mus_everlasting_wanderers_rev	@ Reverb.

	.word	mus_everlasting_wanderers_grp

	.word	mus_everlasting_wanderers_1
	.word	mus_everlasting_wanderers_2
	.word	mus_everlasting_wanderers_3

	.end
