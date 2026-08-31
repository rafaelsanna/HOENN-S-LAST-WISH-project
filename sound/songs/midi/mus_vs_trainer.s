	.include "MPlayDef.s"

	.equ	mus_vs_trainer_grp, voicegroup_rg_vs_trainer
	.equ	mus_vs_trainer_pri, 1
	.equ	mus_vs_trainer_rev, reverb_set+50
	.equ	mus_vs_trainer_mvl, 80
	.equ	mus_vs_trainer_key, 0
	.equ	mus_vs_trainer_tbs, 1
	.equ	mus_vs_trainer_exg, 1
	.equ	mus_vs_trainer_cmp, 1

	.section .rodata
	.global	mus_vs_trainer
	.align	2

@**************** Track 1 (Midi-Chn.9) ****************@

mus_vs_trainer_1:
	.byte		VOL   , 127*mus_vs_trainer_mvl/mxv
	.byte	KEYSH , mus_vs_trainer_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 198*mus_vs_trainer_tbs/2
	.byte		VOICE , 29
	.byte		BEND  , c_v+10
	.byte		N06   , Cn5 , v076
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 001   ----------------------------------------
@ 002   ----------------------------------------
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 003   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		VOICE , 17
	.byte		BEND  , c_v+0
	.byte		N12   , Gn3 , v080
	.byte		N12   , Cn4 , v100
	.byte	W12
	.byte		N02   , Bn3 
	.byte	W02
	.byte		        An3 
	.byte	W02
	.byte	W02
	.byte		N01   , Gn3 
	.byte	W01
	.byte	W17
	.byte		N12   , As3 , v080
	.byte	W12
@ 004   ----------------------------------------
	.byte	W24
	.byte		        Gs3 
	.byte	W12
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 005   ----------------------------------------
	.byte	W22
	.byte		N02   , Cn3 , v100
	.byte	W02
	.byte		N22   , Cs3 , v080
	.byte	W22
	.byte		N02   , Cn3 
	.byte	W02
	.byte		N12   , Gn3 
	.byte	W12
	.byte	W24
	.byte		        As3 
	.byte	W12
@ 006   ----------------------------------------
	.byte	W24
	.byte		        Gs3 
	.byte	W12
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 007   ----------------------------------------
	.byte	W24
	.byte		N22   , Cs4 
	.byte	W22
	.byte		N02   , Bn4 
	.byte	W02
	.byte		N12   , Cn5 
	.byte	W12
	.byte	W22
	.byte		N02   , Dn5 
	.byte	W02
	.byte		N12   , Ds5 
	.byte	W12
@ 008   ----------------------------------------
	.byte	W24
	.byte		        Cs5 
	.byte	W12
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte	W10
	.byte		N02   , Dn5 
	.byte	W02
	.byte		N12   , Ds5 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W24
	.byte		        Cs5 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte	W24
	.byte		        Ds5 
	.byte	W12
@ 010   ----------------------------------------
	.byte	W22
	.byte		N02   , Cn5 , v080
	.byte	W02
	.byte		N12   , Cs5 , v088
	.byte	W12
	.byte	W10
	.byte		N02   , Bn4 , v080
	.byte	W02
	.byte		N12   , Cn5 , v088
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte	W12
	.byte		        Ds5 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W16
	.byte		N01   , Bn4 , v080
	.byte	W01
	.byte		        Cn5 
	.byte	W01
	.byte		        Cs5 
	.byte	W01
	.byte		        Dn5 
	.byte	W01
	.byte		        Ds5 
	.byte	W01
	.byte		        En5 
	.byte	W01
	.byte		        Fn5 
	.byte	W01
	.byte		        Fs5 
	.byte	W01
	.byte		N24   , Gn5 , v088
	.byte	W24
mus_vs_trainer_1_B1:
	.byte		VOICE , 21
	.byte		BEND  , c_v+0
	.byte		N44   , Cn4 , v100, gtp3
	.byte	W44
	.byte	W03
	.byte		N01   , Bn3 
	.byte	W01
@ 012   ----------------------------------------
	.byte		N44   , As3 , v100, gtp1
	.byte	W44
	.byte	W01
	.byte		N01   , Bn3 
	.byte	W01
	.byte		        Cn4 
	.byte	W01
	.byte		        Cs4 
	.byte	W01
	.byte		N30   , Dn4 
	.byte	W30
	.byte		N01   , Cs4 
	.byte	W01
	.byte		        Cn4 
	.byte	W01
	.byte		        Bn3 
	.byte	W01
	.byte		        As3 
	.byte	W01
	.byte		        An3 
	.byte	W01
	.byte		        Gs3 
	.byte	W01
	.byte		VOL   , 100*mus_vs_trainer_mvl/mxv
	.byte		N24   , Gn3 
	.byte	W12
@ 013   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N72   , Gs4 
	.byte	W36
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        88*mus_vs_trainer_mvl/mxv
	.byte	W06
@ 014   ----------------------------------------
mus_vs_trainer_1_014:
	.byte		VOL   , 71*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        59*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        45*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte	PEND
	.byte		        100*mus_vs_trainer_mvl/mxv
	.byte		N12   , Gs4 , v100
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N48   , Fn4 
	.byte	W48
@ 015   ----------------------------------------
	.byte		        Cs4 
	.byte	W24
	.byte		VOL   , 85*mus_vs_trainer_mvl/mxv
	.byte	W04
	.byte		        70*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        46*mus_vs_trainer_mvl/mxv
	.byte	W09
	.byte		        20*mus_vs_trainer_mvl/mxv
	.byte	W05
	.byte		VOICE , 29
	.byte		VOL   , 100*mus_vs_trainer_mvl/mxv
	.byte		N48   , Cn4 , v104
	.byte	W48
@ 016   ----------------------------------------
	.byte		N42   , As3 
	.byte	W42
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N24   , Gn3 
	.byte	W12
@ 017   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N72   , Gs4 
	.byte	W36
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        88*mus_vs_trainer_mvl/mxv
	.byte	W06
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_1_014
	.byte		VOL   , 100*mus_vs_trainer_mvl/mxv
	.byte		N12   , Gs4 , v104
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N36   , As4 
	.byte	W36
	.byte		N24   , Gs4 
	.byte	W12
@ 019   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N60   , Gn4 
	.byte	W18
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        88*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        71*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        59*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        45*mus_vs_trainer_mvl/mxv
	.byte	W06
@ 020   ----------------------------------------
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        100*mus_vs_trainer_mvl/mxv
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N72   , En4 
	.byte	W24
	.byte	W03
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        88*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        71*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        59*mus_vs_trainer_mvl/mxv
	.byte	W03
@ 021   ----------------------------------------
	.byte	W03
	.byte		        45*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W15
	.byte		        100*mus_vs_trainer_mvl/mxv
	.byte		N03   , Ds4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N01   , Bn3 
	.byte	W01
	.byte		        As3 
	.byte	W01
	.byte		        An3 
	.byte	W01
	.byte		        Gs3 
	.byte	W01
	.byte		        Gn3 
	.byte	W01
	.byte	W07
	.byte		VOICE , 17
	.byte		N48   , As3 
	.byte	W48
@ 022   ----------------------------------------
	.byte		        Dn4 
	.byte	W48
	.byte		N36   , Fn4 
	.byte	W36
	.byte		N24   , As4 
	.byte	W12
@ 023   ----------------------------------------
	.byte	W12
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N72   , En4 
	.byte	W48
@ 024   ----------------------------------------
	.byte	W24
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N96   , Gn4 
	.byte	W36
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        88*mus_vs_trainer_mvl/mxv
	.byte	W06
@ 025   ----------------------------------------
	.byte		        71*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-14
	.byte	W06
	.byte		VOL   , 59*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        45*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W02
	.byte		        55*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        65*mus_vs_trainer_mvl/mxv
	.byte	W04
	.byte		        75*mus_vs_trainer_mvl/mxv
	.byte	W15
	.byte		VOICE , 29
	.byte		VOL   , 100*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N42   , As2 
	.byte	W42
	.byte		N06   , Gs2 
	.byte	W06
@ 026   ----------------------------------------
	.byte		N42   , Dn3 
	.byte	W42
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N30   , Fn3 
	.byte	W30
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N24   , As3 
	.byte	W12
@ 027   ----------------------------------------
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N72   , En4 
	.byte	W48
@ 028   ----------------------------------------
	.byte	W24
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N92   , Cn5 
	.byte	W12
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        88*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        71*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        59*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        45*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W06
@ 029   ----------------------------------------
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W02
	.byte		        55*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        65*mus_vs_trainer_mvl/mxv
	.byte	W04
	.byte		        75*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        90*mus_vs_trainer_mvl/mxv
	.byte	W02
	.byte		        100*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        105*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        80*mus_vs_trainer_mvl/mxv
	.byte	W04
	.byte		        75*mus_vs_trainer_mvl/mxv
	.byte	W08
	.byte	W04
	.byte		VOICE , 25
	.byte		BEND  , c_v+0
	.byte		N36   , Cn5 , v100
	.byte	W36
	.byte		        Gn4 
	.byte	W12
@ 030   ----------------------------------------
	.byte	W24
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		N36   , Fn5 
	.byte	W36
	.byte		VOICE , 21
	.byte		N24   , As3 
	.byte	W12
@ 031   ----------------------------------------
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W36
	.byte		        Fn4 
	.byte	W36
	.byte		N24   , As4 
	.byte	W12
@ 032   ----------------------------------------
	.byte	W12
	.byte		VOICE , 83
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N48   , En4 
	.byte	W48
@ 033   ----------------------------------------
	.byte		        Cn4 
	.byte	W48
	.byte		N36   
	.byte	W36
	.byte		        Gn4 
	.byte	W12
@ 034   ----------------------------------------
	.byte	W24
	.byte		VOICE , 48
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		N36   , Dn5 
	.byte	W36
	.byte		N60   , As5 
	.byte	W12
@ 035   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn5 
	.byte	W36
	.byte		N24   , As5 
	.byte	W12
@ 036   ----------------------------------------
	.byte	W12
	.byte		N12   , An5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		N36   , En5 
	.byte	W36
	.byte		N60   , Cn5 
	.byte	W12
@ 037   ----------------------------------------
	.byte	W48
	.byte		N36   , Cn6 , v104
	.byte	W36
	.byte		        Gn5 
	.byte	W12
@ 038   ----------------------------------------
	.byte	W24
	.byte		N12   , Cn6 
	.byte	W12
	.byte		        En6 
	.byte	W12
	.byte		TIE   , Fn6 
	.byte	W24
	.byte		VOL   , 76*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        70*mus_vs_trainer_mvl/mxv
	.byte	W12
@ 039   ----------------------------------------
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        56*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        46*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        40*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        26*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        10*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        0*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        0*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		EOT   
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W48
	.byte		VOICE , 14
	.byte		VOL   , 75*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-4
	.byte		N36   , Cn6 
	.byte	W36
	.byte		        Cs6 
	.byte	W12
@ 042   ----------------------------------------
	.byte	W24
	.byte		N24   , Cn4 , v108
	.byte	W24
	.byte		N36   , Gn5 , v104
	.byte	W36
	.byte		        Gs5 
	.byte	W12
@ 043   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs4 , v108
	.byte	W24
	.byte		N36   , Cn5 , v104
	.byte	W36
	.byte		        Cs5 
	.byte	W12
@ 044   ----------------------------------------
	.byte	W24
	.byte		N24   , Cn3 , v108
	.byte	W24
	.byte		N36   , Gn4 , v104
	.byte	W36
	.byte		        Gs4 
	.byte	W12
@ 045   ----------------------------------------
	.byte	W24
	.byte		VOICE , 29
	.byte		N24   , Cs4 , v108
	.byte	W24
	.byte		TIE   , Cn4 , v104
	.byte	W48
@ 046   ----------------------------------------
	.byte		VOL   , 56*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        56*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-14
	.byte	W03
	.byte		        c_v-21
	.byte	W03
	.byte		VOL   , 50*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-27
	.byte	W03
	.byte		        c_v-27
	.byte	W03
	.byte		VOL   , 56*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-34
	.byte	W03
	.byte		        c_v-34
	.byte	W03
	.byte		VOL   , 60*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-41
	.byte	W03
	.byte		        c_v-44
	.byte	W03
	.byte		VOL   , 60*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-54
	.byte	W03
	.byte		        c_v-54
	.byte	W03
	.byte		VOL   , 60*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        43*mus_vs_trainer_mvl/mxv
	.byte	W06
@ 047   ----------------------------------------
mus_vs_trainer_1_047:
	.byte		VOL   , 30*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        23*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        23*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        20*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        16*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte	PEND
	.byte		EOT   , Cn4 
	.byte		VOICE , 30
	.byte		VOL   , 75*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-4
	.byte		N12   , Cn4 , v104
	.byte	W12
	.byte		TIE   , Cs4 
	.byte	W48
@ 048   ----------------------------------------
	.byte		VOL   , 56*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        56*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-14
	.byte	W03
	.byte		        c_v-21
	.byte	W03
	.byte		VOL   , 56*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-27
	.byte	W03
	.byte		        c_v-27
	.byte	W03
	.byte		VOL   , 60*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-34
	.byte	W03
	.byte		        c_v-34
	.byte	W03
	.byte		VOL   , 60*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-41
	.byte	W03
	.byte		        c_v-44
	.byte	W03
	.byte		VOL   , 60*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-54
	.byte	W03
	.byte		        c_v-54
	.byte	W03
	.byte		VOL   , 60*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        43*mus_vs_trainer_mvl/mxv
	.byte	W06
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_1_047
	.byte		EOT   , Cs4 
	.byte		VOICE , 29
	.byte		VOL   , 75*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-4
	.byte		N12   , Cs4 , v104
	.byte	W12
	.byte		TIE   , Cn4 
	.byte	W48
@ 050   ----------------------------------------
	.byte		VOL   , 56*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        56*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-14
	.byte	W03
	.byte		        c_v-21
	.byte	W03
	.byte		VOL   , 50*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-27
	.byte	W03
	.byte		        c_v-27
	.byte	W03
	.byte		VOL   , 50*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-34
	.byte	W03
	.byte		        c_v-34
	.byte	W03
	.byte		VOL   , 50*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-41
	.byte	W03
	.byte		        c_v-44
	.byte	W03
	.byte		VOL   , 50*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-54
	.byte	W03
	.byte		        c_v-54
	.byte	W03
	.byte		VOL   , 56*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        43*mus_vs_trainer_mvl/mxv
	.byte	W06
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_1_047
	.byte		EOT   , Cn4 
	.byte		VOL   , 75*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N12   , Cn3 , v104
	.byte	W12
	.byte		N96   , As2 
	.byte	W48
@ 052   ----------------------------------------
	.byte	W48
	.byte		        Dn3 
	.byte	W48
@ 053   ----------------------------------------
	.byte	W48
	.byte		        Fn3 
	.byte	W48
@ 054   ----------------------------------------
	.byte	W48
	.byte		N84   , As3 
	.byte	W48
@ 055   ----------------------------------------
	.byte	W36
	.byte		N12   , Dn4 
	.byte	W12
	.byte		TIE   , En4 
	.byte	W48
