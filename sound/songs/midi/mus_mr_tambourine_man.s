	.include "MPlayDef.s"

	.equ	mus_mr_tambourine_man_grp, voicegroup_hlw_classic_rock
	.equ	mus_mr_tambourine_man_pri, 0
	.equ	mus_mr_tambourine_man_rev, reverb_set+35
	.equ	mus_mr_tambourine_man_mvl, 95
	.equ	mus_mr_tambourine_man_key, 0
	.equ	mus_mr_tambourine_man_tbs, 1
	.equ	mus_mr_tambourine_man_exg, 1
	.equ	mus_mr_tambourine_man_cmp, 1

	.section .rodata
	.global	mus_mr_tambourine_man
	.align	2

@**************** Track 1 (Midi-Chn.2) ****************@

mus_mr_tambourine_man_1:
	.byte	KEYSH , mus_mr_tambourine_man_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 236*mus_mr_tambourine_man_tbs/2
	.byte		VOICE , 33
	.byte		VOL   , 114*mus_mr_tambourine_man_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		TIE   , Dn1 , v116
	.byte	W01
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W23
	.byte	W12
	.byte	W09
	.byte		EOT   
	.byte	W03
	.byte		N44   , An1 , v104
	.byte	W44
	.byte	W03
	.byte	W01
	.byte		N66   , An1 , v116, gtp1
	.byte	W01
@ 006   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N60   , An1 , v116, gtp3
	.byte	W24
	.byte	W01
@ 007   ----------------------------------------
	.byte	W48
	.byte		N44   , An0 , v108
	.byte	W44
	.byte	W02
	.byte		N64   , Gn0 , v116
	.byte	W01
	.byte	TEMPO , 246*mus_mr_tambourine_man_tbs/2
	.byte	W01
@ 008   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N21   , Gn0 , v104
	.byte	W24
	.byte		N44   , Gn0 , v108
	.byte	W01
@ 009   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		        Gn0 , v104
	.byte	W48
	.byte		N68   , An0 , v108
	.byte	W01
@ 010   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N22   , An0 , v104
	.byte	W24
	.byte		N42   , An0 , v104, gtp1
	.byte	W01
@ 011   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N44   , An0 , v096
	.byte	W48
	.byte		N60   , Dn1 , v100, gtp2
	.byte	W01
@ 012   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		N21   
	.byte	W24
	.byte	W01
	.byte		N44   , Dn1 , v096, gtp1
	.byte	W01
@ 013   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N42   , Dn1 , v096, gtp1
	.byte	W48
	.byte		N66   , Gn0 , v100
	.byte	W01
@ 014   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N20   
	.byte	W23
	.byte		N44   , Gn0 , v096, gtp1
	.byte	W02
@ 015   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N42   , Gn0 , v104
	.byte	W48
	.byte		N64   , Dn1 , v096
	.byte	W01
@ 016   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		N21   
	.byte	W24
	.byte	W01
	.byte		N44   , Dn1 , v096, gtp1
	.byte	W01
@ 017   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N42   , Dn1 , v100
	.byte	W48
	.byte		N64   , Gn0 , v108, gtp1
	.byte	W01
@ 018   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N21   , Gn0 , v104
	.byte	W24
	.byte		N42   , Gn0 , v100
	.byte	W01
@ 019   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N40   
	.byte	W48
	.byte		N60   , An0 , v108, gtp2
	.byte	W01
@ 020   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		N21   , An0 , v104
	.byte	W24
	.byte	W01
	.byte		N44   , An0 , v104, gtp1
	.byte	W01
@ 021   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		        An0 , v100
	.byte	W48
	.byte		N68   , An0 , v104, gtp1
	.byte	W01
@ 022   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N22   
	.byte	W24
	.byte	W01
@ 023   ----------------------------------------
	.byte	W01
	.byte		N42   , An0 , v104, gtp1
	.byte	W44
	.byte	W02
	.byte		N44   , An0 , v104, gtp1
	.byte	W48
	.byte		N60   , Gn0 , v108, gtp3
	.byte	W01
@ 024   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		N20   , Gn0 , v096
	.byte	W24
	.byte		N44   , Gn0 , v096, gtp2
	.byte	W02
@ 025   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N42   , Gn0 , v092
	.byte	W48
	.byte		N60   , An0 , v104, gtp3
	.byte	W01
@ 026   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N22   , An0 , v096
	.byte	W24
	.byte		N40   , An0 , v100, gtp1
	.byte	W01
@ 027   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N44   
	.byte	W48
	.byte		N64   , Dn1 
	.byte	W01
@ 028   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N21   
	.byte	W24
	.byte		N42   
	.byte	W01
@ 029   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N44   , Dn1 , v104
	.byte	W48
	.byte		N60   , Gn0 , v104, gtp2
	.byte	W01
@ 030   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		N22   , Gn0 , v100
	.byte	W24
	.byte	W01
	.byte		N42   , Gn0 , v100, gtp1
	.byte	W01
@ 031   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N44   , Gn0 , v104
	.byte	W48
	.byte		N64   , Dn1 , v100
	.byte	W01
@ 032   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N20   , Dn1 , v096
	.byte	W24
	.byte		N40   
	.byte	W01
@ 033   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N42   , Dn1 , v100, gtp1
	.byte	W48
	.byte	W01
	.byte		N64   , Gn0 , v100, gtp1
	.byte	W01
@ 034   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N22   
	.byte	W24
	.byte		N36   , Gn0 , v104, gtp3
	.byte	W01
@ 035   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N44   
	.byte	W48
	.byte		N60   , An0 , v104, gtp3
	.byte	W01
@ 036   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		VOL   , 102*mus_mr_tambourine_man_mvl/mxv
	.byte	W21
	.byte		N23   
	.byte	W24
	.byte	W01
	.byte		N42   , An0 , v108
	.byte	W01
@ 037   ----------------------------------------
	.byte	W12
	.byte		VOL   , 91*mus_mr_tambourine_man_mvl/mxv
	.byte	W32
	.byte	W03
	.byte		N44   , An0 , v100
	.byte	W24
	.byte		VOL   , 79*mus_mr_tambourine_man_mvl/mxv
	.byte	W24
	.byte		N64   , Dn1 , v096, gtp1
	.byte	W01
@ 038   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		VOL   , 68*mus_mr_tambourine_man_mvl/mxv
	.byte	W36
	.byte		N23   
	.byte	W23
	.byte		VOL   , 57*mus_mr_tambourine_man_mvl/mxv
	.byte	W02
	.byte		N42   , Dn1 , v096, gtp1
	.byte	W01
@ 039   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		        Dn1 , v096, gtp1
	.byte	W09
	.byte		VOL   , 45*mus_mr_tambourine_man_mvl/mxv
	.byte	W36
	.byte	W03
	.byte		N60   , Dn1 , v104, gtp3
	.byte	W01
@ 040   ----------------------------------------
	.byte	W19
	.byte		VOL   , 34*mus_mr_tambourine_man_mvl/mxv
	.byte	W48
	.byte	W03
	.byte		N23   , Dn1 , v100
	.byte	W08
	.byte		VOL   , 22*mus_mr_tambourine_man_mvl/mxv
	.byte	W17
	.byte		N44   , Dn1 , v104
	.byte	W01
@ 041   ----------------------------------------
	.byte	W42
	.byte		VOL   , 11*mus_mr_tambourine_man_mvl/mxv
	.byte	W05
	.byte		N42   , Dn1 , v108
	.byte	W48
	.byte		N60   , Gn0 , v108, gtp3
	.byte	W01
@ 042   ----------------------------------------
	.byte	W05
	.byte		VOL   , 0*mus_mr_tambourine_man_mvl/mxv
	.byte	W60
	.byte	W01
	.byte	W01
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_mr_tambourine_man_2:
	.byte	KEYSH , mus_mr_tambourine_man_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 27
	.byte		VOL   , 94*mus_mr_tambourine_man_mvl/mxv
	.byte		PAN   , c_v+21
	.byte		BEND  , c_v+0
	.byte		N42   , Dn3 , v076, gtp1
	.byte	W01
	.byte		N64   , Dn2 , v076, gtp1
	.byte		N36   , An3 , v064, gtp3
	.byte	W01
	.byte		        An2 , v064, gtp3
	.byte	W42
	.byte		N44   , An3 , v080, gtp1
	.byte	W02
	.byte		        An2 , v080, gtp1
	.byte		N15   , Dn3 , v088
	.byte	W21
	.byte		TIE   , Dn3 , v076
	.byte	W02
	.byte		        Dn2 
	.byte	W24
	.byte		N22   , Bn3 
	.byte	W01
	.byte		        Bn2 
	.byte	W02
