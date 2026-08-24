	.include "MPlayDef.s"

	.equ	mus_hlw_phoenix_town_grp, voicegroup_mus_hlw_phoenix_town
	.equ	mus_hlw_phoenix_town_pri, 0
	.equ	mus_hlw_phoenix_town_rev, reverb_set+50
	.equ	mus_hlw_phoenix_town_mvl, 90
	.equ	mus_hlw_phoenix_town_key, 0
	.equ	mus_hlw_phoenix_town_tbs, 1
	.equ	mus_hlw_phoenix_town_exg, 1
	.equ	mus_hlw_phoenix_town_cmp, 1

	.section .rodata
	.global	mus_hlw_phoenix_town
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_hlw_phoenix_town_1:
	.byte	KEYSH , mus_hlw_phoenix_town_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 126
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		PAN   , c_v-20
	.byte		BEND  , c_v+0
	.byte		N10   , An3 , v016
	.byte	W01
	.byte	TEMPO , 70*mus_hlw_phoenix_town_tbs/2
	.byte	W11
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
@ 001   ----------------------------------------
	.byte		N10   
	.byte	W12
	.byte		        An3 , v020
	.byte	W12
	.byte		        An3 , v024
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v032
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        An3 , v036
	.byte	W12
	.byte		        An3 , v040
	.byte	W12
@ 002   ----------------------------------------
	.byte		        An3 , v044
	.byte	W12
	.byte		        An3 , v048
	.byte	W12
	.byte		        An3 , v052
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        An3 , v044
	.byte	W12
	.byte		        An3 , v036
	.byte	W12
	.byte		        An3 , v032
	.byte	W12
	.byte		        An3 , v024
	.byte	W12
@ 003   ----------------------------------------
	.byte		N22   , An3 , v016
	.byte	W72
mus_hlw_phoenix_town_1_B1:
	.byte		VOICE , 127
	.byte		N09   , Cn4 , v064
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
@ 004   ----------------------------------------
mus_hlw_phoenix_town_1_004:
	.byte		N09   , Cn4 , v064
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_1_004
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_1_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_1_004
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_1_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_1_004
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_1_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_1_004
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_1_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_1_004
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_1_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_1_004
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_1_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_1_004
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_1_004
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_1_004
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_1_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_1_004
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_1_004
@ 023   ----------------------------------------
	.byte		N09   , Cn4 , v064
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W36
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
	.byte	W72
	.byte		N09   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
@ 031   ----------------------------------------
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte	GOTO
	 .word	mus_hlw_phoenix_town_1_B1
mus_hlw_phoenix_town_1_B2:
	.byte		VOICE , 127
	.byte		        127
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_hlw_phoenix_town_2:
	.byte	KEYSH , mus_hlw_phoenix_town_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte		PAN   , c_v+0
	.byte		VOL   , 127*mus_hlw_phoenix_town_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N05   , En4 , v080
	.byte	W06
	.byte		N02   , Fs4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		N44   , En4 , v080, gtp1
	.byte	W48
	.byte		N11   , Fs4 
	.byte	W12
	.byte		N28   , Gn4 
	.byte	W12
@ 001   ----------------------------------------
	.byte	W18
	.byte		TIE   , An4 
	.byte	W78
@ 002   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		EOT   
	.byte	W42
	.byte	W01
@ 003   ----------------------------------------
	.byte	W72
mus_hlw_phoenix_town_2_B1:
	.byte		N32   , An4 , v096, gtp2
	.byte	W24
@ 004   ----------------------------------------
mus_hlw_phoenix_town_2_004:
	.byte	W12
	.byte		N05   , Gn4 , v096
	.byte	W12
	.byte		N44   , Dn4 , v096, gtp1
	.byte	W60
	.byte		N11   , An4 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_hlw_phoenix_town_2_005:
	.byte		N11   , Gn4 , v096
	.byte	W12
	.byte		N05   , Cn5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N22   , Dn4 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte		        An4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		N05   , Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N32   , Fn4 , v096, gtp2
	.byte	W24
@ 007   ----------------------------------------
	.byte	W12
	.byte		N11   , Gn4 
	.byte	W12
	.byte		N32   , En4 , v096, gtp2
	.byte	W48
	.byte		        An4 , v096, gtp2
	.byte	W24
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_2_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_2_005
@ 010   ----------------------------------------
	.byte		N22   , An4 , v096
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        En5 
	.byte	W24
	.byte		N02   , Dn5 
	.byte	W02
	.byte		N20   , En5 
	.byte	W22
@ 011   ----------------------------------------
	.byte		N68   , Dn5 
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W24
	.byte		N05   , Fn4 , v064
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn4 , v072
	.byte	W06
	.byte		        Dn4 , v076
	.byte	W06
	.byte		        Fn4 , v080
	.byte	W06
	.byte		        Dn5 , v088
	.byte	W06
	.byte		        Ds5 , v092
	.byte	W06
	.byte		N32   , Gn4 , v096, gtp2
	.byte	W24
