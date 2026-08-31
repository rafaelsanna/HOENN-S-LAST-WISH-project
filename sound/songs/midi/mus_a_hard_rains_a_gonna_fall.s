	.include "MPlayDef.s"

	.equ	mus_a_hard_rains_a_gonna_fall_grp, voicegroup_hlw_classic_rock
	.equ	mus_a_hard_rains_a_gonna_fall_pri, 0
	.equ	mus_a_hard_rains_a_gonna_fall_rev, reverb_set+45
	.equ	mus_a_hard_rains_a_gonna_fall_mvl, 94
	.equ	mus_a_hard_rains_a_gonna_fall_key, 0
	.equ	mus_a_hard_rains_a_gonna_fall_tbs, 1
	.equ	mus_a_hard_rains_a_gonna_fall_exg, 1
	.equ	mus_a_hard_rains_a_gonna_fall_cmp, 1

	.section .rodata
	.global	mus_a_hard_rains_a_gonna_fall
	.align	2

@**************** Track 1 (Midi-Chn.3) ****************@

mus_a_hard_rains_a_gonna_fall_1:
	.byte	KEYSH , mus_a_hard_rains_a_gonna_fall_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 99*mus_a_hard_rains_a_gonna_fall_tbs/2
	.byte		VOICE , 25
	.byte		VOL   , 101*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte		PAN   , c_v+8
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W09
	.byte		TIE   , An2 , v116
	.byte	W08
	.byte		        Dn3 , v092
	.byte	W78
	.byte	W01
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W78
	.byte		EOT   , An2 
	.byte		        Dn3 
	.byte	W18
@ 004   ----------------------------------------
	.byte	W36
	.byte	TEMPO , 105*mus_a_hard_rains_a_gonna_fall_tbs/2
	.byte		N36   , Gn1 , v116, gtp2
	.byte	W60
@ 005   ----------------------------------------
	.byte		N60   , Dn2 , v096, gtp1
	.byte	W20
	.byte		N42   , An2 , v120
	.byte	W09
	.byte		N32   , Dn3 , v092
	.byte	W32
	.byte	W02
	.byte		N40   , An2 , v096
	.byte	W13
	.byte		N24   , Dn3 , v092, gtp3
	.byte	W14
	.byte		N13   , Fs3 , v080
	.byte	W06
@ 006   ----------------------------------------
	.byte	W08
	.byte		N24   , An1 , v092, gtp1
	.byte	W24
	.byte	W03
	.byte		N08   , An2 , v100
	.byte	W19
	.byte		N32   , Dn2 , v116, gtp2
	.byte	W42
@ 007   ----------------------------------------
	.byte	W04
	.byte		N36   , Dn2 , v108, gtp2
	.byte	W10
	.byte		        Fs2 , v112, gtp2
	.byte	W11
	.byte		N64   , An2 , v104
	.byte	W09
	.byte		N40   , Fs3 , v100, gtp1
	.byte	W10
	.byte		N44   , Dn2 , v096, gtp1
	.byte	W10
	.byte		N21   , Fs2 , v100
	.byte	W24
	.byte		N11   , Gn3 , v104
	.byte	W12
	.byte		N36   , Dn2 , v116, gtp2
	.byte	W06
@ 008   ----------------------------------------
	.byte	W04
	.byte		N24   , An2 , v096, gtp3
	.byte	W10
	.byte		N17   , Dn3 , v112
	.byte	W09
	.byte		N09   , Fs3 , v116
	.byte	W10
	.byte		N36   , Dn2 , v100, gtp2
	.byte	W10
	.byte		N28   , An2 , v104
	.byte	W11
	.byte		N17   , Dn3 , v096
	.byte	W10
	.byte		N07   , Fs3 , v104
	.byte	W09
	.byte	TEMPO , 108*mus_a_hard_rains_a_gonna_fall_tbs/2
	.byte		N48   , En2 , v120, gtp3
	.byte	W13
	.byte		        An2 , v100, gtp3
	.byte	W10
