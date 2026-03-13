	.include "MPlayDef.s"

	.equ	mus_sailing_grp, voicegroup_sailing
	.equ	mus_sailing_pri, 0
	.equ	mus_sailing_rev, reverb_set+50
	.equ	mus_sailing_mvl, 86
	.equ	mus_sailing_key, 0
	.equ	mus_sailing_tbs, 1
	.equ	mus_sailing_exg, 1
	.equ	mus_sailing_cmp, 1

	.section .rodata
	.global	mus_sailing
	.align	2

@**************** Track 1 (Midi-Chn.3) ****************@

mus_sailing_1:
	.byte	KEYSH , mus_sailing_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 156*mus_sailing_tbs/2
	.byte		VOICE , 46
	.byte		VOL   , 127*mus_sailing_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W12
	.byte		N06   , Gs3 , v112
	.byte	W06
	.byte		        Gs3 , v036
	.byte	W06
	.byte		        Bn3 , v112
	.byte	W06
	.byte		        Bn3 , v036
	.byte	W06
	.byte		        Ds4 , v112
	.byte	W06
	.byte		        Ds4 , v036
	.byte	W06
	.byte		        Gs4 , v112
	.byte	W06
	.byte		        Gs4 , v036
	.byte	W42
@ 002   ----------------------------------------
	.byte	W12
	.byte		        As3 , v112
	.byte	W06
	.byte		        As3 , v036
	.byte	W06
	.byte		        Cs4 , v112
	.byte	W06
	.byte		        Cs4 , v036
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v036
	.byte	W06
	.byte		        As4 , v112
	.byte	W12
	.byte		N04   
	.byte	W04
	.byte		        As4 , v036
	.byte	W04
	.byte		        Cs5 , v112
	.byte	W04
	.byte		        Cs5 , v036
	.byte	W04
	.byte		        As4 , v112
	.byte	W04
	.byte		        As4 , v036
	.byte	W04
	.byte		        Fn4 , v112
	.byte	W04
	.byte		        Fn4 , v036
	.byte	W04
	.byte		        As4 , v112
	.byte	W04
@ 003   ----------------------------------------
	.byte		        As4 , v036
	.byte	W04
	.byte		        Fn4 , v112
	.byte	W04
	.byte		        Fn4 , v036
	.byte	W04
	.byte		N06   , Bn3 , v112
	.byte	W06
	.byte		        Bn3 , v036
	.byte	W06
	.byte		        Ds4 , v112
	.byte	W06
	.byte		        Ds4 , v036
	.byte	W06
	.byte		        Fs4 , v112
	.byte	W06
	.byte		        Fs4 , v036
	.byte	W06
	.byte		        Bn4 , v112
	.byte	W06
	.byte		        Bn4 , v036
	.byte	W06
	.byte		N04   , Cn5 , v112
	.byte	W04
	.byte		        Cn5 , v036
	.byte	W04
	.byte		        Gs4 , v112
	.byte	W04
	.byte		        Gs4 , v036
	.byte	W04
	.byte		        Fs4 , v112
	.byte	W04
	.byte		        Fs4 , v036
	.byte	W04
	.byte		        Ds4 , v112
	.byte	W04
	.byte		        Ds4 , v036
	.byte	W04
	.byte		        Cn4 , v112
	.byte	W04
@ 004   ----------------------------------------
	.byte		        Cn4 , v036
	.byte	W04
	.byte		        Gs3 , v112
	.byte	W04
	.byte		        Gs3 , v036
	.byte	W04
	.byte		N06   , Gs2 , v112
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
mus_sailing_1_B1:
	.byte		VOICE , 12
	.byte		N02   , Fs3 , v127
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N02   , Bn3 
	.byte	W06
	.byte		N03   , Fs3 
	.byte	W06
	.byte		N02   , Bn3 
	.byte	W06