@ 016   ----------------------------------------
	.byte	W12
	.byte		N05   , Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N68   , Cn5 
	.byte	W72
@ 017   ----------------------------------------
	.byte		N22   , Gn4 
	.byte	W24
	.byte		N44   , Fn4 , v096, gtp1
	.byte	W48
	.byte		N32   , Gn4 , v096, gtp2
	.byte	W24
@ 018   ----------------------------------------
	.byte	W12
	.byte		N05   , Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N22   , Cn5 
	.byte	W24
	.byte		        Ds5 
	.byte	W24
	.byte		N32   , Dn5 , v096, gtp2
	.byte	W24
@ 019   ----------------------------------------
	.byte	W12
	.byte		N11   , As4 
	.byte	W12
	.byte		N32   , As4 , v096, gtp2
	.byte	W48
	.byte		        Gn4 , v096, gtp2
	.byte	W24
@ 020   ----------------------------------------
	.byte	W12
	.byte		N05   , Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N44   , Cn5 , v096, gtp1
	.byte	W48
	.byte		N32   , Fn4 , v096, gtp2
	.byte	W24
@ 021   ----------------------------------------
	.byte	W12
	.byte		N05   , Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N22   , As4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N03   
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		N05   , Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 022   ----------------------------------------
	.byte		N68   , Cn4 
	.byte	W96
@ 023   ----------------------------------------
	.byte	W72
	.byte		N32   , Gn4 , v088, gtp3
	.byte	W24
@ 024   ----------------------------------------
	.byte	W12
	.byte		N05   , Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N68   , Cn5 
	.byte	W72
@ 025   ----------------------------------------
	.byte		N22   , Gn4 
	.byte	W24
	.byte		N17   , Fn4 
	.byte	W18
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N22   , As4 
	.byte	W24
	.byte		N32   , Gn4 , v088, gtp2
	.byte	W24
@ 026   ----------------------------------------
	.byte	W12
	.byte		N05   , Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		TIE   , Cn5 
	.byte	W72
@ 027   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		EOT   
	.byte	W54
	.byte	W01
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W72
	.byte		N32   , Cn4 , v064, gtp2
	.byte	W24
@ 031   ----------------------------------------
	.byte	W12
	.byte		N11   , Gn4 
	.byte	W12
	.byte		N05   , Dn4 , v072
	.byte	W06
	.byte		        Fn4 , v076
	.byte	W06
	.byte		        Fn4 , v080
	.byte	W06
	.byte		        Dn4 , v084
	.byte	W06
	.byte		        Dn4 , v088
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 , v092
	.byte	W06
	.byte		        Fn4 , v096
	.byte	W06
	.byte	GOTO
	 .word	mus_hlw_phoenix_town_2_B1
mus_hlw_phoenix_town_2_B2:
	.byte		VOICE , 73
	.byte		        73
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_hlw_phoenix_town_3:
	.byte	KEYSH , mus_hlw_phoenix_town_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 84
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W06
	.byte		PAN   , c_v-14
	.byte	W90
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W72
mus_hlw_phoenix_town_3_B1:
	.byte		N32   , Dn4 , v064, gtp2
	.byte	W24
@ 004   ----------------------------------------
mus_hlw_phoenix_town_3_004:
	.byte	W12
	.byte		N05   , Cn4 , v064
	.byte	W12
	.byte		N44   , An3 , v064, gtp1
	.byte	W60
	.byte		N11   , Dn4 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_hlw_phoenix_town_3_005:
	.byte		N11   , Cn4 , v064
	.byte	W12
	.byte		N05   , As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N22   , An3 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte		        Dn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		N05   , As3 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N44   , As3 , v064, gtp1
	.byte	W24
@ 007   ----------------------------------------
	.byte	W24
	.byte		N32   , Gn3 , v064, gtp2
	.byte	W48
	.byte		        Dn4 , v064, gtp2
	.byte	W24
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_3_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_3_005
@ 010   ----------------------------------------
	.byte		N22   , Dn4 , v064
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		N22   
	.byte	W24
@ 011   ----------------------------------------
	.byte		N68   , An4 
	.byte	W66
	.byte		VOICE , 89
	.byte	W06
	.byte		VOL   , 127*mus_hlw_phoenix_town_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N11   , Dn3 , v080
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 012   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W42
	.byte		        Cs3 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 013   ----------------------------------------
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		        Fn3 
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W24
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 014   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W24
	.byte		N05   , Fn3 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 015   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		VOICE , 84
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		PAN   , c_v-14
	.byte		N32   , Cn4 , v080, gtp2
	.byte	W24
@ 016   ----------------------------------------
	.byte	W12
	.byte		N05   , As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N44   , Ds4 , v080, gtp1
	.byte	W48
	.byte		N22   
	.byte	W24