@ 009   ----------------------------------------
	.byte	W02
	.byte		N52   , Cs3 , v088
	.byte	W13
	.byte		        En3 , v100
	.byte	W14
	.byte		        En2 , v112
	.byte	W14
	.byte		N36   , An2 , v100, gtp1
	.byte	W12
	.byte		N24   , Cs3 , v116, gtp1
	.byte	W14
	.byte		N11   , En3 , v100
	.byte	W13
	.byte	TEMPO , 110*mus_a_hard_rains_a_gonna_fall_tbs/2
	.byte	W01
	.byte		N07   , En1 , v120
	.byte	W12
	.byte		N36   , En1 , v104, gtp2
	.byte	W01
@ 010   ----------------------------------------
	.byte	W09
	.byte		N72   , An1 , v096, gtp2
	.byte	W11
	.byte		N60   , En2 , v092, gtp3
	.byte	W08
	.byte		N09   , An2 , v100
	.byte	W10
	.byte		N44   , Cs3 , v116, gtp1
	.byte		N44   , En3 
	.byte	W01
	.byte		        An2 
	.byte	W52
	.byte	TEMPO , 103*mus_a_hard_rains_a_gonna_fall_tbs/2
	.byte		N36   , Gn1 , v116, gtp2
	.byte	W05
@ 011   ----------------------------------------
	.byte	W06
	.byte		N66   , Bn2 , v092, gtp1
	.byte	W10
	.byte		N36   , Dn3 , v100, gtp1
	.byte	W08
	.byte		        Gn3 , v084, gtp2
	.byte	W11
	.byte		        Bn1 , v100, gtp1
	.byte	W09
	.byte		N28   , Gn2 , v080, gtp1
	.byte	W10
	.byte		N18   , Dn3 , v096
	.byte	W11
	.byte		N07   , Gn3 , v080
	.byte	W10
	.byte		N24   , Dn2 , v116
	.byte	W08
	.byte		N07   , Fs2 , v096
	.byte	W08
	.byte		N08   , Gn2 , v100
	.byte	W05
@ 012   ----------------------------------------
	.byte	W05
	.byte		N56   , An1 , v120, gtp1
	.byte	W09
	.byte		N24   , En2 , v088
	.byte	W08
	.byte		N40   , Cs3 , v092
	.byte	W08
	.byte		N16   , An2 , v100
	.byte	W09
	.byte		N22   , En2 , v084
	.byte	W09
	.byte		N14   , An2 , v088
	.byte	W22
	.byte		N84   , Dn2 , v100
	.byte	W11
	.byte		N30   , An2 , v108
	.byte	W11
	.byte		N40   , Dn3 , v092
	.byte	W04
@ 013   ----------------------------------------
	.byte	W06
	.byte		        Gn3 , v096, gtp1
	.byte	W08
@ 014   ----------------------------------------
	.byte	TEMPO , 107*mus_a_hard_rains_a_gonna_fall_tbs/2
	.byte	W03
	.byte		N03   , An2 , v104
	.byte	W10
	.byte		N42   , An2 , v088
	.byte	W11
	.byte		N40   , Dn3 , v096, gtp1
	.byte	W10
	.byte		N42   , Fs3 , v076
	.byte	W12
	.byte		N40   , Dn2 , v112
	.byte	W06
	.byte	TEMPO , 102*mus_a_hard_rains_a_gonna_fall_tbs/2
	.byte	W04
	.byte		        An2 , v100, gtp1
	.byte	W11
	.byte		        Dn3 , v100, gtp1
	.byte	W10
	.byte		        Fs3 , v120, gtp1
	.byte	W11
	.byte		        Dn2 , v096, gtp1
	.byte	W11
	.byte		N30   , An2 , v100, gtp1
	.byte	W11
	.byte		N20   , Dn3 , v096
	.byte	W10
@ 015   ----------------------------------------
	.byte	W01
	.byte		N08   , Fs3 , v080
	.byte	W10