@ 006   ----------------------------------------
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N02   , Bn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N05   , Fn4 
	.byte	W06
	.byte		N02   , Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N05   , Ds4 
	.byte	W06
	.byte		N02   , Gs3 
	.byte	W06
	.byte		N05   , Fs4 
	.byte	W06
	.byte		N02   , Gs3 
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N02   , Gs3 
	.byte	W06
	.byte		N03   , Fn3 
	.byte	W06
	.byte		N02   , Gs3 
	.byte	W06
@ 007   ----------------------------------------
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N02   , Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N02   , As3 
	.byte	W06
	.byte		N03   , Fn3 
	.byte	W06
	.byte		N02   , As3 
	.byte	W06
@ 008   ----------------------------------------
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N02   , As3 
	.byte	W06
	.byte		N03   , Fs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N03   , As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N03   , As3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N03   , Fs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 009   ----------------------------------------
	.byte		N06   , As3 
	.byte	W06
	.byte		N03   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N03   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N03   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 010   ----------------------------------------
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N03   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N03   , Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 011   ----------------------------------------
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N03   , Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N03   , Fn4 
	.byte	W06
@ 012   ----------------------------------------
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N03   , Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N03   , As3 
	.byte	W06
@ 013   ----------------------------------------
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N03   , Ds4 
	.byte	W06
	.byte		N02   , Fs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N05   , Fs4 
	.byte	W06
	.byte		N02   , Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N02   , Bn3 
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N02   , Bn3 
	.byte	W06
@ 014   ----------------------------------------
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N02   , Bn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N05   , Gs4 
	.byte	W06
	.byte		N02   , Gs3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N02   , Gs3 
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N02   , Gs3 
	.byte	W06
@ 015   ----------------------------------------
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N02   , Gs3 
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N05   , Gs4 
	.byte	W06
	.byte		N02   , As3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N02   , As3 
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N02   , As3 
	.byte	W06
@ 016   ----------------------------------------
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N02   , As3 
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N06   , Gn4 
	.byte	W06
	.byte		N03   , As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N03   , As3 
	.byte	W06
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W06
@ 017   ----------------------------------------
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N06   , Bn4 
	.byte	W06
	.byte		N03   , Bn3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   , As4 
	.byte	W06
	.byte		N03   , Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 018   ----------------------------------------
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N03   , Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N06   , Cn5 
	.byte	W06
	.byte		N03   , Cn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N03   , Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 019   ----------------------------------------
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N03   , Ds4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N03   , Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N03   , Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 020   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W42
@ 021   ----------------------------------------
	.byte	W12
	.byte	GOTO
	 .word	mus_sailing_1_B1
mus_sailing_1_B2:
	.byte		VOICE , 46
	.byte		        46
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.4) ****************@

mus_sailing_2:
	.byte	KEYSH , mus_sailing_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 56
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_sailing_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_sailing_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_sailing_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_sailing_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N03   , Gn3 , v112
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N84   , Gs3 
	.byte	W84
@ 001   ----------------------------------------
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N84   , As3 
	.byte	W84
@ 002   ----------------------------------------
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N36   , Bn3 
	.byte	W36
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N36   , Cn4 
	.byte	W36
@ 003   ----------------------------------------
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N32   , Cs4 
	.byte	W36
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N24   
	.byte	W24
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 004   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
mus_sailing_2_B1:
	.byte		N36   , Ds4 , v112
	.byte	W36
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N36   , Ds4 
	.byte	W24
@ 005   ----------------------------------------
mus_sailing_2_005:
	.byte	W12
	.byte		N36   , Fn4 , v112
	.byte	W36
	.byte		N06   , Fs4 
	.byte	W12
	.byte		N03   , Bn4 , v080
	.byte	W03
	.byte		N09   , As4 , v112
	.byte	W09
	.byte		N36   , Gs4 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte	W12
	.byte		N96   , Cs4 
	.byte	W84
@ 007   ----------------------------------------
	.byte	W12
	.byte		N36   , Ds4 
	.byte	W36
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N03   , Gn4 , v072
	.byte	W03
	.byte		N09   , Fs4 , v112
	.byte	W09
	.byte		N36   , Ds4 
	.byte	W24
