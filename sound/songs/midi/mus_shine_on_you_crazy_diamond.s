	.include "MPlayDef.s"

	.equ	mus_shine_on_you_crazy_diamond_grp, voicegroup_hlw_classic_rock
	.equ	mus_shine_on_you_crazy_diamond_pri, 0
	.equ	mus_shine_on_you_crazy_diamond_rev, reverb_set+35
	.equ	mus_shine_on_you_crazy_diamond_mvl, 95
	.equ	mus_shine_on_you_crazy_diamond_key, 0
	.equ	mus_shine_on_you_crazy_diamond_tbs, 1
	.equ	mus_shine_on_you_crazy_diamond_exg, 1
	.equ	mus_shine_on_you_crazy_diamond_cmp, 1

	.section .rodata
	.global	mus_shine_on_you_crazy_diamond
	.align	2

@**************** Track 1 (Midi-Chn.3) ****************@

mus_shine_on_you_crazy_diamond_1:
	.byte		VOL   , 127*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte	KEYSH , mus_shine_on_you_crazy_diamond_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 21*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		VOICE , 60
	.byte	W96
@ 001   ----------------------------------------
	.byte	TEMPO , 86*mus_shine_on_you_crazy_diamond_tbs/2
	.byte	W96
@ 002   ----------------------------------------
	.byte	TEMPO , 32*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		MOD   , 30
	.byte	W48
	.byte		TIE   , Gn2 , v060
	.byte	W48
@ 003   ----------------------------------------
	.byte	TEMPO , 64*mus_shine_on_you_crazy_diamond_tbs/2
	.byte	W24
	.byte		N11   , As2 , v080
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N16   , Gn2 , v072
	.byte	W16
	.byte		EOT   
	.byte	W02
	.byte	TEMPO , 107*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N28   , Dn2 , v068, gtp1
	.byte	W30
@ 004   ----------------------------------------
	.byte	TEMPO , 64*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N92   , Cn2 , v072, gtp3
	.byte	W96
@ 005   ----------------------------------------
	.byte		N10   , As1 , v080
	.byte	W11
	.byte		N12   , Fn1 , v068
	.byte	W13
	.byte		TIE   , Gn1 , v072
	.byte	W72
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	TEMPO , 86*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N68   , As2 , v080, gtp3
	.byte	W72
	.byte		N22   , An2 
	.byte	W24
@ 009   ----------------------------------------
	.byte		N68   , As2 , v080, gtp3
	.byte	W72
	.byte		N22   , An2 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N92   , As2 , v080, gtp3
	.byte	W96
@ 011   ----------------------------------------
	.byte		        Cn3 , v080, gtp3
	.byte	W96
@ 012   ----------------------------------------
	.byte		N11   , As2 , v088
	.byte	W12
	.byte		        Cn3 , v092
	.byte	W12
	.byte	TEMPO , 43*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N68   , Dn3 , v096, gtp3
	.byte	W72
@ 013   ----------------------------------------
	.byte		N92   , Gn2 , v072, gtp3
	.byte	W96
@ 014   ----------------------------------------
	.byte	TEMPO , 86*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N23   , Dn3 , v080
	.byte	W24
	.byte		N68   , Dn3 , v080, gtp3
	.byte	W72
@ 015   ----------------------------------------
	.byte		        Cn3 , v068, gtp3
	.byte	W72
	.byte		N11   , Fn3 , v092
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W12
@ 016   ----------------------------------------
	.byte		N92   , Dn3 , v080, gtp3
	.byte	W96
@ 017   ----------------------------------------
	.byte		N68   , Cn3 , v068, gtp3
	.byte	W72
	.byte		N11   , Fn3 , v092
	.byte	W12
	.byte		        Cn3 , v072
	.byte	W12
@ 018   ----------------------------------------
	.byte		N68   , Dn3 , v092, gtp3
	.byte	W72
	.byte		N11   , As2 , v072
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 019   ----------------------------------------
	.byte	TEMPO , 64*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		TIE   , Gn2 , v068
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	TEMPO , 86*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N11   
	.byte	W11
	.byte		EOT   
	.byte	W01
	.byte	TEMPO , 86*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N80   , Dn3 , v080, gtp3
	.byte	W84
@ 022   ----------------------------------------
	.byte		N11   , Gn2 , v068
	.byte	W12
	.byte		N56   , Cn3 , v080, gtp3
	.byte	W60
	.byte	TEMPO , 86*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N23   , Dn3 
	.byte	W24
@ 023   ----------------------------------------
	.byte	TEMPO , 43*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N05   , As2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	TEMPO , 64*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N56   , Gn2 , v080, gtp3
	.byte	W60
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 024   ----------------------------------------
	.byte	TEMPO , 43*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N44   , Dn2 , v080, gtp3
	.byte	W48
	.byte	TEMPO , 64*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N11   , As2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 025   ----------------------------------------
	.byte	TEMPO , 43*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		        As1 
	.byte	W12
	.byte		TIE   , Gn2 
	.byte	W84
@ 026   ----------------------------------------
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	TEMPO , 20*mus_shine_on_you_crazy_diamond_tbs/2
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
@ 027   ----------------------------------------
	.byte	TEMPO , 97*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		VOICE , 24
	.byte		MOD   , 20
	.byte		VOL   , 80*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		MOD   , 3
	.byte		BEND  , c_v-8
	.byte		N68   , Gn3 , v100, gtp3
	.byte	W02
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-5
	.byte	W02
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W02
	.byte		MOD   , 80
	.byte		BEND  , c_v+0
	.byte	W56
	.byte	W02
	.byte		MOD   , 20
	.byte		N23   , Fn3 , v080
	.byte	W24
@ 028   ----------------------------------------
	.byte	TEMPO , 53*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N92   , Gn3 , v092, gtp3
	.byte	W24
	.byte		MOD   , 40
	.byte	W72
@ 029   ----------------------------------------
	.byte	TEMPO , 86*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		        20
	.byte		N11   , Gn2 , v064
	.byte	W11
	.byte		EOT   
	.byte	W01
	.byte		N11   , As2 
	.byte	W12
	.byte		        Cn3 , v052
	.byte	W12
	.byte	TEMPO , 97*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		BEND  , c_v-10
	.byte		        c_v-9
	.byte		N32   , Dn3 , v064, gtp3
	.byte	W01
	.byte		BEND  , c_v-7
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-4
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W36
	.byte	W03
	.byte		N17   , Cn3 , v052
	.byte	W18
@ 030   ----------------------------------------
	.byte		TIE   , Dn3 , v064
	.byte	W24
	.byte		MOD   , 60
	.byte	W72
@ 031   ----------------------------------------
	.byte	W24
	.byte	TEMPO , 129*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		        20
	.byte		N11   , Dn3 , v072
	.byte	W11
	.byte		EOT   
	.byte	W01
	.byte		N11   , Cn3 , v056
	.byte	W12
	.byte		N22   , As2 , v052
	.byte	W24
	.byte	TEMPO , 118*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		        Cn3 , v064
	.byte	W24
@ 032   ----------------------------------------
	.byte	TEMPO , 86*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N32   , Dn3 , v064, gtp3
	.byte	W01
	.byte		EOT   , Gn1 
	.byte	W32
	.byte	W03
	.byte		N11   , Cn3 , v040
	.byte	W12
	.byte		TIE   , Dn3 , v064
	.byte	W24
	.byte		MOD   , 60
	.byte	W24
@ 033   ----------------------------------------
	.byte	W24
	.byte	TEMPO , 129*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		        20
	.byte		N06   , An2 
	.byte	W06
	.byte		        As2 , v040
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte	TEMPO , 194*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N23   , An2 , v064
	.byte	W24
	.byte		N24   , Fn2 
	.byte	W24
@ 034   ----------------------------------------
	.byte	TEMPO , 97*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N11   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N56   , Fn2 , v064, gtp3
	.byte	W12
	.byte	TEMPO , 64*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		MOD   , 80
	.byte	W60
@ 035   ----------------------------------------
	.byte	TEMPO , 53*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		        40
	.byte		BEND  , c_v-10
	.byte		N22   , An2 , v072
	.byte	W01
	.byte		EOT   , Dn3 
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W15
	.byte	TEMPO , 32*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		MOD   , 20
	.byte		BEND  , c_v-5
	.byte		        c_v-4
	.byte		N23   , As2 
	.byte	W01
	.byte		MOD   , 40
	.byte		BEND  , c_v-2
	.byte		        c_v+0
	.byte	W23
	.byte	TEMPO , 183*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N11   , As2 , v064
	.byte	W12
	.byte		        Gn2 , v040
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 036   ----------------------------------------
	.byte	TEMPO , 172*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		BEND  , c_v-5
	.byte		        c_v-4
	.byte		N92   , As2 , v060, gtp3
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W92
	.byte	W02
@ 037   ----------------------------------------
	.byte	TEMPO , 240*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		MOD   , 60
	.byte		BEND  , c_v-16
	.byte		N48   , As2 , v064
	.byte	W01
	.byte		BEND  , c_v-15
	.byte	W02
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-13
	.byte	W02
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-7
	.byte	W02
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v+0
	.byte	W03
	.byte		        c_v-1
	.byte	W03
	.byte		        c_v-2
	.byte	W03
	.byte		        c_v-3
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v-5
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-7
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-9
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-11
	.byte	W03
	.byte		        c_v-12
	.byte	W03
	.byte		        c_v-13
	.byte	W03
	.byte		        c_v-14
	.byte	W03
	.byte		        c_v-15
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte	TEMPO , 150*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		MOD   , 20
	.byte		BEND  , c_v+0
	.byte		N11   , Fn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 038   ----------------------------------------
	.byte		N68   , Gn2 , v064, gtp3
	.byte	W72
	.byte	TEMPO , 107*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N12   , Dn3 , v092
	.byte	W12
	.byte	TEMPO , 86*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		        Fn3 , v124
	.byte	W12
@ 039   ----------------------------------------
	.byte	TEMPO , 64*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N44   , Gn3 , v127, gtp3
	.byte	W48
	.byte	TEMPO , 86*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N11   
	.byte	W12
	.byte		        Gn3 , v124
	.byte	W12
	.byte	TEMPO , 43*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N20   , As3 , v127
	.byte	W24
@ 040   ----------------------------------------
	.byte	TEMPO , 64*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		BEND  , c_v-10
	.byte		        c_v-8
	.byte		N11   , Cn4 
	.byte	W01
	.byte		BEND  , c_v-6
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v+0
	.byte	W10
	.byte	TEMPO , 32*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N23   , As3 
	.byte	W24
	.byte	TEMPO , 64*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N05   , Dn3 , v100
	.byte	W06
	.byte		        Cn3 , v092
	.byte	W06
	.byte	TEMPO , 21*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N11   , As2 , v100
	.byte	W12
	.byte	TEMPO , 107*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		        Dn2 , v064
	.byte	W12
	.byte		N23   , Fn2 
	.byte	W24
@ 041   ----------------------------------------
	.byte	TEMPO , 64*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N44   , Gn2 , v064, gtp3
	.byte	W24
	.byte	TEMPO , 53*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		MOD   , 80
	.byte	W24
	.byte	TEMPO , 64*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		        20
	.byte		BEND  , c_v-10
	.byte		        c_v-9
	.byte		N11   , As2 
	.byte	W01
	.byte		BEND  , c_v-7
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N11   , As2 , v052
	.byte	W12
	.byte	TEMPO , 32*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		MOD   , 80
	.byte		N23   , As2 , v064
	.byte	W24
@ 042   ----------------------------------------
	.byte	TEMPO , 129*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		MOD   , 20
	.byte		N11   , Fn2 , v080
	.byte	W12
	.byte		        Gn2 , v064
	.byte	W12
	.byte	TEMPO , 86*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		TIE   
	.byte	W24
	.byte		MOD   , 80
	.byte	W48
@ 043   ----------------------------------------
	.byte	W60
	.byte	TEMPO , 53*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		        20
	.byte		BEND  , c_v+10
	.byte		        c_v+9
	.byte		N17   , Cn3 , v080
	.byte	W01
	.byte		BEND  , c_v+8
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+3
	.byte		        c_v+2
	.byte	W01
	.byte	TEMPO , 107*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		        c_v+0
	.byte	W14
	.byte	TEMPO , 138*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N08   , As2 , v056
	.byte	W09
	.byte	TEMPO , 107*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		        Cn3 , v064
	.byte	W09
@ 044   ----------------------------------------
	.byte	TEMPO , 129*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		TIE   , Dn3 , v076
	.byte	W01
	.byte		EOT   , Gn2 
	.byte	W23
	.byte		MOD   , 80
	.byte	W72
@ 045   ----------------------------------------
	.byte	W48
	.byte	TEMPO , 86*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		        20
	.byte		N11   , Dn3 , v072
	.byte	W11
	.byte		EOT   
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v-2
	.byte		N32   , Fn3 , v080, gtp3
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W32
	.byte	W03
@ 046   ----------------------------------------
	.byte	TEMPO , 97*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte		N11   , Gn3 , v092
	.byte	W11
	.byte		        Gn3 , v064
	.byte	W12
	.byte		N56   , Gn3 , v080, gtp3
	.byte	W12
	.byte		MOD   , 80
	.byte	W60
@ 047   ----------------------------------------
	.byte	TEMPO , 64*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		        20
	.byte		N06   
	.byte	W06
	.byte		        Fn3 , v040
	.byte	W06
	.byte	TEMPO , 43*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N03   , Dn3 , v064
	.byte	W03
	.byte		N02   , Cn3 , v040
	.byte	W03
	.byte	TEMPO , 86*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N52   , Dn3 , v072, gtp1
	.byte	W54
	.byte		N05   , Dn3 , v080
	.byte	W06
	.byte		        Cn3 , v064
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cn3 , v052
	.byte	W06
@ 048   ----------------------------------------
	.byte	TEMPO , 64*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N44   , Cn3 , v072, gtp3
	.byte	W48
	.byte		N11   , Gn2 , v064
	.byte	W12
	.byte	TEMPO , 43*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		        As2 , v072
	.byte	W12
	.byte	TEMPO , 97*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N05   , Dn3 , v080
	.byte	W06
	.byte		        Cn3 , v052
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N06   , Cn3 , v048
	.byte	W06
@ 049   ----------------------------------------
	.byte		N32   , Dn3 , v072, gtp3
	.byte	W36
	.byte	TEMPO , 53*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N05   , Dn3 , v080
	.byte	W06
	.byte	TEMPO , 43*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		        Fn3 , v076
	.byte	W06
	.byte	TEMPO , 32*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		MOD   , 80
	.byte		N23   , Dn3 , v080
	.byte	W24
	.byte	TEMPO , 86*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		MOD   , 20
	.byte		BEND  , c_v-3
	.byte		N11   , Gn3 , v092
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W10
	.byte	TEMPO , 64*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N11   
	.byte	W12
@ 050   ----------------------------------------
	.byte	TEMPO , 53*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		BEND  , c_v-4
	.byte		N44   , As3 , v092, gtp3
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W44
	.byte	W02
	.byte	TEMPO , 64*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N11   , Gn3 , v100
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte	TEMPO , 43*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		BEND  , c_v-5
	.byte		N22   , Dn4 
	.byte	W01
	.byte		BEND  , c_v-4
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W04
	.byte		MOD   , 80
	.byte	W18
@ 051   ----------------------------------------
	.byte	TEMPO , 64*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		        20
	.byte		BEND  , c_v+3
	.byte		N11   , Cn4 
	.byte	W01
	.byte		BEND  , c_v+2
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+0
	.byte	W10
	.byte	TEMPO , 75*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N11   , As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	TEMPO , 64*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		        Fn3 , v092
	.byte	W12
	.byte		BEND  , c_v-2
	.byte		TIE   , Gn3 , v080
	.byte	W01
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W20
	.byte		MOD   , 60
	.byte	W24
	.byte	W02
@ 052   ----------------------------------------
	.byte	TEMPO , 21*mus_shine_on_you_crazy_diamond_tbs/2
	.byte	W84
	.byte		VOICE , 24
	.byte		MOD   , 10
	.byte		VOL   , 100*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte	W12
@ 053   ----------------------------------------
	.byte	TEMPO , 114*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N22   , As3 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W22
	.byte		EOT   
	.byte	W02
	.byte		BEND  , c_v+0
	.byte		TIE   , En4 
	.byte	W24
@ 054   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_054:
	.byte	W24
	.byte	W01
	.byte		BEND  , c_v-1
	.byte	W23
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W44
	.byte	W03
	.byte	PEND
@ 055   ----------------------------------------
	.byte	W24
	.byte	TEMPO , 64*mus_shine_on_you_crazy_diamond_tbs/2
	.byte	W60
	.byte	TEMPO , 20*mus_shine_on_you_crazy_diamond_tbs/2
	.byte	W10
	.byte		EOT   , En4 
	.byte	W02
@ 056   ----------------------------------------
	.byte	TEMPO , 114*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N22   , As3 , v080
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		BEND  , c_v+0
	.byte		TIE   , En4 
	.byte	W24
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_054
@ 058   ----------------------------------------
	.byte	W84
	.byte	TEMPO , 21*mus_shine_on_you_crazy_diamond_tbs/2
	.byte	W10
	.byte		EOT   , En4 
	.byte	W02
@ 059   ----------------------------------------
	.byte	TEMPO , 114*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N22   , As3 , v080
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		TIE   , En4 
	.byte	W24
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte	W02
@ 062   ----------------------------------------
	.byte	TEMPO , 127*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N22   , As3 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte	TEMPO , 138*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		TIE   , En4 
	.byte	W24
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte	W02
@ 065   ----------------------------------------
	.byte		N22   , As3 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		N21   , Gn3 
	.byte	W24
	.byte		TIE   , En4 
	.byte	W24
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte	W02
@ 068   ----------------------------------------
	.byte		N22   , As3 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		TIE   , En4 
	.byte	W24
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W22
	.byte		EOT   
	.byte	W02
	.byte	TEMPO , 142*mus_shine_on_you_crazy_diamond_tbs/2
	.byte	W24
	.byte		N06   , Fn2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
@ 071   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_071:
	.byte		N06   , Fn2 , v080
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	TEMPO , 138*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N06   
	.byte	W12
	.byte		N56   , Gn2 , v100, gtp3
	.byte	W12
	.byte	PEND
@ 072   ----------------------------------------
	.byte	W48
	.byte	W48
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_074:
	.byte		N22   , As3 , v080
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		TIE   , En4 
	.byte	W24
	.byte	PEND
@ 075   ----------------------------------------
	.byte	W92
	.byte	TEMPO , 138*mus_shine_on_you_crazy_diamond_tbs/2
	.byte	W04
@ 076   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte	W02
@ 077   ----------------------------------------
	.byte		N22   , As3 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		TIE   , Ds4 
	.byte	W24
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		N22   , Ds4 , v092
	.byte	W24
	.byte		TIE   , Dn4 
	.byte	W24
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte	TEMPO , 142*mus_shine_on_you_crazy_diamond_tbs/2
	.byte		N06   , Fn2 , v080
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_071
@ 084   ----------------------------------------
	.byte	W48
	.byte	W48
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_074
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		EOT   , En4 
	.byte	W02
@ 089   ----------------------------------------
	.byte		VOICE , 30
	.byte		VOL   , 60*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		BEND  , c_v-10
	.byte		N60   , Dn4 , v084
	.byte	W03
	.byte		BEND  , c_v-9
	.byte	W02
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-7
	.byte	W02
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-5
	.byte	W03
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v-3
	.byte	W03
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v+0
	.byte	W48
	.byte		        c_v-2
	.byte		N12   , As3 , v100
	.byte	W01
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W11
	.byte		N10   , Cn4 , v060
	.byte	W11
@ 090   ----------------------------------------
	.byte		TIE   , Gn3 , v084
	.byte	W48
	.byte		BEND  , c_v+0
	.byte	W36
	.byte		        c_v+0
	.byte	W04
	.byte	W04
	.byte		        c_v-1
	.byte	W04
@ 091   ----------------------------------------
	.byte	W03
	.byte		        c_v-2
	.byte	W01
	.byte	W04
	.byte	W03
	.byte		        c_v-3
	.byte	W01
	.byte	W04
	.byte	W01
	.byte		        c_v-4
	.byte	W03
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		BEND  , c_v-5
	.byte		        c_v+0
	.byte	W36
	.byte		N08   , Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 092   ----------------------------------------
	.byte		BEND  , c_v-4
	.byte		N40   , Dn3 
	.byte	W04
	.byte		BEND  , c_v-3
	.byte	W03
	.byte		        c_v-2
	.byte	W03
	.byte		        c_v-1
	.byte	W03
	.byte		        c_v+0
	.byte	W32
	.byte	W03
	.byte		N08   
	.byte	W08
	.byte		        Cn3 , v072
	.byte	W08
	.byte		        As2 
	.byte	W08
	.byte		        Cn3 , v080
	.byte	W12
	.byte		        As2 , v072
	.byte	W12
@ 093   ----------------------------------------
	.byte		TIE   , Gn2 
	.byte	W48
	.byte		MOD   , 60
	.byte	W48
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v+0
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte		MOD   , 20
	.byte		N08   , As3 , v032
	.byte		N08   , As4 , v084
	.byte	W08
	.byte		        Gn4 , v060
	.byte	W08
	.byte		        Dn4 
	.byte	W08
	.byte		TIE   , As4 , v084
	.byte	W24
@ 096   ----------------------------------------
	.byte	W92
	.byte		EOT   
	.byte	W04
@ 097   ----------------------------------------
	.byte		BEND  , c_v-3
	.byte		N20   
	.byte	W02
	.byte		BEND  , c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v+0
	.byte	W18
	.byte		TIE   , An4 
	.byte	W72
@ 098   ----------------------------------------
	.byte	W44
	.byte		EOT   
	.byte	W04
	.byte		N08   , Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		TIE   , Gn4 
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W17
@ 099   ----------------------------------------
	.byte	W92
	.byte		EOT   
	.byte	W04
@ 100   ----------------------------------------
	.byte		BEND  , c_v-3
	.byte		N08   
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v+0
	.byte	W07
	.byte		N08   , Fn4 , v072
	.byte	W08
	.byte		        Dn4 , v060
	.byte	W08
	.byte		MOD   , 60
	.byte		N66   , Fn4 , v080
	.byte	W72
@ 101   ----------------------------------------
	.byte		MOD   , 20
	.byte		N20   , Fn4 , v084
	.byte	W24
	.byte		N08   , As4 
	.byte	W08
	.byte		        Gn4 , v072
	.byte	W08
	.byte		        Dn4 , v060
	.byte	W08
	.byte		        As4 , v084
	.byte	W08
	.byte		        Gn4 , v072
	.byte	W08
	.byte		        Dn4 , v060
	.byte	W08
	.byte		BEND  , c_v-3
	.byte		TIE   , Cn5 , v084
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W22
@ 102   ----------------------------------------
	.byte	W92
	.byte		EOT   
	.byte	W04
@ 103   ----------------------------------------
	.byte		N06   
	.byte	W08
	.byte		        As4 , v072
	.byte	W08
	.byte		        Gn4 , v064
	.byte	W08
	.byte		N08   , As4 , v084
	.byte	W12
	.byte		MOD   , 80
	.byte		N80   , Gn4 
	.byte	W60
@ 104   ----------------------------------------
	.byte	W24
	.byte		MOD   , 20
	.byte		N12   , Gn4 , v092
	.byte	W12
	.byte		BEND  , c_v-2
	.byte		N12   , As4 , v076
	.byte	W01
	.byte		BEND  , c_v-1
	.byte		        c_v+0
	.byte	W11
	.byte		        c_v-2
	.byte		N18   , Dn5 , v064
	.byte	W01
	.byte		BEND  , c_v-1
	.byte		        c_v+0
	.byte	W17
	.byte		        c_v+2
	.byte		N05   , As4 , v080
	.byte	W01
	.byte		BEND  , c_v+1
	.byte		        c_v+0
	.byte	W05
	.byte		N08   , Gn4 , v084
	.byte	W12
	.byte		        As4 
	.byte	W12
@ 105   ----------------------------------------
	.byte		TIE   , Gn4 
	.byte	W96
@ 106   ----------------------------------------
	.byte	W18
	.byte		EOT   
	.byte	W30
	.byte		BEND  , c_v-5
	.byte		N08   , Dn4 
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v+0
	.byte	W11
	.byte		N08   , Cn4 
	.byte	W12
	.byte		N20   , As3 
	.byte	W24
@ 107   ----------------------------------------
	.byte		BEND  , c_v+4
	.byte		N20   , Gn3 
	.byte	W01
	.byte		BEND  , c_v+2
	.byte		        c_v+0
	.byte	W23
	.byte		N08   , Dn3 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W12
	.byte		N20   , As2 
	.byte	W24
	.byte		N10   , Fn2 
	.byte	W12
	.byte		N92   , Gn2 , v080
	.byte	W12
@ 108   ----------------------------------------
	.byte	W84
	.byte		BEND  , c_v-3
	.byte		N12   , Gn2 , v084
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W10
@ 109   ----------------------------------------
	.byte		N12   , As2 , v080
	.byte	W12
	.byte		        Fn2 , v060
	.byte	W12
	.byte		MOD   , 80
	.byte		N66   , Gn2 , v084
	.byte	W72
@ 110   ----------------------------------------
	.byte		MOD   , 20
	.byte		N32   , As2 
	.byte	W36
	.byte		N08   , Dn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		TIE   , Gn3 
	.byte	W24
@ 111   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		BEND  , c_v-4
	.byte		N07   , As3 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v+0
	.byte	W06
	.byte		N07   , An3 , v072
	.byte	W05
@ 112   ----------------------------------------
	.byte	W02
	.byte		N12   , Gn3 , v060
	.byte	W12
	.byte		N10   , Fn3 , v052
	.byte	W10
	.byte		N68   , Gn3 , v084, gtp2
	.byte	W24
	.byte		MOD   , 80
	.byte	W48
@ 113   ----------------------------------------
	.byte		        20
	.byte		N20   , As3 
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		N12   , Dn4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W10
	.byte		N12   , Cn4 , v060
	.byte	W12
	.byte		N20   , Dn4 , v084
	.byte	W24
	.byte		BEND  , c_v-5
	.byte		TIE   , Ds4 
	.byte	W03
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v+0
	.byte	W13
@ 114   ----------------------------------------
	.byte	W96
@ 115   ----------------------------------------
	.byte	W18
	.byte		EOT   
	.byte	W06
	.byte		BEND  , c_v-5
	.byte		N66   
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W64
	.byte	W01
@ 116   ----------------------------------------
	.byte		        c_v-4
	.byte		N66   , Ds4 , v084, gtp1
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		MOD   , 60
	.byte		BEND  , c_v+0
	.byte	W68
	.byte		MOD   , 20
	.byte		N92   , Fs3 
	.byte	W24
@ 117   ----------------------------------------
	.byte	W72
	.byte		N08   , Fs3 , v072
	.byte	W08
	.byte		        Gn3 , v060
	.byte	W08
	.byte		        Fs3 
	.byte	W08
@ 118   ----------------------------------------
	.byte		N12   , En3 , v052
	.byte	W12
	.byte		TIE   , Fs3 , v084
	.byte	W84
@ 119   ----------------------------------------
	.byte	W44
	.byte		EOT   
	.byte	W04
	.byte		VOL   , 127*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		BEND  , c_v-4
	.byte		N08   , Gn4 , v104
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W10
	.byte		N72   , Gn4 , v104, gtp2
	.byte	W12
	.byte		BEND  , c_v+0
	.byte	W24
@ 120   ----------------------------------------
	.byte	W23
	.byte		        c_v-1
	.byte	W06
	.byte		        c_v-2
	.byte	W07
	.byte		        c_v-3
	.byte	W06
	.byte		        c_v-4
	.byte	W06
	.byte		        c_v-5
	.byte		        c_v+0
	.byte	W21
	.byte		        c_v-3
	.byte		N20   
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W22
	.byte		N20   
	.byte	W03
@ 121   ----------------------------------------
	.byte	W21
	.byte		N19   , An4 
	.byte	W24
	.byte		N20   , As4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		N24   , Gn4 , v104, gtp2
	.byte	W03
@ 122   ----------------------------------------
	.byte		MOD   , 80
	.byte	W24
	.byte		        20
	.byte		N12   
	.byte	W12
	.byte		        Fn4 , v092
	.byte	W12
	.byte		        Dn4 , v080
	.byte	W12
	.byte		        Fn4 , v072
	.byte	W12
	.byte		TIE   , Dn4 , v104
	.byte	W24
@ 123   ----------------------------------------
	.byte	W84
	.byte		EOT   
	.byte	W12
@ 124   ----------------------------------------
	.byte		BEND  , c_v-3
	.byte		N08   
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N08   , Cn4 , v092
	.byte	W08
	.byte		        As3 , v080
	.byte	W08
	.byte		BEND  , c_v-5
	.byte		N60   , Gn3 , v092, gtp2
	.byte	W01
	.byte		BEND  , c_v-4
	.byte		        c_v-2
	.byte	W01
	.byte		MOD   , 80
	.byte		BEND  , c_v+0
	.byte	W68
	.byte	W02
@ 125   ----------------------------------------
	.byte		MOD   , 20
	.byte	W12
	.byte		BEND  , c_v-2
	.byte		N08   , Gn4 , v104
	.byte	W01
	.byte		BEND  , c_v-1
	.byte		        c_v+0
	.byte	W11
	.byte		        c_v-3
	.byte		N20   , An4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v+0
	.byte	W23
	.byte		        c_v+0
	.byte		N20   , As4 
	.byte	W01
	.byte		BEND  , c_v-1
	.byte		        c_v+0
	.byte	W23
	.byte		        c_v-8
	.byte		N60   , Ds5 , v104, gtp2
	.byte	W02
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W01
	.byte		MOD   , 80
	.byte		BEND  , c_v+0
	.byte	W12
@ 126   ----------------------------------------
	.byte	W48
	.byte		MOD   , 20
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		N08   
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N08   , Dn5 
	.byte	W12
@ 127   ----------------------------------------
	.byte		        As4 , v092
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N68   , Dn5 , v104, gtp2
	.byte	W03
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		        c_v-3
	.byte	W03
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v+0
	.byte	W44
	.byte		        c_v-1
	.byte	W16
@ 128   ----------------------------------------
	.byte		        c_v-2
	.byte		        c_v+0
	.byte		N16   
	.byte	W21
	.byte		N20   
	.byte	W24
	.byte		        Fn5 
	.byte	W24
	.byte		TIE   , Ds5 
	.byte	W24
	.byte	W03
@ 129   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		BEND  , c_v-4
	.byte		N06   
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W04
	.byte		N06   , Dn5 , v092
	.byte	W02
@ 130   ----------------------------------------
	.byte	W04
	.byte		N10   , As4 , v080
	.byte	W10
	.byte		        Cn5 , v060
	.byte	W10
	.byte		TIE   , Dn5 , v092
	.byte	W48
	.byte		BEND  , c_v+0
	.byte	W20
	.byte		        c_v-1
	.byte	W04
@ 131   ----------------------------------------
	.byte	W06
	.byte	W06
	.byte	W03
	.byte		        c_v-2
	.byte	W03
	.byte	W06
	.byte	W06
	.byte	W04
	.byte		        c_v-3
	.byte	W02
	.byte	W06
	.byte	W06
	.byte	W05
	.byte		        c_v-4
	.byte	W01
	.byte	W06
	.byte	W02
	.byte		EOT   
	.byte	W04
	.byte	W06
	.byte		BEND  , c_v-5
	.byte	W24
@ 132   ----------------------------------------
	.byte	W96
@ 133   ----------------------------------------
	.byte	W96
@ 134   ----------------------------------------
	.byte	W96
@ 135   ----------------------------------------
	.byte	W96
@ 136   ----------------------------------------
	.byte	W96
@ 137   ----------------------------------------
	.byte	W96
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
	.byte	W96
@ 140   ----------------------------------------
	.byte	W96
@ 141   ----------------------------------------
	.byte	W96
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W96
@ 144   ----------------------------------------
	.byte	W96
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	W96
@ 149   ----------------------------------------
	.byte	W96
@ 150   ----------------------------------------
	.byte	W96
@ 151   ----------------------------------------
	.byte	W96
@ 152   ----------------------------------------
	.byte	W96
@ 153   ----------------------------------------
	.byte	W96
@ 154   ----------------------------------------
	.byte	W96
@ 155   ----------------------------------------
	.byte	W96
@ 156   ----------------------------------------
	.byte	W96
@ 157   ----------------------------------------
	.byte	W96
@ 158   ----------------------------------------
	.byte	W96
@ 159   ----------------------------------------
	.byte	W96
@ 160   ----------------------------------------
	.byte	W96
@ 161   ----------------------------------------
	.byte	W96
@ 162   ----------------------------------------
	.byte	W96
@ 163   ----------------------------------------
	.byte	W30
	.byte	TEMPO , 138*mus_shine_on_you_crazy_diamond_tbs/2
	.byte	W66
@ 164   ----------------------------------------
	.byte	W96
@ 165   ----------------------------------------
	.byte	W96
@ 166   ----------------------------------------
	.byte	W96
@ 167   ----------------------------------------
	.byte	W96
@ 168   ----------------------------------------
	.byte	W48
	.byte		VOL   , 127*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte	W36
	.byte		BEND  , c_v-3
	.byte		N08   , Dn4 , v084
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W09
@ 169   ----------------------------------------
	.byte		N20   , Gn4 
	.byte	W24
	.byte		BEND  , c_v-4
	.byte		N32   , Gn4 , v084, gtp3
	.byte	W02
	.byte		BEND  , c_v-3
	.byte	W02
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W01
	.byte		MOD   , 60
	.byte		BEND  , c_v+0
	.byte	W28
	.byte	W01
	.byte		MOD   , 20
	.byte		N12   
	.byte	W12
	.byte		        As4 , v072
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 170   ----------------------------------------
	.byte		BEND  , c_v-3
	.byte		N60   , Gn4 , v072, gtp2
	.byte	W03
	.byte		BEND  , c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W03
	.byte		MOD   , 60
	.byte		BEND  , c_v+0
	.byte	W88
@ 171   ----------------------------------------
	.byte	W12
	.byte		MOD   , 20
	.byte		BEND  , c_v-3
	.byte		N08   , Dn4 , v084
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W10
	.byte		N08   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N40   , Dn4 
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W40
@ 172   ----------------------------------------
	.byte		        c_v-3
	.byte		N08   
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W06
	.byte		N08   , Cn4 , v064
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N11   , As3 
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N44   , Gn3 , v072
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W02
	.byte		MOD   , 80
	.byte	W42
@ 173   ----------------------------------------
	.byte		        20
	.byte	W96
@ 174   ----------------------------------------
	.byte		BEND  , c_v-5
	.byte		N08   , As3 , v084
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v-3
	.byte		N08   , Cn4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v-3
	.byte		N64   , Dn4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W22
	.byte		MOD   , 80
	.byte	W48
@ 175   ----------------------------------------
	.byte		        20
	.byte		BEND  , c_v-3
	.byte		N08   , Gn3 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N08   , As3 
	.byte	W12
	.byte		N28   , Gn3 
	.byte	W36
	.byte		BEND  , c_v-3
	.byte		N08   , As3 , v100
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W32
	.byte	W02
@ 176   ----------------------------------------
	.byte	W48
	.byte		        c_v-5
	.byte		N08   , Gn4 , v084
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W09
	.byte		N08   , As4 
	.byte	W12
	.byte		BEND  , c_v-4
	.byte		N40   , Gn4 
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W20
@ 177   ----------------------------------------
	.byte	W96
@ 178   ----------------------------------------
	.byte	W96
@ 179   ----------------------------------------
	.byte	W36
	.byte		        c_v-3
	.byte		N08   , Dn4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v-3
	.byte		N08   , As4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W10
	.byte		N08   , An4 
	.byte	W12
	.byte		MOD   , 60
	.byte		N60   , Gn4 , v084, gtp2
	.byte	W24