@ 056   ----------------------------------------
	.byte		VOL   , 65*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        55*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        45*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        40*mus_vs_trainer_mvl/mxv
	.byte	W24
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        36*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        49*mus_vs_trainer_mvl/mxv
	.byte	W06
@ 057   ----------------------------------------
	.byte	W12
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W24
	.byte		        23*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		EOT   
	.byte		VOICE , 31
	.byte		VOL   , 75*mus_vs_trainer_mvl/mxv
	.byte		N24   , En4 , v096
	.byte	W24
	.byte		N02   , Ds4 
	.byte	W02
	.byte		N01   , Dn4 
	.byte	W01
	.byte		        Cs4 
	.byte	W01
	.byte		        Cn4 
	.byte	W01
	.byte		        Bn3 
	.byte	W01
	.byte		        As3 
	.byte	W01
	.byte		        Gs3 
	.byte	W01
	.byte		N68   , Gn3 , v096, gtp2
	.byte	W01
	.byte		VOL   , 56*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        46*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        40*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        33*mus_vs_trainer_mvl/mxv
	.byte	W03
@ 058   ----------------------------------------
	.byte		        33*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        26*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        23*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        20*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        20*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        16*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        13*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        6*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        6*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        3*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        0*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        0*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        0*mus_vs_trainer_mvl/mxv
	.byte	W15
	.byte	W42
@ 059   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 75*mus_vs_trainer_mvl/mxv
	.byte		N12   , En4 , v104
	.byte	W12
	.byte		N03   , Ds4 
	.byte	W03
	.byte		VOL   , 70*mus_vs_trainer_mvl/mxv
	.byte		N03   , Dn4 
	.byte	W01
	.byte		VOL   , 70*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        66*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte		N03   , Cs4 
	.byte	W01
	.byte		VOL   , 63*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte		N03   , Cn4 
	.byte	W01
	.byte		VOL   , 56*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        46*mus_vs_trainer_mvl/mxv
	.byte		N03   , Bn3 
	.byte	W01
	.byte		VOL   , 43*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        40*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        36*mus_vs_trainer_mvl/mxv
	.byte		N03   , As3 
	.byte	W01
	.byte		VOL   , 33*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        26*mus_vs_trainer_mvl/mxv
	.byte		N01   , An3 , v100
	.byte	W01
	.byte		VOL   , 26*mus_vs_trainer_mvl/mxv
	.byte		N02   , Gs3 
	.byte	W01
	.byte		VOL   , 26*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        23*mus_vs_trainer_mvl/mxv
	.byte		N03   , Gn3 , v104
	.byte	W01
	.byte		VOL   , 23*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        23*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        20*mus_vs_trainer_mvl/mxv
	.byte		N03   , Fs3 
	.byte	W01
	.byte		VOL   , 13*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        10*mus_vs_trainer_mvl/mxv
	.byte		N03   , Fn3 
	.byte	W01
	.byte		VOL   , 10*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        13*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        16*mus_vs_trainer_mvl/mxv
	.byte		N03   , En3 
	.byte	W01
	.byte		VOL   , 16*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        16*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        16*mus_vs_trainer_mvl/mxv
	.byte		N01   , Ds3 , v100
	.byte	W01
	.byte		VOL   , 13*mus_vs_trainer_mvl/mxv
	.byte		N02   , Dn3 
	.byte	W01
	.byte		VOL   , 6*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        6*mus_vs_trainer_mvl/mxv
	.byte		N02   , Cs3 , v104
	.byte	W01
	.byte		VOL   , 0*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		VOICE , 30
	.byte		VOL   , 75*mus_vs_trainer_mvl/mxv
	.byte		N11   , Cn3 , v100
	.byte	W11
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N32   , Fn3 , v100, gtp3
	.byte	W24
@ 060   ----------------------------------------
	.byte	W11
	.byte		N01   , Fs3 
	.byte	W01
	.byte		N32   , Gn3 
	.byte	W32
	.byte		N02   , Gs3 
	.byte	W02
	.byte		        An3 
	.byte	W02
	.byte		N48   , As3 
	.byte	W48
@ 061   ----------------------------------------
	.byte		N44   , An3 , v104, gtp2
	.byte	W44
	.byte	W02
	.byte		N02   , Gs3 
	.byte	W02
	.byte		N36   , Gn3 , v100
	.byte	W36
	.byte		N12   , Fn3 
	.byte	W12
@ 062   ----------------------------------------
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N02   , Fn3 
	.byte	W02
	.byte	W10
	.byte		N80   , Gn3 , v100, gtp1
	.byte	W44
	.byte	W01
	.byte		VOL   , 63*mus_vs_trainer_mvl/mxv
	.byte	W02
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W01
@ 063   ----------------------------------------
	.byte		        43*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        43*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        40*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        33*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        26*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        26*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        26*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        36*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        46*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        56*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte		N01   , Gn3 , v104
	.byte	W01
	.byte		        Fs3 
	.byte	W01
	.byte		        Fn3 
	.byte	W01
	.byte		VOL   , 63*mus_vs_trainer_mvl/mxv
	.byte		N01   , En3 
	.byte	W01
	.byte		        Ds3 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		        Cs3 
	.byte	W01
	.byte		        Cn3 
	.byte	W01
	.byte		        Bn2 
	.byte	W01
	.byte		        As2 
	.byte	W01
	.byte		        An2 
	.byte	W01
	.byte		        Gs2 
	.byte	W01
	.byte	W03
	.byte		VOICE , 17
	.byte		N24   , Cn4 , v127
	.byte	W24
	.byte		N36   , Fn4 
	.byte	W24
@ 064   ----------------------------------------
	.byte	W12
	.byte		        Gn4 
	.byte	W36
	.byte		N48   , Cn5 
	.byte	W48
@ 065   ----------------------------------------
	.byte		        Dn5 
	.byte	W48
	.byte		N36   , En5 
	.byte	W36
	.byte		N12   , Dn5 
	.byte	W12
@ 066   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N92   , Cn5 
	.byte	W36
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        88*mus_vs_trainer_mvl/mxv
	.byte	W06
@ 067   ----------------------------------------
	.byte		        71*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-14
	.byte	W06
	.byte		VOL   , 59*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        45*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W02
	.byte		        55*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        65*mus_vs_trainer_mvl/mxv
	.byte	W04
	.byte		        75*mus_vs_trainer_mvl/mxv
	.byte	W11
	.byte	W04
	.byte		VOICE , 29
	.byte		BEND  , c_v+0
	.byte		N12   , Cn4 , v096
	.byte	W12
	.byte	W24
	.byte		        Cs4 
	.byte	W12
@ 068   ----------------------------------------
	.byte	W24
	.byte		        Cn3 
	.byte	W12
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	W24
	.byte		        Gs3 
	.byte	W12
@ 069   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   , Cn4 
	.byte	W12
	.byte	W24
	.byte		        Cs4 
	.byte	W12
@ 070   ----------------------------------------
	.byte	W24
	.byte		        Cn3 
	.byte	W12
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	W24
	.byte		        Gs3 
	.byte	W12
@ 071   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs4 
	.byte	W24
	.byte		VOICE , 90
	.byte		VOL   , 100*mus_vs_trainer_mvl/mxv
	.byte		N12   , Cn3 , v127
	.byte	W12
	.byte	W24
	.byte		        Cs3 
	.byte	W12
@ 072   ----------------------------------------
	.byte	W24
	.byte		VOL   , 127*mus_vs_trainer_mvl/mxv
	.byte		N12   , Cn2 
	.byte	W12
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	W24
	.byte		        Gs2 
	.byte	W12
@ 073   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs2 
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W12
	.byte	W24
	.byte		        Cs3 
	.byte	W12
@ 074   ----------------------------------------
	.byte	W24
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W12
	.byte	W24
	.byte		        Cs3 
	.byte	W12
@ 075   ----------------------------------------
	.byte	W24
	.byte		N24   , As2 
	.byte	W24
	.byte	GOTO
	 .word	mus_vs_trainer_1_B1
mus_vs_trainer_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_vs_trainer_2:
	.byte	KEYSH , mus_vs_trainer_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 24
	.byte		LFOS  , 20
	.byte		PAN   , c_v-14
	.byte		VOL   , 56*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W48
@ 001   ----------------------------------------
@ 002   ----------------------------------------
	.byte		N06   , Cn6 , v076
	.byte	W06
	.byte		        Cs6 
	.byte	W06
	.byte		        Dn6 
	.byte	W06
	.byte		        Ds6 
	.byte	W06
	.byte		        En6 
	.byte	W06
	.byte		        Fn6 
	.byte	W06
	.byte		        Fs6 
	.byte	W06
	.byte		        Gn6 
	.byte	W06
	.byte		VOL   , 75*mus_vs_trainer_mvl/mxv
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Cs6 
	.byte	W06
	.byte		        Dn6 
	.byte	W06
	.byte		        Ds6 
	.byte	W06
	.byte		        En6 
	.byte	W06
	.byte		        Fn6 
	.byte	W06
	.byte		        Fs6 
	.byte	W06
	.byte		        Gn6 
	.byte	W06
@ 003   ----------------------------------------
	.byte		VOL   , 85*mus_vs_trainer_mvl/mxv
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Cs6 
	.byte	W06
	.byte		        Dn6 
	.byte	W06
	.byte		        Ds6 
	.byte	W06
	.byte		        En6 
	.byte	W06
	.byte		        Fn6 
	.byte	W06
	.byte		        Fs6 
	.byte	W06
	.byte		        Gn6 
	.byte	W06
	.byte		VOICE , 17
	.byte		VOL   , 70*mus_vs_trainer_mvl/mxv
	.byte		N12   , Cn4 , v088
	.byte	W36
	.byte		        Ds4 
	.byte	W12
@ 004   ----------------------------------------
mus_vs_trainer_2_004:
	.byte	W24
	.byte		N12   , Cs4 , v088
	.byte	W24
	.byte		        Cn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W24
	.byte		        Ds4 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	W24
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , Cn4 
	.byte	W36
	.byte		        Ds4 
	.byte	W12
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_2_004
@ 007   ----------------------------------------
	.byte	W24
	.byte		N24   , Gs4 , v088
	.byte	W24
	.byte		VOICE , 24
	.byte		PAN   , c_v+0
	.byte		VOL   , 127*mus_vs_trainer_mvl/mxv
	.byte		N12   , Cn5 
	.byte	W36
	.byte		        Ds5 
	.byte	W12
@ 008   ----------------------------------------
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		        Cn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W24
	.byte		        Ds5 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W09
	.byte		N03   , Gs4 , v076
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		N24   , Cs5 , v088
	.byte	W24
	.byte		N06   , Cn5 
	.byte	W12
	.byte		        Cn5 , v072
	.byte	W06
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte	W03
	.byte		N03   , Dn6 , v088
	.byte	W03
	.byte		N24   , Ds6 
	.byte	W12
@ 010   ----------------------------------------
	.byte	W18
	.byte		N06   , Cn6 
	.byte	W06
	.byte		N12   , Cs6 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		        Cs6 , v076
	.byte	W12
	.byte	W12
@ 011   ----------------------------------------
	.byte		        Cs6 , v064
	.byte	W12
	.byte	W12
	.byte		        Cs6 , v052
	.byte	W12
	.byte	W12
mus_vs_trainer_2_B1:
	.byte		VOICE , 60
	.byte		VOL   , 127*mus_vs_trainer_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		BEND  , c_v-14
	.byte		N11   , Gn3 , v044
	.byte		N12   , Cn4 , v088
	.byte	W11
	.byte	W01
	.byte	W12
@ 012   ----------------------------------------
	.byte	W24
	.byte		N11   , Gn3 , v044
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W13
	.byte		        Cn3 
	.byte		N11   , Gn3 
	.byte	W11
	.byte	W01
	.byte		N11   
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W13
	.byte		        Gn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W01
@ 013   ----------------------------------------
	.byte	W12
	.byte		        Gn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W48
	.byte	W01
	.byte		        Fn3 
	.byte		N11   , Cs4 
	.byte	W11
	.byte	W13
@ 014   ----------------------------------------
	.byte	W24
	.byte		        Fn3 
	.byte		N11   , Cs4 
	.byte	W11
	.byte	W13
	.byte		        Cs3 
	.byte		N11   , Gs3 
	.byte	W11
	.byte	W01
	.byte		        Fn3 
	.byte		N11   , Cs4 
	.byte	W11
	.byte	W13
	.byte		        Gs3 
	.byte		N11   , Cs4 
	.byte	W11
	.byte	W01
@ 015   ----------------------------------------
	.byte	W12
	.byte		        Fn3 
	.byte		N11   , Cs4 
	.byte	W11
	.byte	W24
	.byte	W01
	.byte		VOICE , 56
	.byte		BEND  , c_v-4
	.byte		N48   , Cn5 , v096
	.byte	W24
	.byte		MOD   , 7
	.byte	W24
@ 016   ----------------------------------------
	.byte		        0
	.byte		N42   , As4 
	.byte	W21
	.byte		MOD   , 6
	.byte	W21
	.byte		        0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		N36   , Dn5 
	.byte	W36
	.byte		N24   , Gn4 
	.byte	W12
@ 017   ----------------------------------------
	.byte		MOD   , 7
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		N72   , Gs5 
	.byte	W32
	.byte	W01
	.byte		MOD   , 7
	.byte	W15
@ 018   ----------------------------------------
	.byte	W24
	.byte		        0
	.byte		N12   
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		N36   , As5 
	.byte	W36
	.byte		N24   , Gs5 
	.byte	W12
@ 019   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte		N60   , Gn5 
	.byte	W30
	.byte		MOD   , 7
	.byte	W18
@ 020   ----------------------------------------
	.byte	W12
	.byte		        0
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		N92   , En5 
	.byte	W36
	.byte		MOD   , 7
	.byte	W12
@ 021   ----------------------------------------
	.byte		VOL   , 120*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        113*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        105*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        96*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        85*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        72*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        56*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        39*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		MOD   , 0
	.byte	W03
	.byte		VOICE , 62
	.byte		VOL   , 127*mus_vs_trainer_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N23   , As3 , v068
	.byte	W23
	.byte	W01
	.byte		N11   , As2 
	.byte	W11
	.byte	W13
@ 022   ----------------------------------------
	.byte		N23   , Dn4 
	.byte	W23
	.byte	W01
	.byte		N11   , Dn3 
	.byte	W11
	.byte	W13
	.byte		N32   , Fn4 , v068, gtp3
	.byte	W32
	.byte	W03
	.byte	W01
	.byte		N05   , An4 
	.byte	W05
	.byte	W07
@ 023   ----------------------------------------
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		        Gn4 
	.byte	W05
	.byte	W07
	.byte		        Fn4 
	.byte	W05
	.byte	W07
	.byte		N68   , En4 , v068, gtp3
	.byte	W24
	.byte		VOL   , 120*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        103*mus_vs_trainer_mvl/mxv
	.byte	W12
@ 024   ----------------------------------------
	.byte		        46*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W11
	.byte	W01
	.byte		        109*mus_vs_trainer_mvl/mxv
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W13
	.byte		N68   , Gn4 , v068, gtp3
	.byte	W24
	.byte		VOL   , 120*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        103*mus_vs_trainer_mvl/mxv
	.byte	W12