@ 017   ----------------------------------------
	.byte		        Cn4 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		N56   , Cn4 
	.byte	W48
@ 018   ----------------------------------------
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N22   , Ds4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		N32   , Fn4 , v080, gtp2
	.byte	W24
@ 019   ----------------------------------------
	.byte	W12
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N32   , Dn4 , v080, gtp2
	.byte	W48
	.byte		        Cn4 , v080, gtp2
	.byte	W24
@ 020   ----------------------------------------
	.byte	W12
	.byte		N05   , As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N44   , Ds4 , v080, gtp1
	.byte	W48
	.byte		N32   , As3 , v080, gtp2
	.byte	W24
@ 021   ----------------------------------------
	.byte	W12
	.byte		N05   , Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N22   , Dn4 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N68   , Cn4 
	.byte	W96
@ 023   ----------------------------------------
	.byte	W72
	.byte		N32   , Cn4 , v084, gtp2
	.byte	W24
@ 024   ----------------------------------------
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N68   , Ds4 
	.byte	W72
@ 025   ----------------------------------------
	.byte		N22   , Cn4 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		N56   , Cn4 
	.byte	W48
@ 026   ----------------------------------------
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		TIE   , Ds4 
	.byte	W72
@ 027   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		EOT   
	.byte	W54
	.byte	W01
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W72
	.byte		N44   , Cn4 , v052, gtp1
	.byte	W24
@ 031   ----------------------------------------
	.byte	W24
	.byte		        As3 , v080, gtp1
	.byte	W48
	.byte	GOTO
	 .word	mus_hlw_phoenix_town_3_B1
mus_hlw_phoenix_town_3_B2:
	.byte		VOICE , 84
	.byte		        84
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_hlw_phoenix_town_4:
	.byte	KEYSH , mus_hlw_phoenix_town_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W90
	.byte		PAN   , c_v+32
	.byte		N02   , Dn2 , v080
	.byte	W03
	.byte		        An2 
	.byte	W03
@ 003   ----------------------------------------
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N01   , Bn2 
	.byte	W02
	.byte		        Cn3 
	.byte	W02
	.byte		        Bn2 
	.byte	W02
	.byte		N05   , An2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N01   , Fn2 
	.byte	W02
	.byte		        En2 
	.byte	W02
	.byte		        Dn2 
	.byte	W02
mus_hlw_phoenix_town_4_B1:
	.byte		VOICE , 85
	.byte	W12
	.byte		N05   , An3 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
@ 004   ----------------------------------------
	.byte	W12
	.byte		N11   , Gn3 
	.byte	W24
	.byte		N05   , An3 
	.byte	W06
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 005   ----------------------------------------
mus_hlw_phoenix_town_4_005:
	.byte		N11   , Fn3 , v052
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , An3 
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		        Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
mus_hlw_phoenix_town_4_006:
	.byte	W12
	.byte		N05   , Fn3 , v052
	.byte	W06
	.byte		        En3 
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W18
	.byte		N11   , En3 
	.byte	W24
	.byte		N05   , An3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   , En3 
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W24
	.byte		N05   , An3 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 008   ----------------------------------------
	.byte	W12
	.byte		N11   , Gn3 
	.byte	W24
	.byte		N05   , An3 
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		        Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_4_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_4_006
@ 011   ----------------------------------------
	.byte	W12
	.byte		N11   , An3 , v052
	.byte	W24
	.byte		N05   , En3 
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		N02   , An3 , v096
	.byte	W02
	.byte		N03   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-32
	.byte	W02
	.byte		N03   , An3 
	.byte	W01
	.byte		PAN   , c_v+32
	.byte	W02
	.byte		N03   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-32
	.byte	W02
	.byte		N03   , An3 
	.byte	W01
	.byte		PAN   , c_v+32
	.byte	W02
	.byte		N03   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-32
	.byte	W02
	.byte		N03   , An3 
	.byte	W01
	.byte		PAN   , c_v+32
	.byte	W02
	.byte		N03   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-32
	.byte	W02
	.byte		N03   , An3 
	.byte	W01
@ 012   ----------------------------------------
	.byte		PAN   , c_v+32
	.byte	W02
	.byte		N03   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-32
	.byte	W02
	.byte		N03   , An3 
	.byte	W01
	.byte		PAN   , c_v+32
	.byte	W02
	.byte		N03   , Dn3 
	.byte	W01
	.byte		PAN   , c_v-32
	.byte	W03
	.byte		        c_v+32
	.byte		N02   , Gn3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Dn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Gn3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Dn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Dn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Dn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Dn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Dn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Dn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Dn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Dn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Dn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Gs3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Gs3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Gs3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Gs3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Cs3 
	.byte	W03
@ 013   ----------------------------------------
	.byte		PAN   , c_v+32
	.byte		N02   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Gs3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Gs3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Gs3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Gs3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Bn3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Ds3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Bn3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Ds3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Bn3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Ds3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Bn3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Ds3 
	.byte	W03