@ 180   ----------------------------------------
	.byte	W48
	.byte		MOD   , 20
	.byte		N16   
	.byte	W24
	.byte		BEND  , c_v-5
	.byte		N44   , Dn5 
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		MOD   , 40
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W16
@ 181   ----------------------------------------
	.byte	W24
	.byte		MOD   , 20
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		N12   , Gn4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W07
	.byte		N12   , As4 
	.byte	W12
	.byte		BEND  , c_v-4
	.byte		N06   , Dn5 
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N09   , Cn5 , v072
	.byte	W09
	.byte		        As4 
	.byte	W09
@ 182   ----------------------------------------
	.byte		MOD   , 60
	.byte		N40   , Cn5 , v084
	.byte	W48
	.byte		MOD   , 20
	.byte		BEND  , c_v-4
	.byte		N08   
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W10
	.byte		N08   , As4 , v072
	.byte	W12
	.byte		BEND  , c_v-3
	.byte		N08   , Cn5 , v084
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W14
	.byte		        c_v-3
	.byte		N12   
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W06
@ 183   ----------------------------------------
	.byte	W08
	.byte		N06   
	.byte	W08
	.byte		        As4 
	.byte	W08
	.byte		BEND  , c_v-5
	.byte		N84   , Dn5 , v084, gtp2
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W20
	.byte		MOD   , 80
	.byte	W48
@ 184   ----------------------------------------
	.byte	W24
	.byte		        20
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		N11   , Gn4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 185   ----------------------------------------
	.byte		BEND  , c_v-5
	.byte		N40   , As3 
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W42
	.byte		N08   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		BEND  , c_v-3
	.byte		N60   , As3 , v084, gtp2
	.byte	W02
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W20
@ 186   ----------------------------------------
	.byte	W48
	.byte		N11   , Cn5 
	.byte	W12
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        An4 , v072
	.byte	W12
@ 187   ----------------------------------------
	.byte		        Fn4 
	.byte	W12
	.byte		        Cn4 , v060
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N88   , Dn4 , v084
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W68
@ 188   ----------------------------------------
	.byte	W36
	.byte		        c_v-5
	.byte		N08   
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W08
	.byte		N08   , As4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		BEND  , c_v-7
	.byte		N60   , Gn4 , v084, gtp2
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W20
@ 189   ----------------------------------------
	.byte	W96
@ 190   ----------------------------------------
	.byte		        c_v-3
	.byte		N08   , As4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N08   , Cn5 
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N36   , Dn5 
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W20
	.byte		MOD   , 40
	.byte	W48
@ 191   ----------------------------------------
	.byte		        20
	.byte	W48
	.byte		BEND  , c_v-7
	.byte		N12   , Gn5 
	.byte	W01
	.byte		BEND  , c_v-6
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W08
	.byte		N11   
	.byte	W12
	.byte		MOD   , 60
	.byte		N36   
	.byte	W24
@ 192   ----------------------------------------
	.byte	W48
	.byte		MOD   , 20
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		N11   
	.byte	W02
	.byte		BEND  , c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N12   
	.byte	W12
@ 193   ----------------------------------------
	.byte		        As5 , v072
	.byte	W12
	.byte		        Gn5 , v060
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N36   , Cn6 , v084
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W18
	.byte		MOD   , 100
	.byte	W48
@ 194   ----------------------------------------
	.byte		        20
	.byte	W24
	.byte		BEND  , c_v-7
	.byte		N12   
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W07
	.byte		N12   , As5 
	.byte	W12
	.byte		        Gn5 , v072
	.byte	W12
	.byte		        As5 , v060
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N36   , Gn5 , v084
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W20
@ 195   ----------------------------------------
	.byte	W72
	.byte		        c_v-3
	.byte		N12   , Gn4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N11   , As4 
	.byte	W12
@ 196   ----------------------------------------
	.byte		BEND  , c_v-5
	.byte		N20   , Cn5 
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W20
	.byte		        c_v-5
	.byte		N68   , Ds5 , v084, gtp2
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W16
	.byte		MOD   , 80
	.byte	W48
@ 197   ----------------------------------------
	.byte		        20
	.byte		BEND  , c_v-5
	.byte		N60   , Ds5 , v084, gtp2
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W66
	.byte		        c_v-5
	.byte		N68   , Fs4 , v084, gtp2
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v+0
	.byte	W16
@ 198   ----------------------------------------
	.byte	W48
	.byte		        c_v-4
	.byte		N12   
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W10
	.byte		N06   , Gn4 , v060
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N12   , En4 
	.byte	W12
	.byte		N11   , Fs4 
	.byte	W12
@ 199   ----------------------------------------
	.byte		        Gn4 
	.byte	W12
	.byte		N12   , An4 
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N68   , Gn4 , v084, gtp2
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W66
@ 200   ----------------------------------------
	.byte	W36
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N84   , Dn4 , v084, gtp2
	.byte	W24
@ 201   ----------------------------------------
	.byte		MOD   , 80
	.byte	W48
	.byte		        20
	.byte	W48
@ 202   ----------------------------------------
	.byte		BEND  , c_v-4
	.byte		N08   
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W04
	.byte		N08   , Cn4 , v060
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		BEND  , c_v-5
	.byte		N11   , Cn4 , v084
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N11   , As3 
	.byte	W12
	.byte		N18   , Gn3 
	.byte	W24
	.byte		        As3 
	.byte	W24
@ 203   ----------------------------------------
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N22   , As2 
	.byte	W24
	.byte		BEND  , c_v-5
	.byte		TIE   , Dn3 
	.byte	W03
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		        c_v-3
	.byte	W03
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v+0
	.byte	W12
@ 204   ----------------------------------------
	.byte	W12
	.byte		MOD   , 80
	.byte	W36
	.byte		        20
	.byte	W24
	.byte	W02
	.byte		EOT   
	.byte	W22
@ 205   ----------------------------------------
	.byte	W96
@ 206   ----------------------------------------
	.byte	W72
	.byte		VOL   , 120*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		N92   , Gn2 , v060, gtp2
	.byte	W24
@ 207   ----------------------------------------
	.byte	W96
@ 208   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_208:
	.byte	W60
	.byte		N11   , Gn3 , v080
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N10   , Gn3 
	.byte	W12
	.byte	PEND
@ 209   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_209:
	.byte		BEND  , c_v-3
	.byte		N23   , Cn4 , v092
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W11
	.byte		        c_v+2
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+7
	.byte		        c_v+10
	.byte	W10
	.byte		        c_v+0
	.byte		N44   , Cn4 , v072, gtp3
	.byte	W48
	.byte		TIE   , Fs3 , v080
	.byte	W24
	.byte	PEND
@ 210   ----------------------------------------
	.byte	W96
@ 211   ----------------------------------------
	.byte	W23
	.byte		EOT   
	.byte	W72
	.byte	W01
@ 212   ----------------------------------------
	.byte	W96
@ 213   ----------------------------------------
	.byte	W96
@ 214   ----------------------------------------
	.byte	W96
@ 215   ----------------------------------------
	.byte	W96
@ 216   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_216:
	.byte	W72
	.byte		BEND  , c_v+0
	.byte		N23   , Cn3 , v092
	.byte	W13
	.byte		BEND  , c_v+1
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+8
	.byte		        c_v+10
	.byte	W09
	.byte	PEND
@ 217   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_217:
	.byte		BEND  , c_v+0
	.byte		N23   , Cn3 , v060
	.byte	W24
	.byte		N48   , Fn2 , v080
	.byte	W48
	.byte		N04   
	.byte	W24
	.byte	PEND
@ 218   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_218:
	.byte		N22   , Fn2 , v080
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		N22   , Fs2 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W44
	.byte	W01
	.byte		N92   , Gn2 , v080, gtp2
	.byte	W24
	.byte	PEND
@ 219   ----------------------------------------
	.byte	W96
@ 220   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_220:
	.byte	W48
	.byte		BEND  , c_v+0
	.byte		N23   , Fn4 , v092
	.byte	W13
	.byte		BEND  , c_v+1
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+8
	.byte		        c_v+10
	.byte	W09
	.byte		        c_v+0
	.byte		N22   , Fn4 , v080
	.byte	W24
	.byte	PEND
@ 221   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_221:
	.byte		BEND  , c_v-4
	.byte		N48   , Dn4 , v092
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W68
	.byte	W01
	.byte		MOD   , 40
	.byte		TIE   , Cs4 , v080
	.byte	W24
	.byte	PEND
@ 222   ----------------------------------------
	.byte	W96
@ 223   ----------------------------------------
	.byte	W22
	.byte		EOT   
	.byte	W02
	.byte		MOD   , 20
	.byte	W72
@ 224   ----------------------------------------
	.byte	W96
@ 225   ----------------------------------------
	.byte	W96
@ 226   ----------------------------------------
	.byte	W90
	.byte	W01
	.byte	TEMPO , 138*mus_shine_on_you_crazy_diamond_tbs/2
	.byte	W05
@ 227   ----------------------------------------
	.byte	W96
@ 228   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_228:
	.byte	W24
	.byte		BEND  , c_v-1
	.byte		N11   , Fn5 , v096
	.byte	W01
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v-3
	.byte		N11   
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v-2
	.byte		N13   
	.byte	W01
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W22
	.byte		        c_v-2
	.byte		N13   , Dn5 
	.byte	W01
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W22
	.byte	PEND
@ 229   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_229:
	.byte		BEND  , c_v-2
	.byte		N13   , Cn5 , v096
	.byte	W01
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W22
	.byte		TIE   , Fn4 , v080
	.byte	W24
	.byte		MOD   , 80
	.byte	W48
	.byte	PEND
@ 230   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		MOD   , 20
	.byte		N16   , Gn3 , v072
	.byte	W24
@ 231   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_231:
	.byte		N16   , As3 , v068
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		BEND  , c_v+0
	.byte		N24   
	.byte	W09
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		        c_v+3
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+6
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+10
	.byte	W12
	.byte		        c_v+0
	.byte		        c_v+8
	.byte		N44   , Cn4 , v056, gtp2
	.byte	W01
	.byte		BEND  , c_v+7
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+4
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+2
	.byte		        c_v+0
	.byte	W21
	.byte	PEND
@ 232   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_232:
	.byte	W24
	.byte		N16   , Fs3 , v072
	.byte	W24
	.byte		        As3 , v068
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte	PEND
@ 233   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_233:
	.byte		BEND  , c_v+0
	.byte		N24   , Cn4 , v072
	.byte	W11
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+10
	.byte	W11
	.byte		        c_v+10
	.byte		N44   , Cn4 , v056, gtp2
	.byte	W01
	.byte		BEND  , c_v+8
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+3
	.byte		        c_v+0
	.byte	W44
	.byte	W02
	.byte		N22   , Fn3 , v068
	.byte	W24
	.byte	PEND
@ 234   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_234:
	.byte		N22   , As3 , v068
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		BEND  , c_v+0
	.byte		N23   
	.byte	W13
	.byte		BEND  , c_v+2
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+7
	.byte		        c_v+10
	.byte	W10
	.byte		        c_v-5
	.byte		N24   , Dn4 , v048
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W21
	.byte	PEND
@ 235   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_235:
	.byte		N24   , Cn4 , v056
	.byte	W24
	.byte		TIE   , En3 , v080
	.byte	W72
	.byte	PEND
@ 236   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N44   , Ds3 , v080, gtp2
	.byte	W24
@ 237   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_237:
	.byte	W24
	.byte		BEND  , c_v+0
	.byte		N23   , Fn3 , v080
	.byte	W13
	.byte		BEND  , c_v+1
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+8
	.byte		        c_v+10
	.byte	W09
	.byte		        c_v+0
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Cn4 , v072
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N22   , As3 , v060
	.byte		N22   , Ds4 
	.byte	W24
	.byte	PEND
@ 238   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_238:
	.byte	W24
	.byte		N23   , En3 , v088
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte	PEND
@ 239   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_239:
	.byte		N23   , Gn4 , v088
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        As3 
	.byte	W48
	.byte	PEND
@ 240   ----------------------------------------
	.byte	W96
@ 241   ----------------------------------------
	.byte	W96
@ 242   ----------------------------------------
	.byte	W72
	.byte		BEND  , c_v-10
	.byte		TIE   , Dn4 , v100
	.byte	W01
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W16
@ 243   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte	W02
@ 244   ----------------------------------------
	.byte		N08   
	.byte	W08
	.byte		N07   , Cn4 , v092
	.byte	W08
	.byte		N06   , As3 , v080
	.byte	W08
	.byte		BEND  , c_v-5
	.byte		TIE   , Dn4 , v100
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W19
	.byte		MOD   , 80
	.byte	W48
@ 245   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		MOD   , 20
	.byte		BEND  , c_v-5
	.byte		N48   , Cs4 , v092
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W18
@ 246   ----------------------------------------
	.byte	W24
	.byte		N22   , Cn4 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
@ 247   ----------------------------------------
	.byte		        Cs4 
	.byte	W24
	.byte		BEND  , c_v-5
	.byte		N68   , Dn4 , v092, gtp2
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W68
	.byte	W01
@ 248   ----------------------------------------
	.byte		N22   
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		BEND  , c_v-5
	.byte		N68   , Gs4 , v092, gtp2
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W18
@ 249   ----------------------------------------
	.byte		MOD   , 80
	.byte	W48
	.byte		        20
	.byte		N68   , Gn4 , v092, gtp2
	.byte	W24
	.byte		MOD   , 80
	.byte	W24
@ 250   ----------------------------------------
	.byte	W24
	.byte		        20
	.byte		BEND  , c_v-5
	.byte		N92   , Ds4 , v092, gtp2
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W18
	.byte		MOD   , 80
	.byte	W48
@ 251   ----------------------------------------
	.byte		        20
	.byte		N68   , Dn4 , v092, gtp2
	.byte	W24
	.byte		MOD   , 80
	.byte	W48
	.byte		        20
	.byte		BEND  , c_v-6
	.byte		N22   , Fn4 
	.byte	W01
	.byte		BEND  , c_v-5
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W21
@ 252   ----------------------------------------
	.byte		N12   , Ds4 , v076
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N68   , Cn4 , v092, gtp2
	.byte	W72
@ 253   ----------------------------------------
	.byte		BEND  , c_v-5
	.byte		N11   , Gs2 
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N11   , Gn2 
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N68   , Fn2 , v092, gtp3
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v+0
	.byte	W60
	.byte	W03
@ 254   ----------------------------------------
	.byte		N22   
	.byte	W24
	.byte		        Fs2 
	.byte	W48
	.byte		VOL   , 120*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		N92   , Gn2 , v060, gtp2
	.byte	W24
@ 255   ----------------------------------------
	.byte	W96
@ 256   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_208
@ 257   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_209
@ 258   ----------------------------------------
	.byte	W96
@ 259   ----------------------------------------
	.byte	W23
	.byte		EOT   , Fs3 
	.byte	W72
	.byte	W01
@ 260   ----------------------------------------
	.byte	W96
@ 261   ----------------------------------------
	.byte	W96
@ 262   ----------------------------------------
	.byte	W96
@ 263   ----------------------------------------
	.byte	W96
@ 264   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_216
@ 265   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_217
@ 266   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_218
@ 267   ----------------------------------------
	.byte	W96
@ 268   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_220
@ 269   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_221
@ 270   ----------------------------------------
	.byte	W96
@ 271   ----------------------------------------
	.byte	W22
	.byte		EOT   , Cs4 
	.byte	W02
	.byte		MOD   , 20
	.byte	W72
@ 272   ----------------------------------------
	.byte	W96
@ 273   ----------------------------------------
	.byte	W96
@ 274   ----------------------------------------
	.byte	W96
@ 275   ----------------------------------------
	.byte	W96
@ 276   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_228
@ 277   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_229
@ 278   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		EOT   , Fn4 
	.byte	W02
	.byte		MOD   , 20
	.byte		N16   , Gn3 , v072
	.byte	W24
@ 279   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_231
@ 280   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_232
@ 281   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_233
@ 282   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_234
@ 283   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_235
@ 284   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		EOT   , En3 
	.byte	W02
	.byte		N11   , Cn3 , v080
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N44   , Ds3 , v080, gtp2
	.byte	W24
@ 285   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_237
@ 286   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_238
@ 287   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_239
@ 288   ----------------------------------------
	.byte	W96
@ 289   ----------------------------------------
	.byte	W96
@ 290   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte	TEMPO , 138*mus_shine_on_you_crazy_diamond_tbs/2
	.byte	W15
@ 291   ----------------------------------------
	.byte	W96
@ 292   ----------------------------------------
	.byte	W96
@ 293   ----------------------------------------
	.byte	W96
@ 294   ----------------------------------------
	.byte	W96
@ 295   ----------------------------------------
	.byte	W96
@ 296   ----------------------------------------
	.byte	W60
	.byte		VOICE , 30
	.byte		VOL   , 75*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N24   , Fn2 , v100
	.byte	W12
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		        c_v+3
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+6
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+10
	.byte	W09
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N12   
	.byte	W12
@ 297   ----------------------------------------
	.byte		N48   
	.byte	W01
	.byte		BEND  , c_v+1
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+3
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+6
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+8
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+10
	.byte	W42
	.byte		N12   
	.byte	W48
@ 298   ----------------------------------------
	.byte	W24
	.byte		VOICE , 24
	.byte		VOL   , 60*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+0
	.byte	W72
@ 299   ----------------------------------------
	.byte	W72
	.byte	W03
	.byte		N30   , En3 , v072
	.byte	W12
	.byte		        Fn3 
	.byte	W09
@ 300   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_300:
	.byte	W03
	.byte		N30   , Gn2 , v072
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn4 
	.byte	W09
	.byte	PEND
@ 301   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_301:
	.byte	W03
	.byte		N30   , Fn3 , v072
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W09
	.byte	PEND
@ 302   ----------------------------------------
mus_shine_on_you_crazy_diamond_1_302:
	.byte	W03
	.byte		N30   , Dn4 , v072
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W09
	.byte	PEND
@ 303   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_300
@ 304   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_301
@ 305   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_302
@ 306   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_300
@ 307   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_301
@ 308   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_302
@ 309   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_300
@ 310   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_301
@ 311   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_302
@ 312   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_300
@ 313   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_301
@ 314   ----------------------------------------
	.byte	W03
	.byte		N30   , Dn4 , v072
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N12   , As3 
	.byte	W12
	.byte		N24   
	.byte	W09
@ 315   ----------------------------------------
	.byte	W15
	.byte		N30   
	.byte	W12
	.byte		        Gn3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , As3 
	.byte	W09
@ 316   ----------------------------------------
	.byte	W03
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , As3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , As3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W21
@ 317   ----------------------------------------
	.byte	W03
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , As3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   
	.byte	W09
@ 318   ----------------------------------------
	.byte	W15
	.byte		N12   
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , As3 
	.byte	W09
@ 319   ----------------------------------------
	.byte	W03
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , As3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W21
@ 320   ----------------------------------------
	.byte	W03
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N30   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W09
@ 321   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_300
@ 322   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_301
@ 323   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_302
@ 324   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_300
@ 325   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_301
@ 326   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_302
@ 327   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_300
@ 328   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_301
@ 329   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_302
@ 330   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_300
@ 331   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_301
@ 332   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_302
@ 333   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_300
@ 334   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_301
@ 335   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_302
@ 336   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_300
@ 337   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_301
@ 338   ----------------------------------------
	.byte	W03
	.byte		N30   , Dn4 , v072
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gn3 
	.byte	W09
@ 339   ----------------------------------------
	.byte	W03
	.byte		        Cs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        As3 
	.byte	W09
@ 340   ----------------------------------------
	.byte	W03
	.byte		        Gn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W09
@ 341   ----------------------------------------
	.byte	W03
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W09
@ 342   ----------------------------------------
	.byte	W03
	.byte		        Cn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An3 
	.byte	W09
@ 343   ----------------------------------------
	.byte	W03
	.byte		        Fs3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cn3 
	.byte	W09
@ 344   ----------------------------------------
	.byte	W03
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W09
@ 345   ----------------------------------------
	.byte	W03
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn4 
	.byte	W06
	.byte	TEMPO , 138*mus_shine_on_you_crazy_diamond_tbs/2
	.byte	W03
@ 346   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_1_301
@ 347   ----------------------------------------
	.byte	W03
	.byte		N30   , Dn4 , v072
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W30
	.byte	FINE

@**************** Track 2 (Midi-Chn.5) ****************@

mus_shine_on_you_crazy_diamond_2:
	.byte	KEYSH , mus_shine_on_you_crazy_diamond_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 95
	.byte		VOL   , 100*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W09
	.byte		TIE   , Gn4 , v028
	.byte	W84
	.byte	W03
@ 002   ----------------------------------------
	.byte	W56
	.byte		EOT   
	.byte	W40
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
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte		VOICE , 36
	.byte		VOL   , 60*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte	W72
	.byte		TIE   , Cn1 , v127
	.byte	W24
@ 066   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   , Cn1 , v104
	.byte	W12
@ 067   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		N66   , Cn1 , v104, gtp1
	.byte	W72
@ 068   ----------------------------------------
	.byte	W48
	.byte		N21   , Gn1 
	.byte	W24
	.byte		TIE   , Cn1 
	.byte	W24
@ 069   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 070   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		N19   
	.byte	W72
@ 071   ----------------------------------------
	.byte	W72
	.byte		N08   , An0 
	.byte	W12
	.byte		TIE   , Gn0 
	.byte	W12
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	W06
@ 074   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_074:
	.byte	W72
	.byte		TIE   , Gn0 , v104
	.byte	W24
	.byte	PEND
@ 075   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 076   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_076:
	.byte		N20   , Gn0 , v104
	.byte	W24
	.byte		N66   
	.byte	W72
	.byte	PEND
@ 077   ----------------------------------------
	.byte		N08   , An0 
	.byte	W12
	.byte		N09   , As0 
	.byte	W12
	.byte		N08   , Bn0 
	.byte	W12
	.byte		N09   , Cn1 
	.byte	W12
	.byte		N08   , Cs1 
	.byte	W12
	.byte		N09   , Dn1 
	.byte	W12
	.byte		TIE   , Ds1 
	.byte	W24
@ 078   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 079   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_079:
	.byte		N20   , Ds1 , v104
	.byte	W24
	.byte		N92   
	.byte	W72
	.byte	PEND
@ 080   ----------------------------------------
	.byte	W24
	.byte		N20   , As0 
	.byte	W24
	.byte		N21   , Ds1 
	.byte	W24
	.byte		TIE   , Dn1 
	.byte	W24
@ 081   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 082   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W72
@ 083   ----------------------------------------
	.byte	W72
	.byte		N08   , Fn0 
	.byte	W12
	.byte		TIE   , Gn0 
	.byte	W12
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	W06
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_074
@ 087   ----------------------------------------
	.byte	W80
	.byte		EOT   , Gn0 
	.byte	W04
	.byte		N08   , Gn0 , v104
	.byte	W12
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_076
@ 089   ----------------------------------------
	.byte		N20   , Gn1 , v104
	.byte	W24
	.byte		        Fn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		TIE   , Gn0 
	.byte	W24
@ 090   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W08
	.byte		N08   , Fn0 
	.byte	W12
@ 091   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_091:
	.byte		N20   , Gn0 , v104
	.byte	W24
	.byte		N92   
	.byte	W72
	.byte	PEND
@ 092   ----------------------------------------
	.byte	W24
	.byte		N20   , As0 
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		TIE   , Gn0 
	.byte	W24
@ 093   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   , Fn0 
	.byte	W12
@ 094   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_094:
	.byte		N20   , Gn0 , v104
	.byte	W24
	.byte		TIE   
	.byte	W72
	.byte	PEND
@ 095   ----------------------------------------
	.byte	W44
	.byte		EOT   
	.byte	W04
	.byte		N20   , Dn1 
	.byte	W24
	.byte		TIE   , Gn0 
	.byte	W24
@ 096   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W08
	.byte		N09   , Fn0 
	.byte	W12
@ 097   ----------------------------------------
	.byte		N21   , Gn0 
	.byte	W24
	.byte		N92   
	.byte	W72
@ 098   ----------------------------------------
	.byte	W24
	.byte		N21   , As0 
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		TIE   , Gn0 
	.byte	W24
@ 099   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N09   , Fn0 
	.byte	W12
@ 100   ----------------------------------------
	.byte		N20   , Gn0 
	.byte	W24
	.byte		N92   , Gn0 , v104, gtp1
	.byte	W72
@ 101   ----------------------------------------
	.byte	W24
	.byte		N20   , As0 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		TIE   , Cn1 
	.byte	W24
@ 102   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N09   , As0 
	.byte	W12
@ 103   ----------------------------------------
	.byte		N20   , Cn1 
	.byte	W24
	.byte		N92   , Cn1 , v104, gtp1
	.byte	W72
@ 104   ----------------------------------------
	.byte	W24
	.byte		N20   , Dn1 
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		TIE   , Cn1 
	.byte	W24
@ 105   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   , As0 
	.byte	W12
@ 106   ----------------------------------------
	.byte		N20   , Cn1 
	.byte	W24
	.byte		N68   , Cn1 , v104, gtp2
	.byte	W72
@ 107   ----------------------------------------
	.byte		N21   
	.byte	W24
	.byte		N19   , As0 
	.byte	W24
	.byte		N20   , Gn0 
	.byte	W24
	.byte		N08   , Fn0 
	.byte	W12
	.byte		N92   , Gn0 , v104, gtp1
	.byte	W12
@ 108   ----------------------------------------
	.byte	W84
	.byte		N09   , Fn0 
	.byte	W12
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_094
@ 110   ----------------------------------------
	.byte	W66
	.byte		EOT   , Gn0 
	.byte	W06
	.byte		TIE   , Gn0 , v104
	.byte	W24
@ 111   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		N08   , Fn0 
	.byte	W12
@ 112   ----------------------------------------
	.byte		N20   , Gn0 
	.byte	W24
	.byte		N66   , Gn0 , v104, gtp1
	.byte	W72
@ 113   ----------------------------------------
	.byte		N08   , An0 
	.byte	W12
	.byte		N09   , As0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N08   , Cn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N09   , Dn1 
	.byte	W12
	.byte		TIE   , Ds1 
	.byte	W24
@ 114   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_079
@ 116   ----------------------------------------
	.byte	W24
	.byte		N20   , As0 , v104
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte		TIE   , Dn1 
	.byte	W24
@ 117   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   , Cn1 
	.byte	W12
@ 118   ----------------------------------------
	.byte		N20   , Cs1 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		N08   , Gn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 119   ----------------------------------------
	.byte		N20   , Ds1 
	.byte	W24
	.byte		N21   , An1 
	.byte	W24
	.byte		N20   , Dn2 
	.byte	W24
	.byte		TIE   , Gn1 
	.byte	W24
@ 120   ----------------------------------------
	.byte	W96
@ 121   ----------------------------------------
	.byte	W18
	.byte		EOT   
	.byte	W06
	.byte		TIE   , Fs1 
	.byte	W72
@ 122   ----------------------------------------
	.byte	W66
	.byte		EOT   
	.byte	W06
	.byte		TIE   , Fn1 
	.byte	W24
@ 123   ----------------------------------------
	.byte	W96
@ 124   ----------------------------------------
	.byte	W19
	.byte		EOT   
	.byte	W05
	.byte		TIE   , En1 
	.byte	W72
@ 125   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		EOT   
	.byte	W05
	.byte		TIE   , Ds1 
	.byte	W24
@ 126   ----------------------------------------
	.byte	W96
@ 127   ----------------------------------------
	.byte	W19
	.byte		EOT   
	.byte	W05
	.byte		TIE   , Dn1 
	.byte	W72
@ 128   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		EOT   
	.byte	W05
	.byte		TIE   , Ds1 
	.byte	W24
@ 129   ----------------------------------------
	.byte	W96
@ 130   ----------------------------------------
	.byte	W19
	.byte		EOT   
	.byte	W05
	.byte		N92   , Dn1 
	.byte	W72
@ 131   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N04   , Cs1 
	.byte	W24
	.byte		VOL   , 40*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		TIE   , Gn0 , v096
	.byte	W24
@ 132   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 133   ----------------------------------------
	.byte		N08   
	.byte	W24
	.byte		N92   , Gn0 , v096, gtp1
	.byte	W72
@ 134   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_134:
	.byte	W24
	.byte		N21   , As0 , v096
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		TIE   , Gn0 
	.byte	W24
	.byte	PEND
@ 135   ----------------------------------------
	.byte	W92
	.byte		EOT   
	.byte	W04
@ 136   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		TIE   
	.byte	W72
@ 137   ----------------------------------------
	.byte	W44
	.byte		EOT   
	.byte	W04
	.byte		N21   , Dn1 
	.byte	W24
	.byte		TIE   , Gn0 
	.byte	W24
@ 138   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 139   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		N92   , Gn0 , v096, gtp1
	.byte	W72
@ 140   ----------------------------------------
	.byte	W24
	.byte		N21   , As0 
	.byte	W24
	.byte		N20   , Dn1 
	.byte	W24
	.byte		TIE   , Gn0 
	.byte	W24
@ 141   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 142   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		N92   
	.byte	W72
@ 143   ----------------------------------------
	.byte	W24
	.byte		N20   , As0 
	.byte	W24
	.byte		N21   , Dn1 
	.byte	W24
	.byte		TIE   , Cn1 
	.byte	W24
@ 144   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N09   
	.byte	W12
@ 145   ----------------------------------------
	.byte		N21   
	.byte	W24
	.byte		N92   , Cn1 , v096, gtp1
	.byte	W72
@ 146   ----------------------------------------
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		TIE   
	.byte	W24
@ 147   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		N08   
	.byte	W12
@ 148   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		N92   , Cn1 , v096, gtp1
	.byte	W72
@ 149   ----------------------------------------
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		TIE   , Gn0 
	.byte	W24
@ 150   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N09   
	.byte	W12
@ 151   ----------------------------------------
	.byte		N21   
	.byte	W24
	.byte		N92   
	.byte	W72
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_134
@ 153   ----------------------------------------
	.byte	W80
	.byte		EOT   , Gn0 
	.byte	W04
	.byte		N08   , Gn0 , v096
	.byte	W12
@ 154   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		N72   
	.byte	W72
@ 155   ----------------------------------------
	.byte		N08   , An0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N09   , Cs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N92   , Ds1 , v104
	.byte	W24
@ 156   ----------------------------------------
	.byte	W72
	.byte		N21   , Gn1 
	.byte	W24
@ 157   ----------------------------------------
	.byte		        As1 
	.byte	W24
	.byte		TIE   , Dn1 
	.byte	W72
@ 158   ----------------------------------------
	.byte	W32
	.byte		EOT   
	.byte	W04
	.byte		N08   , Cn1 
	.byte	W12
	.byte		N21   , Dn1 
	.byte	W24
	.byte		N92   , Ds1 
	.byte	W24
@ 159   ----------------------------------------
	.byte	W72
	.byte		N20   , Gn1 
	.byte	W24
@ 160   ----------------------------------------
	.byte		N21   , As1 
	.byte	W24
	.byte		N68   , Dn1 , v104, gtp3
	.byte	W72
@ 161   ----------------------------------------
	.byte		N08   , Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		N21   , Dn1 
	.byte	W24
	.byte		TIE   , Gn0 
	.byte	W24
@ 162   ----------------------------------------
	.byte	W72
	.byte		N20   , Dn1 
	.byte	W24
@ 163   ----------------------------------------
	.byte		N21   , Gn1 
	.byte	W24
	.byte		EOT   , Gn0 
	.byte		N92   , Cn1 
	.byte	W72
@ 164   ----------------------------------------
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		N92   , Gn0 
	.byte	W24
@ 165   ----------------------------------------
	.byte	W72
	.byte		N20   , Gn1 
	.byte	W24
@ 166   ----------------------------------------
	.byte		N21   , Dn1 
	.byte	W24
	.byte		TIE   
	.byte	W72
@ 167   ----------------------------------------
	.byte	W96
@ 168   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		VOL   , 60*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		N09   , An0 
	.byte	W12
@ 169   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_169:
	.byte		N21   , Dn1 , v104
	.byte	W24
	.byte		TIE   , Gn0 
	.byte	W72
	.byte	PEND
@ 170   ----------------------------------------
	.byte	W32
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W24
	.byte		N92   
	.byte	W24
@ 171   ----------------------------------------
	.byte	W72
	.byte		N21   , As0 
	.byte	W24
@ 172   ----------------------------------------
	.byte		N21   
	.byte	W24
	.byte		TIE   , Gn0 
	.byte	W72
@ 173   ----------------------------------------
	.byte	W44
	.byte		EOT   
	.byte	W04
	.byte		N20   
	.byte	W24
	.byte		TIE   
	.byte	W24
@ 174   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		EOT   
	.byte	W03
@ 175   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_169
@ 176   ----------------------------------------
	.byte	W32
	.byte		EOT   , Gn0 
	.byte	W04
	.byte		N09   , Gn0 , v104
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		N92   
	.byte	W24
@ 177   ----------------------------------------
	.byte	W72
	.byte		N20   , As0 
	.byte	W24
@ 178   ----------------------------------------
	.byte		        Dn1 
	.byte	W24
	.byte		TIE   , Gn0 
	.byte	W72
@ 179   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		N09   
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		N92   
	.byte	W24
@ 180   ----------------------------------------
	.byte	W72
	.byte		N20   , As0 
	.byte	W24
@ 181   ----------------------------------------
	.byte		        Dn1 
	.byte	W24
	.byte		TIE   , Cn1 
	.byte	W72
@ 182   ----------------------------------------
	.byte	W32
	.byte		EOT   
	.byte	W04
	.byte		N09   
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		N92   
	.byte	W24
@ 183   ----------------------------------------
	.byte	W72
	.byte		N20   
	.byte	W24
@ 184   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		TIE   
	.byte	W72
@ 185   ----------------------------------------
	.byte	W32
	.byte		EOT   
	.byte	W04
	.byte		N09   
	.byte	W12
	.byte		N21   
	.byte	W24
	.byte		N92   
	.byte	W24
@ 186   ----------------------------------------
	.byte	W72
	.byte		N21   
	.byte	W24
@ 187   ----------------------------------------
	.byte		N21   
	.byte	W24
	.byte		TIE   , Gn0 
	.byte	W72
@ 188   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		N09   
	.byte	W12
	.byte		N21   
	.byte	W24
	.byte		N92   
	.byte	W24
@ 189   ----------------------------------------
	.byte	W72
	.byte		N21   , As0 
	.byte	W24
@ 190   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		TIE   , Gn0 
	.byte	W72
@ 191   ----------------------------------------
	.byte	W32
	.byte		EOT   
	.byte	W04
	.byte		N09   
	.byte	W12
	.byte		N21   
	.byte	W24
	.byte		N68   , Gn0 , v104, gtp2
	.byte	W24
@ 192   ----------------------------------------
	.byte	W48
	.byte		N08   , An0 
	.byte	W12
	.byte		N09   , As0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N08   , Cn1 
	.byte	W12
@ 193   ----------------------------------------
	.byte		N09   , Cs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N92   , Ds1 , v104, gtp1
	.byte	W72
@ 194   ----------------------------------------
	.byte	W24
	.byte		N21   , Gn1 
	.byte	W24
	.byte		        As1 
	.byte	W24
	.byte		TIE   , Dn1 
	.byte	W24
@ 195   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		N09   , Cn1 
	.byte	W12
@ 196   ----------------------------------------
	.byte		N21   , Dn1 
	.byte	W24
	.byte		N92   , Ds1 
	.byte	W72
@ 197   ----------------------------------------
	.byte	W24
	.byte		N20   , Gn1 
	.byte	W24
	.byte		N21   , As1 
	.byte	W24
	.byte		N68   , Dn1 , v104, gtp3
	.byte	W24
@ 198   ----------------------------------------
	.byte	W48
	.byte		N08   , Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N09   , Gn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
@ 199   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_169
@ 200   ----------------------------------------
	.byte	W24
	.byte		N21   , Dn1 , v104
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		EOT   , Gn0 
	.byte		N92   , Cn1 
	.byte	W24
@ 201   ----------------------------------------
	.byte	W72
	.byte		N21   
	.byte	W24
