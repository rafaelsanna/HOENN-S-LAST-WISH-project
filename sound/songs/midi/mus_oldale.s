	.include "MPlayDef.s"

	.equ	mus_oldale_grp, voicegroup_oldale
	.equ	mus_oldale_pri, 0
	.equ	mus_oldale_rev, reverb_set+50
	.equ	mus_oldale_mvl, 80
	.equ	mus_oldale_key, 0
	.equ	mus_oldale_tbs, 1
	.equ	mus_oldale_exg, 1
	.equ	mus_oldale_cmp, 1

	.section .rodata
	.global	mus_oldale
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_oldale_1:
	.byte	KEYSH , mus_oldale_key+0
mus_oldale_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 100*mus_oldale_tbs/2
	.byte		VOICE , 46
	.byte		VOL   , 127*mus_oldale_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W12
	.byte		N11   , Fn2 , v072
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 002   ----------------------------------------
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 003   ----------------------------------------
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 004   ----------------------------------------
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 005   ----------------------------------------
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 006   ----------------------------------------
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 007   ----------------------------------------
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 008   ----------------------------------------
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W24
	.byte		        Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 010   ----------------------------------------
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N02   , Fn2 
	.byte	W02
	.byte		N01   , As2 
	.byte	W03
	.byte		N02   , Dn3 
	.byte	W02
	.byte		N16   , Fn3 
	.byte	W17
	.byte		N01   , As2 
	.byte	W02
	.byte		        Dn3 
	.byte	W03
	.byte		N02   , Fn3 
	.byte	W02
	.byte		N16   , As3 
	.byte	W17
@ 011   ----------------------------------------
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 012   ----------------------------------------
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N01   , An2 
	.byte	W02
	.byte		        Cn3 
	.byte	W03
	.byte		N18   , Fn3 
	.byte	W19
	.byte		N01   , Cn2 
	.byte	W02
	.byte		        Fn2 
	.byte	W03
	.byte		N18   , An2 
	.byte	W19
@ 013   ----------------------------------------
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 014   ----------------------------------------
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 015   ----------------------------------------
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 016   ----------------------------------------
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N01   , Cn3 
	.byte	W02
	.byte		        Fn3 
	.byte	W03
	.byte		N18   , An3 
	.byte	W19
	.byte		N01   , Fn2 
	.byte	W02
	.byte		        An2 
	.byte	W03
	.byte		N18   , Cn3 
	.byte	W19
	.byte	GOTO
	 .word	mus_oldale_1_B1
mus_oldale_1_B2:
@ 017   ----------------------------------------
	.byte		VOICE , 46
	.byte		        46
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_oldale_2:
	.byte	KEYSH , mus_oldale_key+0
mus_oldale_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte		VOL   , 127*mus_oldale_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N32   , As4 , v088, gtp3
	.byte	W36
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 001   ----------------------------------------
	.byte		N23   , As3 
	.byte	W36
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N11   , As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 002   ----------------------------------------
	.byte		N68   , Cn4 , v088, gtp3
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		N32   , As4 , v088, gtp3
	.byte	W36
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N23   , As3 
	.byte	W36
	.byte		N05   , Gn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N11   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N68   , Dn5 , v088, gtp3
	.byte	W96
@ 007   ----------------------------------------
	.byte	W48
	.byte		N05   , An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 008   ----------------------------------------
	.byte		N32   , Dn5 , v088, gtp3
	.byte	W36
	.byte		N05   , As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N11   , Dn5 
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
@ 009   ----------------------------------------
	.byte		N32   , Fn5 , v088, gtp3
	.byte	W36
	.byte		N11   , Gn5 
	.byte	W12
	.byte		N32   , Dn5 , v088, gtp3
	.byte	W48
@ 010   ----------------------------------------
	.byte		        Ds5 , v088, gtp3
	.byte	W36
	.byte		N05   , Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		N11   , Ds5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N32   , As4 , v088, gtp3
	.byte	W36
	.byte		N11   , Cn5 
	.byte	W12
	.byte		N32   , An4 , v088, gtp3
	.byte	W48