@ 001   ----------------------------------------
	.byte	W20
	.byte		N32   , An3 , v080, gtp3
	.byte	W02
	.byte		        An2 , v080, gtp3
	.byte	W22
	.byte		N24   , Gn3 
	.byte	W02
	.byte		        Gn2 
	.byte	W22
	.byte		N23   , Fs3 , v084
	.byte	W01
	.byte		        Fs2 
	.byte	W20
	.byte		EOT   , Dn3 
	.byte	W02
	.byte		        Dn2 
	.byte	W01
	.byte		TIE   , An1 , v064
	.byte	W01
	.byte		N48   , En3 , v088, gtp1
	.byte	W01
	.byte		        En2 , v076, gtp1
	.byte		N68   , An2 , v076, gtp1
	.byte	W01
	.byte		        An3 , v076, gtp1
	.byte	W01
@ 002   ----------------------------------------
	.byte	W48
	.byte		N66   , En3 , v068
	.byte	W01
	.byte		        En2 
	.byte	W21
	.byte		N64   , Dn3 , v084, gtp1
	.byte	W01
	.byte		TIE   , An3 , v076
	.byte	W01
	.byte		N64   , An2 
	.byte	W24
@ 003   ----------------------------------------
	.byte	W21
	.byte		N18   , En3 , v072
	.byte	W01
	.byte		        En2 
	.byte	W21
	.byte		N20   , Dn3 , v076
	.byte	W01
	.byte		EOT   , An1 
	.byte		N20   , Dn2 
	.byte	W02
	.byte		N44   , An2 , v060
	.byte	W01
	.byte		TIE   , An1 
	.byte	W19
	.byte		N24   , En3 , v080
	.byte	W02
	.byte		        En2 
	.byte	W14
	.byte		EOT   , An3 
	.byte	W01
	.byte		N09   , Gn3 , v048
	.byte	W01
	.byte		        Gn2 
	.byte	W08
	.byte		N44   , Dn3 , v088, gtp3
	.byte	W01
	.byte		N66   , Dn2 , v088, gtp1
	.byte	W01
	.byte		N42   , An3 , v080
	.byte	W01
	.byte		        An2 
	.byte	W01
@ 004   ----------------------------------------
	.byte	W42
	.byte	W01
	.byte		N54   , An3 , v072
	.byte	W01
	.byte		        An2 
	.byte		N19   , Dn3 , v092
	.byte	W22
	.byte		N52   , Dn3 , v080
	.byte	W01
	.byte		N88   , Dn2 , v080, gtp1
	.byte	W24
	.byte	W02
	.byte		N24   , Bn3 , v088, gtp2
	.byte	W01
	.byte		        Bn2 , v088, gtp2
	.byte	W02
@ 005   ----------------------------------------
	.byte	W05
	.byte		EOT   , An1 
	.byte	W16
	.byte		N24   , An3 , v088, gtp3
	.byte	W01
	.byte		        An2 , v088, gtp3
	.byte	W02
	.byte		N21   , Dn3 , v068
	.byte	W20
	.byte		N23   , Gn3 , v092
	.byte	W02
	.byte		        Gn2 
	.byte	W01
	.byte		N48   , Dn3 , v068, gtp1
	.byte	W21
	.byte		N24   , Fs3 , v088, gtp1
	.byte	W01
	.byte		        Fs2 , v088, gtp1
	.byte	W24
	.byte	W01
	.byte		N44   , En3 , v092, gtp3
	.byte	W01
	.byte		        En2 , v092, gtp3
	.byte	W01
@ 006   ----------------------------------------
	.byte		N68   , An3 , v084, gtp2
	.byte	W01
	.byte		        An2 , v084, gtp2
	.byte	W01
	.byte		        Dn3 , v072, gtp2
	.byte	W44
	.byte	W01
	.byte		        En3 , v072, gtp3
	.byte	W01
	.byte		        En2 , v072, gtp3
	.byte	W24
	.byte		N66   , An3 , v088
	.byte	W01
	.byte		        An2 
	.byte	W01
	.byte		N64   , Dn3 , v068
	.byte	W22
@ 007   ----------------------------------------
	.byte	W24
	.byte		N22   , En3 , v076
	.byte	W01
	.byte		        En2 
	.byte	W22
	.byte		N20   , Dn3 , v084
	.byte		N21   , An3 , v068
	.byte	W01
	.byte		N20   , Dn2 , v084
	.byte	W01
	.byte		N21   , An2 , v068
	.byte	W21
	.byte		        En3 , v084
	.byte	W01
	.byte		        En2 
	.byte		N20   , An3 , v076
	.byte	W01
	.byte		        An2 
	.byte	W19
	.byte		N88   , Bn2 
	.byte	W01
	.byte		        Bn1 
	.byte		N44   , Dn3 , v080, gtp3
	.byte	W02
	.byte		N48   , Dn2 , v080, gtp2
	.byte		N44   , Gn3 , v088
	.byte	W01
	.byte		        Gn2 
	.byte	W01
@ 008   ----------------------------------------
	.byte	W44
	.byte		N24   , Gn3 , v080, gtp1
	.byte	W02
	.byte		N90   , Gn2 
	.byte		N60   , Dn3 , v076
	.byte	W24
	.byte	W02
	.byte		N66   , Gn3 , v096
	.byte	W19
	.byte		N60   , Bn2 , v060, gtp1
	.byte	W02
	.byte		        Bn1 , v060, gtp1
	.byte	W03
@ 009   ----------------------------------------
	.byte	W20
	.byte		N22   , Dn3 , v084
	.byte	W24
	.byte	W01
	.byte		N20   , Dn3 , v076
	.byte	W01
	.byte		N42   , Dn2 
	.byte		N22   , Gn3 , v064
	.byte	W01
	.byte		        Gn2 
	.byte	W22
	.byte		N20   , Dn3 , v076
	.byte	W01
	.byte		N22   , Gn3 , v064
	.byte	W02
	.byte		        Gn2 
	.byte	W22
	.byte		N42   , En3 , v072, gtp1
	.byte	W01
	.byte		        En2 , v072, gtp1
	.byte	W01
@ 010   ----------------------------------------
	.byte		        An3 , v068
	.byte	W01
	.byte		        An2 
	.byte	W02
	.byte		N64   , Cs3 , v080, gtp1
	.byte	W40
	.byte		N68   , En3 , v080, gtp2
	.byte	W01
	.byte		N96   , En2 
	.byte		N44   , An3 , v072, gtp1
	.byte	W01
	.byte		        An2 , v072, gtp1
	.byte	W24
	.byte	W02
	.byte		N42   , Dn3 , v084
	.byte	W22
	.byte		N44   , An3 , v064, gtp1
	.byte	W02
	.byte		        An2 , v064, gtp1
	.byte	W01
@ 011   ----------------------------------------
	.byte	W20
	.byte		N21   , En3 , v084
	.byte	W03
	.byte		N44   , Cs3 , v076
	.byte	W22
	.byte		N32   , En3 , v068, gtp2
	.byte	W01
	.byte		        En2 , v068, gtp2
	.byte		N24   , An3 , v060
	.byte	W01
	.byte		        An2 
	.byte	W24
	.byte		N19   , Cs3 , v080
	.byte	W01
	.byte		N18   , An3 , v064
	.byte	W01
	.byte		        An2 
	.byte	W18
	.byte		N24   , Dn3 , v068, gtp2
	.byte	W04
	.byte		N92   , Dn2 , v072, gtp2
	.byte	W01
@ 012   ----------------------------------------
	.byte		N40   , An3 , v076, gtp1
	.byte	W01
	.byte		        An2 , v076, gtp1
	.byte		N66   , Fs3 , v052
	.byte	W23
	.byte		N17   , Dn3 , v072
	.byte	W19
	.byte		N48   , An3 , v084, gtp1
	.byte	W01
	.byte		        An2 , v084, gtp1
	.byte	W03
	.byte		N24   , Dn3 , v068
	.byte	W24
	.byte		TIE   , Fs3 , v092
	.byte	W02
	.byte		N16   , Dn3 , v068
	.byte	W20
	.byte		N20   , Dn3 , v072
	.byte	W01
	.byte		N44   , An3 , v064, gtp3
	.byte	W01
	.byte		        Dn2 , v072, gtp2
	.byte	W01
