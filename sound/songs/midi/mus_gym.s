	.include "MPlayDef.s"

	.equ	mus_gym_grp, voicegroup_gym
	.equ	mus_gym_pri, 0
	.equ	mus_gym_rev, reverb_set+50
	.equ	mus_gym_mvl, 80
	.equ	mus_gym_key, 0
	.equ	mus_gym_tbs, 1
	.equ	mus_gym_exg, 1
	.equ	mus_gym_cmp, 1

	.section .rodata
	.global	mus_gym
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_gym_1:
	.byte	KEYSH , mus_gym_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 140*mus_gym_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N17   , As4 , v076
	.byte	W24
	.byte		N23   , As4 , v052
	.byte	W24
	.byte		        As4 , v080
	.byte	W48
mus_gym_1_B1:
@ 002   ----------------------------------------
mus_gym_1_002:
	.byte		N08   , Fs4 , v044
	.byte	W12
	.byte		N01   , Fs4 , v036
	.byte	W12
	.byte		N02   , Fs4 , v060
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N08   , Fs4 , v076
	.byte	W12
	.byte		N01   , Fs4 , v036
	.byte	W12
	.byte		N07   , Fs4 , v080
	.byte	W12
	.byte		N01   , Fs4 , v056
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte		N08   , Fs4 , v068
	.byte	W12
	.byte		N01   , Fs4 , v036
	.byte	W12
	.byte		N02   , Fs4 , v060
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N08   , Fs4 , v076
	.byte	W12
	.byte		N01   , Fs4 , v036
	.byte	W12
	.byte		N02   , Fs4 , v056
	.byte	W12
	.byte		N11   , As4 , v080
	.byte	W12
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_gym_1_002
@ 005   ----------------------------------------
mus_gym_1_005:
	.byte		N20   , As4 , v072
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		        As4 , v080
	.byte	W24
	.byte		N11   , Fs4 , v068
	.byte	W12
	.byte		        As4 , v084
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_gym_1_006:
	.byte		N08   , Fs4 , v076
	.byte	W12
	.byte		N01   , Fs4 , v052
	.byte	W12
	.byte		N02   , Fs4 , v060
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N08   , Fs4 , v076
	.byte	W12
	.byte		N01   , Fs4 , v036
	.byte	W12
	.byte		N07   , Fs4 , v080
	.byte	W12
	.byte		N01   , Fs4 , v056
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_gym_1_007:
	.byte		N08   , Fs4 , v068
	.byte	W12
	.byte		N01   , Fs4 , v036
	.byte	W12
	.byte		N02   , Fs4 , v060
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N08   , Fs4 , v076
	.byte	W12
	.byte		N01   , Fs4 , v036
	.byte	W12
	.byte		N02   , Fs4 , v068
	.byte	W12
	.byte		N11   , As4 , v080
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_gym_1_008:
	.byte		N08   , Fs4 , v072
	.byte	W12
	.byte		N01   , Fs4 , v060
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N08   , Fs4 , v076
	.byte	W12
	.byte		N01   , Fs4 , v036
	.byte	W12
	.byte		N07   , Fs4 , v060
	.byte	W12
	.byte		N01   , Fs4 , v056
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_gym_1_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_gym_1_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_gym_1_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_gym_1_008
@ 013   ----------------------------------------
	.byte		N20   , As4 , v072
	.byte	W24
	.byte		N19   , As4 , v056
	.byte	W24
	.byte		N20   , As4 , v068
	.byte	W24
	.byte		N11   , As4 , v112
	.byte	W24
@ 014   ----------------------------------------
mus_gym_1_014:
	.byte	W36
	.byte		N11   , As4 , v112
	.byte	W36
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
mus_gym_1_015:
	.byte		N11   , As4 , v112
	.byte	W72
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte		N20   , As4 , v072
	.byte	W24
	.byte		        As4 , v056
	.byte	W24
	.byte		        As4 , v068
	.byte	W24
	.byte		N11   , As4 , v112
	.byte	W24
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_gym_1_014
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_gym_1_015
@ 020   ----------------------------------------
	.byte	W24
	.byte		N11   , As4 , v112
	.byte	W72
@ 021   ----------------------------------------
	.byte		N20   , As4 , v080
	.byte	W24
	.byte		        As4 , v068
	.byte	W24
	.byte		        As4 , v088
	.byte	W48
	.byte	GOTO
	 .word	mus_gym_1_B1
mus_gym_1_B2:
@ 022   ----------------------------------------
	.byte		VOICE , 127
	.byte		        127
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_gym_2:
	.byte	KEYSH , mus_gym_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 127*mus_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
mus_gym_2_B1:
@ 001   ----------------------------------------
	.byte	W12
	.byte		N11   , An2 , v108
	.byte	W12
	.byte		N03   , An2 , v088
	.byte	W18
	.byte		N03   
	.byte	W12
	.byte		        An2 , v084
	.byte	W06
	.byte		N11   , Gn2 , v104
	.byte	W12
	.byte		N03   , Gn2 , v088
	.byte	W18
	.byte		        Gn2 , v084
	.byte	W06