@ 014   ----------------------------------------
	.byte		PAN   , c_v+32
	.byte		N02   , Bn3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Ds3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Bn3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Ds3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Bn3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Ds3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Bn3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Ds3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Cs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Cs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Cs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Cs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Ds4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Ds4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Ds4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Ds4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Ds4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Ds4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Ds4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Ds4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fs3 
	.byte	W03
@ 015   ----------------------------------------
	.byte		PAN   , c_v+32
	.byte		N02   , Ds4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Ds4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Ds4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Ds4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Fn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte	W12
	.byte		N05   , Gn3 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
@ 016   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W24
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 017   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W24
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 018   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W24
	.byte		N05   , Dn3 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 019   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   , Fn3 
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W24
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 020   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Gs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W24
	.byte		N05   , Fn3 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 021   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W24
	.byte		N05   , An3 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 022   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W24
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 023   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   , Fn3 
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		N02   , Cn4 , v080
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
@ 024   ----------------------------------------
mus_hlw_phoenix_town_4_024:
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 , v080
	.byte	W03
	.byte	PEND
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , As3 
	.byte	W02
	.byte	W01
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
@ 025   ----------------------------------------
	.byte		PAN   , c_v+32
	.byte		N03   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , As3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte	W03
	.byte		        c_v+32
	.byte		N02   , Cn4 
	.byte	W02
	.byte	W01
	.byte		PAN   , c_v-32
	.byte		N02   , Gs3 
	.byte	W02
	.byte	W01
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gs3 
	.byte	W03
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_4_024
	.byte		PAN   , c_v-32
	.byte		N03   , Gs3 , v080
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn4 
	.byte	W02
	.byte	W01
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W03
@ 027   ----------------------------------------
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Gs4 
	.byte	W02
	.byte	W01
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
@ 028   ----------------------------------------
	.byte		PAN   , c_v+32
	.byte		N03   , Gs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Gn4 
	.byte	W02
	.byte	W01
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
@ 029   ----------------------------------------
	.byte		PAN   , c_v+32
	.byte		N03   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , An4 
	.byte	W02
	.byte	W01
	.byte		PAN   , c_v-32
	.byte		N02   , Fn4 
	.byte	W02
	.byte	W01
	.byte		PAN   , c_v+32
	.byte		N03   , An4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , An4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , An4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Fn4 
	.byte	W03
@ 030   ----------------------------------------
	.byte		PAN   , c_v+32
	.byte		N03   , An4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , An4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , An4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , An4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , An4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , An4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , An4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , An4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , An4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , An4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , An4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , An4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Fn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Ds4 
	.byte	W03
@ 031   ----------------------------------------
	.byte		PAN   , c_v+32
	.byte		N02   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , Ds4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , As3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , As3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , As3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , As3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , As3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , As3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , As3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N02   , Fn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N02   , As3 
	.byte	W03
	.byte	GOTO
	 .word	mus_hlw_phoenix_town_4_B1
mus_hlw_phoenix_town_4_B2:
	.byte		VOICE , 80
	.byte		        80
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W03
	.byte		PAN   , c_v-32
	.byte	W03
	.byte		        c_v+32
	.byte	W03
	.byte		        c_v-32
	.byte	W03
	.byte		        c_v+32
	.byte	W03
	.byte		        c_v-32
	.byte	W03
	.byte		        c_v+32
	.byte	W03
	.byte		        c_v-32
	.byte	W03
@ 032   ----------------------------------------
	.byte		        c_v+32
	.byte	W03
	.byte		        c_v-32
	.byte	W03
	.byte		        c_v+32
	.byte	W03
	.byte		        c_v-32
	.byte	W03
	.byte		        c_v+32
	.byte	W03
	.byte		        c_v-32
	.byte	W03
	.byte		        c_v+32
	.byte	W03
	.byte		        c_v-32
	.byte	W03
	.byte		        c_v+32
	.byte	W03
	.byte		        c_v-32
	.byte	W03
	.byte		        c_v+32
	.byte	W03
	.byte		        c_v-32
	.byte	W03
	.byte		        c_v+32
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_hlw_phoenix_town_5:
	.byte	KEYSH , mus_hlw_phoenix_town_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte		N05   , Gn4 , v064
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W30
@ 002   ----------------------------------------
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte	W06
@ 003   ----------------------------------------
	.byte		VOICE , 82
	.byte		N05   , Dn3 , v080
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N01   , Bn3 
	.byte	W02
	.byte		        Cn4 
	.byte	W02
	.byte		        Bn3 
	.byte	W02
	.byte		N05   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N01   , Fn3 
	.byte	W02
	.byte		        En3 
	.byte	W02
	.byte		        Dn3 
	.byte	W02
mus_hlw_phoenix_town_5_B1:
	.byte		VOL   , 50*mus_hlw_phoenix_town_mvl/mxv
	.byte		N40   , An3 , v080, gtp1
	.byte	W24