@ 012   ----------------------------------------
	.byte		        As4 , v088, gtp3
	.byte	W36
	.byte		N05   , Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		N11   , As4 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N32   , Cs5 , v088, gtp3
	.byte	W36
	.byte		N05   , Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		N11   , As4 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N32   , Cn5 , v088, gtp3
	.byte	W36
	.byte		N11   , Dn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N07   , As5 
	.byte	W08
	.byte		        An5 
	.byte	W08
	.byte		        As5 
	.byte	W08
@ 015   ----------------------------------------
	.byte		N68   , An5 , v088, gtp3
	.byte	W96
	.byte	GOTO
	 .word	mus_oldale_2_B1
mus_oldale_2_B2:
@ 016   ----------------------------------------
	.byte		VOICE , 73
	.byte		        73
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_oldale_3:
	.byte	KEYSH , mus_oldale_key+0
mus_oldale_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 91
	.byte		VOL   , 101*mus_oldale_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
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
	.byte		N32   , An3 , v056, gtp3
	.byte	W36
	.byte		N05   , Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N32   , Dn3 , v048, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N23   , Gn2 
	.byte	W36
	.byte		N05   , Dn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N68   , Fn3 , v048, gtp3
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte		N32   , Dn3 , v048, gtp3
	.byte	W36
	.byte		N05   , As2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 009   ----------------------------------------
	.byte		N32   , Fn3 , v048, gtp3
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N32   , Dn3 , v048, gtp3
	.byte	W48
@ 010   ----------------------------------------
	.byte		        Ds3 , v048, gtp3
	.byte	W36
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N11   , Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N32   , As2 , v048, gtp3
	.byte	W36
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N32   , An2 , v048, gtp3
	.byte	W48
@ 012   ----------------------------------------
	.byte		        As2 , v048, gtp3
	.byte	W36
	.byte		N05   , Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N11   , As2 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N32   , Cs3 , v048, gtp3
	.byte	W36
	.byte		N05   , Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N11   , As2 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N32   , Cn3 , v048, gtp3
	.byte	W36
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N07   , As3 
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		        As3 
	.byte	W08
@ 015   ----------------------------------------
	.byte		N68   , An3 , v048, gtp3
	.byte	W96
	.byte	GOTO
	 .word	mus_oldale_3_B1
mus_oldale_3_B2:
@ 016   ----------------------------------------
	.byte		VOICE , 91
	.byte		        91
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_oldale_4:
	.byte	KEYSH , mus_oldale_key+0
mus_oldale_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 60
	.byte		VOL   , 127*mus_oldale_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
	.byte		N44   , Fn2 , v036, gtp3
	.byte	W48
@ 002   ----------------------------------------
	.byte		N32   , Fn3 , v064, gtp3
	.byte	W36
	.byte		N11   , Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 003   ----------------------------------------
	.byte		N68   , Cn3 , v064, gtp3
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W48
	.byte		N44   , Cn3 , v036, gtp3
	.byte	W48
@ 006   ----------------------------------------
	.byte		N32   , Dn3 , v064, gtp3
	.byte	W36
	.byte		N11   , As2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 007   ----------------------------------------
	.byte		N44   , Cn3 , v064, gtp3
	.byte	W48
	.byte		        Ds3 , v064, gtp3
	.byte	W48
@ 008   ----------------------------------------
	.byte		N92   , As2 , v056, gtp3
	.byte	W96
@ 009   ----------------------------------------
	.byte		N44   , Cn3 , v056, gtp3
	.byte	W48
	.byte		N23   , Dn3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N44   , Ds3 , v056, gtp3
	.byte	W48
	.byte		        Ds3 , v056, gtp3
	.byte	W48
@ 011   ----------------------------------------
	.byte		N17   , As2 
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N44   , Fn3 , v056, gtp3
	.byte	W48
@ 012   ----------------------------------------
	.byte		N32   , Gn3 , v056, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N44   , Ds3 , v056, gtp3
	.byte	W48
@ 013   ----------------------------------------
	.byte		N32   , Cs3 , v056, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N44   , Fs3 , v056, gtp3
	.byte	W48
@ 014   ----------------------------------------
	.byte		        An3 , v056, gtp3
	.byte	W48
	.byte		        Cn3 , v056, gtp3
	.byte	W48
@ 015   ----------------------------------------
	.byte		N92   , Fn3 , v056, gtp3
	.byte	W96
	.byte	GOTO
	 .word	mus_oldale_4_B1