@ 002   ----------------------------------------
	.byte	W12
	.byte		N02   , Fs2 , v104
	.byte	W12
	.byte		        Dn2 , v092
	.byte	W18
	.byte		        Fs2 , v100
	.byte	W12
	.byte		        Fs2 , v096
	.byte	W06
	.byte		N23   , Dn2 , v108
	.byte	W24
	.byte		        En2 , v104
	.byte	W12
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W12
	.byte		N03   , Dn3 , v112
	.byte	W06
	.byte		        Cs3 , v108
	.byte	W06
	.byte		N52   , Dn3 , v120, gtp1
	.byte	W60
	.byte		N11   , An2 , v116
	.byte	W12
@ 005   ----------------------------------------
	.byte		        Dn3 , v112
	.byte	W12
	.byte		N05   , En3 , v120
	.byte	W18
	.byte		N02   , Cn3 , v112
	.byte	W06
	.byte		N23   , Cn3 , v116
	.byte	W24
	.byte		N08   , Gn3 , v120
	.byte	W24
	.byte		        En3 , v116
	.byte	W12
@ 006   ----------------------------------------
	.byte	W12
	.byte		N05   , Dn3 
	.byte	W06
	.byte		N03   , Cs3 , v108
	.byte	W12
	.byte		N44   , Dn3 , v116, gtp3
	.byte	W54
	.byte		N11   , An2 
	.byte	W12
@ 007   ----------------------------------------
	.byte		        Dn3 , v112
	.byte	W12
	.byte		N03   , Cn3 , v116
	.byte	W12
	.byte		N05   , Cn3 , v112
	.byte	W06
	.byte		        Dn3 , v104
	.byte	W06
	.byte		N44   , En3 , v120, gtp3
	.byte	W60
@ 008   ----------------------------------------
	.byte	W12
	.byte		N05   , Fs3 
	.byte	W06
	.byte		        Fn3 , v112
	.byte	W06
	.byte		N56   , Fs3 , v120, gtp3
	.byte	W60
	.byte		N11   , En3 , v116
	.byte	W12
@ 009   ----------------------------------------
	.byte		        Fs3 , v112
	.byte	W12
	.byte		N05   , Gn3 , v120
	.byte	W18
	.byte		N04   , En3 , v108
	.byte	W06
	.byte		N23   , En3 , v116
	.byte	W24
	.byte		N05   , Cn4 , v124
	.byte	W18
	.byte		        Gn3 , v112
	.byte	W06
	.byte		N23   , Gn3 , v116
	.byte	W12
@ 010   ----------------------------------------
	.byte	W12
	.byte		N68   , Fs3 , v116, gtp3
	.byte	W72
	.byte		N11   , En3 , v112
	.byte	W12
@ 011   ----------------------------------------
	.byte		        Fs3 , v108
	.byte	W12
	.byte		N04   , Gn3 , v120
	.byte	W12
	.byte		N03   , En3 , v112
	.byte	W06
	.byte		        Gn3 , v108
	.byte	W06
	.byte		N44   , Cn4 , v120, gtp3
	.byte	W48
	.byte		N23   , Bn3 , v116
	.byte	W12
@ 012   ----------------------------------------
	.byte	W12
	.byte		N02   , An2 , v096
	.byte	W06
	.byte		        An2 , v104
	.byte	W30
	.byte		        An2 , v052
	.byte	W06
	.byte		        An2 , v056
	.byte	W18
	.byte		N02   
	.byte	W18
	.byte		N17   
	.byte	W06
@ 013   ----------------------------------------
	.byte	W12
	.byte		N02   , Gn2 , v052
	.byte	W06
	.byte		        Gn2 , v056
	.byte	W30
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W18
	.byte		N17   
	.byte	W06
@ 014   ----------------------------------------
	.byte	W12
	.byte		N02   , Fs2 , v052
	.byte	W06
	.byte		        Fs2 , v056
	.byte	W30
	.byte		        Fs2 , v052
	.byte	W06
	.byte		        Fs2 , v056
	.byte	W18
	.byte		        Fs2 , v052
	.byte	W18
	.byte		N17   , Fs2 , v100
	.byte	W06
@ 015   ----------------------------------------
	.byte	W12
	.byte		N23   , Fn2 , v108
	.byte	W24
	.byte		        Dn2 , v100
	.byte	W24
	.byte		        En2 , v112
	.byte	W24
	.byte		        Gn2 , v104
	.byte	W12
@ 016   ----------------------------------------
	.byte	W12
	.byte		N32   , An2 , v108, gtp3
	.byte	W36
	.byte		        Dn3 , v104, gtp3
	.byte	W36
	.byte		N23   , An2 , v112
	.byte	W12
@ 017   ----------------------------------------
	.byte	W12
	.byte		        Cn3 , v108
	.byte	W24
	.byte		        Bn2 , v104
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		        Gn2 , v100
	.byte	W12