@ 008   ----------------------------------------
	.byte	W12
	.byte		        Bn3 
	.byte	W36
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N36   , Bn3 
	.byte	W24
@ 009   ----------------------------------------
	.byte	W12
	.byte		        Cs4 
	.byte	W36
	.byte		N06   , Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N24   , Ds4 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N84   , As3 
	.byte	W84
@ 011   ----------------------------------------
	.byte		N03   , Bn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		N36   , Ds4 
	.byte	W36
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W12
@ 012   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		N30   , Ds4 
	.byte	W30
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N36   , Ds4 
	.byte	W24
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_sailing_2_005
@ 014   ----------------------------------------
	.byte	W12
	.byte		N36   , As4 , v112
	.byte	W36
	.byte		N06   , Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   , Gs4 
	.byte	W24
@ 015   ----------------------------------------
	.byte		N12   , An4 
	.byte	W12
	.byte		N24   , As4 , v096
	.byte	W24
	.byte		        Gs4 , v092
	.byte	W24
	.byte		N12   , Gn4 , v088
	.byte	W12
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Gn4 , v080
	.byte	W06
	.byte		N24   , Ds4 , v088
	.byte	W12
@ 016   ----------------------------------------
	.byte	W12
	.byte		N36   , Bn4 , v096
	.byte	W36
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N06   , As4 
	.byte	W12
	.byte		N36   , Bn4 , v112
	.byte	W24
@ 017   ----------------------------------------
	.byte	W12
	.byte		        Cn5 , v096
	.byte	W36
	.byte		N06   , Gs4 , v112
	.byte	W12
	.byte		        Ds5 , v092
	.byte	W18
	.byte		        Cs5 , v088
	.byte	W18
@ 018   ----------------------------------------
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N32   , Cs5 , v092
	.byte	W36
	.byte		N03   , Cs5 , v088
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N32   , Cs5 , v096
	.byte	W36
@ 019   ----------------------------------------
	.byte		N03   
	.byte	W06
	.byte		        Cs5 , v092
	.byte	W06
	.byte		N06   , Cs5 , v112
	.byte	W48
	.byte		N06   
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        Dn4 
	.byte	W12
	.byte	GOTO
	 .word	mus_sailing_2_B1
mus_sailing_2_B2:
	.byte		VOICE , 56
	.byte		        56
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_sailing_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_sailing_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.5) ****************@

mus_sailing_3:
	.byte	KEYSH , mus_sailing_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 60
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_sailing_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_sailing_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_sailing_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_sailing_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W12
	.byte		N96   , Ds3 , v112
	.byte	W84
@ 001   ----------------------------------------
	.byte	W12
	.byte		        Fn3 
	.byte	W84
@ 002   ----------------------------------------
	.byte	W12
	.byte		N48   , Fs3 
	.byte	W48
	.byte		N48   
	.byte	W36
@ 003   ----------------------------------------
	.byte	W12
	.byte		N32   , Cs3 
	.byte	W36
	.byte		N03   , Gs3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N24   
	.byte	W36
@ 004   ----------------------------------------
	.byte	W12
mus_sailing_3_B1:
	.byte	W84
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte		VOICE , 14
	.byte	W36
	.byte		N24   , Gs4 , v127
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Fn4 
	.byte	W12
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W36
	.byte		        Gs4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Fn4 
	.byte	W12
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
	.byte	W12
	.byte	GOTO
	 .word	mus_sailing_3_B1
mus_sailing_3_B2:
	.byte		VOICE , 60
	.byte		        60
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_sailing_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_sailing_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.6) ****************@

mus_sailing_4:
	.byte	KEYSH , mus_sailing_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 60
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_sailing_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_sailing_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_sailing_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_sailing_mvl/mxv
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
	.byte	W12
	.byte		N32   , Fn3 , v112
	.byte	W36
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N24   
	.byte	W24
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
mus_sailing_4_B1:
	.byte		N36   , Bn3 , v112
	.byte	W36
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N36   , Bn3 
	.byte	W24