@ 013   ----------------------------------------
	.byte		        An2 , v064, gtp3
	.byte	W22
	.byte		N20   , Dn3 , v080
	.byte	W24
	.byte		N22   
	.byte	W01
	.byte		N44   , Dn2 , v080, gtp3
	.byte		N21   , An3 , v076
	.byte	W01
	.byte		        An2 
	.byte	W24
	.byte		EOT   , Fs3 
	.byte		N22   , Gn3 , v064
	.byte	W01
	.byte		        Gn2 
	.byte		N14   , Dn3 , v044
	.byte	W19
	.byte		TIE   , Bn2 , v072
	.byte	W01
	.byte		        Bn1 
	.byte	W02
	.byte		N44   , Gn3 , v080
	.byte	W01
@ 014   ----------------------------------------
	.byte		TIE   , Dn2 , v072
	.byte		N44   , Gn2 , v080
	.byte	W02
	.byte		N68   , Dn3 , v072, gtp2
	.byte	W42
	.byte	W01
	.byte		N22   , Gn3 
	.byte	W01
	.byte		N96   , Gn2 
	.byte	W24
	.byte	W01
	.byte		N68   , Gn3 , v096, gtp1
	.byte	W03
	.byte		N42   , Dn3 , v080
	.byte	W22
@ 015   ----------------------------------------
	.byte	W22
	.byte		N22   
	.byte	W23
	.byte		EOT   , Dn2 
	.byte	W01
	.byte		N18   , Dn3 , v072
	.byte	W01
	.byte		N44   , Dn2 , v072, gtp1
	.byte		N21   , Gn3 , v060
	.byte	W01
	.byte		N24   , Gn2 , v060, gtp1
	.byte	W15
	.byte		EOT   , Bn2 
	.byte	W01
	.byte		        Bn1 
	.byte	W08
	.byte		N19   , Dn3 , v076
	.byte	W01
	.byte		N17   , Gn3 , v060
	.byte	W02
	.byte		        Gn2 
	.byte	W19
	.byte		TIE   , Dn2 , v080
	.byte	W01
	.byte		N44   , An3 , v084
	.byte	W01
@ 016   ----------------------------------------
	.byte		        An2 
	.byte	W02
	.byte		        Dn3 , v080
	.byte	W42
	.byte		N72   , An3 , v072, gtp1
	.byte	W02
	.byte		        An2 , v072, gtp1
	.byte	W02
	.byte		N23   , Dn3 , v068
	.byte	W23
	.byte		TIE   , Fs3 , v092
	.byte	W03
	.byte		N40   , Dn3 , v076
	.byte	W22
@ 017   ----------------------------------------
	.byte	W23
	.byte		N20   , Dn3 , v084
	.byte		N23   , An3 , v064
	.byte	W01
	.byte		        An2 
	.byte	W22
	.byte		EOT   , Dn2 
	.byte	W01
	.byte		N20   , Dn3 , v068
	.byte	W01
	.byte		        Dn2 
	.byte		N22   , An3 , v072
	.byte	W01
	.byte		        An2 
	.byte	W22
	.byte		N18   , Dn3 , v068
	.byte		N20   , Gn3 , v072
	.byte	W01
	.byte		N18   , Dn2 , v068
	.byte		N20   , Gn2 , v072
	.byte	W02
	.byte		EOT   , Fs3 
	.byte	W18
	.byte		N92   , Bn2 
	.byte	W01
	.byte		        Bn1 
	.byte	W02
	.byte		N44   , Dn3 , v076
	.byte	W01
@ 018   ----------------------------------------
	.byte		        Dn2 
	.byte		TIE   , Gn2 
	.byte	W02
	.byte		N64   , Gn3 , v060
	.byte	W44
	.byte	W02
	.byte		N22   , Dn3 
	.byte	W02
	.byte		N44   , Dn2 , v060, gtp3
	.byte	W22
	.byte		N42   , Gn3 , v092, gtp1
	.byte	W03
	.byte		N36   , Dn3 , v076, gtp2
	.byte	W19
	.byte		N44   , Bn2 , v060
	.byte	W01
	.byte		        Bn1 
	.byte	W01
@ 019   ----------------------------------------
	.byte	W19
	.byte		EOT   , Gn2 
	.byte	W02
	.byte		N22   , Dn3 , v084
	.byte	W02
	.byte		N23   , Gn3 , v068
	.byte	W01
	.byte		        Gn2 
	.byte	W21
	.byte		N17   , Bn2 
	.byte	W01
	.byte		        Bn1 
	.byte		N42   , Dn3 , v072
	.byte	W01
	.byte		        Dn2 
	.byte	W01
	.byte		N22   , Gn3 , v068
	.byte	W01
	.byte		        Gn2 
	.byte	W21
	.byte		N20   , Bn3 , v076
	.byte	W01
	.byte		        Bn2 
	.byte	W01
	.byte		N18   , Gn3 , v064
	.byte	W01
	.byte		        Gn2 
	.byte	W21
	.byte		N44   , En3 , v072, gtp2
	.byte	W01
	.byte		        En2 , v072, gtp2
	.byte	W01
@ 020   ----------------------------------------
	.byte		        An3 , v080, gtp1
	.byte	W01
	.byte		        An2 , v080, gtp1
	.byte	W02
	.byte		N60   , Cs3 , v068, gtp1
	.byte	W42
	.byte	W01
	.byte		N66   , En3 , v064
	.byte	W01
	.byte		N90   , En2 , v064, gtp1
	.byte		N23   , An3 
	.byte	W01
	.byte		        An2 
	.byte	W24
	.byte		N92   , Dn3 , v096
	.byte		N64   , An3 , v064, gtp1
	.byte	W02
	.byte		        An2 , v064, gtp1
	.byte	W22
@ 021   ----------------------------------------
	.byte	W21
	.byte		N18   , En3 , v096
	.byte	W22
	.byte		N48   , En3 , v072, gtp2
	.byte	W01
	.byte		        En2 , v072, gtp2
	.byte		N24   , An3 , v060, gtp3
	.byte	W02
	.byte		        An2 , v060, gtp3
	.byte	W24
	.byte	W02
	.byte		N19   , Dn3 , v088
	.byte	W01
	.byte		N21   , An3 , v064
	.byte	W01
	.byte		        An2 
	.byte	W18
	.byte		N24   , Cs3 , v076
	.byte	W03
	.byte		N44   , En3 , v072, gtp1
	.byte	W01
@ 022   ----------------------------------------
	.byte		        En2 , v072, gtp1
	.byte		N22   , An3 , v068
	.byte	W01
	.byte		        An2 
	.byte	W22
	.byte		N44   , Cs3 , v084
	.byte		N22   , An3 , v060
	.byte	W02
	.byte		        An2 
	.byte	W21
	.byte		N68   , En3 , v068
	.byte	W02
	.byte		N88   , En2 , v068, gtp1
	.byte		N22   , An3 , v060
	.byte	W01
	.byte		        An2 
	.byte	W22
	.byte		N92   , Dn3 , v092
	.byte	W01
	.byte		N68   , An3 , v060, gtp1
	.byte	W01
	.byte		        An2 , v060, gtp1
	.byte	W23
@ 023   ----------------------------------------
	.byte	W21
	.byte		N21   , En3 , v096
	.byte	W24
	.byte		N22   , En3 , v068
	.byte	W01
	.byte		        En2 
	.byte	W01
	.byte		N23   , An3 , v064
	.byte	W01
	.byte		        An2 
	.byte	W23
	.byte		N16   , Dn3 , v080
	.byte	W01
	.byte		N18   , An3 , v068
	.byte	W02
	.byte		        An2 
	.byte	W19
	.byte		N92   , Dn2 , v076, gtp3
	.byte	W01
	.byte		N44   , Gn2 , v076, gtp3
	.byte	W02
@ 024   ----------------------------------------
	.byte		N68   , Dn3 , v072, gtp2
	.byte	W01
	.byte		N42   , Gn3 , v064
	.byte	W44
	.byte	W01
	.byte		N22   , Gn3 , v068
	.byte	W01
	.byte		N68   , Gn2 
	.byte	W24
	.byte	W01
	.byte		N36   , Dn3 , v076, gtp2
	.byte		N42   , Gn3 , v096
	.byte	W24
@ 025   ----------------------------------------
	.byte	W22
	.byte		N20   , Dn3 , v084
	.byte	W01
	.byte		N44   , Gn3 , v064, gtp3
	.byte	W01
	.byte		        Gn2 , v064, gtp3
	.byte	W22
	.byte		N19   , Dn3 , v068
	.byte	W01
	.byte		N36   , Dn2 , v068, gtp3
	.byte	W23
	.byte		N48   , Dn3 , v072, gtp1
	.byte	W01
	.byte		N14   , Gn3 , v064
	.byte	W01
	.byte		        Gn2 
	.byte	W21
	.byte		N68   , En3 , v072, gtp1
	.byte	W01
	.byte		N92   , En2 , v072, gtp3
	.byte	W01
	.byte		N42   , An3 , v064, gtp1
	.byte	W01