@ 018   ----------------------------------------
	.byte	W12
	.byte		N05   , Fs2 , v108
	.byte	W12
	.byte		N03   , Fs2 , v100
	.byte	W06
	.byte		        Gn2 , v096
	.byte	W06
	.byte		N23   , An2 , v108
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N03   , An2 , v100
	.byte	W06
	.byte		        Bn2 , v096
	.byte	W06
	.byte		N23   , Cn3 , v104
	.byte	W12
@ 019   ----------------------------------------
	.byte	W12
	.byte		N05   , Dn3 , v108
	.byte	W12
	.byte		N03   , Dn3 , v100
	.byte	W06
	.byte		        En3 , v092
	.byte	W06
	.byte		N44   , Fs3 , v104, gtp3
	.byte	W48
	.byte		N23   , En3 , v096
	.byte	W12
@ 020   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_gym_2_B1
mus_gym_2_B2:
@ 021   ----------------------------------------
	.byte		VOICE , 29
	.byte		        29
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.4) ****************@

mus_gym_3:
	.byte	KEYSH , mus_gym_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 36
	.byte		VOL   , 127*mus_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W12
	.byte		N92   , An0 , v100, gtp3
	.byte		N92   , An1 , v080, gtp3
	.byte	W84
mus_gym_3_B1:
@ 001   ----------------------------------------
	.byte	W12
	.byte		N11   , Dn2 , v100
	.byte	W12
	.byte		N02   , Dn1 , v108
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N11   , An1 , v096
	.byte	W12
	.byte		        Cn2 , v100
	.byte	W12
	.byte		N02   , Cn1 , v108
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte		        Cn1 , v108
	.byte	W12
@ 002   ----------------------------------------
	.byte		N11   , An1 , v096
	.byte	W12
	.byte		        Gn1 , v100
	.byte	W12
	.byte		N02   , Gn0 , v108
	.byte	W06
	.byte		        Gn0 , v100
	.byte	W06
	.byte		        Gn0 , v108
	.byte	W12
	.byte		N11   , Gn1 , v096
	.byte	W12
	.byte		N23   , Gn1 , v108
	.byte	W24
	.byte		        An1 
	.byte	W12
@ 003   ----------------------------------------
	.byte	W12
	.byte		N92   , An0 , v100, gtp3
	.byte	W84
@ 004   ----------------------------------------
	.byte	W12
	.byte		N07   , Dn2 , v120
	.byte	W18
	.byte		N05   , Dn1 , v116
	.byte	W18
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N02   , Dn1 , v116
	.byte	W06
	.byte		        Dn1 , v108
	.byte	W06
	.byte		N05   , Dn1 , v116
	.byte	W12
	.byte		N09   , Dn2 , v124
	.byte	W12
@ 005   ----------------------------------------
	.byte		N11   , An1 , v116
	.byte	W12
	.byte		N07   , Cn2 , v120
	.byte	W18
	.byte		N05   , Cn1 , v112
	.byte	W18
	.byte		        Cn1 , v108
	.byte	W12
	.byte		N02   , Cn1 , v116
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N05   , Cn1 , v116
	.byte	W12
	.byte		N09   , En2 , v124
	.byte	W12
@ 006   ----------------------------------------
	.byte		N05   , Cn2 , v116
	.byte	W06
	.byte		        Cs2 , v112
	.byte	W06
	.byte		N07   , Dn2 , v120
	.byte	W18
	.byte		N05   , Dn1 , v112
	.byte	W18
	.byte		        Dn1 , v116
	.byte	W12
	.byte		N02   , Dn1 , v112
	.byte	W06
	.byte		        Dn1 , v104
	.byte	W06
	.byte		N05   , Dn1 , v112
	.byte	W12
	.byte		N11   , Dn2 , v120
	.byte	W12
@ 007   ----------------------------------------
	.byte		        An1 , v112
	.byte	W12
	.byte		N07   , Cn2 , v120
	.byte	W18
	.byte		N05   , Cn1 , v116
	.byte	W18
	.byte		        Cn1 , v108
	.byte	W12
	.byte		N02   , Cn1 , v116
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N05   , Cn1 , v116
	.byte	W12
	.byte		N09   , En2 , v120
	.byte	W12
@ 008   ----------------------------------------
	.byte		N05   , Cn2 , v112
	.byte	W06
	.byte		        Cs2 , v108
	.byte	W06
	.byte		N07   , Dn2 , v116
	.byte	W18
	.byte		N05   , Dn1 , v112
	.byte	W18
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N02   , Dn1 , v120
	.byte	W06
	.byte		        Dn1 , v108
	.byte	W06
	.byte		N08   , Dn1 , v116
	.byte	W12
	.byte		N11   , Dn2 , v120
	.byte	W12
@ 009   ----------------------------------------
	.byte		        An1 , v112
	.byte	W12
	.byte		N07   , Cn2 , v120
	.byte	W18
	.byte		N05   , Cn1 , v116
	.byte	W18
	.byte		        Cn1 , v108
	.byte	W12
	.byte		N02   , Cn1 , v112
	.byte	W06
	.byte		        Cn1 , v108
	.byte	W06
	.byte		N08   , Cn1 , v116
	.byte	W12
	.byte		N09   , En2 , v120
	.byte	W12