@ 004   ----------------------------------------
mus_hlw_phoenix_town_5_004:
	.byte	W18
	.byte		N02   , An3 , v080
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N40   , Dn4 , v080, gtp1
	.byte	W42
	.byte		N01   , Cn4 
	.byte	W02
	.byte		        Dn4 
	.byte	W02
	.byte		        Cn4 
	.byte	W02
	.byte		N23   , An3 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
mus_hlw_phoenix_town_5_005:
	.byte		N23   , Gn3 , v080
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		N17   , Cn3 
	.byte	W18
	.byte		N01   , Dn3 
	.byte	W02
	.byte		        Fn3 
	.byte	W02
	.byte		        Gn3 
	.byte	W02
	.byte		N40   , An3 , v080, gtp1
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte	W18
	.byte		N02   
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W24
	.byte		        Dn3 
	.byte	W12
@ 007   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N40   , An3 , v080, gtp1
	.byte	W24
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_5_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_5_005
@ 010   ----------------------------------------
	.byte	W18
	.byte		N02   , An3 , v080
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		N32   , As3 , v080, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 011   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N03   , Cn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		N11   , An3 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N02   , Fn3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		N11   , Fn3 
	.byte	W12
	.byte		VOL   , 127*mus_hlw_phoenix_town_mvl/mxv
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 012   ----------------------------------------
	.byte	W36
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N11   , Gn3 
	.byte	W24
	.byte		N05   , Fn3 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 013   ----------------------------------------
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		        Gs3 
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W24
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 014   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W24
	.byte		N05   , As3 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 015   ----------------------------------------
	.byte	W12
	.byte		N11   , Fn3 
	.byte	W24
	.byte		N05   , As3 
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W36
@ 016   ----------------------------------------
	.byte	W24
	.byte		VOL   , 50*mus_hlw_phoenix_town_mvl/mxv
	.byte		N32   , Gn4 , v080, gtp3
	.byte	W36
	.byte		N05   , Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N44   , Ds3 , v080, gtp3
	.byte	W24
@ 017   ----------------------------------------
	.byte	W66
	.byte		N02   , Cn4 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		N44   , Gs3 , v080, gtp3
	.byte	W24
@ 018   ----------------------------------------
	.byte	W24
	.byte		N32   , Gn4 , v080, gtp3
	.byte	W36
	.byte		N05   , Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N23   , Bn3 
	.byte	W24
@ 019   ----------------------------------------
	.byte		        Ds4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		N17   , Dn4 
	.byte	W18
	.byte		N02   , Ds4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		N44   , Gs3 , v080, gtp3
	.byte	W24
@ 020   ----------------------------------------
	.byte	W66
	.byte		N02   , Dn3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		N44   , As2 , v080, gtp3
	.byte	W24
@ 021   ----------------------------------------
	.byte	W66
	.byte		N02   , Fn3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		N44   , Cn3 , v080, gtp3
	.byte	W24
@ 022   ----------------------------------------
	.byte	W66
	.byte		N02   
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		N40   , Cn3 , v080, gtp1
	.byte	W24
@ 023   ----------------------------------------
	.byte	W18
	.byte		N02   , Dn3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		N40   , Dn3 , v080, gtp1
	.byte	W42
	.byte		N02   , Gn3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		N44   , Gn3 , v080, gtp3
	.byte	W24
@ 024   ----------------------------------------
	.byte	W66
	.byte		N02   
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		N44   , Gn3 , v080, gtp3
	.byte	W24
@ 025   ----------------------------------------
	.byte	W66
	.byte		N02   
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		N44   , Gs3 , v080, gtp3
	.byte	W24
@ 026   ----------------------------------------
	.byte	W66
	.byte		N02   , Dn3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		N44   , Gn3 , v080, gtp3
	.byte	W24
@ 027   ----------------------------------------
	.byte	W66
	.byte		VOL   , 127*mus_hlw_phoenix_town_mvl/mxv
	.byte	W06
	.byte		N11   , Gs1 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 028   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N23   , Dn3 
	.byte	W24
@ 029   ----------------------------------------
	.byte		        Dn4 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		N03   , Dn3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 030   ----------------------------------------
	.byte		N44   , Cn3 , v080, gtp3
	.byte	W48
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N44   , Gn3 , v080, gtp3
	.byte	W24
@ 031   ----------------------------------------
	.byte	W24
	.byte		        Fn3 , v080, gtp3
	.byte	W48
	.byte	GOTO
	 .word	mus_hlw_phoenix_town_5_B1
mus_hlw_phoenix_town_5_B2:
	.byte		VOICE , 81
	.byte		        81
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_hlw_phoenix_town_6:
	.byte	KEYSH , mus_hlw_phoenix_town_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 59
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , Dn1 , v036
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
mus_hlw_phoenix_town_6_B1:
	.byte		VOICE , 32
	.byte		N32   , Dn1 , v080, gtp3
	.byte	W24
