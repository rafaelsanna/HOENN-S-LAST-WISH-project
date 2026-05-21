	.include "MPlayDef.s"

	.equ	mus_rg_intro_fight_grp, voicegroup_rg_intro_fight
	.equ	mus_rg_intro_fight_pri, 0
	.equ	mus_rg_intro_fight_rev, reverb_set+50
	.equ	mus_rg_intro_fight_mvl, 90
	.equ	mus_rg_intro_fight_key, 0
	.equ	mus_rg_intro_fight_tbs, 1
	.equ	mus_rg_intro_fight_exg, 1
	.equ	mus_rg_intro_fight_cmp, 1

	.section .rodata
	.global	mus_rg_intro_fight
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_rg_intro_fight_1:
	.byte	KEYSH , mus_rg_intro_fight_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 102*mus_rg_intro_fight_tbs/2
	.byte		VOICE , 46
	.byte		VOL   , 127*mus_rg_intro_fight_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N12   , Gs3 , v127
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte		        Cn6 
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
@ 003   ----------------------------------------
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		        As5 
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Ds6 
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 005   ----------------------------------------
	.byte		        Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        As5 
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Dn6 
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 007   ----------------------------------------
	.byte		        Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        As5 
	.byte	W12
@ 008   ----------------------------------------
	.byte		        Dn6 
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
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
	.byte		VOICE , 46
	.byte		        46
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_rg_intro_fight_2:
	.byte	KEYSH , mus_rg_intro_fight_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 81
	.byte		VOL   , 76*mus_rg_intro_fight_mvl/mxv
	.byte		PAN   , c_v+17
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N12   , Gs2 , v056
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
@ 001   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Fs2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
@ 003   ----------------------------------------
	.byte		        Ds5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
@ 005   ----------------------------------------
	.byte		        Dn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
@ 007   ----------------------------------------
	.byte		        Dn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N11   , Fn2 
	.byte	W12
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
	.byte		VOICE , 81
	.byte		        81
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_rg_intro_fight_3:
	.byte	KEYSH , mus_rg_intro_fight_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		PAN   , c_v+9
	.byte		VOL   , 100*mus_rg_intro_fight_mvl/mxv
	.byte		        100*mus_rg_intro_fight_mvl/mxv
	.byte		        100*mus_rg_intro_fight_mvl/mxv
	.byte		        100*mus_rg_intro_fight_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N96   , Gs1 , v127
	.byte	W96
@ 001   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 002   ----------------------------------------
	.byte		TIE   , Fs1 
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 004   ----------------------------------------
	.byte		TIE   , Fn1 
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 006   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 007   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		EOT   
	.byte	W03
@ 008   ----------------------------------------
	.byte		TIE   , Ds1 
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 012   ----------------------------------------
	.byte		TIE   , Cn1 
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 015   ----------------------------------------
	.byte		VOICE , 48
	.byte		        48
	.byte		VOL   , 100*mus_rg_intro_fight_mvl/mxv
	.byte		        100*mus_rg_intro_fight_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_rg_intro_fight_4:
	.byte	KEYSH , mus_rg_intro_fight_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 60
	.byte		VOL   , 70*mus_rg_intro_fight_mvl/mxv
	.byte		PAN   , c_v+27
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
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte		TIE   , Gn3 , v100
	.byte		TIE   , As4 
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn3 
	.byte		        As4 
@ 012   ----------------------------------------
	.byte		TIE   , Ds3 
	.byte		TIE   , As3 
	.byte		TIE   , Dn4 , v024
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
	.byte		EOT   , Ds3 
	.byte		        As3 
	.byte		        Dn4 