@ 202   ----------------------------------------
	.byte		        Dn1 
	.byte	W24
	.byte		N92   , Gn0 
	.byte	W72
@ 203   ----------------------------------------
	.byte	W24
	.byte		N21   , Gn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		TIE   
	.byte	W24
@ 204   ----------------------------------------
	.byte	W96
@ 205   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 206   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_074
@ 207   ----------------------------------------
	.byte	W80
	.byte		EOT   , Gn0 
	.byte	W04
	.byte		N08   , Gn0 , v104
	.byte	W12
@ 208   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_091
@ 209   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_209:
	.byte	W24
	.byte		N20   , Dn1 , v104
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		TIE   , Fs0 
	.byte	W24
	.byte	PEND
@ 210   ----------------------------------------
	.byte	W92
	.byte		EOT   
	.byte	W04
@ 211   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_211:
	.byte		N20   , Fs0 , v104
	.byte	W24
	.byte		N92   , As0 
	.byte	W72
	.byte	PEND
@ 212   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_212:
	.byte	W24
	.byte		N20   , Cn1 , v104
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		N66   , Ds1 
	.byte	W24
	.byte	PEND
@ 213   ----------------------------------------
	.byte	W48
	.byte		        Dn1 
	.byte	W48
@ 214   ----------------------------------------
	.byte	W24
	.byte		        Cn1 
	.byte	W72
@ 215   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_215:
	.byte		N66   , As0 , v104
	.byte	W72
	.byte		N92   , Fn1 
	.byte	W24
	.byte	PEND
@ 216   ----------------------------------------
	.byte	W72
	.byte		N20   
	.byte	W24
@ 217   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_217:
	.byte		N20   , Cn1 , v104
	.byte	W24
	.byte		N66   , Fn0 , v104, gtp1
	.byte	W72
	.byte	PEND
@ 218   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_218:
	.byte		N20   , Fn0 , v104
	.byte	W24
	.byte		N19   , Fs0 
	.byte	W48
	.byte		TIE   , Gn0 
	.byte	W24
	.byte	PEND
@ 219   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 220   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_091
@ 221   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_209
@ 222   ----------------------------------------
	.byte	W90
	.byte		EOT   , Fs0 
	.byte	W06
@ 223   ----------------------------------------
	.byte		N20   , Fs0 , v104
	.byte	W24
	.byte		N64   , As0 , v104, gtp1
	.byte	W72
@ 224   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_224:
	.byte		N20   , As0 , v104
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		N66   , Ds1 
	.byte	W24
	.byte	PEND
@ 225   ----------------------------------------
	.byte	W48
	.byte		        Dn1 
	.byte	W48
@ 226   ----------------------------------------
	.byte	W24
	.byte		        Cn1 
	.byte	W72
@ 227   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_215
@ 228   ----------------------------------------
	.byte	W72
	.byte		N20   , Fn1 , v104
	.byte	W24
@ 229   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_229:
	.byte		N20   , Cn1 , v104
	.byte	W24
	.byte		N92   , Fn1 
	.byte	W72
	.byte	PEND
@ 230   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_230:
	.byte	W24
	.byte		N20   , Fn1 , v104
	.byte	W24
	.byte		        Fs1 
	.byte	W24
	.byte		TIE   , Gn1 
	.byte	W24
	.byte	PEND
@ 231   ----------------------------------------
	.byte	W96
@ 232   ----------------------------------------
	.byte	W18
	.byte		EOT   
	.byte	W06
	.byte		TIE   , Fs1 
	.byte	W72
@ 233   ----------------------------------------
	.byte	W66
	.byte		EOT   
	.byte	W06
	.byte		TIE   , Fn1 
	.byte	W24
@ 234   ----------------------------------------
	.byte	W96
@ 235   ----------------------------------------
	.byte	W18
	.byte		EOT   
	.byte	W06
	.byte		TIE   , En1 
	.byte	W72
@ 236   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		EOT   
	.byte	W05
	.byte		TIE   , Ds1 
	.byte	W24
@ 237   ----------------------------------------
	.byte	W96
@ 238   ----------------------------------------
	.byte	W19
	.byte		EOT   
	.byte	W05
	.byte		TIE   , En1 
	.byte	W72
@ 239   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		EOT   
	.byte	W05
	.byte		TIE   , Fn1 
	.byte	W24
@ 240   ----------------------------------------
	.byte	W96
@ 241   ----------------------------------------
	.byte	W19
	.byte		EOT   
	.byte	W05
	.byte		N20   , Dn1 
	.byte	W24
	.byte		        Fn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
@ 242   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_242:
	.byte		N66   , Fs1 , v104
	.byte	W72
	.byte		TIE   , Gn0 
	.byte	W24
	.byte	PEND
@ 243   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 244   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_091
@ 245   ----------------------------------------
	.byte	W24
	.byte		N20   , Dn1 , v104
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		TIE   , Fs1 
	.byte	W24
@ 246   ----------------------------------------
	.byte	W88
	.byte		EOT   
	.byte	W08
@ 247   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		N66   , As1 
	.byte	W72
@ 248   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		N66   , Ds2 
	.byte	W24
@ 249   ----------------------------------------
	.byte	W48
	.byte		        Dn2 
	.byte	W48
@ 250   ----------------------------------------
	.byte	W24
	.byte		        Cn2 
	.byte	W72
@ 251   ----------------------------------------
	.byte		        As1 
	.byte	W72
	.byte		N92   , Fn2 
	.byte	W24
@ 252   ----------------------------------------
	.byte	W72
	.byte		N20   
	.byte	W24
@ 253   ----------------------------------------
	.byte		        Cn2 
	.byte	W24
	.byte		N66   , Fn0 
	.byte	W72
@ 254   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		        Fs0 
	.byte	W48
	.byte		TIE   , Gn0 
	.byte	W24
@ 255   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 256   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_091
@ 257   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_209
@ 258   ----------------------------------------
	.byte	W92
	.byte		EOT   , Fs0 
	.byte	W04
@ 259   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_211
@ 260   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_212
@ 261   ----------------------------------------
	.byte	W48
	.byte		N66   , Dn1 , v104
	.byte	W48
@ 262   ----------------------------------------
	.byte	W24
	.byte		        Cn1 
	.byte	W72
@ 263   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_215
@ 264   ----------------------------------------
	.byte	W72
	.byte		N20   , Fn1 , v104
	.byte	W24
@ 265   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_217
@ 266   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_218
@ 267   ----------------------------------------
	.byte	W80
	.byte		EOT   , Gn0 
	.byte	W04
	.byte		N08   , Gn0 , v104
	.byte	W12
@ 268   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_091
@ 269   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_209
@ 270   ----------------------------------------
	.byte	W90
	.byte		EOT   , Fs0 
	.byte	W06
@ 271   ----------------------------------------
	.byte		N20   , Fs0 , v104
	.byte	W24
	.byte		N66   , As0 
	.byte	W72
@ 272   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_224
@ 273   ----------------------------------------
	.byte	W48
	.byte		N66   , Dn1 , v104
	.byte	W48
@ 274   ----------------------------------------
	.byte	W24
	.byte		        Cn1 
	.byte	W72
@ 275   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_215
@ 276   ----------------------------------------
	.byte	W72
	.byte		N20   , Fn1 , v104
	.byte	W24
@ 277   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_229
@ 278   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_230
@ 279   ----------------------------------------
	.byte	W96
@ 280   ----------------------------------------
	.byte	W18
	.byte		EOT   , Gn1 
	.byte	W06
	.byte		TIE   , Fs1 , v104
	.byte	W72
@ 281   ----------------------------------------
	.byte	W66
	.byte		EOT   
	.byte	W06
	.byte		TIE   , Fn1 
	.byte	W24
@ 282   ----------------------------------------
	.byte	W96
@ 283   ----------------------------------------
	.byte	W18
	.byte		EOT   
	.byte	W06
	.byte		TIE   , En1 
	.byte	W72
@ 284   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		EOT   
	.byte	W05
	.byte		TIE   , Ds1 
	.byte	W24
@ 285   ----------------------------------------
	.byte	W96
@ 286   ----------------------------------------
	.byte	W19
	.byte		EOT   
	.byte	W05
	.byte		TIE   , En1 
	.byte	W72
@ 287   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		EOT   
	.byte	W05
	.byte		TIE   , Fn1 
	.byte	W24
@ 288   ----------------------------------------
	.byte	W96
@ 289   ----------------------------------------
	.byte	W19
	.byte		EOT   
	.byte	W05
	.byte		N20   , Dn1 
	.byte	W24
	.byte		        Fn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
@ 290   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_242
@ 291   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		EOT   , Gn0 
	.byte	W04
	.byte		N08   , Fn0 , v104
	.byte	W12
	.byte		N20   , Gn0 
	.byte	W01
@ 292   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_292:
	.byte	W23
	.byte		N92   , Gn0 , v104
	.byte	W72
	.byte	W01
	.byte	PEND
@ 293   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_293:
	.byte	W23
	.byte		N20   , As0 , v104
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		TIE   , Gn0 
	.byte	W24
	.byte	W01
	.byte	PEND
@ 294   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		EOT   
	.byte	W04
	.byte		N08   , Fn0 
	.byte	W12
	.byte		N20   , Gn0 
	.byte	W01
@ 295   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_292
@ 296   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_293
@ 297   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		EOT   , Gn0 
	.byte	W04
	.byte		N08   , Fn0 , v104
	.byte	W12
	.byte		N20   , Gn0 
	.byte	W01
@ 298   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_292
@ 299   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_293
@ 300   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		EOT   , Gn0 
	.byte	W04
	.byte		N08   , Fn0 , v104
	.byte	W12
	.byte		N20   , Gn0 
	.byte	W01
@ 301   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_292
@ 302   ----------------------------------------
	.byte	W23
	.byte		N20   , As0 , v104
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		TIE   , Cn1 
	.byte	W24
	.byte	W01
@ 303   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		EOT   
	.byte	W04
	.byte		N08   , As0 
	.byte	W12
	.byte		N20   , Cn1 
	.byte	W01
@ 304   ----------------------------------------
	.byte	W23
	.byte		TIE   
	.byte	W72
	.byte	W01
@ 305   ----------------------------------------
	.byte	W42
	.byte	W01
	.byte		EOT   
	.byte	W04
	.byte		N20   , Dn1 
	.byte	W24
	.byte		TIE   , Cn1 
	.byte	W24
	.byte	W01
@ 306   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		EOT   
	.byte	W04
	.byte		N08   , As0 
	.byte	W12
	.byte		N20   , Cn1 
	.byte	W01
@ 307   ----------------------------------------
	.byte	W23
	.byte		N92   
	.byte	W72
	.byte	W01
@ 308   ----------------------------------------
	.byte	W23
	.byte		N04   , Gn1 
	.byte	W06
	.byte		N03   , Fs1 
	.byte	W03
	.byte		        Fn1 , v100
	.byte	W03
	.byte		N08   , En1 , v092
	.byte	W09
	.byte		N03   , Ds1 , v076
	.byte	W03
	.byte		N04   , Dn1 , v072
	.byte	W03
	.byte		        Cs1 , v068
	.byte	W06
	.byte		N03   , Cn1 , v060
	.byte	W03
	.byte		N04   , Bn0 , v056
	.byte	W03
	.byte		        As0 , v052
	.byte	W06
	.byte		N03   , Gs0 , v040
	.byte		N02   , An0 , v048
	.byte	W03
	.byte		N64   , Gn0 , v104, gtp1
	.byte	W24
	.byte	W01
@ 309   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N32   
	.byte	W36
	.byte		N08   , Fn0 
	.byte	W12
	.byte		N20   , Gn0 
	.byte	W01
@ 310   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_292
@ 311   ----------------------------------------
	.byte	W23
	.byte		N20   , An0 , v104
	.byte	W24
	.byte		        As0 
	.byte	W24
	.byte		TIE   , Gn0 
	.byte	W24
	.byte	W01
@ 312   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		EOT   
	.byte	W04
	.byte		N08   , Fn0 
	.byte	W12
	.byte		N20   , Gn0 
	.byte	W01
@ 313   ----------------------------------------
	.byte	W23
	.byte		N66   
	.byte	W72
	.byte		N08   , An0 
	.byte	W01
@ 314   ----------------------------------------
	.byte	W11
	.byte		        As0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		TIE   , Ds1 
	.byte	W24
	.byte	W01
@ 315   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		EOT   
	.byte	W04
	.byte		N08   , Dn1 
	.byte	W12
	.byte		N20   , Ds1 
	.byte	W01
@ 316   ----------------------------------------
	.byte	W23
	.byte		N92   
	.byte	W72
	.byte	W01
@ 317   ----------------------------------------
	.byte	W23
	.byte		N20   , As0 
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte		TIE   , Dn1 
	.byte	W24
	.byte	W01
@ 318   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		EOT   
	.byte	W04
	.byte		N08   , Cn1 
	.byte	W12
	.byte		N20   , Dn1 
	.byte	W01
@ 319   ----------------------------------------
	.byte	W23
	.byte		N44   
	.byte	W48
	.byte		N20   
	.byte	W24
	.byte		        As0 
	.byte	W01
@ 320   ----------------------------------------
	.byte	W23
	.byte		N20   
	.byte	W24
	.byte		        An0 
	.byte	W24
	.byte		N19   , Gn0 
	.byte	W24
	.byte		N06   
	.byte	W01
@ 321   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_321:
	.byte	W44
	.byte	W03
	.byte		N20   , Gn0 , v104
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N08   , An0 
	.byte	W01
	.byte	PEND
@ 322   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_322:
	.byte	W11
	.byte		N08   , As0 , v104
	.byte	W12
	.byte		N20   , Gn0 
	.byte	W24
	.byte		N06   
	.byte	W48
	.byte		N20   
	.byte	W01
	.byte	PEND
@ 323   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_323:
	.byte	W23
	.byte		N06   , Gn0 , v104
	.byte	W24
	.byte		N08   , An0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		N20   , Gn0 
	.byte	W24
	.byte		N06   
	.byte	W01
	.byte	PEND
@ 324   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_321
@ 325   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_322
@ 326   ----------------------------------------
	.byte	W23
	.byte		N06   , Gn0 , v104
	.byte	W24
	.byte		N08   , An0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		N20   , Cn1 
	.byte	W24
	.byte		N06   
	.byte	W01
@ 327   ----------------------------------------
mus_shine_on_you_crazy_diamond_2_327:
	.byte	W44
	.byte	W03
	.byte		N20   , Cn1 , v104
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N08   , Dn1 
	.byte	W01
	.byte	PEND
@ 328   ----------------------------------------
	.byte	W11
	.byte		        En1 
	.byte	W12
	.byte		N20   , Cn1 
	.byte	W24
	.byte		N06   
	.byte	W48
	.byte		N20   
	.byte	W01
@ 329   ----------------------------------------
	.byte	W23
	.byte		N06   
	.byte	W24
	.byte		N08   , Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N20   , Cn1 
	.byte	W24
	.byte		N06   
	.byte	W01
@ 330   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_327
@ 331   ----------------------------------------
	.byte	W11
	.byte		N08   , En1 , v104
	.byte	W12
	.byte		N20   , Cn1 
	.byte	W24
	.byte		N08   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W01
@ 332   ----------------------------------------
	.byte	W11
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N19   , Gn0 
	.byte	W24
	.byte		N06   
	.byte	W01
@ 333   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_321
@ 334   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_322
@ 335   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_323
@ 336   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_321
@ 337   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_2_322
@ 338   ----------------------------------------
	.byte	W23
	.byte		N06   , Gn0 , v104
	.byte	W06
	.byte		        Gs0 , v096
	.byte	W06
	.byte		        An0 , v084
	.byte	W06
	.byte		        As0 , v076
	.byte	W06
	.byte		        Bn0 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		N07   , Cs1 , v060
	.byte	W06
	.byte		N06   , Dn1 , v056
	.byte	W06
	.byte		N19   , Ds1 , v104
	.byte	W24
	.byte		N06   
	.byte	W01
@ 339   ----------------------------------------
	.byte	W23
	.byte		N08   , Cs1 
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N20   , Ds1 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn1 
	.byte	W01
@ 340   ----------------------------------------
	.byte	W23
	.byte		N20   , Ds1 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N08   , Cs1 
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N20   , Ds1 
	.byte	W01
@ 341   ----------------------------------------
	.byte	W23
	.byte		N06   
	.byte	W24
	.byte		        Cs1 
	.byte	W24
	.byte		N19   , Dn1 
	.byte	W24
	.byte		N06   
	.byte	W01
@ 342   ----------------------------------------
	.byte	W23
	.byte		N08   , Cn1 
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N20   , Dn1 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Cn1 
	.byte	W01
@ 343   ----------------------------------------
	.byte	W23
	.byte		N32   , Dn1 
	.byte	W36
	.byte		        Cn1 
	.byte	W36
	.byte		        As0 
	.byte	W01
@ 344   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		        An0 
	.byte	W36
	.byte		TIE   , Gn0 
	.byte	W24
	.byte	W01
@ 345   ----------------------------------------
	.byte	W96
@ 346   ----------------------------------------
	.byte	W17
	.byte		EOT   
	.byte	W78
	.byte	W01
@ 347   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte	FINE

@**************** Track 3 (Midi-Chn.7) ****************@

mus_shine_on_you_crazy_diamond_3:
	.byte		VOL   , 127*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte	KEYSH , mus_shine_on_you_crazy_diamond_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 30
	.byte		PAN   , c_v-14
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
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		TIE   , En3 , v080
	.byte		TIE   , En4 , v096
	.byte	W01
	.byte		        Gn3 , v080
	.byte		TIE   , Gn4 , v096
	.byte	W01
	.byte		        Cn4 , v080
	.byte		TIE   , Cn5 , v096
	.byte	W24
	.byte		MOD   , 60
	.byte	W23
@ 067   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		EOT   , En3 
	.byte	W01
	.byte		        Gn4 
	.byte	W01
	.byte		        Cn5 
	.byte	W01
	.byte		        Cn4 
	.byte	W01
	.byte		        Gn3 
	.byte	W03
	.byte		        En4 
	.byte	W02
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N68   , En3 , v080, gtp3
	.byte		N72   , En4 , v096
	.byte	W02
	.byte		        Gn3 , v080
	.byte		N68   , Gn4 , v096, gtp2
	.byte	W01
	.byte		        Cn4 , v080, gtp2
	.byte		N68   , Cn5 , v096, gtp1
	.byte	W44
	.byte	W03
@ 070   ----------------------------------------
mus_shine_on_you_crazy_diamond_3_070:
	.byte	W48
	.byte		VOICE , 28
	.byte		MOD   , 0
	.byte		N11   , Fn3 , v080
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 071   ----------------------------------------
mus_shine_on_you_crazy_diamond_3_071:
	.byte		N11   , Fn3 , v080
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn3 , v076
	.byte	W12
	.byte		TIE   , Gn3 , v080
	.byte	W12
	.byte	PEND
@ 072   ----------------------------------------
mus_shine_on_you_crazy_diamond_3_072:
	.byte	W44
	.byte	W03
	.byte		VOICE , 30
	.byte		MOD   , 0
	.byte		TIE   , Dn3 , v080
	.byte		TIE   , Dn4 , v096
	.byte	W01
	.byte		        Gn3 , v080
	.byte		TIE   , Gn4 , v096
	.byte	W01
	.byte		        As3 , v080
	.byte		TIE   , As4 , v096
	.byte	W24
	.byte		MOD   , 60
	.byte	W23
	.byte	PEND
@ 073   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		EOT   , Dn3 
	.byte	W01
	.byte		        Gn4 
	.byte	W01
	.byte		        As4 
	.byte	W07
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
mus_shine_on_you_crazy_diamond_3_075:
	.byte	W44
	.byte	W03
	.byte		MOD   , 0
	.byte		TIE   , Dn3 , v080
	.byte		TIE   , Dn4 , v096
	.byte	W01
	.byte		        Gn3 , v080
	.byte		TIE   , Gn4 , v096
	.byte	W01
	.byte		        As3 , v080
	.byte		TIE   , As4 , v096
	.byte	W24
	.byte		MOD   , 60
	.byte	W23
	.byte	PEND
@ 076   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		EOT   , Dn3 
	.byte	W01
	.byte		        Gn4 
	.byte	W01
	.byte		        As4 
	.byte	W07
@ 077   ----------------------------------------
	.byte	W66
	.byte		        Gn3 
	.byte		EOT   
	.byte		EOT   
	.byte		EOT   , As3 
	.byte		EOT   
	.byte	W01
	.byte		EOT   , Dn4 
	.byte		EOT   
	.byte	W28
	.byte	W01
@ 078   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		TIE   , Ds3 , v080
	.byte		TIE   , Ds4 , v096
	.byte	W01
	.byte		        Gn3 , v080
	.byte		TIE   , Gn4 , v096
	.byte	W01
	.byte		        As3 , v080
	.byte		TIE   , As4 , v096
	.byte	W24
	.byte		MOD   , 60
	.byte	W23
@ 079   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		EOT   , Ds3 
	.byte	W01
	.byte		        Gn4 
	.byte	W01
	.byte		        As4 
	.byte	W07
@ 080   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		        Ds4 
	.byte	W19
	.byte		        As3 
	.byte	W01
	.byte		        Gn3 
	.byte	W28
	.byte	W01
@ 081   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		MOD   , 0
	.byte		N92   , Dn3 , v080, gtp3
	.byte		N92   , Dn4 , v096, gtp3
	.byte	W01
	.byte		N66   , Fs3 , v080
	.byte		N92   , Fs4 , v096, gtp2
	.byte	W01
	.byte		N66   , An3 , v080
	.byte		N92   , An4 , v096, gtp1
	.byte	W24
	.byte		MOD   , 60
	.byte	W23
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_070
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_071
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_072
@ 085   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		EOT   , Dn3 
	.byte	W01
	.byte		        Gn4 
	.byte	W01
	.byte		        As4 
	.byte	W07
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_075
@ 088   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		EOT   , Dn3 
	.byte	W01
	.byte		        Gn4 
	.byte	W01
	.byte		        As4 
	.byte	W07
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W23
	.byte		        Gn3 
	.byte		EOT   
	.byte		EOT   
	.byte	W01
	.byte	W72
@ 092   ----------------------------------------
	.byte		MOD   , 0
	.byte		VOL   , 80*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		N21   , As2 , v080
	.byte		N21   , As3 , v112
	.byte	W21
	.byte		EOT   
	.byte		EOT   
	.byte	W03
	.byte		N21   , Fn3 
	.byte		N21   , Fn4 
	.byte	W24
	.byte		        Gn2 
	.byte		N20   , Gn3 
	.byte	W24
	.byte		TIE   , En3 
	.byte		TIE   , En4 
	.byte	W24
@ 093   ----------------------------------------
	.byte		MOD   , 60
	.byte	W96
@ 094   ----------------------------------------
	.byte	W88
	.byte		EOT   , En3 
	.byte		        En4 
	.byte	W08
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte		MOD   , 0
	.byte		N20   , As2 , v080
	.byte		N20   , As3 , v112
	.byte	W24
	.byte		        Fn3 , v080
	.byte		N20   , Fn4 , v112
	.byte	W24
	.byte		        Gn2 , v080
	.byte		N20   , Gn3 , v112
	.byte	W24
	.byte		MOD   , 40
	.byte		TIE   , En3 , v080
	.byte		TIE   , En4 , v112
	.byte	W24
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	W88
	.byte		EOT   , En3 
	.byte		        En4 
	.byte	W08
@ 101   ----------------------------------------
	.byte		MOD   , 0
	.byte		N18   , As2 , v080
	.byte		N18   , As3 , v112
	.byte	W24
	.byte		N21   , Fn3 , v080
	.byte		N21   , Fn4 , v112
	.byte	W24
	.byte		N20   , Gn2 , v080
	.byte		N20   , Gn3 , v112
	.byte	W18
	.byte		EOT   , Dn4 
	.byte		EOT   
	.byte	W06
	.byte		MOD   , 40
	.byte		TIE   , En3 , v080
	.byte		TIE   , En4 , v112
	.byte	W24
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W88
	.byte		EOT   , En3 
	.byte	W08
	.byte		        En4 
@ 104   ----------------------------------------
	.byte		MOD   , 0
	.byte		N18   , As2 , v080
	.byte		N18   , As3 , v112
	.byte	W24
	.byte		N20   , Fn3 , v080
	.byte		N20   , Fn4 , v112
	.byte	W24
	.byte		        Gn2 , v080
	.byte		N20   , Gn3 , v112
	.byte	W24
	.byte		MOD   , 40
	.byte		TIE   , En3 , v080
	.byte		TIE   , En4 , v112
	.byte	W24
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	W22
	.byte		EOT   , En3 
	.byte	W02
	.byte		        En4 
	.byte	W72
@ 107   ----------------------------------------
	.byte		MOD   , 0
	.byte		VOL   , 90*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte	W68
	.byte	W02
	.byte		N10   , Fn2 , v080
	.byte		N10   , An3 , v096
	.byte	W02
	.byte		N09   , Cn3 , v080
	.byte		N09   , Fn4 , v096
	.byte	W09
	.byte		MOD   , 40
	.byte		N92   , Gn2 , v080, gtp3
	.byte		TIE   , Gn3 , v096
	.byte	W01
	.byte		        As2 , v080
	.byte		TIE   , As3 , v096
	.byte	W02
	.byte		        Dn3 , v080
	.byte		TIE   , Gn4 , v096
	.byte	W12
@ 108   ----------------------------------------
	.byte	W48
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W03
@ 109   ----------------------------------------
	.byte	W02
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W04
	.byte		EOT   , As2 
	.byte	W01
	.byte		        Dn3 
	.byte		        Gn4 
	.byte	W02
	.byte		VOL   , 75*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte	W72
@ 110   ----------------------------------------
	.byte		MOD   , 0
	.byte		N20   , As2 , v080
	.byte		N20   , As3 , v112
	.byte	W19
	.byte		EOT   
	.byte	W05
	.byte		N20   , Fn3 , v080
	.byte		N20   , Fn4 , v112
	.byte	W24
	.byte		N21   , Gn2 , v080
	.byte		N21   , Gn3 , v112
	.byte	W21
	.byte		EOT   
	.byte	W03
	.byte		MOD   , 40
	.byte		TIE   , En3 , v080
	.byte		TIE   , En4 , v112
	.byte	W24
@ 111   ----------------------------------------
	.byte	W96
@ 112   ----------------------------------------
	.byte	W88
	.byte		EOT   , En3 
	.byte		        En4 
	.byte	W08
@ 113   ----------------------------------------
	.byte		MOD   , 0
	.byte		N18   , As2 , v080
	.byte		N18   , As3 , v112
	.byte	W24
	.byte		        Fn3 , v080
	.byte		N20   , Fn4 , v112
	.byte	W24
	.byte		N21   , Gn2 , v080
	.byte		N21   , Gn3 , v112
	.byte	W24
	.byte		MOD   , 40
	.byte		TIE   , Ds3 , v080
	.byte		TIE   , Ds4 , v112
	.byte	W24
@ 114   ----------------------------------------
	.byte	W96
@ 115   ----------------------------------------
	.byte	W19
	.byte		EOT   
	.byte	W76
	.byte	W01
@ 116   ----------------------------------------
	.byte	W64
	.byte		        Ds3 
	.byte	W08
	.byte		TIE   , Dn3 , v080
	.byte		TIE   , Dn4 , v112
	.byte	W24
@ 117   ----------------------------------------
	.byte	W96
@ 118   ----------------------------------------
	.byte	W96
@ 119   ----------------------------------------
	.byte	W64
	.byte		EOT   , Dn3 
	.byte	W02
	.byte		        Dn4 
	.byte	W06
	.byte		TIE   , Gn2 , v080
	.byte		TIE   , Gn3 , v112
	.byte	W24
@ 120   ----------------------------------------
	.byte	W96
@ 121   ----------------------------------------
	.byte	W17
	.byte		EOT   , Gn2 
	.byte	W07
	.byte		        Gn3 
	.byte		TIE   , Fs2 , v080
	.byte		TIE   , Fs3 , v112
	.byte	W72
@ 122   ----------------------------------------
	.byte	W64
	.byte		EOT   , Fs2 
	.byte	W06
	.byte		        Fs3 
	.byte	W02
	.byte		TIE   , Fn2 , v080
	.byte		TIE   , Fn3 , v112
	.byte	W24
@ 123   ----------------------------------------
	.byte	W96
@ 124   ----------------------------------------
	.byte	W16
	.byte		EOT   , Fn2 
	.byte	W06
	.byte		        Fn3 
	.byte	W02
	.byte		N64   , En2 , v080
	.byte		TIE   , En3 , v112
	.byte	W72
@ 125   ----------------------------------------
	.byte		N64   , En2 , v080
	.byte	W68
	.byte	W02
	.byte		EOT   , En3 
	.byte	W02
	.byte		TIE   , Ds2 
	.byte		TIE   , Ds3 , v112
	.byte	W24
@ 126   ----------------------------------------
	.byte	W96
@ 127   ----------------------------------------
	.byte	W16
	.byte		EOT   , Ds2 
	.byte		        Ds3 
	.byte	W08
	.byte		TIE   , Dn2 , v080
	.byte		TIE   , Dn3 , v112
	.byte	W72
@ 128   ----------------------------------------
	.byte	W64
	.byte		EOT   , Dn2 
	.byte		        Dn3 
	.byte	W08
	.byte		TIE   , Ds2 , v080
	.byte		TIE   , Ds3 , v112
	.byte	W24
@ 129   ----------------------------------------
	.byte	W96
@ 130   ----------------------------------------
	.byte	W16
	.byte		EOT   , Ds2 
	.byte		        Ds3 
	.byte	W08
	.byte		TIE   , Dn2 , v080
	.byte		TIE   , Dn3 , v112
	.byte	W72
@ 131   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		EOT   , Dn2 
	.byte		        Dn3 
	.byte	W30
	.byte	W01
@ 132   ----------------------------------------
	.byte	W48
	.byte		MOD   , 20
	.byte		VOL   , 45*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		N11   , Gn2 , v080
	.byte		N11   , As3 , v096
	.byte	W03
	.byte		N08   , Dn3 , v080
	.byte		N09   , Gn4 , v096
	.byte	W44
	.byte	W01
@ 133   ----------------------------------------
	.byte	W96
@ 134   ----------------------------------------
mus_shine_on_you_crazy_diamond_3_134:
	.byte		N11   , Gn2 , v080
	.byte		N11   , Dn4 , v096
	.byte	W03
	.byte		N09   , Gn4 
	.byte	W92
	.byte	W01
	.byte	PEND
@ 135   ----------------------------------------
	.byte	W48
	.byte		N02   , Gn2 , v080
	.byte		N11   , As3 , v096
	.byte	W03
	.byte		N08   , Gn2 , v080
	.byte		N09   , Gn4 , v096
	.byte	W44
	.byte	W01
@ 136   ----------------------------------------
	.byte	W96
@ 137   ----------------------------------------
	.byte		N11   , Gn2 , v080
	.byte		N11   , Gn3 , v096
	.byte	W03
	.byte		N08   , Dn3 , v080
	.byte		N09   , Gn4 , v096
	.byte	W92
	.byte	W01
@ 138   ----------------------------------------
mus_shine_on_you_crazy_diamond_3_138:
	.byte	W48
	.byte		N11   , Gn2 , v080
	.byte		N11   , As3 , v096
	.byte	W03
	.byte		N09   , Dn3 , v080
	.byte		N09   , Gn4 , v096
	.byte	W44
	.byte	W01
	.byte	PEND
@ 139   ----------------------------------------
	.byte	W96
@ 140   ----------------------------------------
mus_shine_on_you_crazy_diamond_3_140:
	.byte		N11   , Gn2 , v080
	.byte		N11   , As3 , v096
	.byte	W03
	.byte		N08   , Dn3 , v080
	.byte		N09   , Gn4 , v096
	.byte	W92
	.byte	W01
	.byte	PEND
@ 141   ----------------------------------------
mus_shine_on_you_crazy_diamond_3_141:
	.byte	W48
	.byte		N11   , Gn2 , v080
	.byte		N11   , Dn4 , v096
	.byte	W03
	.byte		N09   , Gn4 
	.byte	W44
	.byte	W01
	.byte	PEND
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_140
@ 144   ----------------------------------------
mus_shine_on_you_crazy_diamond_3_144:
	.byte	W48
	.byte		N11   , Cn2 , v080
	.byte		N11   , Ds3 , v096
	.byte	W03
	.byte		N08   , Gn2 , v080
	.byte		N09   , Cn4 , v096
	.byte	W44
	.byte	W01
	.byte	PEND
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
mus_shine_on_you_crazy_diamond_3_146:
	.byte		N11   , Cn2 , v080
	.byte		N11   , Ds3 , v096
	.byte	W03
	.byte		N08   , Gn2 , v080
	.byte		N09   , Cn4 , v096
	.byte	W92
	.byte	W01
	.byte	PEND
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_144
@ 148   ----------------------------------------
	.byte	W96
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_146
@ 150   ----------------------------------------
mus_shine_on_you_crazy_diamond_3_150:
	.byte	W48
	.byte		N11   , Gn2 , v080
	.byte		N11   , As3 , v096
	.byte	W03
	.byte		N08   , Dn3 , v080
	.byte		N09   , Gn4 , v096
	.byte	W44
	.byte	W01
	.byte	PEND
@ 151   ----------------------------------------
	.byte	W96
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_140
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_150
@ 154   ----------------------------------------
	.byte	W96
@ 155   ----------------------------------------
	.byte		N11   , Gn2 , v080
	.byte		N12   , Dn4 , v096
	.byte	W03
	.byte		N09   , Gn4 
	.byte	W92
	.byte	W01
@ 156   ----------------------------------------
	.byte	W48
	.byte		N11   , Ds2 , v080
	.byte		N11   , As3 , v096
	.byte	W03
	.byte		N09   , Cs4 
	.byte	W44
	.byte	W01
@ 157   ----------------------------------------
	.byte	W96
@ 158   ----------------------------------------
	.byte		N11   , Dn2 , v080
	.byte		N11   , Fs3 , v096
	.byte	W03
	.byte		N08   , An2 , v080
	.byte		N09   , Cn4 , v096
	.byte	W92
	.byte	W01
@ 159   ----------------------------------------
	.byte	W48
	.byte		N11   , Ds2 , v080
	.byte		N11   , Gn3 , v096
	.byte	W03
	.byte		N08   , As2 , v080
	.byte		N09   , Cs4 , v096
	.byte	W44
	.byte	W01
@ 160   ----------------------------------------
	.byte	W96
@ 161   ----------------------------------------
	.byte		N11   , Dn2 , v080
	.byte		N12   , Fs3 , v096
	.byte	W03
	.byte		N09   , An2 , v080
	.byte		N09   , Cn4 , v096
	.byte	W92
	.byte	W01
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_141
@ 163   ----------------------------------------
	.byte	W96
@ 164   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_146
@ 165   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_138
@ 166   ----------------------------------------
	.byte	W24
	.byte		TIE   , Dn2 , v080
	.byte		TIE   , Fn3 , v096
	.byte	W03
	.byte		        An2 , v080
	.byte		TIE   , Cn4 , v096
	.byte	W68
	.byte	W01
@ 167   ----------------------------------------
	.byte	W96
@ 168   ----------------------------------------
	.byte	W96
@ 169   ----------------------------------------
	.byte	W19
	.byte		EOT   , Dn2 
	.byte	W01
	.byte		        An2 
	.byte		        Fn3 
	.byte		        Cn4 
	.byte	W76
@ 170   ----------------------------------------
	.byte		MOD   , 20
	.byte		VOL   , 65*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		N11   , Gn2 , v080
	.byte		N11   , As3 , v096
	.byte	W03
	.byte		N08   , Dn3 , v080
	.byte		N09   , Gn4 , v096
	.byte	W92
	.byte	W01
@ 171   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_141
@ 172   ----------------------------------------
	.byte	W96
