	.include "MPlayDef.s"

	.equ	mus_birch_lab_grp, voicegroup_birch_lab
	.equ	mus_birch_lab_pri, 0
	.equ	mus_birch_lab_rev, reverb_set+50
	.equ	mus_birch_lab_mvl, 80
	.equ	mus_birch_lab_key, 0
	.equ	mus_birch_lab_tbs, 1
	.equ	mus_birch_lab_exg, 1
	.equ	mus_birch_lab_cmp, 1

	.section .rodata
	.global	mus_birch_lab
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_birch_lab_1:
	.byte	KEYSH , mus_birch_lab_key+0
mus_birch_lab_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 95*mus_birch_lab_tbs/2
	.byte		VOICE , 73
	.byte		VOL   , 109*mus_birch_lab_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N24   , As3 , v120, gtp2
	.byte	W30
	.byte		N05   , Fs3 , v116
	.byte	W06
	.byte		        Gs3 , v112
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N22   , Bn3 , v120
	.byte	W24
	.byte		N20   , Ds4 , v112
	.byte	W24
@ 002   ----------------------------------------
	.byte		N11   , Cs4 , v120
	.byte	W12
	.byte		N10   , Fs4 , v112
	.byte	W12
	.byte		N11   , Fn4 , v120
	.byte	W12
	.byte		        Fs4 , v112
	.byte	W12
	.byte		N23   , Ds4 , v120
	.byte	W24
	.byte		N11   , Fn4 , v116
	.byte	W12
	.byte		N05   , Ds4 , v112
	.byte	W06
	.byte		        Fn4 , v108
	.byte	W06
@ 003   ----------------------------------------
	.byte		N11   , Fs4 , v120
	.byte	W12
	.byte		        Fn4 , v112
	.byte	W12
	.byte		        Ds4 , v116
	.byte	W12
	.byte		        Fn4 , v112
	.byte	W12
	.byte		N23   , Cs4 , v116
	.byte	W24
	.byte		N09   , Fs3 , v112
	.byte	W12
	.byte		N05   , As3 , v104
	.byte	W06
	.byte		        Cs4 , v096
	.byte	W06
@ 004   ----------------------------------------
	.byte		N11   , Bn3 , v116
	.byte	W12
	.byte		        As3 , v108
	.byte	W12
	.byte		        Gs3 , v112
	.byte	W12
	.byte		        Fs3 , v108
	.byte	W12
	.byte		N20   , As3 , v120
	.byte	W24
	.byte		N21   , Gs3 , v112
	.byte	W24
@ 005   ----------------------------------------
	.byte		N11   , Fs3 , v120
	.byte	W12
	.byte		        Fn3 , v108
	.byte	W12
	.byte		        Fs3 , v116
	.byte	W12
	.byte		        As3 , v108
	.byte	W12
	.byte		        Ds4 , v116
	.byte	W12
	.byte		        As3 , v112
	.byte	W12
	.byte		        Ds4 , v120
	.byte	W12
	.byte		        Fn4 , v116
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Fs4 , v124
	.byte	W12
	.byte		        Fn4 , v120
	.byte	W12
	.byte		        Ds4 , v124
	.byte	W12
	.byte		        Fn4 , v116
	.byte	W12
	.byte		N23   , Cs4 , v120
	.byte	W36
	.byte		N05   , Ds4 , v116
	.byte	W06
	.byte		        Fn4 , v108
	.byte	W06
@ 007   ----------------------------------------
	.byte		N11   , Fs4 , v120
	.byte	W12
	.byte		        En4 , v112
	.byte	W12
	.byte		        Dn4 , v116
	.byte	W12
	.byte		        En4 , v108
	.byte	W12
	.byte		N17   , Fs4 , v120
	.byte	W18
	.byte		N02   , Gn4 , v096
	.byte	W03
	.byte		        Gs4 , v084
	.byte	W03
	.byte		N22   , An4 , v116
	.byte	W24
@ 008   ----------------------------------------
	.byte		N11   , Gs4 , v120
	.byte	W12
	.byte		        Fs4 , v108
	.byte	W12
	.byte		        En4 , v116
	.byte	W12
	.byte		        Fs4 , v108
	.byte	W12
	.byte		N20   , Gs4 , v116
	.byte	W24
	.byte		N23   , Gs4 , v108
	.byte	W24
