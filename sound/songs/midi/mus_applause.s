	.include "MPlayDef.s"

	.equ	mus_applause_grp, voicegroup_applause
	.equ	mus_applause_pri, 0
	.equ	mus_applause_rev, reverb_set+50
	.equ	mus_applause_mvl, 100
	.equ	mus_applause_key, 0
	.equ	mus_applause_tbs, 1
	.equ	mus_applause_exg, 1
	.equ	mus_applause_cmp, 1

	.section .rodata
	.global	mus_applause
	.align	2

@**************** Track 1 (Midi-Chn.4) ****************@

mus_applause_1:
	.byte	KEYSH , mus_applause_key+0
mus_applause_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 140*mus_applause_tbs/2
	.byte		VOICE , 0
	.byte		MOD   , 0
	.byte		VOL   , 110*mus_applause_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N24   , As2 , v104, gtp2
	.byte	W24
	.byte	W02
	.byte	W10
	.byte		N03   , As2 , v108
	.byte	W03
	.byte	W09
	.byte		N24   , As2 , v092
	.byte	W24
	.byte	W01
	.byte	W11
	.byte		N03   , As2 , v096
	.byte	W03
	.byte	W09
@ 002   ----------------------------------------
	.byte		N24   , As2 , v100, gtp2
	.byte	W24
	.byte	W03
	.byte	W09
	.byte		N05   , Fn2 , v108
	.byte	W05
	.byte	W07
	.byte		        Gn2 , v064
	.byte	W06
	.byte	W06
	.byte		        Fn2 , v084
	.byte	W05
	.byte	W07
	.byte		        Gn2 , v072
	.byte	W06
	.byte	W06
	.byte		N07   , Gn2 , v076
	.byte	W07
	.byte	W05
@ 003   ----------------------------------------
	.byte		N20   , Cn3 , v084
	.byte	W20
	.byte	W04
	.byte		N12   , As2 
	.byte	W12
	.byte	W12
	.byte		N06   , Gn2 , v096
	.byte	W06
	.byte	W06
	.byte		        Fn2 , v104
	.byte	W06
	.byte	W06
	.byte		N05   , Gn2 , v068
	.byte	W05
	.byte	W07
	.byte		N06   , Gn2 , v084
	.byte	W07
	.byte	W05
@ 004   ----------------------------------------
	.byte		N16   , Cn3 , v104
	.byte	W16
	.byte	W08
	.byte		N14   , Cn3 , v060
	.byte	W14
	.byte	W10
	.byte		N05   , Gn2 , v084
	.byte	W05
	.byte	W07
	.byte		        Fn2 , v080
	.byte	W05
	.byte	W07
	.byte		N10   , Gn2 
	.byte	W10
	.byte	W14
@ 005   ----------------------------------------
	.byte		N18   , Gn3 , v096
	.byte	W18
	.byte	W06
	.byte		N03   , Fn3 
	.byte	W04
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte	W08
	.byte		N17   , Dn3 , v108
	.byte	W17
	.byte	W07
	.byte		N10   , Cn3 , v104
	.byte	W10
	.byte	W14
@ 006   ----------------------------------------
	.byte		N13   , As2 , v088
	.byte	W13
	.byte	W11
	.byte		N06   , Cn3 , v072
	.byte	W06
	.byte	W06
	.byte		        Gn2 , v060
	.byte	W06
	.byte	W30
	.byte		N04   , Gn2 , v096
	.byte	W04
	.byte	W08
	.byte		        Gn2 , v092
	.byte	W04
	.byte	W08
@ 007   ----------------------------------------
	.byte		N17   , As2 , v104
	.byte	W17
	.byte	W19
	.byte		N04   , As2 , v088
	.byte	W04
	.byte	W08
	.byte		N17   , As2 , v108
	.byte	W17
	.byte	W19
	.byte		N03   , As2 , v100
	.byte	W03
	.byte	W09
@ 008   ----------------------------------------
	.byte		N23   , As2 , v116
	.byte	W23
	.byte	W72
	.byte	W01
@ 009   ----------------------------------------
	.byte	W12
	.byte		N03   , Cn4 , v104
	.byte	W04
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte	W08
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		        Cn4 , v108
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 , v096
	.byte	W04
	.byte	W08
	.byte		        Gn3 , v084
	.byte	W04
	.byte	W08
	.byte		N05   , Gn3 , v096
	.byte	W05
	.byte	W07
@ 010   ----------------------------------------
	.byte	W12
	.byte		        As3 , v112
	.byte	W05
	.byte	W07
	.byte		N06   , Cn4 , v108
	.byte	W06
	.byte	W06
	.byte		N05   , As3 
	.byte	W05
	.byte	W07
	.byte		N18   , Dn4 
	.byte	W19
	.byte	W05
	.byte		N17   , Gn3 , v104
	.byte	W17
	.byte	W07
@ 011   ----------------------------------------
	.byte	W12
	.byte		N04   , Cn4 , v108
	.byte	W04
	.byte	W08
	.byte		        Cn4 , v104
	.byte	W04
	.byte	W08
	.byte		        Cn4 , v108
	.byte	W04
	.byte	W08
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N02   , Gn3 , v088
	.byte	W03
	.byte	W09
	.byte		N04   , Gn3 , v084
	.byte	W04
	.byte	W08
	.byte		N20   , Gn3 , v104
	.byte	W12
@ 012   ----------------------------------------
	.byte	W08
	.byte	W16
	.byte		N04   , Cn4 , v112
	.byte	W04
	.byte	W08
	.byte		        As3 , v116
	.byte	W04
	.byte	W08
	.byte		N17   , Dn4 , v104
	.byte	W18
	.byte	W06
	.byte		N13   , Gn3 , v120
	.byte	W13
	.byte	W11
@ 013   ----------------------------------------
	.byte	W12
	.byte		N03   , Cn4 , v108
	.byte	W04
	.byte	W08
	.byte		N05   , Cn4 , v104
	.byte	W05
	.byte	W07
	.byte		N04   , Cn4 , v100
	.byte	W04
	.byte	W08
	.byte		N05   , Cn4 , v108
	.byte	W05
	.byte	W07
	.byte		N03   , Gn3 , v092
	.byte	W03
	.byte	W09
	.byte		N04   
	.byte	W04
	.byte	W08
	.byte		N05   , Gn3 , v096
	.byte	W05
	.byte	W07
@ 014   ----------------------------------------
	.byte	W12
	.byte		N03   , As3 , v112
	.byte	W03
	.byte	W09
	.byte		N04   , Cn4 , v108
	.byte	W04
	.byte	W08
	.byte		        As3 , v112
	.byte	W04
	.byte	W08
	.byte		N17   , Dn4 , v116
	.byte	W17
	.byte	W07
	.byte		N13   , Gn3 , v112
	.byte	W14
	.byte	W10
@ 015   ----------------------------------------
	.byte	W12
	.byte		N03   , Cn4 , v108
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N04   , Cn4 , v112
	.byte	W04
	.byte	W08
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N03   , Gn3 , v096
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N12   , Gn3 , v112
	.byte	W12
@ 016   ----------------------------------------
	.byte	W24
	.byte		N05   , Cn4 , v116
	.byte	W05
	.byte	W07
	.byte		N03   , As3 , v112
	.byte	W04
	.byte	W08
	.byte		N19   , Dn4 
	.byte	W19
	.byte	W05
	.byte		        Gn3 , v104
	.byte	W19
	.byte	W05
@ 017   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		N09   , Gn3 , v088
	.byte	W09
	.byte	W15
	.byte		N05   , Gn3 , v096
	.byte	W05
	.byte	W07
	.byte		N13   , An3 , v108
	.byte	W13
	.byte	W11
	.byte		N06   , An3 , v096
	.byte	W07
	.byte	W05
	.byte		N17   , Gn3 
	.byte	W12
@ 018   ----------------------------------------
	.byte	W05
	.byte	W19
	.byte		N04   , Cn4 , v112
	.byte	W04
	.byte	W08
	.byte		N03   , As3 , v108
	.byte	W03
	.byte	W09
	.byte		N17   , Dn4 , v112
	.byte	W18
	.byte	W06
	.byte		N13   , Gn3 , v108
	.byte	W13
	.byte	W11