@ 025   ----------------------------------------
	.byte		        46*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W11
	.byte	W01
	.byte		        127*mus_vs_trainer_mvl/mxv
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W13
	.byte		N44   , Fn3 , v080, gtp3
	.byte	W44
	.byte	W03
	.byte	W01
@ 026   ----------------------------------------
	.byte		        As2 , v080, gtp3
	.byte	W44
	.byte	W03
	.byte	W01
	.byte		N23   , Fn3 
	.byte	W23
	.byte	W01
	.byte		        Dn3 
	.byte	W23
	.byte	W01
@ 027   ----------------------------------------
	.byte		        As2 
	.byte	W23
	.byte	W01
	.byte		        Bn2 
	.byte	W23
	.byte	W01
	.byte		N44   , Cn3 , v080, gtp3
	.byte	W44
	.byte	W03
	.byte	W01
@ 028   ----------------------------------------
	.byte	W48
	.byte		        Gn3 , v080, gtp3
	.byte	W44
	.byte	W03
	.byte	W01
@ 029   ----------------------------------------
	.byte		        En3 , v080, gtp3
	.byte	W06
	.byte		VOL   , 116*mus_vs_trainer_mvl/mxv
	.byte	W09
	.byte		        105*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        94*mus_vs_trainer_mvl/mxv
	.byte	W09
	.byte		        80*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        64*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        42*mus_vs_trainer_mvl/mxv
	.byte	W05
	.byte	W01
	.byte		VOICE , 5
	.byte		VOL   , 127*mus_vs_trainer_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-8
	.byte		N36   , Cn4 , v064
	.byte	W36
	.byte		        Gn3 
	.byte	W12
@ 030   ----------------------------------------
	.byte	W24
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N36   , Fn4 
	.byte	W36
	.byte		VOICE , 1
	.byte		N11   , Dn3 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W01
@ 031   ----------------------------------------
mus_vs_trainer_2_031:
	.byte	W12
	.byte		N11   , Dn3 , v064
	.byte		N11   , Fn3 
	.byte	W11
	.byte	PEND
	.byte	W24
	.byte	W01
	.byte		        Dn3 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W01
	.byte		        As2 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W24
	.byte	W01
@ 032   ----------------------------------------
	.byte		        As2 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W01
	.byte		        Dn3 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W24
	.byte	W01
	.byte		        En3 
	.byte	W11
	.byte	W01
	.byte		        Cn3 
	.byte		N11   , En3 
	.byte	W11
	.byte	W13
	.byte		        Cn3 
	.byte		N11   , En3 
	.byte	W11
	.byte	W01
@ 033   ----------------------------------------
mus_vs_trainer_2_033:
	.byte	W12
	.byte		N11   , Cn3 , v064
	.byte		N11   , En3 
	.byte	W11
	.byte	PEND
	.byte	W24
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		        Cn3 
	.byte		N11   , En3 
	.byte	W11
	.byte	W24
	.byte	W01
@ 034   ----------------------------------------
	.byte		        Cn3 
	.byte		N11   , En3 
	.byte	W11
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W24
	.byte	W01
	.byte		        Fn3 
	.byte	W11
	.byte	W01
	.byte		        Dn3 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W13
	.byte		        Dn3 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W01
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_2_031
	.byte	W24
	.byte	W01
	.byte		N11   , Dn3 , v064
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W01
	.byte		        As2 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W24
	.byte	W01
@ 036   ----------------------------------------
	.byte		        As2 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W01
	.byte		        Dn3 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W24
	.byte	W01
	.byte		        En3 
	.byte	W11
	.byte	W01
	.byte		        Cn3 
	.byte		N11   , En3 
	.byte	W11
	.byte	W13
	.byte		        Cn3 
	.byte		N11   , En3 
	.byte	W11
	.byte	W01
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_2_033
	.byte	W01
	.byte		N11   , En3 , v064
	.byte	W11
	.byte	W01
	.byte		        Cn3 
	.byte		N11   , En3 
	.byte	W11
	.byte	W01
	.byte		VOICE , 1
	.byte	W12
	.byte		N11   , Cn3 
	.byte		N11   , En3 
	.byte	W11
	.byte	W13
	.byte		        Cn3 
	.byte		N11   , En3 
	.byte	W11
	.byte	W01
@ 038   ----------------------------------------
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N11   , Cn3 
	.byte		N11   , En3 
	.byte	W11
	.byte	W13
	.byte		        Cn3 
	.byte		N11   , En3 
	.byte	W11
	.byte	W13
	.byte		        Cn3 
	.byte		N11   , En3 
	.byte	W11
	.byte	W13
	.byte		VOICE , 21
	.byte		N24   , As3 , v104
	.byte	W12
@ 039   ----------------------------------------
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W36
	.byte		        Fn4 
	.byte	W36
	.byte		N24   , As4 
	.byte	W12
@ 040   ----------------------------------------
	.byte	W12
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N36   , En4 
	.byte	W36
	.byte		        Cn4 
	.byte	W12
@ 041   ----------------------------------------
	.byte	W24
	.byte		N24   , Gn4 
	.byte	W24
	.byte		VOICE , 14
	.byte		N36   , Cn5 
	.byte	W36
	.byte		        Cs5 
	.byte	W12
@ 042   ----------------------------------------
	.byte	W24
	.byte		N24   , Cn3 , v088
	.byte	W24
	.byte		N36   , Gn4 , v104
	.byte	W36
	.byte		        Gs4 
	.byte	W12
@ 043   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs3 , v108
	.byte	W24
	.byte		N36   , Cn4 , v104
	.byte	W36
	.byte		        Cs4 
	.byte	W12
@ 044   ----------------------------------------
	.byte	W24
	.byte	W24
	.byte		        Gn3 
	.byte	W36
	.byte		        Gs3 
	.byte	W12
@ 045   ----------------------------------------
	.byte	W24
	.byte		VOICE , 62
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		VOL   , 50*mus_vs_trainer_mvl/mxv
	.byte		TIE   , Bn2 , v096
	.byte	W12
	.byte		VOL   , 56*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        70*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		VOL   , 70*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+13
	.byte	W06
	.byte		VOL   , 76*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+13
	.byte	W06
	.byte		VOL   , 76*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W06
@ 046   ----------------------------------------
mus_vs_trainer_2_046:
	.byte		VOL   , 80*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+23
	.byte	W06
	.byte		VOL   , 83*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+26
	.byte	W06
	.byte		VOL   , 83*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+26
	.byte	W06
	.byte		VOL   , 90*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+16
	.byte	W06
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+13
	.byte	W06
	.byte		VOL   , 100*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W06
	.byte		VOL   , 103*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W06
	.byte		VOL   , 103*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-14
	.byte	W06
	.byte		VOL   , 96*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-17
	.byte	W06
	.byte		VOL   , 83*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W06
	.byte		VOL   , 76*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-27
	.byte	W06
	.byte		VOL   , 70*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-34
	.byte	W06
	.byte		VOL   , 66*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-41
	.byte	W06
	.byte		VOL   , 63*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-41
	.byte	W06
	.byte		VOL   , 26*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-48
	.byte	W06
	.byte		VOL   , 13*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-51
	.byte	W06
	.byte	PEND
@ 047   ----------------------------------------
	.byte		VOL   , 3*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-58
	.byte	W06
	.byte		        c_v-64
	.byte	W06
	.byte		        c_v-64
	.byte	W24
	.byte		EOT   , Bn2 
	.byte	W12
	.byte		VOL   , 50*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , Cn3 , v092
	.byte	W12
	.byte		VOL   , 56*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        70*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		VOL   , 70*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+13
	.byte	W06
	.byte		VOL   , 76*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+13
	.byte	W06
	.byte		VOL   , 76*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W06
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_2_046
@ 049   ----------------------------------------
mus_vs_trainer_2_049:
	.byte		BEND  , c_v-58
	.byte	W06
	.byte		        c_v-64
	.byte	W06
	.byte		        c_v-64
	.byte	W24
	.byte	PEND
	.byte		EOT   , Cn3 
	.byte	W12
	.byte		VOL   , 50*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , Bn2 , v092
	.byte	W12
	.byte		VOL   , 56*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        70*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		VOL   , 70*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+13
	.byte	W06
	.byte		VOL   , 76*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+13
	.byte	W06
	.byte		VOL   , 76*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W06
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_2_046
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_2_049
	.byte		EOT   , Bn2 
	.byte	W12
	.byte		VOL   , 50*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , Cn3 , v092
	.byte	W12
	.byte		VOL   , 56*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        70*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		VOL   , 70*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+13
	.byte	W06
	.byte		VOL   , 76*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+13
	.byte	W06
	.byte		VOL   , 76*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W06
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_2_046
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_2_049
	.byte		EOT   , Cn3 
	.byte	W12
	.byte		VOL   , 50*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , Bn2 , v092
	.byte	W12
	.byte		VOL   , 56*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        70*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		VOL   , 70*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+13
	.byte	W06
	.byte		VOL   , 76*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+13
	.byte	W06
	.byte		VOL   , 76*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W06
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_2_046
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_2_049
	.byte		EOT   , Bn2 
	.byte		VOICE , 48
	.byte		PAN   , c_v+0
	.byte		VOL   , 75*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N12   , Dn4 , v104
	.byte	W12
	.byte		TIE   , En4 
	.byte	W48
@ 056   ----------------------------------------
	.byte	W36
	.byte		VOL   , 86*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        90*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        90*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        90*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        93*mus_vs_trainer_mvl/mxv
	.byte	W12
@ 057   ----------------------------------------
	.byte		        100*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        100*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        100*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        96*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        86*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        76*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        66*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        53*mus_vs_trainer_mvl/mxv
	.byte	W12
@ 058   ----------------------------------------
	.byte		        40*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        16*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        6*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		EOT   
	.byte	W48
@ 059   ----------------------------------------
	.byte		VOL   , 120*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        113*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        105*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        96*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        85*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        72*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        56*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        39*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		VOICE , 29
	.byte		VOL   , 127*mus_vs_trainer_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N11   , Cn3 , v100
	.byte	W11
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N32   , Fn3 , v100, gtp3
	.byte	W24
@ 060   ----------------------------------------
	.byte	W11
	.byte		N01   , Fs3 
	.byte	W01
	.byte		N32   , Gn3 
	.byte	W32
	.byte		N02   , Gs3 
	.byte	W02
	.byte		        An3 
	.byte	W02
	.byte		N48   , As3 
	.byte	W48
@ 061   ----------------------------------------
	.byte		N44   , An3 , v104, gtp2
	.byte	W44
	.byte	W02
	.byte		N02   , Gs3 
	.byte	W02
	.byte		N36   , Gn3 , v100
	.byte	W36
	.byte		N12   , Fn3 
	.byte	W12
@ 062   ----------------------------------------
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N02   , Fn3 
	.byte	W02
	.byte	W10
	.byte		N80   , Gn3 , v100, gtp1
	.byte	W48
@ 063   ----------------------------------------
	.byte		VOL   , 120*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        113*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        105*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        96*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        85*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        72*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		N01   , Gn3 , v104
	.byte	W01
	.byte		        Fs3 
	.byte	W01
	.byte		        Fn3 
	.byte	W01
	.byte		VOL   , 56*mus_vs_trainer_mvl/mxv
	.byte		N01   , En3 
	.byte	W01
	.byte		        Ds3 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		        Cs3 
	.byte	W01
	.byte		        Cn3 
	.byte	W01
	.byte		        Bn2 
	.byte	W01
	.byte		VOL   , 39*mus_vs_trainer_mvl/mxv
	.byte		N01   , As2 
	.byte	W01
	.byte		        An2 
	.byte	W01
	.byte		        Gs2 
	.byte	W01
	.byte	W03
	.byte		VOICE , 56
	.byte		VOL   , 127*mus_vs_trainer_mvl/mxv
	.byte		N24   , Cn4 , v088
	.byte	W24
	.byte		N36   , Fn4 
	.byte	W15
	.byte		MOD   , 6
	.byte	W09
@ 064   ----------------------------------------
	.byte	W12
	.byte		        0
	.byte		N36   , Gn4 
	.byte	W36
	.byte		N48   , Cn5 
	.byte	W24
	.byte		MOD   , 7
	.byte	W24
@ 065   ----------------------------------------
	.byte		        0
	.byte		N48   , Dn5 
	.byte	W24
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N36   , En5 
	.byte	W21
	.byte		MOD   , 7
	.byte	W15
	.byte		        0
	.byte		N12   , Dn5 
	.byte	W12
@ 066   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N92   , Cn5 
	.byte	W32
	.byte	W01
	.byte		MOD   , 7
	.byte	W15
@ 067   ----------------------------------------
	.byte		VOL   , 120*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        113*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        105*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        96*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        85*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        72*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        56*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        39*mus_vs_trainer_mvl/mxv
	.byte	W02
	.byte	W01
	.byte		MOD   , 0
	.byte	W03
	.byte		VOICE , 48
	.byte		VOL   , 127*mus_vs_trainer_mvl/mxv
	.byte		PAN   , c_v-14
	.byte		BEND  , c_v+8
	.byte		N12   , Cn3 , v068
	.byte	W12
	.byte	W24
	.byte		        Cs3 
	.byte	W12
@ 068   ----------------------------------------
	.byte	W24
	.byte		        Cn2 
	.byte	W12
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	W24
	.byte		        Gs2 
	.byte	W12
@ 069   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs2 
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W12
	.byte	W24
	.byte		        Cs3 
	.byte	W12
@ 070   ----------------------------------------
	.byte	W24
	.byte		        Cn2 
	.byte	W12
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	W24
	.byte		        Gs2 
	.byte	W12
@ 071   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs3 
	.byte	W24
	.byte		VOICE , 17
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N12   , Cn2 , v092
	.byte	W12
	.byte	W24
	.byte		        Cs2 
	.byte	W12
@ 072   ----------------------------------------
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	W24
	.byte		        Gs1 
	.byte	W12
@ 073   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs1 
	.byte	W24
	.byte		N12   , Cn2 
	.byte	W12
	.byte	W24
	.byte		        Cs2 
	.byte	W12
@ 074   ----------------------------------------
	.byte	W24
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N12   , Cn2 
	.byte	W12
	.byte	W24
	.byte		        Cs2 
	.byte	W12
@ 075   ----------------------------------------
	.byte	W24
	.byte		N24   , As1 
	.byte	W24
	.byte	GOTO
	 .word	mus_vs_trainer_2_B1
mus_vs_trainer_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.12) ****************@

mus_vs_trainer_3:
	.byte		VOL   , 127*mus_vs_trainer_mvl/mxv
	.byte	KEYSH , mus_vs_trainer_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 62
	.byte		BEND  , c_v+0
	.byte		N06   , Cn4 , v076
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		VOL   , 100*mus_vs_trainer_mvl/mxv
	.byte		N06   , As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 001   ----------------------------------------
@ 002   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		BEND  , c_v+13
	.byte		N90   , Dn3 
	.byte	W06
	.byte		BEND  , c_v+30
	.byte	W06
	.byte		        c_v+37
	.byte	W06
	.byte		        c_v+47
	.byte	W06
	.byte		        c_v+50
	.byte	W06
	.byte		        c_v+57
	.byte	W06