@ 009   ----------------------------------------
	.byte		N76   , Fs4 , v116, gtp1
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte		N32   , As3 , v112
	.byte	W36
	.byte		N05   , Gs3 , v104
	.byte	W06
	.byte		        As3 , v100
	.byte	W06
	.byte		N11   , Bn3 , v112
	.byte	W12
	.byte		N05   , As3 , v100
	.byte	W12
	.byte		N11   , Gs3 , v108
	.byte	W12
	.byte		N05   , Fs3 , v100
	.byte	W12
@ 012   ----------------------------------------
	.byte		N11   , Gs3 , v108
	.byte	W12
	.byte		N05   , As3 , v096
	.byte	W12
	.byte		N11   , Gs3 , v108
	.byte	W12
	.byte		N05   , Fn3 , v100
	.byte	W12
	.byte		N32   , Cs3 , v104, gtp3
	.byte	W48
@ 013   ----------------------------------------
	.byte		        Gs3 , v108, gtp3
	.byte	W36
	.byte		N05   , Fs3 , v100
	.byte	W06
	.byte		        Fn3 , v092
	.byte	W06
	.byte		N11   , Gs3 , v108
	.byte	W12
	.byte		N05   , Bn3 , v100
	.byte	W12
	.byte		N11   , As3 , v108
	.byte	W12
	.byte		N05   , Gs3 , v100
	.byte	W12
@ 014   ----------------------------------------
	.byte		N32   , Gs3 , v116, gtp3
	.byte	W36
	.byte		N05   , Fs3 , v088
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N32   , As3 , v100, gtp3
	.byte	W48
@ 015   ----------------------------------------
	.byte		        Ds4 , v116
	.byte	W36
	.byte		N05   , Ds4 , v108
	.byte	W06
	.byte		        Fn4 , v104
	.byte	W06
	.byte		N11   , Fs4 , v116
	.byte	W12
	.byte		N05   , Fn4 , v108
	.byte	W12
	.byte		N11   , Ds4 , v116
	.byte	W12
	.byte		N05   , Fn4 , v108
	.byte	W12
@ 016   ----------------------------------------
	.byte		N44   , Cs4 , v112
	.byte	W48
	.byte		N32   , Fs3 , v108
	.byte	W36
	.byte		N05   , Gs3 , v100
	.byte	W06
	.byte		        As3 , v092
	.byte	W06
@ 017   ----------------------------------------
	.byte		N23   , Bn3 , v116
	.byte	W24
	.byte		N11   , As3 , v104
	.byte	W12
	.byte		N05   , Gs3 , v100
	.byte	W12
	.byte		N11   , Gs3 , v108
	.byte	W12
	.byte		N04   , Fs3 , v100
	.byte	W12
	.byte		N11   , Fn3 , v112
	.byte	W12
	.byte		N04   , Fs3 , v104
	.byte	W12
@ 018   ----------------------------------------
	.byte		N44   , Gs3 , v112
	.byte	W48
	.byte		        An3 , v104
	.byte	W48
	.byte	GOTO
	 .word	mus_birch_lab_1_B1
mus_birch_lab_1_B2:
@ 019   ----------------------------------------
	.byte		VOICE , 73
	.byte		        73
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_birch_lab_2:
	.byte	KEYSH , mus_birch_lab_key+0
mus_birch_lab_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_birch_lab_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_birch_lab_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_birch_lab_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_birch_lab_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Cs3 , v040
	.byte	W12
	.byte		N04   , As2 
	.byte	W06
	.byte		        Bn2 , v036
	.byte	W06
	.byte		N20   , Cs3 , v040
	.byte	W24
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N04   , Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N20   , Ds3 
	.byte	W24
@ 001   ----------------------------------------
	.byte		N11   , Fn3 
	.byte	W12
	.byte		N04   , Cs3 
	.byte	W06
	.byte		        Ds3 , v036
	.byte	W06
	.byte		N11   , Fn3 , v040
	.byte	W12
	.byte		N05   , As2 , v036
	.byte	W12
	.byte		N23   , Bn2 , v040
	.byte	W24
	.byte		        Cs3 
	.byte	W24