@ 005   ----------------------------------------
mus_sailing_4_005:
	.byte	W12
	.byte		N36   , Cs4 , v112
	.byte	W36
	.byte		N06   , Ds4 
	.byte	W12
	.byte		N03   , Gn4 
	.byte	W03
	.byte		N09   , Fs4 
	.byte	W09
	.byte		N36   , Fn4 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte	W12
	.byte		N96   , As3 
	.byte	W84
@ 007   ----------------------------------------
	.byte	W12
	.byte		N36   , Fs3 
	.byte	W36
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N03   , Bn3 
	.byte	W03
	.byte		N09   , As3 
	.byte	W09
	.byte		N36   , Fs3 
	.byte	W24
@ 008   ----------------------------------------
	.byte	W12
	.byte		        Gs3 
	.byte	W36
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N36   , Gs3 
	.byte	W24
@ 009   ----------------------------------------
	.byte	W12
	.byte		        Fn3 
	.byte	W36
	.byte		N06   , Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W09
	.byte		N24   , Gs3 
	.byte	W24
	.byte	W03
@ 010   ----------------------------------------
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N72   , Fn3 
	.byte	W84
@ 011   ----------------------------------------
	.byte	W12
	.byte		N36   , As3 
	.byte	W36
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W12
@ 012   ----------------------------------------
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N36   , Bn3 
	.byte	W36
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N36   , Bn3 
	.byte	W24
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_sailing_4_005
@ 014   ----------------------------------------
	.byte	W12
	.byte		N36   , Fn4 , v112
	.byte	W36
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   , Fn4 
	.byte	W24
@ 015   ----------------------------------------
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N24   , Bn3 
	.byte	W12
@ 016   ----------------------------------------
	.byte	W12
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N24   , Gs4 
	.byte	W24
@ 017   ----------------------------------------
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W18
	.byte		        Fn4 
	.byte	W18
@ 018   ----------------------------------------
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N32   , Gs4 
	.byte	W36
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N32   , Fs4 
	.byte	W36
@ 019   ----------------------------------------
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W48
	.byte		        Gs5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W12
@ 020   ----------------------------------------
	.byte	W12
	.byte	GOTO
	 .word	mus_sailing_4_B1
mus_sailing_4_B2:
	.byte		VOICE , 60
	.byte		        60
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_sailing_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_sailing_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.8) ****************@

mus_sailing_5:
	.byte	KEYSH , mus_sailing_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 81
	.byte		VOL   , 109*mus_sailing_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W12
	.byte		N96   , Ds3 , v096
	.byte	W84
@ 001   ----------------------------------------
	.byte	W12
	.byte		        Fn3 
	.byte	W84
@ 002   ----------------------------------------
	.byte	W12
	.byte		N48   , Fs3 
	.byte	W48
	.byte		N48   
	.byte	W36
@ 003   ----------------------------------------
	.byte	W12
	.byte		N32   , Cs3 
	.byte	W36
	.byte		N03   , Gs3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N24   
	.byte	W36
@ 004   ----------------------------------------
	.byte	W12
mus_sailing_5_B1:
	.byte		N24   , Ds3 , v096
	.byte	W24
	.byte		        Fs2 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        Ds3 
	.byte	W12
@ 005   ----------------------------------------
mus_sailing_5_005:
	.byte	W12
	.byte		N36   , Cs4 , v096
	.byte	W36
	.byte		N06   , Fn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N36   , Bn3 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte	W12
	.byte		N24   , As3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Fn3 
	.byte	W12
@ 007   ----------------------------------------
	.byte	W12
	.byte		N36   , Ds3 
	.byte	W36
	.byte		N06   , Bn2 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        As3 
	.byte	W12
@ 008   ----------------------------------------
	.byte	W12
	.byte		N36   , Bn3 
	.byte	W36
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W12
@ 009   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N36   , Gs3 
	.byte	W36
	.byte		N06   , Fn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N24   , Gs3 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Fn3 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W12
	.byte		        Ds3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		N12   , Cs4 
	.byte	W12
