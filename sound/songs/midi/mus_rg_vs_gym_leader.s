	.include "MPlayDef.s"

	.equ	mus_rg_vs_gym_leader_grp, voicegroup_rg_vs_gym_leader
	.equ	mus_rg_vs_gym_leader_pri, 0
	.equ	mus_rg_vs_gym_leader_rev, reverb_set+50
	.equ	mus_rg_vs_gym_leader_mvl, 90
	.equ	mus_rg_vs_gym_leader_key, 0
	.equ	mus_rg_vs_gym_leader_tbs, 1
	.equ	mus_rg_vs_gym_leader_exg, 1
	.equ	mus_rg_vs_gym_leader_cmp, 1

	.section .rodata
	.global	mus_rg_vs_gym_leader
	.align	2

@**************** Track 1 (Midi-Chn.2) ****************@

mus_rg_vs_gym_leader_1:
	.byte	KEYSH , mus_rg_vs_gym_leader_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 162*mus_rg_vs_gym_leader_tbs/2
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Ds1 , v127
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		TIE   , Ds0 
	.byte	W84
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W11
	.byte		EOT   
	.byte	W01
	.byte		N08   , Gs0 
	.byte	W36
	.byte		        Gs0 , v104
	.byte	W36
	.byte		N23   , Gs1 
	.byte	W12
@ 004   ----------------------------------------
	.byte	W12
	.byte		N08   , Gs0 , v124
	.byte	W36
	.byte		        Gs0 , v104
	.byte	W36
	.byte		N23   , Gs0 , v124
	.byte	W12
@ 005   ----------------------------------------
	.byte	W12
	.byte		N08   , Gs0 , v127
	.byte	W24
	.byte		N02   , Ds1 , v104
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N08   , Gs0 
	.byte	W36
	.byte		N23   , Gs1 
	.byte	W12
@ 006   ----------------------------------------
	.byte	W12
	.byte		N05   , Cn2 , v100
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N02   , Cn2 
	.byte	W12
	.byte		N05   , Gs1 
	.byte	W12
	.byte		N56   , Fs0 , v127, gtp3
	.byte	W48
@ 007   ----------------------------------------
	.byte	W12
mus_rg_vs_gym_leader_1_B1:
	.byte		N22   , Gs1 , v124
	.byte	W36
	.byte		N11   , Gs0 , v127
	.byte	W36
	.byte		N22   , Gn1 
	.byte	W12
@ 008   ----------------------------------------
	.byte	W12
	.byte		N44   , Fs1 , v127, gtp2
	.byte	W48
	.byte		N22   
	.byte	W24
	.byte		N23   , Cs1 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W12
	.byte		N32   , As1 , v124, gtp2
	.byte	W36
	.byte		N10   , Fn1 
	.byte	W12
	.byte		N22   , Ds2 , v100
	.byte	W24
	.byte		N23   , Cs2 , v127
	.byte	W12
@ 010   ----------------------------------------
	.byte	W12
	.byte		N08   , En1 , v124
	.byte	W24
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N03   , En1 
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		        Fs1 , v127
	.byte	W08
	.byte		        Fs1 , v100
	.byte	W04
@ 011   ----------------------------------------
	.byte	W04
	.byte		N07   , En1 , v116
	.byte	W20
	.byte		N11   , Gs1 , v124
	.byte	W12
	.byte		        Ds1 , v127
	.byte	W12
	.byte		        Gs1 
	.byte	W36
	.byte		        Ds1 
	.byte	W12
@ 012   ----------------------------------------
	.byte	W12
	.byte		N05   , Cs1 , v124
	.byte	W12
	.byte		N23   , Fs0 , v127
	.byte	W24
	.byte		N05   , Fs1 
	.byte	W12
	.byte		N20   , Fs0 
	.byte	W24
	.byte		N10   
	.byte	W12
@ 013   ----------------------------------------
	.byte	W06
	.byte		N04   , Fs1 
	.byte	W06
	.byte		N23   , En1 , v124
	.byte	W24
	.byte		N05   , Cs1 , v127
	.byte	W12
	.byte		N24   , En1 , v127, gtp2
	.byte	W36
	.byte		N23   , Cs1 
	.byte	W12
@ 014   ----------------------------------------
	.byte	W12
	.byte		N22   , Fs1 , v124
	.byte	W24
	.byte		N10   , As0 
	.byte	W12
	.byte		N30   , Fs1 , v124, gtp1
	.byte	W36
	.byte		N23   , En1 
	.byte	W12
@ 015   ----------------------------------------
	.byte	W12
	.byte		N11   , Gs0 
	.byte	W24
	.byte		        Ds1 , v127
	.byte	W12
	.byte		        Gs0 
	.byte	W36
	.byte		        Ds1 
	.byte	W12
@ 016   ----------------------------------------
	.byte	W12
	.byte		N05   , Fs1 , v124
	.byte	W12
	.byte		N11   , Cs1 , v127
	.byte	W24
	.byte		        Fs1 
	.byte	W36
	.byte		        Cs1 
	.byte	W12
@ 017   ----------------------------------------
	.byte	W12
	.byte		N36   , Ds2 , v124, gtp2
	.byte	W36
	.byte	W03
	.byte		N01   , Cs2 
	.byte	W01
	.byte		        Cn2 
	.byte	W02
	.byte		        As1 
	.byte	W01
	.byte		        Gs1 
	.byte	W02
	.byte		        Gn1 
	.byte	W01
	.byte		        Fn1 
	.byte	W02
	.byte		N44   , Ds1 , v124, gtp2
	.byte	W36
@ 018   ----------------------------------------
	.byte	W12
	.byte		N32   , En1 , v124, gtp3
	.byte	W36
	.byte		N05   , Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N28   , Fs1 
	.byte	W32
	.byte		N07   , Ds1 , v127
	.byte	W04
@ 019   ----------------------------------------
	.byte	W04
	.byte		        As1 , v124
	.byte	W08
	.byte		N64   , Gs1 , v124, gtp1
	.byte	W72
	.byte		N11   , Ds1 , v127
	.byte	W12
@ 020   ----------------------------------------
	.byte	W12
	.byte		N05   , Fs1 , v124
	.byte	W12
	.byte		N11   , Cs1 , v127
	.byte	W24
	.byte		        Fs1 
	.byte	W36
	.byte		N05   , Cs2 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N05   
	.byte	W12
	.byte		N68   , En1 , v127, gtp3
	.byte	W72
	.byte		N11   , Gs1 
	.byte	W12
@ 022   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		N23   , Gs1 
	.byte	W24
	.byte		N05   , Gs1 , v100
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 , v124
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W24
@ 023   ----------------------------------------
	.byte		N05   
	.byte	W12
	.byte		N23   , Cs1 , v127
	.byte	W24
	.byte		N11   , Gs0 , v100
	.byte	W12
	.byte		N05   , Cs1 
	.byte	W24
	.byte		N11   , Gs0 
	.byte	W12
	.byte		N05   , Cs1 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N11   , Gs0 
	.byte	W12
	.byte		N23   , Ds1 , v124
	.byte	W24
	.byte		N11   , As0 , v100
	.byte	W12
	.byte		N05   , Ds1 
	.byte	W24
	.byte		N11   , As0 , v120
	.byte	W12
	.byte		N05   , Ds1 , v100
	.byte	W12
@ 025   ----------------------------------------
	.byte		N11   , As0 
	.byte	W12
	.byte		N23   , Cn1 , v120
	.byte	W24
	.byte		N11   , Gn0 , v100
	.byte	W12
	.byte		N05   , Cn1 
	.byte	W24
	.byte		N11   , Gn0 
	.byte	W12
	.byte		N05   , Cn1 
	.byte	W12
@ 026   ----------------------------------------
	.byte		N11   , Gn0 
	.byte	W12
	.byte		N22   , Fn1 , v124
	.byte	W24
	.byte		        En1 , v100
	.byte	W24
	.byte		        Ds1 , v104
	.byte	W24
	.byte		        Dn1 
	.byte	W12
@ 027   ----------------------------------------
	.byte	W12
	.byte		N23   , Cs1 , v120
	.byte	W24
	.byte		N11   , Gs0 , v127
	.byte	W12
	.byte		N05   , Cs1 , v108
	.byte	W24
	.byte		N11   , Gs0 , v127
	.byte	W12
	.byte		N05   , Cs1 , v108
	.byte	W12
@ 028   ----------------------------------------
	.byte		N11   , Gs0 , v127
	.byte	W12
	.byte		N23   , Ds1 
	.byte	W24
	.byte		N11   , As0 
	.byte	W12
	.byte		N05   , Ds1 , v108
	.byte	W24
	.byte		N11   , As0 , v120
	.byte	W12
	.byte		N05   , Ds1 , v108
	.byte	W12
@ 029   ----------------------------------------
	.byte		N11   , As0 , v112
	.byte	W12
	.byte		N23   , Cn1 
	.byte	W24
	.byte		N11   , Gn0 , v120
	.byte	W12
	.byte		N05   , Cn1 , v092
	.byte	W24
	.byte		N11   , Gn0 , v127
	.byte	W12
	.byte		N05   , Cn1 , v104
	.byte	W12
@ 030   ----------------------------------------
	.byte		N11   , Gn0 , v127
	.byte	W12
	.byte		N23   , Fn1 
	.byte	W24
	.byte		N22   , Cn1 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		        Cn2 
	.byte	W12
@ 031   ----------------------------------------
	.byte	W12
	.byte		N23   , Cs1 , v124
	.byte	W24
	.byte		N11   , Gs0 , v116
	.byte	W12
	.byte		        Cs1 , v100
	.byte	W24
	.byte		        Gs0 , v124
	.byte	W12
	.byte		N08   , Gs1 , v100
	.byte	W12
@ 032   ----------------------------------------
	.byte		N11   , Gs0 , v124
	.byte	W12
	.byte		N23   , As0 , v127
	.byte	W24
	.byte		N11   , Fn0 , v124
	.byte	W12
	.byte		        Fn1 , v100
	.byte	W24
	.byte		        Dn1 , v124
	.byte	W12
	.byte		        Gs1 , v120
	.byte	W12
@ 033   ----------------------------------------
	.byte		        As0 
	.byte	W12
	.byte		N23   , Ds1 , v116
	.byte	W24
	.byte		N11   , As0 , v127
	.byte	W12
	.byte		N05   , Ds1 , v100
	.byte	W24
	.byte		N11   , As0 , v127
	.byte	W12
	.byte		N08   , Gn1 
	.byte	W12
@ 034   ----------------------------------------
	.byte		N02   , Ds1 
	.byte	W06
	.byte		        Ds1 , v112
	.byte	W06
	.byte		N92   , Ds1 , v127, gtp3
	.byte	W84