@ 026   ----------------------------------------
	.byte		        An2 , v064, gtp1
	.byte	W24
	.byte	W01
	.byte		N21   , Dn3 , v060
	.byte	W20
	.byte		N72   , An3 , v072, gtp1
	.byte	W01
	.byte		        An2 , v072, gtp1
	.byte	W02
	.byte		N23   , Dn3 , v060
	.byte	W23
	.byte		N19   , En3 , v088
	.byte	W02
	.byte		N40   , Dn3 , v068
	.byte	W20
	.byte		N48   , En3 , v060
	.byte	W02
	.byte		        En2 
	.byte	W01
@ 027   ----------------------------------------
	.byte	W23
	.byte		N44   , Dn3 , v084, gtp3
	.byte	W01
	.byte		N21   , An3 , v060
	.byte	W01
	.byte		        An2 
	.byte	W22
	.byte		N22   , En3 , v068
	.byte	W01
	.byte		        En2 
	.byte	W01
	.byte		N23   , An3 , v060
	.byte	W01
	.byte		        An2 
	.byte	W22
	.byte		N18   , Dn3 , v072
	.byte	W02
	.byte		N16   , Gn3 , v064
	.byte	W01
	.byte		        Gn2 
	.byte	W19
	.byte		N68   , Dn3 , v076, gtp2
	.byte	W01
	.byte		N92   , Dn2 , v076, gtp2
	.byte	W01
@ 028   ----------------------------------------
	.byte		N44   , An3 , v084, gtp2
	.byte	W01
	.byte		        An2 , v084, gtp2
	.byte	W44
	.byte	W03
	.byte		        An3 , v068, gtp1
	.byte	W01
	.byte		N42   , An2 , v068, gtp1
	.byte	W22
	.byte		N92   , Fs3 , v092, gtp2
	.byte	W02
	.byte		N17   , Dn3 , v072
	.byte	W21
	.byte		N21   , Dn3 , v068
	.byte		N44   , An3 , v064, gtp3
	.byte	W01
	.byte		        Dn2 , v068, gtp2
	.byte		N44   , An2 , v064, gtp3
	.byte	W01
@ 029   ----------------------------------------
	.byte	W23
	.byte		N19   , Dn3 , v084
	.byte	W24
	.byte		N92   , Dn2 , v072, gtp1
	.byte		N22   , An3 , v068
	.byte	W01
	.byte		        An2 
	.byte	W02
	.byte		N18   , Dn3 
	.byte	W24
	.byte		N66   , Dn3 , v072
	.byte		N21   , Gn3 , v064
	.byte	W02
	.byte		        Gn2 
	.byte	W20
@ 030   ----------------------------------------
	.byte	W01
	.byte		N44   , Gn3 , v072
	.byte	W01
	.byte		        Gn2 
	.byte	W44
	.byte		N23   , Dn3 , v064
	.byte	W01
	.byte		N44   , Dn2 , v064, gtp3
	.byte		N21   , Gn3 , v072
	.byte	W01
	.byte		N68   , Gn2 , v072, gtp3
	.byte	W24
	.byte		N44   , Gn3 , v092, gtp1
	.byte	W02
	.byte		N17   , Dn3 , v072
	.byte	W21
	.byte		N21   , Dn3 , v064
	.byte	W01
@ 031   ----------------------------------------
	.byte		N44   , Dn2 , v064, gtp1
	.byte	W24
	.byte		N18   , Dn3 , v080
	.byte		N21   , Gn3 , v060
	.byte	W02
	.byte		        Gn2 
	.byte	W20
	.byte		N22   , Dn3 , v072
	.byte	W02
	.byte		N44   , Dn2 , v072, gtp1
	.byte		N23   , Gn3 , v064
	.byte	W01
	.byte		        Gn2 
	.byte	W22
	.byte		N18   , Dn3 , v080
	.byte	W01
	.byte		N14   , Gn3 , v064
	.byte	W02
	.byte		        Gn2 
	.byte	W21
	.byte		N92   , Dn2 , v072, gtp2
	.byte		N44   , An3 , v076
	.byte	W01
@ 032   ----------------------------------------
	.byte		        An2 
	.byte	W02
	.byte		N42   , Dn3 , v068, gtp1
	.byte	W42
	.byte	W01
	.byte		N72   , An3 , v064
	.byte	W01
	.byte		        An2 
	.byte	W02
	.byte		N24   , Dn3 
	.byte	W23
	.byte		N90   , Fs3 , v092, gtp1
	.byte	W02
	.byte		N17   , Dn3 , v072
	.byte	W21
	.byte		N20   , Dn3 , v064
	.byte	W01
	.byte		N44   , Dn2 , v064, gtp2
	.byte	W01
@ 033   ----------------------------------------
	.byte	W22
	.byte		N20   , Dn3 , v076
	.byte	W02
	.byte		N22   , An3 , v060
	.byte	W01
	.byte		        An2 
	.byte	W21
	.byte		N23   , Dn3 , v072
	.byte	W01
	.byte		N44   , Dn2 , v072, gtp2
	.byte		N20   , An3 , v064
	.byte	W01
	.byte		        An2 
	.byte	W21
	.byte		        Gn3 
	.byte	W01
	.byte		        Gn2 
	.byte	W03
	.byte		N17   , Dn3 , v076
	.byte	W21
	.byte		N48   , Dn3 , v072
	.byte	W02
@ 034   ----------------------------------------
	.byte		N96   , Dn2 
	.byte		N44   , Gn3 
	.byte	W01
	.byte		        Gn2 
	.byte	W44
	.byte	W01
	.byte		N22   , Gn3 , v064
	.byte	W01
	.byte		N72   , Gn2 , v064, gtp1
	.byte	W02
	.byte		N23   , Dn3 , v068
	.byte	W23
	.byte		N44   , Gn3 , v092
	.byte	W03
	.byte		N17   , Dn3 , v076
	.byte	W21
@ 035   ----------------------------------------
	.byte	W01
	.byte		N20   , Dn3 , v060
	.byte	W01
	.byte		N44   , Dn2 , v060, gtp2
	.byte	W22
	.byte		N20   , Dn3 , v084
	.byte	W01
	.byte		N22   , Gn3 , v064
	.byte	W01
	.byte		        Gn2 
	.byte	W23
	.byte		N21   , Dn3 , v068
	.byte	W01
	.byte		N40   , Dn2 
	.byte		N24   , Gn3 
	.byte	W02
	.byte		        Gn2 
	.byte	W23
	.byte		N19   , Dn3 , v076
	.byte	W01
	.byte		N16   , Gn3 , v064
	.byte	W02
	.byte		        Gn2 
	.byte	W15
	.byte		N44   , En3 , v068, gtp3
	.byte	W01
	.byte		TIE   , En2 
	.byte		N44   , An3 , v076, gtp1
	.byte	W01
	.byte		        An2 , v076, gtp1
	.byte	W01
@ 036   ----------------------------------------
	.byte	W01
	.byte		N68   , Cs3 , v072
	.byte	W44
	.byte		N72   , An3 , v068, gtp1
	.byte	W01
	.byte		N44   , An2 , v068, gtp2
	.byte	W03
	.byte		VOL   , 84*mus_mr_tambourine_man_mvl/mxv
	.byte		N20   , En3 , v060
	.byte	W22
	.byte		N36   , Cs3 , v076, gtp3
	.byte	W01
	.byte		N21   , En3 , v096
	.byte	W23
	.byte		EOT   , En2 
	.byte	W01
@ 037   ----------------------------------------
	.byte		N44   , En3 , v064
	.byte	W01
	.byte		        En2 
	.byte	W01
	.byte		N19   , An2 , v060
	.byte	W01
	.byte		TIE   , An1 
	.byte	W09
	.byte		VOL   , 75*mus_mr_tambourine_man_mvl/mxv
	.byte	W12
	.byte		N44   , Cs3 , v084, gtp1
	.byte		N22   , An3 , v064
	.byte	W01
	.byte		        An2 
	.byte	W20
	.byte		N44   , En3 , v072
	.byte	W02
	.byte		        En2 
	.byte	W01
	.byte		N19   , An3 , v068
	.byte	W01
	.byte		        An2 
	.byte	W22
	.byte		VOL   , 65*mus_mr_tambourine_man_mvl/mxv
	.byte	W02
	.byte		N20   , Cs3 , v080
	.byte		N14   , Gn3 , v060
	.byte	W01
	.byte		        Gn2 
	.byte	W22