@ 010   ----------------------------------------
	.byte		N05   , Cn2 , v116
	.byte	W06
	.byte		        Cs2 , v108
	.byte	W06
	.byte		N07   , Dn2 , v120
	.byte	W18
	.byte		N05   , Dn1 , v116
	.byte	W18
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N02   , Dn1 , v112
	.byte	W06
	.byte		        Dn1 , v108
	.byte	W06
	.byte		N08   , Dn1 , v116
	.byte	W12
	.byte		N11   , Dn2 
	.byte	W12
@ 011   ----------------------------------------
	.byte		        An1 , v112
	.byte	W12
	.byte		N07   , Cn2 , v120
	.byte	W18
	.byte		N05   , Cn1 , v112
	.byte	W18
	.byte		        Cn1 , v108
	.byte	W12
	.byte		N02   , Cn1 , v116
	.byte	W06
	.byte		        Cn1 , v108
	.byte	W06
	.byte		N08   , Cn1 , v112
	.byte	W12
	.byte		N05   , Cn1 , v120
	.byte	W06
	.byte		        En1 , v112
	.byte	W06
@ 012   ----------------------------------------
	.byte		        Gn1 , v116
	.byte	W06
	.byte		        Cn2 , v112
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W36
	.byte		        Dn2 , v116
	.byte	W24
	.byte		        Dn2 , v112
	.byte	W18
	.byte		N17   , Dn2 , v124
	.byte	W06
@ 013   ----------------------------------------
	.byte	W12
	.byte		N05   , Cn2 , v120
	.byte	W36
	.byte		        Cn2 , v116
	.byte	W24
	.byte		        Cn2 , v112
	.byte	W18
	.byte		N17   , Cn2 , v124
	.byte	W06
@ 014   ----------------------------------------
	.byte	W12
	.byte		N05   , Bn1 , v120
	.byte	W36
	.byte		N05   
	.byte	W24
	.byte		        Bn1 , v112
	.byte	W18
	.byte		N17   , Bn1 , v124
	.byte	W06
@ 015   ----------------------------------------
	.byte	W12
	.byte		N23   , As1 , v120
	.byte	W24
	.byte		        Dn2 , v116
	.byte	W24
	.byte		        Cn2 , v124
	.byte	W24
	.byte		        En2 , v116
	.byte	W12
@ 016   ----------------------------------------
	.byte	W12
	.byte		N03   , Dn2 , v120
	.byte	W36
	.byte		        Dn2 , v116
	.byte	W24
	.byte		        An1 , v112
	.byte	W18
	.byte		N17   , Dn2 , v124
	.byte	W06
@ 017   ----------------------------------------
	.byte	W12
	.byte		N03   , Cn2 , v120
	.byte	W36
	.byte		        Cn2 , v116
	.byte	W24
	.byte		        Gn1 , v112
	.byte	W18
	.byte		N17   , Cn2 , v124
	.byte	W06
@ 018   ----------------------------------------
	.byte	W12
	.byte		N03   , Bn1 , v120
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N03   , Cn2 , v112
	.byte	W36
@ 019   ----------------------------------------
	.byte		N11   , Cn2 , v124
	.byte	W12
	.byte		N03   , Dn2 , v120
	.byte	W36
	.byte		N05   , An1 
	.byte	W24
	.byte		N03   , An1 , v112
	.byte	W18
	.byte		N17   , Dn2 , v124
	.byte	W06
@ 020   ----------------------------------------
	.byte	W12
	.byte		N84   , An0 , v100
	.byte		N84   , An1 , v080
	.byte	W84
	.byte	GOTO
	 .word	mus_gym_3_B1
mus_gym_3_B2:
@ 021   ----------------------------------------
	.byte		VOICE , 36
	.byte		        36
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.5) ****************@

mus_gym_4:
	.byte	KEYSH , mus_gym_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 30
	.byte		VOL   , 127*mus_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
mus_gym_4_B1:
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
	.byte	W56
	.byte	W01
	.byte		N03   , An0 , v080
	.byte	W03
	.byte		        Bn0 , v072
	.byte	W03
	.byte		        Cs1 , v088
	.byte	W04
	.byte		        Dn1 , v076
	.byte	W03
	.byte		        En1 , v100
	.byte	W04
	.byte		        Fs1 , v084
	.byte	W03
	.byte		        Gn1 , v096
	.byte	W04
	.byte		        An1 , v080
	.byte	W03
	.byte		        Bn1 , v072
	.byte	W03
	.byte		        Cs2 , v088
	.byte	W04
	.byte		        Dn2 , v076
	.byte	W03
	.byte		        En2 , v100
	.byte	W02
@ 012   ----------------------------------------
	.byte	W02
	.byte		        Fs2 , v084
	.byte	W03
	.byte		        Gn2 , v096
	.byte	W04
	.byte		N32   , An2 , v112, gtp2
	.byte	W36
	.byte		        Dn3 , v104, gtp2
	.byte	W36
	.byte		N22   , An2 , v108
	.byte	W15