@ 035   ----------------------------------------
	.byte	W11
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_rg_vs_gym_leader_1_B1
mus_rg_vs_gym_leader_1_B2:
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_rg_vs_gym_leader_2:
	.byte	KEYSH , mus_rg_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 83
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W12
	.byte		N22   , Cs3 , v096
	.byte	W24
	.byte		        Fs3 , v100
	.byte	W24
	.byte		N14   , Bn3 , v096
	.byte	W16
	.byte		        En4 
	.byte	W16
	.byte		        An4 
	.byte	W04
@ 002   ----------------------------------------
	.byte	W12
	.byte		N08   , Cs4 , v108
	.byte	W12
	.byte		        Cs4 , v100
	.byte	W12
	.byte		        Cs4 , v084
	.byte	W12
	.byte		        Cs4 , v076
	.byte	W12
	.byte		        Cs4 , v064
	.byte	W36
@ 003   ----------------------------------------
	.byte	W12
	.byte		        Cn4 , v108
	.byte	W12
	.byte		        Cn4 , v100
	.byte	W12
	.byte		        Cn4 , v084
	.byte	W12
	.byte		        Cn4 , v076
	.byte	W12
	.byte		N23   , Gs3 , v092
	.byte	W24
	.byte		        Ds3 
	.byte	W12
@ 004   ----------------------------------------
	.byte	W12
	.byte		N10   , Cs4 , v104
	.byte	W12
	.byte		        Cs4 , v084
	.byte	W12
	.byte		        Cs4 , v072
	.byte	W12
	.byte		        Cs4 , v056
	.byte	W48
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W12
mus_rg_vs_gym_leader_2_B1:
	.byte	W84
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W84
	.byte		N18   , As3 , v100
	.byte	W12
@ 009   ----------------------------------------
	.byte	W12
	.byte		        En3 , v116
	.byte	W24
	.byte		        Cs3 , v108
	.byte	W24
	.byte		        Fs3 , v100
	.byte	W24
	.byte		        As3 , v108
	.byte	W12
@ 010   ----------------------------------------
	.byte	W12
	.byte		N42   , Cn4 , v100
	.byte	W84
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
	.byte	W12
	.byte		N32   , Ds5 , v120, gtp3
	.byte	W36
	.byte		N05   , Cn5 , v116
	.byte	W12
	.byte		N92   , Ds5 , v120, gtp3
	.byte	W36
@ 019   ----------------------------------------
	.byte	W60
	.byte		N15   , Fs5 
	.byte	W15
	.byte		        Fn5 
	.byte	W17
	.byte		        Fs5 
	.byte	W04
@ 020   ----------------------------------------
	.byte	W12
	.byte		N32   , Gs5 
	.byte	W36
	.byte		N08   , Bn5 , v112
	.byte	W12
	.byte		N44   , Gs5 , v120, gtp3
	.byte	W36
@ 021   ----------------------------------------
	.byte	W12
	.byte		N02   , Fn5 , v100
	.byte	W06
	.byte		        Cs5 , v092
	.byte	W07
	.byte		        Gs4 , v080
	.byte	W05
	.byte		        Cs4 , v072
	.byte	W06
	.byte		        Cs5 , v088
	.byte	W06
	.byte		        Gs4 , v092
	.byte	W06
	.byte		        Cs4 , v076
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N03   , Gn2 , v116
	.byte	W04
	.byte		        Cs3 , v108
	.byte	W04
	.byte		        Ds3 , v104
	.byte	W04
	.byte		        Gn3 , v100
	.byte	W04
	.byte		        Cs4 , v096
	.byte	W04
	.byte		        Ds4 , v092
	.byte	W04
	.byte		        Gn4 , v084
	.byte	W04
	.byte		        As4 , v076
	.byte	W04
	.byte		        Ds5 , v072
	.byte	W04
@ 022   ----------------------------------------
	.byte		        Gn5 , v068
	.byte	W04
	.byte		        Gs5 , v064
	.byte	W04
	.byte		        As5 , v060
	.byte	W88
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W12
	.byte		N02   , Cn3 , v112
	.byte	W06
	.byte		        Fn3 , v100
	.byte	W06
	.byte		        Gs3 , v092
	.byte	W06
	.byte		        Cn4 , v080
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Gs4 , v096
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Fn5 , v084
	.byte	W06
	.byte		        Fn2 , v112
	.byte	W06
	.byte		        Cn3 , v108
	.byte	W06
	.byte		        Fn3 , v096
	.byte	W06
	.byte		        Gs3 , v092
	.byte	W06
	.byte		        Cn4 , v100
	.byte	W03
	.byte		        Fn4 , v104
	.byte	W03
	.byte		        Gs4 , v096
	.byte	W03
	.byte		        Cn5 , v084
	.byte	W03
@ 026   ----------------------------------------
	.byte		        Fn5 , v076
	.byte	W03
	.byte		        Gs5 , v064
	.byte	W03
	.byte		        Cn6 , v052
	.byte		N06   , Fn6 
	.byte	W90
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W11
	.byte		VOICE , 83
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_rg_vs_gym_leader_2_B1
mus_rg_vs_gym_leader_2_B2:
	.byte		VOICE , 83
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.4) ****************@

mus_rg_vs_gym_leader_3:
	.byte	KEYSH , mus_rg_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W36
	.byte		N23   , En3 , v096
	.byte	W24
	.byte		N15   , An3 , v100
	.byte	W16
	.byte		        Dn4 
	.byte	W16
	.byte		        Gn4 , v092
	.byte	W04
@ 002   ----------------------------------------
	.byte	W12
	.byte		N05   , Cs3 , v100
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 , v096
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 , v092
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 , v088
	.byte	W06
@ 003   ----------------------------------------
	.byte		        Cn4 , v084
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 , v088
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cn3 , v092
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        As2 , v096
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Cs3 , v100
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 , v104
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 , v100
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 , v096
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 , v092
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 , v108
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 , v112
	.byte	W06
	.byte		        Gn3 , v116
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 , v120
	.byte	W06
	.byte		N06   , Gn2 , v127
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        Gn3 
	.byte	W04
@ 006   ----------------------------------------
	.byte	W04
	.byte		N05   , Ds3 , v116
	.byte	W08
mus_rg_vs_gym_leader_3_B1:
	.byte		N11   , Gs2 , v100
	.byte	W36
	.byte		N11   
	.byte	W36
	.byte		        Gn2 
	.byte	W12
@ 007   ----------------------------------------
	.byte	W24
	.byte		        Fs2 
	.byte	W36
	.byte		        Ds2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds3 , v096
	.byte	W12
@ 008   ----------------------------------------
	.byte		N04   , Cs3 , v084
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N32   , As2 , v124
	.byte	W36
	.byte		N04   , An2 , v108
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N22   , Fn2 , v124
	.byte	W24
	.byte		N08   , Cs2 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W12
	.byte		N32   , En2 , v108
	.byte	W36
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N07   , Fs2 
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W08
	.byte		N06   
	.byte	W04
@ 010   ----------------------------------------
	.byte	W04
	.byte		N06   
	.byte	W08
	.byte		N07   , Ds3 , v100
	.byte	W12
	.byte		N22   , Gs2 , v120
	.byte	W24
	.byte		N11   , Cn3 , v100
	.byte	W36
	.byte		N11   
	.byte	W12
@ 011   ----------------------------------------
	.byte	W24
	.byte		        As2 
	.byte	W12
	.byte		N05   , Ds2 , v120
	.byte	W06
	.byte		        Ds2 , v100
	.byte	W18
	.byte		N11   , As2 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 012   ----------------------------------------
	.byte	W12
	.byte		N28   , Gs2 , v127, gtp1
	.byte	W36
	.byte		N11   , Gs2 , v116
	.byte	W36
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        Gn2 , v112
	.byte	W06
@ 013   ----------------------------------------
	.byte		        Gs2 , v116
	.byte	W06
	.byte		        As2 , v112
	.byte	W06
	.byte		N30   , Cs3 , v100, gtp1
	.byte	W36
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs2 , v127
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 014   ----------------------------------------
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 , v100
	.byte	W06
	.byte		        Gs3 , v080
	.byte	W06
	.byte		N07   , Gs3 , v100
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        Gs3 , v080
	.byte	W06
	.byte		N07   , Gs3 , v100
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        Gs3 , v080
	.byte	W06
@ 015   ----------------------------------------
	.byte		N07   , Gs3 , v100
	.byte	W24
	.byte	W01
	.byte		N05   , Fs3 
	.byte	W06
	.byte		        Fs3 , v080
	.byte	W06
	.byte		N07   , Fs3 , v100
	.byte	W23
	.byte		N05   
	.byte	W06
	.byte		        Fs3 , v080
	.byte	W06
	.byte		N07   , Fs3 , v100
	.byte	W12
	.byte		N05   , Fs3 , v116
	.byte	W06
	.byte		        Fs3 , v104
	.byte	W06
@ 016   ----------------------------------------
	.byte		N10   , Fn3 , v116
	.byte	W12
	.byte		N32   , Ds4 , v108, gtp3
	.byte	W36
	.byte		N05   , Cs4 , v100
	.byte	W06
	.byte		N04   , Cn4 
	.byte	W04
	.byte		N01   
	.byte	W02
	.byte		N23   , Cs4 , v104
	.byte	W24
	.byte		N05   , Gs3 , v127
	.byte	W06
	.byte		        Cs4 , v124
	.byte	W06
@ 017   ----------------------------------------
	.byte		        Fn3 , v127
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W06
	.byte		N32   , Bn3 , v100
	.byte	W36
	.byte		N05   , As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N32   , Cs4 , v100, gtp1
	.byte	W36
@ 018   ----------------------------------------
	.byte		N05   , Bn3 , v124
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N32   , Ds4 , v072, gtp3
	.byte	W32
	.byte	W03
	.byte		N11   , Cn3 , v108
	.byte	W36
	.byte		N11   
	.byte	W13
@ 019   ----------------------------------------
	.byte	W23
	.byte		        As2 
	.byte	W12
	.byte		N05   , Ds2 , v124
	.byte	W06
	.byte		        Ds2 , v108
	.byte	W18
	.byte		N11   , As2 
	.byte	W24
	.byte		N11   
	.byte	W13
@ 020   ----------------------------------------
	.byte	W11
	.byte		        En2 , v100
	.byte	W36
	.byte	W01
	.byte		N11   
	.byte	W36
	.byte		N05   , Fn2 , v120
	.byte	W06
	.byte		        Gn2 
	.byte	W05
	.byte		        Gs2 
	.byte	W01