mus_oldale_4_B2:
@ 016   ----------------------------------------
	.byte		VOICE , 60
	.byte		        60
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_oldale_5:
	.byte	KEYSH , mus_oldale_key+0
mus_oldale_5_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		VOL   , 127*mus_oldale_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W12
	.byte		N11   , Fn1 , v052
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N23   , Cn2 
	.byte	W24
	.byte		        Fn2 
	.byte	W24
@ 001   ----------------------------------------
	.byte	W12
	.byte		N11   , Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N23   , Fn2 
	.byte	W24
	.byte		        As1 
	.byte	W24
@ 002   ----------------------------------------
	.byte	W12
	.byte		N11   , An1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N23   , An2 
	.byte	W24
	.byte		        Fn2 
	.byte	W24
@ 003   ----------------------------------------
	.byte		        Cn2 
	.byte	W48
	.byte		        Ds2 
	.byte	W24
	.byte		        Fn2 
	.byte	W24
@ 004   ----------------------------------------
	.byte	W12
	.byte		N11   , Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N23   , Fn2 
	.byte	W24
	.byte		        An2 
	.byte	W24
@ 005   ----------------------------------------
	.byte	W12
	.byte		N11   , As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		        An2 
	.byte	W24
@ 006   ----------------------------------------
	.byte	W12
	.byte		N11   , Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		        Fn2 
	.byte	W24
@ 007   ----------------------------------------
	.byte		        Gn2 
	.byte	W96
@ 008   ----------------------------------------
	.byte		N44   , Dn2 , v052, gtp3
	.byte	W48
	.byte		        As1 , v052, gtp3
	.byte	W48
@ 009   ----------------------------------------
	.byte		        An1 , v052, gtp3
	.byte	W48
	.byte		N23   , As1 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N44   , Cn2 , v052, gtp3
	.byte	W48
	.byte		        Bn1 , v052, gtp3
	.byte	W48
@ 011   ----------------------------------------
	.byte		N17   , Gn1 
	.byte	W18
	.byte		        An1 
	.byte	W18
	.byte		N11   , As1 
	.byte	W12
	.byte		N44   , An1 , v052, gtp3
	.byte	W48
@ 012   ----------------------------------------
mus_oldale_5_012:
	.byte		N44   , As1 , v052, gtp3
	.byte	W48
	.byte		        As1 , v052, gtp3
	.byte	W48
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_oldale_5_012
@ 014   ----------------------------------------
	.byte		N44   , Cn2 , v052, gtp3
	.byte	W48
	.byte		        As1 , v052, gtp3
	.byte	W48
@ 015   ----------------------------------------
	.byte		N32   , An1 , v052, gtp3
	.byte	W36
	.byte		N11   , As1 
	.byte	W12
	.byte		N44   , Cn2 , v052, gtp3
	.byte	W48
	.byte	GOTO
	 .word	mus_oldale_5_B1
mus_oldale_5_B2:
@ 016   ----------------------------------------
	.byte		VOICE , 80
	.byte		        80
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_oldale_6:
	.byte	KEYSH , mus_oldale_key+0
mus_oldale_6_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte		VOL   , 127*mus_oldale_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W12
	.byte		N11   , Dn3 , v076
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 001   ----------------------------------------
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N23   , An3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
@ 002   ----------------------------------------
	.byte	W12
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N23   , Cn4 
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 003   ----------------------------------------
	.byte		        Fn3 
	.byte	W48
	.byte		        An3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
@ 004   ----------------------------------------
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N23   , An3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
@ 005   ----------------------------------------
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N23   , An3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
@ 006   ----------------------------------------
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
@ 007   ----------------------------------------
	.byte		        Cn4 
	.byte	W96
@ 008   ----------------------------------------
	.byte		N44   , Fn3 , v064, gtp3
	.byte	W48
	.byte		N23   , Gn3 
	.byte	W24
	.byte		        As3 
	.byte	W24
@ 009   ----------------------------------------
	.byte		N32   , An3 , v064, gtp3
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N44   , Fn3 , v064, gtp3
	.byte	W48
@ 010   ----------------------------------------
	.byte		        Gn3 , v064, gtp3
	.byte	W48
	.byte		N23   , Ds3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