@ 002   ----------------------------------------
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N11   , Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N22   , Fn3 
	.byte	W48
@ 003   ----------------------------------------
	.byte		N32   , Ds3 , v040, gtp3
	.byte	W36
	.byte		N05   , As2 , v036
	.byte	W12
	.byte		N22   , Dn3 , v040
	.byte	W24
	.byte		        Fn3 
	.byte	W24
@ 004   ----------------------------------------
	.byte		N10   , Ds3 
	.byte	W12
	.byte		        Dn3 , v036
	.byte	W12
	.byte		        Ds3 , v040
	.byte	W12
	.byte		        Fn3 , v036
	.byte	W12
	.byte		        Fs3 , v040
	.byte	W12
	.byte		        Fn3 , v036
	.byte	W12
	.byte		        Fs3 , v040
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N32   , As3 , v040, gtp2
	.byte	W36
	.byte		N04   , Fs3 
	.byte	W12
	.byte		N10   , Fn3 
	.byte	W12
	.byte		N04   , En3 
	.byte	W06
	.byte		        Ds3 , v036
	.byte	W06
	.byte		N22   , Cs3 
	.byte	W24
@ 006   ----------------------------------------
	.byte	W12
	.byte		N04   , Dn3 , v040
	.byte	W06
	.byte		        En3 , v036
	.byte	W06
	.byte		N10   , Fs3 , v040
	.byte	W12
	.byte		N05   , Dn3 , v036
	.byte	W12
	.byte		N16   , Fs3 , v040
	.byte	W18
	.byte		N01   , Gn3 , v036
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		N22   , An3 , v040
	.byte	W24
@ 007   ----------------------------------------
	.byte	W12
	.byte		N04   , En3 , v036
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N10   , Gs3 , v040
	.byte	W12
	.byte		N05   , Fs3 , v036
	.byte	W12
	.byte		N19   , En3 , v040
	.byte	W24
	.byte		        En3 , v036
	.byte	W24
@ 008   ----------------------------------------
	.byte		N68   , Fs3 , v040, gtp3
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte		N32   , Cs3 , v040, gtp2
	.byte	W36
	.byte		N05   , As2 , v036
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N04   , Fs3 
	.byte	W12
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N04   , As2 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N32   , Cs3 , v040, gtp2
	.byte	W36
	.byte		N05   , As2 , v036
	.byte	W06
	.byte		        Bn2 , v032
	.byte	W06
	.byte		N11   , Cs3 , v036
	.byte	W12
	.byte		N05   , Gs2 
	.byte	W06
	.byte		        As2 , v032
	.byte	W06
	.byte		N04   , Bn2 , v036
	.byte	W12
	.byte		        Gs2 
	.byte	W12
@ 012   ----------------------------------------
	.byte		N32   , Cs3 , v036, gtp2
	.byte	W36
	.byte		N05   , Gs2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N11   , Dn3 , v040
	.byte	W12
	.byte		N02   , As2 , v036
	.byte	W12
	.byte		N11   , Dn3 , v040
	.byte	W12
	.byte		N02   , Fn3 , v036
	.byte	W12
@ 013   ----------------------------------------
	.byte		N32   , Ds3 , v040, gtp2
	.byte	W36
	.byte		N11   , Dn3 , v036
	.byte	W12
	.byte		N17   , Cs3 , v040
	.byte	W18
	.byte		N02   , Cs3 , v036
	.byte	W03
	.byte		        Ds3 , v032
	.byte	W03
	.byte		N23   , En3 , v040
	.byte	W24
@ 014   ----------------------------------------
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N05   , Gs2 , v036
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N03   , Gs3 , v040
	.byte	W12
	.byte		        Gs2 , v036
	.byte	W12
	.byte		N17   , Cs3 , v040
	.byte	W18
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N02   , Fn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N05   
	.byte	W06
	.byte		        As2 , v036
	.byte	W06
	.byte		        Cs3 , v040
	.byte	W06
	.byte		N03   , Fn3 , v036
	.byte	W06
	.byte		        Gs3 , v040
	.byte	W12
	.byte		N02   , Cs3 , v036
	.byte	W12
	.byte		N23   , Fs3 , v040
	.byte	W24
	.byte		        En3 
	.byte	W24