@ 021   ----------------------------------------
	.byte	W05
	.byte		        As2 
	.byte	W06
	.byte		N21   , Cs3 
	.byte	W24
	.byte	W01
	.byte		N04   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N05   , As2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N04   , Ds3 , v104
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N11   , Gs2 , v100
	.byte	W12
	.byte		N05   , Fn2 , v127
	.byte	W06
	.byte		        Fn2 , v084
	.byte	W06
	.byte		        Cs2 , v100
	.byte	W06
	.byte		        Cs2 , v056
	.byte	W06
	.byte		        Fn2 , v100
	.byte	W06
	.byte		        Fn2 , v056
	.byte	W06
	.byte		        Gs2 , v124
	.byte	W06
	.byte		        Gs2 , v080
	.byte	W06
	.byte		        Fn2 , v127
	.byte	W06
	.byte		        Fn2 , v084
	.byte	W06
	.byte		        Cs2 , v100
	.byte	W06
	.byte		        Cs2 , v056
	.byte	W06
	.byte		        Fn2 , v100
	.byte	W06
	.byte		        Fn2 , v056
	.byte	W06
@ 023   ----------------------------------------
mus_rg_vs_gym_leader_3_023:
	.byte		N05   , Gs2 , v124
	.byte	W06
	.byte		        Gs2 , v080
	.byte	W06
	.byte		        As2 , v127
	.byte	W06
	.byte		        As2 , v084
	.byte	W06
	.byte		        Gn2 , v100
	.byte	W06
	.byte		        Gn2 , v056
	.byte	W06
	.byte		        As2 , v100
	.byte	W06
	.byte		        As2 , v056
	.byte	W06
	.byte		        Cn3 , v124
	.byte	W06
	.byte		        Cn3 , v080
	.byte	W06
	.byte		        As2 , v127
	.byte	W06
	.byte		        As2 , v084
	.byte	W06
	.byte		        Gn2 , v100
	.byte	W06
	.byte		        Gn2 , v056
	.byte	W06
	.byte		        Cn3 , v100
	.byte	W06
	.byte		        Cn3 , v056
	.byte	W06
	.byte	PEND
@ 024   ----------------------------------------
mus_rg_vs_gym_leader_3_024:
	.byte	W12
	.byte		N05   , Gn2 , v127
	.byte	W06
	.byte		        Gn2 , v084
	.byte	W06
	.byte		        Ds2 , v100
	.byte	W06
	.byte		        Ds2 , v056
	.byte	W06
	.byte		        Gn2 , v100
	.byte	W06
	.byte		        Gn2 , v056
	.byte	W06
	.byte		        As2 , v124
	.byte	W06
	.byte		        As2 , v080
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Gn2 , v084
	.byte	W06
	.byte		        Ds2 , v100
	.byte	W06
	.byte		        Ds2 , v056
	.byte	W06
	.byte		        Gn2 , v100
	.byte	W06
	.byte		        Gn2 , v056
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
	.byte		        As2 , v124
	.byte	W06
	.byte		        As2 , v080
	.byte	W06
	.byte		        Fn1 , v124
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 026   ----------------------------------------
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fn2 , v127
	.byte	W06
	.byte		        Fn2 , v084
	.byte	W06
	.byte		        Cs2 , v100
	.byte	W06
	.byte		        Cs2 , v056
	.byte	W06
	.byte		        Fn2 , v100
	.byte	W06
	.byte		        Fn2 , v056
	.byte	W06
	.byte		        Gs2 , v124
	.byte	W06
	.byte		        Gs2 , v080
	.byte	W06
	.byte		        Fn2 , v127
	.byte	W06
	.byte		        Fn2 , v084
	.byte	W06
	.byte		        Cs2 , v100
	.byte	W06
	.byte		        Cs2 , v056
	.byte	W06
	.byte		        Fn2 , v100
	.byte	W06
	.byte		        Fn2 , v056
	.byte	W06
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_3_023
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_3_024
@ 029   ----------------------------------------
	.byte		N05   , As2 , v124
	.byte	W06
	.byte		        As2 , v080
	.byte	W06
	.byte		N23   , An2 , v127
	.byte	W24
	.byte		        Fn2 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		        Fn3 
	.byte	W12
@ 030   ----------------------------------------
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		        Cs3 , v096
	.byte	W06
	.byte		        Cn3 , v127
	.byte	W06
	.byte		        Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v127
	.byte	W06
	.byte		        Cs3 , v108
	.byte	W06
	.byte		        Cn3 , v127
	.byte	W06
	.byte		        Cs3 , v104
	.byte	W06
	.byte		        Cs3 , v127
	.byte	W06
	.byte		        Cs3 , v096
	.byte	W06
	.byte		        Cn3 , v127
	.byte	W06
	.byte		        Cs3 , v096
	.byte	W06
	.byte		        Cn3 , v127
	.byte	W06
	.byte		        Cs3 , v108
	.byte	W06
@ 031   ----------------------------------------
	.byte		        Cs3 , v127
	.byte	W06
	.byte		        Cs3 , v104
	.byte	W06
	.byte		        Dn3 , v127
	.byte	W06
	.byte		        Dn3 , v096
	.byte	W06
	.byte		        Cs3 , v127
	.byte	W06
	.byte		        Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v127
	.byte	W06
	.byte		        Dn3 , v108
	.byte	W06
	.byte		        Cs3 , v127
	.byte	W06
	.byte		        Dn3 , v104
	.byte	W06
	.byte		        Dn3 , v127
	.byte	W06
	.byte		        Dn3 , v096
	.byte	W06
	.byte		        Cs3 , v127
	.byte	W06
	.byte		        Dn3 , v096
	.byte	W06
	.byte		        Cs3 , v127
	.byte	W06
	.byte		        Dn3 , v108
	.byte	W06
@ 032   ----------------------------------------
	.byte		        Dn3 , v127
	.byte	W06
	.byte		        Dn3 , v104
	.byte	W06
	.byte		        Ds3 , v127
	.byte	W06
	.byte		        Ds3 , v096
	.byte	W06
	.byte		        Dn3 , v127
	.byte	W06
	.byte		        Ds3 , v096
	.byte	W06
	.byte		        Ds3 , v127
	.byte	W06
	.byte		        Ds3 , v108
	.byte	W06
	.byte		        Dn3 , v127
	.byte	W06
	.byte		        Ds3 , v104
	.byte	W06
	.byte		        Ds3 , v127
	.byte	W06
	.byte		        Ds3 , v096
	.byte	W06
	.byte		        Dn3 , v127
	.byte	W06
	.byte		        Ds3 , v096
	.byte	W06
	.byte		        Dn3 , v127
	.byte	W06
	.byte		        Ds3 , v108
	.byte	W06
@ 033   ----------------------------------------
	.byte		        Ds3 , v127
	.byte	W06
	.byte		        Ds3 , v104
	.byte	W30
	.byte		N11   , Gs1 , v100
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 034   ----------------------------------------
	.byte		N10   , An3 , v092
	.byte	W11
	.byte		VOICE , 80
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_rg_vs_gym_leader_3_B1
mus_rg_vs_gym_leader_3_B2:
	.byte		VOICE , 80
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.5) ****************@

mus_rg_vs_gym_leader_4:
	.byte	KEYSH , mus_rg_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
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
	.byte	W12
mus_rg_vs_gym_leader_4_B1:
	.byte		N05   , Ds3 , v116
	.byte		N05   , Gs3 
	.byte	W24
	.byte		N01   , Ds3 , v100
	.byte		N01   , Gs3 
	.byte	W06
	.byte		        Ds3 , v080
	.byte		N01   , Gs3 
	.byte	W06
	.byte		N05   , Ds3 , v116
	.byte		N05   , Gs3 
	.byte	W36
	.byte		        Ds3 
	.byte		N05   , Gn3 
	.byte	W12
@ 007   ----------------------------------------
	.byte	W12
	.byte		N01   , Cs3 , v100
	.byte		N01   , Fs3 
	.byte	W06
	.byte		        Cs3 , v080
	.byte		N01   , Fs3 
	.byte	W06
	.byte		N05   , Cs3 , v116
	.byte		N05   , Fs3 
	.byte	W12
	.byte		N21   , Gs2 , v092
	.byte		N21   , Ds3 
	.byte	W24
	.byte		N05   , Cs3 , v116
	.byte		N05   , Fs3 
	.byte	W24
	.byte		N05   
	.byte		N05   , As3 
	.byte	W12
@ 008   ----------------------------------------
	.byte	W12
	.byte		        Fn3 
	.byte		N05   , As3 
	.byte	W24
	.byte		N01   , Fn3 , v100
	.byte		N01   , As3 
	.byte	W06
	.byte		        Fn3 , v080
	.byte		N01   , As3 
	.byte	W06
	.byte		N05   , Fn3 , v116
	.byte		N05   , As3 
	.byte	W36
	.byte		        Cs3 
	.byte		N05   , As3 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W12
	.byte		N32   , Cs1 , v127
	.byte	W36
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N08   , Fs1 
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W04
@ 010   ----------------------------------------
	.byte	W04
	.byte		N03   , Gn1 
	.byte	W08
	.byte		N05   , Gs3 
	.byte		N05   , Cn4 
	.byte	W24
	.byte		N01   , Ds3 , v100
	.byte		N01   , Cn4 
	.byte	W06
	.byte		        Ds3 , v080
	.byte		N01   , Cn4 
	.byte	W06
	.byte		N05   , Ds3 , v116
	.byte		N05   , Cn4 
	.byte	W36
	.byte		        Ds3 
	.byte		N05   , Cn4 
	.byte	W12
@ 011   ----------------------------------------
mus_rg_vs_gym_leader_4_011:
	.byte	W12
	.byte		N01   , As2 , v100
	.byte		N01   , Fs3 
	.byte	W06
	.byte		        As2 , v080
	.byte		N01   , Fs3 
	.byte	W06
	.byte		N05   , As2 , v116
	.byte		N05   , Fs3 
	.byte	W24
	.byte		N01   , As2 , v100
	.byte		N01   , Fs3 
	.byte	W06
	.byte		        As2 , v080
	.byte		N01   , Fs3 
	.byte	W06
	.byte		N05   , As2 , v116
	.byte		N05   , Fs3 
	.byte	W24
	.byte		        As2 
	.byte		N05   , Fs3 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W12
	.byte		        Cn3 
	.byte		N05   , Cn4 
	.byte	W24
	.byte		N01   , Ds3 , v100
	.byte		N01   , Cn4 
	.byte	W06
	.byte		        Ds3 , v080
	.byte		N01   , Cn4 
	.byte	W06
	.byte		N05   , Ds3 , v116
	.byte		N05   , Cn4 
	.byte	W36
	.byte		        Ds3 
	.byte		N05   , Cn4 
	.byte	W12
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_4_011
@ 016   ----------------------------------------
	.byte	W12
	.byte		N05   , Cs3 , v116
	.byte		N05   , Gs3 
	.byte	W24
	.byte		N01   , Cs3 , v100
	.byte		N01   , Gs3 
	.byte	W06
	.byte		        Cs3 , v080
	.byte		N01   , Gs3 
	.byte	W06
	.byte		N05   , Cs3 , v116
	.byte		N05   , Gs3 
	.byte	W36
	.byte		        Cs3 
	.byte		N05   , Gs3 
	.byte	W12