@ 015   ----------------------------------------
	.byte		VOICE , 60
	.byte		        60
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_rg_intro_fight_5:
	.byte	KEYSH , mus_rg_intro_fight_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 10
	.byte		VOL   , 122*mus_rg_intro_fight_mvl/mxv
	.byte		PAN   , c_v-14
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
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
mus_rg_intro_fight_5_008:
	.byte		N12   , Fn4 , v127
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_rg_intro_fight_5_009:
	.byte		N12   , Dn5 , v127
	.byte	W12
	.byte		N12   
	.byte	W84
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_intro_fight_5_008
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_intro_fight_5_009
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_intro_fight_5_008
@ 013   ----------------------------------------
	.byte		N12   , Dn5 , v127
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Fn5 
	.byte	W12
	.byte		N11   
	.byte	W36
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte		VOICE , 10
	.byte		        10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_rg_intro_fight_6:
	.byte	KEYSH , mus_rg_intro_fight_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 90
	.byte		VOL   , 31*mus_rg_intro_fight_mvl/mxv
	.byte		PAN   , c_v+21
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
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
mus_rg_intro_fight_6_008:
	.byte		N12   , Fn4 , v096
	.byte	W24
	.byte		        As4 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        Ds5 
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
	.byte		N48   , Dn5 
	.byte	W96
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_intro_fight_6_008
@ 011   ----------------------------------------
	.byte		N48   , Dn5 , v096
	.byte	W96
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_intro_fight_6_008
@ 013   ----------------------------------------
	.byte		N12   , Dn5 , v096
	.byte	W24
	.byte		        As4 
	.byte	W24
	.byte		N48   , Fn5 
	.byte	W48
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte		VOICE , 90
	.byte		        90
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_rg_intro_fight_7:
	.byte	KEYSH , mus_rg_intro_fight_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 85
	.byte		PAN   , c_v-17
	.byte		VOL   , 100*mus_rg_intro_fight_mvl/mxv
	.byte		        100*mus_rg_intro_fight_mvl/mxv
	.byte		        100*mus_rg_intro_fight_mvl/mxv
	.byte		        100*mus_rg_intro_fight_mvl/mxv
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
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte		TIE   , Ds2 , v096
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 010   ----------------------------------------
	.byte		TIE   , As1 
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 012   ----------------------------------------
	.byte		TIE   , Gn1 
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 015   ----------------------------------------
	.byte		VOICE , 85
	.byte		        85
	.byte		VOL   , 100*mus_rg_intro_fight_mvl/mxv
	.byte		        100*mus_rg_intro_fight_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_rg_intro_fight_8:
	.byte	KEYSH , mus_rg_intro_fight_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 46
	.byte		VOL   , 127*mus_rg_intro_fight_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
	.byte		N12   , Gs3 , v076
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte		        Cn6 
	.byte	W06
@ 001   ----------------------------------------
	.byte	W06
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W06
@ 002   ----------------------------------------
	.byte	W06
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		        As5 
	.byte	W06
@ 003   ----------------------------------------
	.byte	W06
	.byte		        Ds6 
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W06
@ 004   ----------------------------------------
	.byte	W06
	.byte		        Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        As5 
	.byte	W06
@ 005   ----------------------------------------
	.byte	W06
	.byte		        Dn6 
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        As3 
	.byte	W06
@ 006   ----------------------------------------
	.byte	W06
	.byte		        Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        As5 
	.byte	W06
@ 007   ----------------------------------------
	.byte	W06
	.byte		        Dn6 
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N11   , Fn3 
	.byte	W06
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
	.byte		VOICE , 46
	.byte		        46
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 9 (Midi-Chn.9) ****************@

mus_rg_intro_fight_9:
	.byte	KEYSH , mus_rg_intro_fight_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte		VOL   , 112*mus_rg_intro_fight_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N72   , Dn5 , v076
	.byte	W72
	.byte		N24   , Cn5 
	.byte	W24
@ 001   ----------------------------------------
	.byte		        Dn5 , v080
	.byte	W24
	.byte		        Ds5 , v076
	.byte	W24
	.byte		N32   , Fn5 , v076, gtp3
	.byte	W32
	.byte	W03
	.byte		N11   , Gn5 
	.byte	W13
@ 002   ----------------------------------------
	.byte		N48   , As5 , v080
	.byte	W48
	.byte		N44   , Ds5 , v076, gtp3
	.byte	W48
@ 003   ----------------------------------------
	.byte	W48
	.byte		        As4 , v076, gtp3
	.byte	W48
@ 004   ----------------------------------------
	.byte		N92   , Dn5 , v076, gtp3
	.byte	W96
@ 005   ----------------------------------------
	.byte	W48
	.byte		N44   , Fn4 , v076, gtp3
	.byte	W48
@ 006   ----------------------------------------
	.byte		N48   , Ds4 , v080
	.byte	W48
	.byte		N44   , Ds5 , v076, gtp3
	.byte	W48
@ 007   ----------------------------------------
	.byte		N48   , Dn5 , v080
	.byte	W48
	.byte		N44   , Cn5 , v076, gtp3
	.byte	W48
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
	.byte		VOICE , 73
	.byte		        73
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_rg_intro_fight:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_rg_intro_fight_pri	@ Priority
	.byte	mus_rg_intro_fight_rev	@ Reverb.

	.word	mus_rg_intro_fight_grp

	.word	mus_rg_intro_fight_1
	.word	mus_rg_intro_fight_2
	.word	mus_rg_intro_fight_3
	.word	mus_rg_intro_fight_4
	.word	mus_rg_intro_fight_5
	.word	mus_rg_intro_fight_6
	.word	mus_rg_intro_fight_7
	.word	mus_rg_intro_fight_8
	.word	mus_rg_intro_fight_9

	.end