@ 173   ----------------------------------------
	.byte		N02   , Gn2 , v080
	.byte		N11   , As3 , v096
	.byte	W03
	.byte		N08   , Gn2 , v080
	.byte		N09   , Gn4 , v096
	.byte	W92
	.byte	W01
@ 174   ----------------------------------------
	.byte	W48
	.byte		N11   , Gn2 , v080
	.byte		N11   , Gn3 , v096
	.byte	W03
	.byte		N08   , Dn3 , v080
	.byte		N09   , Gn4 , v096
	.byte	W44
	.byte	W01
@ 175   ----------------------------------------
	.byte	W96
@ 176   ----------------------------------------
	.byte		N11   , Gn2 , v080
	.byte		N11   , As3 , v096
	.byte	W03
	.byte		N09   , Dn3 , v080
	.byte		N09   , Gn4 , v096
	.byte	W92
	.byte	W01
@ 177   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_150
@ 178   ----------------------------------------
	.byte	W96
@ 179   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_134
@ 180   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_150
@ 181   ----------------------------------------
	.byte	W96
@ 182   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_146
@ 183   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_144
@ 184   ----------------------------------------
	.byte	W96
@ 185   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_146
@ 186   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_144
@ 187   ----------------------------------------
	.byte	W96
@ 188   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_140
@ 189   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_150
@ 190   ----------------------------------------
	.byte	W96
@ 191   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_140
@ 192   ----------------------------------------
	.byte	W48
	.byte		N11   , Gn2 , v080
	.byte		N12   , Dn4 , v096
	.byte	W03
	.byte		N09   , Gn4 
	.byte	W44
	.byte	W01
@ 193   ----------------------------------------
	.byte	W96
@ 194   ----------------------------------------
	.byte		N11   , Ds2 , v080
	.byte		N11   , As3 , v096
	.byte	W03
	.byte		N09   , Cs4 
	.byte	W92
	.byte	W01
@ 195   ----------------------------------------
	.byte	W48
	.byte		N11   , Dn2 , v080
	.byte		N11   , Fs3 , v096
	.byte	W03
	.byte		N08   , An2 , v080
	.byte		N09   , Cn4 , v096
	.byte	W44
	.byte	W01
@ 196   ----------------------------------------
	.byte	W96
@ 197   ----------------------------------------
	.byte		N11   , Ds2 , v080
	.byte		N11   , Gn3 , v096
	.byte	W03
	.byte		N08   , As2 , v080
	.byte		N09   , Cs4 , v096
	.byte	W92
	.byte	W01
@ 198   ----------------------------------------
	.byte	W48
	.byte		N11   , Dn2 , v080
	.byte		N12   , Fs3 , v096
	.byte	W03
	.byte		N09   , An2 , v080
	.byte		N09   , Cn4 , v096
	.byte	W44
	.byte	W01
@ 199   ----------------------------------------
	.byte	W96
@ 200   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_134
@ 201   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_144
@ 202   ----------------------------------------
	.byte	W96
@ 203   ----------------------------------------
	.byte		N11   , Gn2 , v080
	.byte		N11   , As3 , v096
	.byte	W03
	.byte		N09   , Dn3 , v080
	.byte		N09   , Gn4 , v096
	.byte	W68
	.byte	W01
	.byte		TIE   , Dn2 , v080
	.byte		TIE   , Fn3 , v096
	.byte	W03
	.byte		        An2 , v080
	.byte		TIE   , Cn4 , v096
	.byte	W21
@ 204   ----------------------------------------
	.byte	W96
@ 205   ----------------------------------------
	.byte	W96
@ 206   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		EOT   , Dn2 
	.byte	W01
	.byte		        An2 
	.byte		        Fn3 
	.byte		        Cn4 
	.byte	W07
	.byte	W21
@ 207   ----------------------------------------
	.byte	W96
@ 208   ----------------------------------------
	.byte	W96
@ 209   ----------------------------------------
	.byte	W96
@ 210   ----------------------------------------
	.byte	W96
@ 211   ----------------------------------------
	.byte	W24
	.byte		VOL   , 102*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		N48   , As2 , v080
	.byte		N48   , Dn3 
	.byte		N48   , Fn3 
	.byte		N48   , As3 
	.byte	W01
	.byte		        Dn4 
	.byte		N48   , Fn4 
	.byte	W68
	.byte	W03
@ 212   ----------------------------------------
mus_shine_on_you_crazy_diamond_3_212:
	.byte		N10   , Fn3 , v072
	.byte		N10   , As3 
	.byte		N10   , Dn4 
	.byte		N10   , Fn4 
	.byte	W01
	.byte		        As2 
	.byte		N10   , Dn3 
	.byte	W11
	.byte		        As2 , v080
	.byte		N10   , Dn3 
	.byte		N10   , Fn3 
	.byte		N10   , As3 
	.byte	W01
	.byte		        Dn4 
	.byte		N10   , Fn4 
	.byte	W23
	.byte		        As2 , v072
	.byte		N10   , Dn3 
	.byte		N10   , Fn3 
	.byte		N10   , As3 
	.byte	W01
	.byte		        Dn4 
	.byte		N10   , Fn4 
	.byte	W11
	.byte		        Fn3 , v080
	.byte		N10   , As3 
	.byte		N10   , Dn4 
	.byte		N10   , Fn4 
	.byte	W01
	.byte		        As2 
	.byte		N10   , Dn3 
	.byte	W23
	.byte		N64   , Gn2 , v080, gtp1
	.byte		N64   , As2 , v080, gtp1
	.byte		N64   , Ds3 , v080, gtp1
	.byte		N66   , Gn3 
	.byte	W01
	.byte		N64   , As3 , v080, gtp1
	.byte		N64   , Ds4 , v080, gtp1
	.byte	W23
	.byte	PEND
@ 213   ----------------------------------------
	.byte	W48
	.byte		        Fn2 , v080, gtp1
	.byte		N64   , An2 , v080, gtp1
	.byte		N64   , Dn3 , v080, gtp1
	.byte		N64   , Fn3 , v080, gtp1
	.byte	W01
	.byte		        An3 , v080, gtp1
	.byte		N64   , Dn4 , v080, gtp1
	.byte	W44
	.byte	W03
@ 214   ----------------------------------------
mus_shine_on_you_crazy_diamond_3_214:
	.byte	W24
	.byte		N64   , Gn2 , v080, gtp1
	.byte		N64   , Cn3 , v080, gtp1
	.byte		N64   , Ds3 , v080, gtp1
	.byte		N64   , Gn3 , v080, gtp1
	.byte	W01
	.byte		        Cn4 , v080, gtp1
	.byte		N64   , Ds4 , v080, gtp1
	.byte	W68
	.byte	W03
	.byte	PEND
@ 215   ----------------------------------------
	.byte		        As2 , v080, gtp1
	.byte		N64   , Dn3 , v080, gtp1
	.byte		N64   , Fn3 , v080, gtp1
	.byte		N64   , As3 , v080, gtp1
	.byte	W01
	.byte		        Dn4 , v080, gtp1
	.byte		N64   , Fn4 , v080, gtp1
	.byte	W68
	.byte	W03
	.byte		        Fn2 , v080, gtp1
	.byte		N64   , An2 , v080, gtp1
	.byte		N64   , Cn3 , v080, gtp1
	.byte		TIE   , Fn3 
	.byte	W01
	.byte		        An3 
	.byte		TIE   , Cn4 
	.byte	W23
@ 216   ----------------------------------------
	.byte	W96
@ 217   ----------------------------------------
	.byte	W90
	.byte		EOT   , Fn3 
	.byte		        Cn4 
	.byte	W01
	.byte		        An3 
	.byte	W05
@ 218   ----------------------------------------
	.byte	W96
@ 219   ----------------------------------------
	.byte	W96
@ 220   ----------------------------------------
	.byte	W96
@ 221   ----------------------------------------
	.byte	W96
@ 222   ----------------------------------------
	.byte	W96
@ 223   ----------------------------------------
	.byte	W24
	.byte		N48   , As2 
	.byte		N48   , Dn3 
	.byte		N48   , Fn3 
	.byte		N48   , As3 
	.byte	W01
	.byte		        Dn4 
	.byte		N48   , Fn4 
	.byte	W68
	.byte	W03
@ 224   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_212
@ 225   ----------------------------------------
	.byte	W48
	.byte		N64   , Fn2 , v080, gtp1
	.byte		N64   , An2 , v080, gtp1
	.byte		N64   , Dn3 , v080, gtp1
	.byte		N64   , Fn3 , v080, gtp1
	.byte	W01
	.byte		N66   , An3 
	.byte		N64   , Dn4 , v080, gtp1
	.byte	W44
	.byte	W03
@ 226   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_214
@ 227   ----------------------------------------
	.byte		N64   , As2 , v080, gtp1
	.byte		N64   , Dn3 , v080, gtp1
	.byte		N64   , Fn3 , v080, gtp1
	.byte		N64   , As3 , v080, gtp1
	.byte	W01
	.byte		        Dn4 , v080, gtp1
	.byte		N64   , Fn4 , v080, gtp1
	.byte	W92
	.byte	W03
@ 228   ----------------------------------------
	.byte	W96
@ 229   ----------------------------------------
	.byte	W96
@ 230   ----------------------------------------
	.byte	W96
@ 231   ----------------------------------------
	.byte	W96
@ 232   ----------------------------------------
	.byte	W96
@ 233   ----------------------------------------
	.byte	W96
@ 234   ----------------------------------------
	.byte	W96
@ 235   ----------------------------------------
	.byte	W96
@ 236   ----------------------------------------
	.byte	W96
@ 237   ----------------------------------------
	.byte	W96
@ 238   ----------------------------------------
	.byte	W96
@ 239   ----------------------------------------
	.byte	W72
	.byte		TIE   , As2 
	.byte		TIE   , Dn3 
	.byte		TIE   , Fn3 
	.byte		TIE   , As3 
	.byte	W01
	.byte		        Dn4 
	.byte		TIE   , Fn4 
	.byte	W23
@ 240   ----------------------------------------
	.byte	W96
	.byte		EOT   , As2 
	.byte		        Dn3 
@ 241   ----------------------------------------
	.byte	W01
	.byte		        Fn4 
	.byte	W16
	.byte		        Fn3 
	.byte	W01
	.byte		        As3 
	.byte	W01
	.byte		        Dn4 
	.byte	W05
	.byte		N64   , An2 , v080, gtp1
	.byte		N64   , Dn3 , v080, gtp1
	.byte		N64   , Fn3 , v080, gtp1
	.byte		N64   , An3 , v080, gtp1
	.byte	W01
	.byte		        Dn4 , v080, gtp1
	.byte		N64   , Fn4 , v080, gtp1
	.byte	W68
	.byte	W03
@ 242   ----------------------------------------
	.byte		        An2 , v080, gtp1
	.byte		N64   , Dn3 , v080, gtp1
	.byte		N64   , Fs3 , v080, gtp1
	.byte		N64   , An3 , v080, gtp1
	.byte	W01
	.byte		        Cn4 , v080, gtp1
	.byte		N64   , Fs4 , v080, gtp1
	.byte	W68
	.byte	W03
	.byte		VOL   , 110*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		BEND  , c_v-10
	.byte		TIE   , Dn5 , v092
	.byte	W01
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W16
@ 243   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte	W02
@ 244   ----------------------------------------
	.byte		N08   , Dn5 , v072
	.byte	W08
	.byte		N07   , Cn5 , v080
	.byte	W08
	.byte		N06   , As4 , v092
	.byte	W08
	.byte		BEND  , c_v-5
	.byte		TIE   , Dn5 
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W20
	.byte		MOD   , 80
	.byte	W48
@ 245   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		MOD   , 20
	.byte		BEND  , c_v-5
	.byte		N48   , Cs5 
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W18
@ 246   ----------------------------------------
	.byte	W24
	.byte		N22   , Cn5 
	.byte	W24
	.byte		        As4 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
@ 247   ----------------------------------------
	.byte		        Cs5 
	.byte	W24
	.byte		BEND  , c_v-5
	.byte		N68   , Dn5 , v092, gtp2
	.byte	W01
	.byte		BEND  , c_v-4
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W68
	.byte	W01
@ 248   ----------------------------------------
	.byte		N22   
	.byte	W24
	.byte		        Ds5 
	.byte	W24
	.byte		        Fn5 
	.byte	W24
	.byte		BEND  , c_v-5
	.byte		N68   , Gs5 , v092, gtp2
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W18
@ 249   ----------------------------------------
	.byte		MOD   , 80
	.byte	W48
	.byte		        20
	.byte		N68   , Gn5 , v092, gtp2
	.byte	W24
	.byte		MOD   , 80
	.byte	W24
@ 250   ----------------------------------------
	.byte	W24
	.byte		        20
	.byte		BEND  , c_v-5
	.byte		N92   , Ds5 , v092, gtp2
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W18
	.byte		MOD   , 80
	.byte	W48
@ 251   ----------------------------------------
	.byte		        20
	.byte		N68   , Dn5 , v092, gtp2
	.byte	W24
	.byte		MOD   , 80
	.byte	W48
	.byte		        20
	.byte		BEND  , c_v-6
	.byte		        c_v-5
	.byte		N22   , Fn5 
	.byte	W01
	.byte		BEND  , c_v-4
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v+0
	.byte	W22
@ 252   ----------------------------------------
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N92   , Cn5 , v092, gtp2
	.byte	W72
@ 253   ----------------------------------------
	.byte	W96
@ 254   ----------------------------------------
	.byte	W72
	.byte	W24
@ 255   ----------------------------------------
	.byte	W96
@ 256   ----------------------------------------
	.byte	W96
@ 257   ----------------------------------------
	.byte	W96
@ 258   ----------------------------------------
	.byte	W96
@ 259   ----------------------------------------
	.byte	W21
	.byte		VOL   , 95*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		N48   , As2 , v080
	.byte		N48   , Dn3 
	.byte		N48   , Fn3 
	.byte		N48   , As3 
	.byte	W01
	.byte		        Dn4 
	.byte		N48   , Fn4 
	.byte	W68
	.byte	W03
	.byte		N22   , Fn3 , v072
	.byte		N22   , As3 
	.byte		N23   , Dn4 
	.byte		N10   , Fn4 
	.byte	W01
	.byte		        As2 
	.byte		N10   , Dn3 
	.byte	W02
@ 260   ----------------------------------------
	.byte	W09
	.byte		        As2 , v080
	.byte		N10   , Dn3 
	.byte		N10   , Fn3 
	.byte		N10   , As3 
	.byte	W01
	.byte		        Dn4 
	.byte		N10   , Fn4 
	.byte	W23
	.byte		        As2 , v072
	.byte		N10   , Dn3 
	.byte		N10   , Fn3 
	.byte		N10   , As3 
	.byte	W01
	.byte		        Dn4 
	.byte		N10   , Fn4 
	.byte	W11
	.byte		        Fn3 , v080
	.byte		N10   , As3 
	.byte		N10   , Dn4 
	.byte		N10   , Fn4 
	.byte	W01
	.byte		        As2 
	.byte		N10   , Dn3 
	.byte	W23
	.byte		N64   , Gn2 , v080, gtp1
	.byte		N64   , As2 , v080, gtp1
	.byte		N64   , Ds3 , v080, gtp1
	.byte		N68   , Gn3 
	.byte	W01
	.byte		        As3 
	.byte		N68   , Ds4 
	.byte	W24
	.byte	W02
@ 261   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		N64   , Fn2 , v080, gtp1
	.byte		N64   , An2 , v080, gtp1
	.byte		N64   , Dn3 , v080, gtp1
	.byte		N64   , Fn3 , v080, gtp1
	.byte	W01
	.byte		N68   , An3 
	.byte		N68   , Dn4 
	.byte	W48
	.byte	W02
@ 262   ----------------------------------------
mus_shine_on_you_crazy_diamond_3_262:
	.byte	W21
	.byte		N64   , Gn2 , v080, gtp1
	.byte		N64   , Cn3 , v080, gtp1
	.byte		N64   , Ds3 , v080, gtp1
	.byte		N64   , Gn3 , v080, gtp1
	.byte	W01
	.byte		        Cn4 , v080, gtp1
	.byte		N64   , Ds4 , v080, gtp1
	.byte	W68
	.byte	W03
	.byte		        As2 , v080, gtp1
	.byte		N64   , Dn3 , v080, gtp1
	.byte		N64   , Fn3 , v080, gtp1
	.byte		N64   , As3 , v080, gtp1
	.byte	W01
	.byte		        Dn4 , v080, gtp1
	.byte		N64   , Fn4 , v080, gtp1
	.byte	W02
	.byte	PEND
@ 263   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		        Fn2 , v080, gtp1
	.byte		N64   , An2 , v080, gtp1
	.byte		N64   , Cn3 , v080, gtp1
	.byte		TIE   , Fn3 
	.byte	W01
	.byte		        An3 
	.byte		TIE   , Cn4 
	.byte	W24
	.byte	W02
@ 264   ----------------------------------------
	.byte	W96
@ 265   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		EOT   , Fn3 
	.byte	W01
	.byte		        Cn4 
	.byte	W01
	.byte		        An3 
	.byte	W05
@ 266   ----------------------------------------
	.byte	W96
@ 267   ----------------------------------------
	.byte	W96
@ 268   ----------------------------------------
	.byte	W96
@ 269   ----------------------------------------
	.byte	W96
@ 270   ----------------------------------------
	.byte	W96
@ 271   ----------------------------------------
	.byte	W21
	.byte		N48   , As2 
	.byte		N48   , Dn3 
	.byte		N48   , Fn3 
	.byte		N48   , As3 
	.byte	W01
	.byte		        Dn4 
	.byte		N48   , Fn4 
	.byte	W68
	.byte	W03
	.byte		N22   , Fn3 , v072
	.byte		N22   , As3 
	.byte		N23   , Dn4 
	.byte		N10   , Fn4 
	.byte	W01
	.byte		        As2 
	.byte		N10   , Dn3 
	.byte	W02
@ 272   ----------------------------------------
	.byte	W09
	.byte		        As2 , v080
	.byte		N10   , Dn3 
	.byte		N10   , Fn3 
	.byte		N10   , As3 
	.byte	W01
	.byte		        Dn4 
	.byte		N10   , Fn4 
	.byte	W23
	.byte		        As2 , v072
	.byte		N10   , Dn3 
	.byte		N10   , Fn3 
	.byte		N10   , As3 
	.byte	W01
	.byte		        Dn4 
	.byte		N10   , Fn4 
	.byte	W11
	.byte		        Fn3 , v080
	.byte		N10   , As3 
	.byte		N10   , Dn4 
	.byte		N10   , Fn4 
	.byte	W01
	.byte		        As2 
	.byte		N10   , Dn3 
	.byte	W23
	.byte		N64   , Gn2 , v080, gtp1
	.byte		N64   , As2 , v080, gtp1
	.byte		N64   , Ds3 , v080, gtp1
	.byte		N68   , Gn3 , v080, gtp1
	.byte	W01
	.byte		        As3 
	.byte		N68   , Ds4 
	.byte	W24
	.byte	W02
@ 273   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		N64   , Fn2 , v080, gtp1
	.byte		N64   , An2 , v080, gtp1
	.byte		N64   , Dn3 , v080, gtp1
	.byte		N64   , Fn3 , v080, gtp1
	.byte	W01
	.byte		N68   , An3 , v080, gtp1
	.byte		N68   , Dn4 
	.byte	W48
	.byte	W02
@ 274   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_3_262
@ 275   ----------------------------------------
	.byte	W96
@ 276   ----------------------------------------
	.byte	W96
@ 277   ----------------------------------------
	.byte	W96
@ 278   ----------------------------------------
	.byte	W96
@ 279   ----------------------------------------
	.byte	W96
@ 280   ----------------------------------------
	.byte	W96
@ 281   ----------------------------------------
	.byte	W96
@ 282   ----------------------------------------
	.byte	W96
@ 283   ----------------------------------------
	.byte	W96
@ 284   ----------------------------------------
	.byte	W96
@ 285   ----------------------------------------
	.byte	W96
@ 286   ----------------------------------------
	.byte	W96
@ 287   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		TIE   , As2 , v080
	.byte		TIE   , Dn3 
	.byte		TIE   , Fn3 
	.byte		TIE   , As3 
	.byte	W01
	.byte		        Dn4 
	.byte		TIE   , Fn4 
	.byte	W24
	.byte	W02
@ 288   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		EOT   , As2 
	.byte		        Dn3 
	.byte	W01
	.byte		        Fn4 
	.byte	W02
@ 289   ----------------------------------------
	.byte	W17
	.byte		        Fn3 
	.byte	W01
	.byte		        As3 
	.byte	W01
	.byte		        Dn4 
	.byte	W02
	.byte		N64   , An2 , v080, gtp1
	.byte		N64   , Dn3 , v080, gtp1
	.byte		N64   , Fn3 , v080, gtp1
	.byte		N64   , An3 , v080, gtp1
	.byte	W01
	.byte		        Dn4 , v080, gtp1
	.byte		N64   , Fn4 , v080, gtp1
	.byte	W68
	.byte	W03
	.byte		        An2 , v080, gtp1
	.byte		N64   , Dn3 , v080, gtp1
	.byte		N64   , Fs3 , v080, gtp1
	.byte		N64   , An3 , v080, gtp1
	.byte	W01
	.byte		        Cn4 , v080, gtp1
	.byte		N64   , Fs4 , v080, gtp1
	.byte	W02
@ 290   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		TIE   , Gn2 
	.byte		TIE   , Dn4 
	.byte	W24
	.byte	W03
@ 291   ----------------------------------------
	.byte	W96
@ 292   ----------------------------------------
	.byte	W13
	.byte		EOT   , Gn2 
	.byte	W80
	.byte	W03
@ 293   ----------------------------------------
	.byte	W96
@ 294   ----------------------------------------
	.byte	W96
@ 295   ----------------------------------------
	.byte	W96
@ 296   ----------------------------------------
	.byte	W96
@ 297   ----------------------------------------
	.byte	W96
@ 298   ----------------------------------------
	.byte	W96
@ 299   ----------------------------------------
	.byte	W96
@ 300   ----------------------------------------
	.byte	W96
@ 301   ----------------------------------------
	.byte	W96
@ 302   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		        Dn4 
	.byte	W30
	.byte	W01
@ 303   ----------------------------------------
	.byte	W96
@ 304   ----------------------------------------
	.byte	W96
@ 305   ----------------------------------------
	.byte	W96
@ 306   ----------------------------------------
	.byte	W96
@ 307   ----------------------------------------
	.byte	W96
@ 308   ----------------------------------------
	.byte	W96
@ 309   ----------------------------------------
	.byte	W96
@ 310   ----------------------------------------
	.byte	W96
@ 311   ----------------------------------------
	.byte	W96
@ 312   ----------------------------------------
	.byte	W96
@ 313   ----------------------------------------
	.byte	W96
@ 314   ----------------------------------------
	.byte	W96
@ 315   ----------------------------------------
	.byte	W96
@ 316   ----------------------------------------
	.byte	W96
@ 317   ----------------------------------------
	.byte	W96
@ 318   ----------------------------------------
	.byte	W96
@ 319   ----------------------------------------
	.byte	W96
@ 320   ----------------------------------------
	.byte	W96
@ 321   ----------------------------------------
	.byte	W96
@ 322   ----------------------------------------
	.byte	W96
@ 323   ----------------------------------------
	.byte	W96
@ 324   ----------------------------------------
	.byte	W96
@ 325   ----------------------------------------
	.byte	W96
@ 326   ----------------------------------------
	.byte	W96
@ 327   ----------------------------------------
	.byte	W96
@ 328   ----------------------------------------
	.byte	W96
@ 329   ----------------------------------------
	.byte	W96
@ 330   ----------------------------------------
	.byte	W96
@ 331   ----------------------------------------
	.byte	W96
@ 332   ----------------------------------------
	.byte	W96
@ 333   ----------------------------------------
	.byte	W96
@ 334   ----------------------------------------
	.byte	W96
@ 335   ----------------------------------------
	.byte	W96
@ 336   ----------------------------------------
	.byte	W96
@ 337   ----------------------------------------
	.byte	W96
@ 338   ----------------------------------------
	.byte	W96
@ 339   ----------------------------------------
	.byte	W96
@ 340   ----------------------------------------
	.byte	W96
@ 341   ----------------------------------------
	.byte	W96
@ 342   ----------------------------------------
	.byte	W96
@ 343   ----------------------------------------
	.byte	W96
@ 344   ----------------------------------------
	.byte	W96
@ 345   ----------------------------------------
	.byte	W96
@ 346   ----------------------------------------
	.byte	W96
@ 347   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte	FINE

@**************** Track 4 (Midi-Chn.8) ****************@

mus_shine_on_you_crazy_diamond_4:
	.byte	KEYSH , mus_shine_on_you_crazy_diamond_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 66
	.byte		VOL   , 127*mus_shine_on_you_crazy_diamond_mvl/mxv
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
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	W96
@ 107   ----------------------------------------
	.byte	W96
@ 108   ----------------------------------------
	.byte	W96
@ 109   ----------------------------------------
	.byte	W96
@ 110   ----------------------------------------
	.byte	W96
@ 111   ----------------------------------------
	.byte	W96
@ 112   ----------------------------------------
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte	W96
@ 115   ----------------------------------------
	.byte	W96
@ 116   ----------------------------------------
	.byte	W96
@ 117   ----------------------------------------
	.byte	W96
@ 118   ----------------------------------------
	.byte	W96
@ 119   ----------------------------------------
	.byte	W96
@ 120   ----------------------------------------
	.byte	W96
@ 121   ----------------------------------------
	.byte	W96
@ 122   ----------------------------------------
	.byte	W96
@ 123   ----------------------------------------
	.byte	W96
@ 124   ----------------------------------------
	.byte	W96
@ 125   ----------------------------------------
	.byte	W96
@ 126   ----------------------------------------
	.byte	W96
@ 127   ----------------------------------------
	.byte	W96
@ 128   ----------------------------------------
	.byte	W96
@ 129   ----------------------------------------
	.byte	W96
@ 130   ----------------------------------------
	.byte	W96
@ 131   ----------------------------------------
	.byte	W96
@ 132   ----------------------------------------
	.byte	W96
@ 133   ----------------------------------------
	.byte	W96
@ 134   ----------------------------------------
	.byte	W96
@ 135   ----------------------------------------
	.byte	W96
@ 136   ----------------------------------------
	.byte	W96
@ 137   ----------------------------------------
	.byte	W96
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
	.byte	W96
@ 140   ----------------------------------------
	.byte	W96
@ 141   ----------------------------------------
	.byte	W96
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W96
@ 144   ----------------------------------------
	.byte	W96
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	W96
@ 149   ----------------------------------------
	.byte	W96
@ 150   ----------------------------------------
	.byte	W96
@ 151   ----------------------------------------
	.byte	W96
@ 152   ----------------------------------------
	.byte	W96
@ 153   ----------------------------------------
	.byte	W96
@ 154   ----------------------------------------
	.byte	W96
@ 155   ----------------------------------------
	.byte	W96
@ 156   ----------------------------------------
	.byte	W96
@ 157   ----------------------------------------
	.byte	W96
@ 158   ----------------------------------------
	.byte	W96
@ 159   ----------------------------------------
	.byte	W96
@ 160   ----------------------------------------
	.byte	W96
@ 161   ----------------------------------------
	.byte	W96
@ 162   ----------------------------------------
	.byte	W96
@ 163   ----------------------------------------
	.byte	W96
@ 164   ----------------------------------------
	.byte	W96
@ 165   ----------------------------------------
	.byte	W96
@ 166   ----------------------------------------
	.byte	W96
@ 167   ----------------------------------------
	.byte	W96
@ 168   ----------------------------------------
	.byte	W96
@ 169   ----------------------------------------
	.byte	W96
@ 170   ----------------------------------------
	.byte	W96
@ 171   ----------------------------------------
	.byte	W96
@ 172   ----------------------------------------
	.byte	W96
@ 173   ----------------------------------------
	.byte	W96
@ 174   ----------------------------------------
	.byte	W96
@ 175   ----------------------------------------
	.byte	W96
@ 176   ----------------------------------------
	.byte	W96
@ 177   ----------------------------------------
	.byte	W96
@ 178   ----------------------------------------
	.byte	W96
@ 179   ----------------------------------------
	.byte	W96
@ 180   ----------------------------------------
	.byte	W96
@ 181   ----------------------------------------
	.byte	W96
@ 182   ----------------------------------------
	.byte	W96
@ 183   ----------------------------------------
	.byte	W96
@ 184   ----------------------------------------
	.byte	W96
@ 185   ----------------------------------------
	.byte	W96
@ 186   ----------------------------------------
	.byte	W96
@ 187   ----------------------------------------
	.byte	W96
@ 188   ----------------------------------------
	.byte	W96
@ 189   ----------------------------------------
	.byte	W96
@ 190   ----------------------------------------
	.byte	W96
@ 191   ----------------------------------------
	.byte	W96
@ 192   ----------------------------------------
	.byte	W96
@ 193   ----------------------------------------
	.byte	W96
@ 194   ----------------------------------------
	.byte	W96
@ 195   ----------------------------------------
	.byte	W96
@ 196   ----------------------------------------
	.byte	W96
@ 197   ----------------------------------------
	.byte	W96
@ 198   ----------------------------------------
	.byte	W96
@ 199   ----------------------------------------
	.byte	W96
@ 200   ----------------------------------------
	.byte	W96
@ 201   ----------------------------------------
	.byte	W96
@ 202   ----------------------------------------
	.byte	W96
@ 203   ----------------------------------------
	.byte	W96
@ 204   ----------------------------------------
	.byte	W96
@ 205   ----------------------------------------
	.byte	W96
@ 206   ----------------------------------------
	.byte	W96
@ 207   ----------------------------------------
	.byte	W96
@ 208   ----------------------------------------
	.byte	W96
@ 209   ----------------------------------------
	.byte	W96
@ 210   ----------------------------------------
	.byte	W96
@ 211   ----------------------------------------
	.byte	W96
@ 212   ----------------------------------------
	.byte	W96
@ 213   ----------------------------------------
	.byte	W96
@ 214   ----------------------------------------
	.byte	W96
@ 215   ----------------------------------------
	.byte	W96
@ 216   ----------------------------------------
	.byte	W96
@ 217   ----------------------------------------
	.byte	W96
@ 218   ----------------------------------------
	.byte	W96
@ 219   ----------------------------------------
	.byte	W96
@ 220   ----------------------------------------
	.byte	W96
@ 221   ----------------------------------------
	.byte	W96
@ 222   ----------------------------------------
	.byte	W96
@ 223   ----------------------------------------
	.byte	W96
@ 224   ----------------------------------------
	.byte	W96
@ 225   ----------------------------------------
	.byte	W96
@ 226   ----------------------------------------
	.byte	W96
@ 227   ----------------------------------------
	.byte	W96
@ 228   ----------------------------------------
	.byte	W96
@ 229   ----------------------------------------
	.byte	W96
@ 230   ----------------------------------------
	.byte	W96
@ 231   ----------------------------------------
	.byte	W96
@ 232   ----------------------------------------
	.byte	W96
@ 233   ----------------------------------------
	.byte	W96
@ 234   ----------------------------------------
	.byte	W96
@ 235   ----------------------------------------
	.byte	W96
@ 236   ----------------------------------------
	.byte	W96
@ 237   ----------------------------------------
	.byte	W96
@ 238   ----------------------------------------
	.byte	W96
@ 239   ----------------------------------------
	.byte	W96
@ 240   ----------------------------------------
	.byte	W96
@ 241   ----------------------------------------
	.byte	W96
@ 242   ----------------------------------------
	.byte	W96
@ 243   ----------------------------------------
	.byte	W96
@ 244   ----------------------------------------
	.byte	W96
@ 245   ----------------------------------------
	.byte	W96
@ 246   ----------------------------------------
	.byte	W96
@ 247   ----------------------------------------
	.byte	W96
@ 248   ----------------------------------------
	.byte	W96
@ 249   ----------------------------------------
	.byte	W96
@ 250   ----------------------------------------
	.byte	W96
@ 251   ----------------------------------------
	.byte	W96
@ 252   ----------------------------------------
	.byte	W96
@ 253   ----------------------------------------
	.byte	W96
@ 254   ----------------------------------------
	.byte	W96
@ 255   ----------------------------------------
	.byte	W96
@ 256   ----------------------------------------
	.byte	W96
@ 257   ----------------------------------------
	.byte	W96
@ 258   ----------------------------------------
	.byte	W96
@ 259   ----------------------------------------
	.byte	W96
@ 260   ----------------------------------------
	.byte	W96
@ 261   ----------------------------------------
	.byte	W96
@ 262   ----------------------------------------
	.byte	W96
@ 263   ----------------------------------------
	.byte	W96
@ 264   ----------------------------------------
	.byte	W96
@ 265   ----------------------------------------
	.byte	W96
@ 266   ----------------------------------------
	.byte	W96
@ 267   ----------------------------------------
	.byte	W96
@ 268   ----------------------------------------
	.byte	W96
@ 269   ----------------------------------------
	.byte	W96
@ 270   ----------------------------------------
	.byte	W96
@ 271   ----------------------------------------
	.byte	W96
@ 272   ----------------------------------------
	.byte	W96
@ 273   ----------------------------------------
	.byte	W96
@ 274   ----------------------------------------
	.byte	W96
@ 275   ----------------------------------------
	.byte	W96
@ 276   ----------------------------------------
	.byte	W96
@ 277   ----------------------------------------
	.byte	W96
@ 278   ----------------------------------------
	.byte	W96
@ 279   ----------------------------------------
	.byte	W96
@ 280   ----------------------------------------
	.byte	W96
@ 281   ----------------------------------------
	.byte	W96
@ 282   ----------------------------------------
	.byte	W96
@ 283   ----------------------------------------
	.byte	W96
@ 284   ----------------------------------------
	.byte	W96
@ 285   ----------------------------------------
	.byte	W96
@ 286   ----------------------------------------
	.byte	W96
@ 287   ----------------------------------------
	.byte	W96
@ 288   ----------------------------------------
	.byte	W96
@ 289   ----------------------------------------
	.byte	W96
@ 290   ----------------------------------------
	.byte	W72
	.byte		MOD   , 20
	.byte		BEND  , c_v+0
	.byte		TIE   , Dn3 , v104
	.byte	W01
	.byte		BEND  , c_v+1
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+4
	.byte		        c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte	W15
@ 291   ----------------------------------------
	.byte	W09
	.byte		MOD   , 80
	.byte	W84
	.byte	W02
	.byte		        20
	.byte		N07   , Gn2 , v096
	.byte	W01
@ 292   ----------------------------------------
	.byte	W11
	.byte		TIE   
	.byte	W02
	.byte		EOT   , Dn3 
	.byte	W22
	.byte		MOD   , 80
	.byte	W60
	.byte	W01
@ 293   ----------------------------------------
	.byte	W23
	.byte		EOT   , Gn2 
	.byte		MOD   , 20
	.byte		N24   , An2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		N12   , As2 , v092
	.byte	W12
	.byte		BEND  , c_v+4
	.byte		N12   , An2 , v080
	.byte	W01
	.byte		BEND  , c_v+3
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+1
	.byte		        c_v+0
	.byte	W10
	.byte		N44   , As2 , v096, gtp2
	.byte	W01
@ 294   ----------------------------------------
	.byte	W23
	.byte		MOD   , 80
	.byte	W24
	.byte		        20
	.byte		N12   , An2 , v080
	.byte	W12
	.byte		N44   , As2 , v096, gtp2
	.byte	W36
	.byte	W01
@ 295   ----------------------------------------
	.byte	W11
	.byte		N12   , An2 
	.byte	W12
	.byte		N64   , Gn2 , v080, gtp1
	.byte	W72
	.byte		N20   , Gn2 , v096
	.byte	W01