@ 016   ----------------------------------------
	.byte		        Bn2 , v036
	.byte	W30
	.byte		N05   , Gs2 
	.byte	W06
	.byte		        As2 , v032
	.byte	W06
	.byte		        Bn2 , v036
	.byte	W06
	.byte		N23   , Cn3 
	.byte	W30
	.byte		N05   , Gs2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Bn2 , v032
	.byte	W06
@ 017   ----------------------------------------
	.byte		N44   , Cs3 , v040, gtp2
	.byte	W48
	.byte		        Cs3 , v036, gtp2
	.byte	W48
	.byte	GOTO
	 .word	mus_birch_lab_2_B1
mus_birch_lab_2_B2:
@ 018   ----------------------------------------
	.byte		VOICE , 81
	.byte		        81
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_birch_lab_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_birch_lab_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_birch_lab_3:
	.byte	KEYSH , mus_birch_lab_key+0
mus_birch_lab_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 32
	.byte		VOL   , 127*mus_birch_lab_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N28   , Fs0 , v120, gtp1
	.byte	W36
	.byte		N02   , Fs0 , v088
	.byte	W12
	.byte		N28   , Gs0 , v112, gtp1
	.byte	W36
	.byte		N02   , Gs0 , v084
	.byte	W12
@ 001   ----------------------------------------
	.byte		N28   , As0 , v120, gtp1
	.byte	W36
	.byte		N02   , As0 , v092
	.byte	W12
	.byte		N23   , Bn0 , v116
	.byte	W24
	.byte		        Cs1 , v112
	.byte	W24
@ 002   ----------------------------------------
	.byte		N28   , Ds1 , v120, gtp1
	.byte	W36
	.byte		N02   , Ds1 , v088
	.byte	W12
	.byte		N23   , As0 , v116
	.byte	W24
	.byte		        An0 
	.byte	W24
@ 003   ----------------------------------------
	.byte		N28   , Gs0 , v116, gtp1
	.byte	W36
	.byte		N02   , Gs0 , v088
	.byte	W12
	.byte		N28   , As0 , v120, gtp1
	.byte	W36
	.byte		N02   , As0 , v088
	.byte	W12
@ 004   ----------------------------------------
	.byte		N23   , Ds1 , v120
	.byte	W24
	.byte		        Dn1 , v112
	.byte	W24
	.byte		        Cs1 , v120
	.byte	W24
	.byte		        Cn1 , v112
	.byte	W24
@ 005   ----------------------------------------
	.byte		N28   , Bn0 , v120, gtp1
	.byte	W36
	.byte		N02   , Bn0 , v092
	.byte	W12
	.byte		N23   , As0 , v112
	.byte	W24
	.byte		        Cs1 
	.byte	W24
@ 006   ----------------------------------------
	.byte		N28   , Dn1 , v120, gtp1
	.byte	W36
	.byte		N02   , Dn1 , v088
	.byte	W12
	.byte		N23   , An0 , v116
	.byte	W24
	.byte		        Dn1 , v108
	.byte	W24
@ 007   ----------------------------------------
	.byte		N28   , En1 , v116, gtp1
	.byte	W36
	.byte		N02   , En1 , v088
	.byte	W12
	.byte		N28   , Bn0 , v120, gtp1
	.byte	W36
	.byte		N02   , Bn0 , v088
	.byte	W12
@ 008   ----------------------------------------
	.byte		N28   , Fs0 , v116, gtp1
	.byte	W36
	.byte		N02   , Fs0 , v088
	.byte	W12
	.byte		N28   , Cs1 , v116, gtp1
	.byte	W36
	.byte		N02   , Cs1 , v088
	.byte	W12
@ 009   ----------------------------------------
	.byte		N28   , Fs1 , v116, gtp1
	.byte	W36
	.byte		N02   , Fs1 , v088
	.byte	W12
	.byte		N28   , Cs1 , v116, gtp1
	.byte	W36
	.byte		N02   , Cs1 , v088
	.byte	W12