@ 019   ----------------------------------------
	.byte	W12
	.byte		N03   , Cn4 , v112
	.byte	W03
	.byte	W09
	.byte		        Cn4 , v104
	.byte	W04
	.byte	W08
	.byte		N04   , Cn4 , v108
	.byte	W05
	.byte	W07
	.byte		N05   , Cn4 , v112
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 , v100
	.byte	W04
	.byte	W08
	.byte		        Gn3 , v096
	.byte	W04
	.byte	W08
	.byte		N17   , Gn3 , v112
	.byte	W12
@ 020   ----------------------------------------
	.byte	W06
	.byte	W90
@ 021   ----------------------------------------
	.byte		N05   , Gn3 , v088
	.byte	W05
	.byte	W07
	.byte		N10   , Gn3 , v092
	.byte	W11
	.byte	W13
	.byte		N05   , Gn3 , v080
	.byte	W05
	.byte	W07
	.byte		N10   , An3 , v092
	.byte	W11
	.byte	W13
	.byte		N04   , An3 , v072
	.byte	W04
	.byte	W08
	.byte		N17   , Gn3 , v108
	.byte	W12
@ 022   ----------------------------------------
	.byte	W05
	.byte	W19
	.byte		N04   , Cn4 
	.byte	W04
	.byte	W08
	.byte		        As3 , v112
	.byte	W04
	.byte	W08
	.byte		N21   , Dn4 
	.byte	W21
	.byte	W03
	.byte		N18   , Gn3 
	.byte	W18
	.byte	W06
@ 023   ----------------------------------------
	.byte	W12
	.byte		N04   , Cn4 , v108
	.byte	W04
	.byte	W08
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte	W07
	.byte		N06   , Cn4 , v116
	.byte	W06
	.byte	W06
	.byte		N03   , Gn3 , v108
	.byte	W03
	.byte	W09
	.byte		N04   , Gn3 , v100
	.byte	W05
	.byte	W07
	.byte		N13   , As3 , v120
	.byte	W12
@ 024   ----------------------------------------
	.byte	W01
	.byte	W92
	.byte	W03
	.byte	GOTO
	 .word	mus_applause_1_B1
mus_applause_1_B2:
@ 025   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.6) ****************@

mus_applause_2:
	.byte	KEYSH , mus_applause_key+0
mus_applause_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 96*mus_applause_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N36   , Gn0 , v088
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte		        Fn0 , v124
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte		TIE   , Ds0 , v076
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
@ 001   ----------------------------------------
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte		EOT   
@ 002   ----------------------------------------
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte		N36   , Fn0 , v100
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
@ 003   ----------------------------------------
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W01
	.byte	W15
@ 004   ----------------------------------------
	.byte		        Gn0 , v088
	.byte	W36
	.byte		        Fn0 , v124
	.byte	W36
	.byte	W24
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte		        Cn0 , v068
	.byte	W36
	.byte		        Fn0 , v100
	.byte	W36
	.byte	W24
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte		N09   , Gn0 , v124
	.byte	W09
	.byte	W03
	.byte		N14   , Gn0 , v112
	.byte	W15
	.byte	W09
	.byte		N09   , Fn0 , v124
	.byte	W10
	.byte	W02
	.byte		N15   , Fn0 , v120
	.byte	W15
	.byte	W09
	.byte		N09   , Ds0 , v124
	.byte	W09
	.byte	W03
	.byte		N13   , Ds0 , v116
	.byte	W12
@ 009   ----------------------------------------
	.byte	W02
	.byte	W10
	.byte		N09   , Ds0 , v124
	.byte	W09
	.byte	W03
	.byte		N08   , Ds0 , v116
	.byte	W08
	.byte	W04
	.byte		N07   , Ds0 , v108
	.byte	W07
	.byte	W05
	.byte		N09   , Ds0 , v116
	.byte	W09
	.byte	W03
	.byte		N08   , Ds0 , v112
	.byte	W08
	.byte	W04
	.byte		N07   , Ds0 , v116
	.byte	W07
	.byte	W05
	.byte		N09   , Ds0 , v112
	.byte	W09
	.byte	W03
@ 010   ----------------------------------------
	.byte		N08   , Cn0 , v124
	.byte	W08
	.byte	W04
	.byte		N14   , Cn0 , v112
	.byte	W14
	.byte	W10
	.byte		N08   , Fn0 , v124
	.byte	W09
	.byte	W03
	.byte		N13   , Fn0 , v116
	.byte	W13
	.byte	W11
	.byte		N07   , Gn0 , v124
	.byte	W08
	.byte	W04
	.byte		N13   , Gn0 , v116
	.byte	W12
@ 011   ----------------------------------------
	.byte	W01
	.byte	W11
	.byte		N08   , Gn0 , v124
	.byte	W08
	.byte	W04
	.byte		        Gn0 , v116
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v108
	.byte	W08
	.byte	W04
	.byte		        Gn0 , v116
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v108
	.byte	W08
	.byte	W04
	.byte		        Gn0 , v112
	.byte	W08
	.byte	W04
	.byte		N10   
	.byte	W10
	.byte	W02
@ 012   ----------------------------------------
	.byte		N09   , Gn0 , v124
	.byte	W09
	.byte	W03
	.byte		N14   , Gn0 , v112
	.byte	W15
	.byte	W09
	.byte		N09   , Fn0 , v124
	.byte	W10
	.byte	W02
	.byte		N15   , Fn0 , v120
	.byte	W15
	.byte	W09
	.byte		N09   , Ds0 , v124
	.byte	W09
	.byte	W03
	.byte		N13   , Ds0 , v116
	.byte	W12
@ 013   ----------------------------------------
	.byte	W02
	.byte	W10
	.byte		N09   , Ds0 , v124
	.byte	W09
	.byte	W03
	.byte		N08   , Ds0 , v116
	.byte	W08
	.byte	W04
	.byte		N07   , Ds0 , v108
	.byte	W07
	.byte	W05
	.byte		N09   , Ds0 , v116
	.byte	W09
	.byte	W03
	.byte		N08   , Ds0 , v112
	.byte	W08
	.byte	W04
	.byte		N07   , Ds0 , v116
	.byte	W07
	.byte	W05
	.byte		N09   , Ds0 , v112
	.byte	W09
	.byte	W03
@ 014   ----------------------------------------
	.byte		N08   , Cn0 , v124
	.byte	W08
	.byte	W04
	.byte		N14   , Cn0 , v112
	.byte	W14
	.byte	W10
	.byte		N08   , Fn0 , v124
	.byte	W09
	.byte	W03
	.byte		N13   , Fn0 , v116
	.byte	W13
	.byte	W11
	.byte		N07   , Gn0 , v124
	.byte	W08
	.byte	W04
	.byte		N13   , Gn0 , v116
	.byte	W12
@ 015   ----------------------------------------
	.byte	W01
	.byte	W11
	.byte		N08   , Gn0 , v124
	.byte	W08
	.byte	W04
	.byte		        Gn0 , v116
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v108
	.byte	W08
	.byte	W04
	.byte		        Gn0 , v116
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v108
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v112
	.byte	W08
	.byte	W04
	.byte		N10   
	.byte	W10
	.byte	W02
@ 016   ----------------------------------------
	.byte		N09   , Gn0 , v124
	.byte	W09
	.byte	W03
	.byte		N14   , Gn0 , v112
	.byte	W15
	.byte	W09
	.byte		N09   , Fn0 , v124
	.byte	W10
	.byte	W02
	.byte		N15   , Fn0 , v120
	.byte	W15
	.byte	W09
	.byte		N09   , Ds0 , v124
	.byte	W09
	.byte	W03
	.byte		N13   , Ds0 , v116
	.byte	W12
@ 017   ----------------------------------------
	.byte	W02
	.byte	W10
	.byte		N09   , Ds0 , v124
	.byte	W09
	.byte	W03
	.byte		N08   , Ds0 , v116
	.byte	W08
	.byte	W04
	.byte		N07   , Ds0 , v108
	.byte	W07
	.byte	W05
	.byte		N09   , Ds0 , v116
	.byte	W09
	.byte	W03
	.byte		N08   , Ds0 , v112
	.byte	W08
	.byte	W04
	.byte		N07   , Ds0 , v116
	.byte	W07
	.byte	W05
	.byte		N09   , Ds0 , v112
	.byte	W09
	.byte	W03