@ 012   ----------------------------------------
	.byte		N06   , As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        Fs2 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        Ds3 
	.byte	W12
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_sailing_5_005
@ 014   ----------------------------------------
	.byte	W12
	.byte		N72   , Cs4 , v096
	.byte	W72
	.byte		N12   , Bn3 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N24   , As3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Ds4 
	.byte	W12
@ 016   ----------------------------------------
	.byte	W12
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
@ 017   ----------------------------------------
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N36   , Ds4 
	.byte	W36
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W18
	.byte		        Cs4 
	.byte	W18
@ 018   ----------------------------------------
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N30   , Cs4 
	.byte	W36
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N32   , Bn3 
	.byte	W36
@ 019   ----------------------------------------
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs4 
	.byte	W48
	.byte		        Cs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W12
@ 020   ----------------------------------------
	.byte	W12
	.byte	GOTO
	 .word	mus_sailing_5_B1
mus_sailing_5_B2:
	.byte		VOICE , 81
	.byte		        81
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.9) ****************@

mus_sailing_6:
	.byte	KEYSH , mus_sailing_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		VOL   , 101*mus_sailing_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N03   , Cn1 , v092
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N84   , Cs1 , v104
	.byte	W84
@ 001   ----------------------------------------
	.byte		N03   , Cn1 , v092
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N84   , Cs1 , v104
	.byte	W84
@ 002   ----------------------------------------
	.byte		N03   , Cn1 , v092
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N36   , Cs1 , v104
	.byte	W36
	.byte		N03   , Gs0 , v112
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N18   
	.byte	W24
	.byte		N06   
	.byte	W12
@ 003   ----------------------------------------
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte	W12
	.byte		N06   , Cs1 , v036
	.byte	W12
	.byte		        Cs2 , v112
	.byte	W06
	.byte		        Cs2 , v036
	.byte	W06
	.byte		N02   , Cs1 , v112
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Cs2 
	.byte	W03
	.byte		N06   , Cs2 , v036
	.byte	W09
	.byte		        Cs1 , v112
	.byte	W06
	.byte		        Cs1 , v036
	.byte	W06
@ 004   ----------------------------------------
	.byte		N03   , Cs2 , v112
	.byte	W03
	.byte		N06   , Cs2 , v036
	.byte	W09
mus_sailing_6_B1:
	.byte		N06   , Bn0 , v127
	.byte	W06
	.byte		        Bn0 , v036
	.byte	W06
	.byte		N03   , Bn1 , v112
	.byte	W03
	.byte		N06   , Bn1 , v036
	.byte	W09
	.byte		        Bn0 , v112
	.byte	W06
	.byte		        Bn0 , v036
	.byte	W06
	.byte		N03   , Bn1 , v112
	.byte	W03
	.byte		N06   , Bn1 , v036
	.byte	W09
	.byte		N03   , Bn0 , v112
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Bn1 
	.byte	W03
	.byte		N06   , Bn1 , v036
	.byte	W09
	.byte		        Bn0 , v112
	.byte	W06
	.byte		        Bn0 , v036
	.byte	W06