@ 010   ----------------------------------------
	.byte		N28   , Fs0 , v116, gtp1
	.byte	W36
	.byte		N02   , Fs0 , v088
	.byte	W12
	.byte		N28   , Fs0 , v116, gtp1
	.byte	W36
	.byte		N02   , Fs0 , v088
	.byte	W12
@ 011   ----------------------------------------
	.byte		N28   , Cs1 , v116, gtp1
	.byte	W36
	.byte		N02   , Cs1 , v088
	.byte	W12
	.byte		N28   , Gs0 , v116, gtp1
	.byte	W36
	.byte		N02   , Gs0 , v088
	.byte	W12
@ 012   ----------------------------------------
	.byte		N28   , Cs1 , v116, gtp1
	.byte	W36
	.byte		N02   , Cs1 , v088
	.byte	W12
	.byte		N28   , Dn1 , v116, gtp1
	.byte	W36
	.byte		N02   , Dn1 , v088
	.byte	W11
	.byte		N28   , Ds1 , v116, gtp1
	.byte	W01
@ 013   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   , Dn1 , v112
	.byte	W13
	.byte		N23   , Cs1 , v120
	.byte	W24
	.byte		        Fs0 , v112
	.byte	W24
@ 014   ----------------------------------------
	.byte		N28   , Gs0 , v116, gtp1
	.byte	W36
	.byte		N02   , Gs0 , v088
	.byte	W12
	.byte		N28   , Cs1 , v112, gtp1
	.byte	W36
	.byte		N02   , Cs1 , v088
	.byte	W12
@ 015   ----------------------------------------
	.byte		N28   , As0 , v116, gtp1
	.byte	W36
	.byte		N02   , As0 , v088
	.byte	W12
	.byte		N28   , An0 , v112, gtp1
	.byte	W36
	.byte		N02   , An0 , v088
	.byte	W12
@ 016   ----------------------------------------
	.byte		N28   , Gs0 , v120, gtp1
	.byte	W36
	.byte		N02   , Gs0 , v088
	.byte	W12
	.byte		N28   , Cn1 , v116, gtp1
	.byte	W36
	.byte		N02   , Cn1 , v088
	.byte	W12
@ 017   ----------------------------------------
	.byte		N28   , Cs1 , v120, gtp1
	.byte	W36
	.byte		N02   , Cs1 , v088
	.byte	W12
	.byte		N23   , Cs1 , v112
	.byte	W24
	.byte		        Gs0 , v108
	.byte	W24
	.byte	GOTO
	 .word	mus_birch_lab_3_B1
mus_birch_lab_3_B2:
@ 018   ----------------------------------------
	.byte		VOICE , 32
	.byte		        32
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_birch_lab_4:
	.byte	KEYSH , mus_birch_lab_key+0
mus_birch_lab_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 24
	.byte		VOL   , 110*mus_birch_lab_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N44   , Fs1 , v108, gtp3
	.byte	W48
	.byte		        Gs1 , v100, gtp3
	.byte	W48
@ 001   ----------------------------------------
	.byte		        As1 , v108, gtp3
	.byte	W48
	.byte		N23   , Bn1 , v104
	.byte	W24
	.byte		        Cs2 , v100
	.byte	W24
@ 002   ----------------------------------------
	.byte		N44   , Ds2 , v108, gtp3
	.byte	W48
	.byte		N23   , As1 , v104
	.byte	W24
	.byte		        An1 , v108
	.byte	W24
@ 003   ----------------------------------------
	.byte		N44   , Gs1 , v108, gtp3
	.byte	W48
	.byte		        As1 , v104, gtp3
	.byte	W48
@ 004   ----------------------------------------
	.byte		N23   , Ds2 , v108
	.byte	W24
	.byte		        Dn2 , v104
	.byte	W24
	.byte		        Cs2 , v108
	.byte	W24
	.byte		        Cn2 , v100
	.byte	W24
@ 005   ----------------------------------------
	.byte		N44   , Bn1 , v108, gtp3
	.byte	W48
	.byte		N23   , As1 , v104
	.byte	W24
	.byte		        Cs2 , v100
	.byte	W24
@ 006   ----------------------------------------
	.byte		N44   , Dn2 , v108, gtp3
	.byte	W48
	.byte		N23   , En2 , v104
	.byte	W24
	.byte		        Fs2 , v100
	.byte	W24