@ 296   ----------------------------------------
	.byte	W23
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N09   , Ds2 , v092
	.byte	W12
	.byte		N05   , En2 , v088
	.byte	W06
	.byte		N03   , Fn2 , v080
	.byte	W03
	.byte		N01   , Fs2 , v076
	.byte		N02   , Gn2 , v072
	.byte	W03
	.byte		        Gs2 , v068
	.byte	W03
	.byte		        An2 , v060
	.byte		N02   , As2 
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		N01   , Cn3 
	.byte		N04   , Cs3 
	.byte	W03
	.byte		N07   , Dn3 , v096
	.byte	W12
	.byte		N20   , As2 
	.byte	W13
@ 297   ----------------------------------------
	.byte	W11
	.byte		BEND  , c_v-7
	.byte		N60   , Fn3 
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		MOD   , 80
	.byte		BEND  , c_v-1
	.byte		        c_v+0
	.byte	W54
	.byte		MOD   , 20
	.byte		BEND  , c_v-5
	.byte		N20   , Gn3 , v080
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W11
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Cs3 , v072
	.byte	W04
@ 298   ----------------------------------------
	.byte	W02
	.byte		N22   , Dn3 
	.byte	W72
	.byte		BEND  , c_v-6
	.byte		N66   , Gn2 , v096, gtp1
	.byte	W01
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W17
	.byte		MOD   , 80
	.byte	W01
@ 299   ----------------------------------------
	.byte	W48
	.byte	W02
	.byte		        20
	.byte		N10   , As2 
	.byte	W12
	.byte		N11   , An2 
	.byte	W12
	.byte		N44   , As2 
	.byte	W22
@ 300   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		BEND  , c_v-5
	.byte		N21   , Dn3 
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W18
	.byte		        c_v-5
	.byte		N20   
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W20
	.byte		N05   , As2 
	.byte	W06
	.byte		N04   , Bn2 , v092
	.byte	W03
	.byte		N03   , Cn3 , v080
	.byte	W03
	.byte		N04   , Cs3 , v072
	.byte	W06
	.byte		        Dn3 , v060
	.byte	W03
	.byte		N03   , Ds3 , v052
	.byte	W01
@ 301   ----------------------------------------
	.byte	W02
	.byte		N08   , En3 , v096
	.byte	W12
	.byte		N10   , Fn3 
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        As2 
	.byte	W10
@ 302   ----------------------------------------
	.byte	W02
	.byte		MOD   , 80
	.byte		N21   , Gn2 
	.byte	W92
	.byte	W02
@ 303   ----------------------------------------
	.byte	W02
	.byte		MOD   , 20
	.byte		BEND  , c_v-5
	.byte		N68   , Cn3 , v096, gtp1
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W64
	.byte	W01
	.byte		N09   , As2 
	.byte	W12
	.byte		        An2 
	.byte	W10
@ 304   ----------------------------------------
	.byte	W02
	.byte		MOD   , 80
	.byte		N66   , Gn2 , v096, gtp1
	.byte	W72
	.byte		MOD   , 20
	.byte		N08   
	.byte	W12
	.byte		N10   , An2 
	.byte	W10
@ 305   ----------------------------------------
	.byte	W02
	.byte		N08   , As2 
	.byte	W12
	.byte		N09   , Cn3 
	.byte	W12
	.byte		BEND  , c_v-10
	.byte		N44   , En3 , v096, gtp2
	.byte	W02
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W36
	.byte		TIE   , Gn3 
	.byte	W22
@ 306   ----------------------------------------
	.byte	W36
	.byte	W02
	.byte		N10   , En3 
	.byte	W12
	.byte		N08   , Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W10
@ 307   ----------------------------------------
	.byte	W02
	.byte		N08   , As2 
	.byte	W12
	.byte		N10   , An2 
	.byte	W12
	.byte		N20   , As2 
	.byte	W24
	.byte		N08   , An2 
	.byte	W12
	.byte		N54   , Gn2 
	.byte	W32
	.byte	W02
@ 308   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		EOT   , Gn3 
	.byte	W09
	.byte		BEND  , c_v-4
	.byte		N10   , As2 
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W18
@ 309   ----------------------------------------
	.byte	W02
	.byte		N22   
	.byte	W24
	.byte		N12   , An2 , v080
	.byte	W12
	.byte		N32   , Gn2 , v096, gtp1
	.byte	W36
	.byte		N21   , Dn2 
	.byte	W22
@ 310   ----------------------------------------
	.byte	W02
	.byte		N08   , Gn1 
	.byte	W60
	.byte		        Gn2 
	.byte	W12
	.byte		N06   , Fn2 
	.byte	W09
	.byte		        Gn2 
	.byte	W09
	.byte		N05   , As2 
	.byte	W04
@ 311   ----------------------------------------
	.byte	W02
	.byte		N06   , Dn3 
	.byte	W09
	.byte		        Fn3 
	.byte	W09
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N06   , Fn3 
	.byte	W09
	.byte		        Dn3 
	.byte	W09
	.byte		BEND  , c_v-5
	.byte		N15   , Fn3 
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W15
	.byte		N21   , Gn2 
	.byte	W24
	.byte		BEND  , c_v-10
	.byte		N18   , En3 
	.byte	W01
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W03
@ 312   ----------------------------------------
	.byte	W36
	.byte	W02
	.byte		        c_v-7
	.byte		N21   , Dn3 
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W20
	.byte		N12   , Cn3 
	.byte	W12
	.byte		BEND  , c_v-4
	.byte		N90   , Dn3 , v096, gtp1
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W18
	.byte		MOD   , 80
	.byte	W01
@ 313   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		        20
	.byte	W01
@ 314   ----------------------------------------
	.byte	W96
@ 315   ----------------------------------------
	.byte	W02
	.byte		N11   , Cs3 , v100
	.byte	W12
	.byte		        Cn3 , v096
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N10   , Gn2 
	.byte	W12
	.byte		N08   , As2 
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N09   , Gn2 
	.byte	W12
	.byte		BEND  , c_v-10
	.byte		N18   , Cs2 
	.byte	W01
	.byte		BEND  , c_v-9
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-7
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W05
@ 316   ----------------------------------------
	.byte	W96
@ 317   ----------------------------------------
	.byte	W02
	.byte		N09   , Gn2 
	.byte	W09
	.byte		N04   , Gs2 , v092
	.byte	W03
	.byte		N06   , An2 
	.byte	W06
	.byte		N04   , As2 , v088
	.byte	W03
	.byte		N03   , Bn2 
	.byte	W03
	.byte		N06   , Cn3 , v084
	.byte	W06
	.byte		N04   , Cs3 
	.byte	W03
	.byte		N03   , Dn3 , v080
	.byte	W03
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N04   , En3 
	.byte	W03
	.byte		N03   , Fn3 
	.byte	W03
	.byte		N08   , Fs3 
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		TIE   , Fs3 , v096
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W28
@ 318   ----------------------------------------
	.byte	W14
	.byte		        c_v-6
	.byte		N09   , Dn3 
	.byte	W01
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W08
	.byte		N66   
	.byte	W66
	.byte		N04   
	.byte	W04
@ 319   ----------------------------------------
	.byte	W02
	.byte		N03   , Cn3 
	.byte	W03
	.byte		N04   , Bn2 , v092
	.byte	W03
	.byte		        As2 
	.byte	W06
	.byte		        An2 
	.byte	W03
	.byte		N03   , Gs2 
	.byte	W03
	.byte		N02   , Gn2 , v088
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		N03   , En2 
	.byte		N01   , Fn2 
	.byte	W03
	.byte		        Ds2 , v084
	.byte	W03
	.byte		N02   , Cs2 
	.byte		N02   , Dn2 
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		N03   , As1 , v080
	.byte		N01   , Bn1 
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		N22   , Fs1 , v060
	.byte		N02   , Gs1 , v080
	.byte	W48
	.byte	W03
	.byte		N08   , Dn2 , v084
	.byte	W01
@ 320   ----------------------------------------
	.byte	W02
	.byte		EOT   , Fs3 
	.byte	W06
	.byte		N03   , Ds2 
	.byte	W03
	.byte		N04   , En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W03
	.byte		N03   , Fs2 
	.byte	W03
	.byte		N04   , Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        As2 
	.byte	W06
	.byte		        Bn2 
	.byte	W03
	.byte		N03   , Cn3 
	.byte	W03
	.byte		N92   , Dn3 , v084, gtp2
	.byte	W48
	.byte	W01
@ 321   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N44   , Cn3 , v084, gtp1
	.byte	W48
	.byte		        An2 , v084, gtp2
	.byte	W01
@ 322   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N32   , Gn2 
	.byte	W36
	.byte		        En2 , v084, gtp2
	.byte	W13
@ 323   ----------------------------------------
	.byte	W23
	.byte		N21   , Dn2 
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte		N04   , Gn2 , v072
	.byte	W01
@ 324   ----------------------------------------
	.byte	W05
	.byte		N10   , Dn2 , v084
	.byte	W12
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		N12   , An2 , v084
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		        Gn2 
	.byte	W18
	.byte		BEND  , c_v-5
	.byte		N15   , Cn3 
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W13
	.byte		N14   
	.byte	W01
@ 325   ----------------------------------------
	.byte	W17
	.byte		N15   , An2 
	.byte	W18
	.byte		        Gn2 
	.byte	W18
	.byte		N14   , Cn3 
	.byte	W18
	.byte		N32   , An2 , v084, gtp1
	.byte	W24
	.byte	W01
@ 326   ----------------------------------------
	.byte	W11
	.byte		        Gn2 , v084, gtp1
	.byte	W36
	.byte		BEND  , c_v-7
	.byte		N44   , Cn3 , v084, gtp2
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		MOD   , 60
	.byte		BEND  , c_v-1
	.byte		        c_v+0
	.byte	W42
	.byte		MOD   , 20
	.byte		N09   , An2 
	.byte	W01
@ 327   ----------------------------------------
	.byte	W08
	.byte		        Gn2 
	.byte	W09
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N22   , En2 
	.byte	W36
	.byte		N09   , Dn2 
	.byte	W12
	.byte		N08   , En2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N06   , En2 
	.byte	W01
@ 328   ----------------------------------------
	.byte	W08
	.byte		N05   , Fn2 
	.byte	W09
	.byte		        Gn2 
	.byte	W06
	.byte		N06   , En2 
	.byte	W09
	.byte		        Fn2 
	.byte	W09
	.byte		N05   , An2 
	.byte	W06
	.byte		N06   , Cn3 
	.byte	W09
	.byte		        An2 
	.byte	W09
	.byte		        Gn2 
	.byte	W30
	.byte	W01
@ 329   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		MOD   , 80
	.byte		BEND  , c_v-5
	.byte		N21   , As2 
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W18
	.byte		MOD   , 20
	.byte		N09   , Cn3 
	.byte	W12
	.byte		N08   
	.byte	W01
@ 330   ----------------------------------------
	.byte	W11
	.byte		N56   , As2 , v084, gtp2
	.byte	W60
	.byte		N09   , Gn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N22   , Gn2 
	.byte	W01
@ 331   ----------------------------------------
	.byte	W23
	.byte		N21   
	.byte	W24
	.byte		N20   , Fn2 
	.byte	W24
	.byte		N22   , En2 
	.byte	W24
	.byte		N08   
	.byte	W01
@ 332   ----------------------------------------
	.byte	W11
	.byte		N32   , Dn2 , v084, gtp1
	.byte	W60
	.byte		BEND  , c_v-5
	.byte		N08   , Gn2 , v080
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W19
	.byte		N08   
	.byte	W01
@ 333   ----------------------------------------
	.byte	W11
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		MOD   , 80
	.byte		N21   , Dn2 
	.byte	W36
	.byte		MOD   , 20
	.byte		N08   , Gn1 
	.byte	W12
	.byte		N09   , As1 
	.byte	W12
	.byte		N08   , Dn2 
	.byte	W01
@ 334   ----------------------------------------
	.byte	W11
	.byte		N21   , Cn2 
	.byte	W24
	.byte		N09   , Gn2 
	.byte	W12
	.byte		N20   , Fn2 
	.byte	W24
	.byte		N08   , As2 
	.byte	W12
	.byte		N32   , Gn2 , v080, gtp1
	.byte	W13
@ 335   ----------------------------------------
	.byte	W11
	.byte		        Dn3 , v080, gtp3
	.byte	W48
	.byte		BEND  , c_v-5
	.byte		N10   , Fn3 
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N08   
	.byte	W09
	.byte		N09   
	.byte	W09
	.byte		        Dn3 , v068
	.byte	W07
@ 336   ----------------------------------------
	.byte	W05
	.byte		N08   , Fn3 , v080
	.byte	W09
	.byte		N07   , Dn3 , v068
	.byte	W09
	.byte		N22   , Fn3 , v080
	.byte	W24
	.byte		N21   , Dn3 
	.byte	W24
	.byte		MOD   , 80
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        As2 , v068
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W01
@ 337   ----------------------------------------
	.byte	W11
	.byte		N10   , As2 , v068
	.byte	W12
	.byte		MOD   , 20
	.byte		N08   , Cn3 , v080
	.byte	W12
	.byte		N09   , As2 
	.byte	W12
	.byte		BEND  , c_v-7
	.byte		N20   , Gn2 
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W42
	.byte	W01
@ 338   ----------------------------------------
	.byte	W23
	.byte		        c_v-4
	.byte		N09   
	.byte	W02
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N09   , As2 
	.byte	W12
	.byte		N22   , Cs3 
	.byte	W24
	.byte		N08   , Cn3 
	.byte	W24
	.byte		        As2 
	.byte	W01
@ 339   ----------------------------------------
	.byte	W11
	.byte		N09   , Gn2 
	.byte	W12
	.byte		N44   , Ds2 , v080, gtp2
	.byte	W72
	.byte		BEND  , c_v-10
	.byte		N22   , Fn3 
	.byte	W01
@ 340   ----------------------------------------
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W16
	.byte		N08   , Cs3 
	.byte	W12
	.byte		N09   , Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N08   , Gs2 
	.byte	W12
	.byte		N44   , Fn2 , v080, gtp2
	.byte	W24
	.byte	W01
@ 341   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N22   , Fs3 
	.byte	W24
	.byte		N44   , Fs3 , v080, gtp1
	.byte	W24
	.byte	W01
@ 342   ----------------------------------------
	.byte	W23
	.byte		N04   , Cs3 
	.byte	W06
	.byte		        Cn3 , v076
	.byte	W03
	.byte		N03   , Bn2 , v072
	.byte	W03
	.byte		N04   , As2 , v068
	.byte	W06
	.byte		        An2 , v060
	.byte	W03
	.byte		N03   , Gs2 , v056
	.byte	W03
	.byte		N04   , Gn2 , v052
	.byte	W06
	.byte		N03   , Fs2 , v048
	.byte	W03
	.byte		N04   , Fn2 , v040
	.byte	W03
	.byte		        En2 , v036
	.byte	W06
	.byte		        Ds2 , v032
	.byte	W03
	.byte		N03   , Dn2 , v028
	.byte	W03
	.byte		N05   , Cs2 , v020
	.byte		N09   , Dn3 , v080
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N68   , Dn3 , v080, gtp3
	.byte	W01
@ 343   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N02   , Cn3 
	.byte	W03
	.byte		N15   , Dn3 
	.byte	W15
	.byte		N04   , Cn3 
	.byte	W03
	.byte		N13   , Dn3 , v056
	.byte	W04
@ 344   ----------------------------------------
	.byte	W11
	.byte		N02   , Cn3 , v080
	.byte	W03
	.byte		N14   , Dn3 , v056
	.byte	W15
	.byte		N03   , Cn3 , v080
	.byte	W03
	.byte		N13   , Dn3 , v056
	.byte	W15
	.byte		N02   , Cn3 , v080
	.byte	W03
	.byte		N14   , Dn3 , v056
	.byte	W15
	.byte		N15   , Cn3 , v080
	.byte	W18
	.byte		N14   , As2 
	.byte	W13
@ 345   ----------------------------------------
	.byte	W02
	.byte		TIE   , Gn2 
	.byte	W92
	.byte	W02
@ 346   ----------------------------------------
	.byte	W08
	.byte		EOT   
	.byte	W88
@ 347   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte	FINE

@**************** Track 5 (Midi-Chn.9) ****************@

mus_shine_on_you_crazy_diamond_5:
	.byte		VOL   , 127*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte	KEYSH , mus_shine_on_you_crazy_diamond_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
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
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W48
	.byte	W48
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W72
	.byte		TIE   , Cn2 , v127
	.byte	W24
@ 066   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   , Cn2 , v104
	.byte	W12
@ 067   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		N66   , Cn2 , v104, gtp1
	.byte	W72
@ 068   ----------------------------------------
	.byte	W48
	.byte		N21   , Gn2 
	.byte	W24
	.byte		TIE   , Cn2 
	.byte	W24
@ 069   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 070   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		N19   
	.byte	W72
@ 071   ----------------------------------------
	.byte	W72
	.byte		N08   , An1 
	.byte	W12
	.byte		TIE   , Gn1 
	.byte	W12
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	W06
@ 074   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_074:
	.byte	W72
	.byte		TIE   , Gn1 , v104
	.byte	W24
	.byte	PEND
@ 075   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 076   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_076:
	.byte		N20   , Gn1 , v104
	.byte	W24
	.byte		N66   
	.byte	W72
	.byte	PEND
@ 077   ----------------------------------------
	.byte		N08   , An1 
	.byte	W12
	.byte		N09   , As1 
	.byte	W12
	.byte		N08   , Bn1 
	.byte	W12
	.byte		N09   , Cn2 
	.byte	W12
	.byte		N08   , Cs2 
	.byte	W12
	.byte		N09   , Dn2 
	.byte	W12
	.byte		TIE   , Ds2 
	.byte	W24
@ 078   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 079   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_079:
	.byte		N20   , Ds2 , v104
	.byte	W24
	.byte		N92   
	.byte	W72
	.byte	PEND
@ 080   ----------------------------------------
	.byte	W24
	.byte		N20   , As1 
	.byte	W24
	.byte		N21   , Ds2 
	.byte	W24
	.byte		TIE   , Dn2 
	.byte	W24
@ 081   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 082   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W72
@ 083   ----------------------------------------
	.byte	W72
	.byte		N08   , Fn1 
	.byte	W12
	.byte		TIE   , Gn1 
	.byte	W12
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	W06
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_074
@ 087   ----------------------------------------
	.byte	W80
	.byte		EOT   , Gn1 
	.byte	W04
	.byte		N08   , Gn1 , v104
	.byte	W12
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_076
@ 089   ----------------------------------------
	.byte		N20   , Gn2 , v104
	.byte	W24
	.byte		        Fn2 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		TIE   , Gn1 
	.byte	W24
@ 090   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W08
	.byte		N08   , Fn1 
	.byte	W12
@ 091   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_091:
	.byte		N20   , Gn1 , v104
	.byte	W24
	.byte		N92   
	.byte	W72
	.byte	PEND
@ 092   ----------------------------------------
	.byte	W24
	.byte		N20   , As1 
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		TIE   , Gn1 
	.byte	W24
@ 093   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   , Fn1 
	.byte	W12
@ 094   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_094:
	.byte		N20   , Gn1 , v104
	.byte	W24
	.byte		TIE   
	.byte	W72
	.byte	PEND
@ 095   ----------------------------------------
	.byte	W44
	.byte		EOT   
	.byte	W04
	.byte		N20   , Dn2 
	.byte	W24
	.byte		TIE   , Gn1 
	.byte	W24
@ 096   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W08
	.byte		N09   , Fn1 
	.byte	W12
@ 097   ----------------------------------------
	.byte		N21   , Gn1 
	.byte	W24
	.byte		N92   
	.byte	W72
@ 098   ----------------------------------------
	.byte	W24
	.byte		N21   , As1 
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		TIE   , Gn1 
	.byte	W24
@ 099   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N09   , Fn1 
	.byte	W12
@ 100   ----------------------------------------
	.byte		N20   , Gn1 
	.byte	W24
	.byte		N92   , Gn1 , v104, gtp1
	.byte	W72
@ 101   ----------------------------------------
	.byte	W24
	.byte		N20   , As1 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		TIE   , Cn2 
	.byte	W24
@ 102   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N09   , As1 
	.byte	W12
@ 103   ----------------------------------------
	.byte		N20   , Cn2 
	.byte	W24
	.byte		N92   , Cn2 , v104, gtp1
	.byte	W72
@ 104   ----------------------------------------
	.byte	W24
	.byte		N20   , Dn2 
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte		TIE   , Cn2 
	.byte	W24
@ 105   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   , As1 
	.byte	W12
@ 106   ----------------------------------------
	.byte		N20   , Cn2 
	.byte	W24
	.byte		N68   , Cn2 , v104, gtp2
	.byte	W72
@ 107   ----------------------------------------
	.byte		N21   
	.byte	W24
	.byte		N19   , As1 
	.byte	W24
	.byte		N20   , Gn1 
	.byte	W24
	.byte		N08   , Fn1 
	.byte	W12
	.byte		N92   , Gn1 , v104, gtp1
	.byte	W12
@ 108   ----------------------------------------
	.byte	W84
	.byte		N09   , Fn1 
	.byte	W12
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_094
@ 110   ----------------------------------------
	.byte	W66
	.byte		EOT   , Gn1 
	.byte	W06
	.byte		TIE   , Gn1 , v104
	.byte	W24
@ 111   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		N08   , Fn1 
	.byte	W12
@ 112   ----------------------------------------
	.byte		N20   , Gn1 
	.byte	W24
	.byte		N66   , Gn1 , v104, gtp1
	.byte	W72
@ 113   ----------------------------------------
	.byte		N08   , An1 
	.byte	W12
	.byte		N09   , As1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N08   , Cn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N09   , Dn2 
	.byte	W12
	.byte		TIE   , Ds2 
	.byte	W24
@ 114   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_079
@ 116   ----------------------------------------
	.byte	W24
	.byte		N20   , As1 , v104
	.byte	W24
	.byte		        Ds2 
	.byte	W24
	.byte		TIE   , Dn2 
	.byte	W24
@ 117   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W12
@ 118   ----------------------------------------
	.byte		N20   , Dn2 
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N08   , Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 119   ----------------------------------------
	.byte		N20   , Dn2 
	.byte	W24
	.byte		N21   , An2 
	.byte	W24
	.byte		N20   , Dn3 
	.byte	W24
	.byte		TIE   , Gn2 
	.byte	W24
@ 120   ----------------------------------------
	.byte	W96
@ 121   ----------------------------------------
	.byte	W17
	.byte		EOT   
	.byte	W07
	.byte		TIE   , Fs2 
	.byte	W72
@ 122   ----------------------------------------
	.byte	W64
	.byte		EOT   
	.byte	W08
	.byte		TIE   , Fn2 
	.byte	W24
@ 123   ----------------------------------------
	.byte	W96
@ 124   ----------------------------------------
	.byte	W16
	.byte		EOT   
	.byte	W08
	.byte		TIE   , En2 
	.byte	W72
@ 125   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		EOT   
	.byte	W05
	.byte		TIE   , Ds2 
	.byte	W24
@ 126   ----------------------------------------
	.byte	W96
@ 127   ----------------------------------------
	.byte	W16
	.byte		EOT   
	.byte	W08
	.byte		TIE   , Dn2 
	.byte	W72
@ 128   ----------------------------------------
	.byte	W64
	.byte		EOT   
	.byte	W08
	.byte		TIE   , Ds2 
	.byte	W24
@ 129   ----------------------------------------
	.byte	W96
@ 130   ----------------------------------------
	.byte	W16
	.byte		EOT   
	.byte	W08
	.byte		TIE   , Dn2 
	.byte	W72
@ 131   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		EOT   
	.byte		N04   , Cs2 
	.byte	W03
	.byte		        Cn2 , v072
	.byte	W06
	.byte		        Bn1 
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte		        An1 
	.byte	W06
	.byte		N03   , Gs1 
	.byte	W03
	.byte		TIE   , Gn1 , v096
	.byte	W24
@ 132   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 133   ----------------------------------------
	.byte		N08   
	.byte	W24
	.byte		N92   , Gn1 , v096, gtp1
	.byte	W72
@ 134   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_134:
	.byte	W24
	.byte		N21   , As1 , v096
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		TIE   , Gn1 
	.byte	W24
	.byte	PEND
@ 135   ----------------------------------------
	.byte	W92
	.byte		EOT   
	.byte	W04
@ 136   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		TIE   
	.byte	W72
@ 137   ----------------------------------------
	.byte	W44
	.byte		EOT   
	.byte	W04
	.byte		N21   , Dn2 
	.byte	W24
	.byte		TIE   , Gn1 
	.byte	W24
@ 138   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 139   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		N92   , Gn1 , v096, gtp1
	.byte	W72
@ 140   ----------------------------------------
	.byte	W24
	.byte		N21   , As1 
	.byte	W24
	.byte		N20   , Dn2 
	.byte	W24
	.byte		TIE   , Gn1 
	.byte	W24
@ 141   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 142   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		N92   
	.byte	W72
@ 143   ----------------------------------------
	.byte	W24
	.byte		N20   , As1 
	.byte	W24
	.byte		N21   , Dn2 
	.byte	W24
	.byte		TIE   , Cn2 
	.byte	W24
@ 144   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N09   
	.byte	W12
@ 145   ----------------------------------------
	.byte		N21   
	.byte	W24
	.byte		N92   , Cn2 , v096, gtp1
	.byte	W72
@ 146   ----------------------------------------
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		TIE   
	.byte	W24
@ 147   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		N08   
	.byte	W12
@ 148   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		N92   , Cn2 , v096, gtp1
	.byte	W72
@ 149   ----------------------------------------
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		TIE   , Gn1 
	.byte	W24
@ 150   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N09   
	.byte	W12
@ 151   ----------------------------------------
	.byte		N21   
	.byte	W24
	.byte		N92   
	.byte	W72
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_134
@ 153   ----------------------------------------
	.byte	W80
	.byte		EOT   , Gn1 
	.byte	W04
	.byte		N08   , Gn1 , v096
	.byte	W12
@ 154   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		N72   
	.byte	W72
@ 155   ----------------------------------------
	.byte		N08   , An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N09   , Cs2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N92   , Ds2 , v104
	.byte	W24
@ 156   ----------------------------------------
	.byte	W72
	.byte		N21   , Gn2 
	.byte	W24
@ 157   ----------------------------------------
	.byte		        As2 
	.byte	W24
	.byte		TIE   , Dn2 
	.byte	W72
@ 158   ----------------------------------------
	.byte	W32
	.byte		EOT   
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W12
	.byte		N21   , Dn2 
	.byte	W24
	.byte		N92   , Ds2 
	.byte	W24
@ 159   ----------------------------------------
	.byte	W72
	.byte		N20   , Gn2 
	.byte	W24
@ 160   ----------------------------------------
	.byte		N21   , As2 
	.byte	W24
	.byte		N68   , Dn2 , v104, gtp3
	.byte	W72
@ 161   ----------------------------------------
	.byte		N08   , Cn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N21   , Dn2 
	.byte	W24
	.byte		TIE   , Gn1 
	.byte	W24
@ 162   ----------------------------------------
	.byte	W72
	.byte		N20   , Dn2 
	.byte	W24
@ 163   ----------------------------------------
	.byte		N21   , Gn2 
	.byte	W24
	.byte		EOT   , Gn1 
	.byte		N92   , Cn2 
	.byte	W72
@ 164   ----------------------------------------
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		N92   , Gn1 
	.byte	W24
@ 165   ----------------------------------------
	.byte	W72
	.byte		N20   , Gn2 
	.byte	W24
@ 166   ----------------------------------------
	.byte		N21   , Dn2 
	.byte	W24
	.byte		TIE   
	.byte	W72
@ 167   ----------------------------------------
	.byte	W96
@ 168   ----------------------------------------
	.byte	W84
	.byte		N09   , An1 
	.byte	W12
@ 169   ----------------------------------------
	.byte		N19   , Dn2 
	.byte	W19
	.byte		EOT   
	.byte	W05
	.byte		TIE   , Gn1 
	.byte	W72
@ 170   ----------------------------------------
	.byte	W32
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W24
	.byte		N92   
	.byte	W24
@ 171   ----------------------------------------
	.byte	W72
	.byte		N21   , As1 
	.byte	W24
@ 172   ----------------------------------------
	.byte		N21   
	.byte	W24
	.byte		TIE   , Gn1 
	.byte	W72
@ 173   ----------------------------------------
	.byte	W44
	.byte		EOT   
	.byte	W04
	.byte		N20   
	.byte	W24
	.byte		TIE   
	.byte	W24
@ 174   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		EOT   
	.byte	W03
@ 175   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_175:
	.byte		N21   , Dn2 , v104
	.byte	W24
	.byte		TIE   , Gn1 
	.byte	W72
	.byte	PEND
@ 176   ----------------------------------------
	.byte	W32
	.byte		EOT   
	.byte	W04
	.byte		N09   
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		N92   
	.byte	W24
@ 177   ----------------------------------------
	.byte	W72
	.byte		N20   , As1 
	.byte	W24
@ 178   ----------------------------------------
	.byte		        Dn2 
	.byte	W24
	.byte		TIE   , Gn1 
	.byte	W72
@ 179   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		N09   
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		N92   
	.byte	W24
@ 180   ----------------------------------------
	.byte	W72
	.byte		N20   , As1 
	.byte	W24
@ 181   ----------------------------------------
	.byte		        Dn2 
	.byte	W24
	.byte		TIE   , Cn2 
	.byte	W72
@ 182   ----------------------------------------
	.byte	W32
	.byte		EOT   
	.byte	W04
	.byte		N09   
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		N92   
	.byte	W24
@ 183   ----------------------------------------
	.byte	W72
	.byte		N20   
	.byte	W24
@ 184   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		TIE   
	.byte	W72
@ 185   ----------------------------------------
	.byte	W32
	.byte		EOT   
	.byte	W04
	.byte		N09   
	.byte	W12
	.byte		N21   
	.byte	W24
	.byte		N92   
	.byte	W24
@ 186   ----------------------------------------
	.byte	W72
	.byte		N21   
	.byte	W24
@ 187   ----------------------------------------
	.byte		N21   
	.byte	W24
	.byte		TIE   , Gn1 
	.byte	W72
@ 188   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		N09   
	.byte	W12
	.byte		N21   
	.byte	W24
	.byte		N92   
	.byte	W24
@ 189   ----------------------------------------
	.byte	W72
	.byte		N21   , As1 
	.byte	W24
@ 190   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		TIE   , Gn1 
	.byte	W72
@ 191   ----------------------------------------
	.byte	W32
	.byte		EOT   
	.byte	W04
	.byte		N09   
	.byte	W12
	.byte		N21   
	.byte	W24
	.byte		N68   , Gn1 , v104, gtp3
	.byte	W24
@ 192   ----------------------------------------
	.byte	W48
	.byte		N08   , An1 
	.byte	W12
	.byte		N09   , As1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N08   , Cn2 
	.byte	W12
@ 193   ----------------------------------------
	.byte		N09   , Cs2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N92   , Ds2 , v104, gtp1
	.byte	W72
@ 194   ----------------------------------------
	.byte	W24
	.byte		N21   , Gn2 
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte		TIE   , Dn2 
	.byte	W24
@ 195   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		N09   , Cn2 
	.byte	W12
@ 196   ----------------------------------------
	.byte		N21   , Dn2 
	.byte	W24
	.byte		N92   , Ds2 
	.byte	W72
@ 197   ----------------------------------------
	.byte	W24
	.byte		N20   , Gn2 
	.byte	W24
	.byte		N21   , As2 
	.byte	W24
	.byte		N68   , Dn2 , v104, gtp3
	.byte	W24
@ 198   ----------------------------------------
	.byte	W48
	.byte		N08   , Cn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N09   , Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 199   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_175
@ 200   ----------------------------------------
	.byte	W24
	.byte		N21   , Dn2 , v104
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		EOT   , Gn1 
	.byte		N92   , Cn2 
	.byte	W24
@ 201   ----------------------------------------
	.byte	W72
	.byte		N21   
	.byte	W24
@ 202   ----------------------------------------
	.byte		        Dn2 
	.byte	W24
	.byte		N92   , Gn1 
	.byte	W72
@ 203   ----------------------------------------
	.byte	W24
	.byte		N21   , Gn2 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		TIE   
	.byte	W24
@ 204   ----------------------------------------
	.byte	W96
@ 205   ----------------------------------------
	.byte	W96
@ 206   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		EOT   
	.byte	W05
	.byte		TIE   , Gn1 
	.byte	W24
@ 207   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 208   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_091
@ 209   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_209:
	.byte	W24
	.byte		N20   , Dn2 , v104
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		TIE   , Fs1 
	.byte	W24
	.byte	PEND
@ 210   ----------------------------------------
	.byte	W92
	.byte		EOT   
	.byte	W04
@ 211   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_211:
	.byte		N20   , Fs1 , v104
	.byte	W24
	.byte		N92   , As1 
	.byte	W72
	.byte	PEND
@ 212   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_212:
	.byte	W24
	.byte		N20   , Cn2 , v104
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		N66   , Ds2 
	.byte	W24
	.byte	PEND
@ 213   ----------------------------------------
	.byte	W48
	.byte		        Dn2 
	.byte	W48
@ 214   ----------------------------------------
	.byte	W24
	.byte		        Cn2 
	.byte	W72
@ 215   ----------------------------------------
	.byte		        As1 
	.byte	W72
	.byte		N64   , Fn2 , v104, gtp1
	.byte	W24
@ 216   ----------------------------------------
	.byte	W72
	.byte		N20   
	.byte	W24
@ 217   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_217:
	.byte		N20   , Cn2 , v104
	.byte	W24
	.byte		N66   , Fn1 , v104, gtp1
	.byte	W72
	.byte	PEND
@ 218   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_218:
	.byte		N20   , Fn1 , v104
	.byte	W24
	.byte		N19   , Fs1 
	.byte	W48
	.byte		TIE   , Gn1 
	.byte	W24
	.byte	PEND
@ 219   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 220   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_091
@ 221   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_209
@ 222   ----------------------------------------
	.byte	W90
	.byte		EOT   , Fs1 
	.byte	W06
@ 223   ----------------------------------------
	.byte		N20   , Fs1 , v104
	.byte	W24
	.byte		N64   , As1 , v104, gtp1
	.byte	W72
@ 224   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_224:
	.byte		N20   , As1 , v104
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		N66   , Ds2 
	.byte	W24
	.byte	PEND
@ 225   ----------------------------------------
	.byte	W48
	.byte		        Dn2 
	.byte	W48
@ 226   ----------------------------------------
	.byte	W24
	.byte		        Cn2 
	.byte	W72
@ 227   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_227:
	.byte		N66   , As1 , v104
	.byte	W72
	.byte		N92   , Fn2 
	.byte	W24
	.byte	PEND
@ 228   ----------------------------------------
	.byte	W72
	.byte		N20   
	.byte	W24
@ 229   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_229:
	.byte		N20   , Cn2 , v104
	.byte	W24
	.byte		N92   , Fn2 
	.byte	W72
	.byte	PEND
@ 230   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_230:
	.byte	W24
	.byte		N20   , Fn2 , v104
	.byte	W24
	.byte		        Fs2 
	.byte	W24
	.byte		TIE   , Gn2 
	.byte	W24
	.byte	PEND
@ 231   ----------------------------------------
	.byte	W96
@ 232   ----------------------------------------
	.byte	W18
	.byte		EOT   
	.byte	W06
	.byte		TIE   , Fs2 
	.byte	W72
@ 233   ----------------------------------------
	.byte	W66
	.byte		EOT   
	.byte	W06
	.byte		TIE   , Fn2 
	.byte	W24
@ 234   ----------------------------------------
	.byte	W96
@ 235   ----------------------------------------
	.byte	W18
	.byte		EOT   
	.byte	W06
	.byte		TIE   , En2 
	.byte	W72
@ 236   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		EOT   
	.byte	W05
	.byte		TIE   , Ds2 
	.byte	W24
@ 237   ----------------------------------------
	.byte	W96
@ 238   ----------------------------------------
	.byte	W19
	.byte		EOT   
	.byte	W05
	.byte		TIE   , En2 
	.byte	W72