@ 038   ----------------------------------------
	.byte		N92   , Dn2 , v072, gtp2
	.byte	W01
	.byte		N44   , An3 , v080, gtp1
	.byte	W01
	.byte		        An2 , v080, gtp1
	.byte	W02
	.byte		        Dn3 , v076, gtp1
	.byte		N17   , Fs3 , v060
	.byte	W21
	.byte		N40   , Fs3 , v064, gtp1
	.byte	W09
	.byte		VOL   , 56*mus_mr_tambourine_man_mvl/mxv
	.byte	W13
	.byte		N68   , An3 , v076, gtp3
	.byte	W02
	.byte		        An2 , v076, gtp3
	.byte	W02
	.byte		N21   , Dn3 , v068
	.byte	W22
	.byte		TIE   , En3 , v096
	.byte	W01
	.byte		N17   , Dn3 , v068
	.byte	W19
	.byte		VOL   , 47*mus_mr_tambourine_man_mvl/mxv
	.byte	W03
@ 039   ----------------------------------------
	.byte		N40   , Dn3 , v064, gtp1
	.byte	W01
	.byte		N44   , Dn2 , v064, gtp1
	.byte	W24
	.byte		N22   , An3 
	.byte	W01
	.byte		        An2 
	.byte	W21
	.byte		N20   , Dn3 , v068
	.byte	W02
	.byte		N90   , Dn2 , v068, gtp1
	.byte		N90   , An3 , v064, gtp1
	.byte	W01
	.byte		        An2 , v064, gtp1
	.byte	W06
	.byte		VOL   , 37*mus_mr_tambourine_man_mvl/mxv
	.byte	W16
	.byte		N17   , Dn3 
	.byte	W19
	.byte		N44   , Dn3 , v088, gtp1
	.byte	W02
	.byte		N76   , Fs3 
	.byte	W01
	.byte		EOT   , En3 
	.byte	W02
@ 040   ----------------------------------------
	.byte	W19
	.byte		VOL   , 28*mus_mr_tambourine_man_mvl/mxv
	.byte	W24
	.byte	W01
	.byte		N24   , Dn3 , v068, gtp1
	.byte		N72   , An3 , v068, gtp3
	.byte	W02
	.byte		N48   , Dn2 
	.byte		N72   , An2 , v068, gtp3
	.byte	W24
	.byte	W01
	.byte		N44   , Gn3 , v100
	.byte	W02
	.byte		N18   , Dn3 , v076
	.byte	W05
	.byte		VOL   , 18*mus_mr_tambourine_man_mvl/mxv
	.byte	W13
	.byte		EOT   , An1 
	.byte	W04
	.byte		N22   , Dn3 , v064
	.byte	W01
@ 041   ----------------------------------------
	.byte		N42   , Dn2 , v064, gtp1
	.byte	W22
	.byte		        Gn3 , v072
	.byte	W03
	.byte		N17   , An3 , v056
	.byte	W01
	.byte		N15   , Dn3 , v068
	.byte	W01
	.byte		N17   , An2 , v056
	.byte	W15
	.byte		VOL   , 9*mus_mr_tambourine_man_mvl/mxv
	.byte	W02
	.byte		N22   , Dn3 , v068
	.byte	W01
	.byte		N17   , An3 
	.byte	W01
	.byte		N42   , Dn2 , v068, gtp1
	.byte		N17   , An2 
	.byte	W24
	.byte	W01
	.byte		N15   , Dn3 
	.byte	W01
	.byte		N17   , Gn3 , v060
	.byte	W01
	.byte		        Gn2 
	.byte	W15
	.byte		N72   , Bn2 , v056, gtp1
	.byte	W02
	.byte		        Bn1 
	.byte	W01
	.byte		N68   , Dn2 , v060, gtp2
	.byte	W01
	.byte		N52   , Gn2 , v072, gtp1
	.byte	W01
	.byte		N68   , Dn3 
	.byte	W01
	.byte		N44   , Gn3 , v068, gtp3
	.byte	W02
@ 042   ----------------------------------------
	.byte	W05
	.byte		VOL   , 0*mus_mr_tambourine_man_mvl/mxv
	.byte	W44
	.byte		N16   , Gn3 , v072
	.byte	W02
	.byte		N15   , Gn2 
	.byte	W15
	.byte	W01
	.byte	FINE

@**************** Track 3 (Midi-Chn.4) ****************@

mus_mr_tambourine_man_3:
	.byte	KEYSH , mus_mr_tambourine_man_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 71
	.byte		VOL   , 113*mus_mr_tambourine_man_mvl/mxv
	.byte		PAN   , c_v-10
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
	.byte	W92
	.byte	W01
	.byte		N90   , Dn3 , v124
	.byte	W03
@ 008   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N44   
	.byte	W01
@ 009   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N21   , Cs3 
	.byte	W24
	.byte	W01
	.byte		N44   , Bn2 , v124, gtp1
	.byte	W24
@ 010   ----------------------------------------
	.byte	W23
	.byte		N42   , An2 
	.byte	W44
	.byte	W03
	.byte		        An2 , v127
	.byte	W24
	.byte	W02
@ 011   ----------------------------------------
	.byte	W22
	.byte		N66   , An2 , v120, gtp1
	.byte	W72
	.byte	W01
	.byte		N40   , An2 , v127, gtp1
	.byte	W01
@ 012   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		N22   , Bn2 
	.byte	W24
	.byte	W03
	.byte		N68   , An2 , v127, gtp1
	.byte	W24
@ 013   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N23   , Fs2 
	.byte	W24
	.byte	W02
	.byte		N96   , Dn2 , v124
	.byte	W24
@ 014   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		N22   , An2 
	.byte	W02
@ 015   ----------------------------------------
	.byte	W24
	.byte		N44   , An2 , v120
	.byte	W48
	.byte		N44   
	.byte	W24
@ 016   ----------------------------------------
	.byte	W24
	.byte		N42   , Bn2 , v124
	.byte	W44
	.byte	W02
	.byte		N84   , An2 , v127, gtp1
	.byte	W24
	.byte	W02
@ 017   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N21   , An2 , v124
	.byte	W24
	.byte	W01
@ 018   ----------------------------------------
	.byte		N20   , Bn2 
	.byte	W23
	.byte		N42   , An2 , v127, gtp1
	.byte	W44
	.byte	W03
	.byte		N44   , Gn2 , v124
	.byte	W24
	.byte	W02
@ 019   ----------------------------------------
	.byte	W22
	.byte		N60   , Fs2 , v124, gtp1
	.byte	W72
	.byte		N22   , Fs2 , v127
	.byte	W02
@ 020   ----------------------------------------
	.byte	W23
	.byte		N44   , En2 , v120
	.byte	W48
	.byte	W01
	.byte		TIE   , En2 , v127
	.byte	W24
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W03
	.byte		EOT   
	.byte	W92
	.byte	W01
@ 023   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		N92   , Dn3 , v127, gtp1
	.byte	W02
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte		N44   , Dn3 , v124
	.byte	W44
	.byte	W03
	.byte		N21   , Cs3 
	.byte	W24
	.byte		N44   , Bn2 , v120
	.byte	W24
	.byte	W01
@ 026   ----------------------------------------
	.byte	W23
	.byte		N42   , An2 
	.byte	W44
	.byte	W03
	.byte		N44   , An2 , v124
	.byte	W24
	.byte	W02
@ 027   ----------------------------------------
	.byte	W22
	.byte		N68   
	.byte	W72
	.byte		N44   , An2 , v124, gtp1
	.byte	W02
@ 028   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N21   , Bn2 
	.byte	W24
	.byte		N68   , An2 , v124, gtp1
	.byte	W24
	.byte	W01
@ 029   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N21   , Fs2 
	.byte	W24
	.byte	W01
	.byte		N92   , Dn2 , v124, gtp1
	.byte	W24
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte		N20   , An2 
	.byte	W24
	.byte		N42   , An2 , v124, gtp1
	.byte	W48
	.byte		        An2 , v116
	.byte	W24
@ 032   ----------------------------------------
	.byte	W22
	.byte		N44   , Bn2 , v120, gtp2
	.byte	W48
	.byte	W03
	.byte		N68   , An2 , v124, gtp1
	.byte	W23
@ 033   ----------------------------------------
	.byte	W48
	.byte		N44   , Fs2 , v124, gtp1
	.byte	W48