@ 007   ----------------------------------------
	.byte		N44   , En2 , v108, gtp3
	.byte	W48
	.byte		N23   , Fs2 , v104
	.byte	W24
	.byte		        Gs2 , v100
	.byte	W24
@ 008   ----------------------------------------
	.byte		N44   , Fs2 , v104, gtp3
	.byte	W48
	.byte		N23   , Cs2 
	.byte	W24
	.byte		        Gs2 , v100
	.byte	W24
@ 009   ----------------------------------------
	.byte		N44   , Fs2 , v108, gtp2
	.byte	W48
	.byte		        Cs2 , v100, gtp2
	.byte	W48
@ 010   ----------------------------------------
	.byte		N11   , Fs1 , v120
	.byte	W12
	.byte		N02   , Cs2 , v112
	.byte	W12
	.byte		        Fs2 , v120
	.byte	W12
	.byte		        Cs2 , v108
	.byte	W12
	.byte		N11   , Fs1 , v116
	.byte	W12
	.byte		N02   , Cs2 , v108
	.byte	W12
	.byte		        Fs2 , v120
	.byte	W12
	.byte		        Cs2 , v112
	.byte	W12
@ 011   ----------------------------------------
	.byte		N11   , Cs2 , v124
	.byte	W12
	.byte		N02   , Fn2 , v112
	.byte	W12
	.byte		        Gs2 , v120
	.byte	W12
	.byte		        Cs2 , v112
	.byte	W12
	.byte		N11   , Gs1 , v116
	.byte	W12
	.byte		N02   , Fn2 , v112
	.byte	W12
	.byte		        Gs2 , v120
	.byte	W12
	.byte		        Fn2 , v112
	.byte	W12
@ 012   ----------------------------------------
	.byte		N11   , Cs2 , v124
	.byte	W12
	.byte		N02   , Fn2 , v112
	.byte	W12
	.byte		        Gs2 , v116
	.byte	W12
	.byte		        Cs2 , v112
	.byte	W12
	.byte		N11   , Dn2 , v124
	.byte	W12
	.byte		N02   , Fn2 , v112
	.byte	W12
	.byte		        Gs2 , v120
	.byte	W12
	.byte		        Dn2 , v112
	.byte	W12
@ 013   ----------------------------------------
	.byte		N32   , Ds2 , v120, gtp3
	.byte	W36
	.byte		N11   , Dn2 , v112
	.byte	W12
	.byte		N23   , Cs2 , v120
	.byte	W24
	.byte		        Fs2 , v112
	.byte	W24
@ 014   ----------------------------------------
	.byte		N44   , Ds2 , v116, gtp3
	.byte	W48
	.byte		        Gs2 , v104, gtp3
	.byte	W48
@ 015   ----------------------------------------
	.byte		        Fn2 , v116, gtp3
	.byte	W48
	.byte		        An1 , v112, gtp3
	.byte	W48
@ 016   ----------------------------------------
	.byte		N22   , Ds2 , v116
	.byte	W24
	.byte		N04   , Ds2 , v108
	.byte	W06
	.byte		        Dn2 , v096
	.byte	W06
	.byte		        Ds2 , v104
	.byte	W06
	.byte		        Fn2 , v100
	.byte	W06
	.byte		N22   , Gs2 , v112
	.byte	W24
	.byte		N04   , Fn2 , v108
	.byte	W06
	.byte		        En2 , v100
	.byte	W06
	.byte		        Fn2 , v108
	.byte	W06
	.byte		        Gs2 , v100
	.byte	W06
@ 017   ----------------------------------------
	.byte		N44   , Fn2 , v120, gtp3
	.byte	W48
	.byte		        Fn2 , v112, gtp3
	.byte	W48
	.byte	GOTO
	 .word	mus_birch_lab_4_B1
mus_birch_lab_4_B2:
@ 018   ----------------------------------------
	.byte		VOICE , 24
	.byte		        24
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_birch_lab_5:
	.byte	KEYSH , mus_birch_lab_key+0
mus_birch_lab_5_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 71
	.byte		VOL   , 93*mus_birch_lab_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N23   , Cs4 , v064
	.byte	W48
	.byte		N22   , Bn3 , v060
	.byte	W24
	.byte		        Ds4 , v064
	.byte	W24