@ 018   ----------------------------------------
	.byte		N08   , Cn0 , v124
	.byte	W08
	.byte	W04
	.byte		N14   , Cn0 , v112
	.byte	W15
	.byte	W09
	.byte		N08   , Fn0 , v124
	.byte	W09
	.byte	W03
	.byte		N13   , Fn0 , v116
	.byte	W13
	.byte	W11
	.byte		N07   , Gn0 , v124
	.byte	W08
	.byte	W04
	.byte		N13   , Gn0 , v116
	.byte	W12
@ 019   ----------------------------------------
	.byte	W01
	.byte	W11
	.byte		N08   , Gn0 , v124
	.byte	W08
	.byte	W04
	.byte		        Gn0 , v116
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v108
	.byte	W08
	.byte	W04
	.byte		        Gn0 , v116
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v108
	.byte	W08
	.byte	W04
	.byte		        Gn0 , v112
	.byte	W08
	.byte	W04
	.byte		N10   
	.byte	W10
	.byte	W02
@ 020   ----------------------------------------
	.byte		N09   , Gn0 , v124
	.byte	W09
	.byte	W03
	.byte		N14   , Gn0 , v112
	.byte	W15
	.byte	W09
	.byte		N09   , Fn0 , v124
	.byte	W10
	.byte	W02
	.byte		N15   , Fn0 , v120
	.byte	W15
	.byte	W09
	.byte		N09   , Ds0 , v124
	.byte	W09
	.byte	W03
	.byte		N13   , Ds0 , v116
	.byte	W12
@ 021   ----------------------------------------
	.byte	W02
	.byte	W10
	.byte		N09   , Ds0 , v124
	.byte	W09
	.byte	W03
	.byte		N08   , Ds0 , v116
	.byte	W08
	.byte	W04
	.byte		N07   , Ds0 , v108
	.byte	W07
	.byte	W05
	.byte		N09   , Ds0 , v116
	.byte	W09
	.byte	W03
	.byte		N08   , Ds0 , v112
	.byte	W08
	.byte	W04
	.byte		N07   , Ds0 , v116
	.byte	W07
	.byte	W05
	.byte		N09   , Ds0 , v112
	.byte	W09
	.byte	W03
@ 022   ----------------------------------------
	.byte		N08   , Cn0 , v124
	.byte	W08
	.byte	W04
	.byte		N14   , Cn0 , v112
	.byte	W14
	.byte	W10
	.byte		N08   , Fn0 , v124
	.byte	W09
	.byte	W03
	.byte		N13   , Fn0 , v116
	.byte	W13
	.byte	W11
	.byte		N07   , Gn0 , v124
	.byte	W08
	.byte	W04
	.byte		N13   , Gn0 , v116
	.byte	W12
@ 023   ----------------------------------------
	.byte	W01
	.byte	W11
	.byte		N08   , Gn0 , v124
	.byte	W08
	.byte	W04
	.byte		        Gn0 , v116
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v108
	.byte	W08
	.byte	W04
	.byte		        Gn0 , v116
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v108
	.byte	W09
	.byte	W03
	.byte		        Gn0 , v112
	.byte	W08
	.byte	W04
	.byte		N10   
	.byte	W10
	.byte	W02
	.byte	GOTO
	 .word	mus_applause_2_B1
mus_applause_2_B2:
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.7) ****************@

mus_applause_3:
	.byte	KEYSH , mus_applause_key+0
mus_applause_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 76*mus_applause_mvl/mxv
	.byte		PAN   , c_v-15
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N36   , Gn3 , v104
	.byte		N36   , As3 , v116
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte		        Fn1 , v124
	.byte		N36   , Fn3 , v096
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte		TIE   , Ds3 , v064
	.byte		TIE   , As3 , v084
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
@ 001   ----------------------------------------
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte		EOT   , Ds3 
	.byte		        As3 
@ 002   ----------------------------------------
	.byte		N36   , Gn2 , v088
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte		        Fn1 , v100
	.byte		N01   , Cn3 , v104
	.byte		N36   , An3 , v112
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte		TIE   , As2 , v092
	.byte		TIE   , As3 , v108
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
@ 003   ----------------------------------------
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W01
	.byte	W15
	.byte		EOT   , As2 
	.byte		        As3 
@ 004   ----------------------------------------
	.byte		N36   , Gn1 , v088
	.byte		N36   , Dn3 , v092
	.byte		N01   , Gn3 , v104
	.byte	W36
	.byte		N36   , Fn1 , v124
	.byte		N36   , Fn3 , v096
	.byte	W36
	.byte		TIE   , Ds1 , v076
	.byte		TIE   , Gn3 , v080
	.byte	W24
@ 005   ----------------------------------------
	.byte	W96
	.byte		EOT   , Ds1 
	.byte		        Gn3 
@ 006   ----------------------------------------
	.byte		N36   , Gn2 , v088
	.byte		N36   , Ds3 , v104
	.byte	W36
	.byte		N01   , Cn3 
	.byte		N36   , Fn3 
	.byte	W36
	.byte		N44   , Gn1 , v076, gtp3
	.byte		N44   , Gn3 , v104, gtp3
	.byte	W24
@ 007   ----------------------------------------
	.byte	W23
	.byte	W01
	.byte		N78   , Gn1 , v064, gtp1
	.byte		N68   , Gn2 , v084, gtp1
	.byte	W68
	.byte	W01
	.byte	W03
@ 008   ----------------------------------------
	.byte		N10   , Gn2 , v116
	.byte	W07
	.byte	W03
	.byte	W02
	.byte		N13   , Gn2 , v112
	.byte		N14   , Dn3 , v104
	.byte	W14
	.byte	W10
	.byte		N09   , Cn3 , v112
	.byte		N07   , An3 , v116
	.byte	W07
	.byte	W02
	.byte	W03
	.byte		N15   , Fn2 , v108
	.byte		N15   , An3 , v116
	.byte	W15
	.byte	W01
	.byte	W08
	.byte		N08   , Ds2 , v112
	.byte		N08   , As2 , v116
	.byte	W09
	.byte	W03
	.byte		N14   , Ds2 , v108
	.byte		N17   , Gn3 , v112
	.byte	W12
@ 009   ----------------------------------------
	.byte	W03
	.byte	W02
	.byte	W07
	.byte		N07   , As2 
	.byte		N06   , Ds3 , v116
	.byte	W06
	.byte	W01
	.byte	W05
	.byte		N07   , Ds2 , v096
	.byte		N09   , Gn3 , v104
	.byte	W07
	.byte	W02
	.byte	W03
	.byte		N08   , Ds3 , v112
	.byte		N10   , Gn3 , v064
	.byte	W08
	.byte	W02
	.byte	W02
	.byte		N19   , As2 , v108
	.byte		N18   , Ds3 , v116
	.byte	W18
	.byte	W01
	.byte	W05
	.byte		        Ds2 
	.byte		N18   , Ds3 
	.byte	W18
	.byte	W06
@ 010   ----------------------------------------
mus_applause_3_010:
	.byte		N07   , Cn3 , v112
	.byte		N07   , Ds3 , v124
	.byte	W07
	.byte	PEND
	.byte	W01
	.byte	W04
	.byte		N15   , Gn2 , v108
	.byte		N16   , Gn3 
	.byte	W15
	.byte	W02
	.byte	W07
	.byte		N08   , Cn3 , v116
	.byte		N07   , An3 
	.byte	W07
	.byte	W01
	.byte	W04
	.byte		N17   , Cn3 , v112
	.byte		N18   , An3 , v116
	.byte	W17
	.byte	W01
	.byte	W06
	.byte		N10   , Dn3 , v108
	.byte		N10   , Gn3 , v124
	.byte	W10
	.byte	W02
	.byte		N15   , Dn3 , v092
	.byte		N16   , Gn3 , v112
	.byte	W12
@ 011   ----------------------------------------
	.byte	W04
	.byte	W08
	.byte		N07   , As2 
	.byte		N07   , Dn3 , v104
	.byte	W07
	.byte	W05
	.byte		N08   , Gn2 
	.byte		N08   , As2 , v112
	.byte	W08
	.byte	W04
	.byte		N07   
	.byte		N09   , Gn3 
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N20   , As2 
	.byte		N21   , Dn3 , v096
	.byte	W20
	.byte	W01
	.byte	W03
	.byte		N20   , Gn2 , v104
	.byte		N20   , Dn3 , v096
	.byte	W20
	.byte	W04