@ 239   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		EOT   
	.byte	W05
	.byte		TIE   , Fn2 
	.byte	W24
@ 240   ----------------------------------------
	.byte	W96
@ 241   ----------------------------------------
	.byte	W19
	.byte		EOT   
	.byte	W05
	.byte		N20   , Dn2 
	.byte	W24
	.byte		        Fn2 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
@ 242   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_242:
	.byte		N66   , Fs2 , v104
	.byte	W72
	.byte		TIE   , Gn1 
	.byte	W24
	.byte	PEND
@ 243   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 244   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_091
@ 245   ----------------------------------------
	.byte	W24
	.byte		N20   , Dn2 , v104
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		TIE   , Fs2 
	.byte	W24
@ 246   ----------------------------------------
	.byte	W88
	.byte		EOT   
	.byte	W08
@ 247   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		N66   , As2 
	.byte	W72
@ 248   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		N66   , Ds3 
	.byte	W24
@ 249   ----------------------------------------
	.byte	W48
	.byte		        Dn3 
	.byte	W48
@ 250   ----------------------------------------
	.byte	W24
	.byte		        Cn3 
	.byte	W72
@ 251   ----------------------------------------
	.byte		        As2 
	.byte	W72
	.byte		TIE   , Fn3 
	.byte	W24
@ 252   ----------------------------------------
	.byte	W72
	.byte		N20   
	.byte	W20
	.byte		EOT   
	.byte	W04
@ 253   ----------------------------------------
	.byte		N20   , Cn3 
	.byte	W24
	.byte		N66   , Fn1 
	.byte	W72
@ 254   ----------------------------------------
	.byte		N20   
	.byte	W24
	.byte		        Fs1 
	.byte	W48
	.byte		TIE   , Gn1 
	.byte	W24
@ 255   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N08   
	.byte	W12
@ 256   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_091
@ 257   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_209
@ 258   ----------------------------------------
	.byte	W92
	.byte		EOT   , Fs1 
	.byte	W04
@ 259   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_211
@ 260   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_212
@ 261   ----------------------------------------
	.byte	W48
	.byte		N66   , Dn2 , v104
	.byte	W48
@ 262   ----------------------------------------
	.byte	W24
	.byte		        Cn2 
	.byte	W72
@ 263   ----------------------------------------
	.byte		        As1 
	.byte	W72
	.byte		N60   , Fn2 , v104, gtp2
	.byte	W24
@ 264   ----------------------------------------
	.byte	W72
	.byte		N20   
	.byte	W24
@ 265   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_217
@ 266   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_218
@ 267   ----------------------------------------
	.byte	W80
	.byte		EOT   , Gn1 
	.byte	W04
	.byte		N08   , Gn1 , v104
	.byte	W12
@ 268   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_091
@ 269   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_209
@ 270   ----------------------------------------
	.byte	W90
	.byte		EOT   , Fs1 
	.byte	W06
@ 271   ----------------------------------------
	.byte		N20   , Fs1 , v104
	.byte	W24
	.byte		N66   , As1 
	.byte	W72
@ 272   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_224
@ 273   ----------------------------------------
	.byte	W48
	.byte		N66   , Dn2 , v104
	.byte	W48
@ 274   ----------------------------------------
	.byte	W24
	.byte		        Cn2 
	.byte	W72
@ 275   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_227
@ 276   ----------------------------------------
	.byte	W72
	.byte		N20   , Fn2 , v104
	.byte	W24
@ 277   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_229
@ 278   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_230
@ 279   ----------------------------------------
	.byte	W96
@ 280   ----------------------------------------
	.byte	W18
	.byte		EOT   , Gn2 
	.byte	W06
	.byte		TIE   , Fs2 , v104
	.byte	W72
@ 281   ----------------------------------------
	.byte	W66
	.byte		EOT   
	.byte	W06
	.byte		TIE   , Fn2 
	.byte	W24
@ 282   ----------------------------------------
	.byte	W96
@ 283   ----------------------------------------
	.byte	W18
	.byte		EOT   
	.byte	W06
	.byte		TIE   , En2 
	.byte	W72
@ 284   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		EOT   
	.byte	W05
	.byte		TIE   , Ds2 
	.byte	W24
@ 285   ----------------------------------------
	.byte	W96
@ 286   ----------------------------------------
	.byte	W19
	.byte		EOT   
	.byte	W05
	.byte		TIE   , En2 
	.byte	W72
@ 287   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		EOT   
	.byte	W05
	.byte		TIE   , Fn2 
	.byte	W24
@ 288   ----------------------------------------
	.byte	W96
@ 289   ----------------------------------------
	.byte	W19
	.byte		EOT   
	.byte	W05
	.byte		N20   , Dn2 
	.byte	W24
	.byte		        Fn2 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
@ 290   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_242
@ 291   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		EOT   , Gn1 
	.byte	W04
	.byte		N08   , Fn1 , v104
	.byte	W12
	.byte		N20   , Gn1 
	.byte	W01
@ 292   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_292:
	.byte	W23
	.byte		N92   , Gn1 , v104
	.byte	W72
	.byte	W01
	.byte	PEND
@ 293   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_293:
	.byte	W23
	.byte		N20   , As1 , v104
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		TIE   , Gn1 
	.byte	W24
	.byte	W01
	.byte	PEND
@ 294   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		EOT   
	.byte	W04
	.byte		N08   , Fn1 
	.byte	W12
	.byte		N20   , Gn1 
	.byte	W01
@ 295   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_292
@ 296   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_293
@ 297   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		EOT   , Gn1 
	.byte	W04
	.byte		N08   , Fn1 , v104
	.byte	W12
	.byte		N20   , Gn1 
	.byte	W01
@ 298   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_292
@ 299   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_293
@ 300   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		EOT   , Gn1 
	.byte	W04
	.byte		N08   , Fn1 , v104
	.byte	W12
	.byte		N20   , Gn1 
	.byte	W01
@ 301   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_292
@ 302   ----------------------------------------
	.byte	W23
	.byte		N20   , As1 , v104
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		TIE   , Cn2 
	.byte	W24
	.byte	W01
@ 303   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		EOT   
	.byte	W04
	.byte		N08   , As1 
	.byte	W12
	.byte		N20   , Cn2 
	.byte	W01
@ 304   ----------------------------------------
	.byte	W23
	.byte		TIE   
	.byte	W72
	.byte	W01
@ 305   ----------------------------------------
	.byte	W42
	.byte	W01
	.byte		EOT   
	.byte	W04
	.byte		N20   , Dn2 
	.byte	W24
	.byte		TIE   , Cn2 
	.byte	W24
	.byte	W01
@ 306   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		EOT   
	.byte	W04
	.byte		N08   , As1 
	.byte	W12
	.byte		N20   , Cn2 
	.byte	W01
@ 307   ----------------------------------------
	.byte	W23
	.byte		N92   
	.byte	W72
	.byte	W01
@ 308   ----------------------------------------
	.byte	W23
	.byte		N04   , Gn2 
	.byte	W06
	.byte		N03   , Fs2 
	.byte	W03
	.byte		        Fn2 , v100
	.byte	W03
	.byte		N08   , En2 , v092
	.byte	W09
	.byte		N03   , Ds2 , v076
	.byte	W03
	.byte		N04   , Dn2 , v072
	.byte	W03
	.byte		        Cs2 , v068
	.byte	W06
	.byte		N03   , Cn2 , v060
	.byte	W03
	.byte		N04   , Bn1 , v056
	.byte	W03
	.byte		        As1 , v052
	.byte	W06
	.byte		N03   , Gs1 , v040
	.byte		N02   , An1 , v048
	.byte	W03
	.byte		N64   , Gn1 , v104, gtp1
	.byte	W24
	.byte	W01
@ 309   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N32   
	.byte	W36
	.byte		N08   , Fn1 
	.byte	W12
	.byte		N20   , Gn1 
	.byte	W01
@ 310   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_292
@ 311   ----------------------------------------
	.byte	W23
	.byte		N20   , An1 , v104
	.byte	W24
	.byte		        As1 
	.byte	W24
	.byte		TIE   , Gn1 
	.byte	W24
	.byte	W01
@ 312   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		EOT   
	.byte	W04
	.byte		N08   , Fn1 
	.byte	W12
	.byte		N20   , Gn1 
	.byte	W01
@ 313   ----------------------------------------
	.byte	W23
	.byte		N66   
	.byte	W72
	.byte		N08   , An1 
	.byte	W01
@ 314   ----------------------------------------
	.byte	W11
	.byte		        As1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		TIE   , Ds2 
	.byte	W24
	.byte	W01
@ 315   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		EOT   
	.byte	W04
	.byte		N08   , Dn2 
	.byte	W12
	.byte		N20   , Ds2 
	.byte	W01
@ 316   ----------------------------------------
	.byte	W23
	.byte		N92   
	.byte	W72
	.byte	W01
@ 317   ----------------------------------------
	.byte	W23
	.byte		N20   , As1 
	.byte	W24
	.byte		        Ds2 
	.byte	W24
	.byte		TIE   , Dn2 
	.byte	W24
	.byte	W01
@ 318   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		EOT   
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W12
	.byte		N20   , Dn2 
	.byte	W01
@ 319   ----------------------------------------
	.byte	W23
	.byte		N44   
	.byte	W48
	.byte		N20   
	.byte	W24
	.byte		        As1 
	.byte	W01
@ 320   ----------------------------------------
	.byte	W23
	.byte		N20   
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		N19   , Gn1 
	.byte	W24
	.byte		N06   
	.byte	W01
@ 321   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_321:
	.byte	W44
	.byte	W03
	.byte		N20   , Gn1 , v104
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N08   , An1 
	.byte	W01
	.byte	PEND
@ 322   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_322:
	.byte	W11
	.byte		N08   , As1 , v104
	.byte	W12
	.byte		N20   , Gn1 
	.byte	W24
	.byte		N06   
	.byte	W48
	.byte		N20   
	.byte	W01
	.byte	PEND
@ 323   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_323:
	.byte	W23
	.byte		N06   , Gn1 , v104
	.byte	W24
	.byte		N08   , An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N20   , Gn1 
	.byte	W24
	.byte		N06   
	.byte	W01
	.byte	PEND
@ 324   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_321
@ 325   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_322
@ 326   ----------------------------------------
	.byte	W23
	.byte		N06   , Gn1 , v104
	.byte	W24
	.byte		N08   , An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N20   , Cn2 
	.byte	W24
	.byte		N06   
	.byte	W01
@ 327   ----------------------------------------
mus_shine_on_you_crazy_diamond_5_327:
	.byte	W44
	.byte	W03
	.byte		N20   , Cn2 , v104
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N08   , Dn2 
	.byte	W01
	.byte	PEND
@ 328   ----------------------------------------
	.byte	W11
	.byte		        En2 
	.byte	W12
	.byte		N20   , Cn2 
	.byte	W24
	.byte		N06   
	.byte	W48
	.byte		N20   
	.byte	W01
@ 329   ----------------------------------------
	.byte	W23
	.byte		N06   
	.byte	W24
	.byte		N08   , Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N20   , Cn2 
	.byte	W24
	.byte		N06   
	.byte	W01
@ 330   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_327
@ 331   ----------------------------------------
	.byte	W11
	.byte		N08   , En2 , v104
	.byte	W12
	.byte		N20   , Cn2 
	.byte	W24
	.byte		N08   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W01
@ 332   ----------------------------------------
	.byte	W11
	.byte		        En2 
	.byte	W12
	.byte		        Cn2 
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N19   , Gn1 
	.byte	W24
	.byte		N06   
	.byte	W01
@ 333   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_321
@ 334   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_322
@ 335   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_323
@ 336   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_321
@ 337   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_5_322
@ 338   ----------------------------------------
	.byte	W23
	.byte		N06   , Gn1 , v104
	.byte	W06
	.byte		        Gs1 , v096
	.byte	W06
	.byte		        An1 , v084
	.byte	W06
	.byte		        As1 , v076
	.byte	W06
	.byte		        Bn1 , v072
	.byte	W06
	.byte		        Cn2 , v068
	.byte	W06
	.byte		N07   , Cs2 , v060
	.byte	W06
	.byte		N06   , Dn2 , v056
	.byte	W06
	.byte		N19   , Ds2 , v104
	.byte	W24
	.byte		N06   
	.byte	W01
@ 339   ----------------------------------------
	.byte	W23
	.byte		N08   , Cs2 
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N20   , Ds2 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn2 
	.byte	W01
@ 340   ----------------------------------------
	.byte	W23
	.byte		N20   , Ds2 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N08   , Cs2 
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N20   , Ds2 
	.byte	W01
@ 341   ----------------------------------------
	.byte	W23
	.byte		N06   
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte		N19   , Dn2 
	.byte	W24
	.byte		N06   
	.byte	W01
@ 342   ----------------------------------------
	.byte	W23
	.byte		N08   , Cn2 
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N20   , Dn2 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Cn2 
	.byte	W01
@ 343   ----------------------------------------
	.byte	W23
	.byte		N32   , Dn2 
	.byte	W36
	.byte		        Cn2 
	.byte	W36
	.byte		        As1 
	.byte	W01
@ 344   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		        An1 
	.byte	W36
	.byte		TIE   , Gn1 
	.byte	W24
	.byte	W01
@ 345   ----------------------------------------
	.byte	W96
@ 346   ----------------------------------------
	.byte	W17
	.byte		EOT   
	.byte	W78
	.byte	W01
@ 347   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte	FINE

@**************** Track 6 (Midi-Chn.13) ****************@

mus_shine_on_you_crazy_diamond_6:
	.byte	KEYSH , mus_shine_on_you_crazy_diamond_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 26
	.byte		VOL   , 127*mus_shine_on_you_crazy_diamond_mvl/mxv
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
	.byte		MOD   , 3
	.byte	W96
@ 027   ----------------------------------------
	.byte		        20
	.byte		BEND  , c_v-8
	.byte		N68   , Gn4 , v092, gtp3
	.byte	W02
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-5
	.byte	W02
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W02
	.byte		MOD   , 80
	.byte		BEND  , c_v+0
	.byte	W56
	.byte	W02
	.byte		MOD   , 20
	.byte		N23   , Fn4 , v080
	.byte	W24
@ 028   ----------------------------------------
	.byte		N92   , Gn4 , v088, gtp3
	.byte	W24
	.byte		MOD   , 80
	.byte	W72
@ 029   ----------------------------------------
	.byte		        20
	.byte		BEND  , c_v-5
	.byte		        c_v-4
	.byte		N11   , Gn3 , v076
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v+0
	.byte	W11
	.byte		N11   , As3 
	.byte	W12
	.byte		        Cn4 , v060
	.byte	W12
	.byte		BEND  , c_v-10
	.byte		        c_v-9
	.byte		N32   , Dn4 , v076, gtp3
	.byte	W01
	.byte		BEND  , c_v-7
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-4
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W36
	.byte	W03
	.byte		N17   , Cn4 , v060
	.byte	W18
@ 030   ----------------------------------------
	.byte		TIE   , Dn4 , v076
	.byte	W24
	.byte		MOD   , 60
	.byte	W72
@ 031   ----------------------------------------
	.byte	W24
	.byte		        20
	.byte		N08   , Dn4 , v080
	.byte	W08
	.byte		EOT   
	.byte	W04
	.byte		N11   , Cn4 , v068
	.byte	W12
	.byte		N22   , As3 , v060
	.byte	W24
	.byte		        Cn4 , v076
	.byte	W24
@ 032   ----------------------------------------
	.byte		N32   , Dn4 , v076, gtp3
	.byte	W36
	.byte		N11   , Cn4 , v052
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		        c_v-4
	.byte		N80   , Dn4 , v076
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v+0
	.byte	W23
	.byte		MOD   , 60
	.byte	W24
@ 033   ----------------------------------------
	.byte	W24
	.byte		        20
	.byte		N06   , An3 
	.byte	W06
	.byte		        As3 , v052
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N23   , An3 , v076
	.byte	W24
	.byte		N24   , Fn3 
	.byte	W24
@ 034   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N56   , Fn3 , v076, gtp3
	.byte	W12
	.byte		MOD   , 80
	.byte	W60
@ 035   ----------------------------------------
	.byte		        40
	.byte		BEND  , c_v-10
	.byte		N22   , An3 , v080
	.byte	W01
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W15
	.byte		MOD   , 60
	.byte		        20
	.byte		N23   , As3 
	.byte	W24
	.byte		N11   , As3 , v076
	.byte	W12
	.byte		        Gn3 , v052
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 036   ----------------------------------------
	.byte		BEND  , c_v-5
	.byte		        c_v-4
	.byte		N92   , As3 , v072, gtp3
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W92
	.byte	W02
@ 037   ----------------------------------------
	.byte		MOD   , 60
	.byte		BEND  , c_v-16
	.byte		N48   , As3 , v076
	.byte	W01
	.byte		BEND  , c_v-15
	.byte	W02
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-13
	.byte	W02
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-7
	.byte	W02
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v+0
	.byte	W03
	.byte		        c_v-1
	.byte	W03
	.byte		        c_v-2
	.byte	W03
	.byte		        c_v-3
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v-5
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-7
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-9
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-11
	.byte	W03
	.byte		        c_v-12
	.byte	W03
	.byte		        c_v-13
	.byte	W03
	.byte		        c_v-14
	.byte	W03
	.byte		        c_v-15
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		MOD   , 20
	.byte		BEND  , c_v+0
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 038   ----------------------------------------
	.byte		N68   , Gn3 , v076, gtp3
	.byte	W72
	.byte		N12   , Dn4 , v080
	.byte	W12
	.byte		        Fn4 , v076
	.byte	W12
@ 039   ----------------------------------------
	.byte		N44   , Gn4 , v080, gtp3
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		        Gn4 , v076
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		        c_v-4
	.byte		N20   , As4 , v096
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v+0
	.byte	W23
@ 040   ----------------------------------------
	.byte		        c_v-10
	.byte		        c_v-8
	.byte		N11   , Cn5 , v100
	.byte	W01
	.byte		BEND  , c_v-6
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v+0
	.byte	W10
	.byte		N23   , As4 , v092
	.byte	W24
	.byte		N05   , Dn4 , v072
	.byte	W06
	.byte		        Cn4 , v060
	.byte	W06
	.byte		N11   , As3 , v076
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W24
@ 041   ----------------------------------------
	.byte		N44   , Gn3 , v076, gtp3
	.byte	W24
	.byte		MOD   , 80
	.byte	W24
	.byte		        20
	.byte		BEND  , c_v-10
	.byte		        c_v-9
	.byte		N11   , As3 
	.byte	W01
	.byte		BEND  , c_v-7
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N11   , As3 , v060
	.byte	W12
	.byte		MOD   , 80
	.byte		N23   , As3 , v076
	.byte	W24
@ 042   ----------------------------------------
	.byte		MOD   , 20
	.byte		N11   , Fn3 , v092
	.byte	W12
	.byte		        Gn3 , v076
	.byte	W12
	.byte		TIE   
	.byte	W24
	.byte		MOD   , 80
	.byte	W48
@ 043   ----------------------------------------
	.byte	W60
	.byte		        20
	.byte		BEND  , c_v+10
	.byte		        c_v+9
	.byte		N17   , Cn4 , v092
	.byte	W01
	.byte		BEND  , c_v+8
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+3
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+0
	.byte	W14
	.byte		N08   , As3 , v068
	.byte	W09
	.byte		        Cn4 , v076
	.byte	W09
@ 044   ----------------------------------------
	.byte		TIE   , Dn4 , v088
	.byte	W01
	.byte		EOT   , Gn3 
	.byte	W23
	.byte		MOD   , 80
	.byte	W72
@ 045   ----------------------------------------
	.byte	W48
	.byte		        20
	.byte		N08   , Dn4 , v080
	.byte	W08
	.byte		EOT   
	.byte	W04
	.byte		BEND  , c_v-3
	.byte		        c_v-2
	.byte		N32   , Fn4 , v092, gtp3
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W32
	.byte	W03
@ 046   ----------------------------------------
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte		N11   , Gn4 , v100
	.byte	W11
	.byte		        Gn4 , v076
	.byte	W12
	.byte		N68   , Gn4 , v092, gtp3
	.byte	W12
	.byte		MOD   , 80
	.byte	W60
@ 047   ----------------------------------------
	.byte		        20
	.byte		N06   
	.byte	W06
	.byte		        Fn4 , v052
	.byte	W06
	.byte		N03   , Dn4 , v080
	.byte	W03
	.byte		N02   , Cn4 , v052
	.byte	W03
	.byte		N52   , Dn4 , v080, gtp1
	.byte	W54
	.byte		N05   , Dn4 , v092
	.byte	W06
	.byte		        Cn4 , v068
	.byte	W06
	.byte		        As3 , v076
	.byte	W06
	.byte		        Cn4 , v060
	.byte	W06
@ 048   ----------------------------------------
	.byte		N44   , Cn4 , v080, gtp3
	.byte	W48
	.byte		N11   , Gn3 , v076
	.byte	W12
	.byte		        As3 , v080
	.byte	W12
	.byte		N05   , Dn4 , v092
	.byte	W06
	.byte		        Cn4 , v060
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 , v056
	.byte	W06
@ 049   ----------------------------------------
	.byte		N32   , Dn4 , v080, gtp3
	.byte	W36
	.byte		N05   , Dn4 , v092
	.byte	W06
	.byte		        Fn4 , v088
	.byte	W06
	.byte		MOD   , 80
	.byte		N23   , Dn4 , v092
	.byte	W24
	.byte		MOD   , 20
	.byte		BEND  , c_v-3
	.byte		N11   , Gn4 , v100
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W10
	.byte		N11   
	.byte	W12
@ 050   ----------------------------------------
	.byte		BEND  , c_v-4
	.byte		N44   , As4 , v100, gtp3
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W44
	.byte	W02
	.byte		N11   , Gn4 , v112
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N22   , Dn5 
	.byte	W01
	.byte		BEND  , c_v-4
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W04
	.byte		MOD   , 80
	.byte	W18
@ 051   ----------------------------------------
	.byte		        20
	.byte		BEND  , c_v+3
	.byte		N11   , Cn5 
	.byte	W01
	.byte		BEND  , c_v+2
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+0
	.byte	W10
	.byte		N11   , As4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Fn4 , v100
	.byte	W12
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		TIE   , Gn4 
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W19
	.byte		MOD   , 80
	.byte	W24
	.byte	W02
@ 052   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		EOT   
	.byte	W05
	.byte		VOICE , 30
	.byte		MOD   , 10
	.byte		VOL   , 127*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte	W12
@ 053   ----------------------------------------
	.byte		N22   , As3 , v080
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		BEND  , c_v+0
	.byte		TIE   , En4 
	.byte	W12
	.byte	W12
@ 054   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_054:
	.byte	W12
	.byte	W12
	.byte	W01
	.byte		BEND  , c_v-1
	.byte	W11
	.byte	W12
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W11
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	PEND
@ 055   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_055:
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W22
	.byte	PEND
	.byte		EOT   , En4 
	.byte	W02
@ 056   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_056:
	.byte		N22   , As3 , v080
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		BEND  , c_v+0
	.byte		TIE   , En4 
	.byte	W12
	.byte	W12
	.byte	PEND
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_054
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_055
	.byte		EOT   , En4 
	.byte	W02
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_056
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_054
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_055
	.byte		EOT   , En4 
	.byte	W02
@ 062   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_062:
	.byte		N22   , As3 , v080
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		TIE   , En4 
	.byte	W12
	.byte	W12
	.byte	PEND
@ 063   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_063:
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_064:
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W10
	.byte	PEND
	.byte		EOT   , En4 
	.byte	W02
@ 065   ----------------------------------------
	.byte		N22   , As3 , v080
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		TIE   , En4 
	.byte	W12
	.byte	W12
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_063
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_064
	.byte		EOT   , En4 
	.byte	W02
@ 068   ----------------------------------------
	.byte		N22   , As3 , v080
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		TIE   , En4 
	.byte	W12
	.byte	W12
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_063
@ 070   ----------------------------------------
	.byte	W12
	.byte	W10
	.byte		EOT   , En4 
	.byte	W02
	.byte	W24
	.byte		N08   , Fn2 , v072
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
@ 071   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_071:
	.byte		N08   , Fn2 , v072
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N56   , Gn2 , v072, gtp3
	.byte	W12
	.byte	PEND
@ 072   ----------------------------------------
	.byte	W48
	.byte	W48
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_062
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_063
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_064
	.byte		EOT   , En4 
	.byte	W02
@ 077   ----------------------------------------
	.byte		N22   , As3 , v080
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		TIE   , Ds4 
	.byte	W12
	.byte	W12
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_063
@ 079   ----------------------------------------
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	W12
@ 080   ----------------------------------------
	.byte		N44   , Ds4 , v080, gtp2
	.byte	W44
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		N22   
	.byte	W24
	.byte		TIE   , Dn4 
	.byte	W12
	.byte	W12
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_063
@ 082   ----------------------------------------
	.byte	W12
	.byte	W32
	.byte	W02
	.byte		EOT   , Dn4 
	.byte	W02
	.byte		N08   , Fn2 , v072
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_071
@ 084   ----------------------------------------
	.byte	W48
	.byte	W48
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_062
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_063
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_064
	.byte		EOT   , En4 
	.byte	W02
@ 089   ----------------------------------------
	.byte		VOICE , 26
	.byte		VOL   , 110*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		MOD   , 3
	.byte		BEND  , c_v-10
	.byte		N60   , Dn4 , v084
	.byte	W03
	.byte		BEND  , c_v-9
	.byte	W02
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-7
	.byte	W02
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-5
	.byte	W03
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v-3
	.byte	W03
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v+0
	.byte	W48
	.byte		        c_v-2
	.byte		N12   , As3 , v100
	.byte	W01
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W11
	.byte		N10   , Cn4 , v060
	.byte	W11
@ 090   ----------------------------------------
	.byte		TIE   , Gn3 , v084
	.byte	W48
	.byte		BEND  , c_v+0
	.byte	W36
	.byte		        c_v+0
	.byte	W04
	.byte	W04
	.byte		        c_v-1
	.byte	W04
@ 091   ----------------------------------------
	.byte	W03
	.byte		        c_v-2
	.byte	W01
	.byte	W04
	.byte	W03
	.byte		        c_v-3
	.byte	W01
	.byte	W04
	.byte	W01
	.byte		        c_v-4
	.byte	W03
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		BEND  , c_v-5
	.byte		        c_v+0
	.byte	W36
	.byte		N08   , Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 092   ----------------------------------------
	.byte		BEND  , c_v-4
	.byte		N40   , Dn3 
	.byte	W04
	.byte		BEND  , c_v-3
	.byte	W03
	.byte		        c_v-2
	.byte	W03
	.byte		        c_v-1
	.byte	W03
	.byte		        c_v+0
	.byte	W32
	.byte	W03
	.byte		N08   
	.byte	W08
	.byte		        Cn3 , v072
	.byte	W08
	.byte		        As2 
	.byte	W08
	.byte		        Cn3 , v080
	.byte	W12
	.byte		        As2 , v072
	.byte	W12
@ 093   ----------------------------------------
	.byte		TIE   , Gn2 
	.byte	W48
	.byte		MOD   , 60
	.byte	W48
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v+0
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte		MOD   , 20
	.byte		N08   , As3 , v032
	.byte		N08   , As4 , v084
	.byte	W08
	.byte		        Gn4 , v060
	.byte	W08
	.byte		        Dn4 
	.byte	W08
	.byte		TIE   , As4 , v084
	.byte	W24
@ 096   ----------------------------------------
	.byte	W92
	.byte		EOT   
	.byte	W04
@ 097   ----------------------------------------
	.byte		BEND  , c_v-3
	.byte		N20   
	.byte	W02
	.byte		BEND  , c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v+0
	.byte	W18
	.byte		TIE   , An4 
	.byte	W72
@ 098   ----------------------------------------
	.byte	W44
	.byte		EOT   
	.byte	W04
	.byte		N08   , Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		TIE   , Gn4 
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W17
@ 099   ----------------------------------------
	.byte	W92
	.byte		EOT   
	.byte	W04
@ 100   ----------------------------------------
	.byte		BEND  , c_v-3
	.byte		N08   
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v+0
	.byte	W07
	.byte		N08   , Fn4 , v072
	.byte	W08
	.byte		        Dn4 , v060
	.byte	W08
	.byte		MOD   , 60
	.byte		N66   , Fn4 , v080
	.byte	W72
@ 101   ----------------------------------------
	.byte		MOD   , 20
	.byte		N20   , Fn4 , v084
	.byte	W24
	.byte		N08   , As4 
	.byte	W08
	.byte		        Gn4 , v072
	.byte	W08
	.byte		        Dn4 , v060
	.byte	W08
	.byte		        As4 , v084
	.byte	W08
	.byte		        Gn4 , v072
	.byte	W08
	.byte		        Dn4 , v060
	.byte	W08
	.byte		BEND  , c_v-3
	.byte		TIE   , Cn5 , v084
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W22
@ 102   ----------------------------------------
	.byte	W92
	.byte		EOT   
	.byte	W04
@ 103   ----------------------------------------
	.byte		N06   
	.byte	W08
	.byte		        As4 , v072
	.byte	W08
	.byte		        Gn4 , v064
	.byte	W08
	.byte		N08   , As4 , v084
	.byte	W12
	.byte		MOD   , 80
	.byte		N80   , Gn4 
	.byte	W60
@ 104   ----------------------------------------
	.byte	W24
	.byte		MOD   , 20
	.byte		N12   , Gn4 , v092
	.byte	W12
	.byte		BEND  , c_v-2
	.byte		N12   , As4 , v076
	.byte	W01
	.byte		BEND  , c_v-1
	.byte		        c_v+0
	.byte	W11
	.byte		        c_v-2
	.byte		N18   , Dn5 , v064
	.byte	W01
	.byte		BEND  , c_v-1
	.byte		        c_v+0
	.byte	W17
	.byte		        c_v+2
	.byte		N05   , As4 , v080
	.byte	W01
	.byte		BEND  , c_v+1
	.byte		        c_v+0
	.byte	W05
	.byte		N08   , Gn4 , v084
	.byte	W12
	.byte		        As4 
	.byte	W12
@ 105   ----------------------------------------
	.byte		TIE   , Gn4 
	.byte	W96
@ 106   ----------------------------------------
	.byte	W18
	.byte		EOT   
	.byte	W30
	.byte		BEND  , c_v-5
	.byte		N08   , Dn4 
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v+0
	.byte	W11
	.byte		N08   , Cn4 
	.byte	W12
	.byte		N20   , As3 
	.byte	W24
@ 107   ----------------------------------------
	.byte		BEND  , c_v+4
	.byte		N20   , Gn3 
	.byte	W01
	.byte		BEND  , c_v+2
	.byte		        c_v+0
	.byte	W23
	.byte		N08   , Dn3 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W12
	.byte		N20   , As2 
	.byte	W24
	.byte		N10   , Fn2 
	.byte	W12
	.byte		N92   , Gn2 , v080
	.byte	W12
@ 108   ----------------------------------------
	.byte	W84
	.byte		BEND  , c_v-3
	.byte		N12   , Gn2 , v084
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W10
@ 109   ----------------------------------------
	.byte		N12   , As2 , v080
	.byte	W12
	.byte		        Fn2 , v060
	.byte	W12
	.byte		MOD   , 80
	.byte		N66   , Gn2 , v084
	.byte	W72
@ 110   ----------------------------------------
	.byte		MOD   , 20
	.byte		N32   , As2 
	.byte	W36
	.byte		N08   , Dn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		TIE   , Gn3 
	.byte	W24
@ 111   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		BEND  , c_v-4
	.byte		N07   , As3 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v+0
	.byte	W06
	.byte		N07   , An3 , v072
	.byte	W05
@ 112   ----------------------------------------
	.byte	W02
	.byte		N12   , Gn3 , v060
	.byte	W12
	.byte		N10   , Fn3 , v052
	.byte	W10
	.byte		N68   , Gn3 , v084, gtp2
	.byte	W24
	.byte		MOD   , 80
	.byte	W48
@ 113   ----------------------------------------
	.byte		        20
	.byte		N20   , As3 
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		N12   , Dn4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W10
	.byte		N12   , Cn4 , v060
	.byte	W12
	.byte		N20   , Dn4 , v084
	.byte	W24
	.byte		BEND  , c_v-5
	.byte		TIE   , Ds4 , v100
	.byte	W03
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v+0
	.byte	W13
@ 114   ----------------------------------------
	.byte	W96
@ 115   ----------------------------------------
	.byte	W18
	.byte		EOT   
	.byte	W06
	.byte		BEND  , c_v-5
	.byte		N66   
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W64
	.byte	W01
@ 116   ----------------------------------------
	.byte		        c_v-4
	.byte		N66   , Ds4 , v100, gtp1
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		MOD   , 60
	.byte		BEND  , c_v+0
	.byte	W68
	.byte		MOD   , 20
	.byte		N92   , Fs3 , v092
	.byte	W24
@ 117   ----------------------------------------
	.byte	W72
	.byte		N08   , Fs3 , v072
	.byte	W08
	.byte		        Gn3 , v060
	.byte	W08
	.byte		        Fs3 
	.byte	W08
@ 118   ----------------------------------------
	.byte		N12   , En3 , v052
	.byte	W12
	.byte		TIE   , Fs3 , v084
	.byte	W84
@ 119   ----------------------------------------
	.byte	W44
	.byte		EOT   
	.byte	W04
	.byte		BEND  , c_v-4
	.byte		N08   , Gn4 , v104
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W10
	.byte		N72   , Gn4 , v104, gtp2
	.byte	W12
	.byte		BEND  , c_v+0
	.byte	W24
@ 120   ----------------------------------------
	.byte	W23
	.byte		        c_v-1
	.byte	W06
	.byte		        c_v-2
	.byte	W07
	.byte		        c_v-3
	.byte	W06
	.byte		        c_v-4
	.byte	W06
	.byte		        c_v-5
	.byte		        c_v+0
	.byte	W21
	.byte		        c_v-3
	.byte		N20   
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W22
	.byte		N20   
	.byte	W03
@ 121   ----------------------------------------
	.byte	W21
	.byte		N19   , An4 
	.byte	W24
	.byte		N20   , As4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		N24   , Gn4 , v104, gtp2
	.byte	W03
@ 122   ----------------------------------------
	.byte		MOD   , 80
	.byte	W24
	.byte		        20
	.byte		N12   
	.byte	W12
	.byte		        Fn4 , v092
	.byte	W12
	.byte		        Dn4 , v080
	.byte	W12
	.byte		        Fn4 , v072
	.byte	W12
	.byte		TIE   , Dn4 , v104
	.byte	W24
@ 123   ----------------------------------------
	.byte	W84
	.byte		EOT   
	.byte	W12
@ 124   ----------------------------------------
	.byte		BEND  , c_v-3
	.byte		N08   
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N08   , Cn4 , v092
	.byte	W08
	.byte		        As3 , v080
	.byte	W08
	.byte		BEND  , c_v-5
	.byte		N60   , Gn3 , v092, gtp2
	.byte	W01
	.byte		BEND  , c_v-4
	.byte		        c_v-2
	.byte	W01
	.byte		MOD   , 80
	.byte		BEND  , c_v+0
	.byte	W68
	.byte	W02
@ 125   ----------------------------------------
	.byte		MOD   , 20
	.byte	W12
	.byte		BEND  , c_v-2
	.byte		N08   , Gn4 , v104
	.byte	W01
	.byte		BEND  , c_v-1
	.byte		        c_v+0
	.byte	W11
	.byte		        c_v-3
	.byte		N20   , An4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v+0
	.byte	W23
	.byte		        c_v+0
	.byte		N20   , As4 
	.byte	W01
	.byte		BEND  , c_v-1
	.byte		        c_v+0
	.byte	W23
	.byte		        c_v-8
	.byte		N60   , Ds5 , v104, gtp2
	.byte	W02
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W01
	.byte		MOD   , 80
	.byte		BEND  , c_v+0
	.byte	W12
@ 126   ----------------------------------------
	.byte	W48
	.byte		MOD   , 20
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		N08   
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N08   , Dn5 
	.byte	W12