@ 013   ----------------------------------------
	.byte	W09
	.byte		        Cn3 , v112
	.byte	W24
	.byte		        Bn2 , v108
	.byte	W24
	.byte		        An2 , v112
	.byte	W24
	.byte		        Gn2 , v108
	.byte	W15
@ 014   ----------------------------------------
	.byte	W09
	.byte		N04   , Fs2 , v112
	.byte	W12
	.byte		        Fs2 , v108
	.byte	W06
	.byte		        Gn2 , v100
	.byte	W06
	.byte		N28   , An2 , v108, gtp1
	.byte	W36
	.byte		N10   
	.byte	W12
	.byte		        Dn3 , v100
	.byte	W12
	.byte		        An2 , v104
	.byte	W03
@ 015   ----------------------------------------
	.byte	W09
	.byte		N22   , Cn3 , v112
	.byte	W24
	.byte		        As2 , v108
	.byte	W24
	.byte		        An2 , v112
	.byte	W24
	.byte		        Gn2 , v108
	.byte	W15
@ 016   ----------------------------------------
	.byte	W09
	.byte		N36   , Fs2 , v120, gtp3
	.byte	W40
	.byte		N03   , Fs2 , v096
	.byte	W02
	.byte		        Fn2 , v084
	.byte	W04
	.byte		        Ds2 , v100
	.byte	W03
	.byte		        Cs2 , v076
	.byte	W04
	.byte		        Cn2 , v088
	.byte	W02
	.byte		        As1 , v072
	.byte	W03
	.byte		        Gs1 , v080
	.byte	W03
	.byte		        Fs1 , v096
	.byte	W02
	.byte		        Fn1 , v084
	.byte	W03
	.byte		        Ds1 , v100
	.byte	W02
	.byte		        Cs1 , v076
	.byte	W04
	.byte		        Cn1 , v088
	.byte	W03
	.byte		        As0 , v072
	.byte	W04
	.byte		        Gs0 , v080
	.byte	W08
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_gym_4_B1
mus_gym_4_B2:
@ 021   ----------------------------------------
	.byte		VOICE , 30
	.byte		        30
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.6) ****************@

mus_gym_5:
	.byte	KEYSH , mus_gym_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		VOL   , 110*mus_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W60
	.byte		N02   , An1 , v072
	.byte	W02
	.byte		        Bn1 , v064
	.byte	W02
	.byte		        Cs2 , v080
	.byte	W03
	.byte		        Dn2 , v072
	.byte	W02
	.byte		        En2 , v084
	.byte	W03
	.byte		        Fs2 , v076
	.byte	W02
	.byte		        Gn2 , v096
	.byte	W02
	.byte		        An2 , v088
	.byte	W03
	.byte		        Bn2 , v100
	.byte	W02
	.byte		        Cs3 , v096
	.byte	W03
	.byte		        An2 , v088
	.byte	W02
	.byte		        Bn2 , v084
	.byte	W02
	.byte		        Cs3 , v096
	.byte	W03
	.byte		        Dn3 , v092
	.byte	W02
	.byte		        En3 , v104
	.byte	W03
mus_gym_5_B1:
@ 001   ----------------------------------------
	.byte		N02   , Fs3 , v100
	.byte	W02
	.byte		        Gs3 , v108
	.byte	W02
	.byte		        An3 , v104
	.byte	W03
	.byte		        Bn3 , v116
	.byte	W02
	.byte		        Cs4 , v108
	.byte	W03
	.byte		N11   , Dn4 , v112
	.byte	W12
	.byte		N02   , Dn3 , v100
	.byte	W06
	.byte		        Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v100
	.byte	W24
	.byte		N11   , Cn4 , v112
	.byte	W12
	.byte		N02   , Cn3 , v100
	.byte	W06
	.byte		        Cn3 , v096
	.byte	W06
	.byte		        Cn3 , v100
	.byte	W12
@ 002   ----------------------------------------
	.byte	W12
	.byte		N32   , Bn3 , v104
	.byte	W36
	.byte		N02   , Dn4 , v108
	.byte	W06
	.byte		        Gn4 , v104
	.byte	W06
	.byte		N05   , Bn4 , v116
	.byte	W06
	.byte		        Gn4 , v104
	.byte	W06
	.byte		        Dn4 , v112
	.byte	W06
	.byte		        Bn4 , v108
	.byte	W06
	.byte		        Cs5 , v120
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
@ 003   ----------------------------------------
	.byte		        En4 , v116
	.byte	W06
	.byte		        En5 , v112
	.byte	W06
	.byte		N44   , An1 , v096, gtp3
	.byte	W48
	.byte		N03   , An1 , v080
	.byte	W03
	.byte		        Bn1 , v072
	.byte	W03
	.byte		        Cs2 , v088
	.byte	W04
	.byte		        Dn2 , v076
	.byte	W03
	.byte		        En2 , v100
	.byte	W04
	.byte		        Fs2 , v084
	.byte	W03
	.byte		        Gn2 , v096
	.byte	W04
	.byte		        An2 , v080
	.byte	W03
	.byte		        Bn2 , v072
	.byte	W03
	.byte		        Cs3 , v088
	.byte	W04
	.byte		        Dn3 , v076
	.byte	W02