@ 012   ----------------------------------------
mus_applause_3_012:
	.byte		N10   , As2 , v120
	.byte		N10   , Dn3 , v112
	.byte	W10
	.byte	PEND
	.byte	W02
	.byte		N13   , As2 , v116
	.byte		N14   , Gn3 
	.byte	W13
	.byte	W01
	.byte	W10
	.byte		N08   , Fn2 , v112
	.byte		N06   , Fn3 , v088
	.byte	W07
	.byte	W02
	.byte	W03
	.byte		N15   , Fn2 , v108
	.byte		N15   , An3 , v116
	.byte	W15
	.byte	W01
	.byte	W08
	.byte		N08   , As2 
	.byte		N07   , Gn3 , v112
	.byte	W07
	.byte	W02
	.byte	W03
	.byte		N14   , Ds2 , v108
	.byte		N15   , Ds3 , v120
	.byte	W12
@ 013   ----------------------------------------
	.byte	W03
	.byte	W09
	.byte		N07   , As2 , v112
	.byte		N06   , Ds3 , v116
	.byte	W06
	.byte	W01
	.byte	W05
	.byte		N07   , Ds2 , v096
	.byte		N09   , Gn3 , v104
	.byte	W07
	.byte	W02
	.byte	W03
	.byte		        Ds2 , v096
	.byte		N08   , Ds3 , v112
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N19   , As2 , v108
	.byte		N18   , Ds3 , v116
	.byte	W18
	.byte	W01
	.byte	W05
	.byte		        As2 
	.byte		N19   , Gn3 , v108
	.byte	W18
	.byte	W01
	.byte	W05
@ 014   ----------------------------------------
	.byte		N09   , Gn2 , v116
	.byte		N07   , Gn3 , v112
	.byte	W07
	.byte	W02
	.byte	W03
	.byte		N15   , Cn2 , v096
	.byte		N15   , Cn3 , v104
	.byte	W15
	.byte	W01
	.byte	W08
	.byte		N07   , Fn2 , v116
	.byte		N08   , Cn3 
	.byte	W08
	.byte	W04
	.byte		N18   , Fn3 , v112
	.byte		N18   , An3 , v116
	.byte	W18
	.byte	W06
	.byte		N09   , As2 
	.byte		N10   , Dn3 , v108
	.byte	W10
	.byte	W02
	.byte		N15   , Dn3 , v092
	.byte		N16   , Gn3 , v112
	.byte	W12
@ 015   ----------------------------------------
	.byte	W04
	.byte	W08
	.byte		N07   , Gn2 , v100
	.byte		N08   , Gn3 , v116
	.byte	W07
	.byte	W01
	.byte	W04
	.byte		        Gn2 , v104
	.byte		N09   , Dn3 , v100
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N07   , As2 , v112
	.byte		N09   , Gn3 
	.byte	W07
	.byte	W02
	.byte	W03
	.byte		N19   , Gn2 , v104
	.byte		N20   , Gn3 , v112
	.byte	W20
	.byte	W04
	.byte		        Gn2 , v104
	.byte		N20   , Gn3 , v116
	.byte	W20
	.byte	W04
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_applause_3_012
	.byte	W02
	.byte		N13   , Gn2 , v112
	.byte		N14   , Gn3 , v116
	.byte	W14
	.byte	W10
	.byte		N06   , Fn3 , v088
	.byte		N07   , An3 , v116
	.byte	W07
	.byte	W01
	.byte	W04
	.byte		N16   , Fn3 , v092
	.byte		N15   , An3 , v116
	.byte	W16
	.byte	W08
	.byte		N08   , As2 
	.byte		N07   , Gn3 , v112
	.byte	W07
	.byte	W02
	.byte	W03
	.byte		N15   , Ds3 , v120
	.byte		N17   , Gn3 , v112
	.byte	W12
@ 017   ----------------------------------------
	.byte	W03
	.byte	W02
	.byte	W07
	.byte		N08   , Ds2 , v104
	.byte		N07   , As2 , v112
	.byte	W07
	.byte	W01
	.byte	W04
	.byte		        Ds2 , v096
	.byte		N09   , Gn3 , v104
	.byte	W07
	.byte	W02
	.byte	W03
	.byte		N08   , As2 , v108
	.byte		N08   , Ds3 , v112
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N19   , Ds2 , v096
	.byte		N18   , Ds3 , v116
	.byte	W18
	.byte	W01
	.byte	W05
	.byte		N18   
	.byte		N19   , Gn3 , v108
	.byte	W18
	.byte	W01
	.byte	W05
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_applause_3_010
	.byte	W01
	.byte	W04
	.byte		N15   , Cn2 , v096
	.byte		N15   , Gn2 , v108
	.byte	W15
	.byte	W09
	.byte		N07   , Fn2 , v116
	.byte		N08   , Cn3 
	.byte	W08
	.byte	W04
	.byte		N17   , Cn3 , v112
	.byte		N18   , An3 , v116
	.byte	W17
	.byte	W01
	.byte	W06
	.byte		N10   , Dn3 , v108
	.byte		N10   , Gn3 , v124
	.byte	W10
	.byte	W02
	.byte		N15   , As2 , v112
	.byte		N16   , Gn3 
	.byte	W12
@ 019   ----------------------------------------
	.byte	W03
	.byte	W01
	.byte	W08
	.byte		N07   , As2 
	.byte		N08   , Gn3 , v116
	.byte	W07
	.byte	W01
	.byte	W04
	.byte		        As2 , v112
	.byte		N09   , Gn3 , v116
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N08   , Dn3 , v096
	.byte		N09   , Gn3 , v112
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N21   , Dn3 , v096
	.byte		N20   , Gn3 , v112
	.byte	W20
	.byte	W01
	.byte	W03
	.byte		N19   , As2 , v116
	.byte		N20   , Dn3 , v096
	.byte	W19
	.byte	W01
	.byte	W04
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_applause_3_012
	.byte	W02
	.byte		N13   , As2 , v116
	.byte		N14   , Gn3 
	.byte	W13
	.byte	W01
	.byte	W10
	.byte		N08   , Fn2 , v112
	.byte		N09   , Cn3 
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N14   , Cn3 , v108
	.byte		N15   , An3 , v116
	.byte	W15
	.byte	W01
	.byte	W08
	.byte		N08   , As2 
	.byte		N06   , Ds3 , v120
	.byte	W06
	.byte	W03
	.byte	W03
	.byte		N14   , Ds2 , v108
	.byte		N15   , As2 , v112
	.byte	W12
@ 021   ----------------------------------------
	.byte	W03
	.byte	W09
	.byte		N06   , Ds3 , v116
	.byte		N07   , Gn3 , v108
	.byte	W06
	.byte	W01
	.byte	W05
	.byte		        Ds2 , v096
	.byte		N06   , Ds3 , v116
	.byte	W06
	.byte	W01
	.byte	W05
	.byte		N09   , Ds2 , v096
	.byte		N08   , Ds3 , v112
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N18   , Ds3 , v116
	.byte		N16   , Fn3 , v100
	.byte	W16
	.byte	W02
	.byte	W06
	.byte		N18   , Ds2 , v116
	.byte		N18   , Ds3 
	.byte	W18
	.byte	W06
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_applause_3_010
	.byte	W01
	.byte	W04
	.byte		N15   , Gn2 , v108
	.byte		N15   , Cn3 , v104
	.byte	W15
	.byte	W01
	.byte	W08
	.byte		N08   , Cn3 , v116
	.byte		N06   , Fn3 , v112
	.byte	W07
	.byte	W01
	.byte	W04
	.byte		N17   , Cn3 
	.byte		N18   , Fn3 
	.byte	W17
	.byte	W01
	.byte	W06
	.byte		N09   , As2 , v116
	.byte		N10   , Gn3 , v124
	.byte	W10
	.byte	W02
	.byte		N15   , As2 , v112
	.byte		N15   , Dn3 , v092
	.byte	W12
@ 023   ----------------------------------------
	.byte	W03
	.byte	W09
	.byte		N07   , Gn2 , v100
	.byte		N07   , Dn3 , v104
	.byte	W07
	.byte	W05
	.byte		N08   , Gn2 
	.byte		N09   , Dn3 , v100
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N08   , Gn2 , v104
	.byte		N09   , Gn3 , v112
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N21   , Dn3 , v096
	.byte		N20   , Gn3 , v112
	.byte	W20
	.byte	W01
	.byte	W03
	.byte		        Gn2 , v104
	.byte		N20   , Dn3 , v096
	.byte	W20
	.byte	W04
	.byte	GOTO
	 .word	mus_applause_3_B1