@ 034   ----------------------------------------
	.byte		N20   , Gn2 , v116
	.byte	W23
	.byte		N60   , Fs2 , v124
	.byte	W68
	.byte	W02
	.byte		N42   , En2 , v124, gtp1
	.byte	W03
@ 035   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N44   , Dn2 , v120, gtp2
	.byte	W48
	.byte		TIE   , En2 , v124
	.byte	W02
@ 036   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		VOL   , 101*mus_mr_tambourine_man_mvl/mxv
	.byte	W44
	.byte	W03
@ 037   ----------------------------------------
	.byte	W12
	.byte		        90*mus_mr_tambourine_man_mvl/mxv
	.byte	W08
	.byte		EOT   
	.byte	W01
	.byte		N22   , Fs2 
	.byte	W24
	.byte	W02
	.byte		N44   , En2 
	.byte	W24
	.byte		VOL   , 79*mus_mr_tambourine_man_mvl/mxv
	.byte	W23
	.byte		TIE   , Dn2 
	.byte	W02
@ 038   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		VOL   , 67*mus_mr_tambourine_man_mvl/mxv
	.byte	W56
	.byte	W03
	.byte		        56*mus_mr_tambourine_man_mvl/mxv
	.byte	W03
@ 039   ----------------------------------------
	.byte	W04
	.byte		EOT   
	.byte	W52
	.byte		VOL   , 45*mus_mr_tambourine_man_mvl/mxv
	.byte	W40
@ 040   ----------------------------------------
	.byte	W19
	.byte		        33*mus_mr_tambourine_man_mvl/mxv
	.byte	W56
	.byte	W03
	.byte		        22*mus_mr_tambourine_man_mvl/mxv
	.byte	W18
@ 041   ----------------------------------------
	.byte	W42
	.byte		        11*mus_mr_tambourine_man_mvl/mxv
	.byte	W52
	.byte	W01
	.byte		N20   , Dn3 , v127
	.byte	W01
@ 042   ----------------------------------------
	.byte	W05
	.byte		VOL   , 0*mus_mr_tambourine_man_mvl/mxv
	.byte	W19
	.byte		N40   , Dn3 , v127, gtp1
	.byte	W42
	.byte	W01
	.byte	FINE

@**************** Track 4 (Midi-Chn.6) ****************@

mus_mr_tambourine_man_4:
	.byte	KEYSH , mus_mr_tambourine_man_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 27
	.byte		VOL   , 94*mus_mr_tambourine_man_mvl/mxv
	.byte		PAN   , c_v-22
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
	.byte	W44
	.byte	W01
	.byte		N18   , Bn3 , v096
	.byte	W01
	.byte		N17   , Dn4 , v092
	.byte		N17   , Gn4 , v084
	.byte	W48
	.byte	W02
@ 009   ----------------------------------------
	.byte	W21
	.byte		        Bn3 , v092
	.byte	W01
	.byte		N16   , Dn4 , v096
	.byte	W01
	.byte		N15   , Gn4 , v088
	.byte	W72
	.byte	W01
@ 010   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N19   , An3 , v092
	.byte		N19   , Cs4 , v096
	.byte	W01
	.byte		N18   , En4 , v084
	.byte	W48
@ 011   ----------------------------------------
	.byte	W22
	.byte		N21   , An3 , v088
	.byte		N18   , Cs4 , v096
	.byte	W01
	.byte		        En4 , v088
	.byte	W72
	.byte	W01
@ 012   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N19   , An3 
	.byte		N19   , Dn4 , v096
	.byte	W02
	.byte		        Fs4 , v092
	.byte	W48
@ 013   ----------------------------------------
	.byte	W22
	.byte		N22   , An3 , v088
	.byte	W01
	.byte		N19   , Dn4 , v096
	.byte	W01
	.byte		N17   , Fs4 , v092
	.byte	W72
@ 014   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N22   , Bn3 , v088
	.byte		N18   , Dn4 , v096
	.byte	W01
	.byte		N20   , Gn4 , v092
	.byte	W48
@ 015   ----------------------------------------
	.byte	W22
	.byte		N21   , Bn3 , v088
	.byte	W01
	.byte		N17   , Dn4 , v096
	.byte		N18   , Gn4 , v088
	.byte	W72
	.byte	W01
@ 016   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N19   , An3 , v084
	.byte		N19   , Dn4 , v092
	.byte	W01
	.byte		        Fs4 , v088
	.byte	W48
	.byte	W01
@ 017   ----------------------------------------
	.byte	W22
	.byte		N18   , An3 
	.byte		N18   , Dn4 , v096
	.byte	W01
	.byte		        Fs4 , v088
	.byte	W72
	.byte	W01
@ 018   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N19   , Bn3 , v084
	.byte	W01
	.byte		N18   , Dn4 , v096
	.byte		N18   , Gn4 , v092
	.byte	W48
	.byte	W01
@ 019   ----------------------------------------
	.byte	W22
	.byte		N20   , Bn3 , v088
	.byte	W01
	.byte		N15   , Dn4 , v092
	.byte		N16   , Gn4 
	.byte	W72
	.byte	W01
@ 020   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N18   , An3 
	.byte	W01
	.byte		N17   , Cs4 , v096
	.byte		N17   , En4 , v088
	.byte	W48
	.byte	W01
@ 021   ----------------------------------------
	.byte	W23
	.byte		N18   , An3 , v092
	.byte	W01
	.byte		N21   , Cs4 , v096
	.byte		N18   , En4 , v088
	.byte	W72
@ 022   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N19   , An3 
	.byte	W01
	.byte		N18   , Cs4 , v096
	.byte	W01
	.byte		        En4 , v092
	.byte	W48
@ 023   ----------------------------------------
	.byte	W22
	.byte		N17   , An3 
	.byte	W01
	.byte		N16   , Cs4 , v100
	.byte		N16   , En4 , v092
	.byte	W72
	.byte	W01
@ 024   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N19   , Bn3 , v096
	.byte		N19   , Dn4 
	.byte	W01
	.byte		        Gn4 , v088
	.byte	W48
	.byte	W01
@ 025   ----------------------------------------
	.byte	W22
	.byte		N17   , Bn3 
	.byte		N17   , Dn4 , v092
	.byte	W01
	.byte		N16   , Gn4 , v088
	.byte	W72
	.byte	W01
@ 026   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N19   , An3 
	.byte	W01
	.byte		        Cs4 , v096
	.byte		N18   , En4 , v088
	.byte	W48
	.byte	W01
@ 027   ----------------------------------------
	.byte	W23
	.byte		N19   , Cs4 , v096
	.byte		N18   , En4 , v092
	.byte	W72
	.byte	W01
@ 028   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N21   , An3 , v084
	.byte		N20   , Dn4 , v092
	.byte	W01
	.byte		        Fs4 
	.byte	W48
	.byte	W01
@ 029   ----------------------------------------
	.byte	W22
	.byte		N19   , An3 , v084
	.byte	W01
	.byte		        Dn4 , v092
	.byte	W01
	.byte		        Fs4 
	.byte	W72
@ 030   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N17   , Bn3 , v084
	.byte		N14   , Dn4 , v092
	.byte	W01
	.byte		N16   , Gn4 , v088
	.byte	W48
	.byte	W01
@ 031   ----------------------------------------
	.byte	W22
	.byte		N19   , Bn3 , v084
	.byte	W01
	.byte		N14   , Dn4 , v092
	.byte		N18   , Gn4 
	.byte	W72
	.byte	W01
@ 032   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N21   , An3 , v088
	.byte	W01
	.byte		N19   , Dn4 , v096
	.byte		N19   , Fs4 , v092
	.byte	W48
@ 033   ----------------------------------------
	.byte	W23
	.byte		        An3 , v084
	.byte		N19   , Dn4 , v092
	.byte	W01
	.byte		N22   , Fs4 
	.byte	W72
@ 034   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		        Bn3 , v088
	.byte		N18   , Dn4 , v092
	.byte	W02
	.byte		N19   , Gn4 , v088
	.byte	W48
@ 035   ----------------------------------------
	.byte	W23
	.byte		N18   , Bn3 
	.byte		N18   , Dn4 , v096
	.byte	W01
	.byte		N17   , Gn4 , v092
	.byte	W72
@ 036   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N19   , An3 , v080
	.byte	W01
	.byte		N18   , Cs4 , v096
	.byte		N17   , En4 , v092
	.byte	W01
	.byte		VOL   , 84*mus_mr_tambourine_man_mvl/mxv
	.byte	W44
	.byte	W03