@ 005   ----------------------------------------
mus_sailing_6_005:
	.byte		N03   , Bn1 , v112
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		        Cs1 , v036
	.byte	W06
	.byte		N03   , Cs2 , v112
	.byte	W03
	.byte		N06   , Cs2 , v036
	.byte	W09
	.byte		        Gs1 , v112
	.byte	W06
	.byte		        Gs1 , v036
	.byte	W06
	.byte		N03   , Cs2 , v112
	.byte	W03
	.byte		N06   , Cs2 , v036
	.byte	W09
	.byte		N03   , Cs1 , v112
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Cs2 
	.byte	W03
	.byte		N06   , Cs2 , v036
	.byte	W09
	.byte		        Gs1 , v112
	.byte	W06
	.byte		        Gs1 , v036
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
mus_sailing_6_006:
	.byte		N03   , Cs2 , v112
	.byte	W03
	.byte		N06   , Cs2 , v036
	.byte	W09
	.byte		        As0 , v127
	.byte	W06
	.byte		        As0 , v036
	.byte	W06
	.byte		N03   , As1 , v112
	.byte	W03
	.byte		N06   , As1 , v036
	.byte	W09
	.byte		        As0 , v112
	.byte	W06
	.byte		        As0 , v036
	.byte	W06
	.byte		N03   , As1 , v112
	.byte	W03
	.byte		N06   , As1 , v036
	.byte	W09
	.byte		        As0 , v112
	.byte	W06
	.byte		        As0 , v036
	.byte	W06
	.byte		N03   , As1 , v112
	.byte	W03
	.byte		N06   , As1 , v036
	.byte	W09
	.byte		        Fn1 , v112
	.byte	W06
	.byte		        Fn1 , v036
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
mus_sailing_6_007:
	.byte		N03   , As1 , v112
	.byte	W03
	.byte		N06   , As1 , v036
	.byte	W09
	.byte		        Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v036
	.byte	W06
	.byte		N03   , Ds2 , v112
	.byte	W03
	.byte		N06   , Ds2 , v036
	.byte	W09
	.byte		        Cs1 , v112
	.byte	W06
	.byte		        Cs1 , v036
	.byte	W06
	.byte		N03   , Cs2 , v112
	.byte	W03
	.byte		N06   , Cs2 , v036
	.byte	W09
	.byte		        Bn0 , v112
	.byte	W06
	.byte		        Bn0 , v036
	.byte	W06
	.byte		N03   , Bn1 , v112
	.byte	W03
	.byte		N06   , Bn1 , v036
	.byte	W09
	.byte		        As0 , v112
	.byte	W06
	.byte		        As0 , v036
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
mus_sailing_6_008:
	.byte		N03   , As1 , v112
	.byte	W03
	.byte		N06   , As1 , v036
	.byte	W09
	.byte		        Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v036
	.byte	W06
	.byte		N03   , Gs1 , v112
	.byte	W03
	.byte		N06   , Gs1 , v036
	.byte	W09
	.byte		        Ds1 , v112
	.byte	W06
	.byte		        Ds1 , v036
	.byte	W06
	.byte		N03   , Gs1 , v112
	.byte	W03
	.byte		N06   , Gs1 , v036
	.byte	W09
	.byte		N03   , Gs0 , v112
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Gs1 
	.byte	W03
	.byte		N06   , Gs1 , v036
	.byte	W09
	.byte		        Ds1 , v112
	.byte	W06
	.byte		        Ds1 , v036
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
	.byte		N03   , Gs1 , v112
	.byte	W03
	.byte		N06   , Gs1 , v036
	.byte	W09
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Cs1 , v036
	.byte	W06
	.byte		N03   , Cs2 , v112
	.byte	W03
	.byte		N06   , Cs2 , v036
	.byte	W09
	.byte		        Gs1 , v112
	.byte	W06
	.byte		        Gs1 , v036
	.byte	W06
	.byte		N03   , Cs2 , v112
	.byte	W03
	.byte		N06   , Cs2 , v036
	.byte	W09
	.byte		N03   , Cs1 , v112
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Cs2 
	.byte	W03
	.byte		N06   , Cs2 , v036
	.byte	W09
	.byte		        Cs1 , v112
	.byte	W06
	.byte		        Cs1 , v036
	.byte	W06
@ 010   ----------------------------------------
	.byte		N03   , Cs2 , v112
	.byte	W03
	.byte		N06   , Cs2 , v036
	.byte	W09
	.byte		        As0 , v127
	.byte	W06
	.byte		        As0 , v036
	.byte	W06
	.byte		N03   , As1 , v112
	.byte	W03
	.byte		N06   , As1 , v036
	.byte	W09
	.byte		        Fn1 , v112
	.byte	W06
	.byte		        Fn1 , v036
	.byte	W06
	.byte		N03   , As1 , v112
	.byte	W03
	.byte		N06   , As1 , v036
	.byte	W09
	.byte		N03   , As0 , v112
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        As1 
	.byte	W03
	.byte		N06   , As1 , v036
	.byte	W09
	.byte		        Fn1 , v112
	.byte	W06
	.byte		        Fn1 , v036
	.byte	W06
