	.include "MPlayDef.s"

	.equ	intro_epica_pokeemerald_gba_grp, voicegroup_fly_me_to_the_moon
	.equ	intro_epica_pokeemerald_gba_pri, 0
	.equ	intro_epica_pokeemerald_gba_rev, reverb_set+50
	.equ	intro_epica_pokeemerald_gba_mvl, 90
	.equ	intro_epica_pokeemerald_gba_key, 0
	.equ	intro_epica_pokeemerald_gba_tbs, 1
	.equ	intro_epica_pokeemerald_gba_exg, 1
	.equ	intro_epica_pokeemerald_gba_cmp, 1

	.section .rodata
	.global	intro_epica_pokeemerald_gba
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

intro_epica_pokeemerald_gba_1:
	.byte	KEYSH , intro_epica_pokeemerald_gba_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 80*intro_epica_pokeemerald_gba_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 100*intro_epica_pokeemerald_gba_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N23   , An1 , v040
	.byte	W23
	.byte		        Cn3 , v044
	.byte	W23
	.byte		N22   , En3 
	.byte	W22
	.byte		N23   , An3 , v048
	.byte	W23
	.byte		        Cn4 
	.byte	W05
@ 002   ----------------------------------------
	.byte	W18
	.byte		        An3 , v052
	.byte	W23
	.byte		        En3 
	.byte	W23
	.byte		N22   , Cn3 , v056
	.byte	W22
	.byte		N12   , Fn1 , v048
	.byte	W10
@ 003   ----------------------------------------
	.byte	W02
	.byte		N11   , An1 , v052
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W11
	.byte		        An2 , v060
	.byte	W11
	.byte		N44   , Cn3 , v060, gtp1
	.byte	W48
	.byte	W03
	.byte		N12   , Cn2 , v048
	.byte	W10
@ 004   ----------------------------------------
	.byte	W02
	.byte		N11   , En2 , v052
	.byte	W11
	.byte		        Gn2 , v056
	.byte	W11
	.byte		        Cn3 , v060
	.byte	W11
	.byte		N44   , En3 , v060, gtp1
	.byte	W60
	.byte	W01
@ 005   ----------------------------------------
	.byte	W10
	.byte		N01   , Dn0 , v120
	.byte		N01   , Dn1 
	.byte		N01   , Dn2 
	.byte		N19   , Fn2 
	.byte	W72
	.byte	W01
	.byte		N23   , An1 , v052
	.byte	W13
@ 006   ----------------------------------------
	.byte	W11
	.byte		        Cn2 , v060
	.byte	W24
	.byte		        An1 , v064
	.byte	W24
	.byte		        Cn2 , v068
	.byte	W24
	.byte		        An1 , v076
	.byte	W13
@ 007   ----------------------------------------
	.byte	W11
	.byte		        Cn2 , v080
	.byte	W24
	.byte		        An1 , v084
	.byte	W36
	.byte	W03
	.byte		N08   , Cn2 , v076
	.byte	W08
	.byte		        En2 , v080
	.byte	W08
	.byte		        Gn2 , v084
	.byte	W06
@ 008   ----------------------------------------
	.byte	W02
	.byte		        Cn3 , v092
	.byte	W08
	.byte		        En3 , v096
	.byte	W08
	.byte		        Gn3 , v100
	.byte	W08
	.byte		        Cn4 , v108
	.byte	W08
	.byte		        En4 , v112
	.byte	W08
	.byte		N01   , Dn0 , v120
	.byte		N01   , Dn1 
	.byte		N01   , Dn2 
	.byte		N96   , An2 
	.byte	W54
@ 009   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		N01   , Cn0 
	.byte		N01   , Cn1 
	.byte		N01   , Cn2 
	.byte		N01   , Gn2 
	.byte		N60   , Cn3 , v120, gtp1
	.byte	W48
	.byte	W03
@ 010   ----------------------------------------
	.byte	W10
	.byte		N01   , Cn2 , v096
	.byte	W11
	.byte		N10   , En2 
	.byte	W11
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N10   , Cn3 
	.byte	W11
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W11
	.byte		        Gn2 
	.byte	W11
	.byte		N11   , Bn2 
	.byte	W07
@ 011   ----------------------------------------
	.byte	W05
	.byte		N10   , An1 , v100
	.byte	W11
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W11
	.byte		        Cn3 
	.byte	W11
	.byte		N11   , Fn1 
	.byte	W12
	.byte		N10   , An1 
	.byte	W11
	.byte		        Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W11