@ 127   ----------------------------------------
	.byte		        As4 , v092
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N68   , Dn5 , v104, gtp2
	.byte	W03
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		        c_v-3
	.byte	W03
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v+0
	.byte	W44
	.byte		        c_v-1
	.byte	W16
@ 128   ----------------------------------------
	.byte		        c_v-2
	.byte		        c_v+0
	.byte		N16   
	.byte	W21
	.byte		N20   
	.byte	W24
	.byte		        Fn5 
	.byte	W24
	.byte		TIE   , Ds5 
	.byte	W24
	.byte	W03
@ 129   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		BEND  , c_v-4
	.byte		N06   
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W04
	.byte		N06   , Dn5 , v092
	.byte	W02
@ 130   ----------------------------------------
	.byte	W04
	.byte		N10   , As4 , v080
	.byte	W10
	.byte		        Cn5 , v060
	.byte	W10
	.byte		TIE   , Dn5 , v092
	.byte	W48
	.byte		BEND  , c_v+0
	.byte	W20
	.byte		        c_v-1
	.byte	W04
@ 131   ----------------------------------------
	.byte	W06
	.byte	W06
	.byte	W03
	.byte		        c_v-2
	.byte	W03
	.byte	W06
	.byte	W06
	.byte	W04
	.byte		        c_v-3
	.byte	W02
	.byte	W06
	.byte	W06
	.byte	W05
	.byte		        c_v-4
	.byte	W01
	.byte	W06
	.byte	W02
	.byte		EOT   
	.byte	W04
	.byte	W06
	.byte		BEND  , c_v-5
	.byte	W24
@ 132   ----------------------------------------
	.byte	W96
@ 133   ----------------------------------------
	.byte	W96
@ 134   ----------------------------------------
	.byte	W96
@ 135   ----------------------------------------
	.byte	W96
@ 136   ----------------------------------------
	.byte	W96
@ 137   ----------------------------------------
	.byte	W96
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
	.byte	W96
@ 140   ----------------------------------------
	.byte	W96
@ 141   ----------------------------------------
	.byte	W96
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W96
@ 144   ----------------------------------------
	.byte	W96
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	W96
@ 149   ----------------------------------------
	.byte	W96
@ 150   ----------------------------------------
	.byte	W96
@ 151   ----------------------------------------
	.byte	W96
@ 152   ----------------------------------------
	.byte	W96
@ 153   ----------------------------------------
	.byte	W96
@ 154   ----------------------------------------
	.byte	W96
@ 155   ----------------------------------------
	.byte	W96
@ 156   ----------------------------------------
	.byte	W96
@ 157   ----------------------------------------
	.byte	W96
@ 158   ----------------------------------------
	.byte	W96
@ 159   ----------------------------------------
	.byte	W96
@ 160   ----------------------------------------
	.byte	W96
@ 161   ----------------------------------------
	.byte	W96
@ 162   ----------------------------------------
	.byte	W96
@ 163   ----------------------------------------
	.byte	W96
@ 164   ----------------------------------------
	.byte	W96
@ 165   ----------------------------------------
	.byte	W96
@ 166   ----------------------------------------
	.byte	W96
@ 167   ----------------------------------------
	.byte	W96
@ 168   ----------------------------------------
	.byte	W48
	.byte		VOL   , 80*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte	W36
	.byte		BEND  , c_v-3
	.byte		N08   , Dn4 , v084
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W09
@ 169   ----------------------------------------
	.byte		N20   , Gn4 
	.byte	W24
	.byte		BEND  , c_v-4
	.byte		N32   , Gn4 , v084, gtp3
	.byte	W02
	.byte		BEND  , c_v-3
	.byte	W02
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W01
	.byte		MOD   , 60
	.byte		BEND  , c_v+0
	.byte	W28
	.byte	W01
	.byte		MOD   , 20
	.byte		N12   
	.byte	W12
	.byte		        As4 , v072
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 170   ----------------------------------------
	.byte		BEND  , c_v-3
	.byte		N60   , Gn4 , v072, gtp2
	.byte	W03
	.byte		BEND  , c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W03
	.byte		MOD   , 60
	.byte		BEND  , c_v+0
	.byte	W88
@ 171   ----------------------------------------
	.byte	W12
	.byte		MOD   , 20
	.byte		BEND  , c_v-3
	.byte		N08   , Dn4 , v084
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W10
	.byte		N08   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N40   , Dn4 
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W40
@ 172   ----------------------------------------
	.byte		        c_v-3
	.byte		N08   
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W06
	.byte		N08   , Cn4 , v064
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N11   , As3 
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N44   , Gn3 , v072
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W02
	.byte		MOD   , 80
	.byte	W42
@ 173   ----------------------------------------
	.byte		        20
	.byte	W96
@ 174   ----------------------------------------
	.byte		BEND  , c_v-5
	.byte		N08   , As3 , v084
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v-3
	.byte		N08   , Cn4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v-3
	.byte		N64   , Dn4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W22
	.byte		MOD   , 80
	.byte	W48
@ 175   ----------------------------------------
	.byte		        20
	.byte		BEND  , c_v-3
	.byte		N08   , Gn3 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N08   , As3 
	.byte	W12
	.byte		N28   , Gn3 
	.byte	W36
	.byte		BEND  , c_v-3
	.byte		N08   , As3 , v100
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W32
	.byte	W02
@ 176   ----------------------------------------
	.byte	W48
	.byte		        c_v-5
	.byte		N08   , Gn4 , v084
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W09
	.byte		N08   , As4 
	.byte	W12
	.byte		BEND  , c_v-4
	.byte		N40   , Gn4 
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W20
@ 177   ----------------------------------------
	.byte	W96
@ 178   ----------------------------------------
	.byte	W96
@ 179   ----------------------------------------
	.byte	W36
	.byte		        c_v-3
	.byte		N08   , Dn4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v-3
	.byte		N08   , As4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W10
	.byte		N08   , An4 
	.byte	W12
	.byte		MOD   , 60
	.byte		N60   , Gn4 , v084, gtp2
	.byte	W24
@ 180   ----------------------------------------
	.byte	W48
	.byte		MOD   , 20
	.byte		N16   
	.byte	W24
	.byte		BEND  , c_v-5
	.byte		N44   , Dn5 
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		MOD   , 40
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W16
@ 181   ----------------------------------------
	.byte	W24
	.byte		MOD   , 20
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		N12   , Gn4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W07
	.byte		N12   , As4 
	.byte	W12
	.byte		BEND  , c_v-4
	.byte		N06   , Dn5 
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N09   , Cn5 , v072
	.byte	W09
	.byte		        As4 
	.byte	W09
@ 182   ----------------------------------------
	.byte		MOD   , 60
	.byte		N40   , Cn5 , v084
	.byte	W48
	.byte		MOD   , 20
	.byte		BEND  , c_v-4
	.byte		N08   
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W10
	.byte		N08   , As4 , v072
	.byte	W12
	.byte		BEND  , c_v-3
	.byte		N08   , Cn5 , v084
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W14
	.byte		        c_v-3
	.byte		N12   
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W06
@ 183   ----------------------------------------
	.byte	W08
	.byte		N06   
	.byte	W08
	.byte		        As4 
	.byte	W08
	.byte		BEND  , c_v-5
	.byte		N84   , Dn5 , v084, gtp2
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W20
	.byte		MOD   , 80
	.byte	W48
@ 184   ----------------------------------------
	.byte	W24
	.byte		        20
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		N11   , Gn4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 185   ----------------------------------------
	.byte		BEND  , c_v-5
	.byte		N40   , As3 
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W42
	.byte		N08   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		BEND  , c_v-3
	.byte		N60   , As3 , v084, gtp2
	.byte	W02
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W20
@ 186   ----------------------------------------
	.byte	W48
	.byte		N11   , Cn5 
	.byte	W12
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        An4 , v072
	.byte	W12
@ 187   ----------------------------------------
	.byte		        Fn4 
	.byte	W12
	.byte		        Cn4 , v060
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N88   , Dn4 , v084
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W68
@ 188   ----------------------------------------
	.byte	W36
	.byte		        c_v-5
	.byte		N08   
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W08
	.byte		N08   , As4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		BEND  , c_v-7
	.byte		N60   , Gn4 , v084, gtp2
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W20
@ 189   ----------------------------------------
	.byte	W96
@ 190   ----------------------------------------
	.byte		        c_v-3
	.byte		N08   , As4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N08   , Cn5 
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N68   , Dn5 , v084, gtp1
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W20
	.byte		MOD   , 40
	.byte	W48
@ 191   ----------------------------------------
	.byte		        20
	.byte		VOL   , 127*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte	W48
	.byte		BEND  , c_v-7
	.byte		N12   , Gn5 
	.byte	W01
	.byte		BEND  , c_v-6
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W08
	.byte		N11   
	.byte	W12
	.byte		MOD   , 60
	.byte		N36   
	.byte	W24
@ 192   ----------------------------------------
	.byte	W48
	.byte		MOD   , 20
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		N11   
	.byte	W02
	.byte		BEND  , c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N12   
	.byte	W12
@ 193   ----------------------------------------
	.byte		        As5 , v072
	.byte	W12
	.byte		        Gn5 , v060
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N60   , Cn6 , v084
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W18
	.byte		MOD   , 100
	.byte	W48
@ 194   ----------------------------------------
	.byte		        20
	.byte		VOL   , 127*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte	W24
	.byte		BEND  , c_v-7
	.byte		N12   
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W07
	.byte		N12   , As5 
	.byte	W12
	.byte		        Gn5 , v072
	.byte	W12
	.byte		        As5 , v060
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N36   , Gn5 , v084
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W20
@ 195   ----------------------------------------
	.byte	W72
	.byte		VOL   , 80*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		BEND  , c_v-3
	.byte		N12   , Gn4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte		N11   , As4 
	.byte	W12
@ 196   ----------------------------------------
	.byte		BEND  , c_v-5
	.byte		N20   , Cn5 
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W20
	.byte		        c_v-5
	.byte		N60   , Ds5 
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W16
	.byte		MOD   , 80
	.byte	W48
@ 197   ----------------------------------------
	.byte		        20
	.byte		BEND  , c_v-5
	.byte		N60   , Ds5 , v084, gtp2
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W66
	.byte		        c_v-5
	.byte		N68   , Fs4 , v084, gtp2
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v+0
	.byte	W16
@ 198   ----------------------------------------
	.byte	W48
	.byte		        c_v-4
	.byte		N12   
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W10
	.byte		N06   , Gn4 , v060
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N12   , En4 
	.byte	W12
	.byte		N11   , Fs4 
	.byte	W12
@ 199   ----------------------------------------
	.byte		        Gn4 
	.byte	W12
	.byte		N12   , An4 
	.byte	W12
	.byte		BEND  , c_v-5
	.byte		N68   , Gn4 , v084, gtp2
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W66
@ 200   ----------------------------------------
	.byte	W36
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N84   , Dn4 , v084, gtp2
	.byte	W24
@ 201   ----------------------------------------
	.byte		MOD   , 80
	.byte	W48
	.byte		        20
	.byte	W48
@ 202   ----------------------------------------
	.byte		BEND  , c_v-4
	.byte		N08   
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W04
	.byte		N08   , Cn4 , v060
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		BEND  , c_v-5
	.byte		N11   , Cn4 , v084
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N11   , As3 
	.byte	W12
	.byte		N18   , Gn3 
	.byte	W24
	.byte		        As3 
	.byte	W24
@ 203   ----------------------------------------
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N22   , As2 
	.byte	W24
	.byte		BEND  , c_v-5
	.byte		TIE   , Dn3 
	.byte	W03
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		        c_v-3
	.byte	W03
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v+0
	.byte	W12
@ 204   ----------------------------------------
	.byte	W12
	.byte		MOD   , 80
	.byte	W36
	.byte		        20
	.byte	W24
	.byte	W02
	.byte		EOT   
	.byte	W22
@ 205   ----------------------------------------
	.byte	W96
@ 206   ----------------------------------------
	.byte	W72
	.byte		VOL   , 60*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		N92   , Gn2 , v040, gtp2
	.byte	W24
@ 207   ----------------------------------------
	.byte	W96
@ 208   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_208:
	.byte	W60
	.byte		N11   , Gn3 , v072
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N10   , Gn3 
	.byte	W12
	.byte	PEND
@ 209   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_209:
	.byte		BEND  , c_v-3
	.byte		N23   , Cn4 , v080
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W11
	.byte		        c_v+2
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+7
	.byte		        c_v+10
	.byte	W10
	.byte		        c_v+0
	.byte		N44   , Cn4 , v060, gtp3
	.byte	W48
	.byte		TIE   , Fs3 , v072
	.byte	W24
	.byte	PEND
@ 210   ----------------------------------------
	.byte	W96
@ 211   ----------------------------------------
	.byte	W23
	.byte		EOT   
	.byte	W72
	.byte	W01
@ 212   ----------------------------------------
	.byte	W96
@ 213   ----------------------------------------
	.byte	W96
@ 214   ----------------------------------------
	.byte	W96
@ 215   ----------------------------------------
	.byte	W96
@ 216   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_216:
	.byte	W72
	.byte		BEND  , c_v+0
	.byte		N23   , Cn3 , v080
	.byte	W13
	.byte		BEND  , c_v+1
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+8
	.byte		        c_v+10
	.byte	W09
	.byte	PEND
@ 217   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_217:
	.byte		BEND  , c_v+0
	.byte		N23   , Cn3 , v052
	.byte	W24
	.byte		N48   , Fn2 , v072
	.byte	W48
	.byte		N04   , Fn2 , v060
	.byte	W24
	.byte	PEND
@ 218   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_218:
	.byte		N22   , Fn2 , v072
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		N22   , Fs2 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W44
	.byte	W01
	.byte		N92   , Gn2 , v072, gtp2
	.byte	W24
	.byte	PEND
@ 219   ----------------------------------------
	.byte	W96
@ 220   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_220:
	.byte	W48
	.byte		BEND  , c_v+0
	.byte		N23   , Fn4 , v092
	.byte	W13
	.byte		BEND  , c_v+1
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+8
	.byte		        c_v+10
	.byte	W09
	.byte		        c_v+0
	.byte		N22   , Fn4 , v072
	.byte	W24
	.byte	PEND
@ 221   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_221:
	.byte		BEND  , c_v-4
	.byte		N48   , Dn4 , v092
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W68
	.byte	W01
	.byte		TIE   , Cs4 , v080
	.byte	W24
	.byte	PEND
@ 222   ----------------------------------------
	.byte	W96
@ 223   ----------------------------------------
	.byte	W22
	.byte		EOT   
	.byte	W72
	.byte	W02
@ 224   ----------------------------------------
	.byte	W96
@ 225   ----------------------------------------
	.byte	W96
@ 226   ----------------------------------------
	.byte	W96
@ 227   ----------------------------------------
	.byte	W96
@ 228   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_228:
	.byte	W24
	.byte		BEND  , c_v-1
	.byte		N11   , Fn5 , v092
	.byte	W01
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v-3
	.byte		N11   
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v-2
	.byte		N13   
	.byte	W01
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W22
	.byte		        c_v-2
	.byte		N13   , Dn5 
	.byte	W01
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W22
	.byte	PEND
@ 229   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_229:
	.byte		BEND  , c_v-2
	.byte		N13   , Cn5 , v092
	.byte	W01
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W22
	.byte		TIE   , Fn4 , v072
	.byte	W72
	.byte	PEND
@ 230   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		N16   , Gn3 , v076
	.byte	W24
@ 231   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_231:
	.byte		N16   , As3 , v072
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		BEND  , c_v+0
	.byte		N24   
	.byte	W09
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		        c_v+3
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+6
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+10
	.byte	W12
	.byte		        c_v+0
	.byte		        c_v+8
	.byte		N44   , Cn4 , v060, gtp2
	.byte	W01
	.byte		BEND  , c_v+7
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+4
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+2
	.byte		        c_v+0
	.byte	W21
	.byte	PEND
@ 232   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_232:
	.byte	W24
	.byte		N16   , Fs3 , v076
	.byte	W24
	.byte		        As3 , v072
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte	PEND
@ 233   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_233:
	.byte		BEND  , c_v+0
	.byte		N24   , Cn4 , v076
	.byte	W11
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+10
	.byte	W11
	.byte		        c_v+10
	.byte		N44   , Cn4 , v060, gtp2
	.byte	W01
	.byte		BEND  , c_v+8
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+3
	.byte		        c_v+0
	.byte	W44
	.byte	W02
	.byte		N22   , Fn3 , v072
	.byte	W24
	.byte	PEND
@ 234   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_234:
	.byte		N22   , As3 , v072
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		BEND  , c_v+0
	.byte		N23   
	.byte	W13
	.byte		BEND  , c_v+2
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+7
	.byte		        c_v+10
	.byte	W10
	.byte		        c_v-5
	.byte		N24   , Dn4 , v052
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W21
	.byte	PEND
@ 235   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_235:
	.byte		N24   , Cn4 , v060
	.byte	W24
	.byte		TIE   , En3 , v072
	.byte	W72
	.byte	PEND
@ 236   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N44   , Ds3 , v072, gtp2
	.byte	W24
@ 237   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_237:
	.byte	W24
	.byte		BEND  , c_v+0
	.byte		N23   , Fn3 , v072
	.byte	W13
	.byte		BEND  , c_v+1
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+8
	.byte		        c_v+10
	.byte	W09
	.byte		        c_v+0
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Cn4 , v060
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N22   , As3 , v052
	.byte		N22   , Ds4 
	.byte	W24
	.byte	PEND
@ 238   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_238:
	.byte	W24
	.byte		N22   , En3 , v076
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte	PEND
@ 239   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_239:
	.byte		N22   , Gn4 , v076
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        As3 
	.byte	W48
	.byte	PEND
@ 240   ----------------------------------------
	.byte	W96
@ 241   ----------------------------------------
	.byte	W96
@ 242   ----------------------------------------
	.byte	W72
	.byte		BEND  , c_v-10
	.byte		TIE   , Dn4 , v108
	.byte	W01
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W16
@ 243   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte	W02
@ 244   ----------------------------------------
	.byte		N08   , Dn4 , v088
	.byte	W08
	.byte		N07   , Cn4 , v096
	.byte	W08
	.byte		N06   , As3 , v108
	.byte	W08
	.byte		BEND  , c_v-5
	.byte		TIE   , Dn4 
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W19
	.byte		MOD   , 80
	.byte	W48
@ 245   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		MOD   , 20
	.byte		BEND  , c_v-5
	.byte		N48   , Cs4 , v096
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W18
@ 246   ----------------------------------------
	.byte	W24
	.byte		N22   , Cn4 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
@ 247   ----------------------------------------
	.byte		        Cs4 
	.byte	W24
	.byte		BEND  , c_v-5
	.byte		N68   , Dn4 , v096, gtp2
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W68
	.byte	W01
@ 248   ----------------------------------------
	.byte		N22   
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		BEND  , c_v-5
	.byte		N68   , Gs4 , v096, gtp2
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W18
@ 249   ----------------------------------------
	.byte		MOD   , 80
	.byte	W48
	.byte		        20
	.byte		N68   , Gn4 , v096, gtp2
	.byte	W24
	.byte		MOD   , 80
	.byte	W24
@ 250   ----------------------------------------
	.byte	W24
	.byte		        20
	.byte		BEND  , c_v-5
	.byte		N92   , Ds4 , v096, gtp2
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W18
	.byte		MOD   , 80
	.byte	W48
@ 251   ----------------------------------------
	.byte		        20
	.byte		N68   , Dn4 , v096, gtp2
	.byte	W24
	.byte		MOD   , 80
	.byte	W48
	.byte		        20
	.byte		BEND  , c_v-6
	.byte		N22   , Fn4 
	.byte	W01
	.byte		BEND  , c_v-5
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W21
@ 252   ----------------------------------------
	.byte		N12   , Ds4 , v080
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N68   , Cn4 , v096, gtp2
	.byte	W72
@ 253   ----------------------------------------
	.byte		N11   , Gs2 , v088
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N68   , Fn2 , v088, gtp3
	.byte	W72
@ 254   ----------------------------------------
	.byte		N22   
	.byte	W24
	.byte		        Fs2 
	.byte	W48
	.byte		VOL   , 60*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		N92   , Gn2 , v040, gtp2
	.byte	W24
@ 255   ----------------------------------------
	.byte	W96
@ 256   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_208
@ 257   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_209
@ 258   ----------------------------------------
	.byte	W96
@ 259   ----------------------------------------
	.byte	W23
	.byte		EOT   , Fs3 
	.byte	W72
	.byte	W01
@ 260   ----------------------------------------
	.byte	W96
@ 261   ----------------------------------------
	.byte	W96
@ 262   ----------------------------------------
	.byte	W96
@ 263   ----------------------------------------
	.byte	W96
@ 264   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_216
@ 265   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_217
@ 266   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_218
@ 267   ----------------------------------------
	.byte	W96
@ 268   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_220
@ 269   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_221
@ 270   ----------------------------------------
	.byte	W96
@ 271   ----------------------------------------
	.byte	W22
	.byte		EOT   , Cs4 
	.byte	W72
	.byte	W02
@ 272   ----------------------------------------
	.byte	W96
@ 273   ----------------------------------------
	.byte	W96
@ 274   ----------------------------------------
	.byte	W96
@ 275   ----------------------------------------
	.byte	W96
@ 276   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_228
@ 277   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_229
@ 278   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		EOT   , Fn4 
	.byte	W02
	.byte		N16   , Gn3 , v076
	.byte	W24
@ 279   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_231
@ 280   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_232
@ 281   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_233
@ 282   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_234
@ 283   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_235
@ 284   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		EOT   , En3 
	.byte	W02
	.byte		N11   , Cn3 , v072
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N44   , Ds3 , v072, gtp2
	.byte	W24
@ 285   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_237
@ 286   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_238
@ 287   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_239
@ 288   ----------------------------------------
	.byte	W96
@ 289   ----------------------------------------
	.byte	W96
@ 290   ----------------------------------------
	.byte	W96
@ 291   ----------------------------------------
	.byte	W96
@ 292   ----------------------------------------
	.byte	W96
@ 293   ----------------------------------------
	.byte		VOICE , 25
	.byte		VOL   , 75*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		PAN   , c_v+46
	.byte		N20   , As3 , v096
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		TIE   , En4 
	.byte	W24
@ 294   ----------------------------------------
	.byte	W96
@ 295   ----------------------------------------
	.byte	W22
	.byte		EOT   
	.byte	W72
	.byte	W02
@ 296   ----------------------------------------
	.byte	W96
@ 297   ----------------------------------------
	.byte	W96
@ 298   ----------------------------------------
	.byte	W96
@ 299   ----------------------------------------
	.byte		MOD   , 30
	.byte		N22   , As3 , v092
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		N30   , En4 , v072
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 300   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_300:
	.byte		N30   , Gn3 , v072
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N66   , Gn3 
	.byte	W12
	.byte		N30   , Cn5 
	.byte	W12
	.byte	PEND
@ 301   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_301:
	.byte		N30   , Fn4 , v072
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N66   , Gn3 
	.byte	W12
	.byte	PEND
@ 302   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_302:
	.byte		N30   , Dn5 , v072
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		TIE   , En4 
	.byte	W12
	.byte		N30   , Fn4 
	.byte	W12
	.byte	PEND
@ 303   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_300
@ 304   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_304:
	.byte		N30   , Fn4 , v072
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W06
	.byte	PEND
	.byte		EOT   , En4 
	.byte	W06
	.byte		N30   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N66   , Gn3 
	.byte	W12
@ 305   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_305:
	.byte		N30   , Dn5 , v072
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		TIE   , En4 
	.byte	W12
	.byte		N30   , Fn4 
	.byte	W12
	.byte	PEND
@ 306   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_300
@ 307   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_304
	.byte		EOT   , En4 
	.byte	W06
	.byte		N30   , Cn5 , v072
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N66   , Gn3 
	.byte	W12
@ 308   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_308:
	.byte		N30   , Dn5 , v072
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		N30   , En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte	PEND
@ 309   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_300
@ 310   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_301
@ 311   ----------------------------------------
mus_shine_on_you_crazy_diamond_6_311:
	.byte		N30   , Dn5 , v072
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte	PEND
@ 312   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_300
@ 313   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_301
@ 314   ----------------------------------------
	.byte		N30   , Dn5 , v072
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		N12   , As4 
	.byte	W12
	.byte		N24   
	.byte	W12
@ 315   ----------------------------------------
	.byte	W12
	.byte		N30   
	.byte	W12
	.byte		        Gn4 
	.byte	W24
	.byte		N12   , An4 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , As4 
	.byte	W12
@ 316   ----------------------------------------
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , As4 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , As4 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W24
@ 317   ----------------------------------------
	.byte		N12   , An4 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , As4 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , An4 
	.byte	W12
	.byte		N24   
	.byte	W12
@ 318   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , As4 
	.byte	W12
@ 319   ----------------------------------------
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , As4 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , An4 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
@ 320   ----------------------------------------
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , An4 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N30   , En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 321   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_300
@ 322   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_301
@ 323   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_311
@ 324   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_300
@ 325   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_301
@ 326   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_302
@ 327   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_300
@ 328   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_304
	.byte		EOT   , En4 
	.byte	W06
	.byte		N30   , Cn5 , v072
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N66   , Gn3 
	.byte	W12
@ 329   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_305
@ 330   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_300
@ 331   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_304
	.byte		EOT   , En4 
	.byte	W06
	.byte		N30   , Cn5 , v072
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N66   , Gn3 
	.byte	W12
@ 332   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_308
@ 333   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_300
@ 334   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_301
@ 335   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_311
@ 336   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_300
@ 337   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_301
@ 338   ----------------------------------------
	.byte		N30   , Dn5 , v072
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		N30   , As4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 339   ----------------------------------------
	.byte		        Cs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
@ 340   ----------------------------------------
	.byte		        Gn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 341   ----------------------------------------
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
@ 342   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 343   ----------------------------------------
	.byte		        Fs4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 344   ----------------------------------------
	.byte		        Gs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 345   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_300
@ 346   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_6_301
@ 347   ----------------------------------------
	.byte		N30   , Dn5 , v072
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W32
	.byte	W01
	.byte	FINE

@**************** Track 7 (Midi-Chn.15) ****************@

mus_shine_on_you_crazy_diamond_7:
	.byte	KEYSH , mus_shine_on_you_crazy_diamond_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 51
	.byte		VOL   , 90*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		PAN   , c_v-34
	.byte		TIE   , Gn1 , v080
	.byte		TIE   , Gn3 
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W23
	.byte		EOT   
	.byte	W72
	.byte	W01
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
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte		TIE   , An1 
	.byte		TIE   , Fn3 
	.byte	W01
	.byte		EOT   , Gn1 
	.byte	W92
	.byte	W03
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
mus_shine_on_you_crazy_diamond_7_035:
	.byte		TIE   , Gn1 , v080
	.byte		TIE   , Ds3 
	.byte	W01
	.byte	PEND
	.byte		EOT   , An1 
	.byte		        Fn3 
	.byte	W92
	.byte	W03
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte		TIE   , Dn2 
	.byte		TIE   , Gn3 
	.byte	W01
	.byte		EOT   , Ds3 
	.byte	W92
	.byte	W03
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte		TIE   , An1 
	.byte		TIE   , Fn3 
	.byte	W01
	.byte		EOT   , Gn1 
	.byte		        Gn3 
	.byte	W92
	.byte	W03
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_7_035
	.byte		EOT   , An1 
	.byte		        Dn2 
	.byte		        Fn3 
	.byte	W92
	.byte	W03
@ 049   ----------------------------------------
	.byte		TIE   , An1 , v080
	.byte		TIE   , Fn3 
	.byte	W01
	.byte		EOT   , Gn1 
	.byte		        Ds3 
	.byte	W92
	.byte	W03
@ 050   ----------------------------------------
	.byte		TIE   , Gn1 
	.byte		TIE   , Gn3 
	.byte	W01
	.byte		EOT   , An1 
	.byte		        Fn3 
	.byte	W92
	.byte	W03
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W48
	.byte	W01
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		        Gn1 
	.byte		        Gn3 
	.byte	W24
	.byte	W02
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W72
	.byte		VOICE , 18
	.byte		VOL   , 80*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		PAN   , c_v+36
	.byte	W24
@ 087   ----------------------------------------
	.byte	W48
	.byte		TIE   , As3 , v100
	.byte		TIE   , Gn4 
	.byte	W48
@ 088   ----------------------------------------
	.byte	W88
	.byte		EOT   
	.byte	W08
@ 089   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W24
	.byte	W01
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
mus_shine_on_you_crazy_diamond_7_092:
	.byte	W72
	.byte		TIE   , As3 , v100
	.byte		TIE   , Gn4 
	.byte	W24
	.byte	PEND
@ 093   ----------------------------------------
	.byte	W48
	.byte		        En4 
	.byte	W48
@ 094   ----------------------------------------
	.byte	W88
	.byte		EOT   
	.byte	W08
@ 095   ----------------------------------------
	.byte		N68   , Cn4 , v100, gtp2
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte		EOT   , Gn4 
	.byte	W02
	.byte	W24
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_7_092
@ 099   ----------------------------------------
	.byte	W92
	.byte		EOT   , Gn4 
	.byte	W04
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W66
	.byte		        As3 
	.byte		EOT   
	.byte		EOT   
	.byte	W06
	.byte		TIE   , Gn3 , v100
	.byte		TIE   , En4 
	.byte	W24
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 104   ----------------------------------------
	.byte		N72   , Gn3 
	.byte		N72   , Fn4 
	.byte	W72
	.byte		EOT   , Gn3 
	.byte		TIE   
	.byte		TIE   , En4 
	.byte	W24
@ 105   ----------------------------------------
	.byte	W48
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W03
@ 106   ----------------------------------------
	.byte	W02
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W02
	.byte		EOT   , Gn3 
	.byte		        En4 
	.byte	W72
@ 107   ----------------------------------------
	.byte	W72
	.byte		N11   , Fn3 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		TIE   , Gn3 
	.byte		TIE   , Dn4 
	.byte	W12
@ 108   ----------------------------------------
	.byte	W96
@ 109   ----------------------------------------
	.byte	W96
@ 110   ----------------------------------------
	.byte	W96
@ 111   ----------------------------------------
	.byte	W80
	.byte		EOT   , Gn3 
	.byte	W16
@ 112   ----------------------------------------
	.byte	W96
@ 113   ----------------------------------------
	.byte	W66
	.byte		        Dn4 
	.byte	W06
	.byte		VOL   , 100*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		TIE   , As3 
	.byte		TIE   , Ds4 
	.byte	W24
@ 114   ----------------------------------------
	.byte	W96
@ 115   ----------------------------------------
	.byte		N22   , An3 
	.byte	W19
	.byte		EOT   , Ds4 
	.byte	W05
	.byte		TIE   , Gn3 , v092
	.byte		TIE   , Ds4 
	.byte	W72
@ 116   ----------------------------------------
	.byte	W48
	.byte		N23   , Ds3 , v076
	.byte	W18
	.byte		EOT   , As3 
	.byte		        Ds4 
	.byte	W01
	.byte		        Gn3 
	.byte	W28
	.byte	W01
@ 117   ----------------------------------------
	.byte	W96
@ 118   ----------------------------------------
	.byte	W96
@ 119   ----------------------------------------
	.byte	W72
	.byte		TIE   , Gn3 , v092
	.byte		TIE   , Dn4 
	.byte	W24
@ 120   ----------------------------------------
	.byte	W96
@ 121   ----------------------------------------
	.byte	W24
	.byte		EOT   , Gn3 
	.byte		TIE   , Fs3 
	.byte	W72
@ 122   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		TIE   , Fn3 
	.byte	W24
@ 123   ----------------------------------------
	.byte	W84
	.byte		EOT   , Dn4 
	.byte	W12
@ 124   ----------------------------------------
	.byte	W22
	.byte		        Fn3 
	.byte	W02
	.byte		TIE   , En3 
	.byte	W72
@ 125   ----------------------------------------
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W05
	.byte		EOT   
	.byte	W02
	.byte		N44   , Gn3 , v080, gtp3
	.byte	W24
@ 126   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N66   , Gn3 , v080, gtp1
	.byte	W48
@ 127   ----------------------------------------
	.byte	W24
	.byte		N68   , Fs3 , v080, gtp3
	.byte	W72
@ 128   ----------------------------------------
	.byte		N11   , An3 , v072
	.byte	W12
	.byte		N56   , Fs3 , v064, gtp3
	.byte	W84
@ 129   ----------------------------------------
	.byte	W96
@ 130   ----------------------------------------
	.byte	W96
@ 131   ----------------------------------------
	.byte	W96
@ 132   ----------------------------------------
	.byte	W96
@ 133   ----------------------------------------
	.byte	W96
@ 134   ----------------------------------------
	.byte	W96
@ 135   ----------------------------------------
	.byte	W96
@ 136   ----------------------------------------
	.byte	W96
@ 137   ----------------------------------------
	.byte	W96
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
	.byte	W96
@ 140   ----------------------------------------
	.byte	W96
@ 141   ----------------------------------------
	.byte	W96
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W96
@ 144   ----------------------------------------
	.byte	W96
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	W96
@ 149   ----------------------------------------
	.byte	W96
@ 150   ----------------------------------------
	.byte	W96
@ 151   ----------------------------------------
	.byte	W96
@ 152   ----------------------------------------
	.byte	W96
@ 153   ----------------------------------------
	.byte	W96
@ 154   ----------------------------------------
	.byte	W96
@ 155   ----------------------------------------
	.byte	W72
	.byte		TIE   , Gn3 
	.byte		TIE   , Ds4 
	.byte	W24
@ 156   ----------------------------------------
	.byte	W96
@ 157   ----------------------------------------
	.byte	W18
	.byte		EOT   , Gn3 
	.byte		        Ds4 
	.byte	W06
	.byte		TIE   , Fs3 
	.byte		TIE   , Dn4 
	.byte	W72
@ 158   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		EOT   , Fs3 
	.byte	W02
	.byte		        Dn4 
	.byte	W05
	.byte		TIE   , Gn3 
	.byte		TIE   , Ds4 
	.byte	W24
@ 159   ----------------------------------------
	.byte	W96
@ 160   ----------------------------------------
	.byte	W18
	.byte		EOT   , Gn3 
	.byte		        Ds4 
	.byte	W06
	.byte		TIE   , Fs3 
	.byte		TIE   , Dn4 
	.byte	W72
@ 161   ----------------------------------------
	.byte	W66
	.byte		EOT   , Fs3 
	.byte		        Dn4 
	.byte	W06
	.byte		TIE   , Gn3 
	.byte		N90   , Dn4 , v064, gtp1
	.byte	W24
@ 162   ----------------------------------------
	.byte	W96
@ 163   ----------------------------------------
	.byte	W18
	.byte		EOT   , Gn3 
	.byte	W06
	.byte		TIE   
	.byte		TIE   , Ds4 
	.byte	W72
@ 164   ----------------------------------------
	.byte	W66
	.byte		EOT   , Gn3 
	.byte		        Ds4 
	.byte	W06
	.byte		TIE   , Gn3 
	.byte		TIE   , Dn4 
	.byte	W24
@ 165   ----------------------------------------
	.byte	W96
@ 166   ----------------------------------------
	.byte	W17
	.byte		EOT   , Gn3 
	.byte	W01
	.byte		        Dn4 
	.byte	W06
	.byte		TIE   , An3 
	.byte		TIE   , Fn4 
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W02
@ 167   ----------------------------------------
	.byte	W05
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W04
	.byte	W24
@ 168   ----------------------------------------
	.byte	W96
@ 169   ----------------------------------------
	.byte	W18
	.byte		EOT   
	.byte	W01
	.byte		EOT   , An3 
	.byte	W76
	.byte	W01
@ 170   ----------------------------------------
	.byte	W96
@ 171   ----------------------------------------
	.byte	W96
@ 172   ----------------------------------------
	.byte	W96
@ 173   ----------------------------------------
	.byte	W96