@ 003   ----------------------------------------
	.byte		        c_v+57
	.byte	W06
	.byte		        c_v+63
	.byte	W06
	.byte		        c_v+50
	.byte	W06
	.byte		        c_v+20
	.byte	W06
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		BEND  , c_v-1
	.byte	W06
	.byte		        c_v-11
	.byte	W06
	.byte		        c_v-17
	.byte	W06
	.byte		        c_v-27
	.byte	W06
	.byte		        c_v-27
	.byte	W06
	.byte	W42
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte		VOICE , 17
	.byte	W44
	.byte	W02
	.byte		N02   , Bn3 , v080
	.byte	W02
	.byte		N12   , Cn4 
	.byte	W12
	.byte	W22
	.byte		N02   , Dn4 
	.byte	W02
	.byte		N12   , Ds4 
	.byte	W12
@ 008   ----------------------------------------
	.byte	W24
	.byte		        Cs4 
	.byte	W12
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	W10
	.byte		N02   , Dn4 
	.byte	W02
	.byte		N12   , Ds4 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W24
	.byte		        Cs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn4 , v088
	.byte	W12
	.byte	W24
	.byte		        Ds4 
	.byte	W12
@ 010   ----------------------------------------
	.byte	W22
	.byte		N02   , Cn4 , v080
	.byte	W02
	.byte		N12   , Cs4 , v088
	.byte	W12
	.byte	W10
	.byte		N02   , Bn3 , v080
	.byte	W02
	.byte		N12   , Cn4 , v088
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W16
	.byte		N01   , Bn3 , v080
	.byte	W01
	.byte		        Cn4 
	.byte	W01
	.byte		        Cs4 
	.byte	W01
	.byte		        Dn4 
	.byte	W01
	.byte		        Ds4 
	.byte	W01
	.byte		        En4 
	.byte	W01
	.byte		        Fn4 
	.byte	W01
	.byte		        Fs4 
	.byte	W01
	.byte		N24   , Gn4 , v088
	.byte	W24
mus_vs_trainer_3_B1:
	.byte		VOICE , 60
	.byte		BEND  , c_v+0
	.byte	W48
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte		VOICE , 30
	.byte	W06
	.byte		N02   , Cn2 , v096
	.byte	W02
	.byte	W01
	.byte		        Cs2 
	.byte	W02
	.byte	W01
	.byte		        Ds2 
	.byte	W02
	.byte	W01
	.byte		        Fn2 
	.byte	W02
	.byte	W01
	.byte		        Gn2 
	.byte	W02
	.byte	W01
	.byte		        Gs2 
	.byte	W02
	.byte	W01
	.byte		        As2 
	.byte	W02
	.byte	W01
	.byte		        Cn3 
	.byte	W02
	.byte	W01
	.byte		        Cs3 
	.byte	W02
	.byte	W01
	.byte		        Ds3 
	.byte	W02
	.byte	W01
	.byte		        Fn3 
	.byte	W02
	.byte	W01
	.byte		        Gn3 
	.byte	W02
	.byte	W01
	.byte		        Gs3 
	.byte	W02
	.byte	W01
	.byte		        As3 
	.byte	W02
	.byte	W01
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W07
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N05   , Cn3 
	.byte	W05
	.byte	W07
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W01
@ 016   ----------------------------------------
	.byte	W12
	.byte		N23   , As3 
	.byte	W23
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		        Dn4 
	.byte	W11
	.byte	W01
	.byte		N05   , Gn3 
	.byte	W05
	.byte	W07
	.byte		N11   , Dn4 
	.byte	W11
	.byte	W01
	.byte		N23   , Gn3 
	.byte	W12
@ 017   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		        Dn4 
	.byte	W11
	.byte	W01
	.byte		        Gn4 
	.byte	W11
	.byte	W01
	.byte		N44   , Gs4 , v096, gtp3
	.byte	W24
	.byte		VOL   , 80*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        36*mus_vs_trainer_mvl/mxv
	.byte	W11
	.byte	W01
@ 018   ----------------------------------------
	.byte		        100*mus_vs_trainer_mvl/mxv
	.byte		N11   , Gs3 
	.byte	W11
	.byte	W01
	.byte		        Cs4 
	.byte	W11
	.byte	W01
	.byte		        Fn4 
	.byte	W11
	.byte	W01
	.byte		        Gs4 
	.byte	W11
	.byte	W01
	.byte		N32   , As4 , v096, gtp3
	.byte	W06
	.byte		VOL   , 80*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        36*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        100*mus_vs_trainer_mvl/mxv
	.byte	W05
	.byte	W01
	.byte		N23   , Gs4 
	.byte	W12
@ 019   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N11   , Gn4 
	.byte	W11
	.byte	W01
	.byte		        Fn4 
	.byte	W11
	.byte	W01
	.byte		        Gs4 
	.byte	W11
	.byte	W01
	.byte		N32   , Gn4 , v096, gtp3
	.byte	W06
	.byte		VOL   , 80*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        36*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        100*mus_vs_trainer_mvl/mxv
	.byte	W05
	.byte	W01
	.byte		N23   , Gn3 
	.byte	W12
@ 020   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W01
	.byte		        Gn4 
	.byte	W11
	.byte	W01
	.byte		        Fn4 
	.byte	W11
	.byte	W01
	.byte		N92   , En4 , v096, gtp3
	.byte	W24
	.byte		BEND  , c_v-21
	.byte	W06
	.byte		VOL   , 90*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W06
	.byte		VOL   , 80*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W06
	.byte		VOL   , 56*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W06
@ 021   ----------------------------------------
	.byte		VOL   , 46*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-27
	.byte	W06
	.byte		VOL   , 30*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-27
	.byte	W06
	.byte		VOL   , 10*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-27
	.byte	W06
	.byte		VOL   , 0*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W06
	.byte		        c_v-24
	.byte	W06
	.byte		        c_v-24
	.byte	W06
	.byte		        c_v-24
	.byte	W11
	.byte	W01
	.byte		VOICE , 17
	.byte		VOL   , 88*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-1
	.byte		N48   , As3 , v104
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W42
@ 022   ----------------------------------------
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N36   , Fn4 
	.byte	W36
	.byte		N24   , As4 
	.byte	W12
@ 023   ----------------------------------------
	.byte	W12
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N72   , En4 
	.byte	W48
@ 024   ----------------------------------------
	.byte	W24
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N96   , Gn4 
	.byte	W24
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        88*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        71*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        59*mus_vs_trainer_mvl/mxv
	.byte	W06
@ 025   ----------------------------------------
	.byte		        45*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W02
	.byte		        55*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        65*mus_vs_trainer_mvl/mxv
	.byte	W04
	.byte		        75*mus_vs_trainer_mvl/mxv
	.byte	W21
	.byte		        100*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		VOICE , 25
	.byte		N06   , As2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
@ 026   ----------------------------------------
	.byte		        Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 027   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N05   , As3 
	.byte	W05
	.byte		N07   
	.byte	W07
	.byte		N05   , Dn4 
	.byte	W05
	.byte		N07   
	.byte	W07
	.byte		N06   , En4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 028   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 029   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	W54
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
	.byte	W36
	.byte		VOICE , 14
	.byte	W12
	.byte		N36   , Cn4 
	.byte	W36
	.byte		        Cs4 
	.byte	W12
@ 042   ----------------------------------------
	.byte	W24
	.byte		N24   , Cn2 , v088
	.byte	W24
	.byte		N36   , Gn3 , v104
	.byte	W36
	.byte		        Gs3 
	.byte	W12
@ 043   ----------------------------------------
	.byte	W24
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte		N24   , Cs2 , v108
	.byte	W24
	.byte		VOICE , 53
	.byte		BEND  , c_v+0
	.byte		N36   , Cn4 
	.byte	W36
	.byte		        Cs4 
	.byte	W12
@ 044   ----------------------------------------
	.byte	W24
	.byte	W24
	.byte		        Gn3 
	.byte	W36
	.byte		        Gs3 
	.byte	W12
@ 045   ----------------------------------------
	.byte	W24
	.byte		VOICE , 29
	.byte		N24   , Cs3 , v064
	.byte	W24
	.byte		TIE   , Cn3 , v060
	.byte	W48
@ 046   ----------------------------------------
mus_vs_trainer_3_046:
	.byte		VOL   , 56*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        56*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        56*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        43*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte	PEND
@ 047   ----------------------------------------
mus_vs_trainer_3_047:
	.byte		VOL   , 30*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        23*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        23*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        20*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        16*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte	PEND
	.byte		EOT   , Cn3 
	.byte		VOICE , 30
	.byte		VOL   , 75*mus_vs_trainer_mvl/mxv
	.byte		N12   , Cn3 , v060
	.byte	W12
	.byte		TIE   , Cs3 
	.byte	W48
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_3_046
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_3_047
	.byte		EOT   , Cs3 
	.byte		VOICE , 29
	.byte		VOL   , 75*mus_vs_trainer_mvl/mxv
	.byte		N12   , Cs3 , v060
	.byte	W12
	.byte		TIE   , Cn3 
	.byte	W48
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_3_046
@ 051   ----------------------------------------
	.byte		VOL   , 30*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        23*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        23*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        20*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		VOL   , 16*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		EOT   , Cn3 
	.byte		VOICE , 60
	.byte		VOL   , 75*mus_vs_trainer_mvl/mxv
	.byte		BENDR , 20
	.byte	W60
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W24
	.byte		VOICE , 29
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N12   , Dn4 , v104
	.byte	W12
	.byte		TIE   , En4 
	.byte	W48
@ 056   ----------------------------------------
	.byte	W12
	.byte		VOL   , 66*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        10*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        0*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        0*mus_vs_trainer_mvl/mxv
	.byte	W12
@ 057   ----------------------------------------
	.byte		        0*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        0*mus_vs_trainer_mvl/mxv
	.byte	W36
	.byte		EOT   
	.byte	W48
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
	.byte		VOICE , 5
	.byte		VOL   , 75*mus_vs_trainer_mvl/mxv
	.byte		N24   , Cn4 , v127
	.byte	W24
	.byte		N36   , Fn4 
	.byte	W24
@ 064   ----------------------------------------
	.byte	W12
	.byte		        Gn4 
	.byte	W36
	.byte		N48   , Cn5 
	.byte	W48
@ 065   ----------------------------------------
	.byte		        Dn5 
	.byte	W48
	.byte		N36   , En5 
	.byte	W36
	.byte		N12   , Dn5 
	.byte	W12
@ 066   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N92   , Cn5 
	.byte	W36
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        88*mus_vs_trainer_mvl/mxv
	.byte	W06
@ 067   ----------------------------------------
	.byte		        71*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        59*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        45*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W02
	.byte		        55*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        65*mus_vs_trainer_mvl/mxv
	.byte	W04
	.byte		        75*mus_vs_trainer_mvl/mxv
	.byte	W11
	.byte	W04
	.byte		VOICE , 29
	.byte		BEND  , c_v+0
	.byte		N12   , Cn3 
	.byte	W12
	.byte	W24
	.byte		        Cs3 
	.byte	W12
@ 068   ----------------------------------------
	.byte	W24
	.byte		        Cn2 
	.byte	W12
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	W24
	.byte		        Gs2 
	.byte	W12
@ 069   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs2 
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W12
	.byte	W24
	.byte		        Cs3 
	.byte	W12
@ 070   ----------------------------------------
	.byte	W24
	.byte		        Cn2 
	.byte	W12
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	W24
	.byte		        Gs2 
	.byte	W12
@ 071   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs3 
	.byte	W24
	.byte		VOICE , 62
	.byte		N12   , Cn2 
	.byte	W12
	.byte	W24
	.byte		        Cs2 
	.byte	W12
@ 072   ----------------------------------------
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	W24
	.byte		        Gs1 
	.byte	W12
@ 073   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs1 
	.byte	W24
	.byte		N12   , Cn2 
	.byte	W12
	.byte	W24
	.byte		        Cs2 
	.byte	W12
@ 074   ----------------------------------------
	.byte	W24
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N12   , Cn2 
	.byte	W12
	.byte	W24
	.byte		        Cs2 
	.byte	W12
@ 075   ----------------------------------------
	.byte	W24
	.byte		N24   , As1 
	.byte	W24
	.byte	GOTO
	 .word	mus_vs_trainer_3_B1
mus_vs_trainer_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_vs_trainer_4:
	.byte	KEYSH , mus_vs_trainer_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 80*mus_vs_trainer_mvl/mxv
	.byte		BENDR , 12
	.byte		N06   , Cn1 , v076
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		LFOS  , 44
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
@ 001   ----------------------------------------
@ 002   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 003   ----------------------------------------
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gn1 , v108
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Cn1 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
@ 006   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
@ 007   ----------------------------------------
	.byte		N12   , Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
@ 008   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
@ 009   ----------------------------------------
	.byte		        Cn1 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
@ 010   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
@ 011   ----------------------------------------
	.byte		N12   , Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte	W12
mus_vs_trainer_4_B1:
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N11   , Cn2 
	.byte	W12
@ 012   ----------------------------------------
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N11   , Cn2 
	.byte	W12
@ 013   ----------------------------------------
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn0 
	.byte	W12
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N11   , Fn0 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N11   , Fn0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
@ 015   ----------------------------------------
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N05   , Cn2 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 016   ----------------------------------------
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N11   , As1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N12   , En1 
	.byte	W12
	.byte		N11   , As1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N11   , Gs0 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N11   , Gs0 
	.byte	W12
	.byte		N05   , Cs1 
	.byte	W12
	.byte		N11   , Gs1 
	.byte	W12
	.byte		N23   , Cs2 
	.byte	W24
	.byte		        Gs1 
	.byte	W24
@ 019   ----------------------------------------
	.byte		        Fn1 
	.byte	W24
	.byte		        Cs1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		N32   , Gn0 , v108, gtp3
	.byte	W24
@ 020   ----------------------------------------
	.byte	W12
	.byte		N23   , En1 
	.byte	W24
	.byte		N11   , Fn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 021   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		N23   , Dn1 
	.byte	W12
@ 022   ----------------------------------------
	.byte	W12
	.byte		N11   , As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Fn1 
	.byte	W12
@ 023   ----------------------------------------
mus_vs_trainer_4_023:
	.byte	W12
	.byte		N11   , As0 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , En1 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
mus_vs_trainer_4_024:
	.byte	W12
	.byte		N11   , Cn1 , v108
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
	.byte		N23   , Gn1 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
	.byte	W12
	.byte		N11   , Cn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Dn1 
	.byte	W12
@ 026   ----------------------------------------
	.byte	W12
	.byte		N11   , As0 
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
	.byte		N23   , Fn1 
	.byte	W12
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_4_023
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_4_024
@ 029   ----------------------------------------
	.byte	W12
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 030   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 031   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 032   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 033   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N17   , Cn1 
	.byte	W18
	.byte		        Gn0 
	.byte	W18
	.byte		N11   , En1 
	.byte	W12