@ 012   ----------------------------------------
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Gn3 , v104
	.byte	W07
	.byte		        Gn3 , v108
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W07
	.byte		N05   
	.byte	W06
	.byte		N06   , Gn3 , v116
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W07
	.byte		N06   
	.byte	W06
	.byte		N01   , Gn0 
	.byte		N01   , Gn1 
	.byte		N01   , Dn2 
	.byte		N19   , Gn2 
	.byte	W19
	.byte		N01   , Cn0 
	.byte		N01   , Cn1 
	.byte		N01   , Gn1 
	.byte		N01   , Cn2 
	.byte		N90   , En2 
	.byte	W24
	.byte	W02
@ 013   ----------------------------------------
	.byte	W64
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

intro_epica_pokeemerald_gba_2:
	.byte	KEYSH , intro_epica_pokeemerald_gba_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 104*intro_epica_pokeemerald_gba_mvl/mxv
	.byte		PAN   , c_v-14
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		N48   , An3 , v060, gtp3
	.byte	W48
	.byte	W03
	.byte		N44   , Cn4 , v064, gtp1
	.byte	W44
	.byte	W01
@ 003   ----------------------------------------
	.byte		N48   , En4 , v068, gtp3
	.byte	W48
	.byte	W03
	.byte		        Dn4 , v072, gtp3
	.byte	W44
	.byte	W01
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W42
	.byte		        An4 , v112
	.byte	W48
	.byte	W03
	.byte		N44   , Gn4 , v116, gtp1
	.byte	W03
@ 008   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		N60   , Cn5 , v120, gtp1
	.byte	W48
	.byte	W03
@ 009   ----------------------------------------
	.byte	W10
	.byte		N13   , En4 , v100
	.byte	W15
	.byte		        Gn4 , v104
	.byte	W15
	.byte		N14   , An4 
	.byte	W15
	.byte		        Gn4 , v108
	.byte	W15
	.byte		        En4 , v100
	.byte	W16
	.byte		N13   , Cn4 , v104
	.byte	W10
@ 010   ----------------------------------------
	.byte	W05
	.byte		        Dn4 
	.byte	W15
	.byte		N14   , En4 , v108
	.byte	W15
	.byte		        Gn4 , v100
	.byte	W15
	.byte		        An4 , v104
	.byte	W16
	.byte		N13   , Gn4 
	.byte	W15
	.byte		        En4 , v108
	.byte	W15
@ 011   ----------------------------------------
	.byte		N48   , Cn5 , v104, gtp3
	.byte	W48
	.byte	W03
	.byte		N19   , Dn5 , v120
	.byte	W19
	.byte		N90   , En5 
	.byte	W24
	.byte	W02
@ 012   ----------------------------------------
	.byte	W64
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

intro_epica_pokeemerald_gba_3:
	.byte	KEYSH , intro_epica_pokeemerald_gba_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 96*intro_epica_pokeemerald_gba_mvl/mxv
	.byte		PAN   , c_v+14
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W10
	.byte		N01   , Dn3 , v108
	.byte		N56   , An3 , v104, gtp1
	.byte	W84
	.byte	W02
@ 005   ----------------------------------------
	.byte	W32
	.byte		N07   , An2 , v048
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
@ 006   ----------------------------------------
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N02   
	.byte	W02
	.byte		N01   , Cn3 , v064
	.byte		N06   , En3 
	.byte	W06
	.byte		N01   , Cn3 , v068
	.byte		N01   , En3 
	.byte	W06
	.byte		        Cn3 , v072
	.byte		N01   , En3 
	.byte	W07
	.byte		        Cn3 , v076
	.byte		N01   , En3 
	.byte	W03
@ 007   ----------------------------------------
	.byte	W03
	.byte		        Cn3 , v084
	.byte		N01   , En3 
	.byte	W07
	.byte		        Cn3 , v088
	.byte		N01   , En3 
	.byte	W06
	.byte		        Cn3 , v092
	.byte		N01   , En3 
	.byte	W06
	.byte		        Cn3 , v096
	.byte		N01   , En3 
	.byte	W07
	.byte		        Cn3 , v100
	.byte		N01   , En3 
	.byte	W06
	.byte		        Cn3 , v104
	.byte		N01   , En3 
	.byte	W07
	.byte		        Dn2 , v120
	.byte		N01   , An2 
	.byte		N01   , Cn3 , v108
	.byte		N01   , Dn3 , v120
	.byte		N01   , En3 , v108
	.byte		N96   , An3 , v120
	.byte	W54