@ 004   ----------------------------------------
mus_hlw_phoenix_town_6_004:
	.byte	W12
	.byte		N11   , An0 , v080
	.byte	W12
	.byte		N32   , Dn1 , v080, gtp3
	.byte	W36
	.byte		N11   , Cn1 
	.byte	W12
	.byte		N32   , As0 , v080, gtp3
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
mus_hlw_phoenix_town_6_005:
	.byte	W12
	.byte		N11   , An0 , v080
	.byte	W12
	.byte		N32   , As0 , v080, gtp3
	.byte	W36
	.byte		N11   , An0 
	.byte	W12
	.byte		N32   , As0 , v080, gtp3
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
mus_hlw_phoenix_town_6_006:
	.byte	W12
	.byte		N11   , As0 , v080
	.byte	W12
	.byte		N32   , Cn1 , v080, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		N32   , Dn1 , v080, gtp3
	.byte	W24
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_6_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_6_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_6_006
@ 011   ----------------------------------------
	.byte		N11   , An1 , v080
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		N32   , As0 , v080, gtp3
	.byte	W24
@ 012   ----------------------------------------
	.byte	W12
	.byte		N11   , Fn1 
	.byte	W12
	.byte		N23   , As0 
	.byte	W24
	.byte		N11   , As1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		N32   , Cs1 , v080, gtp3
	.byte	W24
@ 013   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N23   , Bn0 
	.byte	W24
@ 014   ----------------------------------------
	.byte		N11   , Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N23   , Fs1 
	.byte	W24
	.byte		        Bn0 
	.byte	W24
	.byte		        As0 
	.byte	W24
@ 015   ----------------------------------------
	.byte		        Fn1 
	.byte	W24
	.byte		N11   , As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N32   , Cn1 , v080, gtp3
	.byte	W24
@ 016   ----------------------------------------
	.byte	W12
	.byte		N11   , As0 
	.byte	W12
	.byte		N32   , Cn1 , v080, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N32   , Cn1 , v080, gtp3
	.byte	W24
@ 017   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N32   , As0 , v080, gtp3
	.byte	W36
	.byte		N11   , Gn0 
	.byte	W12
	.byte		N32   , Gs0 , v080, gtp3
	.byte	W24
@ 018   ----------------------------------------
	.byte	W12
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N23   , Gs0 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		N32   , Gn0 , v080, gtp3
	.byte	W24
@ 019   ----------------------------------------
	.byte	W12
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N23   , Gn0 
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		N32   , Gs0 , v080, gtp3
	.byte	W24
@ 020   ----------------------------------------
	.byte	W12
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N32   , Gs1 , v080, gtp3
	.byte	W36
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N32   , Gn0 , v080, gtp3
	.byte	W24
@ 021   ----------------------------------------
	.byte	W12
	.byte		N11   , Fn1 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		        Gn0 
	.byte	W24
	.byte		N32   , Fn0 , v080, gtp3
	.byte	W24
@ 022   ----------------------------------------
	.byte	W12
	.byte		N11   , Fn1 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		        As0 
	.byte	W24
	.byte		N32   , Gs0 , v080, gtp3
	.byte	W24
@ 023   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , As0 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		VOICE , 59
	.byte		N92   , Ds1 , v080, gtp3
	.byte	W24
@ 024   ----------------------------------------
	.byte	W72
	.byte		        Gn0 , v080, gtp3
	.byte	W24
@ 025   ----------------------------------------
	.byte	W72
	.byte		        Gs0 , v080, gtp3
	.byte	W24
@ 026   ----------------------------------------
	.byte	W72
	.byte		N01   , Gn0 
	.byte	W24
@ 027   ----------------------------------------
	.byte	W72
	.byte		VOICE , 32
	.byte		N32   , Gs1 , v080, gtp3
	.byte	W24
@ 028   ----------------------------------------
	.byte	W12
	.byte		N11   , Gn1 
	.byte	W24
	.byte		        Ds1 
	.byte	W12
	.byte		N23   , Gs0 
	.byte	W24
	.byte		N32   , Gn0 , v080, gtp3
	.byte	W24
@ 029   ----------------------------------------
	.byte	W12
	.byte		N11   , Fn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		        Gn0 
	.byte	W12
	.byte		N23   , Fn0 
	.byte	W24
@ 030   ----------------------------------------
	.byte		N23   
	.byte	W72
	.byte		        Gs0 
	.byte	W24
@ 031   ----------------------------------------
	.byte		        Gn0 
	.byte	W24
	.byte		        As0 
	.byte	W24
	.byte		        Fn1 
	.byte	W24
	.byte	GOTO
	 .word	mus_hlw_phoenix_town_6_B1