@ 011   ----------------------------------------
	.byte		N17   
	.byte	W18
	.byte		        An3 
	.byte	W18
	.byte		N11   , As3 
	.byte	W12
	.byte		N44   , Fn3 , v064, gtp3
	.byte	W48
@ 012   ----------------------------------------
	.byte		        Gn3 , v064, gtp3
	.byte	W48
	.byte		        Ds3 , v064, gtp3
	.byte	W48
@ 013   ----------------------------------------
	.byte		        As3 , v064, gtp3
	.byte	W48
	.byte		        Fs3 , v064, gtp3
	.byte	W48
@ 014   ----------------------------------------
	.byte		N68   , An3 , v064, gtp3
	.byte	W72
	.byte		N23   , Gn3 
	.byte	W24
@ 015   ----------------------------------------
	.byte		N32   , Fn3 , v064, gtp3
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte	GOTO
	 .word	mus_oldale_6_B1
mus_oldale_6_B2:
@ 016   ----------------------------------------
	.byte		VOICE , 45
	.byte		        45
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_oldale_7:
	.byte	KEYSH , mus_oldale_key+0
mus_oldale_7_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 32
	.byte		VOL   , 127*mus_oldale_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N23   , As1 , v076
	.byte	W48
	.byte		        An1 
	.byte	W48
@ 001   ----------------------------------------
mus_oldale_7_001:
	.byte		N23   , Gn1 , v076
	.byte	W48
	.byte		        Fn1 
	.byte	W48
	.byte	PEND
@ 002   ----------------------------------------
	.byte		N23   
	.byte	W48
	.byte		        Fn0 
	.byte	W48
@ 003   ----------------------------------------
	.byte		N32   , Cn1 , v076, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N23   , Fn1 
	.byte	W24
	.byte		        Fn0 
	.byte	W24
@ 004   ----------------------------------------
	.byte		        As1 
	.byte	W48
	.byte		        An1 
	.byte	W48
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_oldale_7_001
@ 006   ----------------------------------------
	.byte		N23   , As1 , v076
	.byte	W48
	.byte		        Bn0 
	.byte	W48
@ 007   ----------------------------------------
	.byte		N32   , Cn1 , v076, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N23   , Fn1 
	.byte	W48
@ 008   ----------------------------------------
	.byte		N32   , As1 , v076, gtp3
	.byte	W36
	.byte		N11   , Fn1 
	.byte	W12
	.byte		N23   , Gn1 
	.byte	W48
@ 009   ----------------------------------------
	.byte		N32   , Fn1 , v076, gtp3
	.byte	W36
	.byte		N11   , Cn1 
	.byte	W12
	.byte		N23   , As1 
	.byte	W24
	.byte		        Gn1 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N32   , Cn2 , v076, gtp3
	.byte	W36
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N32   , Ds2 , v076, gtp3
	.byte	W36
	.byte		N11   , Gn1 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N32   , As1 , v076, gtp3
	.byte	W36
	.byte		N11   , Cn1 
	.byte	W12
	.byte		N17   , An1 
	.byte	W18
	.byte		        Gn1 
	.byte	W18
	.byte		N11   , Fn1 
	.byte	W12
@ 012   ----------------------------------------
	.byte		N32   , Ds1 , v076, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N23   , As1 
	.byte	W48
@ 013   ----------------------------------------
	.byte		N32   , Fs1 , v076, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N23   , Cs1 
	.byte	W48
@ 014   ----------------------------------------
	.byte		        Fn1 
	.byte	W48
	.byte		        As1 
	.byte	W48
@ 015   ----------------------------------------
	.byte		N32   , Fn1 , v076, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N23   , An1 
	.byte	W48
	.byte	GOTO
	 .word	mus_oldale_7_B1
mus_oldale_7_B2:
@ 016   ----------------------------------------
	.byte		VOICE , 32
	.byte		        32
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_oldale:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_oldale_pri	@ Priority
	.byte	mus_oldale_rev	@ Reverb.

	.word	mus_oldale_grp

	.word	mus_oldale_1
	.word	mus_oldale_2
	.word	mus_oldale_3
	.word	mus_oldale_4
	.word	mus_oldale_5
	.word	mus_oldale_6
	.word	mus_oldale_7

	.end