@ 174   ----------------------------------------
	.byte	W96
@ 175   ----------------------------------------
	.byte	W96
@ 176   ----------------------------------------
	.byte	W96
@ 177   ----------------------------------------
	.byte	W96
@ 178   ----------------------------------------
	.byte	W96
@ 179   ----------------------------------------
	.byte	W96
@ 180   ----------------------------------------
	.byte	W96
@ 181   ----------------------------------------
	.byte	W96
@ 182   ----------------------------------------
	.byte	W96
@ 183   ----------------------------------------
	.byte	W96
@ 184   ----------------------------------------
	.byte	W96
@ 185   ----------------------------------------
	.byte	W96
@ 186   ----------------------------------------
	.byte	W96
@ 187   ----------------------------------------
	.byte	W96
@ 188   ----------------------------------------
	.byte	W96
@ 189   ----------------------------------------
	.byte	W96
@ 190   ----------------------------------------
	.byte	W96
@ 191   ----------------------------------------
	.byte	W96
@ 192   ----------------------------------------
	.byte	W96
@ 193   ----------------------------------------
	.byte	W24
	.byte		TIE   , Gn3 
	.byte		TIE   , Ds4 
	.byte	W72
@ 194   ----------------------------------------
	.byte	W66
	.byte		EOT   , Gn3 
	.byte		        Ds4 
	.byte	W06
	.byte		TIE   , Fs3 
	.byte		TIE   , Dn4 
	.byte	W24
@ 195   ----------------------------------------
	.byte	W96
@ 196   ----------------------------------------
	.byte	W18
	.byte		EOT   , Fs3 
	.byte	W01
	.byte		        Dn4 
	.byte	W05
	.byte		TIE   , Gn3 
	.byte		TIE   , Ds4 
	.byte	W72
@ 197   ----------------------------------------
	.byte	W66
	.byte		EOT   , Gn3 
	.byte		        Ds4 
	.byte	W06
	.byte		TIE   , Fs3 
	.byte		TIE   , Dn4 
	.byte	W24
@ 198   ----------------------------------------
	.byte	W96
@ 199   ----------------------------------------
	.byte	W18
	.byte		EOT   , Fs3 
	.byte		        Dn4 
	.byte	W06
	.byte		TIE   , Gn3 
	.byte		TIE   , Dn4 
	.byte	W72
@ 200   ----------------------------------------
	.byte	W66
	.byte		EOT   , Gn3 
	.byte		        Dn4 
	.byte	W06
	.byte		TIE   , Gn3 
	.byte		TIE   , Ds4 
	.byte	W24
@ 201   ----------------------------------------
	.byte	W96
@ 202   ----------------------------------------
	.byte	W18
	.byte		EOT   , Gn3 
	.byte		        Ds4 
	.byte	W06
	.byte		TIE   , Gn3 
	.byte		TIE   , Dn4 
	.byte	W72
@ 203   ----------------------------------------
	.byte	W66
	.byte		EOT   , Gn3 
	.byte		        Dn4 
	.byte	W06
	.byte		TIE   , An3 
	.byte		TIE   , Fn4 
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W03
@ 204   ----------------------------------------
	.byte	W04
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W01
@ 205   ----------------------------------------
	.byte	W06
	.byte	W07
	.byte	W07
	.byte	W04
	.byte	W72
@ 206   ----------------------------------------
	.byte	W66
	.byte		EOT   
	.byte	W01
	.byte		EOT   , An3 
	.byte	W28
	.byte	W01
@ 207   ----------------------------------------
	.byte	W96
@ 208   ----------------------------------------
	.byte	W96
@ 209   ----------------------------------------
	.byte	W96
@ 210   ----------------------------------------
	.byte	W96
@ 211   ----------------------------------------
	.byte	W96
@ 212   ----------------------------------------
mus_shine_on_you_crazy_diamond_7_212:
	.byte	W72
	.byte		N66   , Gn4 , v084
	.byte		N66   , Ds5 
	.byte	W24
	.byte	PEND
@ 213   ----------------------------------------
mus_shine_on_you_crazy_diamond_7_213:
	.byte	W48
	.byte		N66   , An4 , v084
	.byte		N66   , Fn5 , v084, gtp1
	.byte	W48
	.byte	PEND
@ 214   ----------------------------------------
mus_shine_on_you_crazy_diamond_7_214:
	.byte	W24
	.byte		N66   , Gn4 , v084
	.byte		N66   , Ds5 
	.byte	W72
	.byte	PEND
@ 215   ----------------------------------------
mus_shine_on_you_crazy_diamond_7_215:
	.byte		N66   , Fn4 , v084
	.byte		N66   , Dn5 
	.byte	W48
	.byte	W03
	.byte	W04
	.byte	W03
	.byte	W04
	.byte	W03
	.byte	W04
	.byte	W03
	.byte	W24
	.byte	PEND
@ 216   ----------------------------------------
	.byte	W96
@ 217   ----------------------------------------
	.byte	W96
@ 218   ----------------------------------------
	.byte	W96
@ 219   ----------------------------------------
	.byte	W96
@ 220   ----------------------------------------
	.byte	W96
@ 221   ----------------------------------------
	.byte	W96
@ 222   ----------------------------------------
	.byte	W96
@ 223   ----------------------------------------
	.byte	W96
@ 224   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_7_212
@ 225   ----------------------------------------
mus_shine_on_you_crazy_diamond_7_225:
	.byte	W48
	.byte		N66   , An4 , v084, gtp1
	.byte		N66   , Fn5 
	.byte	W48
	.byte	PEND
@ 226   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_7_214
@ 227   ----------------------------------------
mus_shine_on_you_crazy_diamond_7_227:
	.byte		N66   , Fn4 , v084
	.byte		N66   , Dn5 , v084, gtp1
	.byte	W48
	.byte	W03
	.byte	W04
	.byte	W03
	.byte	W04
	.byte	W03
	.byte	W04
	.byte	W03
	.byte	W24
	.byte	PEND
@ 228   ----------------------------------------
	.byte	W96
@ 229   ----------------------------------------
	.byte	W96
@ 230   ----------------------------------------
	.byte	W96
@ 231   ----------------------------------------
	.byte	W96
@ 232   ----------------------------------------
	.byte	W96
@ 233   ----------------------------------------
	.byte	W96
@ 234   ----------------------------------------
	.byte	W96
@ 235   ----------------------------------------
	.byte	W96
@ 236   ----------------------------------------
	.byte	W96
@ 237   ----------------------------------------
	.byte	W96
@ 238   ----------------------------------------
	.byte	W96
@ 239   ----------------------------------------
	.byte	W96
@ 240   ----------------------------------------
	.byte	W96
@ 241   ----------------------------------------
	.byte	W96
@ 242   ----------------------------------------
	.byte	W96
@ 243   ----------------------------------------
	.byte	W96
@ 244   ----------------------------------------
	.byte	W96
@ 245   ----------------------------------------
	.byte	W96
@ 246   ----------------------------------------
	.byte	W96
@ 247   ----------------------------------------
	.byte	W96
@ 248   ----------------------------------------
	.byte	W96
@ 249   ----------------------------------------
	.byte	W96
@ 250   ----------------------------------------
	.byte	W96
@ 251   ----------------------------------------
	.byte	W96
@ 252   ----------------------------------------
	.byte	W96
@ 253   ----------------------------------------
	.byte	W96
@ 254   ----------------------------------------
	.byte	W96
@ 255   ----------------------------------------
	.byte	W96
@ 256   ----------------------------------------
	.byte	W96
@ 257   ----------------------------------------
	.byte	W96
@ 258   ----------------------------------------
	.byte	W96
@ 259   ----------------------------------------
	.byte	W96
@ 260   ----------------------------------------
mus_shine_on_you_crazy_diamond_7_260:
	.byte	W72
	.byte		N66   , Gn4 , v084, gtp1
	.byte		N66   , Ds5 
	.byte	W24
	.byte	PEND
@ 261   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_7_213
@ 262   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_7_214
@ 263   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_7_215
@ 264   ----------------------------------------
	.byte	W96
@ 265   ----------------------------------------
	.byte	W96
@ 266   ----------------------------------------
	.byte	W96
@ 267   ----------------------------------------
	.byte	W96
@ 268   ----------------------------------------
	.byte	W96
@ 269   ----------------------------------------
	.byte	W96
@ 270   ----------------------------------------
	.byte	W96
@ 271   ----------------------------------------
	.byte	W96
@ 272   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_7_260
@ 273   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_7_225
@ 274   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_7_214
@ 275   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_7_227
@ 276   ----------------------------------------
	.byte	W96
@ 277   ----------------------------------------
	.byte	W96
@ 278   ----------------------------------------
	.byte	W96
@ 279   ----------------------------------------
	.byte	W96
@ 280   ----------------------------------------
	.byte	W96
@ 281   ----------------------------------------
	.byte	W96
@ 282   ----------------------------------------
	.byte	W96
@ 283   ----------------------------------------
	.byte	W96
@ 284   ----------------------------------------
	.byte	W96
@ 285   ----------------------------------------
	.byte	W96
@ 286   ----------------------------------------
	.byte	W96
@ 287   ----------------------------------------
	.byte	W96
@ 288   ----------------------------------------
	.byte	W96
@ 289   ----------------------------------------
	.byte	W96
@ 290   ----------------------------------------
	.byte	W96
@ 291   ----------------------------------------
	.byte	W96
@ 292   ----------------------------------------
	.byte	W96
@ 293   ----------------------------------------
	.byte	W96
@ 294   ----------------------------------------
	.byte	W96
@ 295   ----------------------------------------
	.byte	W96
@ 296   ----------------------------------------
	.byte	W96
@ 297   ----------------------------------------
	.byte	W96
@ 298   ----------------------------------------
	.byte	W96
@ 299   ----------------------------------------
	.byte	W96
@ 300   ----------------------------------------
	.byte	W96
@ 301   ----------------------------------------
	.byte	W96
@ 302   ----------------------------------------
	.byte	W96
@ 303   ----------------------------------------
	.byte	W96
@ 304   ----------------------------------------
	.byte	W96
@ 305   ----------------------------------------
	.byte	W96
@ 306   ----------------------------------------
	.byte	W96
@ 307   ----------------------------------------
	.byte	W96
@ 308   ----------------------------------------
	.byte	W96
@ 309   ----------------------------------------
	.byte	W96
@ 310   ----------------------------------------
	.byte	W96
@ 311   ----------------------------------------
	.byte	W96
@ 312   ----------------------------------------
	.byte	W96
@ 313   ----------------------------------------
	.byte	W96
@ 314   ----------------------------------------
	.byte	W96
@ 315   ----------------------------------------
	.byte	W96
@ 316   ----------------------------------------
	.byte	W96
@ 317   ----------------------------------------
	.byte	W96
@ 318   ----------------------------------------
	.byte	W96
@ 319   ----------------------------------------
	.byte	W96
@ 320   ----------------------------------------
	.byte	W96
@ 321   ----------------------------------------
	.byte	W96
@ 322   ----------------------------------------
	.byte	W96
@ 323   ----------------------------------------
	.byte	W96
@ 324   ----------------------------------------
	.byte	W96
@ 325   ----------------------------------------
	.byte	W96
@ 326   ----------------------------------------
	.byte	W96
@ 327   ----------------------------------------
	.byte	W96
@ 328   ----------------------------------------
	.byte	W96
@ 329   ----------------------------------------
	.byte	W96
@ 330   ----------------------------------------
	.byte	W96
@ 331   ----------------------------------------
	.byte	W96
@ 332   ----------------------------------------
	.byte	W96
@ 333   ----------------------------------------
	.byte	W96
@ 334   ----------------------------------------
	.byte	W96
@ 335   ----------------------------------------
	.byte	W96
@ 336   ----------------------------------------
	.byte	W96
@ 337   ----------------------------------------
	.byte	W96
@ 338   ----------------------------------------
	.byte	W96
@ 339   ----------------------------------------
	.byte	W96
@ 340   ----------------------------------------
	.byte	W96
@ 341   ----------------------------------------
	.byte	W96
@ 342   ----------------------------------------
	.byte	W96
@ 343   ----------------------------------------
	.byte	W96
@ 344   ----------------------------------------
	.byte	W96
@ 345   ----------------------------------------
	.byte	W96
@ 346   ----------------------------------------
	.byte	W96
@ 347   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte	FINE

@**************** Track 8 (Midi-Chn.10) ****************@

mus_shine_on_you_crazy_diamond_8:
	.byte		VOL   , 127*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte	KEYSH , mus_shine_on_you_crazy_diamond_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
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
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W72
	.byte		N06   , En1 , v072
	.byte		N05   , Bn1 
	.byte	W12
	.byte		N06   , En1 , v032
	.byte		N06   , Bn1 
	.byte	W12
@ 063   ----------------------------------------
	.byte		        En1 , v036
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        En1 , v040
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        En1 , v044
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        En1 , v048
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        En1 , v052
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        En1 , v056
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        En1 , v060
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        En1 , v064
	.byte		N06   , Bn1 
	.byte	W12
@ 064   ----------------------------------------
	.byte		        En1 
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        En1 , v068
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        En1 , v072
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        En1 , v076
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        En1 , v080
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        En1 , v084
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        En1 , v088
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        En1 , v092
	.byte		N06   , Bn1 
	.byte	W12
@ 065   ----------------------------------------
	.byte		        En1 
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        En1 
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        En1 
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        En1 
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        Ds1 , v127
	.byte		N06   , En1 
	.byte	W24
	.byte		VOL   , 90*mus_shine_on_you_crazy_diamond_mvl/mxv
	.byte		N06   , Cn1 , v092
	.byte		N05   , Cs2 , v120
	.byte		N05   , Ds2 , v072
	.byte	W24
@ 066   ----------------------------------------
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Cn1 , v092
	.byte	W12
@ 067   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_067:
	.byte		N06   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte	PEND
@ 068   ----------------------------------------
	.byte		N05   , Cn2 , v112
	.byte	W08
	.byte		N06   
	.byte	W08
	.byte		        Cn2 , v100
	.byte	W08
	.byte		N05   , Cn2 , v112
	.byte	W08
	.byte		N06   
	.byte	W08
	.byte		N06   
	.byte	W08
	.byte		N05   , Cn2 , v100
	.byte	W08
	.byte		N06   
	.byte	W08
	.byte		        Cn2 , v112
	.byte	W08
	.byte		N05   , Cn1 , v092
	.byte		N06   , Cs2 , v100
	.byte	W24
@ 069   ----------------------------------------
	.byte		        Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 
	.byte	W24
	.byte		        Ds2 , v080
	.byte	W12
	.byte		        Cn1 , v092
	.byte	W12
@ 070   ----------------------------------------
	.byte		N06   
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Cs2 , v112
	.byte	W72
@ 071   ----------------------------------------
	.byte		N05   , Bn1 , v092
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		        Bn1 
	.byte	W24
	.byte		N06   , Cn1 
	.byte		N05   , Cs2 
	.byte	W24
@ 072   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_072:
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Cn1 , v092
	.byte	W12
	.byte	PEND
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 074   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_074:
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Cn1 , v092
	.byte	W12
	.byte		N06   
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte	PEND
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 076   ----------------------------------------
	.byte		N06   , Cn1 , v092
	.byte		N05   , Ds2 , v080
	.byte	W24
	.byte		N06   , Cn1 , v092
	.byte		N06   , Ds2 
	.byte	W24
	.byte		        Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
@ 077   ----------------------------------------
	.byte		N05   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N06   , Cn1 , v092
	.byte	W12
	.byte		N05   
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N05   , Cs2 
	.byte	W24
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 079   ----------------------------------------
	.byte		N06   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Cs2 , v100
	.byte	W24
	.byte		        Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
@ 080   ----------------------------------------
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Cn1 , v092
	.byte	W12
	.byte		N05   
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N05   , Cs2 , v080
	.byte	W24
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 082   ----------------------------------------
	.byte		N06   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Cs2 
	.byte	W72
@ 083   ----------------------------------------
	.byte		N05   , Bn1 , v112
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		        Bn1 
	.byte	W24
	.byte		N06   , Cn1 , v092
	.byte		N05   , Cs2 , v100
	.byte	W24
@ 084   ----------------------------------------
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N07   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Cn1 , v092
	.byte	W12
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 086   ----------------------------------------
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 089   ----------------------------------------
	.byte		N05   , Dn1 , v092
	.byte		N06   , Cs2 , v100
	.byte	W24
	.byte		N05   , Dn2 , v080
	.byte	W24
	.byte		N06   , Cn1 , v092
	.byte		N06   , Bn1 
	.byte	W24
	.byte		N05   , Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 090   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_090:
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N05   , Cn1 , v092
	.byte	W12
	.byte	PEND
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 092   ----------------------------------------
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 095   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_095:
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte	PEND
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_090
@ 097   ----------------------------------------
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N05   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
@ 098   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_098:
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte	W12
	.byte		N05   , Cn1 
	.byte		N05   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte	PEND
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 101   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_101:
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte	PEND
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_098
@ 105   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_105:
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Ds2 , v092
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte	PEND
@ 106   ----------------------------------------
	.byte		N06   
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cs2 , v092
	.byte		N05   , Ds2 , v080
	.byte	W72
@ 107   ----------------------------------------
	.byte		        Dn2 , v092
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N05   , Gn1 
	.byte	W24
	.byte		N06   , Cn1 
	.byte		N05   , Cs2 
	.byte		N05   , Ds2 , v080
	.byte	W24
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_090
@ 109   ----------------------------------------
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Ds2 , v092
	.byte	W24
@ 110   ----------------------------------------
	.byte		        Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N05   , Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 112   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_112:
	.byte		N06   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte	PEND
@ 113   ----------------------------------------
	.byte		        Dn1 , v092
	.byte		N05   , Fs1 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		N06   , Cn1 
	.byte		N05   , Bn1 
	.byte	W24
	.byte		        Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_112
@ 116   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_116:
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte	PEND
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 118   ----------------------------------------
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
@ 119   ----------------------------------------
	.byte		        Cn1 , v092
	.byte		N06   , Dn1 
	.byte		N06   , Fs1 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		        Cn1 
	.byte		N05   , Bn1 
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N05   , Cn1 
	.byte		N05   , Ds2 , v080
	.byte	W24
@ 120   ----------------------------------------
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 
	.byte	W36
	.byte		        Bn1 
	.byte	W12
@ 121   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_121:
	.byte		N06   , Bn1 , v092
	.byte	W24
	.byte		        Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte	PEND
@ 122   ----------------------------------------
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 
	.byte	W36
	.byte		        Bn1 
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		        Cn1 
	.byte		N05   , Ds2 , v080
	.byte	W24
@ 123   ----------------------------------------
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 
	.byte	W36
	.byte		N05   , Bn1 
	.byte	W12
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_121
@ 125   ----------------------------------------
	.byte		N07   , Dn1 , v092
	.byte		N06   , Fs1 
	.byte	W24
	.byte		        Bn1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N05   , Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_105
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_112
@ 128   ----------------------------------------
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 
	.byte	W24
	.byte		        Bn1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N05   , Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 129   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_129:
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte	PEND
@ 130   ----------------------------------------
	.byte		        Bn1 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N06   , Cn1 
	.byte		N05   , Fs1 
	.byte	W72
@ 131   ----------------------------------------
	.byte	W72
	.byte		        Cn1 
	.byte	W24
@ 132   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_132:
	.byte	W48
	.byte		N06   , Dn1 , v092
	.byte	W36
	.byte		        Cn1 
	.byte	W12
	.byte	PEND
@ 133   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_133:
	.byte		N05   , Cn1 , v092
	.byte	W24
	.byte		N06   
	.byte	W72
	.byte	PEND
@ 134   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_134:
	.byte		N05   , Dn1 , v092
	.byte	W36
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte	PEND
@ 135   ----------------------------------------
	.byte	W48
	.byte		N06   , Dn1 
	.byte	W48
@ 136   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_136:
	.byte		N05   , Cn1 , v092
	.byte	W24
	.byte		N05   
	.byte	W72
	.byte	PEND
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_134
@ 138   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_138:
	.byte	W48
	.byte		N06   , Dn1 , v092
	.byte	W36
	.byte		N05   , Cn1 
	.byte	W12
	.byte	PEND
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_136
@ 140   ----------------------------------------
	.byte		N06   , Dn1 , v092
	.byte	W36
	.byte		        Cn1 
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N06   
	.byte	W24
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_138
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_133
@ 143   ----------------------------------------
	.byte		N06   , Dn1 , v092
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		N05   , Cn1 
	.byte		N06   , As1 
	.byte	W24
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_138
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_136
@ 146   ----------------------------------------
	.byte		N06   , Dn1 , v092
	.byte	W36
	.byte		        Cn1 
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N06   
	.byte		N05   , As1 
	.byte	W24
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_138
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_136
@ 149   ----------------------------------------
	.byte		N06   , Dn1 , v092
	.byte	W12
	.byte		        Bn1 
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N05   , Cn1 
	.byte		N06   , As1 
	.byte	W24
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_132
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_136
@ 152   ----------------------------------------
	.byte		N06   , Dn1 , v092
	.byte	W36
	.byte		        Cn1 
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte		N06   , As1 
	.byte	W24
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_132
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_136
@ 155   ----------------------------------------
	.byte		N05   , Dn1 , v092
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		        Cn1 
	.byte		N05   , As1 
	.byte	W24
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_132
@ 157   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_157:
	.byte		N06   , Cn1 , v092
	.byte	W24
	.byte		N05   
	.byte	W72
	.byte	PEND
@ 158   ----------------------------------------
	.byte		N06   , Dn1 
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W24
	.byte		N05   , Cn1 
	.byte		N06   , As1 
	.byte	W24
@ 159   ----------------------------------------
	.byte	W48
	.byte		        Dn1 
	.byte	W48
@ 160   ----------------------------------------
	.byte		N05   , Cn1 
	.byte	W24
	.byte		N05   
	.byte		N05   , As1 
	.byte	W72
@ 161   ----------------------------------------
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N05   , Cn1 
	.byte		N07   , As1 
	.byte	W24
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_132
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_157
@ 164   ----------------------------------------
	.byte		N06   , Dn1 , v092
	.byte	W24
	.byte		        Bn1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N05   , Gn1 
	.byte	W24
	.byte		        Cn1 
	.byte		N05   , As1 
	.byte	W24
@ 165   ----------------------------------------
	.byte	W48
	.byte		N06   , Dn1 
	.byte	W24
	.byte		        Bn1 
	.byte	W12
	.byte		N06   
	.byte	W12
@ 166   ----------------------------------------
	.byte		N05   , Dn1 
	.byte	W24
	.byte		N06   , Cn1 
	.byte		N05   , Cs2 
	.byte	W72
@ 167   ----------------------------------------
	.byte	W96
@ 168   ----------------------------------------
	.byte	W84
	.byte		N06   , Cn1 
	.byte		N06   , Gn1 
	.byte	W12
@ 169   ----------------------------------------
	.byte		        Cn1 
	.byte		N06   , Gn1 
	.byte	W24
	.byte		        Cn1 
	.byte		N05   , Ds2 , v080
	.byte	W24
	.byte		N06   , Ds2 , v084
	.byte	W24
	.byte		        Ds2 , v080
	.byte	W24
@ 170   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_170:
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N05   , Cn1 , v092
	.byte	W12
	.byte		N06   
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte	PEND
@ 171   ----------------------------------------
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N05   , Dn1 , v092
	.byte		N05   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Cn1 , v092
	.byte	W12
@ 172   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_112
@ 173   ----------------------------------------
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 174   ----------------------------------------
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N05   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Cn1 , v092
	.byte	W12
@ 175   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_112
@ 176   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_170
@ 177   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 178   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 179   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_074
@ 180   ----------------------------------------
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Bn1 , v092
	.byte	W24
@ 181   ----------------------------------------
	.byte		N05   , Dn2 
	.byte	W24
	.byte		        Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
@ 182   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_074
@ 183   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 184   ----------------------------------------
	.byte		N06   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Ds2 , v092
	.byte	W24
@ 185   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_170
@ 186   ----------------------------------------
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Bn1 
	.byte	W24
	.byte		N06   
	.byte	W12
@ 187   ----------------------------------------
	.byte		N05   
	.byte	W24
	.byte		        Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
@ 188   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_170
@ 189   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 190   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 191   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_074
@ 192   ----------------------------------------
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N05   , Dn1 , v092
	.byte		N05   , Fs1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W12
	.byte		N05   
	.byte	W12
@ 193   ----------------------------------------
	.byte		N06   
	.byte	W24
	.byte		N05   , Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
@ 194   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_194:
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Cn1 , v092
	.byte	W12
	.byte		N06   
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte	PEND
@ 195   ----------------------------------------
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N05   , Dn1 , v092
	.byte	W12
@ 196   ----------------------------------------
	.byte		N06   , Bn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N05   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 197   ----------------------------------------
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 198   ----------------------------------------
	.byte		N06   
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W12
	.byte		        Bn1 , v092
	.byte	W12
	.byte		        Ds2 , v080
	.byte	W12
	.byte		N05   , Bn1 , v092
	.byte	W12
@ 199   ----------------------------------------
	.byte		N06   , Gn1 
	.byte		N06   , Ds2 , v080
	.byte	W12
	.byte		N07   , Gn1 , v092
	.byte	W12
	.byte		N05   , Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
@ 200   ----------------------------------------
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N06   , Cn1 , v092
	.byte	W12
	.byte		N06   
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 201   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_201:
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Bn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W12
	.byte		        Bn1 , v092
	.byte	W12
	.byte	PEND
@ 202   ----------------------------------------
	.byte		        Gn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
@ 203   ----------------------------------------
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Bn1 , v092
	.byte		N06   , Ds2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Cs2 
	.byte	W24
@ 204   ----------------------------------------
	.byte	W48
	.byte		        Ds2 , v080
	.byte	W48
@ 205   ----------------------------------------
	.byte	W96
@ 206   ----------------------------------------
	.byte	W36
	.byte		        Cn1 , v092
	.byte		N06   , Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Gn1 
	.byte	W24
	.byte		        Cn1 
	.byte		N05   , Ds2 , v080
	.byte	W24
@ 207   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 208   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 209   ----------------------------------------
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N06   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte	W24
@ 210   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_105
@ 211   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_112
@ 212   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_212:
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v112
	.byte	W24
	.byte		N05   , Bn1 , v092
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		        Cn1 
	.byte		N06   , Ds2 , v112
	.byte	W24
	.byte	PEND
@ 213   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_213:
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N05   , Dn1 , v092
	.byte		N06   , Ds2 , v112
	.byte	W24
	.byte		        Ds2 , v080
	.byte	W12
	.byte		        Cn1 , v092
	.byte	W12
	.byte	PEND
@ 214   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_214:
	.byte		N06   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v112
	.byte	W24
	.byte		        Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte	PEND
@ 215   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_215:
	.byte		N05   , Dn1 , v092
	.byte		N06   , Ds2 , v112
	.byte	W24
	.byte		        Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v112
	.byte	W24
	.byte	PEND
@ 216   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_129
@ 217   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 218   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_218:
	.byte		N05   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N06   , Bn1 , v092
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N05   
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte	PEND
@ 219   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 220   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 221   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_221:
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N06   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte	PEND
@ 222   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_222:
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N07   , Cn1 , v092
	.byte	W12
	.byte	PEND
@ 223   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_112
@ 224   ----------------------------------------
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W12
	.byte		        Bn1 , v092
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N05   , Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 225   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_225:
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N05   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte	PEND
@ 226   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_112
@ 227   ----------------------------------------
	.byte		N05   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 228   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_201
@ 229   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_229:
	.byte		N06   , Gn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v112
	.byte	W72
	.byte	PEND
@ 230   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_230:
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v112
	.byte	W24
	.byte		        Bn1 , v092
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N05   , Cn1 
	.byte		N06   , Ds2 , v112
	.byte	W24
	.byte	PEND
@ 231   ----------------------------------------
	.byte		        Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v112
	.byte	W24
	.byte		        Bn1 , v092
	.byte		N06   , Ds2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 232   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_232:
	.byte		N06   , Bn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v112
	.byte	W24
	.byte		        Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte	PEND
@ 233   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_233:
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v112
	.byte	W24
	.byte		        Ds2 , v080
	.byte	W12
	.byte		        Bn1 , v092
	.byte	W12
	.byte		N06   
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v112
	.byte	W24
	.byte	PEND
@ 234   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_234:
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v112
	.byte	W48
	.byte	PEND
@ 235   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_235:
	.byte	W24
	.byte		N06   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W72
	.byte	PEND
@ 236   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_236:
	.byte	W48
	.byte		N06   , Bn1 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N05   , Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte	PEND
@ 237   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 238   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_112
@ 239   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_194
@ 240   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 241   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_112
@ 242   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_242:
	.byte		N05   , Dn1 , v092
	.byte		N06   , Ds2 , v112
	.byte	W24
	.byte		        Bn1 , v092
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N05   , Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte	PEND
@ 243   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_129
@ 244   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 245   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_116
@ 246   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_129
@ 247   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_112
@ 248   ----------------------------------------
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Bn1 , v092
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		        Cn1 
	.byte		N06   , Ds2 , v112
	.byte	W24
@ 249   ----------------------------------------
	.byte		        Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N05   , Dn1 , v092
	.byte		N06   , Ds2 , v112
	.byte	W24
	.byte		        Ds2 , v080
	.byte	W24
@ 250   ----------------------------------------
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N05   , Ds2 , v112
	.byte	W24
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
@ 251   ----------------------------------------
	.byte		N05   , Dn1 , v092
	.byte		N06   , Ds2 , v112
	.byte	W24
	.byte		        Ds2 , v080
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v112
	.byte	W24
@ 252   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_129
@ 253   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 254   ----------------------------------------
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v112
	.byte	W36
	.byte		        Bn1 , v092
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		        Cn1 
	.byte		N05   , Ds2 , v080
	.byte	W24
@ 255   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 256   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 257   ----------------------------------------
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N05   , Ds2 , v080
	.byte	W24
@ 258   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 259   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_112
@ 260   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_212
@ 261   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_213
@ 262   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_214
@ 263   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_215
@ 264   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_129
@ 265   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 266   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_218
@ 267   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 268   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 269   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_221
@ 270   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_222
@ 271   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_112
@ 272   ----------------------------------------
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W12
	.byte		        Bn1 , v092
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N05   , Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 273   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_225
@ 274   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_112
@ 275   ----------------------------------------
	.byte		N05   , Dn1 , v092
	.byte		N05   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 276   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_201
@ 277   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_229
@ 278   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_230
@ 279   ----------------------------------------
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N07   , Ds2 , v112
	.byte	W24
	.byte		N06   , Bn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W12
	.byte		        Bn1 , v092
	.byte	W12
@ 280   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_232
@ 281   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_233
@ 282   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_234
@ 283   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_235
@ 284   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_236
@ 285   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 286   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_112
@ 287   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_194
@ 288   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 289   ----------------------------------------
	.byte		N06   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Ds2 , v092
	.byte	W24
@ 290   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_242
@ 291   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 292   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 293   ----------------------------------------
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte	W24
	.byte		        Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 294   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 295   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 296   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_095
@ 297   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 298   ----------------------------------------
	.byte		N06   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N07   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
@ 299   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_299:
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte	PEND
@ 300   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 301   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 302   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_101
@ 303   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_090
@ 304   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 305   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_095
@ 306   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 307   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 308   ----------------------------------------
	.byte		N06   , Dn1 , v092
	.byte		N07   , Ds2 , v080
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		N06   , Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 309   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_105
@ 310   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 311   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_299
@ 312   ----------------------------------------
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Ds2 , v092
	.byte	W24
	.byte		        Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Cn1 , v092
	.byte	W12
@ 313   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 314   ----------------------------------------
	.byte		N06   , Dn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		N06   , Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 315   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 316   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_067
@ 317   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_101
@ 318   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_072
@ 319   ----------------------------------------
	.byte		N06   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte		N06   , Bn1 
	.byte		N06   , Ds2 , v112
	.byte	W24
	.byte		        Bn1 , v092
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
@ 320   ----------------------------------------
	.byte		        Gn1 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N06   , Cn1 
	.byte		N05   , Ds2 , v080
	.byte	W24
@ 321   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_321:
	.byte		N07   , Cn1 , v092
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W36
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N07   , Cn1 , v092
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W12
	.byte	PEND
@ 322   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_322:
	.byte	W24
	.byte		N06   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N07   , Cn1 , v092
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W36
	.byte	PEND
@ 323   ----------------------------------------
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte	W12
	.byte		        Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W36
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 324   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_324:
	.byte		N07   , Cn1 , v092
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W36
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte	W12
	.byte		        Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W12
	.byte	PEND
@ 325   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_325:
	.byte	W24
	.byte		N06   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte	W12
	.byte		        Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W36
	.byte	PEND
@ 326   ----------------------------------------
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N07   , Dn1 , v092
	.byte	W24
	.byte		N05   , Bn1 
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N06   , Cn1 
	.byte		N05   , Ds2 , v080
	.byte	W24
@ 327   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_321
@ 328   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_325
@ 329   ----------------------------------------
	.byte		N06   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Dn1 , v092
	.byte	W24
	.byte		N05   , Bn1 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N06   , Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 330   ----------------------------------------
	.byte		N07   , Cn1 , v092
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W36
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N07   , Cn1 , v092
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W12
@ 331   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_325
@ 332   ----------------------------------------
	.byte		N06   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Dn1 , v092
	.byte	W24
	.byte		N05   , Bn1 
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N06   , Cn1 
	.byte		N05   , Ds2 , v080
	.byte	W24
@ 333   ----------------------------------------
	.byte		N06   , Cn1 , v092
	.byte	W12
	.byte		        Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W36
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte	W12
	.byte		        Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W12
@ 334   ----------------------------------------
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N07   , Cn1 , v092
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W36
@ 335   ----------------------------------------
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N07   , Cn1 , v092
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W36
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 336   ----------------------------------------
mus_shine_on_you_crazy_diamond_8_336:
	.byte		N06   , Cn1 , v092
	.byte	W12
	.byte		        Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W36
	.byte		        Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N07   , Cn1 , v092
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W12
	.byte	PEND
@ 337   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_322
@ 338   ----------------------------------------
	.byte		N06   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		        Cn1 , v092
	.byte	W12
	.byte		        Dn1 
	.byte		N06   , Ds2 , v080
	.byte	W36
	.byte		        Cn1 , v092
	.byte		N05   , Ds2 , v080
	.byte	W24
@ 339   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_336
@ 340   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_322
@ 341   ----------------------------------------
	.byte		N06   , Cn1 , v092
	.byte		N06   , Ds2 , v080
	.byte	W24
	.byte		N07   , Dn1 , v092
	.byte	W24
	.byte		N06   , Bn1 
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N06   , Cn1 
	.byte		N06   , Ds2 , v080
	.byte	W24
@ 342   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_324
@ 343   ----------------------------------------
	.byte	PATT
	 .word	mus_shine_on_you_crazy_diamond_8_325
@ 344   ----------------------------------------
	.byte		N06   , Cn1 , v092
	.byte		N06   , Bn1 
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		        Cn1 
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N05   , Cn1 
	.byte		N05   , Ds2 , v080
	.byte	W24
@ 345   ----------------------------------------
	.byte	W96
@ 346   ----------------------------------------
	.byte	W96
@ 347   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte	FINE

@******************************************************@
	.align	2

mus_shine_on_you_crazy_diamond:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_shine_on_you_crazy_diamond_pri	@ Priority
	.byte	mus_shine_on_you_crazy_diamond_rev	@ Reverb.

	.word	mus_shine_on_you_crazy_diamond_grp

	.word	mus_shine_on_you_crazy_diamond_1
	.word	mus_shine_on_you_crazy_diamond_2
	.word	mus_shine_on_you_crazy_diamond_3
	.word	mus_shine_on_you_crazy_diamond_4
	.word	mus_shine_on_you_crazy_diamond_5
	.word	mus_shine_on_you_crazy_diamond_6
	.word	mus_shine_on_you_crazy_diamond_7
	.word	mus_shine_on_you_crazy_diamond_8

	.end