@ 008   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		N01   , Gn2 
	.byte		N01   , Cn3 
	.byte		N01   , En3 
	.byte		N60   , Gn3 , v120, gtp1
	.byte	W48
	.byte	W03
@ 009   ----------------------------------------
	.byte	W10
	.byte		N01   , En3 , v092
	.byte	W44
	.byte	W01
	.byte		N42   , Dn3 , v092, gtp1
	.byte	W40
	.byte	W01
@ 010   ----------------------------------------
	.byte	W05
	.byte		        En3 , v092, gtp1
	.byte	W44
	.byte	W01
	.byte		N44   , Cn3 
	.byte	W44
	.byte	W02
@ 011   ----------------------------------------
	.byte		N01   , Gn3 , v084
	.byte		N48   , Cn4 , v080, gtp3
	.byte	W48
	.byte	W03
	.byte		N01   , Gn0 , v120
	.byte		N01   , Gn1 
	.byte		N01   , Dn2 
	.byte		N01   , Gn2 
	.byte		N01   , Bn2 
	.byte		N01   , Dn3 
	.byte		N01   , Gn3 
	.byte	W19
	.byte		        Cn0 
	.byte		N01   , Cn1 
	.byte		N01   , Gn1 
	.byte		N01   , Cn2 
	.byte		N01   , En2 
	.byte		N01   , Gn2 
	.byte		N01   , Cn3 
	.byte		N01   , En3 
	.byte		N01   , Gn3 
	.byte		N90   , Cn4 
	.byte	W24
	.byte	W02
@ 012   ----------------------------------------
	.byte	W64
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

intro_epica_pokeemerald_gba_4:
	.byte	KEYSH , intro_epica_pokeemerald_gba_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 88*intro_epica_pokeemerald_gba_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W42
	.byte		N40   , Dn3 , v052, gtp1
	.byte	W40
	.byte	W01
	.byte		N01   , An2 , v044
	.byte		N90   , En3 
	.byte	W13
@ 005   ----------------------------------------
	.byte	W76
	.byte	W01
	.byte		N01   , Fn2 , v052
	.byte		N48   , Dn3 , v052, gtp3
	.byte	W19
@ 006   ----------------------------------------
	.byte	W32
	.byte		N01   , En2 , v060
	.byte		N42   , Bn2 
	.byte	W64
@ 007   ----------------------------------------
	.byte	W42
	.byte		N01   , Dn3 , v108
	.byte		N96   , An3 
	.byte	W54
@ 008   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		N01   , En3 , v120
	.byte		N60   , Cn4 , v120, gtp1
	.byte	W48
	.byte	W03
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W16
	.byte		N32   , Gn3 , v060, gtp3
	.byte	W32
	.byte	W03
	.byte		N19   , Dn3 , v116
	.byte	W19
	.byte		N01   , Cn3 , v120
	.byte		N01   , Gn3 , v116
	.byte		N90   , Cn4 , v108
	.byte	W24
	.byte	W02
@ 012   ----------------------------------------
	.byte	W64
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

intro_epica_pokeemerald_gba_5:
	.byte	KEYSH , intro_epica_pokeemerald_gba_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 92*intro_epica_pokeemerald_gba_mvl/mxv
	.byte		PAN   , c_v-6
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W10
	.byte		N01   , Dn1 , v088
	.byte		N01   , Dn2 
	.byte		N01   , Fn2 
	.byte		N01   , An2 
	.byte		N16   , Dn3 
	.byte	W84
	.byte	W02
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W42
	.byte		N01   , Dn0 , v092
	.byte		N01   , Dn1 
	.byte		N01   , Dn2 
	.byte		N01   , An2 
	.byte		N01   , Dn3 
	.byte		N01   , An3 
	.byte		N96   , Dn4 
	.byte	W54
@ 008   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		N01   , Cn0 , v100
	.byte		N01   , Cn1 
	.byte		N01   , Cn2 
	.byte		N01   , Gn2 
	.byte		N01   , Cn3 
	.byte		N01   , En3 
	.byte		N01   , Gn3 
	.byte		N60   , Cn4 , v100, gtp1
	.byte	W48
	.byte	W03
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W10
	.byte		N01   , Cn3 , v056
	.byte		N40   , Gn3 , v056, gtp1
	.byte	W40
	.byte	W01
	.byte		N01   , Gn0 , v096
	.byte		N01   , Gn1 
	.byte		N01   , Dn2 
	.byte		N01   , Gn2 
	.byte		N01   , Bn2 
	.byte		N01   , Dn3 
	.byte		N01   , Gn3 
	.byte	W19
	.byte		        Cn0 
	.byte		N01   , Cn1 
	.byte		N01   , Gn1 
	.byte		N01   , Cn2 
	.byte		N01   , En2 
	.byte		N01   , Gn2 
	.byte		N01   , Cn3 
	.byte		N01   , En3 
	.byte		N01   , Gn3 
	.byte		N90   , Cn4 
	.byte	W24
	.byte	W02