@ 017   ----------------------------------------
	.byte	W12
	.byte		N32   , Cs3 
	.byte		N32   , Gs3 
	.byte	W36
	.byte		N01   , Cs3 
	.byte		N01   , Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N01   , Gs3 
	.byte	W06
	.byte		N02   , Fs3 
	.byte		N02   , As3 
	.byte		N02   , En4 
	.byte	W12
	.byte		        Fs3 , v124
	.byte		N02   , As3 
	.byte		N02   , En4 
	.byte	W12
	.byte		N03   , As3 , v100
	.byte		N03   , En4 
	.byte	W08
	.byte		        As3 
	.byte		N03   , En4 
	.byte	W04
@ 018   ----------------------------------------
	.byte	W04
	.byte		        As3 
	.byte		N03   , En4 
	.byte	W08
	.byte		N05   , Gs3 , v116
	.byte		N05   , Ds4 , v127
	.byte	W24
	.byte		N01   , Gs3 , v088
	.byte		N01   , Ds4 , v100
	.byte	W06
	.byte		        Gs3 , v068
	.byte		N01   , Ds4 , v080
	.byte	W06
	.byte		N05   , Gs3 , v104
	.byte		N05   , Ds4 , v116
	.byte	W36
	.byte		        Gs3 , v104
	.byte		N05   , Ds4 , v116
	.byte	W12
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_4_011
@ 020   ----------------------------------------
	.byte	W11
	.byte		N05   , En3 , v116
	.byte	W01
	.byte		        Bn3 , v124
	.byte	W32
	.byte	W03
	.byte		        Bn3 , v116
	.byte	W01
	.byte		        En4 
	.byte	W32
	.byte	W03
	.byte		        Bn3 
	.byte	W01
	.byte		        En3 
	.byte	W12
@ 021   ----------------------------------------
	.byte	W12
	.byte		N23   , Cs3 
	.byte		N23   , Cs4 
	.byte	W24
	.byte		N01   , Cs3 
	.byte		N01   , Cs4 
	.byte	W06
	.byte		        Ds3 
	.byte		N01   , Ds4 
	.byte	W06
	.byte		        As2 
	.byte		N01   , As3 
	.byte	W06
	.byte		        Cs3 
	.byte		N01   , Cs4 
	.byte	W06
	.byte		N04   , Ds4 
	.byte		N04   , As4 , v104
	.byte	W06
	.byte		        Dn4 , v116
	.byte		N04   , An4 , v104
	.byte	W06
	.byte		        Ds4 , v116
	.byte		N04   , As4 , v104
	.byte	W24
@ 022   ----------------------------------------
	.byte		N05   , Ds4 , v116
	.byte		N05   , As4 
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
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W11
	.byte		VOICE , 48
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_rg_vs_gym_leader_4_B1
mus_rg_vs_gym_leader_4_B2:
	.byte		VOICE , 48
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.6) ****************@

mus_rg_vs_gym_leader_5:
	.byte	KEYSH , mus_rg_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 56
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W84
	.byte		N54   , Fs3 , v100, gtp1
	.byte	W12
@ 001   ----------------------------------------
	.byte	W36
	.byte		N23   , En4 , v116
	.byte	W24
	.byte		N15   , Fs3 , v080
	.byte		N15   , An4 
	.byte	W16
	.byte		        Bn3 
	.byte		N15   , Dn5 
	.byte	W16
	.byte		        En4 
	.byte		N15   , Gn5 
	.byte	W04
@ 002   ----------------------------------------
	.byte	W12
	.byte		N07   , Ds3 , v127
	.byte		N07   , Gs3 
	.byte		N07   , Cs5 
	.byte	W09
	.byte		N20   , Ds3 , v084
	.byte		N20   , Gs3 
	.byte		N20   , Cs5 
	.byte	W24
	.byte	W03
	.byte		N07   , Ds3 , v116
	.byte		N07   , Gs3 
	.byte		N07   , Cs5 
	.byte	W09
	.byte		N12   , Ds3 , v084
	.byte		N12   , Gs3 
	.byte		N12   , Cs5 
	.byte	W15
	.byte		N02   , Ds3 , v104
	.byte		N02   , Gs3 
	.byte		N02   , Cs5 
	.byte	W06
	.byte		        Ds3 , v080
	.byte	W06
	.byte		        Ds3 , v127
	.byte		N02   , Gs3 
	.byte		N02   , Cs5 
	.byte	W06
	.byte		        Ds3 , v108
	.byte		N02   , Gs3 
	.byte		N02   , Cs5 
	.byte	W06
@ 003   ----------------------------------------
	.byte		        Ds3 , v120
	.byte		N02   , Gs3 , v116
	.byte		N02   , Cs5 
	.byte	W12
	.byte		N07   , Ds3 , v127
	.byte		N07   , Gs3 
	.byte		N07   , Cn5 
	.byte	W09
	.byte		N18   , Ds3 , v084
	.byte		N18   , Gs3 
	.byte		N18   , Cn5 
	.byte	W24
	.byte	W03
	.byte		N07   , Ds3 , v116
	.byte		N07   , Gs3 
	.byte		N07   , Cn5 
	.byte	W09
	.byte		N12   , Ds3 , v080
	.byte		N12   , Gs3 
	.byte		N12   , Cn5 
	.byte	W15
	.byte		N02   , Ds3 , v104
	.byte		N02   , Gs3 
	.byte		N02   , Cn5 
	.byte	W06
	.byte		        Ds3 , v080
	.byte	W06
	.byte		        Ds3 , v127
	.byte		N02   , Gs3 
	.byte		N02   , Cn5 
	.byte	W06
	.byte		        Ds3 , v108
	.byte		N02   , Gs3 
	.byte		N02   , Cn5 
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Ds3 , v120
	.byte		N02   , Gs3 , v116
	.byte		N02   , Cn5 
	.byte	W12
	.byte		N07   , Ds3 , v127
	.byte		N07   , Gs3 
	.byte		N07   , Cs5 
	.byte	W09
	.byte		N23   , Ds3 , v084
	.byte		N23   , Gs3 
	.byte		N23   , Cs5 
	.byte	W24
	.byte	W03
	.byte		N08   , Ds3 , v124
	.byte		N08   , Gs3 
	.byte		N08   , Cs5 
	.byte	W09
	.byte		N12   , Ds3 , v088
	.byte		N12   , Gs3 
	.byte		N12   , Cs5 
	.byte	W15
	.byte		N02   , Ds3 , v127
	.byte		N02   , Gs3 
	.byte		N02   , Cs5 
	.byte	W12
	.byte		        Ds3 
	.byte		N02   , Gs3 
	.byte		N02   , Cs5 
	.byte	W06
	.byte		        Ds3 , v108
	.byte		N02   , Gs3 
	.byte		N02   , Cs5 
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Ds3 , v120
	.byte		N02   , Gs3 , v116
	.byte		N02   , Cs5 
	.byte	W12
	.byte		N05   , Ds3 , v127
	.byte		N05   , Gs3 , v100
	.byte		N05   , Gs4 , v127
	.byte	W06
	.byte		        Dn3 , v108
	.byte		N05   , Gn3 
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N02   , Ds3 , v127
	.byte		N02   , Gs3 
	.byte		N02   , Gs4 
	.byte	W12
	.byte		N08   , Gs2 , v100
	.byte	W12
	.byte		N11   , Gs1 
	.byte	W12
	.byte		N03   , Ds3 
	.byte		N03   , Fs3 , v120
	.byte		N03   , Fs4 , v108
	.byte	W08
	.byte		        Ds3 , v100
	.byte		N03   , Fs3 , v116
	.byte		N03   , Fs4 , v108
	.byte	W08
	.byte		        Ds3 , v100
	.byte		N03   , Fs3 , v104
	.byte		N03   , Fs4 , v108
	.byte	W08
	.byte		        Ds3 , v100
	.byte		N03   , Fs3 , v116
	.byte		N03   , Fs4 , v108
	.byte	W08
	.byte		        Ds3 , v100
	.byte		N03   , Fs3 , v104
	.byte		N03   , Fs4 , v108
	.byte	W04
@ 006   ----------------------------------------
	.byte	W03
	.byte		N07   , Fn3 , v100
	.byte		N07   , Gn3 , v112
	.byte		N07   , Gn4 , v127
	.byte	W09
mus_rg_vs_gym_leader_5_B1:
	.byte		N32   , Cn3 , v120, gtp3
	.byte		N32   , Gs3 , v120, gtp3
	.byte	W36
	.byte		N05   , Ds3 , v100
	.byte		N05   , Cn4 
	.byte	W12
	.byte		N22   , Gs3 , v116
	.byte		N92   , Ds4 , v116, gtp3
	.byte	W24
	.byte		N22   , Gn3 , v100
	.byte	W12
@ 007   ----------------------------------------
	.byte	W12
	.byte		N11   , Fs3 , v116
	.byte	W12
	.byte		N04   , Fn3 
	.byte	W04
	.byte		        En3 
	.byte	W08
	.byte		N23   , Ds3 
	.byte	W24
	.byte		N32   , Cs4 , v120, gtp3
	.byte		N32   , Fs4 , v120, gtp3
	.byte	W36
@ 008   ----------------------------------------
	.byte		N05   , Cn4 , v100
	.byte		N05   , Fn4 
	.byte	W06
	.byte		        Bn3 
	.byte		N05   , En4 
	.byte	W06
	.byte		N32   , Fn3 , v116, gtp2
	.byte		N32   , Ds4 , v124, gtp3
	.byte	W36
	.byte		N05   , Ds3 , v100
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte		N05   , Cs4 
	.byte	W06
	.byte		N10   , Cs3 , v112
	.byte		N22   , Gs3 , v088
	.byte	W12
	.byte		N10   , Ds3 , v112
	.byte	W12
	.byte		N08   , En3 , v120
	.byte		N08   , As3 
	.byte	W12