@ 004   ----------------------------------------
	.byte	W01
	.byte		        En3 , v100
	.byte	W04
	.byte		        Fs3 , v084
	.byte	W03
	.byte		        Gn3 , v096
	.byte	W04
	.byte		N68   , An3 , v108, gtp3
	.byte	W72
	.byte		N11   , Fs3 
	.byte	W12
@ 005   ----------------------------------------
	.byte		        An3 , v100
	.byte	W12
	.byte		N05   , Gn3 , v112
	.byte	W18
	.byte		        En3 , v108
	.byte	W18
	.byte		        Cn3 , v112
	.byte	W12
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte		        Bn3 , v108
	.byte	W12
	.byte		        An3 , v112
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Gn3 , v108
	.byte	W12
	.byte		N44   , Fs3 , v116, gtp3
	.byte	W48
	.byte		N23   , An3 , v112
	.byte	W24
	.byte		N11   , Fs3 , v104
	.byte	W12
@ 007   ----------------------------------------
	.byte		        An3 , v108
	.byte	W12
	.byte		N05   , En3 , v112
	.byte	W12
	.byte		        En3 , v108
	.byte	W06
	.byte		        Fs3 , v100
	.byte	W06
	.byte		N23   , Gn3 , v116
	.byte	W24
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Bn3 , v108
	.byte	W12
	.byte		        An3 , v112
	.byte	W12
@ 008   ----------------------------------------
	.byte		        Cn4 , v108
	.byte	W12
	.byte		N32   , Dn4 , v120, gtp3
	.byte	W36
	.byte		N11   , An3 , v104
	.byte	W12
	.byte		        Fs3 , v112
	.byte	W12
	.byte		        En3 , v104
	.byte	W12
	.byte		        Gn3 , v112
	.byte	W12
@ 009   ----------------------------------------
	.byte		        An3 , v108
	.byte	W12
	.byte		N05   , Cn4 , v116
	.byte	W18
	.byte		        Gn3 , v104
	.byte	W06
	.byte		N23   , Gn3 , v112
	.byte	W24
	.byte		N05   , En4 , v116
	.byte	W18
	.byte		        Cn4 , v104
	.byte	W06
	.byte		N11   , Cn4 , v112
	.byte	W12
@ 010   ----------------------------------------
	.byte		N05   , Bn3 , v108
	.byte	W06
	.byte		        As3 , v100
	.byte	W06
	.byte		N68   , An3 , v108, gtp3
	.byte	W72
	.byte		N11   , Fs3 
	.byte	W12
@ 011   ----------------------------------------
	.byte		        An3 , v104
	.byte	W12
	.byte		        Cn4 , v120
	.byte	W12
	.byte		N05   , Gn3 , v104
	.byte	W06
	.byte		        Cn4 , v112
	.byte	W06
	.byte		N11   , En4 , v124
	.byte	W12
	.byte		        Cn4 , v112
	.byte	W12
	.byte		        En4 , v127
	.byte	W12
	.byte		N05   , Cn4 , v116
	.byte	W06
	.byte		        En4 , v120
	.byte	W06
	.byte		N23   , Gn4 , v127
	.byte	W12
@ 012   ----------------------------------------
	.byte	W12
	.byte		N32   , Dn4 , v112, gtp2
	.byte	W36
	.byte		        Fs4 , v104, gtp2
	.byte	W36
	.byte		N22   , Dn4 , v108
	.byte	W12
@ 013   ----------------------------------------
	.byte	W12
	.byte		        En4 , v112
	.byte	W24
	.byte		        En4 , v108
	.byte	W24
	.byte		        Cn4 , v112
	.byte	W24
	.byte		        Bn3 , v108
	.byte	W12
@ 014   ----------------------------------------
	.byte	W12
	.byte		N04   , An3 , v112
	.byte	W12
	.byte		        An3 , v108
	.byte	W06
	.byte		        Bn3 , v100
	.byte	W06
	.byte		N28   , Dn4 , v108, gtp1
	.byte	W36
	.byte		N10   
	.byte	W12
	.byte		        Fs4 , v100
	.byte	W11
	.byte		        Dn4 , v104
	.byte	W01
@ 015   ----------------------------------------
	.byte	W12
	.byte		N22   , Fn4 , v112
	.byte	W24
	.byte		        Dn4 , v108
	.byte	W24
	.byte		        Cn4 , v112
	.byte	W24
	.byte		        Cn4 , v108
	.byte	W12
@ 016   ----------------------------------------
	.byte	W12
	.byte		N32   , Fs3 , v120, gtp3
	.byte	W36
	.byte		N05   , Dn3 , v116
	.byte	W24
	.byte		        Dn3 , v108
	.byte	W12
	.byte		        Dn3 , v120
	.byte	W06
	.byte		N17   , Fs3 , v116
	.byte	W06