@ 034   ----------------------------------------
	.byte		N17   , Gn1 
	.byte	W18
	.byte		        Fn1 
	.byte	W18
	.byte		N11   , En1 
	.byte	W12
	.byte		N17   , Fn1 
	.byte	W18
	.byte		        Dn1 
	.byte	W18
	.byte		N11   , Fn1 
	.byte	W12
@ 035   ----------------------------------------
	.byte		N17   , As1 
	.byte	W18
	.byte		        An1 
	.byte	W18
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N17   , As0 
	.byte	W18
	.byte		        Fn0 
	.byte	W18
	.byte		N11   , An0 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N17   , Cn1 
	.byte	W18
	.byte		        Fn1 
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		N17   , En1 
	.byte	W18
	.byte		        Cn1 
	.byte	W18
	.byte		N11   , Gn0 
	.byte	W12
@ 037   ----------------------------------------
	.byte		N17   , En1 
	.byte	W18
	.byte		N28   , Cn1 , v108, gtp1
	.byte	W30
	.byte		N11   
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 038   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 039   ----------------------------------------
	.byte		        Fn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Fn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Fn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Fn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 040   ----------------------------------------
	.byte		        Fn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 041   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 042   ----------------------------------------
mus_vs_trainer_4_042:
	.byte		N02   , Gn2 , v108
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   , Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_4_042
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_4_042
@ 045   ----------------------------------------
	.byte		N02   , Gn2 , v108
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   , Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N12   , Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 046   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 047   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 048   ----------------------------------------
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 049   ----------------------------------------
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 050   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 051   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 052   ----------------------------------------
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 053   ----------------------------------------
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 054   ----------------------------------------
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 055   ----------------------------------------
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N11   , Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 056   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 057   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 058   ----------------------------------------
	.byte		        As0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Cn0 
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N11   , Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 059   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W24
@ 060   ----------------------------------------
	.byte		        As1 
	.byte	W12
	.byte		        Dn1 
	.byte	W24
	.byte		        Fn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W24
@ 061   ----------------------------------------
	.byte		        As0 
	.byte	W12
	.byte		N05   , Cn2 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
@ 062   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		        Cn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 063   ----------------------------------------
	.byte		        As1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 064   ----------------------------------------
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 065   ----------------------------------------
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn0 
	.byte	W12
@ 066   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn0 
	.byte	W12
@ 067   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn0 
	.byte	W24
	.byte		N12   , Cn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
@ 068   ----------------------------------------
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
@ 069   ----------------------------------------
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W11
	.byte		        Cn1 
	.byte	W01
	.byte	W11
	.byte		        Gn1 
	.byte	W01
@ 070   ----------------------------------------
	.byte	W11
	.byte		        Cn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W01
@ 071   ----------------------------------------
	.byte	W11
	.byte		        Cn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N11   , As0 
	.byte	W12
	.byte		        Fn0 
	.byte	W01
@ 072   ----------------------------------------
	.byte		N12   , Fn1 
	.byte	W12
	.byte	W11
	.byte		N11   , Fn0 
	.byte	W13
	.byte		N12   , Fn1 
	.byte	W11
	.byte		N11   , Fn0 
	.byte	W01
	.byte	W11
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W01
@ 073   ----------------------------------------
	.byte	W11
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N05   , Cn2 
	.byte	W01
@ 074   ----------------------------------------
	.byte	W11
	.byte		N05   
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		        As1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W01
@ 075   ----------------------------------------
	.byte	W11
	.byte		        Gs1 
	.byte	W12
	.byte		        Cn2 
	.byte	W24
	.byte	W01
	.byte	GOTO
	 .word	mus_vs_trainer_4_B1
mus_vs_trainer_4_B2:
	.byte	FINE

@**************** Track 5 (Midi-Chn.1) ****************@

mus_vs_trainer_5:
	.byte	KEYSH , mus_vs_trainer_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 81
	.byte		PAN   , c_v+15
	.byte		VOL   , 40*mus_vs_trainer_mvl/mxv
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		N06   , Cn5 , v076
	.byte	W06
	.byte		VOL   , 50*mus_vs_trainer_mvl/mxv
	.byte		N06   , Bn4 
	.byte	W06
	.byte		VOL   , 56*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , As4 
	.byte	W06
	.byte		VOL   , 60*mus_vs_trainer_mvl/mxv
	.byte		N06   , An4 
	.byte	W06
	.byte		VOL   , 63*mus_vs_trainer_mvl/mxv
	.byte		N06   , As4 
	.byte	W06
	.byte		VOL   , 76*mus_vs_trainer_mvl/mxv
	.byte		N06   , An4 
	.byte	W06
	.byte		VOL   , 83*mus_vs_trainer_mvl/mxv
	.byte		N06   , Gs4 
	.byte	W06
	.byte		VOL   , 90*mus_vs_trainer_mvl/mxv
	.byte		N06   , Gn4 
	.byte	W06
@ 001   ----------------------------------------
@ 002   ----------------------------------------
	.byte		VOL   , 90*mus_vs_trainer_mvl/mxv
	.byte		N06   , Gs4 
	.byte	W06
	.byte		VOL   , 90*mus_vs_trainer_mvl/mxv
	.byte		N06   , Gn4 
	.byte	W06
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte		N06   , Fs4 
	.byte	W06
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte		N06   , Fn4 
	.byte	W06
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte		N06   , Fs4 
	.byte	W06
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte		N06   , Fn4 
	.byte	W06
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte		N06   , En4 
	.byte	W06
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte		N06   , Ds4 
	.byte	W06
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte		N06   , En4 
	.byte	W06
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte		N06   , Ds4 
	.byte	W06
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte		N06   , Dn4 
	.byte	W06
	.byte		VOL   , 96*mus_vs_trainer_mvl/mxv
	.byte		N06   , Cs4 
	.byte	W06
	.byte		VOL   , 100*mus_vs_trainer_mvl/mxv
	.byte		N06   , Dn4 
	.byte	W06
	.byte		VOL   , 100*mus_vs_trainer_mvl/mxv
	.byte		N06   , Cs4 
	.byte	W06
	.byte		VOL   , 110*mus_vs_trainer_mvl/mxv
	.byte		N06   , Cn4 
	.byte	W06
	.byte		VOL   , 113*mus_vs_trainer_mvl/mxv
	.byte		N06   , Bn3 
	.byte	W06
@ 003   ----------------------------------------
	.byte		VOL   , 113*mus_vs_trainer_mvl/mxv
	.byte		N06   , Cn4 
	.byte	W06
	.byte		VOL   , 116*mus_vs_trainer_mvl/mxv
	.byte		N06   , Bn3 
	.byte	W06
	.byte		VOL   , 116*mus_vs_trainer_mvl/mxv
	.byte		N06   , As3 
	.byte	W06
	.byte		VOL   , 116*mus_vs_trainer_mvl/mxv
	.byte		N06   , An3 
	.byte	W06
	.byte		VOL   , 116*mus_vs_trainer_mvl/mxv
	.byte		N06   , As3 
	.byte	W06
	.byte		VOL   , 127*mus_vs_trainer_mvl/mxv
	.byte		N06   , An3 
	.byte	W06
	.byte		VOL   , 127*mus_vs_trainer_mvl/mxv
	.byte		N06   , As3 
	.byte	W06
	.byte		VOL   , 70*mus_vs_trainer_mvl/mxv
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N24   , Gn3 , v080
	.byte	W05
	.byte		VOL   , 60*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        53*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        53*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        43*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        40*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        36*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        33*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        33*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        23*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        20*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        16*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        10*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        10*mus_vs_trainer_mvl/mxv
	.byte	W02
	.byte		        16*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        70*mus_vs_trainer_mvl/mxv
	.byte		N12   , As3 
	.byte	W12
@ 004   ----------------------------------------
mus_vs_trainer_5_004:
	.byte	W24
	.byte		N12   , Gs3 , v080
	.byte	W24
	.byte		        Gn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W24
	.byte		        As3 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs3 
	.byte	W06
	.byte		VOL   , 60*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        53*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        53*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        43*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        40*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        36*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        33*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        33*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        23*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        20*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        16*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        10*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        10*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        70*mus_vs_trainer_mvl/mxv
	.byte		N12   , Gn3 
	.byte	W36
	.byte		        As3 
	.byte	W12
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_5_004
@ 007   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs3 , v080
	.byte	W05
	.byte		VOL   , 60*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        53*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        53*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        43*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        40*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        36*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        33*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        33*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        23*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        20*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        16*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        10*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        10*mus_vs_trainer_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+6
	.byte		VOL   , 70*mus_vs_trainer_mvl/mxv
	.byte		N12   , Cn4 
	.byte	W36
	.byte		        Ds4 
	.byte	W12
@ 008   ----------------------------------------
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Cn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W24
	.byte		        Ds4 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs4 
	.byte	W05
	.byte		VOL   , 60*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        53*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        53*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        43*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        40*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        36*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        33*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        33*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        23*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        20*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        16*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        10*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        10*mus_vs_trainer_mvl/mxv
	.byte	W02
	.byte		        70*mus_vs_trainer_mvl/mxv
	.byte		N12   , Cn5 , v088
	.byte	W36
	.byte		        Ds5 
	.byte	W12
@ 010   ----------------------------------------
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		        Cn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W24
	.byte		        Ds5 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W24
	.byte		N24   , Gn5 
	.byte	W05
	.byte		VOL   , 60*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        60*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        53*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        53*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        43*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        40*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        36*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        33*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        33*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        30*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        23*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        20*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        16*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        10*mus_vs_trainer_mvl/mxv
	.byte	W01
	.byte		        100*mus_vs_trainer_mvl/mxv
	.byte	W02
mus_vs_trainer_5_B1:
	.byte		N36   , Cn3 , v072
	.byte	W36
	.byte		        Gn3 
	.byte	W12
@ 012   ----------------------------------------
mus_vs_trainer_5_012:
	.byte	W24
	.byte		N24   , Fn3 , v072
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 014   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Fs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte	W12
	.byte		N36   , Cn3 , v072
	.byte	W36
	.byte		        Gn3 
	.byte	W12
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_5_012
@ 017   ----------------------------------------
	.byte		N12   , Cn3 , v072
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Dn3 , v064
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 018   ----------------------------------------
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 019   ----------------------------------------
	.byte		        En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 021   ----------------------------------------
	.byte		VOL   , 120*mus_vs_trainer_mvl/mxv
	.byte		N12   , Fn3 
	.byte	W06
	.byte		VOL   , 113*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        105*mus_vs_trainer_mvl/mxv
	.byte		N12   , En3 
	.byte	W06
	.byte		VOL   , 96*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        85*mus_vs_trainer_mvl/mxv
	.byte		N12   , Ds3 
	.byte	W06
	.byte		VOL   , 72*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        56*mus_vs_trainer_mvl/mxv
	.byte		N12   , Dn3 
	.byte	W06
	.byte		VOL   , 100*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		N48   , En2 , v096
	.byte	W48
@ 022   ----------------------------------------
	.byte		N36   , Fn2 
	.byte	W36
	.byte		N12   , An2 
	.byte	W12
	.byte		N36   , As2 
	.byte	W36
	.byte		        Dn3 
	.byte	W12
@ 023   ----------------------------------------
	.byte	W24
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N36   , Cn3 
	.byte	W36
	.byte		        Gn2 
	.byte	W12
@ 024   ----------------------------------------
	.byte	W24
	.byte		N24   , Fn2 
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 025   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte	W18
	.byte		N48   
	.byte	W48
@ 026   ----------------------------------------
	.byte		        Fn2 
	.byte	W48
	.byte		N36   , As2 
	.byte	W36
	.byte		N24   , Fn2 
	.byte	W12
@ 027   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N72   , Cn3 
	.byte	W48
@ 028   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N96   , En3 
	.byte	W48
@ 029   ----------------------------------------
	.byte		BEND  , c_v-4
	.byte	W12
	.byte		        c_v-14
	.byte	W12
	.byte		        c_v-21
	.byte	W12
	.byte		        c_v-27
	.byte	W12
	.byte		VOL   , 60*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W48
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W36
	.byte		VOL   , 100*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		N03   , Fn3 , v072
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N21   
	.byte	W12
@ 035   ----------------------------------------
	.byte	W09
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N21   
	.byte	W12
@ 036   ----------------------------------------
	.byte	W09
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Gn3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N21   
	.byte	W12
@ 037   ----------------------------------------
	.byte	W09
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N21   
	.byte	W12
@ 038   ----------------------------------------
	.byte	W09
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N21   
	.byte	W12
@ 039   ----------------------------------------
	.byte	W09
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N21   
	.byte	W12
@ 040   ----------------------------------------
	.byte	W09
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Gn3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N21   
	.byte	W12
@ 041   ----------------------------------------
	.byte	W09
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N48   , Cn5 , v084
	.byte	W48
@ 042   ----------------------------------------
	.byte		        Cn3 
	.byte	W48
	.byte		        Gn4 
	.byte	W48
@ 043   ----------------------------------------
	.byte		        Cs3 
	.byte	W48
	.byte		        Cn4 
	.byte	W48
@ 044   ----------------------------------------
	.byte		        Cn2 , v096
	.byte	W48
	.byte		        Gn3 , v084
	.byte	W48
@ 045   ----------------------------------------
	.byte		        Cs2 , v096
	.byte	W48
	.byte		VOICE , 82
	.byte		PAN   , c_v-18
	.byte		N06   , En2 , v064
	.byte	W03
	.byte		PAN   , c_v-8
	.byte	W03
	.byte		        c_v+6
	.byte		N06   , Fn2 
	.byte	W03
	.byte		PAN   , c_v+9
	.byte	W03
	.byte		        c_v+9
	.byte		N06   , Fs2 
	.byte	W03
	.byte		PAN   , c_v+16
	.byte	W03
	.byte		        c_v+16
	.byte		N06   , Gn2 
	.byte	W03
	.byte		PAN   , c_v+16
	.byte	W03
	.byte		        c_v+22
	.byte		N06   , Gs2 
	.byte	W03
	.byte		PAN   , c_v+22
	.byte	W03
	.byte		        c_v+22
	.byte		N06   , An2 
	.byte	W03
	.byte		PAN   , c_v+22
	.byte	W03
	.byte		        c_v+22
	.byte		N06   , As2 
	.byte	W03
	.byte		PAN   , c_v+26
	.byte	W03
	.byte		        c_v+29
	.byte		N06   , Bn2 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte	W03
@ 046   ----------------------------------------
	.byte		        c_v+32
	.byte		N06   , Cn3 
	.byte	W03
	.byte		PAN   , c_v+42
	.byte	W03
	.byte		        c_v+46
	.byte		N06   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+46
	.byte	W03
	.byte		        c_v+49
	.byte		N06   , Dn3 
	.byte	W03
	.byte		PAN   , c_v+56
	.byte	W03
	.byte		        c_v+59
	.byte		N06   , Ds3 
	.byte	W03
	.byte		PAN   , c_v+59
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , En3 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , Fn3 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , Fs3 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+52
	.byte	W01
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+56
	.byte		N06   , Fs3 
	.byte	W01
	.byte		PAN   , c_v+56
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+49
	.byte		N06   , Fn3 
	.byte	W01
	.byte		PAN   , c_v+46
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+39
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v+39
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+29
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Cs3 
	.byte	W01
	.byte		PAN   , c_v+16
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+2
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v-1
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte		N06   , Bn2 
	.byte	W01
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-31
	.byte	W01