@ 001   ----------------------------------------
	.byte		N28   , Cs4 , v060, gtp1
	.byte	W48
	.byte		N22   , Ds4 , v068
	.byte	W24
	.byte		        Fn4 , v064
	.byte	W24
@ 002   ----------------------------------------
	.byte		N32   , Fs4 , v072, gtp3
	.byte	W48
	.byte		N22   , Cs4 , v064
	.byte	W24
	.byte		N10   , Fs3 , v056
	.byte	W12
	.byte		N04   , As3 , v064
	.byte	W06
	.byte		        Cs4 , v060
	.byte	W06
@ 003   ----------------------------------------
	.byte		N22   , Ds4 , v068
	.byte	W48
	.byte		N23   , Dn4 
	.byte	W24
	.byte		        Fn4 , v072
	.byte	W24
@ 004   ----------------------------------------
	.byte		        Ds4 , v064
	.byte	W24
	.byte		        Dn4 , v060
	.byte	W24
	.byte		        Ds4 , v064
	.byte	W24
	.byte		        Fn4 , v060
	.byte	W24
@ 005   ----------------------------------------
	.byte		        Fs4 , v064
	.byte	W48
	.byte		        Cs4 
	.byte	W48
@ 006   ----------------------------------------
	.byte		        Dn4 
	.byte	W48
	.byte		N22   , Fs4 , v060
	.byte	W24
	.byte		        An4 , v064
	.byte	W24
@ 007   ----------------------------------------
	.byte		N23   , En4 
	.byte	W48
	.byte		        Gs4 , v060
	.byte	W24
	.byte		        En4 , v064
	.byte	W24
@ 008   ----------------------------------------
	.byte		        Fs4 
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
	.byte	GOTO
	 .word	mus_birch_lab_5_B1
mus_birch_lab_5_B2:
@ 018   ----------------------------------------
	.byte		VOICE , 71
	.byte		        71
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_birch_lab_6:
	.byte	KEYSH , mus_birch_lab_key+0
mus_birch_lab_6_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 85
	.byte		VOL   , 91*mus_birch_lab_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N23   , Fs3 , v084
	.byte	W24
	.byte		        As3 , v080
	.byte	W24
	.byte		        Gs3 , v084
	.byte	W24
	.byte		        Ds3 
	.byte	W24
@ 001   ----------------------------------------
	.byte		N44   , Fn3 , v088, gtp3
	.byte	W48
	.byte		N23   , Fs3 , v084
	.byte	W24
	.byte		        Gs3 
	.byte	W24
@ 002   ----------------------------------------
	.byte		N11   , Fn3 
	.byte	W12
	.byte		N32   , Fs3 , v088, gtp3
	.byte	W36
	.byte		N23   , Fn3 , v080
	.byte	W24
	.byte		        Cn3 , v084
	.byte	W24
@ 003   ----------------------------------------
	.byte		N44   , Ds3 , v084, gtp3
	.byte	W48
	.byte		N23   , Dn3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
@ 004   ----------------------------------------
	.byte		        Fs3 
	.byte	W24
	.byte		        Fn3 , v080
	.byte	W24
	.byte		        Fs3 , v084
	.byte	W24
	.byte		        Gs3 
	.byte	W24
@ 005   ----------------------------------------
	.byte		N44   , As3 , v084, gtp3
	.byte	W48
	.byte		N23   , Gs3 
	.byte	W24
	.byte		        As3 , v080
	.byte	W24
@ 006   ----------------------------------------
	.byte		N44   , An3 , v088, gtp3
	.byte	W48
	.byte		N23   , Fs3 , v084
	.byte	W24
	.byte		        An3 , v080
	.byte	W24
@ 007   ----------------------------------------
	.byte		N44   , Bn3 , v088, gtp3
	.byte	W48
	.byte		N23   , Gs3 , v084
	.byte	W24
	.byte		        Bn3 , v080
	.byte	W24
@ 008   ----------------------------------------
	.byte		N44   , As3 , v084, gtp3
	.byte	W48
	.byte		N23   , Bn3 
	.byte	W24
	.byte		        Gs3 , v080
	.byte	W24