@ 016   ----------------------------------------
	.byte	TEMPO , 107*mus_a_hard_rains_a_gonna_fall_tbs/2
	.byte		TIE   , Gn1 , v116
	.byte	W11
	.byte		N36   , Gn2 , v092, gtp1
	.byte	W10
	.byte		        Bn2 , v108, gtp1
	.byte	W08
	.byte		        Gn3 , v116, gtp3
	.byte	W10
	.byte		        Dn2 , v100, gtp2
	.byte	W11
	.byte		        Gn2 , v104, gtp1
	.byte	W09
	.byte		        Bn2 , v096, gtp2
	.byte	W09
	.byte		        Gn3 , v104, gtp2
	.byte	W11
	.byte		        Dn2 , v116, gtp1
	.byte	W10
	.byte		        Gn2 , v092, gtp1
	.byte	W07
@ 017   ----------------------------------------
	.byte	W02
	.byte		N56   , Bn2 , v100, gtp2
	.byte	W07
@ 018   ----------------------------------------
	.byte	TEMPO , 99*mus_a_hard_rains_a_gonna_fall_tbs/2
	.byte	W04
	.byte		N36   , Gn3 , v112, gtp1
	.byte	W10
	.byte		        Dn2 , v104, gtp1
	.byte	W10
	.byte		N24   , Gn2 , v112, gtp3
	.byte	W09
	.byte		N18   , Dn3 , v096
	.byte	W09
	.byte		N09   , Gn3 , v100
	.byte	W09
	.byte		EOT   , Gn1 
	.byte	W09
	.byte		N32   , En2 , v096, gtp2
	.byte	W06
	.byte	TEMPO , 102*mus_a_hard_rains_a_gonna_fall_tbs/2
	.byte	W02
	.byte		        An2 , v096, gtp3
	.byte	W09
	.byte		        Cs3 , v112, gtp3
	.byte	W09
	.byte		        En3 , v088, gtp3
	.byte	W10
	.byte		        En2 , v092, gtp2
	.byte	W08
	.byte		N24   , An2 , v100, gtp2
	.byte	W09
	.byte		N17   , Cs3 , v080
	.byte	W07
@ 019   ----------------------------------------
	.byte	W02
	.byte		N08   , En3 , v084
	.byte	W09
	.byte		N32   , Dn2 , v116, gtp2
	.byte	W01
@ 020   ----------------------------------------
	.byte	TEMPO , 99*mus_a_hard_rains_a_gonna_fall_tbs/2
	.byte	W09
	.byte		        An2 , v096, gtp1
	.byte	W08
	.byte		        Dn3 , v104, gtp2
	.byte	W10
	.byte		        Gn3 , v112, gtp1
	.byte	W08
	.byte		        Dn2 , v096, gtp1
	.byte	W08
	.byte		        An2 , v100, gtp2
	.byte	W10
	.byte		        Dn3 , v116
	.byte	W09
	.byte		        Fs3 , v092
	.byte	W08
	.byte		        Dn2 , v096, gtp1
	.byte	W09
	.byte		        An2 , v112, gtp1
	.byte	W07
	.byte		        Dn3 , v096, gtp2
	.byte	W10
	.byte		        Fs3 , v104, gtp2
	.byte	W09
	.byte		N48   , Dn2 , v112, gtp2
	.byte	W07
	.byte		VOL   , 94*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W01
	.byte		N24   , An2 , v096, gtp1
	.byte	W09
	.byte		        Dn3 , v100
	.byte	W05
	.byte		VOL   , 88*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W04
	.byte		N24   , Fs3 , v120, gtp1
	.byte	W09
	.byte		N16   , An2 , v096
	.byte	W02
	.byte		VOL   , 82*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W02
@ 021   ----------------------------------------
	.byte	W05
	.byte		N06   , Dn3 , v104
	.byte	W07
	.byte		VOL   , 75*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W01