@ 012   ----------------------------------------
	.byte	W64
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

intro_epica_pokeemerald_gba_6:
	.byte	KEYSH , intro_epica_pokeemerald_gba_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 104*intro_epica_pokeemerald_gba_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W10
	.byte		N16   , An1 , v120
	.byte	W84
	.byte	W02
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W80
	.byte		N05   , Gn1 , v076
	.byte	W06
	.byte		        Gn1 , v080
	.byte	W06
	.byte		N04   , Gn1 , v084
	.byte	W04
@ 007   ----------------------------------------
	.byte	W01
	.byte		N05   , Gn1 , v088
	.byte	W06
	.byte		        Gn1 , v092
	.byte	W06
	.byte		        Gn1 , v096
	.byte	W06
	.byte		N04   , Gn1 , v100
	.byte	W05
	.byte		N05   , Gn1 , v104
	.byte	W06
	.byte		        Gn1 , v108
	.byte	W06
	.byte		        Gn1 , v112
	.byte	W06
	.byte		N01   , Gn1 , v116
	.byte		N19   , An1 , v120
	.byte	W32
	.byte		        An1 , v108
	.byte	W22
@ 008   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		N13   , Cn2 , v120
	.byte	W16
	.byte		N13   
	.byte	W32
	.byte	W03
@ 009   ----------------------------------------
intro_epica_pokeemerald_gba_6_009:
	.byte	W10
	.byte		N09   , An1 , v084
	.byte	W48
	.byte		N09   
	.byte	W36
	.byte	W02
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	intro_epica_pokeemerald_gba_6_009
@ 011   ----------------------------------------
	.byte	W19
	.byte		N04   , An1 , v084
	.byte	W05
	.byte		N04   
	.byte	W04
	.byte		        An1 , v088
	.byte	W05
	.byte		N03   , An1 , v092
	.byte	W04
	.byte		N04   , An1 , v096
	.byte	W05
	.byte		N03   , An1 , v100
	.byte	W04
	.byte		N04   
	.byte	W05
	.byte		N03   , An1 , v104
	.byte		N03   , An1 , v120
	.byte	W19
	.byte		N24   , Cn1 , v120, gtp2
	.byte	W24
	.byte	W02
@ 012   ----------------------------------------
	.byte	W64
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

intro_epica_pokeemerald_gba_7:
	.byte	KEYSH , intro_epica_pokeemerald_gba_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 92*intro_epica_pokeemerald_gba_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		TIE   , An0 , v036
	.byte	W96
@ 001   ----------------------------------------
	.byte	W84
	.byte	W02
	.byte		EOT   
	.byte		TIE   , Fn1 , v040
	.byte	W10
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W10
	.byte		EOT   
	.byte	W72
	.byte	W01
	.byte		TIE   , An0 , v052
	.byte	W13
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W72
	.byte	W02
	.byte		EOT   
	.byte	W22
@ 007   ----------------------------------------
	.byte	W42
	.byte		TIE   , Fn0 , v104
	.byte	W54
@ 008   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		EOT   
	.byte		N60   , Cn0 , v116, gtp1
	.byte	W48
	.byte	W03
@ 009   ----------------------------------------
	.byte	W10
	.byte		N42   , Cn1 , v096, gtp1
	.byte	W44
	.byte	W01
	.byte		        Gn0 , v096, gtp1
	.byte	W40
	.byte	W01
@ 010   ----------------------------------------
	.byte	W05
	.byte		        An0 , v096, gtp1
	.byte	W44
	.byte	W01
	.byte		N44   , Fn0 
	.byte	W44
	.byte	W02
@ 011   ----------------------------------------
	.byte	W48
	.byte	W03
	.byte		TIE   , Cn0 , v116
	.byte	W44
	.byte	W01
@ 012   ----------------------------------------
	.byte	W64
	.byte		EOT   
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