@ 047   ----------------------------------------
	.byte		        c_v-31
	.byte		N06   , As2 
	.byte	W01
	.byte		PAN   , c_v-38
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-41
	.byte		N06   , An2 
	.byte	W01
	.byte		PAN   , c_v-41
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-54
	.byte		N06   , Gs2 
	.byte	W01
	.byte		PAN   , c_v-58
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N06   , Gn2 
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N06   , Fs2 
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W03
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		PAN   , c_v-18
	.byte		N06   
	.byte	W03
	.byte		PAN   , c_v-8
	.byte	W03
	.byte		        c_v+6
	.byte		N06   , Fn2 
	.byte	W03
	.byte		PAN   , c_v+9
	.byte	W03
	.byte		        c_v+9
	.byte		N06   , Fs2 
	.byte	W03
	.byte		PAN   , c_v+16
	.byte	W03
	.byte		        c_v+16
	.byte		N06   , Gn2 
	.byte	W03
	.byte		PAN   , c_v+16
	.byte	W03
	.byte		        c_v+22
	.byte		N06   , Gs2 
	.byte	W03
	.byte		PAN   , c_v+22
	.byte	W03
	.byte		        c_v+22
	.byte		N06   , An2 
	.byte	W03
	.byte		PAN   , c_v+22
	.byte	W03
	.byte		        c_v+22
	.byte		N06   , As2 
	.byte	W03
	.byte		PAN   , c_v+26
	.byte	W03
	.byte		        c_v+29
	.byte		N06   , Bn2 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte	W03
	.byte		        c_v+32
	.byte		N06   , Cn3 
	.byte	W03
	.byte		PAN   , c_v+42
	.byte	W03
@ 048   ----------------------------------------
	.byte		        c_v+46
	.byte		N06   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+46
	.byte	W03
	.byte		        c_v+49
	.byte		N06   , Dn3 
	.byte	W03
	.byte		PAN   , c_v+56
	.byte	W03
	.byte		        c_v+59
	.byte		N06   , Ds3 
	.byte	W03
	.byte		PAN   , c_v+59
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , En3 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , Fn3 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , Fs3 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+52
	.byte	W01
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+56
	.byte		N06   , Fs3 
	.byte	W01
	.byte		PAN   , c_v+56
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+49
	.byte		N06   , Fn3 
	.byte	W01
	.byte		PAN   , c_v+46
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+39
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v+39
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+29
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Cs3 
	.byte	W01
	.byte		PAN   , c_v+16
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+2
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v-1
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte		N06   , Bn2 
	.byte	W01
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-31
	.byte		N06   , As2 
	.byte	W01
	.byte		PAN   , c_v-38
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-41
	.byte	W01
@ 049   ----------------------------------------
	.byte		        c_v-41
	.byte		N06   , An2 
	.byte	W01
	.byte		PAN   , c_v-41
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-54
	.byte		N06   , Gs2 
	.byte	W01
	.byte		PAN   , c_v-58
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N06   , Gn2 
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N06   , Fs2 
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W03
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		PAN   , c_v-18
	.byte		N06   
	.byte	W03
	.byte		PAN   , c_v-8
	.byte	W03
	.byte		        c_v+6
	.byte		N06   , Fn2 
	.byte	W03
	.byte		PAN   , c_v+9
	.byte	W03
	.byte		        c_v+9
	.byte		N06   , Fs2 
	.byte	W03
	.byte		PAN   , c_v+16
	.byte	W03
	.byte		        c_v+16
	.byte		N06   , Gn2 
	.byte	W03
	.byte		PAN   , c_v+16
	.byte	W03
	.byte		        c_v+22
	.byte		N06   , Gs2 
	.byte	W03
	.byte		PAN   , c_v+22
	.byte	W03
	.byte		        c_v+22
	.byte		N06   , An2 
	.byte	W03
	.byte		PAN   , c_v+22
	.byte	W03
	.byte		        c_v+22
	.byte		N06   , As2 
	.byte	W03
	.byte		PAN   , c_v+26
	.byte	W03
	.byte		        c_v+29
	.byte		N06   , Bn2 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte	W03
	.byte		        c_v+32
	.byte		N06   , Cn3 
	.byte	W03
	.byte		PAN   , c_v+42
	.byte	W03
	.byte		        c_v+46
	.byte		N06   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+46
	.byte	W03
@ 050   ----------------------------------------
	.byte		        c_v+49
	.byte		N06   , Dn3 
	.byte	W03
	.byte		PAN   , c_v+56
	.byte	W03
	.byte		        c_v+59
	.byte		N06   , Ds3 
	.byte	W03
	.byte		PAN   , c_v+59
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , En3 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , Fn3 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , Fs3 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+52
	.byte	W01
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+56
	.byte		N06   , Fs3 
	.byte	W01
	.byte		PAN   , c_v+56
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+49
	.byte		N06   , Fn3 
	.byte	W01
	.byte		PAN   , c_v+46
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+39
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v+39
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+29
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Cs3 
	.byte	W01
	.byte		PAN   , c_v+16
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+2
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v-1
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte		N06   , Bn2 
	.byte	W01
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-31
	.byte		N06   , As2 
	.byte	W01
	.byte		PAN   , c_v-38
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-41
	.byte		N06   , An2 
	.byte	W01
	.byte		PAN   , c_v-41
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-54
	.byte	W01
@ 051   ----------------------------------------
	.byte		        c_v-54
	.byte		N06   , Gs2 
	.byte	W01
	.byte		PAN   , c_v-58
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N06   , Gn2 
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N06   , Fs2 
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W03
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		PAN   , c_v-18
	.byte		N06   
	.byte	W03
	.byte		PAN   , c_v-8
	.byte	W03
	.byte		        c_v+6
	.byte		N06   , Fn2 
	.byte	W03
	.byte		PAN   , c_v+9
	.byte	W03
	.byte		        c_v+9
	.byte		N06   , Fs2 
	.byte	W03
	.byte		PAN   , c_v+16
	.byte	W03
	.byte		        c_v+16
	.byte		N06   , Gn2 
	.byte	W03
	.byte		PAN   , c_v+16
	.byte	W03
	.byte		        c_v+22
	.byte		N06   , Gs2 
	.byte	W03
	.byte		PAN   , c_v+22
	.byte	W03
	.byte		        c_v+22
	.byte		N06   , An2 
	.byte	W03
	.byte		PAN   , c_v+22
	.byte	W03
	.byte		        c_v+22
	.byte		N06   , As2 
	.byte	W03
	.byte		PAN   , c_v+26
	.byte	W03
	.byte		        c_v+29
	.byte		N06   , Bn2 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte	W03
	.byte		        c_v+32
	.byte		N06   , Cn3 
	.byte	W03
	.byte		PAN   , c_v+42
	.byte	W03
	.byte		        c_v+46
	.byte		N06   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+46
	.byte	W03
	.byte		        c_v+49
	.byte		N06   , Dn3 
	.byte	W03
	.byte		PAN   , c_v+56
	.byte	W03
@ 052   ----------------------------------------
	.byte		        c_v+59
	.byte		N06   , Ds3 
	.byte	W03
	.byte		PAN   , c_v+59
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , En3 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , Fn3 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , Fs3 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+52
	.byte	W01
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+56
	.byte		N06   , Fs3 
	.byte	W01
	.byte		PAN   , c_v+56
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+49
	.byte		N06   , Fn3 
	.byte	W01
	.byte		PAN   , c_v+46
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+39
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v+39
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+29
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Cs3 
	.byte	W01
	.byte		PAN   , c_v+16
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+2
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v-1
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte		N06   , Bn2 
	.byte	W01
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-31
	.byte		N06   , As2 
	.byte	W01
	.byte		PAN   , c_v-38
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-41
	.byte		N06   , An2 
	.byte	W01
	.byte		PAN   , c_v-41
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-54
	.byte		N06   , Gs2 
	.byte	W01
	.byte		PAN   , c_v-58
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
@ 053   ----------------------------------------
	.byte		        c_v-64
	.byte		N06   , Gn2 
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte		N06   , Fs2 
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W03
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		PAN   , c_v-18
	.byte		N06   
	.byte	W03
	.byte		PAN   , c_v-8
	.byte	W03
	.byte		        c_v+6
	.byte		N06   , Fn2 
	.byte	W03
	.byte		PAN   , c_v+9
	.byte	W03
	.byte		        c_v+9
	.byte		N06   , Fs2 
	.byte	W03
	.byte		PAN   , c_v+16
	.byte	W03
	.byte		        c_v+16
	.byte		N06   , Gn2 
	.byte	W03
	.byte		PAN   , c_v+16
	.byte	W03
	.byte		        c_v+22
	.byte		N06   , Gs2 
	.byte	W03
	.byte		PAN   , c_v+22
	.byte	W03
	.byte		        c_v+22
	.byte		N06   , An2 
	.byte	W03
	.byte		PAN   , c_v+22
	.byte	W03
	.byte		        c_v+22
	.byte		N06   , As2 
	.byte	W03
	.byte		PAN   , c_v+26
	.byte	W03
	.byte		        c_v+29
	.byte		N06   , Bn2 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte	W03
	.byte		        c_v+32
	.byte		N06   , Cn3 
	.byte	W03
	.byte		PAN   , c_v+42
	.byte	W03
	.byte		        c_v+46
	.byte		N06   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+46
	.byte	W03
	.byte		        c_v+49
	.byte		N06   , Dn3 
	.byte	W03
	.byte		PAN   , c_v+56
	.byte	W03
	.byte		        c_v+59
	.byte		N06   , Ds3 
	.byte	W03
	.byte		PAN   , c_v+59
	.byte	W03
@ 054   ----------------------------------------
mus_vs_trainer_5_054:
	.byte		PAN   , c_v+63
	.byte		N06   , En3 , v064
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte	PEND
	.byte		        c_v+63
	.byte		N06   , Fn3 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , Fs3 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , Gn3 
	.byte	W03
	.byte		PAN   , c_v+52
	.byte	W01
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+56
	.byte		N06   , Fs3 
	.byte	W01
	.byte		PAN   , c_v+56
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+49
	.byte		N06   , Fn3 
	.byte	W01
	.byte		PAN   , c_v+46
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+39
	.byte		N06   , En3 
	.byte	W01
	.byte		PAN   , c_v+39
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+29
	.byte		N06   , Ds3 
	.byte	W01
	.byte		PAN   , c_v+29
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte		N06   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte		N06   , Cs3 
	.byte	W01
	.byte		PAN   , c_v+16
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+2
	.byte		N06   , Cn3 
	.byte	W01
	.byte		PAN   , c_v-1
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte		N06   , Bn2 
	.byte	W01
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-31
	.byte		N06   , As2 
	.byte	W01
	.byte		PAN   , c_v-38
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v+46
	.byte		N06   , Gn2 
	.byte	W03
	.byte		PAN   , c_v+49
	.byte	W03
	.byte		        c_v+52
	.byte		N06   , As2 
	.byte	W03
	.byte		PAN   , c_v+56
	.byte	W03
	.byte		        c_v+59
	.byte		N06   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_5_054
	.byte		PAN   , c_v+63
	.byte		N06   , Gn3 , v064
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , As3 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , Cs4 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte		N06   , Bn3 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		        c_v+6
	.byte		N12   , As3 , v096
	.byte	W12
	.byte		TIE   , Cn4 
	.byte	W24
	.byte		VOL   , 80*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        66*mus_vs_trainer_mvl/mxv
	.byte	W12
@ 056   ----------------------------------------
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        43*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        36*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        76*mus_vs_trainer_mvl/mxv
	.byte	W12
	.byte		        93*mus_vs_trainer_mvl/mxv
	.byte	W12
@ 057   ----------------------------------------
	.byte		        96*mus_vs_trainer_mvl/mxv
	.byte	W48
	.byte		EOT   
	.byte		TIE   , Cn3 , v076
	.byte	W48
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte		VOL   , 120*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        113*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        105*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        96*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        85*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        72*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        56*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        39*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		EOT   
	.byte	W03
	.byte		VOL   , 127*mus_vs_trainer_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		N96   , Fn2 , v096
	.byte	W48
@ 060   ----------------------------------------
	.byte	W48
	.byte		        As2 
	.byte	W48
@ 061   ----------------------------------------
	.byte	W48
	.byte		        Gn2 
	.byte	W48
@ 062   ----------------------------------------
	.byte	W48
	.byte		N92   , En2 
	.byte	W48
@ 063   ----------------------------------------
	.byte		VOL   , 120*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        113*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        105*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        96*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        85*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        72*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        56*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        39*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        127*mus_vs_trainer_mvl/mxv
	.byte		N96   , Fn2 
	.byte	W48
@ 064   ----------------------------------------
	.byte	W48
	.byte		        As2 
	.byte	W48
@ 065   ----------------------------------------
	.byte	W48
	.byte		        Gn2 
	.byte	W48
@ 066   ----------------------------------------
	.byte	W48
	.byte		N92   , En2 
	.byte	W48
@ 067   ----------------------------------------
	.byte		VOL   , 120*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        113*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        105*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        96*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        85*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        72*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        56*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        39*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        127*mus_vs_trainer_mvl/mxv
	.byte		PAN   , c_v+15
	.byte		N12   , Gn3 , v088
	.byte	W36
	.byte		        Gs3 
	.byte	W12
@ 068   ----------------------------------------
mus_vs_trainer_5_068:
	.byte	W24
	.byte		N12   , Gn2 , v088
	.byte	W24
	.byte		        En3 
	.byte	W36
	.byte		        Fn3 
	.byte	W12
	.byte	PEND
@ 069   ----------------------------------------
	.byte	W24
	.byte		N24   , As2 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W36
	.byte		        Gs3 
	.byte	W12
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_5_068
@ 071   ----------------------------------------
	.byte	W24
	.byte		N24   , Gs3 , v088
	.byte	W24
	.byte		PAN   , c_v+6
	.byte		N48   , Cn4 , v096
	.byte	W48
@ 072   ----------------------------------------
	.byte		        Cn3 
	.byte	W48
	.byte		        Gn3 
	.byte	W48
@ 073   ----------------------------------------
	.byte		        Cs3 
	.byte	W48
	.byte		        Cn4 
	.byte	W48
@ 074   ----------------------------------------
	.byte		        Cn3 
	.byte	W48
	.byte		        Cs4 
	.byte	W48
@ 075   ----------------------------------------
	.byte		        Cs3 
	.byte	W48
	.byte	GOTO
	 .word	mus_vs_trainer_5_B1
mus_vs_trainer_5_B2:
	.byte	FINE

@**************** Track 6 (Midi-Chn.13) ****************@