@ 022   ----------------------------------------
	.byte	TEMPO , 113*mus_a_hard_rains_a_gonna_fall_tbs/2
	.byte	W01
	.byte		N36   , Gn2 , v120
	.byte	W09
	.byte		N72   , Bn2 , v096, gtp3
	.byte	W06
	.byte		VOL   , 69*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W04
	.byte		N24   , Dn3 , v096, gtp3
	.byte	W10
	.byte		        Gn3 , v116, gtp2
	.byte	W03
	.byte		VOL   , 63*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W05
	.byte		N36   , Gn2 , v100, gtp1
	.byte	W11
	.byte		N54   , Dn3 , v112, gtp1
	.byte	W01
	.byte		VOL   , 56*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W08
	.byte		N36   , Gn3 , v096, gtp1
	.byte	W09
	.byte		VOL   , 50*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte		N36   , Dn2 , v100, gtp1
	.byte	W10
	.byte		N24   , Gn2 , v104, gtp2
	.byte	W07
	.byte		VOL   , 44*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W03
	.byte		N17   , Bn2 , v084
	.byte	W09
@ 023   ----------------------------------------
	.byte		N08   , Gn3 
	.byte	W05
	.byte		VOL   , 37*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W05
	.byte	TEMPO , 103*mus_a_hard_rains_a_gonna_fall_tbs/2
	.byte		N60   , An1 , v116, gtp3
	.byte	W08
	.byte		N22   , En2 , v092
	.byte	W03
	.byte		VOL   , 31*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W04
	.byte		N32   , Cs3 , v088
	.byte	W10
	.byte		N30   , En3 , v092
	.byte	W01
	.byte		VOL   , 25*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W07
	.byte		N30   , En2 , v092, gtp1
	.byte	W07
	.byte		N23   , An2 , v096
	.byte	W02
	.byte		VOL   , 18*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W08
	.byte		N14   , Cs3 , v092
	.byte	W07
	.byte		VOL   , 12*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W01
	.byte		N06   , En3 , v080
	.byte	W07
	.byte		N36   , Dn2 , v100, gtp3
	.byte	W07
	.byte		VOL   , 6*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W02
	.byte		N30   , An2 , v100, gtp1
	.byte	W10
	.byte		N20   , Dn3 
	.byte	W02
@ 024   ----------------------------------------
	.byte	W02
	.byte		VOL   , 0*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W17
	.byte	TEMPO , 99*mus_a_hard_rains_a_gonna_fall_tbs/2
	.byte	FINE

@**************** Track 2 (Midi-Chn.4) ****************@

mus_a_hard_rains_a_gonna_fall_2:
	.byte	KEYSH , mus_a_hard_rains_a_gonna_fall_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 66
	.byte		VOL   , 107*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W09
	.byte		N10   , An3 , v108
	.byte	W12
	.byte		N08   , An3 , v112
	.byte	W10
	.byte		N09   , An3 , v108
	.byte	W11
	.byte		N10   , An3 , v112
	.byte	W12
	.byte		N16   , Bn3 , v120
	.byte	W19
	.byte		N19   , An3 
	.byte	W20
	.byte		N12   , Gn3 , v112
	.byte	W03
@ 004   ----------------------------------------
	.byte	W09
	.byte		        Fs3 , v120
	.byte	W28
	.byte		N32   , Gn3 , v124, gtp1
	.byte	W32
	.byte	W02
	.byte		N16   , Dn3 , v108
	.byte	W17
	.byte		N18   , Dn3 , v120
	.byte	W08
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		N11   , An3 , v124
	.byte	W13
	.byte		N12   , An3 , v112
	.byte	W02
@ 007   ----------------------------------------
	.byte	W11
	.byte		N36   , An3 , v120, gtp2
	.byte	W40
	.byte	W01
	.byte		N17   , Bn3 , v112
	.byte	W19
	.byte		N24   , An3 
	.byte	W24
	.byte	W01
@ 008   ----------------------------------------
	.byte	W01
	.byte		N11   , Gn3 , v104
	.byte	W12
	.byte		N17   , Fs3 , v116
	.byte	W20
	.byte		N11   , Gn3 , v112
	.byte	W14
	.byte		        Gn3 , v120
	.byte	W14
	.byte		N10   , Fs3 , v112
	.byte	W12
	.byte		N30   , En3 , v124, gtp1
	.byte	W23
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		N12   , Bn3 , v120
	.byte	W13
	.byte		        Bn3 , v112
	.byte	W13
	.byte		        Bn3 , v127
	.byte	W05
