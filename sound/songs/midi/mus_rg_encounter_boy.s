	.include "MPlayDef.s"

	.equ	mus_rg_encounter_boy_grp, voicegroup_rg_encounter_boy
	.equ	mus_rg_encounter_boy_pri, 0
	.equ	mus_rg_encounter_boy_rev, reverb_set+50
	.equ	mus_rg_encounter_boy_mvl, 105
	.equ	mus_rg_encounter_boy_key, 0
	.equ	mus_rg_encounter_boy_tbs, 1
	.equ	mus_rg_encounter_boy_exg, 1
	.equ	mus_rg_encounter_boy_cmp, 1

	.section .rodata
	.global	mus_rg_encounter_boy
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_rg_encounter_boy_1:
	.byte	KEYSH , mus_rg_encounter_boy_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 134*mus_rg_encounter_boy_tbs/2
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 002   ----------------------------------------
	.byte	W12
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		        En2 , v084
	.byte	W12
	.byte		        An2 , v112
	.byte	W12
	.byte		        An2 , v084
	.byte	W12
	.byte		        Bn2 , v112
	.byte	W12
	.byte		        Bn2 , v088
	.byte	W12
	.byte		        An2 , v112
	.byte	W12
@ 003   ----------------------------------------
	.byte		        An2 , v080
	.byte	W12
	.byte		        Dn3 , v116
	.byte	W12
	.byte		        Dn3 , v084
	.byte	W12
	.byte		        En3 , v116
	.byte	W12
	.byte		        En3 , v088
	.byte	W12
	.byte		        An3 , v120
	.byte	W12
	.byte		        An3 , v088
	.byte	W12
	.byte		        Fn3 , v120
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Fn3 , v088
	.byte	W12
mus_rg_encounter_boy_1_B1:
	.byte		N11   , Dn3 , v116
	.byte	W12
	.byte		        Dn3 , v080
	.byte	W12
	.byte		        Bn2 , v116
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W12
	.byte		        An2 , v108
	.byte	W12
	.byte		        An2 , v080
	.byte	W12
	.byte		        Bn2 , v108
	.byte	W12
@ 005   ----------------------------------------
	.byte		        Bn2 , v080
	.byte	W12
	.byte		        Dn3 , v112
	.byte	W12
	.byte		        Dn3 , v084
	.byte	W12
	.byte		        Bn2 , v112
	.byte	W12
	.byte		        Bn2 , v084
	.byte	W12
	.byte		        Dn3 , v116
	.byte	W12
	.byte		        Dn3 , v084
	.byte	W12
	.byte		        En3 , v116
	.byte	W12
@ 006   ----------------------------------------
	.byte		        En3 , v084
	.byte	W12
	.byte		        Fn3 , v116
	.byte	W12
	.byte		        Fn3 , v088
	.byte	W12
	.byte		        Dn3 , v116
	.byte	W12
	.byte		        Dn3 , v088
	.byte	W12
	.byte		        En3 , v112
	.byte	W12
	.byte		        En3 , v084
	.byte	W12
	.byte		        An3 , v112
	.byte	W12
@ 007   ----------------------------------------
	.byte		        An3 , v084
	.byte	W12
	.byte		        Dn3 , v116
	.byte	W12
	.byte		        Dn3 , v084
	.byte	W12
	.byte		        Bn2 , v116
	.byte	W12
	.byte		        Bn2 , v084
	.byte	W12
	.byte		        An2 , v120
	.byte	W12
	.byte		        An2 , v088
	.byte	W12
	.byte		        Bn2 , v120
	.byte	W12
@ 008   ----------------------------------------
	.byte		        Bn2 , v088
	.byte	W12
	.byte		        Dn3 , v116
	.byte	W12
	.byte		        Dn3 , v080
	.byte	W12
	.byte		        En3 , v116
	.byte	W12
	.byte		        En3 , v088
	.byte	W12
	.byte		        An3 , v116
	.byte	W12
	.byte		        An3 , v088
	.byte	W12
	.byte		        Fn3 , v116
	.byte	W12
@ 009   ----------------------------------------
	.byte		        Fn3 , v088
	.byte	W12
	.byte		        Dn3 , v112
	.byte	W12
	.byte		        Dn3 , v080
	.byte	W12
	.byte		        Bn2 , v112
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W12
	.byte		        An2 , v112
	.byte	W12
	.byte		        An2 , v084
	.byte	W12
	.byte		        Bn2 , v112
	.byte	W12