@ 009   ----------------------------------------
	.byte		        En3 , v052
	.byte		N08   , As3 
	.byte	W12
	.byte		N32   , En3 , v116
	.byte		N32   , Gs3 , v108
	.byte	W36
	.byte		N01   , Cs2 , v124
	.byte		N01   , Gs3 
	.byte	W06
	.byte		        Cs2 
	.byte		N01   , Gs3 
	.byte	W06
	.byte		N02   , En3 , v127
	.byte		N02   , As3 
	.byte	W12
	.byte		        En3 , v112
	.byte		N02   , As3 
	.byte	W12
	.byte		N01   , Cs3 , v116
	.byte		N01   , Gs3 
	.byte		N01   , Cs4 
	.byte	W08
	.byte		        Cs3 , v104
	.byte		N01   , Gs3 
	.byte		N01   , Cs4 
	.byte	W04
@ 010   ----------------------------------------
	.byte	W04
	.byte		        Cs3 , v112
	.byte		N01   , Gs3 
	.byte		N01   , Cs4 
	.byte	W08
	.byte		N32   , Cn3 , v124, gtp3
	.byte		N32   , Gs3 , v124, gtp3
	.byte	W36
	.byte		N05   , Ds3 , v104
	.byte		N05   , Cn4 , v112
	.byte	W12
	.byte		N23   , Ds3 
	.byte		N92   , Ds4 , v120, gtp3
	.byte	W24
	.byte		N23   , Cs3 , v108
	.byte	W12
@ 011   ----------------------------------------
	.byte	W12
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N32   , Gs2 , v104, gtp3
	.byte	W36
	.byte		N15   , Gs3 
	.byte		N15   , Cs4 , v112
	.byte	W15
	.byte		        Fn3 , v104
	.byte	W01
	.byte		        As3 , v112
	.byte	W16
	.byte		        Cs4 
	.byte	W01
	.byte		        Gs3 , v104
	.byte	W03
@ 012   ----------------------------------------
	.byte	W12
	.byte		N44   , As3 , v096, gtp2
	.byte		N92   , Ds4 , v120, gtp3
	.byte	W48
	.byte		N15   , Gs3 , v096
	.byte	W16
	.byte		        En3 
	.byte	W16
	.byte		        Cs3 , v088
	.byte	W04
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W12
	.byte		N32   , Ds3 , v112, gtp3
	.byte		N32   , Gs3 , v127, gtp3
	.byte	W36
	.byte		N05   , Gn3 , v108
	.byte		N05   , Cn4 
	.byte	W12
	.byte		N76   , Gs3 , v092, gtp1
	.byte		N76   , Ds4 , v116, gtp1
	.byte	W36
@ 015   ----------------------------------------
	.byte	W72
	.byte		N23   , Cs4 
	.byte		N23   , Fs4 
	.byte	W24
@ 016   ----------------------------------------
	.byte		N05   , Cn4 , v108
	.byte		N05   , Fn4 
	.byte	W06
	.byte		        Bn3 , v100
	.byte		N05   , En4 
	.byte	W06
	.byte		N44   , As3 , v120, gtp2
	.byte		N44   , Ds4 , v120, gtp2
	.byte	W48
	.byte		        As3 , v084, gtp2
	.byte		N44   , Ds4 , v108, gtp2
	.byte	W36
@ 017   ----------------------------------------
	.byte	W60
	.byte		N02   , As3 , v084
	.byte	W12
	.byte		        As3 , v072
	.byte	W12
	.byte		N01   
	.byte	W08
	.byte		N01   
	.byte	W04
@ 018   ----------------------------------------
	.byte	W04
	.byte		        As3 , v080
	.byte	W07
	.byte		N32   , Cn3 , v112, gtp3
	.byte	W01
	.byte		        Gs3 , v127, gtp3
	.byte	W32
	.byte	W03
	.byte		N05   , Ds3 , v100
	.byte	W01
	.byte		        Cn4 , v116
	.byte	W12
	.byte		N22   , Cn4 , v076
	.byte		N92   , Ds4 , v124, gtp3
	.byte	W24
	.byte		N22   , As3 , v076
	.byte	W12
@ 019   ----------------------------------------
	.byte	W12
	.byte		        Gs3 
	.byte	W24
	.byte		N10   , Ds3 
	.byte	W12
	.byte		N11   , Cn3 , v100
	.byte	W12
	.byte		N15   , As3 
	.byte		N15   , Fs4 , v112
	.byte	W15
	.byte		        Fn4 
	.byte	W01
	.byte		        Gs3 , v100
	.byte	W16
	.byte		        As3 
	.byte		N15   , Fs4 , v112
	.byte	W04
@ 020   ----------------------------------------
	.byte	W12
	.byte		N32   , Bn3 , v100, gtp3
	.byte		N32   , Gs4 , v112, gtp3
	.byte	W36
	.byte		N08   , En4 , v100
	.byte		N08   , Bn4 , v112
	.byte	W12
	.byte		N44   , Bn3 , v100, gtp2
	.byte		N44   , Gs4 , v112, gtp2
	.byte	W36
@ 021   ----------------------------------------
	.byte	W12
	.byte		N22   , Gs3 , v100
	.byte		N22   , Gs4 
	.byte	W24
	.byte		N02   , Gs3 
	.byte		N02   , Gs4 
	.byte	W06
	.byte		        As3 
	.byte		N02   , As4 
	.byte	W06
	.byte		        Fn3 
	.byte		N02   , Fn4 
	.byte	W06
	.byte		        Gn3 
	.byte		N02   , Gn4 
	.byte	W06
	.byte		N04   , As3 
	.byte		N04   , As4 
	.byte	W06
	.byte		        An3 
	.byte		N04   , An4 
	.byte	W06
	.byte		        As3 
	.byte		N04   , As4 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N05   , Cs4 
	.byte		N05   , As4 
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
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W24
	.byte		N20   , Ds2 
	.byte		N32   , Gs2 , v100, gtp3
	.byte	W24
	.byte		N11   , Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 034   ----------------------------------------
	.byte		N10   , Dn5 
	.byte	W11
	.byte		VOICE , 56
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_rg_vs_gym_leader_5_B1
mus_rg_vs_gym_leader_5_B2:
	.byte		VOICE , 56
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.7) ****************@

mus_rg_vs_gym_leader_6:
	.byte	KEYSH , mus_rg_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 60
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W36
	.byte		N68   , Gn2 , v116, gtp3
	.byte	W24
	.byte		        Cs3 , v100
	.byte	W36
@ 001   ----------------------------------------
	.byte	W12
	.byte		N44   , Bn3 , v116, gtp3
	.byte	W24
	.byte		N23   , Cs3 , v100
	.byte	W24
	.byte		N15   , Bn3 
	.byte		N15   , An4 
	.byte	W16
	.byte		        En4 
	.byte		N15   , Dn5 , v088
	.byte	W16
	.byte		        An4 
	.byte	W04
@ 002   ----------------------------------------
mus_rg_vs_gym_leader_6_002:
	.byte	W12
	.byte		N05   , Gs0 , v124
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N22   
	.byte	W48
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_6_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_6_002
@ 005   ----------------------------------------
	.byte	W12
	.byte		N05   , Ds1 , v127
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W36
	.byte		N05   
	.byte	W08
	.byte		N05   
	.byte	W08
	.byte		N05   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W04
@ 006   ----------------------------------------
	.byte	W04
	.byte		N04   
	.byte	W08
mus_rg_vs_gym_leader_6_B1:
	.byte	W84
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
	.byte		N04   , Cs3 , v116
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N23   , Bn2 , v127
	.byte		N23   , En3 
	.byte	W24
	.byte		N23   
	.byte		N23   , Gs3 
	.byte	W24
	.byte		N14   , En3 
	.byte		N15   , Cs4 
	.byte	W16
	.byte		        Cs3 
	.byte		N15   , As3 
	.byte	W16
	.byte		        As2 
	.byte		N15   , Gs3 
	.byte	W04
@ 013   ----------------------------------------
	.byte	W12
	.byte		N32   , As3 , v124
	.byte		N32   , Ds4 
	.byte	W36
	.byte		N01   , As3 , v127
	.byte		N01   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N01   , Ds4 
	.byte	W05
	.byte		N32   
	.byte	W01
	.byte		N22   , En3 , v124
	.byte	W24
	.byte		N03   , Gn3 , v127
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 014   ----------------------------------------
	.byte		N02   , Cs4 
	.byte		N01   , Ds4 
	.byte	W06
	.byte		N02   , Ds3 
	.byte		N02   , Ds4 
	.byte	W90
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
	.byte	W12
	.byte		N05   , Fn3 , v124
	.byte		N05   , Fn4 
	.byte	W18
	.byte		        Gn3 
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N28   , Gs3 
	.byte		N28   , Gs4 
	.byte	W30
	.byte		N02   , Gn3 
	.byte		N02   , Gn4 
	.byte	W06
	.byte		        Fn3 
	.byte		N02   , Fn4 
	.byte	W06
	.byte		        Gn3 
	.byte		N02   , Gn4 
	.byte	W06
	.byte		N11   , Gs3 , v120
	.byte		N11   , Gs4 , v124
	.byte	W12
@ 023   ----------------------------------------
	.byte		N05   , Cn4 
	.byte		N05   , Cn5 
	.byte	W12
	.byte		        As3 
	.byte		N05   , As4 
	.byte	W18
	.byte		        Gn3 
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N44   , Ds3 , v124, gtp3
	.byte		N44   , Ds4 , v124, gtp3
	.byte	W48
	.byte		N05   , Cn3 
	.byte		N05   , Cn4 
	.byte	W06
	.byte		        Cs3 
	.byte		N05   , Cs4 
	.byte	W06
@ 024   ----------------------------------------
	.byte		        Bn2 
	.byte		N05   , Bn3 
	.byte	W06
	.byte		        Cn3 
	.byte		N05   , Cn4 
	.byte	W06
	.byte		        Ds3 
	.byte		N05   , Ds4 
	.byte	W18
	.byte		        Fn3 
	.byte		N05   , Fn4 
	.byte	W06
	.byte		N44   , Gn3 , v124, gtp3
	.byte		N44   , Gn4 , v124, gtp3
	.byte	W48
	.byte		N04   , Ds3 
	.byte		N04   , Ds4 
	.byte	W06
	.byte		        Gn3 
	.byte		N04   , Gn4 
	.byte	W06
@ 025   ----------------------------------------
	.byte		N11   , As3 
	.byte		N11   , As4 
	.byte	W12
	.byte		N05   , Gs3 
	.byte		N05   , Gs4 
	.byte	W18
	.byte		        As3 
	.byte		N05   , As4 
	.byte	W06
	.byte		N44   , Cn4 , v124, gtp3
	.byte		N44   , Cn5 , v124, gtp3
	.byte	W60