mus_applause_3_B2:
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.8) ****************@

mus_applause_4:
	.byte	KEYSH , mus_applause_key+0
mus_applause_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 72*mus_applause_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N36   , As2 , v104
	.byte		N36   , Gn3 
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte		        Fn2 , v124
	.byte		N36   , An3 , v096
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte		TIE   , Ds3 , v064
	.byte		TIE   , As3 , v084
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
@ 001   ----------------------------------------
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte		EOT   , Ds3 
	.byte		        As3 
@ 002   ----------------------------------------
	.byte		N36   , Ds3 , v104
	.byte		N36   , Gn3 , v096
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte		        Cn3 , v104
	.byte		N36   , An3 , v112
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte		TIE   , Gn3 , v104
	.byte		TIE   , As3 , v108
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
@ 003   ----------------------------------------
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W01
	.byte	W15
	.byte		EOT   , Gn3 
	.byte		        As3 
@ 004   ----------------------------------------
	.byte		N36   , Gn3 , v104
	.byte	W36
	.byte		        Fn3 , v096
	.byte	W36
	.byte		TIE   , As2 , v072
	.byte		TIE   , Ds3 , v064
	.byte	W24
@ 005   ----------------------------------------
	.byte	W96
	.byte		EOT   , As2 
	.byte		        Ds3 
@ 006   ----------------------------------------
	.byte		N36   , Cn2 , v068
	.byte		N36   , Ds3 , v104
	.byte		N01   , Gn3 , v096
	.byte	W36
	.byte		N36   , Fn3 , v104
	.byte	W36
	.byte		N48   , Gn3 
	.byte		N48   , As3 , v108
	.byte	W24
@ 007   ----------------------------------------
	.byte	W24
	.byte	W72
@ 008   ----------------------------------------
	.byte		N36   , Gn3 , v104
	.byte		N36   , As3 , v116
	.byte	W36
	.byte		        Fn2 , v124
	.byte		N36   , Fn3 , v096
	.byte	W36
	.byte		TIE   , As3 , v084
	.byte	W24
@ 009   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 010   ----------------------------------------
mus_applause_4_010:
	.byte		N36   , Cn2 , v068
	.byte		N36   , Cn3 , v088
	.byte	W36
	.byte	PEND
	.byte		        Cn3 , v104
	.byte		N36   , An3 , v112
	.byte	W36
	.byte		N48   , Gn3 , v104
	.byte		N48   , As3 , v108
	.byte	W24
@ 011   ----------------------------------------
	.byte	W24
	.byte	W72
@ 012   ----------------------------------------
	.byte		N01   , Gn2 , v088
	.byte		N36   , Dn3 , v092
	.byte	W01
	.byte	W32
	.byte	W03
	.byte		        Fn2 , v124
	.byte		N36   , Cn3 , v096
	.byte	W36
	.byte		TIE   , Gn3 , v080
	.byte		TIE   , As3 , v084
	.byte	W24
@ 013   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn3 
	.byte		        As3 
@ 014   ----------------------------------------
mus_applause_4_014:
	.byte		N36   , Cn2 , v068
	.byte		N36   , Gn2 , v088
	.byte	W36
	.byte	PEND
	.byte		        An3 , v112
	.byte	W36
	.byte		N48   , Dn3 , v084
	.byte		N48   , Gn3 , v104
	.byte	W24
@ 015   ----------------------------------------
	.byte	W24
	.byte	W72
@ 016   ----------------------------------------
	.byte		N36   , As2 
	.byte		N36   , As3 , v116
	.byte	W36
	.byte		        Fn3 , v096
	.byte		N36   , An3 
	.byte	W36
	.byte		TIE   , Gn3 , v080
	.byte		TIE   , As3 , v084
	.byte	W24
@ 017   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn3 
	.byte		        As3 
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_applause_4_010
	.byte		N36   , An3 , v112
	.byte	W36
	.byte		N48   , Gn2 , v076
	.byte		N48   , As3 , v108
	.byte	W24
@ 019   ----------------------------------------
	.byte	W24
	.byte	W72
@ 020   ----------------------------------------
	.byte		N36   , Dn3 , v092
	.byte		N36   , As3 , v116
	.byte	W36
	.byte		        Fn2 , v124
	.byte		N36   , An3 , v096
	.byte	W36
	.byte		TIE   , As2 , v072
	.byte		TIE   , Gn3 , v080
	.byte	W24
@ 021   ----------------------------------------
	.byte	W96
	.byte		EOT   , As2 
	.byte		        Gn3 
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_applause_4_014
	.byte		N36   , An3 , v112
	.byte	W36
	.byte		N48   , Gn3 , v104
	.byte		N48   , As3 , v108
	.byte	W24
@ 023   ----------------------------------------
	.byte	W24
	.byte	W72
	.byte	GOTO
	 .word	mus_applause_4_B1
mus_applause_4_B2:
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_applause_5:
	.byte	KEYSH , mus_applause_key+0
mus_applause_5_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 4
	.byte		VOL   , 100*mus_applause_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N01   , Bn0 , v116
	.byte	W01
	.byte	W23
	.byte		        Bn0 , v112
	.byte	W01
	.byte	W23
	.byte		N01   
	.byte	W01
	.byte	W23
	.byte		N01   
	.byte	W01
	.byte	W23
@ 001   ----------------------------------------
	.byte		N01   
	.byte	W01
	.byte	W23
	.byte		N01   
	.byte	W01
	.byte	W23
	.byte		N01   
	.byte	W01
	.byte	W23
	.byte		N01   
	.byte	W01
	.byte	W23
@ 002   ----------------------------------------
	.byte		N01   
	.byte	W01
	.byte	W23
	.byte		N01   
	.byte	W01
	.byte	W23
	.byte		N01   
	.byte	W01
	.byte	W23
	.byte		N01   
	.byte	W01
	.byte	W23
@ 003   ----------------------------------------
	.byte		N01   
	.byte	W01
	.byte	W23
	.byte		        Bn0 , v116
	.byte	W01
	.byte	W23
	.byte		N01   
	.byte	W01
	.byte	W23
	.byte		        Bn0 , v112
	.byte	W01
	.byte	W23
@ 004   ----------------------------------------
	.byte		        En0 , v092
	.byte		N01   , Bn0 , v112
	.byte		N01   , En1 , v084
	.byte	W01
	.byte	W23
	.byte		        En0 , v100
	.byte		N01   , Bn0 , v112
	.byte		N01   , En1 , v084
	.byte	W01
	.byte	W23
	.byte		        En0 , v096
	.byte		N01   , Bn0 , v108
	.byte		N01   , En1 , v092
	.byte	W01
	.byte	W23
	.byte		        En0 , v096
	.byte		N01   , Bn0 , v112
	.byte		N01   , En1 , v096
	.byte	W01
	.byte	W23
@ 005   ----------------------------------------
	.byte		        En0 , v104
	.byte		N01   , Bn0 , v108
	.byte		N01   , En1 , v096
	.byte	W01
	.byte	W23
	.byte		        En0 
	.byte		N01   , Bn0 , v112
	.byte		N01   , En1 , v096
	.byte	W01
	.byte	W23
	.byte		        En0 , v104
	.byte		N01   , Bn0 , v112
	.byte		N01   , En1 , v096
	.byte	W01
	.byte	W23
	.byte		        En0 , v104
	.byte		N01   , Bn0 , v116
	.byte		N01   , En1 , v096
	.byte	W01
	.byte	W11
	.byte		        En0 , v088
	.byte		N01   , Bn0 , v108
	.byte		N01   , En1 , v088
	.byte	W01
	.byte	W11
@ 006   ----------------------------------------
	.byte		        En0 , v096
	.byte		N01   , Bn0 , v104
	.byte		N01   , En1 , v088
	.byte	W01
	.byte	W11
	.byte		        En0 , v096
	.byte		N01   , Bn0 , v104
	.byte		N01   , En1 , v092
	.byte	W01
	.byte	W11
	.byte		        En0 , v084
	.byte		N01   , Bn0 , v108
	.byte		N01   , En1 , v084
	.byte	W01
	.byte	W11
	.byte		        En0 , v096
	.byte		N01   , Bn0 , v100
	.byte		N01   , En1 , v088
	.byte	W01
	.byte	W11
	.byte		        En0 
	.byte		N01   , Bn0 , v108
	.byte		N01   , En1 , v084
	.byte	W01
	.byte	W11
	.byte		        En0 
	.byte		N01   , Bn0 , v108
	.byte		N01   , En1 , v080
	.byte	W01
	.byte	W11
	.byte		        En0 , v092
	.byte		N01   , Bn0 , v108
	.byte		N01   , En1 , v076
	.byte	W01
	.byte	W11
	.byte		        En0 , v092
	.byte		N01   , Bn0 , v108
	.byte		N01   , En1 , v080
	.byte	W01
	.byte	W11