mus_vs_trainer_6:
	.byte	KEYSH , mus_vs_trainer_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 70*mus_vs_trainer_mvl/mxv
	.byte		N06   , Gn3 , v060
	.byte	W06
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 001   ----------------------------------------
@ 002   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 003   ----------------------------------------
	.byte		        Fn3 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte	W48
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W24
	.byte		VOICE , 91
	.byte	W24
	.byte		VOL   , 50*mus_vs_trainer_mvl/mxv
	.byte		N06   , Cn4 , v064
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		VOL   , 55*mus_vs_trainer_mvl/mxv
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		VOL   , 60*mus_vs_trainer_mvl/mxv
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 008   ----------------------------------------
	.byte		VOL   , 65*mus_vs_trainer_mvl/mxv
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		VOL   , 70*mus_vs_trainer_mvl/mxv
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		VOL   , 75*mus_vs_trainer_mvl/mxv
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		VOL   , 80*mus_vs_trainer_mvl/mxv
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		VOL   , 90*mus_vs_trainer_mvl/mxv
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 009   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		VOL   , 100*mus_vs_trainer_mvl/mxv
	.byte		N06   , As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		VOL   , 110*mus_vs_trainer_mvl/mxv
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 010   ----------------------------------------
	.byte		VOL   , 120*mus_vs_trainer_mvl/mxv
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 011   ----------------------------------------
	.byte		        Gs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 , v060
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
mus_vs_trainer_6_B1:
	.byte		VOICE , 3
	.byte		N44   , Cn4 , v060, gtp3
	.byte	W44
	.byte	W03
	.byte	W01
@ 012   ----------------------------------------
	.byte		        As3 , v060, gtp1
	.byte	W44
	.byte	W01
	.byte	W03
	.byte		N30   , Dn4 
	.byte	W30
	.byte	W06
	.byte		N24   , Gn3 
	.byte	W12
@ 013   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N72   , Gs4 
	.byte	W48
@ 014   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N48   , Fn4 
	.byte	W48
@ 015   ----------------------------------------
	.byte		        Cs4 
	.byte	W48
	.byte		        Cn4 , v064
	.byte	W48
@ 016   ----------------------------------------
	.byte		N42   , As3 
	.byte	W42
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N24   , Gn3 
	.byte	W12
@ 017   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N72   , Gs4 
	.byte	W48
@ 018   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N36   , As4 
	.byte	W36
	.byte		N24   , Gs4 
	.byte	W12
@ 019   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N60   , Gn4 
	.byte	W48
@ 020   ----------------------------------------
	.byte	W12
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N72   , En4 
	.byte	W48
@ 021   ----------------------------------------
	.byte	W24
	.byte	W24
	.byte		N48   , As3 
	.byte	W48
@ 022   ----------------------------------------
	.byte		        Dn4 
	.byte	W48
	.byte		N36   , Fn4 
	.byte	W36
	.byte		N24   , As4 
	.byte	W12
@ 023   ----------------------------------------
	.byte	W12
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N72   , En4 
	.byte	W48
@ 024   ----------------------------------------
	.byte	W24
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N96   , Gn4 
	.byte	W36
	.byte		VOL   , 93*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        88*mus_vs_trainer_mvl/mxv
	.byte	W06
@ 025   ----------------------------------------
	.byte		        71*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-14
	.byte	W06
	.byte		VOL   , 59*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		        66*mus_vs_trainer_mvl/mxv
	.byte	W09
	.byte		        63*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        50*mus_vs_trainer_mvl/mxv
	.byte	W02
	.byte		        55*mus_vs_trainer_mvl/mxv
	.byte	W03
	.byte		        65*mus_vs_trainer_mvl/mxv
	.byte	W04
	.byte		        75*mus_vs_trainer_mvl/mxv
	.byte	W15
	.byte		BEND  , c_v+0
	.byte		N42   , As2 , v068
	.byte	W42
	.byte	W06
@ 026   ----------------------------------------
	.byte		        Dn3 
	.byte	W42
	.byte	W06
	.byte		N30   , Fn3 
	.byte	W30
	.byte	W06
	.byte		N24   , As3 
	.byte	W12
@ 027   ----------------------------------------
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N72   , En4 
	.byte	W48
@ 028   ----------------------------------------
	.byte	W24
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N92   , Cn5 
	.byte	W48
@ 029   ----------------------------------------
	.byte	W44
	.byte	W04
	.byte		N36   , Cn5 , v064
	.byte	W36
	.byte		        Gn4 
	.byte	W12
@ 030   ----------------------------------------
	.byte	W24
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		N36   , Fn5 
	.byte	W36
	.byte		N24   , As3 
	.byte	W12
@ 031   ----------------------------------------
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W36
	.byte		        Fn4 
	.byte	W36
	.byte		N24   , As4 
	.byte	W12
@ 032   ----------------------------------------
	.byte	W12
	.byte		VOICE , 92
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N48   , En4 
	.byte	W48
@ 033   ----------------------------------------
	.byte		        Cn4 , v068
	.byte	W48
	.byte		N36   
	.byte	W36
	.byte		        Gn4 
	.byte	W12
@ 034   ----------------------------------------
	.byte	W24
	.byte		VOICE , 3
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N60   , As4 
	.byte	W12
@ 035   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn4 
	.byte	W36
	.byte		N24   , As4 
	.byte	W12
@ 036   ----------------------------------------
	.byte	W12
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N36   , En4 
	.byte	W36
	.byte		N60   , Cn4 
	.byte	W12
@ 037   ----------------------------------------
	.byte	W48
	.byte		N36   , Cn5 , v072
	.byte	W36
	.byte		        Gn4 
	.byte	W12
@ 038   ----------------------------------------
	.byte	W24
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		N36   , Fn5 
	.byte	W36
	.byte		N24   , As3 
	.byte	W12
@ 039   ----------------------------------------
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W36
	.byte		        Fn4 
	.byte	W36
	.byte		N24   , As4 
	.byte	W12
@ 040   ----------------------------------------
	.byte	W12
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N36   , En4 
	.byte	W36
	.byte		        Cn4 
	.byte	W12
@ 041   ----------------------------------------
	.byte	W24
	.byte		N24   , Gn4 
	.byte	W24
	.byte		VOICE , 91
	.byte		N06   , En4 , v048
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 042   ----------------------------------------
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 043   ----------------------------------------
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 044   ----------------------------------------
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 045   ----------------------------------------
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		VOICE , 3
	.byte		N06   , En3 , v060
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 046   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 047   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 048   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 049   ----------------------------------------
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 050   ----------------------------------------
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 051   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 052   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 053   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 054   ----------------------------------------
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 055   ----------------------------------------
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte	W72
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W48
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 060   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 061   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 062   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 063   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 064   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 065   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 066   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 , v032
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 067   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	W48
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
	.byte	W48
	.byte	GOTO
	 .word	mus_vs_trainer_6_B1
mus_vs_trainer_6_B2:
	.byte	FINE

@**************** Track 7 (Midi-Chn.10) ****************@

mus_vs_trainer_7:
	.byte	KEYSH , mus_vs_trainer_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 127*mus_vs_trainer_mvl/mxv
	.byte	W48
@ 001   ----------------------------------------
@ 002   ----------------------------------------
	.byte	W24
	.byte		N06   , Cn2 , v028
	.byte	W05
	.byte		        Bn1 
	.byte	W01
	.byte	W05
	.byte	W01
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	W06
	.byte		        Fn1 , v032
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Bn1 , v036
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 003   ----------------------------------------
	.byte		        Cn2 
	.byte	W05
	.byte		        Bn1 
	.byte	W01
	.byte	W05
	.byte	W01
	.byte		        An1 , v044
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N12   , Cn1 , v076
	.byte		N48   , Bn2 , v080
	.byte	W12
	.byte	W12
	.byte		N12   , Cn1 , v044
	.byte	W12
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Cn1 , v076
	.byte	W12
	.byte	W12
	.byte		        Cn1 , v044
	.byte	W12
	.byte	W12
	.byte		        Cn1 , v076
	.byte	W12
	.byte	W12
	.byte		        Cn1 , v044
	.byte	W12
	.byte	W12
@ 005   ----------------------------------------
	.byte		        Cn1 , v076
	.byte	W12
	.byte	W12
	.byte		        Cn1 , v044
	.byte	W12
	.byte	W12
	.byte		        Cn1 , v076
	.byte	W12
	.byte	W12
	.byte		        Cn1 , v044
	.byte	W12
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Cn1 , v076
	.byte	W12
	.byte	W12
	.byte		        Cn1 , v044
	.byte	W12
	.byte	W12
	.byte		        Cn1 , v076
	.byte	W12
	.byte	W12
	.byte		        Cn1 , v044
	.byte	W12
	.byte	W12
@ 007   ----------------------------------------
	.byte		        Cn1 , v076
	.byte	W12
	.byte	W12
	.byte		        Cn1 , v044
	.byte	W12
	.byte	W12
	.byte		        Cn1 , v076
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 008   ----------------------------------------
	.byte		N24   , Cn1 , v076
	.byte	W24
	.byte		N12   , Dn1 , v112
	.byte	W24
	.byte		N24   , Cn1 , v076
	.byte	W24
	.byte		N12   , Dn1 , v112
	.byte	W24
@ 009   ----------------------------------------
	.byte		N24   , Cn1 , v076
	.byte	W24
	.byte		N12   , Dn1 , v112
	.byte	W24
	.byte		N24   , Cn1 , v076
	.byte	W24
	.byte		N12   , Dn1 , v112
	.byte	W24
@ 010   ----------------------------------------
	.byte		N24   , Cn1 , v076
	.byte	W24
	.byte		N12   , Dn1 , v112
	.byte	W24
	.byte		N24   , Cn1 , v076
	.byte	W24
	.byte		N12   , Dn1 , v112
	.byte	W24
@ 011   ----------------------------------------
	.byte		N24   , Cn1 
	.byte	W24
	.byte		N12   , Dn1 
	.byte		N24   , En2 , v092
	.byte	W12
	.byte		N12   , Dn1 , v112
	.byte	W12
mus_vs_trainer_7_B1:
	.byte		N36   , Bn2 , v092
	.byte	W12
	.byte		N12   , Cn1 , v108
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte	W12
@ 012   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 013   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 014   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Cn1 
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 015   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Cn1 
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 016   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 017   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 018   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Cn1 
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 019   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Cn1 
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 020   ----------------------------------------
	.byte		N09   , Cn1 , v108
	.byte	W09
	.byte	W15
	.byte		N12   , Dn1 , v112
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 021   ----------------------------------------
	.byte		N09   , Cn1 , v108
	.byte	W09
	.byte	W15
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 022   ----------------------------------------
	.byte		N09   , Cn1 , v108
	.byte	W09
	.byte	W15
	.byte		N12   , Dn1 , v112
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 023   ----------------------------------------
	.byte		N09   , Cn1 , v108
	.byte	W09
	.byte	W15
	.byte		N12   , Dn1 , v112
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 024   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
	.byte		N09   , Cn1 , v108
	.byte	W09
	.byte	W15
	.byte		N12   , Dn1 , v112
	.byte	W24
@ 025   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
	.byte		N09   , Cn1 , v108
	.byte	W09
	.byte	W15
	.byte		N12   , Dn1 , v112
	.byte	W24
@ 026   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 027   ----------------------------------------
	.byte		N09   , Cn1 , v108
	.byte	W09
	.byte	W15
	.byte		N12   , Dn1 , v112
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 028   ----------------------------------------
	.byte		N09   , Cn1 , v108
	.byte	W09
	.byte	W15
	.byte		N12   , Dn1 , v112
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 029   ----------------------------------------
	.byte		        Cn1 , v108
	.byte		N48   , Cn3 , v104
	.byte	W12
	.byte	W12
	.byte		N12   , Dn1 , v112
	.byte	W24
	.byte		N09   , Cn1 , v108
	.byte		TIE   , Bn2 , v104
	.byte	W09
	.byte	W36
	.byte	W03
@ 030   ----------------------------------------
	.byte		N12   , Cn1 , v108
	.byte	W12
	.byte	W36
	.byte		N09   
	.byte	W09
	.byte	W36
	.byte	W03
@ 031   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte	W36
	.byte		EOT   , Bn2 
	.byte		N12   , Cn1 
	.byte	W12
	.byte	W36
@ 032   ----------------------------------------
	.byte		N09   
	.byte	W09
	.byte	W36
	.byte	W03
	.byte		N12   
	.byte	W12
	.byte	W36
@ 033   ----------------------------------------
	.byte		N09   
	.byte	W09
	.byte	W36
	.byte	W03
	.byte		N12   
	.byte	W12
	.byte	W36
@ 034   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte	W36
	.byte		N09   
	.byte	W09
	.byte	W15
	.byte		N12   , Dn1 , v112
	.byte	W24
@ 035   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
	.byte		N09   , Cn1 , v108
	.byte	W09
	.byte	W15
	.byte		N12   , Dn1 , v112
	.byte	W24
@ 036   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 037   ----------------------------------------
	.byte		N09   , Cn1 , v108
	.byte	W09
	.byte	W15
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 038   ----------------------------------------
	.byte		N09   , Cn1 , v108
	.byte	W09
	.byte	W15
	.byte		N12   , Dn1 , v112
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 039   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
	.byte		N09   , Cn1 , v108
	.byte	W09
	.byte	W15
	.byte		N12   , Dn1 , v112
	.byte	W24
@ 040   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
	.byte		N09   , Cn1 , v108
	.byte	W09
	.byte	W15
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N12   
	.byte	W12
@ 041   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 042   ----------------------------------------
	.byte		N09   , Cn1 , v108
	.byte	W09
	.byte	W15
	.byte		N12   , Dn1 , v112
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 043   ----------------------------------------
	.byte		N09   , Cn1 , v108
	.byte	W09
	.byte	W15
	.byte		N12   , Dn1 , v112
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 044   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 045   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Cn1 , v108
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W18
	.byte		        Dn1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W18
@ 046   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 047   ----------------------------------------
	.byte		        Fn2 
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W18
	.byte		        Dn1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W18
@ 048   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , An2 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 049   ----------------------------------------
	.byte		        Fn2 
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W18
	.byte		        Dn1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W18
@ 050   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 051   ----------------------------------------
	.byte		        Fn2 
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W18
	.byte		        Dn1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W18
@ 052   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , An2 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 053   ----------------------------------------
	.byte		        Fn2 
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W18
	.byte		        Dn1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W18
@ 054   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , An2 
	.byte	W06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 055   ----------------------------------------
	.byte		        Fn2 
	.byte	W06
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N12   
	.byte		N06   , Dn2 , v108
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 056   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 057   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 058   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte		N48   , An2 , v100
	.byte	W12
	.byte	W12
@ 059   ----------------------------------------
	.byte		N12   , Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An4 , v056
	.byte	W06
	.byte		        Cn1 , v108
	.byte	W06
	.byte	W06
	.byte	W06
	.byte		        Dn1 , v112
	.byte		N12   , An4 , v056
	.byte	W12
	.byte	W12
@ 060   ----------------------------------------
mus_vs_trainer_7_060:
	.byte		N12   , Cn1 , v108
	.byte		N12   , An4 , v056
	.byte	W12
	.byte	PEND
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v112
	.byte		N12   , An4 , v056
	.byte	W12
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N12   , An4 , v056
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		        An4 , v056
	.byte	W12