@ 011   ----------------------------------------
	.byte		N03   , As1 , v112
	.byte	W03
	.byte		N06   , As1 , v036
	.byte	W09
	.byte		        Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v036
	.byte	W06
	.byte		N03   , Ds2 , v112
	.byte	W03
	.byte		N06   , Ds2 , v036
	.byte	W09
	.byte		        Cs1 , v112
	.byte	W06
	.byte		        Cs1 , v036
	.byte	W06
	.byte		N03   , Cs2 , v112
	.byte	W03
	.byte		N06   , Cs2 , v036
	.byte	W09
	.byte		N03   , Bn0 , v112
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Bn1 
	.byte	W03
	.byte		N06   , Bn1 , v036
	.byte	W09
	.byte		        As0 , v112
	.byte	W06
	.byte		        As0 , v036
	.byte	W06
@ 012   ----------------------------------------
	.byte		N03   , As1 , v112
	.byte	W03
	.byte		N06   , As1 , v036
	.byte	W09
	.byte		        Bn0 , v127
	.byte	W06
	.byte		        Bn0 , v036
	.byte	W06
	.byte		N03   , Bn1 , v112
	.byte	W03
	.byte		N06   , Bn1 , v036
	.byte	W09
	.byte		        Bn0 , v112
	.byte	W06
	.byte		        Bn0 , v036
	.byte	W06
	.byte		N03   , Bn1 , v112
	.byte	W03
	.byte		N06   , Bn1 , v036
	.byte	W09
	.byte		N03   , Bn0 , v112
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Bn1 
	.byte	W03
	.byte		N06   , Bn1 , v036
	.byte	W09
	.byte		        Bn0 , v112
	.byte	W06
	.byte		        Bn0 , v036
	.byte	W06
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_sailing_6_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_sailing_6_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_sailing_6_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_sailing_6_008
@ 017   ----------------------------------------
	.byte		N03   , Gs1 , v112
	.byte	W03
	.byte		N06   , Gs1 , v036
	.byte	W09
	.byte		        Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v036
	.byte	W06
	.byte		N03   , Gs1 , v112
	.byte	W03
	.byte		N06   , Gs1 , v036
	.byte	W09
	.byte		        Ds1 , v112
	.byte	W06
	.byte		        Ds1 , v036
	.byte	W06
	.byte		N03   , Gs1 , v112
	.byte	W03
	.byte		N06   , Gs1 , v036
	.byte	W09
	.byte		N03   , Gs0 , v112
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Gs1 
	.byte	W03
	.byte		N06   , Gs1 , v036
	.byte	W09
	.byte		        Cn1 , v112
	.byte	W06
	.byte		        Cn1 , v036
	.byte	W06
@ 018   ----------------------------------------
	.byte		N03   , Gs1 , v112
	.byte	W03
	.byte		N06   , Gs1 , v036
	.byte	W09
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Cs1 , v036
	.byte	W06
	.byte		N03   , Cs2 , v112
	.byte	W03
	.byte		N06   , Cs2 , v036
	.byte	W09
	.byte		        Gs1 , v112
	.byte	W06
	.byte		        Gs1 , v036
	.byte	W06
	.byte		N03   , Cs2 , v112
	.byte	W03
	.byte		N06   , Cs2 , v036
	.byte	W09
	.byte		N03   , Cs1 , v112
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Cs2 
	.byte	W03
	.byte		N06   , Cs2 , v036
	.byte	W09
	.byte		        Gs1 , v112
	.byte	W06
	.byte		        Gs1 , v036
	.byte	W06