@ 007   ----------------------------------------
	.byte		        En0 , v100
	.byte		N01   , Bn0 , v124
	.byte		N01   , En1 , v096
	.byte	W01
	.byte	W11
	.byte		        En1 , v116
	.byte	W12
	.byte		N01   
	.byte	W08
	.byte		        En1 , v108
	.byte	W08
	.byte		        En1 , v112
	.byte	W08
	.byte		        En1 , v108
	.byte	W08
	.byte		        En1 , v112
	.byte	W08
	.byte		        En1 , v108
	.byte	W08
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
@ 008   ----------------------------------------
	.byte		        Bn0 , v127
	.byte		N04   , An2 
	.byte		N01   , As3 , v124
	.byte	W02
	.byte	W02
	.byte	W08
	.byte		        Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		N02   , En0 , v127
	.byte		N01   , En1 
	.byte		N03   , As3 , v124
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v088
	.byte	W01
	.byte	W11
	.byte		N03   , As3 , v112
	.byte	W03
	.byte	W09
	.byte		N01   , Bn0 , v124
	.byte		N01   , Gs1 , v088
	.byte	W01
	.byte	W11
	.byte		N03   , En0 , v127
	.byte		N01   , En1 
	.byte		N03   , As3 , v120
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W08
	.byte		N01   , Gs1 , v092
	.byte	W01
	.byte	W11
@ 009   ----------------------------------------
mus_applause_5_009:
	.byte		N01   , Bn0 , v124
	.byte		N03   , As3 , v104
	.byte	W01
	.byte	PEND
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v088
	.byte	W01
	.byte	W11
	.byte		N03   , En0 , v127
	.byte		N01   , En1 , v124
	.byte		N03   , As3 , v116
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v080
	.byte	W01
	.byte	W11
	.byte		N03   , As3 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Bn0 , v127
	.byte		N01   , Gs1 , v080
	.byte	W01
	.byte	W11
	.byte		N04   , En0 , v127
	.byte		N01   , En1 
	.byte		N03   , As3 , v116
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W08
	.byte		N01   , Gs1 , v088
	.byte	W01
	.byte	W11
@ 010   ----------------------------------------
mus_applause_5_010:
	.byte		N01   , Bn0 , v127
	.byte		N03   , As3 , v116
	.byte	W01
	.byte	PEND
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		N03   , En0 , v127
	.byte		N01   , En1 
	.byte		N03   , As3 , v116
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W08
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		N03   , As3 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Bn0 , v124
	.byte		N01   , Gs1 , v080
	.byte	W01
	.byte	W11
	.byte		N03   , En0 , v127
	.byte		N01   , En1 
	.byte		N06   , As3 , v116
	.byte	W01
	.byte	W03
	.byte	W02
	.byte	W06
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W11
@ 011   ----------------------------------------
mus_applause_5_011:
	.byte		N01   , Bn0 , v124
	.byte		N03   , As3 , v116
	.byte	W01
	.byte	PEND
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		N03   , En0 , v127
	.byte		N01   , En1 , v124
	.byte		N03   , As3 , v116
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		N03   , As3 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Bn0 , v124
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		N03   , En0 , v124
	.byte		N01   , En1 , v127
	.byte		N03   , As3 , v124
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v096
	.byte	W01
	.byte	W11
@ 012   ----------------------------------------
	.byte		N02   , Bn0 , v127
	.byte		N01   , As3 , v124
	.byte	W02
	.byte	W10
	.byte		        Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		N03   , En0 , v127
	.byte		N01   , En1 
	.byte		N03   , As3 , v124
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v088
	.byte	W01
	.byte	W11
	.byte		N03   , As3 , v112
	.byte	W03
	.byte	W09
	.byte		N01   , Bn0 , v124
	.byte		N01   , Gs1 , v088
	.byte	W01
	.byte	W11
	.byte		N03   , En0 , v127
	.byte		N01   , En1 
	.byte		N03   , As3 , v120
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W08
	.byte		N01   , Gs1 , v092
	.byte	W01
	.byte	W11
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_applause_5_009
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v088
	.byte	W01
	.byte	W11
	.byte		N03   , En0 , v127
	.byte		N01   , En1 , v124
	.byte		N03   , As3 , v116
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v080
	.byte	W01
	.byte	W11
	.byte		N03   , As3 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Bn0 , v127
	.byte		N01   , Gs1 , v080
	.byte	W01
	.byte	W11
	.byte		N04   , En0 , v127
	.byte		N01   , En1 
	.byte		N03   , As3 , v116
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W08
	.byte		N01   , Gs1 , v088
	.byte	W01
	.byte	W11
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_applause_5_010
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		N07   , En0 , v127
	.byte		N01   , En1 
	.byte		N03   , As3 , v116
	.byte	W01
	.byte	W02
	.byte	W04
	.byte	W05
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		N03   , As3 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Bn0 , v124
	.byte		N01   , Gs1 , v080
	.byte	W01
	.byte	W11
	.byte		N06   , En0 , v127
	.byte		N01   , En1 
	.byte		N06   , As3 , v116
	.byte	W01
	.byte	W05
	.byte	W06
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W11
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_applause_5_011
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		N03   , En0 , v127
	.byte		N01   , En1 , v124
	.byte		N03   , As3 , v116
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		N03   , As3 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Bn0 , v124
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		N03   , En0 , v124
	.byte		N01   , En1 , v127
	.byte		N03   , As3 , v124
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v096
	.byte	W01
	.byte	W11
@ 016   ----------------------------------------
	.byte		N03   , Bn0 , v127
	.byte		N01   , As3 , v124
	.byte	W03
	.byte	W09
	.byte		        Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		N02   , En0 , v127
	.byte		N01   , En1 
	.byte		N03   , As3 , v124
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W09
	.byte		N01   , En0 , v127
	.byte		N01   , Ds1 , v124
	.byte		N01   , Gs1 , v088
	.byte	W01
	.byte	W11
	.byte		N03   , As3 , v112
	.byte	W03
	.byte	W09
	.byte		N01   , Bn0 , v124
	.byte		N01   , Gs1 , v088
	.byte	W01
	.byte	W11
	.byte		        Ds1 , v124
	.byte		N01   , En1 , v127
	.byte		N03   , As3 , v120
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v092
	.byte	W01
	.byte	W11
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_applause_5_009
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v088
	.byte	W01
	.byte	W11
	.byte		N03   , En0 , v127
	.byte		N01   , En1 , v124
	.byte		N03   , As3 , v116
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N01   , En0 , v124
	.byte		N01   , Ds1 
	.byte		N01   , Gs1 , v080
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N03   , As3 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Bn0 , v127
	.byte		N01   , Gs1 , v080
	.byte	W01
	.byte	W11
	.byte		N03   , En0 , v127
	.byte		N01   , Ds1 , v124
	.byte		N03   , As3 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Gs1 , v088
	.byte	W01
	.byte	W11
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_applause_5_010
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		N03   , En0 , v127
	.byte		N01   , En1 
	.byte		N03   , As3 , v116
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N02   , En0 , v124
	.byte		N02   , Ds1 , v127
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N03   , As3 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Bn0 , v124
	.byte		N01   , Gs1 , v080
	.byte	W01
	.byte	W11
	.byte		N02   , En0 , v127
	.byte		N01   , Ds1 , v124
	.byte		N01   , En1 , v127
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		        Gs1 , v084
	.byte	W01
	.byte	W11
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_applause_5_011
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		N03   , En0 , v127
	.byte		N01   , En1 , v124
	.byte		N03   , As3 , v116
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N02   , En0 , v127
	.byte		N02   , Ds1 , v124
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N03   , As3 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Bn0 , v124
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		N03   , En0 , v124
	.byte		N01   , En1 , v127
	.byte		N03   , As3 , v124
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v096
	.byte	W01
	.byte	W11
