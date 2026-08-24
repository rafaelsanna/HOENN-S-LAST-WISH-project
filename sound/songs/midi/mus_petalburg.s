	.include "MPlayDef.s"

	.equ	mus_petalburg_grp, voicegroup_petalburg
	.equ	mus_petalburg_pri, 0
	.equ	mus_petalburg_rev, reverb_set+50
	.equ	mus_petalburg_mvl, 80
	.equ	mus_petalburg_key, 0
	.equ	mus_petalburg_tbs, 1
	.equ	mus_petalburg_exg, 1
	.equ	mus_petalburg_cmp, 1

	.section .rodata
	.global	mus_petalburg
	.align	2

@**************** Track 1 (Midi-Chn.2) ****************@

mus_petalburg_1:
	.byte	KEYSH , mus_petalburg_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 125*mus_petalburg_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 119*mus_petalburg_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
mus_petalburg_1_B1:
@ 002   ----------------------------------------
mus_petalburg_1_002:
	.byte		N11   , Fs4 , v056
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_petalburg_1_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_petalburg_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_petalburg_1_002
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_petalburg_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_petalburg_1_002
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_petalburg_1_002
@ 009   ----------------------------------------
	.byte		N23   , Fs4 , v056
	.byte	W96
@ 010   ----------------------------------------
mus_petalburg_1_010:
	.byte		N05   , Fs4 , v056
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fs4 , v088
	.byte	W06
	.byte		        Fs4 , v056
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fs4 , v088
	.byte	W06
	.byte		        Fs4 , v056
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fs4 , v088
	.byte	W06
	.byte		        Fs4 , v056
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fs4 , v088
	.byte	W06
	.byte		        Fs4 , v056
	.byte	W06
	.byte		        Fs4 , v088
	.byte	W06
	.byte		        Fs4 , v056
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_petalburg_1_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_petalburg_1_010
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_petalburg_1_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_petalburg_1_010
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_petalburg_1_010
@ 017   ----------------------------------------
	.byte		N44   , Fs4 , v056, gtp3
	.byte	W96
	.byte	GOTO
	 .word	mus_petalburg_1_B1
mus_petalburg_1_B2:
@ 018   ----------------------------------------
	.byte		VOICE , 127
	.byte		        127
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_petalburg_2:
	.byte	KEYSH , mus_petalburg_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		VOL   , 127*mus_petalburg_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W48
	.byte		N05   , As2 , v127
	.byte	W06
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs2 
	.byte	W06
	.byte		        As2 
	.byte	W12
	.byte		        Ds3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
mus_petalburg_2_B1:
@ 001   ----------------------------------------
	.byte		N11   , Gs2 , v127
	.byte	W12
	.byte		N05   , Gs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn3 
	.byte	W12
	.byte		N05   
	.byte	W06
@ 002   ----------------------------------------
mus_petalburg_2_002:
	.byte		N11   , Fn2 , v127
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N05   , Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W12
	.byte		N11   , Gs3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        As2 
	.byte	W12
	.byte		N05   , As3 
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte		        As3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N05   , Gs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		N05   
	.byte	W06
@ 004   ----------------------------------------
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N05   , Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W12
	.byte		        Gn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W12
	.byte		N11   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N05   , Gs2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn3 
	.byte	W12
	.byte		N05   
	.byte	W06
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_petalburg_2_002
@ 007   ----------------------------------------
	.byte		N05   , As2 , v127
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte		        As3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 008   ----------------------------------------
	.byte		N44   , As3 , v127, gtp3
	.byte	W48
	.byte		N23   , Ds3 
	.byte	W24
	.byte		        As2 
	.byte	W24
@ 009   ----------------------------------------
	.byte		N17   , Ds3 
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N23   , Gs2 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N17   , Fn3 
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N23   , Cn3 
	.byte	W24
@ 011   ----------------------------------------
	.byte		N17   , Cs3 
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N11   , Fn3 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W12
@ 012   ----------------------------------------
	.byte		N17   , Gs3 
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N23   , Cs3 
	.byte	W24
	.byte		N11   , As2 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