mus_hlw_phoenix_town_6_B2:
	.byte		VOICE , 59
	.byte		        59
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_hlw_phoenix_town_7:
	.byte	KEYSH , mus_hlw_phoenix_town_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 46
	.byte		PAN   , c_v-11
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N05   , Dn2 , v064
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 001   ----------------------------------------
	.byte		PAN   , c_v+11
	.byte		N44   , An2 , v064, gtp3
	.byte	W48
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 002   ----------------------------------------
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N44   , An2 , v064, gtp3
	.byte	W48
@ 003   ----------------------------------------
	.byte	W72
mus_hlw_phoenix_town_7_B1:
	.byte		VOICE , 24
	.byte	W12
	.byte		N05   , An2 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
@ 004   ----------------------------------------
mus_hlw_phoenix_town_7_004:
	.byte	W12
	.byte		N11   , Gn2 , v064
	.byte	W24
	.byte		N05   , An2 
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N11   , Gn2 
	.byte	W24
	.byte		N05   , An2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_7_004
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_7_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_7_004
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_7_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_7_004
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_7_004
@ 011   ----------------------------------------
	.byte	W12
	.byte		N11   , Gn2 , v064
	.byte	W24
	.byte		N05   , An2 
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N11   , Gn2 
	.byte	W36
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
	.byte	W72
	.byte		N01   , Fn2 
	.byte	W24
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
	.byte	W72
	.byte	GOTO
	 .word	mus_hlw_phoenix_town_7_B1
mus_hlw_phoenix_town_7_B2:
	.byte		VOICE , 46
	.byte		        46
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_hlw_phoenix_town_8:
	.byte	KEYSH , mus_hlw_phoenix_town_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , Dn2 , v036
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W01
mus_hlw_phoenix_town_8_B1:
	.byte	W24
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
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W72
	.byte		N92   , Dn2 , v064, gtp3
	.byte	W24
@ 012   ----------------------------------------
	.byte	W72
	.byte		        Cs2 , v064, gtp3
	.byte	W24
@ 013   ----------------------------------------
	.byte	W72
	.byte		N44   , Bn2 , v064, gtp3
	.byte	W24
@ 014   ----------------------------------------
	.byte	W24
	.byte		N23   , Cs3 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		N11   , As2 
	.byte	W24
@ 015   ----------------------------------------
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W36
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte		N23   , Cn3 , v052
	.byte	W24
	.byte		        Dn3 , v072
	.byte	W24
	.byte		        Ds3 , v092
	.byte	W24
	.byte		N44   , Cn3 , v112, gtp3
	.byte	W24
@ 018   ----------------------------------------
	.byte	W24
	.byte		        Gn3 , v112, gtp3
	.byte	W48
	.byte		N32   , Bn2 , v088, gtp3
	.byte	W24
@ 019   ----------------------------------------
	.byte	W12
	.byte		N11   , Gn2 , v072
	.byte	W12
	.byte		N44   , Gn2 , v064, gtp3
	.byte	W48
	.byte		N32   , Gn2 , v064, gtp3
	.byte	W24
@ 020   ----------------------------------------
	.byte	W12
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N32   , Gn2 , v064, gtp3
	.byte	W36
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N44   , As2 , v064, gtp3
	.byte	W24
@ 021   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn2 , v076
	.byte	W24
	.byte		N11   , Fn2 , v084
	.byte	W12
	.byte		        As2 , v088
	.byte	W12
	.byte		N23   , An2 
	.byte	W24
@ 022   ----------------------------------------
	.byte		        Fn2 , v096
	.byte	W24
	.byte		        Cn2 , v100
	.byte	W24
	.byte		        An2 , v108
	.byte	W24
	.byte		N32   , Gs2 , v127, gtp3
	.byte	W24
@ 023   ----------------------------------------
	.byte	W12
	.byte		N03   , Fn2 , v112
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		N44   , As2 , v127, gtp3
	.byte	W48
	.byte		        Ds3 , v076, gtp3
	.byte	W24
@ 024   ----------------------------------------
	.byte	W24
	.byte		N32   , Gn3 , v076, gtp3
	.byte	W36
	.byte		N05   , Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N17   , Fn3 
	.byte	W18
	.byte		N05   , Gn3 
	.byte	W06
@ 025   ----------------------------------------
	.byte		N23   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		N44   , Fn3 , v076, gtp3
	.byte	W24
@ 026   ----------------------------------------
	.byte	W24
	.byte		        Gn3 , v076, gtp3
	.byte	W48
	.byte		        As3 , v076, gtp3
	.byte	W24
@ 027   ----------------------------------------
	.byte	W24
	.byte		        Dn3 , v076, gtp3
	.byte	W48
	.byte		N92   , Gs2 , v076, gtp3
	.byte	W24
@ 028   ----------------------------------------
	.byte	W72
	.byte		        Gn2 , v076, gtp3
	.byte	W24
@ 029   ----------------------------------------
	.byte	W72
	.byte		        An2 , v076, gtp3
	.byte	W24