@ 037   ----------------------------------------
	.byte	W12
	.byte		        75*mus_mr_tambourine_man_mvl/mxv
	.byte	W11
	.byte		N18   , An3 , v084
	.byte	W01
	.byte		N17   , Cs4 , v096
	.byte	W01
	.byte		        En4 , v092
	.byte	W44
	.byte	W02
	.byte		VOL   , 65*mus_mr_tambourine_man_mvl/mxv
	.byte	W24
	.byte	W01
@ 038   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		        56*mus_mr_tambourine_man_mvl/mxv
	.byte	W14
	.byte		N21   , An3 , v088
	.byte		N19   , Dn4 , v096
	.byte		N20   , Fs4 , v088
	.byte	W44
	.byte	W01
	.byte		VOL   , 47*mus_mr_tambourine_man_mvl/mxv
	.byte	W03
@ 039   ----------------------------------------
	.byte	W23
	.byte		N22   , An3 
	.byte	W01
	.byte		N18   , Dn4 , v096
	.byte	W01
	.byte		N19   , Fs4 , v088
	.byte	W30
	.byte	W01
	.byte		VOL   , 37*mus_mr_tambourine_man_mvl/mxv
	.byte	W36
	.byte	W03
	.byte		N17   , An3 
	.byte	W01
@ 040   ----------------------------------------
	.byte		N16   , Dn4 
	.byte		N15   , Fs4 
	.byte	W19
	.byte		VOL   , 28*mus_mr_tambourine_man_mvl/mxv
	.byte	W48
	.byte	W03
	.byte		N19   , An3 , v092
	.byte	W01
	.byte		N17   , Dn4 
	.byte		N18   , Fs4 , v088
	.byte	W07
	.byte		VOL   , 18*mus_mr_tambourine_man_mvl/mxv
	.byte	W18
@ 041   ----------------------------------------
	.byte	W42
	.byte		        9*mus_mr_tambourine_man_mvl/mxv
	.byte	W05
	.byte		N16   , An3 
	.byte		N17   , Dn4 , v084
	.byte	W01
	.byte		N18   , Fs4 , v080
	.byte	W48
@ 042   ----------------------------------------
	.byte	W05
	.byte		VOL   , 0*mus_mr_tambourine_man_mvl/mxv
	.byte	W40
	.byte	W01
	.byte		N19   , Bn3 , v088
	.byte		N16   , Dn4 
	.byte	W01
	.byte		N18   , Gn4 
	.byte	W19
	.byte	W01
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_mr_tambourine_man_5:
	.byte	KEYSH , mus_mr_tambourine_man_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		VOL   , 111*mus_mr_tambourine_man_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N01   , Gs1 , v068
	.byte	W01
@ 004   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		        Gs1 , v064
	.byte	W02
	.byte		        Fs2 , v100
	.byte	W44
	.byte	W02
	.byte		        Gs1 , v064
	.byte	W02
@ 005   ----------------------------------------
	.byte	W24
	.byte		        Fs2 , v100
	.byte	W22
	.byte		        Gs1 , v064
	.byte	W48
	.byte		        Gs1 , v068
	.byte	W02
@ 006   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		        Fs2 , v100
	.byte	W01
	.byte		        Gs1 , v064
	.byte	W48
	.byte		        Gs1 , v068
	.byte	W01
@ 007   ----------------------------------------
	.byte	W23
	.byte		        Fs2 , v088
	.byte	W01
	.byte		        Dn1 , v100
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W10
	.byte		        Gs1 , v064
	.byte	W02
	.byte		        Dn1 , v088
	.byte	W23
	.byte		        Dn1 , v108
	.byte	W24
	.byte		        Bn0 , v116
	.byte		N01   , Cs2 , v080
	.byte	W01
@ 008   ----------------------------------------
mus_mr_tambourine_man_5_008:
	.byte	W23
	.byte		N01   , Ds2 , v060
	.byte	W23
	.byte		        Dn1 , v108
	.byte		N01   , Ds2 , v080
	.byte		N01   , Fs2 , v100
	.byte	W23
	.byte		        Bn0 , v104
	.byte	W01
	.byte		        Ds2 , v060
	.byte	W24
	.byte		        Bn0 , v116
	.byte		N01   , Ds2 , v072
	.byte	W02
	.byte	PEND
@ 009   ----------------------------------------
mus_mr_tambourine_man_5_009:
	.byte	W21
	.byte		N01   , Ds2 , v060
	.byte	W01
	.byte		        Fs2 , v088
	.byte	W23
	.byte		        Dn1 , v104
	.byte	W01
	.byte		        Ds2 , v080
	.byte	W24
	.byte		        Ds2 , v068
	.byte	W24
	.byte		        Bn0 , v116
	.byte		N01   , Ds2 , v072
	.byte	W02
	.byte	PEND
@ 010   ----------------------------------------
mus_mr_tambourine_man_5_010:
	.byte	W22
	.byte		N01   , Ds2 , v064
	.byte	W24
	.byte		        Dn1 , v104
	.byte		N01   , Ds2 , v076
	.byte		N01   , Fs2 , v088
	.byte	W23
	.byte		        Bn0 , v108
	.byte	W01
	.byte		        Ds2 , v064
	.byte	W24
	.byte		        Ds2 , v076
	.byte	W01
	.byte		        Bn0 , v116
	.byte	W01
	.byte	PEND
@ 011   ----------------------------------------
mus_mr_tambourine_man_5_011:
	.byte	W21
	.byte		N01   , Ds2 , v064
	.byte	W02
	.byte		        Fs2 , v088
	.byte	W23
	.byte		        Ds2 , v076
	.byte	W01
	.byte		        Dn1 , v108
	.byte	W23
	.byte		        Ds2 , v068
	.byte	W24
	.byte	W01
	.byte		        Ds2 , v072
	.byte	W01
	.byte	PEND
@ 012   ----------------------------------------
mus_mr_tambourine_man_5_012:
	.byte		N01   , Bn0 , v116
	.byte	W23
	.byte		        Ds2 , v060
	.byte	W24
	.byte		        Dn1 , v104
	.byte		N01   , Fs2 , v100
	.byte	W01
	.byte		        Ds2 , v088
	.byte	W22
	.byte		        Bn0 , v108
	.byte	W02
	.byte		        Ds2 , v064
	.byte	W23
	.byte		        Bn0 , v116
	.byte	W01
	.byte	PEND
@ 013   ----------------------------------------
mus_mr_tambourine_man_5_013:
	.byte		N01   , Ds2 , v076
	.byte	W23
	.byte		        Ds2 , v056
	.byte	W01
	.byte		        Fs2 , v100
	.byte	W22
	.byte		        Dn1 , v108
	.byte	W01
	.byte		        Ds2 , v088
	.byte	W24
	.byte		        Ds2 , v064
	.byte	W24
	.byte		        Bn0 , v116
	.byte		N01   , Ds2 , v076
	.byte	W01
	.byte	PEND
@ 014   ----------------------------------------
mus_mr_tambourine_man_5_014:
	.byte	W22
	.byte		N01   , Ds2 , v064
	.byte	W24
	.byte		        Dn1 , v108
	.byte		N01   , Ds2 , v080
	.byte		N01   , Fs2 , v100
	.byte	W24
	.byte		        Bn0 , v108
	.byte		N01   , Ds2 , v068
	.byte	W23
	.byte		N01   
	.byte	W02
	.byte		        Bn0 , v116
	.byte	W01
	.byte	PEND
@ 015   ----------------------------------------
mus_mr_tambourine_man_5_015:
	.byte	W22
	.byte		N01   , Ds2 , v064
	.byte	W01
	.byte		        Fs2 , v100
	.byte	W23
	.byte		        Dn1 , v108
	.byte		N01   , Ds2 , v080
	.byte	W24
	.byte		        Ds2 , v072
	.byte	W24
	.byte		N01   
	.byte	W01
	.byte		        Bn0 , v116
	.byte	W01
	.byte	PEND
@ 016   ----------------------------------------
mus_mr_tambourine_man_5_016:
	.byte	W21
	.byte		N01   , Ds2 , v060
	.byte	W24
	.byte	W01
	.byte		        Dn1 , v104
	.byte		N01   , Fs2 , v100
	.byte	W01
	.byte		        Ds2 
	.byte	W23
	.byte		        Bn0 
	.byte	W01
	.byte		        Ds2 , v064
	.byte	W23
	.byte		        Bn0 , v116
	.byte	W01
	.byte		        Ds2 , v076
	.byte	W01
	.byte	PEND