@ 014   ----------------------------------------
	.byte		        Fn3 
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W18
	.byte		        Cn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 015   ----------------------------------------
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , As3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W12
	.byte		        Cs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N11   , As2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N03   , Gs2 
	.byte	W03
	.byte		N44   , Gs3 
	.byte	W44
	.byte	W01
	.byte		N17   , As3 
	.byte	W18
	.byte		        Gs3 
	.byte	W18
	.byte		N11   , Gn3 
	.byte	W12
	.byte	GOTO
	 .word	mus_petalburg_2_B1
mus_petalburg_2_B2:
@ 017   ----------------------------------------
	.byte		VOICE , 80
	.byte		        80
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.4) ****************@

mus_petalburg_3:
	.byte	KEYSH , mus_petalburg_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 81
	.byte		VOL   , 75*mus_petalburg_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Gn1 , v060
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte		N17   , As1 
	.byte	W18
	.byte		        Gs1 
	.byte	W18
	.byte		N11   , Gn1 
	.byte	W12
mus_petalburg_3_B1:
@ 001   ----------------------------------------
mus_petalburg_3_001:
	.byte		N23   , Gs1 , v060
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
	.byte		        Fn1 
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte		N05   , Cn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 003   ----------------------------------------
	.byte		N23   , As1 
	.byte	W24
	.byte		        Fn1 
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte		        Gs1 
	.byte	W24
@ 004   ----------------------------------------
	.byte		        Gn1 
	.byte	W24
	.byte		        As1 
	.byte	W24
	.byte		N05   , Ds2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_petalburg_3_001
@ 006   ----------------------------------------
	.byte		N23   , Fn1 , v060
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte		N05   , Cn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 007   ----------------------------------------
	.byte		N23   , As1 
	.byte	W24
	.byte		        Fn1 
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte		        Fn1 
	.byte	W24
@ 008   ----------------------------------------
	.byte		N92   , Ds1 , v060, gtp3
	.byte	W96
@ 009   ----------------------------------------
	.byte		N08   , Gs1 
	.byte	W18
	.byte		N11   , Cn2 
	.byte	W18
	.byte		        Ds2 
	.byte	W12
	.byte		N23   , Gs1 
	.byte	W48
@ 010   ----------------------------------------
	.byte		N08   , Fn1 
	.byte	W18
	.byte		N11   , Gs1 
	.byte	W18
	.byte		        Cn2 
	.byte	W12
	.byte		N23   , Fn1 
	.byte	W48
@ 011   ----------------------------------------
	.byte		N08   , As1 
	.byte	W18
	.byte		N11   , Fn1 
	.byte	W18
	.byte		        As1 
	.byte	W12
	.byte		N23   , As0 
	.byte	W48
@ 012   ----------------------------------------
	.byte		        Cn1 
	.byte	W24
	.byte		        Cs1 
	.byte	W24
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N23   , Fn1 
	.byte	W24
	.byte		N11   , Gn1 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N17   , Gs1 
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte		        Cn2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N11   , Gs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N17   , An1 
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte		        Cn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N11   , An1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N17   , As1 
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte		        Fn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N11   , As1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N44   , Ds1 , v060, gtp3
	.byte	W48
	.byte		N17   
	.byte	W18
	.byte		        Fn1 
	.byte	W18
	.byte		N11   , Gn1 
	.byte	W12
	.byte	GOTO
	 .word	mus_petalburg_3_B1
mus_petalburg_3_B2:
@ 017   ----------------------------------------
	.byte		VOICE , 81
	.byte		        81
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.5) ****************@

mus_petalburg_4:
	.byte	KEYSH , mus_petalburg_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 21
	.byte		PAN   , c_v+30
	.byte		VOL   , 127*mus_petalburg_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Ds4 , v080
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		N17   , Gn4 
	.byte	W18
	.byte		        Gs4 
	.byte	W18
	.byte		N11   , As4 
	.byte	W12
mus_petalburg_4_B1:
@ 001   ----------------------------------------
	.byte		VOICE , 21
	.byte		N11   , Gs4 , v080
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N11   , Gs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N11   , Gn4 
	.byte	W12