@ 011   ----------------------------------------
	.byte	W07
	.byte		N06   , Bn3 , v112
	.byte	W08
	.byte		N12   
	.byte	W14
	.byte		N11   , Bn3 , v108
	.byte	W12
	.byte		N36   , Bn3 , v120, gtp2
	.byte	W40
	.byte		N18   , Gn3 , v108
	.byte	W15
@ 012   ----------------------------------------
	.byte	W04
	.byte		N24   , An3 , v127, gtp1
	.byte	W24
	.byte	W03
	.byte		N18   , Gn3 , v120
	.byte	W20
	.byte		N11   , Fs3 , v116
	.byte	W13
	.byte		N18   , Gn3 , v112
	.byte	W19
	.byte		N30   , Dn3 , v120, gtp1
	.byte	W13
@ 013   ----------------------------------------
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
@ 014   ----------------------------------------
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W14
	.byte	W92
	.byte	W02
	.byte		N06   , Bn3 , v108
	.byte	W06
@ 015   ----------------------------------------
	.byte	W02
	.byte		N07   
	.byte	W09
@ 016   ----------------------------------------
	.byte		N11   , Bn3 , v124
	.byte	W13
	.byte		N56   , Bn3 , v108, gtp2
	.byte	W60
	.byte		N11   , Bn3 , v112
	.byte	W13
	.byte		        Bn3 , v108
	.byte	W10
@ 017   ----------------------------------------
	.byte	W02
	.byte		N12   
	.byte	W07
@ 018   ----------------------------------------
	.byte	W07
	.byte		N15   , Bn3 , v104
	.byte	W56
	.byte	W03
	.byte		N09   , An3 , v108
	.byte	W11
	.byte		        Gn3 , v127
	.byte	W12
	.byte		        An3 , v108
	.byte	W15
	.byte		N12   , Gn3 , v120
	.byte	W15
	.byte		N11   , Fs3 , v112
	.byte	W01
@ 019   ----------------------------------------
	.byte	W12
@ 020   ----------------------------------------
	.byte	W06
	.byte		N19   , Gn3 , v108
	.byte	W20
	.byte		N24   , Dn3 , v120
	.byte	W84
	.byte	W02
	.byte		VOL   , 100*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W12
	.byte		N18   , Bn3 , v112
	.byte	W03
	.byte		VOL   , 93*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W15
	.byte		        86*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W02
@ 021   ----------------------------------------
	.byte	W01
	.byte		N04   
	.byte	W08
	.byte		N06   
	.byte	W03
	.byte		VOL   , 80*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W01
@ 022   ----------------------------------------
	.byte	W04
	.byte		N06   , Bn3 , v124
	.byte	W09
	.byte		        Bn3 , v116
	.byte	W03
	.byte		VOL   , 73*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W04
	.byte		N11   , Bn3 , v108
	.byte	W13
	.byte		VOL   , 66*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte		N18   
	.byte	W17
	.byte		VOL   , 60*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W17
	.byte		        53*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W13
	.byte		N11   , An3 , v120
	.byte	W04
	.byte		VOL   , 46*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W08
	.byte		N12   , Gn3 , v112
	.byte	W04
@ 023   ----------------------------------------
	.byte	W05
	.byte		VOL   , 40*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W04
	.byte		N12   , An3 , v124
	.byte	W12
	.byte		VOL   , 33*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W01
	.byte		N12   , Gn3 , v112
	.byte	W13
	.byte		N17   , Fs3 , v120
	.byte	W01
	.byte		VOL   , 26*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W16
	.byte		        20*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W03
	.byte		N12   , Gn3 
	.byte	W12
	.byte		VOL   , 13*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W02
	.byte		N17   , Dn3 , v108
	.byte	W13
	.byte		VOL   , 6*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W14
@ 024   ----------------------------------------
	.byte	W02
	.byte		        0*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W17
	.byte	FINE

@**************** Track 3 (Midi-Chn.6) ****************@