@ 019   ----------------------------------------
	.byte		N03   , Cs2 , v112
	.byte	W03
	.byte		N06   , Cs2 , v036
	.byte	W09
	.byte		        Cs2 , v127
	.byte	W06
	.byte		        Cs2 , v036
	.byte	W18
	.byte		N03   , Cs1 , v112
	.byte	W03
	.byte		N06   , Cs1 , v036
	.byte	W21
	.byte		N03   , Gs1 , v112
	.byte	W03
	.byte		N06   , Gs1 , v036
	.byte	W21
	.byte		        Fn1 , v112
	.byte	W06
	.byte		        Fn1 , v036
	.byte	W06
@ 020   ----------------------------------------
	.byte	W06
	.byte		        As0 , v112
	.byte	W06
	.byte	GOTO
	 .word	mus_sailing_6_B1
mus_sailing_6_B2:
	.byte		VOICE , 80
	.byte		        80
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 7 (Midi-Chn.10) ****************@

mus_sailing_7:
	.byte	KEYSH , mus_sailing_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_sailing_mvl/mxv
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
	.byte	W84
	.byte		N24   , Gn0 , v112
	.byte	W12
@ 004   ----------------------------------------
	.byte	W12
mus_sailing_7_B1:
	.byte		N12   , Dn0 , v112
	.byte	W12
	.byte		N04   , Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v080
	.byte	W18
	.byte		        Ds1 , v127
	.byte	W12
	.byte		        Ds1 , v088
	.byte	W12
	.byte		        Ds1 , v127
	.byte	W12
	.byte		        Ds1 , v092
	.byte	W12
@ 005   ----------------------------------------
mus_sailing_7_005:
	.byte		N04   , Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v096
	.byte	W06
	.byte		        Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v088
	.byte	W06
	.byte		        Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v080
	.byte	W18
	.byte		        Ds1 , v127
	.byte	W12
	.byte		        Ds1 , v088
	.byte	W12
	.byte		        Ds1 , v127
	.byte	W12
	.byte		        Ds1 , v092
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte		        Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v096
	.byte	W18
	.byte		        Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v080
	.byte	W18
	.byte		        Ds1 , v127
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte		        Ds1 , v092
	.byte	W12
@ 007   ----------------------------------------
mus_sailing_7_007:
	.byte		N04   , Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v096
	.byte	W18
	.byte		        Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v080
	.byte	W18
	.byte		        Ds1 , v127
	.byte	W12
	.byte		        Ds1 , v088
	.byte	W12
	.byte		        Ds1 , v127
	.byte	W12
	.byte		        Ds1 , v092
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_sailing_7_007
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_sailing_7_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_sailing_7_007
@ 011   ----------------------------------------
	.byte		N04   , Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v096
	.byte	W06
	.byte		        Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v088
	.byte	W06
	.byte		        Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v080
	.byte	W18
	.byte		        Ds1 , v127
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte		        Ds1 , v092
	.byte	W12
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_sailing_7_007
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_sailing_7_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_sailing_7_007
@ 015   ----------------------------------------
	.byte		N04   , Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v096
	.byte	W06
	.byte		        Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v088
	.byte	W06
	.byte		        Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v080
	.byte	W18
	.byte		        Ds1 , v127
	.byte	W12
	.byte		        Ds1 , v088
	.byte	W12
	.byte		        Ds1 , v127
	.byte	W24
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_sailing_7_007
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_sailing_7_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_sailing_7_007
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_sailing_7_005
@ 020   ----------------------------------------
	.byte		N04   , Ds1 , v127
	.byte	W06
	.byte		        Ds1 , v096
	.byte	W06
	.byte	GOTO
	 .word	mus_sailing_7_B1
mus_sailing_7_B2:
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_sailing:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_sailing_pri	@ Priority
	.byte	mus_sailing_rev	@ Reverb.

	.word	mus_sailing_grp

	.word	mus_sailing_1
	.word	mus_sailing_2
	.word	mus_sailing_3
	.word	mus_sailing_4
	.word	mus_sailing_5
	.word	mus_sailing_6
	.word	mus_sailing_7

	.end