@ 002   ----------------------------------------
	.byte		N56   , Fn4 , v080, gtp3
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
@ 003   ----------------------------------------
	.byte		        As4 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N11   , Cs5 
	.byte	W12
	.byte		        Fn4 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N11   , Gs4 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N32   , Gn4 , v080, gtp3
	.byte	W36
	.byte		N11   , Fn4 
	.byte	W12
	.byte		N44   , Ds4 , v080, gtp3
	.byte	W48
@ 005   ----------------------------------------
	.byte		N11   , Cn5 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N11   , Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N11   , As4 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N56   , Gs4 , v080, gtp3
	.byte	W60
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
@ 007   ----------------------------------------
	.byte		        Cs5 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		N11   , Cs5 
	.byte	W12
	.byte		        Cn5 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N11   , Cn5 
	.byte	W12
@ 008   ----------------------------------------
	.byte		N32   , As4 , v080, gtp3
	.byte	W36
	.byte		N11   , Cn5 
	.byte	W12
	.byte		N44   , Cs5 , v080, gtp3
	.byte	W48
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W36
	.byte		N56   , Cn4 , v080, gtp3
	.byte	W60
@ 014   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N23   , Cn4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N56   , Cs4 , v080, gtp3
	.byte	W54
	.byte		VOICE , 71
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        As3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		N17   , Cs4 
	.byte	W18
	.byte		        Cn4 
	.byte	W18
	.byte		N11   , As3 
	.byte	W12
	.byte	GOTO
	 .word	mus_petalburg_4_B1
mus_petalburg_4_B2:
@ 017   ----------------------------------------
	.byte		VOICE , 21
	.byte		        21
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.7) ****************@

mus_petalburg_5:
	.byte	KEYSH , mus_petalburg_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 71
	.byte		PAN   , c_v-25
	.byte		VOL   , 127*mus_petalburg_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
mus_petalburg_5_B1:
@ 001   ----------------------------------------
	.byte		VOICE , 71
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte		N40   , Cn4 , v080, gtp1
	.byte	W42
	.byte		N02   , Cs4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		N44   , Ds4 , v080, gtp3
	.byte	W48
@ 006   ----------------------------------------
	.byte		N11   , Cn4 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W06
	.byte		N11   , Gs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 007   ----------------------------------------
	.byte		        Cs4 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N11   , Cs4 
	.byte	W12
	.byte		        Fn3 
	.byte	W24
	.byte		N05   , Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N44   , Gs3 , v080, gtp3
	.byte	W12
@ 008   ----------------------------------------
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N44   , Gn3 , v080, gtp3
	.byte	W48
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W72
	.byte		VOICE , 48
	.byte	W24
@ 013   ----------------------------------------
	.byte		N56   , Ds5 
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N56   , Fn5 
	.byte	W60
	.byte		N11   , Cn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N56   , Cs5 
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        As4 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		N17   , Cs5 
	.byte	W18
	.byte		        Cn5 
	.byte	W18
	.byte		N11   , As4 
	.byte	W12
	.byte	GOTO
	 .word	mus_petalburg_5_B1
mus_petalburg_5_B2:
@ 017   ----------------------------------------
	.byte		VOICE , 71
	.byte		        71
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.8) ****************@

mus_petalburg_6:
	.byte	KEYSH , mus_petalburg_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 4
	.byte		VOL   , 127*mus_petalburg_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
mus_petalburg_6_B1:
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
	.byte	W72
	.byte		N11   , Cn4 , v080
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 009   ----------------------------------------
	.byte		N56   , Ds4 
	.byte	W18
	.byte		N17   , Ds2 
	.byte	W18
	.byte		N56   , Gs2 
	.byte	W24
	.byte		N11   , Cn4 
	.byte		N11   , Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N11   , Fs4 
	.byte	W12