@ 026   ----------------------------------------
	.byte	W12
	.byte		N05   , Gs3 
	.byte		N05   , Gs4 , v127
	.byte	W18
	.byte		        Fn3 , v124
	.byte		N05   , Fn4 
	.byte	W06
	.byte		N32   , Gs3 , v124, gtp3
	.byte		N32   , Gs4 , v124, gtp3
	.byte	W36
	.byte		N11   , Fn3 
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Gs3 
	.byte		N11   , Gs4 
	.byte	W12
@ 027   ----------------------------------------
	.byte		N05   , Cn4 
	.byte		N05   , Cn5 
	.byte	W12
	.byte		        As3 
	.byte		N05   , As4 
	.byte	W18
	.byte		        Cn4 
	.byte		N05   , Cn5 
	.byte	W06
	.byte		N44   , As3 , v124, gtp3
	.byte		N44   , As4 , v124, gtp3
	.byte	W48
	.byte		N05   , Ds3 
	.byte		N05   , Ds4 
	.byte	W06
	.byte		        Cs3 
	.byte		N05   , Cs4 
	.byte	W06
@ 028   ----------------------------------------
	.byte		        Cn3 
	.byte		N05   , Cn4 
	.byte	W06
	.byte		        Cs3 
	.byte		N05   , Cs4 
	.byte	W06
	.byte		        Ds3 
	.byte		N05   , Ds4 
	.byte	W18
	.byte		        Fn3 
	.byte		N05   , Fn4 
	.byte	W06
	.byte		N32   , Gn3 , v124, gtp3
	.byte		N32   , Gn4 , v124, gtp3
	.byte	W36
	.byte		N11   , Ds3 
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N23   , As3 
	.byte		N23   , As4 
	.byte	W12
@ 029   ----------------------------------------
	.byte	W12
	.byte		N05   , An3 
	.byte		N05   , An4 
	.byte	W18
	.byte		        As3 
	.byte		N05   , As4 
	.byte	W06
	.byte		N44   , Cn4 , v124, gtp3
	.byte		N44   , Cn5 , v124, gtp3
	.byte	W60
@ 030   ----------------------------------------
	.byte		N05   , Gs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte		N05   , Cs5 
	.byte	W18
	.byte		        Ds4 
	.byte		N05   , Cn5 
	.byte	W06
	.byte		N44   , Cs4 , v124, gtp3
	.byte		N44   , As4 , v124, gtp3
	.byte	W48
	.byte		N05   , Gn3 
	.byte		N05   , Gn4 
	.byte	W06
	.byte		        Gs3 
	.byte		N05   , Gs4 
	.byte	W06
@ 031   ----------------------------------------
	.byte		        As3 
	.byte		N05   , As4 
	.byte	W06
	.byte		        Cn4 
	.byte		N05   , Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte		N05   , Cs5 
	.byte	W18
	.byte		        En4 
	.byte		N05   , Cn5 
	.byte	W06
	.byte		N44   , Dn4 , v124, gtp3
	.byte		N44   , As4 , v124, gtp3
	.byte	W60
@ 032   ----------------------------------------
	.byte		N05   , Gs4 
	.byte	W06
	.byte		        Dn4 
	.byte		TIE   , As4 
	.byte	W06
	.byte		N92   , Ds4 
	.byte	W84
@ 033   ----------------------------------------
	.byte	W11
	.byte		EOT   , As4 
	.byte	W84
	.byte	W01
@ 034   ----------------------------------------
	.byte	W11
	.byte		VOICE , 60
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_rg_vs_gym_leader_6_B1
mus_rg_vs_gym_leader_6_B2:
	.byte		VOICE , 60
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 7 (Midi-Chn.8) ****************@

mus_rg_vs_gym_leader_7:
	.byte	KEYSH , mus_rg_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 59
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
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
	.byte	W12
mus_rg_vs_gym_leader_7_B1:
	.byte	W84
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
	.byte	W12
	.byte		N05   , Fn3 , v100
	.byte		N05   , Gs3 
	.byte	W12
	.byte		        Fn3 
	.byte		N05   , Gs3 
	.byte	W24
	.byte		        Fn3 
	.byte		N05   , Gs3 
	.byte	W06
	.byte		        Fn3 , v072
	.byte		N05   , Gs3 
	.byte	W06
	.byte		        Gs3 , v116
	.byte		N05   , Cs4 
	.byte	W12
	.byte		        Fn3 
	.byte		N05   , Gs3 
	.byte	W24
@ 023   ----------------------------------------
	.byte		        Fn3 , v100
	.byte		N05   , Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte		N05   , Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte		N05   , As3 
	.byte	W12
	.byte		        Gn3 
	.byte		N05   , As3 
	.byte	W24
	.byte		        Gn3 , v088
	.byte		N05   , As3 
	.byte	W06
	.byte		        Ds3 , v076
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        Gn3 , v127
	.byte		N05   , Ds4 
	.byte	W06
	.byte		N02   , Gs3 , v124
	.byte		N02   , Fn4 
	.byte	W03
	.byte		        Gn3 , v104
	.byte		N02   , Ds4 
	.byte	W03
	.byte		N05   , Fn3 , v124
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        Gn3 , v116
	.byte		N05   , Ds4 
	.byte	W06
	.byte		N04   , Cn4 , v127
	.byte		N04   , Gn4 
	.byte	W12
@ 024   ----------------------------------------
	.byte		        Gn3 
	.byte		N04   , Ds4 
	.byte	W12
	.byte		N05   , Ds3 , v124
	.byte		N05   , Cn4 
	.byte	W12
	.byte		N06   , Gn3 , v100
	.byte		N05   , Cn4 
	.byte	W24
	.byte		        Gn3 , v088
	.byte		N05   , Cn4 
	.byte	W06
	.byte		        Gn3 , v076
	.byte		N05   , Cn4 
	.byte	W06
	.byte		N06   , Gn3 , v100
	.byte		N05   , Cn4 
	.byte	W12
	.byte		N06   , Gn3 , v084
	.byte		N05   , Cn4 
	.byte	W12
	.byte		        Ds3 , v124
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N02   , Gn3 , v100
	.byte		N02   , Cn4 
	.byte	W06
@ 025   ----------------------------------------
	.byte		N05   , Gn3 , v120
	.byte		N05   , As3 
	.byte	W12
	.byte		        Gs3 , v100
	.byte		N05   , Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte		N05   , Cn4 
	.byte	W24
	.byte		        Gs3 , v088
	.byte		N05   , Cn4 
	.byte	W12
	.byte		        Gs3 , v100
	.byte		N05   , Cn4 
	.byte	W12
	.byte		        Gs3 , v084
	.byte		N05   , Cn4 
	.byte	W12
	.byte		        Cn4 , v124
	.byte		N05   , Gs4 
	.byte	W12
@ 026   ----------------------------------------
	.byte		        Cn4 , v127
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N02   , Cs4 , v124
	.byte		N02   , Gs4 
	.byte	W06
	.byte		N05   , Gs3 , v100
	.byte		N05   , Fn4 
	.byte	W12
	.byte		        Gs3 
	.byte		N05   , Fn4 
	.byte	W24
	.byte		N11   , Gs3 , v088
	.byte		N11   , Fn4 
	.byte	W12
	.byte		N05   , Cs4 , v124
	.byte		N05   , Gs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N05   , Fn4 
	.byte	W12
	.byte		N01   , Gs3 , v100
	.byte		N01   , Fn4 
	.byte	W06
	.byte		        Gs3 
	.byte		N01   , Fn4 
	.byte	W06
@ 027   ----------------------------------------
	.byte		N05   , Gs3 , v124
	.byte		N05   , Fn4 
	.byte	W24
	.byte		        As3 , v100
	.byte		N05   , Gn4 
	.byte	W24
	.byte		        As3 , v088
	.byte		N05   , Gn4 
	.byte	W12
	.byte		        As3 , v116
	.byte		N05   , Gn4 , v100
	.byte	W06
	.byte		N02   , Cn4 
	.byte		N02   , Gs4 
	.byte	W03
	.byte		        As3 , v104
	.byte		N02   , Gn4 
	.byte	W03
	.byte		N05   , An3 
	.byte		N05   , Fs4 
	.byte	W06
	.byte		        As3 , v108
	.byte		N05   , Gn4 
	.byte	W06
	.byte		        Gn3 , v124
	.byte		N05   , Gn4 
	.byte	W12
@ 028   ----------------------------------------
	.byte		        Gn3 , v100
	.byte		N05   , Cn4 , v120
	.byte		N05   , Gn4 
	.byte	W12
	.byte		        Cn4 , v100
	.byte		N05   , Ds4 , v120
	.byte	W12
	.byte		        Gn3 , v100
	.byte		N05   , Cn4 
	.byte	W24
	.byte		        Cn3 , v088
	.byte		N05   , Gn3 
	.byte	W12
	.byte		        Cn3 , v100
	.byte		N05   , Gn3 
	.byte	W12
	.byte		        Cn3 , v084
	.byte		N05   , Gn3 
	.byte	W12
	.byte		        Cn3 , v100
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        Cn3 
	.byte		N05   , Gn3 
	.byte	W06
@ 029   ----------------------------------------
	.byte	W12
	.byte		        Fn3 
	.byte		N05   , An3 
	.byte	W12
	.byte		        Fn3 
	.byte		N05   , An3 
	.byte	W24
	.byte		        Cn3 , v088
	.byte		N05   , Fn3 
	.byte	W12
	.byte		        Cn3 , v100
	.byte		N05   , Fn3 
	.byte	W12
	.byte		        Cn3 , v084
	.byte		N05   , Fn3 
	.byte	W12
	.byte		N23   , Cn3 , v100
	.byte		N23   , An3 
	.byte	W12
@ 030   ----------------------------------------
	.byte	W12
	.byte		N02   , Gs2 , v120
	.byte		N02   , Cs3 
	.byte	W06
	.byte		        Gs3 , v100
	.byte		N02   , Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte		N02   , Cs4 
	.byte	W24
	.byte		        Gs3 , v088
	.byte		N02   , Cs4 
	.byte	W06
	.byte		        Gs3 , v076
	.byte		N02   , Cs4 
	.byte	W06
	.byte		        Gs3 , v116
	.byte		N02   , Cs4 
	.byte	W06
	.byte		        Gs3 , v072
	.byte		N02   , Cs4 
	.byte	W06
	.byte		        Gs3 , v084
	.byte		N02   , Cs4 
	.byte	W06
	.byte		        Gs3 , v072
	.byte		N02   , Cs4 
	.byte	W06
	.byte		        Gs3 , v120
	.byte		N02   , Cs4 
	.byte	W06
	.byte		        Gs3 , v100
	.byte		N02   , Cs4 
	.byte	W06