@ 061   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte		        An4 , v056
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		        An4 , v056
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N12   , An4 , v056
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_7_060
	.byte	W12
	.byte		N12   , Dn1 , v112
	.byte		N12   , An4 , v056
	.byte	W12
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N12   , An4 , v056
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v112
	.byte		N12   , An4 , v056
	.byte	W12
	.byte	W12
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_7_060
	.byte	W12
	.byte		N12   , Dn1 , v112
	.byte		N12   , An4 , v056
	.byte	W12
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N12   , An4 , v056
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 064   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 065   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 066   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W24
@ 067   ----------------------------------------
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	W06
	.byte	W12
	.byte		N12   , Dn1 , v112
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	W18
@ 068   ----------------------------------------
mus_vs_trainer_7_068:
	.byte		N12   , Cn1 , v108
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	PEND
	.byte	W06
	.byte	W12
	.byte		N12   , Dn1 , v112
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	W18
	.byte		N12   , Cn1 , v108
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W24
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_7_068
	.byte	W06
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W24
	.byte		        Cn1 , v108
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	W06
	.byte	W12
	.byte		N12   , Dn1 , v112
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	W18
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_7_068
	.byte	W06
	.byte	W12
	.byte		N12   , Dn1 , v112
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	W18
	.byte		N12   , Cn1 , v108
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W24
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_7_068
	.byte	W06
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W24
	.byte		        Cn1 , v108
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	W06
	.byte	W12
	.byte		N12   , Dn1 , v112
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	W18
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_7_068
	.byte	W06
	.byte	W12
	.byte		N12   , Dn1 , v112
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	W18
	.byte		N12   , Cn1 , v108
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W24
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_7_068
	.byte	W06
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W24
	.byte		        Cn1 , v108
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	W06
	.byte	W12
	.byte		N12   , Dn1 , v112
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	W18
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_7_068
	.byte	W06
	.byte	W12
	.byte		N12   , Dn1 , v112
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	W18
	.byte		N12   , Cn1 , v108
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N12   
	.byte	W12
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_7_068
	.byte	W06
	.byte		N06   , Gs2 , v056
	.byte	W06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	GOTO
	 .word	mus_vs_trainer_7_B1
mus_vs_trainer_7_B2:
	.byte		N12   , Cn1 , v108
	.byte	W12
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_vs_trainer_8:
	.byte	KEYSH , mus_vs_trainer_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 125
	.byte	W48
@ 001   ----------------------------------------
@ 002   ----------------------------------------
	.byte	W90
	.byte		BEND  , c_v-64
	.byte	W06
@ 003   ----------------------------------------
	.byte		VOL   , 43*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-54
	.byte		N48   , Cn3 , v127
	.byte	W01
	.byte		BEND  , c_v-51
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		VOL   , 50*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-27
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		VOL   , 60*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		VOL   , 66*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		VOL   , 76*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		VOL   , 83*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		VOL   , 96*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		        c_v+63
	.byte	W05
	.byte		VOL   , 60*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte		VOICE , 126
	.byte	W12
	.byte		N12   , Gs4 , v108
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v080
	.byte	W12
@ 004   ----------------------------------------
	.byte	W12
	.byte		        Gs4 , v108
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v080
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v108
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v080
	.byte	W12
@ 005   ----------------------------------------
	.byte	W12
	.byte		        Gs4 , v108
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v080
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v108
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v080
	.byte	W12
@ 006   ----------------------------------------
	.byte	W12
	.byte		        Gs4 , v108
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v080
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v108
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v080
	.byte	W12
@ 007   ----------------------------------------
	.byte	W12
	.byte		        Gs4 , v108
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v080
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v108
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v080
	.byte	W12
@ 008   ----------------------------------------
	.byte	W12
	.byte		        Gs4 , v108
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v080
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v108
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v080
	.byte	W12
@ 009   ----------------------------------------
	.byte	W12
	.byte		        Gs4 , v108
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v080
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v108
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v080
	.byte	W12
@ 010   ----------------------------------------
	.byte	W12
	.byte		        Gs4 , v108
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v080
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v108
	.byte	W12
	.byte	W12
	.byte		        Gs4 , v080
	.byte	W06
	.byte		BEND  , c_v-64
	.byte	W06
@ 011   ----------------------------------------
mus_vs_trainer_8_011:
	.byte		VOL   , 43*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-54
	.byte		N48   , Cn3 , v127
	.byte	W01
	.byte		BEND  , c_v-51
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		VOL   , 50*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-27
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		VOL   , 60*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		VOL   , 66*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		VOL   , 76*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		VOL   , 83*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		VOL   , 96*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		        c_v+63
	.byte	W05
	.byte		VOL   , 110*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte	PEND
mus_vs_trainer_8_B1:
	.byte		VOL   , 116*mus_vs_trainer_mvl/mxv
	.byte	W24
	.byte		N09   , An4 , v112
	.byte	W09
	.byte	W15
@ 012   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W48
	.byte		N09   
	.byte	W09
	.byte	W15
@ 013   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W12
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W24
	.byte		N09   , An4 
	.byte	W09
	.byte	W15
@ 014   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W24
	.byte		N09   
	.byte	W09
	.byte	W28
	.byte		N11   
	.byte	W11
@ 015   ----------------------------------------
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W60
	.byte		N09   , An4 
	.byte	W09
	.byte	W15
@ 016   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W12
	.byte		N09   
	.byte	W09
	.byte	W28
	.byte		N11   
	.byte	W11
	.byte	W12
@ 017   ----------------------------------------
	.byte	W12
	.byte		N09   
	.byte	W09
	.byte	W15
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W24
	.byte		N09   , An4 
	.byte	W09
	.byte	W15
@ 018   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W24
	.byte		N09   
	.byte	W09
	.byte	W28
	.byte		N11   
	.byte	W11
@ 019   ----------------------------------------
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W60
	.byte		N09   , An4 
	.byte	W09
	.byte	W15
@ 020   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W12
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W24
	.byte		N09   , An4 
	.byte	W09
	.byte	W15
@ 021   ----------------------------------------
	.byte	W36
	.byte		N09   
	.byte	W09
	.byte	W28
	.byte		N11   
	.byte	W11
	.byte	W12
@ 022   ----------------------------------------
	.byte	W12
	.byte		N09   
	.byte	W09
	.byte	W16
	.byte		N11   
	.byte	W11
	.byte	W24
	.byte		N09   
	.byte	W09
	.byte	W15
@ 023   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W12
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W24
	.byte		N09   , An4 
	.byte	W09
	.byte	W15
@ 024   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W12
	.byte		N09   
	.byte	W09
	.byte	W28
	.byte		N11   
	.byte	W11
	.byte	W12
@ 025   ----------------------------------------
	.byte	W12
	.byte		N09   
	.byte	W09
	.byte	W15
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W24
	.byte		N09   , An4 
	.byte	W09
	.byte	W15
@ 026   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W12
	.byte		N09   
	.byte	W09
	.byte	W24
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W15
@ 027   ----------------------------------------
	.byte	W12
	.byte		N09   
	.byte	W09
	.byte	W15
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W24
	.byte		N09   , An4 
	.byte	W09
	.byte	W15
@ 028   ----------------------------------------
	.byte	W12
	.byte		N09   
	.byte	W09
	.byte	W15
	.byte		N09   
	.byte	W09
	.byte	W24
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W15
@ 029   ----------------------------------------
	.byte	W12
	.byte		N09   
	.byte	W09
	.byte	W15
	.byte		N06   , Gs4 
	.byte	W06
	.byte	W54
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W72
	.byte		N09   , An4 
	.byte	W09
	.byte	W15
@ 035   ----------------------------------------
	.byte	W24
	.byte		N09   
	.byte	W09
	.byte	W36
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W15
@ 036   ----------------------------------------
	.byte	W24
	.byte		N09   
	.byte	W09
	.byte	W36
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W15
@ 037   ----------------------------------------
	.byte	W24
	.byte		N09   
	.byte	W09
	.byte	W36
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W15
@ 038   ----------------------------------------
	.byte	W24
	.byte		N09   
	.byte	W09
	.byte	W36
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W15
@ 039   ----------------------------------------
	.byte	W24
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W24
	.byte		N09   , An4 
	.byte	W09
	.byte	W15
@ 040   ----------------------------------------
	.byte	W24
	.byte		N09   
	.byte	W09
	.byte	W36
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W15
@ 041   ----------------------------------------
	.byte	W24
	.byte		N09   
	.byte	W09
	.byte	W36
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W15
@ 042   ----------------------------------------
	.byte	W24
	.byte		N30   , Cn3 , v096
	.byte	W30
	.byte	W18
	.byte		N09   , An4 , v112
	.byte	W09
	.byte	W15
@ 043   ----------------------------------------
	.byte	W24
	.byte		N30   , An2 , v096
	.byte	W30
	.byte	W18
	.byte		N09   , An4 , v112
	.byte	W09
	.byte	W15
@ 044   ----------------------------------------
	.byte	W24
	.byte		N24   , Gn2 , v096
	.byte	W24
	.byte	W24
	.byte		N09   , An4 , v112
	.byte	W09
	.byte	W09
	.byte		BEND  , c_v-64
	.byte	W06
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_8_011
	.byte		VOL   , 116*mus_vs_trainer_mvl/mxv
	.byte	W48
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
	.byte	W72
	.byte		N09   , An4 , v112
	.byte	W09
	.byte	W15
@ 056   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W48
	.byte		N09   
	.byte	W09
	.byte	W15
@ 057   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W48
	.byte		N09   
	.byte	W09
	.byte	W15
@ 058   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W48
	.byte		N09   
	.byte	W09
	.byte	W09
	.byte		BEND  , c_v-64
	.byte	W06
@ 059   ----------------------------------------
mus_vs_trainer_8_059:
	.byte		VOL   , 43*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		        c_v-51
	.byte		N44   , Cn3 , v127, gtp3
	.byte	W01
	.byte		BEND  , c_v-44
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		VOL   , 50*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-27
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		VOL   , 60*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		VOL   , 66*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		VOL   , 76*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		VOL   , 83*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		VOL   , 96*mus_vs_trainer_mvl/mxv
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		        c_v+63
	.byte	W05
	.byte		VOL   , 110*mus_vs_trainer_mvl/mxv
	.byte	W06
	.byte	PEND
	.byte		        116*mus_vs_trainer_mvl/mxv
	.byte	W24
	.byte		N09   , An4 , v112
	.byte	W09
	.byte	W15
@ 060   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W48
	.byte		N09   
	.byte	W09
	.byte	W15
@ 061   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W48
	.byte		N09   
	.byte	W09
	.byte	W15
@ 062   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W48
	.byte		N09   
	.byte	W09
	.byte	W15
@ 063   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W12
	.byte		N12   , Gs4 
	.byte	W12
	.byte	W24
	.byte		N09   , An4 
	.byte	W09
	.byte	W15
@ 064   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W48
	.byte		N09   
	.byte	W09
	.byte	W15
@ 065   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W48
	.byte		N09   
	.byte	W09
	.byte	W15
@ 066   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte	W24
	.byte		N09   , An4 
	.byte	W09
	.byte	W15
@ 067   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W72
@ 068   ----------------------------------------
	.byte	W12
	.byte		N09   
	.byte	W09
	.byte	W72
	.byte	W03
@ 069   ----------------------------------------
	.byte	W12
	.byte		N09   
	.byte	W09
	.byte	W72
	.byte	W03
@ 070   ----------------------------------------
	.byte	W12
	.byte		N09   
	.byte	W09
	.byte	W72
	.byte	W03
@ 071   ----------------------------------------
	.byte	W12
	.byte		N09   
	.byte	W09
	.byte	W48
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W15
@ 072   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W48
	.byte		N09   
	.byte	W09
	.byte	W15
@ 073   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W48
	.byte		N09   
	.byte	W09
	.byte	W15
@ 074   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W66
	.byte		BEND  , c_v-64
	.byte	W06
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_trainer_8_059
	.byte	GOTO
	 .word	mus_vs_trainer_8_B1
mus_vs_trainer_8_B2:
	.byte		VOL   , 116*mus_vs_trainer_mvl/mxv
	.byte	FINE

@**************** Track 9 (Midi-Chn.11) ****************@

mus_vs_trainer_9:
	.byte	KEYSH , mus_vs_trainer_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_vs_trainer_mvl/mxv
	.byte	W48
@ 001   ----------------------------------------
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W48
	.byte		N02   , Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
@ 004   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
@ 005   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
@ 006   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
@ 007   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
@ 008   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
@ 009   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
@ 010   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
@ 011   ----------------------------------------
	.byte	W48
mus_vs_trainer_9_B1:
	.byte		N02   , Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
@ 012   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W22
	.byte		        Gn5 , v092
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
@ 013   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
@ 014   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
@ 015   ----------------------------------------
	.byte	W24
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
@ 016   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
@ 017   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
@ 018   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
@ 019   ----------------------------------------
	.byte	W24
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
@ 020   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
@ 021   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
@ 022   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
@ 023   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
@ 024   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
@ 025   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
@ 026   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
@ 027   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
@ 028   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
@ 029   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W88
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W48
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W28
@ 035   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v076
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v076
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W28
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W28
@ 036   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v076
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v076
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W28
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W28
@ 037   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v076
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v076
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W28
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W28
@ 038   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v076
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v076
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W28
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W28
@ 039   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v076
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v076
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W28
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W28
@ 040   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v076
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v076
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W28
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W28
@ 041   ----------------------------------------
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v076
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v076
	.byte	W02
	.byte	W01
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W76
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
	.byte	W48
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
@ 056   ----------------------------------------
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
@ 057   ----------------------------------------
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
@ 058   ----------------------------------------
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gn5 , v060
	.byte	W02
	.byte	W28
@ 059   ----------------------------------------
	.byte	W48
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
@ 060   ----------------------------------------
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
@ 061   ----------------------------------------
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
@ 062   ----------------------------------------
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
@ 063   ----------------------------------------
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
@ 064   ----------------------------------------
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
@ 065   ----------------------------------------
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
@ 066   ----------------------------------------
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
@ 067   ----------------------------------------
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
@ 068   ----------------------------------------
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
@ 069   ----------------------------------------
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
@ 070   ----------------------------------------
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
@ 071   ----------------------------------------
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
@ 072   ----------------------------------------
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
@ 073   ----------------------------------------
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W16
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
@ 074   ----------------------------------------
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W40
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v072
	.byte	W02
	.byte	W04
	.byte		        Gs5 , v060
	.byte	W02
	.byte	W28
@ 075   ----------------------------------------
	.byte	W48
	.byte	GOTO
	 .word	mus_vs_trainer_9_B1
mus_vs_trainer_9_B2:
	.byte		N02   , Gs5 , v072
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

mus_vs_trainer:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_vs_trainer_pri	@ Priority
	.byte	mus_vs_trainer_rev	@ Reverb.

	.word	mus_vs_trainer_grp

	.word	mus_vs_trainer_1
	.word	mus_vs_trainer_2
	.word	mus_vs_trainer_3
	.word	mus_vs_trainer_4
	.word	mus_vs_trainer_5
	.word	mus_vs_trainer_6
	.word	mus_vs_trainer_7
	.word	mus_vs_trainer_8
	.word	mus_vs_trainer_9

	.end