mus_a_hard_rains_a_gonna_fall_3:
	.byte	KEYSH , mus_a_hard_rains_a_gonna_fall_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 25
	.byte		VOL   , 101*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte		PAN   , c_v+8
	.byte		MOD   , 0
	.byte		BEND  , c_v+32
	.byte	W96
@ 001   ----------------------------------------
	.byte	W24
	.byte		TIE   , Fs3 , v100
	.byte	W08
	.byte		BEND  , c_v+0
	.byte	W64
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W78
	.byte		EOT   
	.byte	W18
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W36
	.byte		BEND  , c_v+32
	.byte		N22   
	.byte	W09
	.byte		BEND  , c_v+0
	.byte	W48
	.byte	W03
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
	.byte	W14
@ 014   ----------------------------------------
	.byte	W96
	.byte	W24
@ 015   ----------------------------------------
	.byte	W11
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W09
@ 018   ----------------------------------------
	.byte	W96
	.byte	W24
@ 019   ----------------------------------------
	.byte	W12
@ 020   ----------------------------------------
	.byte	W96
	.byte	W16
	.byte		VOL   , 94*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W15
	.byte		        88*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W15
	.byte		        82*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W02
@ 021   ----------------------------------------
	.byte	W12
	.byte		        75*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W01
@ 022   ----------------------------------------
	.byte	W16
	.byte		        69*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W17
	.byte		        63*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W17
	.byte		        56*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W17
	.byte		        50*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W17
	.byte		        44*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W12
@ 023   ----------------------------------------
	.byte	W05
	.byte		        37*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W16
	.byte		        31*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W15
	.byte		        25*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W16
	.byte		        18*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W15
	.byte		        12*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W15
	.byte		        6*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W14
@ 024   ----------------------------------------
	.byte	W02
	.byte		        0*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W04
	.byte		BEND  , c_v+32
	.byte		N12   
	.byte	W09
	.byte		BEND  , c_v+0
	.byte	W04
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_a_hard_rains_a_gonna_fall_4:
	.byte	KEYSH , mus_a_hard_rains_a_gonna_fall_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		VOL   , 119*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N01   , Fs1 , v104
	.byte	W24
	.byte	W02
	.byte		N01   
	.byte	W24
	.byte	W02
	.byte		N01   
	.byte	W24
	.byte	W02
	.byte		N01   
	.byte	W18
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
	.byte	W14
@ 014   ----------------------------------------
	.byte	W96
	.byte	W24
@ 015   ----------------------------------------
	.byte	W11
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W09
@ 018   ----------------------------------------
	.byte	W96
	.byte	W24
@ 019   ----------------------------------------
	.byte	W12
@ 020   ----------------------------------------
	.byte	W96
	.byte	W16
	.byte		VOL   , 111*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W15
	.byte		        104*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W15
	.byte		        96*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W02
@ 021   ----------------------------------------
	.byte	W12
	.byte		        89*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W01
@ 022   ----------------------------------------
	.byte	W16
	.byte		        81*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W17
	.byte		        74*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W17
	.byte		        66*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W17
	.byte		        59*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W17
	.byte		        52*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W12
@ 023   ----------------------------------------
	.byte	W05
	.byte		        44*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W16
	.byte		        37*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W15
	.byte		        29*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W16
	.byte		        22*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W15
	.byte		        14*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W15
	.byte		        7*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W14
@ 024   ----------------------------------------
	.byte	W02
	.byte		        0*mus_a_hard_rains_a_gonna_fall_mvl/mxv
	.byte	W17
	.byte	FINE

@******************************************************@
	.align	2

mus_a_hard_rains_a_gonna_fall:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_a_hard_rains_a_gonna_fall_pri	@ Priority
	.byte	mus_a_hard_rains_a_gonna_fall_rev	@ Reverb.

	.word	mus_a_hard_rains_a_gonna_fall_grp

	.word	mus_a_hard_rains_a_gonna_fall_1
	.word	mus_a_hard_rains_a_gonna_fall_2
	.word	mus_a_hard_rains_a_gonna_fall_3
	.word	mus_a_hard_rains_a_gonna_fall_4

	.end