intro_epica_pokeemerald_gba_8:
	.byte	KEYSH , intro_epica_pokeemerald_gba_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 68*intro_epica_pokeemerald_gba_mvl/mxv
	.byte		PAN   , c_v+12
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
	.byte	W06
	.byte		N06   , An3 , v036
	.byte	W07
	.byte		        Cn4 
	.byte	W07
	.byte		        En4 
	.byte	W08
	.byte		N05   , Cn4 
	.byte	W07
	.byte		        An3 
	.byte	W07
	.byte		        Cn4 
	.byte	W07
	.byte		        En4 
	.byte	W07
	.byte		        Cn4 
	.byte	W07
	.byte		        An3 
	.byte	W07
	.byte		N06   , Cn4 
	.byte	W07
	.byte		        En4 
	.byte	W07
	.byte		        Cn4 
	.byte	W07
	.byte		        An3 
	.byte	W05
@ 006   ----------------------------------------
	.byte	W02
	.byte		        Cn4 
	.byte	W07
	.byte		        En4 
	.byte	W07
	.byte		        Cn4 
	.byte	W07
	.byte		        An3 
	.byte	W07
	.byte		        Cn4 
	.byte	W07
	.byte		        En4 
	.byte	W07
	.byte		        Cn4 
	.byte	W07
	.byte		        An3 
	.byte	W07
	.byte		        Cn4 
	.byte	W36
	.byte	W02
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W14
	.byte		N09   , Cn5 , v064
	.byte	W16
	.byte		N08   , En5 , v068
	.byte	W15
	.byte		        Gn5 , v072
	.byte	W15
	.byte		        En5 , v076
	.byte	W15
	.byte		N09   , Cn5 , v064
	.byte	W15
	.byte		        An4 , v068
	.byte	W06
@ 010   ----------------------------------------
	.byte	W10
	.byte		N08   , Gn4 , v072
	.byte	W15
	.byte		        An4 , v076
	.byte	W15
	.byte		        Cn5 , v064
	.byte	W15
	.byte		N09   , En5 , v068
	.byte	W15
	.byte		        Gn5 , v072
	.byte	W16
	.byte		N08   , En5 , v076
	.byte	W10
@ 011   ----------------------------------------
	.byte	W06
	.byte		        Cn4 , v056
	.byte	W08
	.byte		N07   , En4 , v068
	.byte	W07
	.byte		        Gn4 , v076
	.byte	W08
	.byte		        Cn5 , v084
	.byte	W07
	.byte		        En5 , v092
	.byte	W08
	.byte		        Gn5 , v104
	.byte	W24
	.byte	W02
	.byte		N06   , Gn4 , v080
	.byte	W06
	.byte		N05   , Cn5 , v088
	.byte	W05
	.byte		        En5 , v096
	.byte	W05
	.byte		        Gn5 , v108
	.byte	W05
	.byte		N06   , Cn6 , v116
	.byte	W05
@ 012   ----------------------------------------
	.byte	W03
	.byte		N60   , Cn6 , v096, gtp1
	.byte	W60
	.byte	W01
	.byte	FINE

@**************** Track 9 (Midi-Chn.9) ****************@

intro_epica_pokeemerald_gba_9:
	.byte	KEYSH , intro_epica_pokeemerald_gba_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 76*intro_epica_pokeemerald_gba_mvl/mxv
	.byte		PAN   , c_v-10
	.byte	W05
	.byte		N23   , Cn4 , v036
	.byte	W23
	.byte		N32   , En4 , v032
	.byte	W68
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
	.byte	W44
	.byte	W01
	.byte		N01   , Cn5 , v084
	.byte		N48   , Gn5 , v072
	.byte	W48
	.byte	W03
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W72
	.byte	W02
	.byte		N01   , Cn5 , v080
	.byte		N01   , Gn5 , v068
	.byte		N84   , Cn6 , v060, gtp2
	.byte	W22
@ 012   ----------------------------------------
	.byte	W64
	.byte	FINE

@******************************************************@
	.align	2

intro_epica_pokeemerald_gba:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	intro_epica_pokeemerald_gba_pri	@ Priority
	.byte	intro_epica_pokeemerald_gba_rev	@ Reverb.

	.word	intro_epica_pokeemerald_gba_grp

	.word	intro_epica_pokeemerald_gba_1
	.word	intro_epica_pokeemerald_gba_2
	.word	intro_epica_pokeemerald_gba_3
	.word	intro_epica_pokeemerald_gba_4
	.word	intro_epica_pokeemerald_gba_5
	.word	intro_epica_pokeemerald_gba_6
	.word	intro_epica_pokeemerald_gba_7
	.word	intro_epica_pokeemerald_gba_8
	.word	intro_epica_pokeemerald_gba_9

	.end