@ 010   ----------------------------------------
	.byte		        Bn2 , v084
	.byte	W12
	.byte		        Dn3 , v108
	.byte	W12
	.byte		        Dn3 , v080
	.byte	W12
	.byte		        Bn2 , v108
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W12
	.byte		        Dn3 , v116
	.byte	W12
	.byte		        Dn3 , v080
	.byte	W12
	.byte		        En3 , v116
	.byte	W12
@ 011   ----------------------------------------
	.byte		        En3 , v080
	.byte	W12
	.byte		        Fn3 , v120
	.byte	W12
	.byte		        Fn3 , v088
	.byte	W12
	.byte		        Dn3 , v120
	.byte	W12
	.byte		        Dn3 , v088
	.byte	W12
	.byte		        En3 , v120
	.byte	W12
	.byte		        En3 , v088
	.byte	W12
	.byte		        An3 , v120
	.byte	W12
@ 012   ----------------------------------------
	.byte		        An3 , v088
	.byte	W12
	.byte		        Dn3 , v116
	.byte	W12
	.byte		        Dn3 , v080
	.byte	W12
	.byte		        Bn2 , v116
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W12
	.byte		        An2 , v112
	.byte	W12
	.byte		        An2 , v084
	.byte	W12
	.byte		        Bn2 , v112
	.byte	W12
@ 013   ----------------------------------------
	.byte		        Bn2 , v084
	.byte	W12
	.byte		        Dn3 , v116
	.byte	W12
	.byte		        Dn3 , v084
	.byte	W12
	.byte		        En3 , v116
	.byte	W12
	.byte		        En3 , v088
	.byte	W12
	.byte		        An3 , v120
	.byte	W12
	.byte		        An3 , v088
	.byte	W12
	.byte		        Fn3 , v120
	.byte	W12
@ 014   ----------------------------------------
	.byte		        Fn3 , v088
	.byte	W12
	.byte	GOTO
	 .word	mus_rg_encounter_boy_1_B1
mus_rg_encounter_boy_1_B2:
	.byte		VOICE , 81
	.byte		        81
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_rg_encounter_boy_2:
	.byte	KEYSH , mus_rg_encounter_boy_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 77
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N05   , Bn3 , v127
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		TIE   , Bn3 , v116
	.byte	W84
@ 001   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N32   , Dn4 , v116, gtp3
	.byte	W36
@ 002   ----------------------------------------
mus_rg_encounter_boy_2_002:
	.byte		N05   , En4 , v116
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N80   , En4 , v116, gtp3
	.byte	W84
	.byte	PEND
@ 003   ----------------------------------------
mus_rg_encounter_boy_2_003:
	.byte		N05   , Gn4 , v116
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte	PEND
mus_rg_encounter_boy_2_B1:
	.byte		N68   , An4 , v116, gtp3
	.byte	W72
	.byte		N23   , Bn4 
	.byte	W12
@ 004   ----------------------------------------
mus_rg_encounter_boy_2_004:
	.byte	W12
	.byte		N52   , Dn4 , v116, gtp1
	.byte	W54
	.byte		N05   , En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N68   , En4 , v116, gtp3
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_rg_encounter_boy_2_005:
	.byte	W60
	.byte		N44   , Bn3 , v116, gtp3
	.byte	W36
	.byte	PEND
@ 006   ----------------------------------------
	.byte	W12
	.byte		        Fn4 , v116, gtp3
	.byte	W48
	.byte		N02   , En4 , v088
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        An3 
	.byte	W15
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_boy_2_002
@ 008   ----------------------------------------
	.byte		N05   , Gn4 , v116
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N68   , An4 , v116, gtp3
	.byte	W72
	.byte		N23   , Bn4 
	.byte	W12
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_boy_2_004
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_boy_2_005
@ 011   ----------------------------------------
	.byte	W12
	.byte		N44   , Fn4 , v116, gtp3
	.byte	W48
	.byte		N02   , En4 , v080
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        An3 
	.byte	W15
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_boy_2_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_boy_2_003
	.byte	GOTO
	 .word	mus_rg_encounter_boy_2_B1
mus_rg_encounter_boy_2_B2:
	.byte		VOICE , 77
	.byte		        77
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.4) ****************@