@ 020   ----------------------------------------
	.byte		N07   , Bn0 , v127
	.byte		N01   , As3 , v124
	.byte	W07
	.byte	W05
	.byte		        Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		N07   , En0 , v127
	.byte		N01   , En1 
	.byte		N03   , As3 , v124
	.byte	W01
	.byte	W02
	.byte	W04
	.byte	W05
	.byte		N01   , En0 , v127
	.byte		N02   , Ds1 , v124
	.byte		N01   , Gs1 , v088
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N03   , As3 , v112
	.byte	W03
	.byte	W09
	.byte		N01   , Bn0 , v124
	.byte		N01   , Gs1 , v088
	.byte	W01
	.byte	W11
	.byte		N03   , En0 , v127
	.byte		N01   , Ds1 
	.byte		N01   , En1 
	.byte	W01
	.byte	W03
	.byte	W08
	.byte		        Gs1 , v092
	.byte	W01
	.byte	W11
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_applause_5_009
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v088
	.byte	W01
	.byte	W11
	.byte		N03   , En0 , v127
	.byte		N01   , En1 , v124
	.byte		N03   , As3 , v116
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N01   , En0 , v127
	.byte		N01   , Ds1 
	.byte		N01   , Gs1 , v080
	.byte	W01
	.byte	W11
	.byte		N03   , As3 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Bn0 , v127
	.byte		N01   , Gs1 , v080
	.byte	W01
	.byte	W11
	.byte		N04   , En0 , v127
	.byte		N01   , Ds1 
	.byte		N01   , En1 
	.byte		N03   , As3 , v116
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W08
	.byte		N01   , Gs1 , v088
	.byte	W01
	.byte	W11
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_applause_5_010
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		N07   , En0 , v127
	.byte		N01   , En1 
	.byte		N03   , As3 , v116
	.byte	W01
	.byte	W02
	.byte	W04
	.byte	W05
	.byte		N01   , En0 , v127
	.byte		N01   , Ds1 , v124
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		N03   , As3 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Bn0 , v124
	.byte		N01   , Gs1 , v080
	.byte	W01
	.byte	W11
	.byte		N06   , En0 , v127
	.byte		N01   , Ds1 
	.byte		N01   , En1 
	.byte	W01
	.byte	W05
	.byte	W06
	.byte		        Gs1 , v084
	.byte	W01
	.byte	W11
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_applause_5_011
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		N03   , En0 , v127
	.byte		N01   , En1 , v124
	.byte		N03   , As3 , v116
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N01   , En0 , v127
	.byte		N02   , Ds1 , v124
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N03   , As3 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Bn0 , v124
	.byte		N01   , Gs1 , v084
	.byte	W01
	.byte	W11
	.byte		        Ds1 , v127
	.byte		N01   , En1 
	.byte		N03   , As3 , v124
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N01   , Gs1 , v096
	.byte	W01
	.byte	W11
	.byte	GOTO
	 .word	mus_applause_5_B1
mus_applause_5_B2:
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.12) ****************@

mus_applause_6:
	.byte	KEYSH , mus_applause_key+0
mus_applause_6_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 70*mus_applause_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
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
	.byte		N09   , Gn1 , v124
	.byte	W09
	.byte	W03
	.byte		N15   , Gn1 , v100
	.byte	W15
	.byte	W09
	.byte		N08   , Fn1 , v124
	.byte	W08
	.byte	W04
	.byte		N14   , Fn1 , v116
	.byte	W14
	.byte	W10
	.byte		N09   , Ds1 , v127
	.byte	W09
	.byte	W03
	.byte		N13   , Ds1 , v116
	.byte	W12
@ 009   ----------------------------------------
	.byte	W01
	.byte	W11
	.byte		N07   , Ds1 , v124
	.byte	W08
	.byte	W04
	.byte		N06   , Ds1 , v112
	.byte	W07
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte	W02
	.byte		N18   , Ds1 , v120
	.byte	W18
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte	W06
@ 010   ----------------------------------------
	.byte		N09   , Cn1 , v116
	.byte	W09
	.byte	W03
	.byte		N13   , Cn1 , v104
	.byte	W13
	.byte	W11
	.byte		N08   , Fn1 , v124
	.byte	W08
	.byte	W04
	.byte		N15   , Fn1 , v116
	.byte	W15
	.byte	W09
	.byte		N09   , Gn1 , v120
	.byte	W10
	.byte	W02
	.byte		N14   , Gn1 , v112
	.byte	W12
@ 011   ----------------------------------------
	.byte	W02
	.byte	W10
	.byte		N08   , Gn1 , v116
	.byte	W08
	.byte	W04
	.byte		N07   , Gn1 , v112
	.byte	W07
	.byte	W05
	.byte		N09   , Gn1 , v108
	.byte	W09
	.byte	W03
	.byte		N18   , Gn1 , v112
	.byte	W19
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte	W14
@ 012   ----------------------------------------
	.byte		N09   , Gn1 , v124
	.byte	W09
	.byte	W03
	.byte		N15   , Gn1 , v100
	.byte	W15
	.byte	W09
	.byte		N08   , Fn1 , v124
	.byte	W08
	.byte	W04
	.byte		N14   , Fn1 , v116
	.byte	W14
	.byte	W10
	.byte		N09   , Ds1 , v127
	.byte	W09
	.byte	W03
	.byte		N13   , Ds1 , v116
	.byte	W12
@ 013   ----------------------------------------
	.byte	W01
	.byte	W11
	.byte		N07   , Ds1 , v124
	.byte	W08
	.byte	W04
	.byte		N06   , Ds1 , v112
	.byte	W07
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte	W02
	.byte		N18   , Ds1 , v120
	.byte	W18
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte	W06
@ 014   ----------------------------------------
	.byte		N09   , Cn1 , v116
	.byte	W09
	.byte	W03
	.byte		N13   , Cn1 , v104
	.byte	W13
	.byte	W11
	.byte		N08   , Fn1 , v124
	.byte	W08
	.byte	W04
	.byte		N15   , Fn1 , v116
	.byte	W15
	.byte	W09
	.byte		N09   , Gn1 , v120
	.byte	W10
	.byte	W02
	.byte		N14   , Gn1 , v112
	.byte	W12
@ 015   ----------------------------------------
	.byte	W02
	.byte	W10
	.byte		N08   , Gn1 , v116
	.byte	W08
	.byte	W04
	.byte		N07   , Gn1 , v112
	.byte	W07
	.byte	W05
	.byte		N09   , Gn1 , v108
	.byte	W09
	.byte	W03
	.byte		N18   , Gn1 , v112
	.byte	W18
	.byte	W06
	.byte		N10   
	.byte	W10
	.byte	W14
@ 016   ----------------------------------------
	.byte		N09   , Gn1 , v124
	.byte	W09
	.byte	W03
	.byte		N15   , Gn1 , v100
	.byte	W15
	.byte	W09
	.byte		N08   , Fn1 , v124
	.byte	W08
	.byte	W04
	.byte		N14   , Fn1 , v116
	.byte	W14
	.byte	W10
	.byte		N09   , Ds1 , v127
	.byte	W09
	.byte	W03
	.byte		N13   , Ds1 , v116
	.byte	W12
@ 017   ----------------------------------------
	.byte	W01
	.byte	W11
	.byte		N07   , Ds1 , v124
	.byte	W08
	.byte	W04
	.byte		N06   , Ds1 , v112
	.byte	W06
	.byte	W06
	.byte		N10   
	.byte	W10
	.byte	W02
	.byte		N18   , Ds1 , v120
	.byte	W18
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte	W06
@ 018   ----------------------------------------
	.byte		N09   , Cn1 , v116
	.byte	W09
	.byte	W03
	.byte		N13   , Cn1 , v104
	.byte	W13
	.byte	W11
	.byte		N08   , Fn1 , v124
	.byte	W08
	.byte	W04
	.byte		N15   , Fn1 , v116
	.byte	W15
	.byte	W09
	.byte		N09   , Gn1 , v120
	.byte	W10
	.byte	W02
	.byte		N14   , Gn1 , v112
	.byte	W12