@ 017   ----------------------------------------
mus_mr_tambourine_man_5_017:
	.byte	W23
	.byte		N01   , Ds2 , v064
	.byte		N01   , Fs2 , v100
	.byte	W24
	.byte		        Dn1 , v104
	.byte		N01   , Ds2 , v088
	.byte	W24
	.byte		        Ds2 , v064
	.byte	W23
	.byte		        Ds2 , v076
	.byte	W02
	.byte	PEND
@ 018   ----------------------------------------
mus_mr_tambourine_man_5_018:
	.byte		N01   , Bn0 , v116
	.byte	W22
	.byte		        Ds2 , v060
	.byte	W24
	.byte		        Dn1 , v104
	.byte	W01
	.byte		        Ds2 , v088
	.byte		N01   , Fs2 
	.byte	W23
	.byte		        Bn0 , v100
	.byte	W01
	.byte		        Ds2 , v072
	.byte	W23
	.byte		        Ds2 , v076
	.byte	W01
	.byte		        Bn0 , v116
	.byte	W01
	.byte	PEND
@ 019   ----------------------------------------
mus_mr_tambourine_man_5_019:
	.byte	W22
	.byte		N01   , Ds2 , v064
	.byte	W01
	.byte		        Fs2 , v088
	.byte	W24
	.byte		        Dn1 , v108
	.byte		N01   , Ds2 , v088
	.byte	W24
	.byte		        Ds2 , v068
	.byte	W24
	.byte		        Ds2 , v076
	.byte	W01
	.byte	PEND
@ 020   ----------------------------------------
	.byte		        Bn0 , v116
	.byte	W23
	.byte		        Ds2 , v064
	.byte	W24
	.byte		        Dn1 , v108
	.byte		N01   , Fs2 , v088
	.byte	W01
	.byte		        Ds2 
	.byte	W23
	.byte		        Bn0 , v108
	.byte		N01   , Ds2 , v068
	.byte	W24
	.byte		        Ds2 , v076
	.byte	W01
@ 021   ----------------------------------------
	.byte		        Bn0 , v116
	.byte	W23
	.byte		        Ds2 , v064
	.byte	W01
	.byte		        Fs2 , v088
	.byte	W23
	.byte		        Dn1 , v108
	.byte		N01   , Ds2 , v088
	.byte	W23
	.byte		        Ds2 , v072
	.byte	W24
	.byte	W01
	.byte		        Dn1 , v068
	.byte		N01   , Ds2 , v076
	.byte	W01
@ 022   ----------------------------------------
	.byte		        Bn0 , v100
	.byte	W23
	.byte		        Dn1 , v068
	.byte		N01   , Ds2 , v080
	.byte	W23
	.byte		        Dn1 , v088
	.byte		N01   , Fs2 , v100
	.byte	W01
	.byte		        Ds2 
	.byte	W22
	.byte		        Dn1 , v108
	.byte	W01
	.byte		        Bn0 , v076
	.byte		N01   , Ds2 , v108
	.byte	W23
	.byte		        Dn1 , v100
	.byte	W01
	.byte		        Ds2 , v108
	.byte	W01
	.byte		        Bn0 , v088
	.byte	W01
@ 023   ----------------------------------------
	.byte	W22
	.byte		        An1 
	.byte	W02
	.byte		        Fs2 
	.byte	W11
	.byte		        An1 , v076
	.byte	W11
	.byte		        An1 , v100
	.byte	W13
	.byte		        Fn1 , v088
	.byte	W11
	.byte		        Fn1 , v076
	.byte	W13
	.byte		        Fn1 , v100
	.byte	W12
	.byte		        Bn0 , v116
	.byte		N01   , Cs2 , v080
	.byte	W01
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_mr_tambourine_man_5_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_mr_tambourine_man_5_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_mr_tambourine_man_5_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_mr_tambourine_man_5_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_mr_tambourine_man_5_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_mr_tambourine_man_5_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_mr_tambourine_man_5_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_mr_tambourine_man_5_015
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_mr_tambourine_man_5_016
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_mr_tambourine_man_5_017
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_mr_tambourine_man_5_018
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_mr_tambourine_man_5_019
@ 036   ----------------------------------------
	.byte		N01   , Bn0 , v116
	.byte	W23
	.byte		        Ds2 , v064
	.byte	W24
	.byte		        Dn1 , v108
	.byte		N01   , Fs2 , v088
	.byte	W01
	.byte		        Ds2 
	.byte	W01
	.byte		VOL   , 99*mus_mr_tambourine_man_mvl/mxv
	.byte	W22
	.byte		N01   , Bn0 , v108
	.byte		N01   , Ds2 , v068
	.byte	W24
	.byte		        Ds2 , v076
	.byte	W01
@ 037   ----------------------------------------
	.byte		        Bn0 , v116
	.byte	W12
	.byte		VOL   , 88*mus_mr_tambourine_man_mvl/mxv
	.byte	W11
	.byte		N01   , Ds2 , v064
	.byte	W01
	.byte		        Fs2 , v088
	.byte	W23
	.byte		        Dn1 , v108
	.byte		N01   , Ds2 , v088
	.byte	W23
	.byte		        Ds2 , v072
	.byte	W01
	.byte		VOL   , 77*mus_mr_tambourine_man_mvl/mxv
	.byte	W24
	.byte		N01   
	.byte	W01
@ 038   ----------------------------------------
	.byte		        Bn0 , v116
	.byte	W23
	.byte		        Ds2 , v060
	.byte	W11
	.byte		VOL   , 66*mus_mr_tambourine_man_mvl/mxv
	.byte	W13
	.byte		N01   , Dn1 , v104
	.byte		N01   , Fs2 , v100
	.byte	W01
	.byte		        Ds2 , v088
	.byte	W22
	.byte		        Bn0 , v108
	.byte	W02
	.byte		        Ds2 , v064
	.byte	W21
	.byte		VOL   , 55*mus_mr_tambourine_man_mvl/mxv
	.byte	W02
	.byte		N01   , Bn0 , v116
	.byte	W01
@ 039   ----------------------------------------
	.byte		        Ds2 , v076
	.byte	W23
	.byte		        Ds2 , v056
	.byte	W01
	.byte		        Fs2 , v100
	.byte	W22
	.byte		        Dn1 , v108
	.byte	W01
	.byte		        Ds2 , v088
	.byte	W09
	.byte		VOL   , 44*mus_mr_tambourine_man_mvl/mxv
	.byte	W15
	.byte		N01   , Ds2 , v064
	.byte	W24
	.byte		        Bn0 , v116
	.byte		N01   , Ds2 , v076
	.byte	W01
@ 040   ----------------------------------------
	.byte	W19
	.byte		VOL   , 33*mus_mr_tambourine_man_mvl/mxv
	.byte	W03
	.byte		N01   , Ds2 , v064
	.byte	W24
	.byte		        Dn1 , v108
	.byte		N01   , Ds2 , v096
	.byte		N01   , Fs2 , v100
	.byte	W24
	.byte		        Bn0 , v108
	.byte		N01   , Ds2 , v084
	.byte	W08
	.byte		VOL   , 22*mus_mr_tambourine_man_mvl/mxv
	.byte	W17
	.byte		N01   , Dn1 , v096
	.byte	W01
@ 041   ----------------------------------------
	.byte	W11
	.byte		        Dn1 , v080
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs2 , v100
	.byte	W12
	.byte		        Dn1 , v080
	.byte	W07
	.byte		VOL   , 11*mus_mr_tambourine_man_mvl/mxv
	.byte	W04
	.byte		N01   , Dn1 , v108
	.byte	W13
	.byte		        Dn1 , v080
	.byte	W12
	.byte		        Dn1 , v096
	.byte	W24
	.byte		        Bn0 , v116
	.byte		N01   , Cs2 , v080
	.byte	W01
@ 042   ----------------------------------------
	.byte	W05
	.byte		VOL   , 0*mus_mr_tambourine_man_mvl/mxv
	.byte	W18
	.byte		N01   , Ds2 , v060
	.byte	W23
	.byte		        Dn1 , v108
	.byte		N01   , Ds2 , v080
	.byte		N01   , Fs2 , v100
	.byte	W20
	.byte	W01
	.byte	FINE

@******************************************************@
	.align	2

mus_mr_tambourine_man:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_mr_tambourine_man_pri	@ Priority
	.byte	mus_mr_tambourine_man_rev	@ Reverb.

	.word	mus_mr_tambourine_man_grp

	.word	mus_mr_tambourine_man_1
	.word	mus_mr_tambourine_man_2
	.word	mus_mr_tambourine_man_3
	.word	mus_mr_tambourine_man_4
	.word	mus_mr_tambourine_man_5

	.end