@ 010   ----------------------------------------
	.byte		N56   , Cn4 
	.byte		N56   , Fn4 
	.byte	W18
	.byte		N17   , Fn2 
	.byte	W18
	.byte		N56   , An2 
	.byte	W24
	.byte		N11   , An3 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N11   
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        An3 
	.byte		N11   , Cn4 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N56   , As3 
	.byte		N56   , Cs4 
	.byte	W18
	.byte		N17   , Fn2 
	.byte	W18
	.byte		N56   , As2 
	.byte	W24
	.byte		N11   , Cs3 
	.byte		N11   , Fn3 
	.byte		N11   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N11   , Gn3 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte		N11   , Gs3 
	.byte		N11   , Cs4 
	.byte	W12
@ 012   ----------------------------------------
	.byte		        Ds3 
	.byte		N11   , Gs3 
	.byte		N11   , Ds4 
	.byte	W24
	.byte		        Ds3 
	.byte		N11   , Gs3 
	.byte		N11   , Cs4 
	.byte	W24
	.byte		        Ds3 
	.byte		N11   , Gn3 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N22   , Cs3 
	.byte		N22   , Fn3 
	.byte		N22   , As3 
	.byte	W24
	.byte		N11   , Ds3 
	.byte		N11   , Gn3 
	.byte	W12
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_petalburg_6_B1
mus_petalburg_6_B2:
@ 017   ----------------------------------------
	.byte		VOICE , 4
	.byte		        4
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 7 (Midi-Chn.10) ****************@

mus_petalburg_7:
	.byte	KEYSH , mus_petalburg_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_petalburg_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N23   , Cn1 , v080
	.byte		N23   , Cs2 
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N05   , Bn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N05   , Bn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
mus_petalburg_7_B1:
@ 001   ----------------------------------------
mus_petalburg_7_001:
	.byte		N23   , Cn1 , v080
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W24
	.byte		N23   , Cn1 
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_petalburg_7_002:
	.byte		N23   , Cn1 , v080
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_petalburg_7_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_petalburg_7_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_petalburg_7_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_petalburg_7_002
@ 007   ----------------------------------------
	.byte		N23   , Cn1 , v080
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W24
	.byte		N23   , Cn1 
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 008   ----------------------------------------
	.byte		N23   
	.byte	W84
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 009   ----------------------------------------
	.byte		N17   
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N05   , Fs2 , v120
	.byte	W24
@ 010   ----------------------------------------
	.byte		N17   , Cn1 , v080
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		N14   
	.byte	W12
	.byte		N05   , Fs2 , v120
	.byte	W12
	.byte		N05   
	.byte	W24
@ 011   ----------------------------------------
	.byte		N17   , Cn1 , v080
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		N14   
	.byte	W12
	.byte		N05   , Fs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fs2 , v120
	.byte	W24
@ 012   ----------------------------------------
	.byte		N17   , Cn1 , v080
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   , Dn1 , v104
	.byte	W12
	.byte		        Dn1 , v120
	.byte	W12
	.byte		        Dn1 , v104
	.byte	W06
	.byte		N05   
	.byte	W06
@ 013   ----------------------------------------
mus_petalburg_7_013:
	.byte		N17   , Cn1 , v080
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W12
	.byte		N11   , Cn1 , v080
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N05   , Dn1 , v120
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_petalburg_7_013
@ 015   ----------------------------------------
	.byte		N17   , Cn1 , v080
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W12
	.byte		N11   , Cn1 , v080
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N05   , Dn1 , v120
	.byte	W12
	.byte		N11   , Cn1 , v080
	.byte	W12
@ 016   ----------------------------------------
	.byte		N44   , Cn1 , v080, gtp3
	.byte	W48
	.byte		N23   , Dn1 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	GOTO
	 .word	mus_petalburg_7_B1
mus_petalburg_7_B2:
@ 017   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_petalburg:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_petalburg_pri	@ Priority
	.byte	mus_petalburg_rev	@ Reverb.

	.word	mus_petalburg_grp

	.word	mus_petalburg_1
	.word	mus_petalburg_2
	.word	mus_petalburg_3
	.word	mus_petalburg_4
	.word	mus_petalburg_5
	.word	mus_petalburg_6
	.word	mus_petalburg_7

	.end