@ 019   ----------------------------------------
	.byte	W02
	.byte	W10
	.byte		N08   , Gn1 , v116
	.byte	W08
	.byte	W04
	.byte		N07   , Gn1 , v112
	.byte	W07
	.byte	W05
	.byte		N09   , Gn1 , v108
	.byte	W09
	.byte	W03
	.byte		N18   , Gn1 , v112
	.byte	W19
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte	W14
@ 020   ----------------------------------------
	.byte		N09   , Gn1 , v124
	.byte	W09
	.byte	W03
	.byte		N15   , Gn1 , v100
	.byte	W15
	.byte	W09
	.byte		N08   , Fn1 , v124
	.byte	W08
	.byte	W04
	.byte		N14   , Fn1 , v116
	.byte	W14
	.byte	W10
	.byte		N09   , Ds1 , v127
	.byte	W09
	.byte	W03
	.byte		N13   , Ds1 , v116
	.byte	W12
@ 021   ----------------------------------------
	.byte	W01
	.byte	W11
	.byte		N07   , Ds1 , v124
	.byte	W08
	.byte	W04
	.byte		N06   , Ds1 , v112
	.byte	W07
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte	W02
	.byte		N18   , Ds1 , v120
	.byte	W18
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte	W06
@ 022   ----------------------------------------
	.byte		N09   , Cn1 , v116
	.byte	W09
	.byte	W03
	.byte		N13   , Cn1 , v104
	.byte	W13
	.byte	W11
	.byte		N08   , Fn1 , v124
	.byte	W08
	.byte	W04
	.byte		N15   , Fn1 , v116
	.byte	W15
	.byte	W09
	.byte		N09   , Gn1 , v120
	.byte	W10
	.byte	W02
	.byte		N14   , Gn1 , v112
	.byte	W12
@ 023   ----------------------------------------
	.byte	W02
	.byte	W10
	.byte		N08   , Gn1 , v116
	.byte	W08
	.byte	W04
	.byte		N07   , Gn1 , v112
	.byte	W07
	.byte	W05
	.byte		N09   , Gn1 , v108
	.byte	W09
	.byte	W03
	.byte		N18   , Gn1 , v112
	.byte	W19
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte	W14
	.byte	GOTO
	 .word	mus_applause_6_B1
mus_applause_6_B2:
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.13) ****************@

mus_applause_7:
	.byte	KEYSH , mus_applause_key+0
mus_applause_7_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 6
	.byte		VOL   , 94*mus_applause_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
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
	.byte		N16   , Cn4 , v116
	.byte	W17
	.byte	W19
	.byte		N12   , An3 , v112
	.byte	W12
	.byte	W12
	.byte		N10   , Fn3 , v116
	.byte	W10
	.byte	W02
	.byte		N14   , Fn3 , v112
	.byte	W14
	.byte	W10
@ 009   ----------------------------------------
	.byte	W12
	.byte		N07   , Gn3 , v116
	.byte	W07
	.byte	W05
	.byte		        Gn3 , v112
	.byte	W07
	.byte	W05
	.byte		N08   , Gn3 , v108
	.byte	W08
	.byte	W04
	.byte		N22   , Fn3 
	.byte	W22
	.byte	W02
	.byte		N18   , Gn3 , v112
	.byte	W18
	.byte	W06
@ 010   ----------------------------------------
	.byte		N13   , Ds3 , v124
	.byte	W13
	.byte	W23
	.byte		        Gn3 , v116
	.byte	W13
	.byte	W23
	.byte		N14   , Cn4 , v124
	.byte	W14
	.byte	W10
@ 011   ----------------------------------------
	.byte	W12
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N09   , As3 , v120
	.byte	W09
	.byte	W03
	.byte		N07   , As3 , v116
	.byte	W03
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N18   , Cn4 , v108
	.byte	W03
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v+0
	.byte	W14
	.byte	W05
	.byte		N19   , As3 , v116
	.byte	W19
	.byte	W05
@ 012   ----------------------------------------
	.byte		N16   , Cn4 
	.byte	W17
	.byte	W19
	.byte		N12   , An3 , v112
	.byte	W12
	.byte	W12
	.byte		N10   , Fn3 , v116
	.byte	W10
	.byte	W02
	.byte		N14   , Fn3 , v112
	.byte	W14
	.byte	W10
@ 013   ----------------------------------------
	.byte	W12
	.byte		N07   , Gn3 , v116
	.byte	W07
	.byte	W05
	.byte		        Gn3 , v112
	.byte	W07
	.byte	W05
	.byte		N08   , Gn3 , v108
	.byte	W08
	.byte	W04
	.byte		N22   , Fn3 
	.byte	W22
	.byte	W02
	.byte		N18   , Gn3 , v112
	.byte	W18
	.byte	W06
@ 014   ----------------------------------------
	.byte		N13   , Ds3 , v124
	.byte	W13
	.byte	W23
	.byte		        Gn3 , v116
	.byte	W13
	.byte	W23
	.byte		N14   , Cn4 , v124
	.byte	W14
	.byte	W10
@ 015   ----------------------------------------
	.byte	W12
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N09   , As3 , v120
	.byte	W09
	.byte	W03
	.byte		N07   , As3 , v116
	.byte	W03
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-57
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N18   , Cn4 , v108
	.byte	W03
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v+0
	.byte	W14
	.byte	W05
	.byte		N19   , As3 , v116
	.byte	W19
	.byte	W05
@ 016   ----------------------------------------
	.byte		N16   , Cn4 
	.byte	W17
	.byte	W19
	.byte		N12   , An3 , v112
	.byte	W12
	.byte	W12
	.byte		N10   , Fn3 , v116
	.byte	W10
	.byte	W02
	.byte		N14   , Fn3 , v112
	.byte	W14
	.byte	W10
@ 017   ----------------------------------------
	.byte	W12
	.byte		N07   , Gn3 , v116
	.byte	W07
	.byte	W05
	.byte		        Gn3 , v112
	.byte	W07
	.byte	W05
	.byte		N08   , Gn3 , v108
	.byte	W08
	.byte	W04
	.byte		N22   , Fn3 
	.byte	W22
	.byte	W02
	.byte		N18   , Gn3 , v112
	.byte	W18
	.byte	W06
@ 018   ----------------------------------------
	.byte		N13   , Ds3 , v124
	.byte	W13
	.byte	W23
	.byte		        Gn3 , v116
	.byte	W13
	.byte	W23
	.byte		N14   , Cn4 , v124
	.byte	W14
	.byte	W10
@ 019   ----------------------------------------
	.byte	W12
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N09   , As3 , v120
	.byte	W09
	.byte	W03
	.byte		N07   , As3 , v116
	.byte	W03
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-57
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N18   , Cn4 , v108
	.byte	W03
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v+0
	.byte	W14
	.byte	W05
	.byte		N19   , As3 , v116
	.byte	W19
	.byte	W05
@ 020   ----------------------------------------
	.byte		N16   , Cn4 
	.byte	W17
	.byte	W19
	.byte		N12   , An3 , v112
	.byte	W12
	.byte	W12
	.byte		N10   , Fn3 , v116
	.byte	W10
	.byte	W02
	.byte		N14   , Fn3 , v112
	.byte	W14
	.byte	W10
@ 021   ----------------------------------------
	.byte	W12
	.byte		N07   , Gn3 , v116
	.byte	W07
	.byte	W05
	.byte		        Gn3 , v112
	.byte	W07
	.byte	W05
	.byte		N08   , Gn3 , v108
	.byte	W08
	.byte	W04
	.byte		N22   , Fn3 
	.byte	W22
	.byte	W02
	.byte		N18   , Gn3 , v112
	.byte	W18
	.byte	W06
@ 022   ----------------------------------------
	.byte		N13   , Ds3 , v124
	.byte	W13
	.byte	W23
	.byte		        Gn3 , v116
	.byte	W13
	.byte	W23
	.byte		N14   , Cn4 , v124
	.byte	W14
	.byte	W10
@ 023   ----------------------------------------
	.byte	W12
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N09   , As3 , v120
	.byte	W09
	.byte	W03
	.byte		N07   , As3 , v116
	.byte	W03
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N18   , Cn4 , v108
	.byte	W03
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v+0
	.byte	W14
	.byte	W05
	.byte		N19   , As3 , v116
	.byte	W19
	.byte	W05
	.byte	GOTO
	 .word	mus_applause_7_B1
mus_applause_7_B2:
@ 024   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_applause:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_applause_pri	@ Priority
	.byte	mus_applause_rev	@ Reverb.

	.word	mus_applause_grp

	.word	mus_applause_1
	.word	mus_applause_2
	.word	mus_applause_3
	.word	mus_applause_4
	.word	mus_applause_5
	.word	mus_applause_6
	.word	mus_applause_7

	.end