@ 031   ----------------------------------------
	.byte		        Gs3 
	.byte		N02   , Cs4 
	.byte	W12
	.byte		        Gs3 , v116
	.byte		N02   , Dn4 
	.byte	W06
	.byte		        Gs3 , v100
	.byte		N02   , Dn4 
	.byte	W06
	.byte		        Gs3 
	.byte		N02   , Dn4 
	.byte	W24
	.byte		        Gs3 , v088
	.byte		N02   , Dn4 
	.byte	W06
	.byte		        Gs3 , v076
	.byte		N02   , Dn4 
	.byte	W06
	.byte		        Gs3 , v116
	.byte		N02   , Dn4 
	.byte	W06
	.byte		        Gs3 , v072
	.byte		N02   , Dn4 
	.byte	W06
	.byte		        Gs3 , v084
	.byte		N02   , Dn4 
	.byte	W06
	.byte		        Gs3 , v072
	.byte		N02   , Dn4 
	.byte	W06
	.byte		        Gs3 , v116
	.byte		N02   , Dn4 
	.byte	W06
	.byte		        Gs3 , v100
	.byte		N02   , Dn4 
	.byte	W06
@ 032   ----------------------------------------
	.byte		        Gs3 
	.byte		N02   , Dn4 
	.byte	W12
	.byte		        As3 , v116
	.byte		N02   , Ds4 
	.byte	W06
	.byte		        As3 , v100
	.byte		N02   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N02   , Ds4 
	.byte	W24
	.byte		        As3 , v088
	.byte		N02   , Ds4 
	.byte	W06
	.byte		        As3 , v076
	.byte		N02   , Ds4 
	.byte	W06
	.byte		        As3 , v100
	.byte		N02   , Ds4 
	.byte	W06
	.byte		        As3 , v072
	.byte		N02   , Ds4 
	.byte	W06
	.byte		        As3 , v084
	.byte		N02   , Ds4 
	.byte	W06
	.byte		        As3 , v072
	.byte		N02   , Ds4 
	.byte	W06
	.byte		        As3 , v100
	.byte		N02   , Ds4 
	.byte	W12
@ 033   ----------------------------------------
	.byte		        As3 
	.byte		N02   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte		N02   , Ds4 
	.byte	W06
	.byte		N28   , Gn3 , v124, gtp1
	.byte		N28   , Ds4 , v124, gtp1
	.byte	W36
	.byte		N02   , Gn3 , v100
	.byte		N02   , Ds4 
	.byte	W06
	.byte		        Gn3 , v072
	.byte		N02   , Ds4 
	.byte	W06
	.byte		N44   , Gn3 , v127, gtp1
	.byte		N44   , Ds4 , v127, gtp1
	.byte	W36
@ 034   ----------------------------------------
	.byte	W11
	.byte		VOICE , 59
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_rg_vs_gym_leader_7_B1
mus_rg_vs_gym_leader_7_B2:
	.byte		VOICE , 59
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 8 (Midi-Chn.9) ****************@

mus_rg_vs_gym_leader_8:
	.byte	KEYSH , mus_rg_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Bn4 , v056
	.byte	W06
	.byte		        Bn4 , v044
	.byte	W78
	.byte	W01
	.byte		N22   , Cs3 
	.byte	W11
@ 001   ----------------------------------------
	.byte	W13
	.byte		        Fs3 , v048
	.byte	W24
	.byte		N24   , Bn3 , v056, gtp1
	.byte	W24
	.byte	W02
	.byte		N21   , An4 , v060
	.byte	W21
	.byte		N02   , Bn4 , v052
	.byte	W06
	.byte		        Bn4 , v040
	.byte	W06
@ 002   ----------------------------------------
	.byte		        Bn4 , v044
	.byte	W06
	.byte		        Bn4 , v036
	.byte	W06
	.byte		        Bn4 , v064
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v052
	.byte	W24
	.byte		        Bn4 , v064
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v052
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v052
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v064
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
@ 003   ----------------------------------------
	.byte		        Bn4 , v052
	.byte	W18
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v052
	.byte	W24
	.byte		        Bn4 , v064
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v052
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v052
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v064
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Bn4 , v052
	.byte	W12
	.byte		        Bn4 , v064
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v052
	.byte	W24
	.byte		        Bn4 , v064
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v052
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v052
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v064
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Bn4 , v052
	.byte	W12
	.byte		        Bn4 , v064
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W36
	.byte		N03   
	.byte	W08
	.byte		        Bn4 , v052
	.byte	W08
	.byte		N03   
	.byte	W08
	.byte		        Bn4 , v064
	.byte	W08
	.byte		        Bn4 , v052
	.byte	W04
@ 006   ----------------------------------------
	.byte	W03
	.byte		N07   
	.byte	W09
mus_rg_vs_gym_leader_8_B1:
	.byte		N08   , Bn4 , v064
	.byte	W12
	.byte		N02   , Bn4 , v036
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , Bn4 , v028
	.byte	W06
	.byte		        Bn4 , v040
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		        Bn4 , v056
	.byte	W06
	.byte		N02   , Bn4 , v040
	.byte	W06
@ 007   ----------------------------------------
mus_rg_vs_gym_leader_8_007:
	.byte		N02   , Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v044
	.byte	W06
	.byte		N08   , Bn4 , v064
	.byte	W12
	.byte		N02   , Bn4 , v036
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , Bn4 , v028
	.byte	W06
	.byte		        Bn4 , v040
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		        Bn4 , v056
	.byte	W06
	.byte		N02   , Bn4 , v040
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_8_007
@ 009   ----------------------------------------
	.byte		N02   , Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v044
	.byte	W06
	.byte		N08   , Bn4 , v064
	.byte	W12
	.byte		N02   , Bn4 , v036
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , Bn4 , v028
	.byte	W06
	.byte		        Bn4 , v040
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		N03   , Bn4 , v060
	.byte	W08
	.byte		        Bn4 , v048
	.byte	W04
@ 010   ----------------------------------------
	.byte	W04
	.byte		        Bn4 , v060
	.byte	W08
	.byte		N08   , Bn4 , v064
	.byte	W12
	.byte		N02   , Bn4 , v036
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , Bn4 , v028
	.byte	W06
	.byte		        Bn4 , v040
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		        Bn4 , v056
	.byte	W06
	.byte		N02   , Bn4 , v040
	.byte	W06
@ 011   ----------------------------------------
mus_rg_vs_gym_leader_8_011:
	.byte		N02   , Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v044
	.byte	W06
	.byte		N01   , Bn4 , v064
	.byte	W06
	.byte		        Bn4 , v036
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W06
	.byte		N01   , Bn4 , v044
	.byte	W03
	.byte		        Bn4 , v028
	.byte	W03
	.byte		        Bn4 , v036
	.byte	W03
	.byte		        Bn4 , v028
	.byte	W09
	.byte		N05   , Bn4 , v064
	.byte	W06
	.byte		N02   , Bn4 , v028
	.byte	W06
	.byte		        Bn4 , v052
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		        Bn4 , v056
	.byte	W06
	.byte		N02   , Bn4 , v040
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_8_007
@ 013   ----------------------------------------
	.byte		N02   , Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v044
	.byte	W06
	.byte		N08   , Bn4 , v064
	.byte	W12
	.byte		N02   , Bn4 , v036
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , Bn4 , v028
	.byte	W06
	.byte		        Bn4 , v040
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        Bn4 , v028
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Bn4 , v044
	.byte	W06
@ 014   ----------------------------------------
	.byte		        Bn4 , v064
	.byte	W06
	.byte		        Bn4 , v052
	.byte	W06
	.byte		N08   , Bn4 , v064
	.byte	W12
	.byte		N02   , Bn4 , v036
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , Bn4 , v028
	.byte	W06
	.byte		        Bn4 , v040
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		        Bn4 , v056
	.byte	W06
	.byte		N02   , Bn4 , v040
	.byte	W06
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_8_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_8_007
@ 017   ----------------------------------------
	.byte		N02   , Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v044
	.byte	W06
	.byte		N08   , Bn4 , v064
	.byte	W12
	.byte		N02   , Bn4 , v036
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , Bn4 , v028
	.byte	W06
	.byte		        Bn4 , v064
	.byte	W06
	.byte		        Bn4 , v032
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		N03   
	.byte	W08
	.byte		        Bn4 , v052
	.byte	W04
@ 018   ----------------------------------------
	.byte	W04
	.byte		        Bn4 , v064
	.byte	W07
	.byte		N08   
	.byte	W12
	.byte		N02   , Bn4 , v036
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , Bn4 , v028
	.byte	W06
	.byte		        Bn4 , v040
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		        Bn4 , v056
	.byte	W06
	.byte		N02   , Bn4 , v040
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W01
@ 019   ----------------------------------------
	.byte	W05
	.byte		        Bn4 , v044
	.byte	W06
	.byte		N01   , Bn4 , v064
	.byte	W06
	.byte		        Bn4 , v036
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W06
	.byte		N01   , Bn4 , v044
	.byte	W03
	.byte		        Bn4 , v028
	.byte	W03
	.byte		        Bn4 , v036
	.byte	W03
	.byte		        Bn4 , v028
	.byte	W09
	.byte		N05   , Bn4 , v064
	.byte	W06
	.byte		N02   , Bn4 , v028
	.byte	W06
	.byte		        Bn4 , v052
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , Bn4 , v040
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W01
@ 020   ----------------------------------------
	.byte	W05
	.byte		        Bn4 , v044
	.byte	W06
	.byte		N08   , Bn4 , v064
	.byte	W12
	.byte		N02   , Bn4 , v036
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , Bn4 , v028
	.byte	W06
	.byte		        Bn4 , v040
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		        Bn4 , v056
	.byte	W06
	.byte		N02   , Bn4 , v040
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W01
@ 021   ----------------------------------------
	.byte	W05
	.byte		        Bn4 , v044
	.byte	W06
	.byte		N08   , Bn4 , v064
	.byte	W12
	.byte		N02   , Bn4 , v036
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , Bn4 , v028
	.byte	W06
	.byte		        Bn4 , v040
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Bn4 , v044
	.byte	W06
	.byte		        Bn4 , v064
	.byte	W01
@ 022   ----------------------------------------
	.byte	W05
	.byte		        Bn4 , v052
	.byte	W07
	.byte		N02   , Bn4 , v064
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v052
	.byte	W12
	.byte		        Bn4 , v064
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v052
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W18
	.byte		        Bn4 , v052
	.byte	W12
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v040
	.byte	W06
@ 023   ----------------------------------------
	.byte		        Bn4 , v044
	.byte	W12
	.byte		N08   , Bn4 , v064
	.byte	W12
	.byte		N02   , Bn4 , v036
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , Bn4 , v028
	.byte	W06
	.byte		        Bn4 , v040
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		        Bn4 , v056
	.byte	W06
	.byte		N02   , Bn4 , v040
	.byte	W06