mus_rg_encounter_boy_3:
	.byte	KEYSH , mus_rg_encounter_boy_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 32
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W12
	.byte		N68   , En2 , v116, gtp3
	.byte	W84
@ 002   ----------------------------------------
	.byte		N03   , En2 , v100
	.byte	W12
	.byte		N68   , En2 , v116, gtp3
	.byte	W84
@ 003   ----------------------------------------
	.byte		N03   , En2 , v104
	.byte	W12
mus_rg_encounter_boy_3_B1:
	.byte		N68   , Dn2 , v116, gtp3
	.byte	W84
@ 004   ----------------------------------------
	.byte		N03   , Dn2 , v104
	.byte	W12
	.byte		N52   , Bn1 , v116, gtp1
	.byte	W60
	.byte		N03   , Dn2 , v104
	.byte	W12
	.byte		N52   , En2 , v112, gtp1
	.byte	W12
@ 005   ----------------------------------------
	.byte	W48
	.byte		N03   , En2 , v104
	.byte	W12
	.byte		N32   , En2 , v112, gtp3
	.byte	W36
@ 006   ----------------------------------------
	.byte		N03   , Ds2 , v104
	.byte	W12
	.byte		N32   , Dn2 , v112, gtp3
	.byte	W36
	.byte		N04   , An1 , v104
	.byte	W12
	.byte		N32   , Dn2 , v112, gtp3
	.byte	W36
@ 007   ----------------------------------------
	.byte		N04   , En2 , v104
	.byte	W12
	.byte		N68   , En2 , v116, gtp3
	.byte	W84
@ 008   ----------------------------------------
	.byte		N03   , En2 , v104
	.byte	W12
	.byte		N52   , Dn2 , v116, gtp1
	.byte	W60
	.byte		N05   , Dn2 , v104
	.byte	W12
	.byte		N03   , Fn2 
	.byte	W12
@ 009   ----------------------------------------
	.byte		        Dn2 
	.byte	W12
	.byte		N32   , Bn1 , v112, gtp3
	.byte	W36
	.byte		N03   , Fs2 , v104
	.byte	W12
	.byte		N11   , Bn1 , v112
	.byte	W12
	.byte		N03   , Dn2 , v108
	.byte	W12
	.byte		N52   , En2 , v112, gtp1
	.byte	W12
@ 010   ----------------------------------------
	.byte	W48
	.byte		N04   , Bn1 , v104
	.byte	W12
	.byte		N32   , En2 , v112, gtp3
	.byte	W36
@ 011   ----------------------------------------
	.byte		N04   , Fn2 , v104
	.byte	W12
	.byte		N32   , Dn2 , v116, gtp3
	.byte	W36
	.byte		N05   , An1 , v104
	.byte	W12
	.byte		N11   , Dn2 , v116
	.byte	W12
	.byte		N02   , An1 , v104
	.byte	W24
@ 012   ----------------------------------------
	.byte		N05   , Dn2 , v112
	.byte	W12
	.byte		N68   , En2 , v116, gtp3
	.byte	W84
@ 013   ----------------------------------------
	.byte		N03   , En2 , v104
	.byte	W12
	.byte	GOTO
	 .word	mus_rg_encounter_boy_3_B1
mus_rg_encounter_boy_3_B2:
	.byte		VOICE , 32
	.byte		        32
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.5) ****************@

mus_rg_encounter_boy_4:
	.byte	KEYSH , mus_rg_encounter_boy_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N05   , Bn4 , v072
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		TIE   , Bn4 , v060
	.byte	W84
@ 001   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W48
	.byte	W01
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W12
mus_rg_encounter_boy_4_B1:
	.byte	W84
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
	.byte	W12
	.byte	GOTO
	 .word	mus_rg_encounter_boy_4_B1
mus_rg_encounter_boy_4_B2:
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_rg_encounter_boy_5:
	.byte	KEYSH , mus_rg_encounter_boy_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W12
	.byte		N05   , Cn1 , v116
	.byte		N23   , Fn2 , v104
	.byte	W24
	.byte		        En4 , v100
	.byte	W24
	.byte		N05   , Bn0 
	.byte	W24
	.byte		N11   , As4 
	.byte	W12