@ 017   ----------------------------------------
	.byte	W12
	.byte		N23   , En3 , v120
	.byte	W24
	.byte		        Dn3 , v116
	.byte	W24
	.byte		        Cn3 , v120
	.byte	W24
	.byte		        En3 , v116
	.byte	W12
@ 018   ----------------------------------------
	.byte	W12
	.byte		N05   , Fs3 
	.byte	W06
	.byte		        Dn3 , v108
	.byte	W06
	.byte		        An2 , v112
	.byte	W06
	.byte		        Fs3 , v108
	.byte	W06
	.byte		N23   , An3 , v120
	.byte	W24
	.byte		N05   , Gn3 , v116
	.byte	W06
	.byte		        En3 , v108
	.byte	W06
	.byte		        Cn3 , v112
	.byte	W06
	.byte		        Cn4 , v104
	.byte	W06
	.byte		N23   , En4 , v116
	.byte	W12
@ 019   ----------------------------------------
	.byte	W12
	.byte		N05   , Fs4 
	.byte	W06
	.byte		        En4 , v108
	.byte	W06
	.byte		        Dn4 , v112
	.byte	W06
	.byte		        Cn4 , v108
	.byte	W06
	.byte		N44   , Dn4 , v116, gtp3
	.byte	W48
	.byte		N05   , An4 
	.byte	W06
	.byte		        Gn4 , v108
	.byte	W06
@ 020   ----------------------------------------
	.byte		        Fs4 , v112
	.byte	W06
	.byte		        En4 , v108
	.byte	W06
	.byte		N44   , An1 , v088, gtp3
	.byte	W48
	.byte		N02   , An1 , v072
	.byte	W02
	.byte		        Bn1 , v064
	.byte	W02
	.byte		        Cs2 , v080
	.byte	W03
	.byte		        Dn2 , v072
	.byte	W02
	.byte		        En2 , v084
	.byte	W03
	.byte		        Fs2 , v076
	.byte	W02
	.byte		        Gn2 , v096
	.byte	W02
	.byte		        An2 , v088
	.byte	W03
	.byte		        Bn2 , v100
	.byte	W02
	.byte		        Cs3 , v096
	.byte	W03
	.byte		        An2 , v088
	.byte	W02
	.byte		        Bn2 , v084
	.byte	W02
	.byte		        Cs3 , v096
	.byte	W03
	.byte		        Dn3 , v092
	.byte	W02
	.byte		        En3 , v104
	.byte	W03
	.byte	GOTO
	 .word	mus_gym_5_B1
mus_gym_5_B2:
@ 021   ----------------------------------------
	.byte		VOICE , 80
	.byte		        80
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.7) ****************@

mus_gym_6:
	.byte	KEYSH , mus_gym_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_gym_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
mus_gym_6_B1:
@ 001   ----------------------------------------
	.byte	W12
	.byte		N44   , An3 , v100, gtp1
	.byte	W48
	.byte		        Gn3 , v100, gtp1
	.byte	W36
@ 002   ----------------------------------------
	.byte	W12
	.byte		        Fs3 , v100, gtp1
	.byte	W48
	.byte		        Dn3 , v100, gtp1
	.byte	W36
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W12
	.byte		N56   , Dn4 , v100, gtp3
	.byte	W60
	.byte		N23   , An3 
	.byte	W24
@ 005   ----------------------------------------
	.byte		N28   , En4 , v100, gtp1
	.byte	W30
	.byte		N76   , Cn4 , v100, gtp1
	.byte	W66
@ 006   ----------------------------------------
	.byte	W12
	.byte		N64   , Dn4 , v100, gtp1
	.byte	W72
	.byte		N09   , An3 
	.byte	W12
@ 007   ----------------------------------------
	.byte		N32   , Dn4 , v100, gtp3
	.byte	W36
	.byte		N68   , En4 , v100, gtp3
	.byte	W60
@ 008   ----------------------------------------
	.byte	W13
	.byte		        Fs4 , v100, gtp3
	.byte	W68
	.byte	W03
	.byte		        En4 , v100, gtp3
	.byte	W12
@ 009   ----------------------------------------
	.byte	W60
	.byte		N48   , Cn5 
	.byte	W36
@ 010   ----------------------------------------
	.byte	W12
	.byte		N92   , Fs4 , v100, gtp3
	.byte	W84
@ 011   ----------------------------------------
	.byte	W12
	.byte		N23   , Gn4 
	.byte	W24
	.byte		N68   , Cn5 , v100, gtp3
	.byte	W60
@ 012   ----------------------------------------
	.byte	W12
	.byte		N92   , An3 , v100, gtp3
	.byte	W84
@ 013   ----------------------------------------
	.byte	W12
	.byte		        Gn3 , v100, gtp3
	.byte	W84
@ 014   ----------------------------------------
	.byte	W12
	.byte		        Fs3 , v100, gtp3
	.byte	W84
@ 015   ----------------------------------------
	.byte	W10
	.byte		        Fn3 , v100, gtp3
	.byte	W84
	.byte	W02
@ 016   ----------------------------------------
	.byte	W12
	.byte		        An3 , v100, gtp1
	.byte	W84