@ 024   ----------------------------------------
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v044
	.byte	W06
	.byte		        Bn4 , v064
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v052
	.byte	W24
	.byte		        Bn4 , v064
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v052
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v052
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Bn4 , v060
	.byte	W06
	.byte		        Bn4 , v040
	.byte	W06
@ 025   ----------------------------------------
	.byte		        Bn4 , v060
	.byte	W12
	.byte		N08   , Bn4 , v064
	.byte	W12
	.byte		N02   , Bn4 , v036
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , Bn4 , v028
	.byte	W06
	.byte		        Bn4 , v040
	.byte	W06
	.byte		        Bn4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
@ 026   ----------------------------------------
	.byte		        Bn4 , v060
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W06
	.byte		N02   , Bn4 , v048
	.byte	W06
	.byte		        Bn4 , v060
	.byte	W12
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , Bn4 , v028
	.byte	W06
	.byte		        Bn4 , v064
	.byte	W06
	.byte		        Bn4 , v032
	.byte	W06
	.byte		N05   , Bn4 , v064
	.byte	W12
	.byte		        Bn4 , v056
	.byte	W06
	.byte		N02   , Bn4 , v040
	.byte	W06
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_8_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_8_007
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_8_007
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_8_011
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_8_007
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_8_007
@ 033   ----------------------------------------
	.byte		N02   , Bn4 , v060
	.byte	W06
	.byte		        Bn4 , v052
	.byte	W06
	.byte		N08   , Bn4 , v064
	.byte	W12
	.byte		N32   , Cn3 , v060, gtp3
	.byte	W32
	.byte	W03
	.byte		        Cn4 , v068, gtp3
	.byte	W36
	.byte	W01
@ 034   ----------------------------------------
	.byte		N11   , En4 
	.byte	W11
	.byte		VOICE , 127
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_rg_vs_gym_leader_8_B1
mus_rg_vs_gym_leader_8_B2:
	.byte		VOICE , 127
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 9 (Midi-Chn.10) ****************@

mus_rg_vs_gym_leader_9:
	.byte	KEYSH , mus_rg_vs_gym_leader_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , En1 , v116
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		N56   , Fs0 , v112, gtp3
	.byte	W84
@ 001   ----------------------------------------
	.byte	W84
	.byte		N02   , En1 , v100
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
@ 002   ----------------------------------------
	.byte		        En1 , v088
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		N36   , Fs0 , v124, gtp2
	.byte	W36
	.byte		N02   , En1 
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v104
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v104
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v124
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
@ 003   ----------------------------------------
	.byte		        En1 , v104
	.byte	W18
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v104
	.byte	W24
	.byte		        En1 , v124
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v104
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v104
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v124
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
@ 004   ----------------------------------------
	.byte		        En1 , v104
	.byte	W12
	.byte		N36   , Fs0 , v124, gtp2
	.byte	W36
	.byte		N02   , En1 
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v104
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v104
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v124
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
@ 005   ----------------------------------------
	.byte		        En1 , v104
	.byte	W12
	.byte		        En1 , v124
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N08   , Fs0 , v108
	.byte	W12
	.byte		N32   , Fs0 , v124, gtp3
	.byte	W36
	.byte		N03   , En1 
	.byte	W08
	.byte		        En1 , v100
	.byte	W04
@ 006   ----------------------------------------
	.byte	W03
	.byte		N07   
	.byte	W09
mus_rg_vs_gym_leader_9_B1:
	.byte		N44   , Fs0 , v108, gtp3
	.byte	W48
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		        En1 , v116
	.byte	W06
	.byte		N02   , En1 , v076
	.byte	W06
@ 007   ----------------------------------------
mus_rg_vs_gym_leader_9_007:
	.byte		N02   , En1 , v092
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		N08   , En1 , v124
	.byte	W12
	.byte		N02   , En1 , v068
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		        En1 , v116
	.byte	W06
	.byte		N02   , En1 , v076
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_9_007
@ 009   ----------------------------------------
	.byte		N02   , En1 , v092
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		N08   , En1 , v124
	.byte	W12
	.byte		N02   , En1 , v068
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		N03   , En1 , v120
	.byte	W08
	.byte		        En1 , v096
	.byte	W04
@ 010   ----------------------------------------
	.byte	W04
	.byte		        En1 , v116
	.byte	W08
	.byte		N08   , En1 , v124
	.byte	W12
	.byte		N32   , Fs0 , v104, gtp3
	.byte	W36
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		        En1 , v116
	.byte	W06
	.byte		N02   , En1 , v076
	.byte	W06
@ 011   ----------------------------------------
mus_rg_vs_gym_leader_9_011:
	.byte		N02   , En1 , v092
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		N01   , En1 , v124
	.byte	W06
	.byte		        En1 , v068
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W06
	.byte		N01   , En1 , v088
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		        En1 , v056
	.byte	W09
	.byte		N05   , En1 , v127
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W06
	.byte		        En1 , v104
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		        En1 , v116
	.byte	W06
	.byte		N02   , En1 , v076
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_9_007
@ 013   ----------------------------------------
	.byte		N02   , En1 , v092
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		N08   , En1 , v124
	.byte	W12
	.byte		N02   , En1 , v068
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W06
	.byte		        En1 , v076
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
@ 014   ----------------------------------------
	.byte		        En1 , v124
	.byte	W06
	.byte		        En1 , v100
	.byte	W06
	.byte		N32   , Fs0 , v108, gtp3
	.byte	W36
	.byte		N05   , En1 , v127
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		        En1 , v116
	.byte	W06
	.byte		N02   , En1 , v076
	.byte	W06
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_9_007
@ 016   ----------------------------------------
	.byte		N02   , En1 , v092
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		N32   , Fs0 , v116, gtp3
	.byte	W36
	.byte		N05   , En1 , v127
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		        En1 , v116
	.byte	W06
	.byte		N02   , En1 , v076
	.byte	W06
@ 017   ----------------------------------------
	.byte		        En1 , v092
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		N08   , En1 , v124
	.byte	W12
	.byte		N02   , En1 , v068
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		        En1 , v064
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		N03   
	.byte	W08
	.byte		        En1 , v104
	.byte	W04
@ 018   ----------------------------------------
	.byte	W04
	.byte		        En1 , v124
	.byte	W08
	.byte		N32   , Fs0 , v108, gtp3
	.byte	W32
	.byte	W03
	.byte		N05   , En1 , v127
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		        En1 , v116
	.byte	W06
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		        En1 , v092
	.byte	W01
@ 019   ----------------------------------------
	.byte	W05
	.byte		        En1 , v088
	.byte	W06
	.byte		N01   , En1 , v124
	.byte	W06
	.byte		        En1 , v068
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W06
	.byte		N01   , En1 , v088
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		        En1 , v056
	.byte	W09
	.byte		N05   , En1 , v127
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W06
	.byte		        En1 , v104
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		        En1 , v092
	.byte	W01
@ 020   ----------------------------------------
	.byte	W05
	.byte		        En1 , v088
	.byte	W06
	.byte		N08   , En1 , v124
	.byte	W12
	.byte		N02   , En1 , v068
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		        En1 , v116
	.byte	W06
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		        En1 , v092
	.byte	W01
@ 021   ----------------------------------------
	.byte	W05
	.byte		        En1 , v088
	.byte	W06
	.byte		N08   , En1 , v124
	.byte	W12
	.byte		N02   , En1 , v068
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		        En1 , v124
	.byte	W01
@ 022   ----------------------------------------
	.byte	W05
	.byte		        En1 , v100
	.byte	W07
	.byte		N28   , Fs0 , v112, gtp1
	.byte	W30
	.byte		N02   , En1 , v096
	.byte	W06
	.byte		        En1 , v104
	.byte	W06
	.byte		        En1 , v096
	.byte	W18
	.byte		        En1 , v104
	.byte	W12
	.byte		        En1 , v100
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
@ 023   ----------------------------------------
	.byte		        En1 , v092
	.byte	W12
	.byte		N08   , En1 , v124
	.byte	W12
	.byte		N02   , En1 , v068
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		        En1 , v116
	.byte	W06
	.byte		N02   , En1 , v076
	.byte	W06
@ 024   ----------------------------------------
	.byte		        En1 , v092
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		        En1 , v124
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v104
	.byte	W24
	.byte		        En1 , v124
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v104
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v104
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v116
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
@ 025   ----------------------------------------
	.byte		        En1 , v120
	.byte	W12
	.byte		N08   , En1 , v124
	.byte	W12
	.byte		N02   , En1 , v068
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		N02   , En1 , v124
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
@ 026   ----------------------------------------
	.byte		        En1 , v120
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		N28   , Fs0 , v112, gtp1
	.byte	W36
	.byte		N05   , En1 , v127
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		        En1 , v064
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		        En1 , v116
	.byte	W06
	.byte		N02   , En1 , v076
	.byte	W06
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_9_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_9_007
@ 029   ----------------------------------------
	.byte		N02   , En1 , v092
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		N08   , En1 , v124
	.byte	W12
	.byte		N02   , En1 , v068
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		N23   , Fs0 , v112
	.byte	W12
@ 030   ----------------------------------------
	.byte	W12
	.byte		N28   , Fs0 , v112, gtp1
	.byte	W36
	.byte		N05   , En1 , v127
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W06
	.byte		        En1 , v104
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		        En1 , v116
	.byte	W06
	.byte		N02   , En1 , v076
	.byte	W06
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_9_007
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_gym_leader_9_007
@ 033   ----------------------------------------
	.byte		N02   , En1 , v116
	.byte	W06
	.byte		        En1 , v104
	.byte	W06
	.byte		N40   , Fs0 , v112, gtp1
	.byte	W84
@ 034   ----------------------------------------
	.byte	W11
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_rg_vs_gym_leader_9_B1
mus_rg_vs_gym_leader_9_B2:
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_vs_gym_leader_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_rg_vs_gym_leader:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_rg_vs_gym_leader_pri	@ Priority
	.byte	mus_rg_vs_gym_leader_rev	@ Reverb.

	.word	mus_rg_vs_gym_leader_grp

	.word	mus_rg_vs_gym_leader_1
	.word	mus_rg_vs_gym_leader_2
	.word	mus_rg_vs_gym_leader_3
	.word	mus_rg_vs_gym_leader_4
	.word	mus_rg_vs_gym_leader_5
	.word	mus_rg_vs_gym_leader_6
	.word	mus_rg_vs_gym_leader_7
	.word	mus_rg_vs_gym_leader_8
	.word	mus_rg_vs_gym_leader_9

	.end