@ 002   ----------------------------------------
mus_rg_encounter_boy_5_002:
	.byte		N05   , Cn1 , v100
	.byte		N23   , Fn4 
	.byte	W12
	.byte		N05   , Cn1 , v116
	.byte	W24
	.byte		N23   , En4 , v100
	.byte	W24
	.byte		N05   , Bn0 
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N11   , As4 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte		N05   , Cn1 
	.byte		N23   , Fn4 
	.byte	W12
mus_rg_encounter_boy_5_B1:
	.byte		N05   , Cn1 , v116
	.byte	W24
	.byte		N23   , En4 , v100
	.byte	W24
	.byte		N05   , Bn0 
	.byte	W24
	.byte		N11   , As4 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N05   , Cn1 
	.byte		N23   , Fn4 
	.byte	W12
	.byte		N05   , Cn1 , v116
	.byte	W12
	.byte		        Bn0 , v100
	.byte	W12
	.byte		N23   , En4 
	.byte	W06
	.byte		N05   , Bn0 
	.byte	W18
	.byte		N05   
	.byte		N11   , As4 
	.byte	W12
	.byte		N05   , Cn1 
	.byte		N23   , Fn4 
	.byte	W12
	.byte		N05   , Cn1 , v116
	.byte	W12
@ 005   ----------------------------------------
	.byte	W24
	.byte		        Bn0 , v092
	.byte	W12
	.byte		N23   , En4 , v100
	.byte	W12
	.byte		N05   , Cn1 , v096
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W24
	.byte		N11   , As4 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N05   , Cn1 
	.byte		N23   , Fn4 
	.byte	W12
	.byte		N05   , Cn1 , v116
	.byte	W24
	.byte		N23   , En4 , v100
	.byte	W12
	.byte		N05   , Bn0 
	.byte	W36
	.byte		N11   , As4 
	.byte	W12
@ 007   ----------------------------------------
	.byte		N05   , Cn1 
	.byte		N23   , Fn4 
	.byte	W12
	.byte		N05   , Cn1 , v116
	.byte		N23   , Fn2 , v104
	.byte	W24
	.byte		        En4 , v100
	.byte	W24
	.byte		N05   , Bn0 , v092
	.byte	W24
	.byte		N11   , As4 , v100
	.byte	W12
@ 008   ----------------------------------------
	.byte		N05   , Cn1 
	.byte		N23   , Fn4 
	.byte	W12
	.byte		N05   , Cn1 , v116
	.byte	W24
	.byte		N23   , En4 , v100
	.byte	W12
	.byte		N05   , Bn0 
	.byte	W18
	.byte		        Bn0 , v092
	.byte	W18
	.byte		        Bn0 , v100
	.byte		N11   , As4 
	.byte	W12
@ 009   ----------------------------------------
	.byte		N05   , Cn1 
	.byte		N23   , Fn4 
	.byte	W12
	.byte		N05   , Cn1 , v116
	.byte	W24
	.byte		N23   , En4 , v100
	.byte	W12
	.byte		N05   , Bn0 
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte		N05   
	.byte		N11   , As4 
	.byte	W12
@ 010   ----------------------------------------
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N05   , Cn1 , v092
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N23   , En4 
	.byte	W36
	.byte		N05   , Cn1 
	.byte	W12
	.byte		N05   
	.byte		N11   , As4 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N23   , Fn4 
	.byte	W12
	.byte		N05   , Cn1 , v116
	.byte	W24
	.byte		N23   , En4 , v100
	.byte	W12
	.byte		N05   , Bn0 
	.byte	W36
	.byte		N11   , As4 
	.byte	W12
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_encounter_boy_5_002
@ 013   ----------------------------------------
	.byte		N05   , Cn1 , v100
	.byte		N11   , Fn4 
	.byte	W12
	.byte	GOTO
	 .word	mus_rg_encounter_boy_5_B1
mus_rg_encounter_boy_5_B2:
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_encounter_boy_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_rg_encounter_boy:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_rg_encounter_boy_pri	@ Priority
	.byte	mus_rg_encounter_boy_rev	@ Reverb.

	.word	mus_rg_encounter_boy_grp

	.word	mus_rg_encounter_boy_1
	.word	mus_rg_encounter_boy_2
	.word	mus_rg_encounter_boy_3
	.word	mus_rg_encounter_boy_4
	.word	mus_rg_encounter_boy_5

	.end