@ 009   ----------------------------------------
	.byte		N44   , As3 , v088, gtp3
	.byte	W48
	.byte		N23   , Gs3 , v084
	.byte	W24
	.byte		        Bn3 , v080
	.byte	W24
@ 010   ----------------------------------------
	.byte	W12
	.byte		N05   , As3 , v092
	.byte	W06
	.byte		        Bn3 , v088
	.byte	W06
	.byte		N03   , As3 , v096
	.byte	W12
	.byte		        Gs3 , v092
	.byte	W24
	.byte		N05   , As3 , v096
	.byte	W06
	.byte		        Bn3 , v088
	.byte	W06
	.byte		N03   , Cs4 , v096
	.byte	W12
	.byte		        As3 , v092
	.byte	W12
@ 011   ----------------------------------------
	.byte	W12
	.byte		N05   , Gs3 , v096
	.byte	W06
	.byte		        As3 , v092
	.byte	W06
	.byte		N03   , Gs3 , v096
	.byte	W12
	.byte		        Fn3 , v092
	.byte	W24
	.byte		N05   , Gs3 , v096
	.byte	W06
	.byte		        As3 , v092
	.byte	W06
	.byte		N03   , Bn3 , v096
	.byte	W12
	.byte		        Gs3 , v092
	.byte	W12
@ 012   ----------------------------------------
	.byte	W12
	.byte		N05   , Gs3 , v096
	.byte	W06
	.byte		        As3 , v092
	.byte	W06
	.byte		N03   , Gs3 , v100
	.byte	W12
	.byte		        Fn3 , v096
	.byte	W24
	.byte		N05   , Gs3 
	.byte	W06
	.byte		        Bn3 , v088
	.byte	W06
	.byte		        As3 , v100
	.byte	W12
	.byte		        Gs3 , v096
	.byte	W12
@ 013   ----------------------------------------
	.byte		N32   , Gs3 , v092, gtp3
	.byte	W36
	.byte		N05   , Fs3 , v088
	.byte	W06
	.byte		        Gs3 , v080
	.byte	W06
	.byte		N17   , As3 , v096
	.byte	W18
	.byte		N02   , As3 , v084
	.byte	W03
	.byte		        Bn3 , v080
	.byte	W03
	.byte		N23   , Cs4 , v084
	.byte	W24
@ 014   ----------------------------------------
	.byte		N44   , Ds4 , v088, gtp3
	.byte	W48
	.byte		N23   , Fs4 , v084
	.byte	W24
	.byte		        Fn4 , v080
	.byte	W24
@ 015   ----------------------------------------
	.byte		N44   , Cs4 , v080, gtp3
	.byte	W48
	.byte		        Fs3 , v076, gtp3
	.byte	W48
@ 016   ----------------------------------------
	.byte		N23   , Bn3 , v084
	.byte	W24
	.byte		N05   , As3 
	.byte	W06
	.byte		        Gs3 , v076
	.byte	W06
	.byte		        As3 , v080
	.byte	W06
	.byte		        Bn3 , v076
	.byte	W06
	.byte		N23   , Cn4 , v084
	.byte	W24
	.byte		N05   , Gs3 , v080
	.byte	W06
	.byte		        Gn3 , v076
	.byte	W06
	.byte		        Gs3 , v080
	.byte	W06
	.byte		        Gn3 , v064
	.byte		N05   , Cn4 , v076
	.byte	W06
@ 017   ----------------------------------------
	.byte		N44   , Cs4 , v084, gtp3
	.byte	W48
	.byte		N23   , An3 , v080
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        Gs3 , v076
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        As3 , v076
	.byte	W06
	.byte	GOTO
	 .word	mus_birch_lab_6_B1
mus_birch_lab_6_B2:
@ 018   ----------------------------------------
	.byte		VOICE , 85
	.byte		        85
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_birch_lab:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_birch_lab_pri	@ Priority
	.byte	mus_birch_lab_rev	@ Reverb.

	.word	mus_birch_lab_grp

	.word	mus_birch_lab_1
	.word	mus_birch_lab_2
	.word	mus_birch_lab_3
	.word	mus_birch_lab_4
	.word	mus_birch_lab_5
	.word	mus_birch_lab_6

	.end