@ 030   ----------------------------------------
	.byte	W72
	.byte		N44   , Gs2 , v076, gtp3
	.byte	W24
@ 031   ----------------------------------------
	.byte	W24
	.byte		        As2 , v076, gtp3
	.byte	W48
	.byte	GOTO
	 .word	mus_hlw_phoenix_town_8_B1
mus_hlw_phoenix_town_8_B2:
	.byte		VOICE , 48
	.byte		        48
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 9 (Midi-Chn.10) ****************@

mus_hlw_phoenix_town_9:
	.byte	KEYSH , mus_hlw_phoenix_town_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		PAN   , c_v+20
	.byte		BEND  , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W84
	.byte		VOL   , 20*mus_hlw_phoenix_town_mvl/mxv
	.byte	W12
@ 003   ----------------------------------------
	.byte		        26*mus_hlw_phoenix_town_mvl/mxv
	.byte		N68   , Gn0 , v100, gtp3
	.byte	W06
	.byte		VOL   , 36*mus_hlw_phoenix_town_mvl/mxv
	.byte	W06
	.byte		        40*mus_hlw_phoenix_town_mvl/mxv
	.byte	W06
	.byte		        53*mus_hlw_phoenix_town_mvl/mxv
	.byte	W06
	.byte		        63*mus_hlw_phoenix_town_mvl/mxv
	.byte	W06
	.byte		        73*mus_hlw_phoenix_town_mvl/mxv
	.byte	W06
	.byte		        76*mus_hlw_phoenix_town_mvl/mxv
	.byte	W06
	.byte		        86*mus_hlw_phoenix_town_mvl/mxv
	.byte	W06
	.byte		        93*mus_hlw_phoenix_town_mvl/mxv
	.byte	W06
	.byte		        100*mus_hlw_phoenix_town_mvl/mxv
	.byte	W06
	.byte		        110*mus_hlw_phoenix_town_mvl/mxv
	.byte	W06
	.byte		        123*mus_hlw_phoenix_town_mvl/mxv
	.byte	W06
mus_hlw_phoenix_town_9_B1:
	.byte		VOL   , 127*mus_hlw_phoenix_town_mvl/mxv
	.byte		N23   , An2 , v080
	.byte	W24
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W72
	.byte		        An2 , v120
	.byte	W24
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W72
	.byte		N23   
	.byte	W24
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
mus_hlw_phoenix_town_9_015:
	.byte	W23
	.byte		N48   , Gn0 , v100
	.byte	W48
	.byte	W01
	.byte		N23   , An2 , v080
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W72
	.byte		        An2 , v120
	.byte	W24
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_phoenix_town_9_015
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
	.byte	W24
	.byte		N44   , Gn0 , v100, gtp3
	.byte	W48
	.byte	GOTO
	 .word	mus_hlw_phoenix_town_9_B1
mus_hlw_phoenix_town_9_B2:
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_hlw_phoenix_town_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 10 (Midi-Chn.9) ****************@

mus_hlw_phoenix_town_10:
	.byte		VOL   , 127*mus_hlw_phoenix_town_mvl/mxv
	.byte	KEYSH , mus_hlw_phoenix_town_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W72
mus_hlw_phoenix_town_10_B1:
	.byte	W24
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
	.byte	W72
	.byte		PAN   , c_v-64
	.byte		N23   , Fn1 , v080
	.byte	W23
	.byte	W01
@ 030   ----------------------------------------
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N11   , An1 
	.byte	W11
	.byte	W01
	.byte		PAN   , c_v+63
	.byte		N17   , Cn2 
	.byte	W17
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N11   , An1 
	.byte	W11
	.byte	W01
	.byte		N23   
	.byte	W23
	.byte	W01
@ 031   ----------------------------------------
	.byte		PAN   , c_v-64
	.byte		N23   , Fn1 
	.byte	W23
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		        Fn1 , v092
	.byte	W11
	.byte	W01
	.byte		        Fn1 , v104
	.byte	W11
	.byte	W01
	.byte		        Fn1 , v112
	.byte	W11
	.byte	W01
	.byte	GOTO
	 .word	mus_hlw_phoenix_town_10_B1
mus_hlw_phoenix_town_10_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_hlw_phoenix_town:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_hlw_phoenix_town_pri	@ Priority
	.byte	mus_hlw_phoenix_town_rev	@ Reverb.

	.word	mus_hlw_phoenix_town_grp

	.word	mus_hlw_phoenix_town_1
	.word	mus_hlw_phoenix_town_2
	.word	mus_hlw_phoenix_town_3
	.word	mus_hlw_phoenix_town_4
	.word	mus_hlw_phoenix_town_5
	.word	mus_hlw_phoenix_town_6
	.word	mus_hlw_phoenix_town_7
	.word	mus_hlw_phoenix_town_8
	.word	mus_hlw_phoenix_town_9
	.word	mus_hlw_phoenix_town_10

	.end