@ 017   ----------------------------------------
	.byte	W13
	.byte		        Cn4 , v100, gtp1
	.byte	W80
	.byte	W03
@ 018   ----------------------------------------
	.byte	W36
	.byte		        An3 , v100, gtp1
	.byte	W60
@ 019   ----------------------------------------
	.byte	W36
	.byte		N72   , Fs4 
	.byte	W60
@ 020   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_gym_6_B1
mus_gym_6_B2:
@ 021   ----------------------------------------
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_gym_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 7 (Midi-Chn.10) ****************@

mus_gym_7:
	.byte	KEYSH , mus_gym_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_gym_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W56
	.byte	W01
	.byte		N48   , Gn0 , v100, gtp3
	.byte	W36
	.byte	W03
mus_gym_7_B1:
@ 001   ----------------------------------------
	.byte	W12
	.byte		N44   , Fs0 , v116, gtp2
	.byte	W48
	.byte		        Fs0 , v108, gtp2
	.byte	W36
@ 002   ----------------------------------------
	.byte	W11
	.byte		        Fs0 , v116, gtp2
	.byte	W48
	.byte	W01
	.byte		N22   , Fs0 , v112
	.byte	W24
	.byte		        Fs0 , v108
	.byte	W12
@ 003   ----------------------------------------
	.byte	W66
	.byte		N40   , Gn0 , v120, gtp1
	.byte	W30
@ 004   ----------------------------------------
mus_gym_7_004:
	.byte	W12
	.byte		N24   , Fs0 , v116, gtp2
	.byte	W84
	.byte	PEND
@ 005   ----------------------------------------
	.byte	W84
	.byte		N23   , Fs0 , v100
	.byte	W12
@ 006   ----------------------------------------
mus_gym_7_006:
	.byte	W12
	.byte		N44   , Fs0 , v100, gtp3
	.byte	W84
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_gym_7_004
@ 009   ----------------------------------------
	.byte	W84
	.byte		N23   , Fs0 , v100
	.byte	W12
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_gym_7_006
@ 011   ----------------------------------------
	.byte	W84
	.byte		N23   , Gn0 , v100
	.byte	W12
@ 012   ----------------------------------------
	.byte	W12
	.byte		        Fs0 , v120
	.byte	W24
	.byte		N11   , Dn1 , v124
	.byte	W12
	.byte		        Bn0 , v100
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Dn1 , v124
	.byte	W12
@ 013   ----------------------------------------
mus_gym_7_013:
	.byte		N11   , Bn0 , v116
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		        Dn1 , v124
	.byte	W12
	.byte		N09   , Bn0 , v100
	.byte	W12
	.byte		N09   
	.byte	W06
	.byte		N11   , Dn1 , v124
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
mus_gym_7_014:
	.byte		N05   , Bn0 , v116
	.byte	W06
	.byte		        Bn0 , v096
	.byte	W06
	.byte		N11   , Bn0 , v116
	.byte	W24
	.byte		        Dn1 , v124
	.byte	W12
	.byte		        Bn0 , v100
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Dn1 , v124
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
	.byte		        Bn0 , v116
	.byte	W12
	.byte		N22   , Fs0 , v108
	.byte	W22
	.byte		        En0 
	.byte	W02
	.byte		N09   , Bn0 , v100
	.byte	W18
	.byte		N05   , Bn0 , v104
	.byte	W06
	.byte		        Dn1 , v096
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		        Dn1 , v124
	.byte	W06
	.byte		        An1 , v116
	.byte	W06
	.byte		        Gn1 , v108
	.byte	W06
@ 016   ----------------------------------------
	.byte		N11   , Fn1 , v120
	.byte	W12
	.byte		N23   , Fs0 
	.byte	W24
	.byte		N11   , Dn1 , v124
	.byte	W12
	.byte		        Bn0 , v100
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Dn1 , v124
	.byte	W12
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_gym_7_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_gym_7_014
@ 019   ----------------------------------------
	.byte		N05   , Bn0 , v116
	.byte	W06
	.byte		        Bn0 , v096
	.byte	W06
	.byte		N11   , Bn0 , v116
	.byte	W24
	.byte		        Dn1 , v124
	.byte	W12
	.byte		N05   , Bn0 , v100
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn1 , v124
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		        Dn1 , v124
	.byte	W06
	.byte		        Bn1 , v116
	.byte	W06
	.byte		        An1 , v108
	.byte	W06
@ 020   ----------------------------------------
	.byte		        Gn1 , v120
	.byte	W06
	.byte		        Fn1 , v116
	.byte	W06
	.byte		N28   , Fs0 , v100, gtp1
	.byte	W84
	.byte	GOTO
	 .word	mus_gym_7_B1
mus_gym_7_B2:
@ 021   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_gym:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_gym_pri	@ Priority
	.byte	mus_gym_rev	@ Reverb.

	.word	mus_gym_grp

	.word	mus_gym_1
	.word	mus_gym_2
	.word	mus_gym_3
	.word	mus_gym_4
	.word	mus_gym_5
	.word	mus_gym_6
	.word	mus_gym_7

	.end
