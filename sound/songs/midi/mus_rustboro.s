	.include "MPlayDef.s"

	.equ	mus_rustboro_grp, voicegroup_rustboro
	.equ	mus_rustboro_pri, 0
	.equ	mus_rustboro_rev, reverb_set+50
	.equ	mus_rustboro_mvl, 85
	.equ	mus_rustboro_key, 0
	.equ	mus_rustboro_tbs, 1
	.equ	mus_rustboro_exg, 1
	.equ	mus_rustboro_cmp, 1

	.section .rodata
	.global	mus_rustboro
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_rustboro_1:
	.byte	KEYSH , mus_rustboro_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 128*mus_rustboro_tbs/2
	.byte		VOICE , 1
	.byte		VOL   , 127*mus_rustboro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N12   , An4 , v100
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N01   , An4 
	.byte	W01
	.byte		        As4 
	.byte	W02
	.byte		N09   , An4 
	.byte	W09
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
mus_rustboro_1_B1:
	.byte		N48   , Fn4 , v100
	.byte	W12
@ 002   ----------------------------------------
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		N01   , Fs5 
	.byte	W01
	.byte		N10   , Fn5 
	.byte	W23
@ 003   ----------------------------------------
	.byte		N12   
	.byte	W24
	.byte		        Ds5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		N48   , Dn5 
	.byte	W12
@ 004   ----------------------------------------
	.byte	W48
	.byte		N24   , Ds5 
	.byte	W24
	.byte		N12   , Dn5 
	.byte	W12
	.byte		N48   , Gn4 
	.byte	W12
@ 005   ----------------------------------------
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N36   , As4 
	.byte	W12
@ 006   ----------------------------------------
	.byte	W24
	.byte		N01   , Bn4 
	.byte	W01
	.byte		N04   , Cn5 
	.byte	W05
	.byte		N06   , As4 
	.byte	W06
	.byte		N24   , An4 
	.byte	W36
	.byte		N12   , Gn4 
	.byte	W21
	.byte		N03   , Gs4 
	.byte	W03
@ 007   ----------------------------------------
	.byte		N12   , An4 
	.byte	W24
	.byte		N48   , Fn4 
	.byte	W48
	.byte		N03   , As4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		N12   , Fn5 
	.byte	W12
@ 008   ----------------------------------------
	.byte		        As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N24   , Fn5 
	.byte	W24
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N24   , Fn5 
	.byte	W24
@ 009   ----------------------------------------
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N24   , Gs5 
	.byte	W24
	.byte		N01   , Fs5 
	.byte	W01
	.byte		        Gs5 
	.byte	W02
	.byte		N09   , Fs5 
	.byte	W09
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
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
	.byte	W60
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N18   , Gn4 
	.byte	W12
@ 018   ----------------------------------------
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W24
@ 019   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        As3 
	.byte	W24
	.byte		N09   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N48   , Fn4 
	.byte	W12
@ 020   ----------------------------------------
	.byte	W48
	.byte		N09   , Ds4 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W12
@ 021   ----------------------------------------
	.byte	W12
	.byte		N18   , Fn4 
	.byte	W24
	.byte		N09   , Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N36   , Ds4 
	.byte	W12
@ 022   ----------------------------------------
	.byte	W24
	.byte		N12   , As3 
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N09   
	.byte	W12
@ 023   ----------------------------------------
	.byte		N09   
	.byte	W12
	.byte		N24   , An3 
	.byte	W36
	.byte		N09   , Gn3 
	.byte	W12
	.byte		N18   , An3 
	.byte	W21
	.byte		N03   , As3 
	.byte	W03
	.byte		N09   , Cn4 
	.byte	W12
@ 024   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N12   , As3 
	.byte	W24
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N96   , Dn4 
	.byte	W12
@ 025   ----------------------------------------
	.byte	W84
	.byte		N12   , Gn5 
	.byte	W12
@ 026   ----------------------------------------
	.byte	W12
	.byte		N24   , As4 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W24
@ 027   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Dn5 
	.byte	W24
	.byte		N24   , Ds5 
	.byte	W24
	.byte		N12   , Fn5 
	.byte	W12
	.byte		N06   , En5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		N24   , Dn5 
	.byte	W12
@ 028   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N09   , Cs5 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N12   , Gn5 
	.byte	W12
@ 029   ----------------------------------------
	.byte		N06   , Fn5 
	.byte	W24
	.byte		N24   , Ds5 
	.byte	W24
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		N12   , Fn5 
	.byte	W12
	.byte		N06   , En5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		N24   , Dn5 
	.byte	W12
@ 030   ----------------------------------------
	.byte	W12
	.byte		N12   , As4 
	.byte	W36
	.byte		N09   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N09   , Ds5 
	.byte	W12
@ 031   ----------------------------------------
	.byte		N09   
	.byte	W12
	.byte		N24   , Dn5 
	.byte	W24
	.byte		        Ds5 
	.byte	W24
	.byte		N12   , Fn5 
	.byte	W12
	.byte		N06   , En5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		N09   , Dn5 
	.byte	W12
@ 032   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N12   , Gn4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
@ 033   ----------------------------------------
	.byte		N09   , As4 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N01   , An4 
	.byte	W01
	.byte		        As4 
	.byte	W02
	.byte		N09   , An4 
	.byte	W09
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N11   , An4 
	.byte	W12
	.byte	GOTO
	 .word	mus_rustboro_1_B1
mus_rustboro_1_B2:
	.byte		VOICE , 1
	.byte		        1
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_rustboro_2:
	.byte	KEYSH , mus_rustboro_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 4
	.byte		VOL   , 127*mus_rustboro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W84
mus_rustboro_2_B1:
	.byte		N09   , Dn3 , v100
	.byte		N09   , Fn3 
	.byte	W12
@ 001   ----------------------------------------
	.byte	W09
	.byte		N03   , An3 
	.byte	W03
	.byte		N09   
	.byte		N09   , Cn4 
	.byte	W36
	.byte		        Fn3 
	.byte		N09   , As3 
	.byte	W24
	.byte		        Fn3 
	.byte		N09   , An3 
	.byte	W24
@ 002   ----------------------------------------
	.byte		        Fn3 
	.byte		N09   , An3 
	.byte	W24
	.byte		        Fn3 
	.byte		N09   , Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte		N09   , An3 
	.byte	W24
	.byte		        Fn3 
	.byte		N09   , As3 
	.byte	W24
	.byte		        Ds3 
	.byte		N09   , Gn3 
	.byte	W12
@ 003   ----------------------------------------
	.byte	W09
	.byte		N03   , Dn3 
	.byte	W03
	.byte		N09   , Ds3 
	.byte		N09   , Gn3 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W24
	.byte		N09   , As3 
	.byte		N09   , Cn4 
	.byte	W24
	.byte		        Gn3 
	.byte		N09   , Bn3 
	.byte	W24
@ 004   ----------------------------------------
mus_rustboro_2_004:
	.byte		N09   , Gn3 , v100
	.byte		N09   , As3 
	.byte	W24
	.byte		        Ds3 
	.byte		N09   , Gn3 
	.byte	W12
	.byte		N09   
	.byte		N09   , As3 
	.byte	W24
	.byte		        Ds3 
	.byte		N09   , Gn3 
	.byte	W24
	.byte		        Fn3 
	.byte		N09   , An3 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_rustboro_2_005:
	.byte	W12
	.byte		N09   , Cn4 , v100
	.byte		N09   , Dn4 
	.byte	W36
	.byte		        An3 
	.byte		N09   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N09   , As3 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
mus_rustboro_2_006:
	.byte		N09   , Fn3 , v100
	.byte		N09   , An3 
	.byte	W24
	.byte		        Fn3 
	.byte		N09   , Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte		N09   , An3 
	.byte	W24
	.byte		N09   
	.byte		N09   , Cn4 
	.byte	W24
	.byte		N30   , Cs3 
	.byte		N30   , Fs3 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_rustboro_2_007:
	.byte	W24
	.byte		N42   , Cn3 , v100
	.byte		N42   , Fn3 
	.byte	W48
	.byte		        Cn3 
	.byte		N42   , Ds3 
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
	.byte	W24
	.byte		        Bn2 
	.byte		N42   , Ds3 
	.byte	W60
	.byte		N09   , Dn3 
	.byte		N09   , Fn3 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W12
	.byte		N09   
	.byte		N09   , An3 
	.byte	W36
	.byte		        Fn3 
	.byte		N09   , An3 
	.byte	W24
	.byte		        Fn3 
	.byte		N09   , Gn3 
	.byte	W24
@ 010   ----------------------------------------
	.byte		        Fn3 
	.byte		N09   , An3 
	.byte	W24
	.byte		        Fn3 
	.byte		N09   , Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte		N09   , An3 
	.byte	W24
	.byte		        Fn3 
	.byte		N09   , An3 
	.byte	W24
	.byte		        Cn3 
	.byte		N09   , Ds3 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W09
	.byte		N03   , Dn3 
	.byte	W03
	.byte		N09   , Ds3 
	.byte		N09   , Gn3 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W24
	.byte		N09   , Ds3 
	.byte		N09   , Gn3 
	.byte	W24
	.byte		        Ds3 
	.byte		N09   , Gn3 
	.byte	W24
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_2_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_2_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_2_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_2_007
@ 016   ----------------------------------------
	.byte	W24
	.byte		N42   , Bn2 , v100
	.byte		N42   , Ds3 
	.byte	W60
	.byte		N09   , Cn3 
	.byte		N09   , Ds3 
	.byte	W12
@ 017   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn3 
	.byte		N12   , Ds3 
	.byte	W36
	.byte		N09   , Cn3 
	.byte		N09   , Ds3 
	.byte	W24
	.byte		        Cn3 
	.byte		N09   , Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte		N09   , Ds3 
	.byte	W12
@ 018   ----------------------------------------
	.byte	W12
	.byte		        Cn3 
	.byte		N09   , Ds3 
	.byte	W24
	.byte		        Cn3 
	.byte		N09   , Ds3 
	.byte	W24
	.byte		        Cn3 
	.byte		N09   , Ds3 
	.byte	W24
	.byte		        Dn3 
	.byte		N09   , Fn3 
	.byte	W12
@ 019   ----------------------------------------
	.byte	W12
	.byte		N09   
	.byte		N09   , An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W24
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W24
	.byte		N18   , An3 
	.byte		N18   , Cn4 
	.byte	W12
@ 020   ----------------------------------------
mus_rustboro_2_020:
	.byte	W12
	.byte		N18   , Gs3 , v100
	.byte		N18   , Bn3 
	.byte	W24
	.byte		N09   , Fn3 
	.byte		N09   , Gs3 
	.byte	W24
	.byte		N18   , Fn3 
	.byte		N18   , Gn3 
	.byte	W24
	.byte		N09   , Ds3 
	.byte		N09   , Gn3 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte	W12
	.byte		        Ds3 
	.byte		N09   , Gn3 
	.byte	W36
	.byte		        Ds3 
	.byte		N09   , Gn3 
	.byte	W24
	.byte		        Ds3 
	.byte		N09   , Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte		N09   , Fs3 
	.byte	W12
@ 022   ----------------------------------------
	.byte		N09   
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N09   , Fs3 
	.byte	W24
	.byte		        Cn3 
	.byte		N09   , Ds3 
	.byte	W24
	.byte		        Cn3 
	.byte		N09   , Ds3 
	.byte	W12
	.byte		        As2 
	.byte		N09   , Dn3 
	.byte	W12
@ 023   ----------------------------------------
	.byte	W12
	.byte		        As2 
	.byte		N09   , Dn3 
	.byte	W12
	.byte		        As2 
	.byte		N09   , Dn3 
	.byte	W24
	.byte		        As2 
	.byte		N09   , Dn3 
	.byte	W24
	.byte		        As2 
	.byte		N09   , Dn3 
	.byte	W12
	.byte		N18   , Fn3 
	.byte		N18   , Gs3 
	.byte	W12
@ 024   ----------------------------------------
	.byte	W12
	.byte		        Dn3 
	.byte		N18   , Fn3 
	.byte	W24
	.byte		N18   
	.byte		N18   , Gs3 
	.byte	W24
	.byte		        Dn3 
	.byte		N18   , Fn3 
	.byte	W36
@ 025   ----------------------------------------
	.byte	W12
	.byte		N09   , Ds3 
	.byte		N09   , Gn3 
	.byte	W36
	.byte		        Ds3 
	.byte		N09   , Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N09   , Gn3 
	.byte	W24
@ 026   ----------------------------------------
	.byte		        Ds3 
	.byte		N09   , Fs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N09   , Fs3 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		        Cn4 
	.byte	W24
	.byte		        Ds3 
	.byte		N09   , Fs3 
	.byte	W24
@ 027   ----------------------------------------
	.byte	W12
	.byte		        Dn3 
	.byte		N09   , Fn3 
	.byte	W36
	.byte		        Dn3 
	.byte		N09   , Fn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N09   , Fn3 
	.byte	W12
	.byte		N18   , An3 
	.byte		N18   , Cn4 
	.byte	W12
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_2_020
@ 029   ----------------------------------------
	.byte	W12
	.byte		N09   , Ds3 , v100
	.byte		N09   , Gn3 
	.byte	W36
	.byte		        Ds3 
	.byte		N09   , Gn3 
	.byte	W24
	.byte		        Ds3 
	.byte		N09   , Gn3 
	.byte	W24
@ 030   ----------------------------------------
	.byte		        Cn3 
	.byte		N09   , Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn3 
	.byte		N09   , Ds3 
	.byte	W24
	.byte		N09   
	.byte		N09   , Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Ds3 
	.byte		N09   , Fn3 
	.byte	W12
	.byte		N09   
	.byte		N09   , Cn4 
	.byte	W12
@ 031   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Fn3 
	.byte		N09   , An3 
	.byte	W12
	.byte		        Fn3 
	.byte		N09   , Gn3 
	.byte	W24
	.byte		        Dn3 
	.byte		N09   , Fn3 
	.byte	W24
	.byte		        Dn3 
	.byte		N09   , Fn3 
	.byte	W24
@ 032   ----------------------------------------
	.byte		        Dn3 
	.byte		N09   , Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte		N09   , Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte		N09   , Fn3 
	.byte	W12
	.byte		N12   , Dn3 
	.byte		N12   , Fn3 
	.byte	W48
	.byte	GOTO
	 .word	mus_rustboro_2_B1
mus_rustboro_2_B2:
	.byte		VOICE , 4
	.byte		        4
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_rustboro_3:
	.byte	KEYSH , mus_rustboro_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 81
	.byte		VOL   , 88*mus_rustboro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W84
mus_rustboro_3_B1:
	.byte	W12
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
	.byte	W84
	.byte		N24   , Cn4 , v072
	.byte	W12
@ 009   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N48   , As3 
	.byte	W48
	.byte		N06   , An3 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N06   
	.byte	W24
	.byte		        Gn3 
	.byte	W12
	.byte		N12   , An3 
	.byte	W24
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn4 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W12
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N48   , Cn4 
	.byte	W48
	.byte		N06   , Gn3 
	.byte	W12
	.byte		N09   , As3 
	.byte	W12
@ 012   ----------------------------------------
	.byte		N06   , An3 
	.byte	W12
	.byte		N09   , As3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W36
	.byte		N09   , Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N42   , As3 
	.byte	W12
@ 013   ----------------------------------------
	.byte	W36
	.byte		        An3 
	.byte	W48
	.byte		        Gn3 
	.byte	W12
@ 014   ----------------------------------------
	.byte	W36
	.byte		N09   , Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W12
@ 015   ----------------------------------------
	.byte	W24
	.byte		N36   , Cn4 
	.byte	W48
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N02   , As4 
	.byte	W02
	.byte		        Cn5 
	.byte	W02
	.byte		N08   , As4 
	.byte	W08
@ 016   ----------------------------------------
	.byte		N06   , An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N02   , Cn5 
	.byte	W02
	.byte		        Dn5 
	.byte	W02
	.byte		N08   , Cn5 
	.byte	W08
	.byte		N06   , As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N02   , Dn5 
	.byte	W02
	.byte		        Ds5 
	.byte	W02
	.byte		N08   , Dn5 
	.byte	W08
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		N02   , Ds5 
	.byte	W02
	.byte		        Fn5 
	.byte	W02
	.byte		N08   , Ds5 
	.byte	W08
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		N24   , Gn5 
	.byte	W12
@ 017   ----------------------------------------
	.byte	W12
	.byte		        Gn4 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Cn5 
	.byte	W24
@ 018   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        As4 
	.byte	W24
	.byte		N09   , Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		N48   , Fn5 
	.byte	W12
@ 019   ----------------------------------------
	.byte	W48
	.byte		N09   , Ds5 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		N24   , Gn5 
	.byte	W12
@ 020   ----------------------------------------
	.byte	W12
	.byte		N18   , Fn5 
	.byte	W24
	.byte		N09   , Cn5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N36   , Ds5 
	.byte	W12
@ 021   ----------------------------------------
	.byte	W24
	.byte		N12   , As4 
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N09   
	.byte	W12
@ 022   ----------------------------------------
	.byte		N09   
	.byte	W12
	.byte		N24   , An4 
	.byte	W36
	.byte		N09   , Gn4 
	.byte	W12
	.byte		N18   , An4 
	.byte	W21
	.byte		N03   , As4 
	.byte	W03
	.byte		N09   , Cn5 
	.byte	W12
@ 023   ----------------------------------------
	.byte		        As4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N12   , As4 
	.byte	W24
	.byte		N24   , An4 
	.byte	W24
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N96   , Dn5 
	.byte	W12
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
	.byte	W84
	.byte	GOTO
	 .word	mus_rustboro_3_B1
mus_rustboro_3_B2:
	.byte		VOICE , 81
	.byte		        81
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_rustboro_4:
	.byte	KEYSH , mus_rustboro_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte		VOL   , 127*mus_rustboro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W84
mus_rustboro_4_B1:
	.byte	W12
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
	.byte	W84
	.byte		N24   , Cn4 , v100
	.byte	W12
@ 009   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N48   , As3 
	.byte	W48
	.byte		N06   , An3 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N06   
	.byte	W24
	.byte		        Gn3 
	.byte	W12
	.byte		N12   , An3 
	.byte	W24
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn4 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W12
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N48   , Cn4 
	.byte	W48
	.byte		N06   , Gn3 
	.byte	W12
	.byte		N09   , As3 
	.byte	W12
@ 012   ----------------------------------------
	.byte		N06   , An3 
	.byte	W12
	.byte		N09   , As3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W36
	.byte		N09   , Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N42   , As3 
	.byte	W12
@ 013   ----------------------------------------
	.byte	W36
	.byte		        An3 
	.byte	W48
	.byte		        Gn3 
	.byte	W12
@ 014   ----------------------------------------
	.byte	W36
	.byte		N09   , Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W12
@ 015   ----------------------------------------
	.byte	W24
	.byte		N36   , Cn4 
	.byte	W48
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N02   , As4 
	.byte	W02
	.byte		        Cn5 
	.byte	W02
	.byte		N08   , As4 
	.byte	W08
@ 016   ----------------------------------------
	.byte		N06   , An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N02   , Cn5 
	.byte	W02
	.byte		        Dn5 
	.byte	W02
	.byte		N08   , Cn5 
	.byte	W08
	.byte		N06   , As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N02   , Dn5 
	.byte	W02
	.byte		        Ds5 
	.byte	W02
	.byte		N08   , Dn5 
	.byte	W08
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		N02   , Ds5 
	.byte	W02
	.byte		        Fn5 
	.byte	W02
	.byte		N08   , Ds5 
	.byte	W08
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N01   , Fn5 
	.byte	W01
	.byte		        Ds5 
	.byte	W02
	.byte		        Dn5 
	.byte	W01
	.byte		        Cn5 
	.byte	W02
	.byte		        As4 
	.byte	W01
	.byte		        Gn4 
	.byte	W05
	.byte		N24   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Cn5 
	.byte	W24
@ 018   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        As4 
	.byte	W24
	.byte		N09   , Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		N48   , Fn5 
	.byte	W12
@ 019   ----------------------------------------
	.byte	W48
	.byte		N09   , Ds5 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		N24   , Gn5 
	.byte	W12
@ 020   ----------------------------------------
	.byte	W12
	.byte		N18   , Fn5 
	.byte	W24
	.byte		N09   , Cn5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N36   , Ds5 
	.byte	W12
@ 021   ----------------------------------------
	.byte	W24
	.byte		N12   , As4 
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N09   
	.byte	W12
@ 022   ----------------------------------------
	.byte		N09   
	.byte	W12
	.byte		N24   , An4 
	.byte	W36
	.byte		N09   , Gn4 
	.byte	W12
	.byte		N18   , An4 
	.byte	W21
	.byte		N03   , As4 
	.byte	W03
	.byte		N09   , Cn5 
	.byte	W12
@ 023   ----------------------------------------
	.byte		        As4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N12   , As4 
	.byte	W24
	.byte		N24   , An4 
	.byte	W24
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N96   , Dn5 
	.byte	W12
@ 024   ----------------------------------------
	.byte	W84
	.byte		N12   , Gn5 
	.byte	W12
@ 025   ----------------------------------------
	.byte		N01   , Fn5 
	.byte	W01
	.byte		        Ds5 
	.byte	W02
	.byte		        Dn5 
	.byte	W01
	.byte		        Cn5 
	.byte	W02
	.byte		        As4 
	.byte	W01
	.byte		        Gn4 
	.byte	W88
	.byte	W01
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
	.byte	W84
	.byte	GOTO
	 .word	mus_rustboro_4_B1
mus_rustboro_4_B2:
	.byte		VOICE , 73
	.byte		        73
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_rustboro_5:
	.byte	KEYSH , mus_rustboro_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 35
	.byte		VOL   , 127*mus_rustboro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W60
	.byte		N21   , Fn1 , v100
	.byte	W24
mus_rustboro_5_B1:
	.byte		N30   , As1 , v100
	.byte	W12
@ 001   ----------------------------------------
mus_rustboro_5_001:
	.byte	W24
	.byte		N12   , As1 , v100
	.byte	W12
	.byte		N30   , Fn1 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N30   , As1 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N09   , Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N18   , Fn1 
	.byte	W24
	.byte		N30   , Cn2 
	.byte	W12
@ 003   ----------------------------------------
mus_rustboro_5_003:
	.byte	W24
	.byte		N12   , Cn2 , v100
	.byte	W12
	.byte		N30   , Gn1 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N30   , Cn2 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N09   , Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N18   , Gn1 
	.byte	W24
	.byte		N30   , Fn1 
	.byte	W12
@ 005   ----------------------------------------
mus_rustboro_5_005:
	.byte	W24
	.byte		N12   , Fn1 , v100
	.byte	W12
	.byte		N30   , Cn2 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N30   , Fn1 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N09   , Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N18   , Ds1 
	.byte	W24
	.byte		N30   , Fs1 
	.byte	W12
@ 007   ----------------------------------------
mus_rustboro_5_007:
	.byte	W24
	.byte		N36   , Cs1 , v100
	.byte	W48
	.byte		        Cn1 
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
	.byte	W24
	.byte		        Bn0 
	.byte	W48
	.byte		N06   , Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N30   , As1 
	.byte	W12
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_5_001
@ 010   ----------------------------------------
	.byte	W24
	.byte		N12   , As1 , v100
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N06   , As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N30   , Cn2 
	.byte	W12
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_5_003
@ 012   ----------------------------------------
	.byte	W24
	.byte		N12   , Cn2 , v100
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N30   , Fn1 
	.byte	W12
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_5_005
@ 014   ----------------------------------------
	.byte	W24
	.byte		N12   , Fn1 , v100
	.byte	W12
	.byte		N09   , Cn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N30   , Fs1 
	.byte	W12
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_5_007
@ 016   ----------------------------------------
	.byte	W24
	.byte		N36   , Fn1 , v100
	.byte	W48
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N30   , Ds1 
	.byte	W12
@ 017   ----------------------------------------
mus_rustboro_5_017:
	.byte	W24
	.byte		N12   , Ds1 , v100
	.byte	W12
	.byte		N30   , As0 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N30   , Ds1 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N09   , As0 
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W24
	.byte		N12   , As0 
	.byte	W12
	.byte		N30   , Dn1 
	.byte	W12
@ 019   ----------------------------------------
mus_rustboro_5_019:
	.byte	W24
	.byte		N12   , Dn1 , v100
	.byte	W12
	.byte		N30   , An0 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N30   , Dn1 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte	W24
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N09   , Gs0 
	.byte	W12
	.byte		N06   , Gn0 
	.byte	W24
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N30   , Cn1 
	.byte	W12
@ 021   ----------------------------------------
	.byte	W24
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N30   , Gn0 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N30   , Fn0 
	.byte	W12
@ 022   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N30   , Ds1 
	.byte	W36
	.byte		N12   , An1 
	.byte	W12
	.byte		N30   , As1 
	.byte	W12
@ 023   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N09   
	.byte	W24
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N30   , Gs1 
	.byte	W12
@ 024   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N09   , Dn1 
	.byte	W12
	.byte		N18   , Gn1 
	.byte	W24
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N30   , Ds1 
	.byte	W12
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_5_017
@ 026   ----------------------------------------
	.byte	W24
	.byte		N12   , Ds1 , v100
	.byte	W12
	.byte		N09   , As0 
	.byte	W12
	.byte		N18   , Ds1 
	.byte	W24
	.byte		N12   , As0 
	.byte	W12
	.byte		N30   , Dn1 
	.byte	W12
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_5_019
@ 028   ----------------------------------------
	.byte	W24
	.byte		N12   , Dn1 , v100
	.byte	W12
	.byte		N09   , Gs0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N30   , Cn1 
	.byte	W12
@ 029   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N30   , Gn0 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N30   , Cn1 
	.byte	W12
@ 030   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N30   , Fs0 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N30   , As0 
	.byte	W12
@ 031   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N18   , Fn0 
	.byte	W24
	.byte		N12   
	.byte	W36
@ 032   ----------------------------------------
	.byte		N06   , As0 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N18   , Fn1 
	.byte	W24
	.byte	GOTO
	 .word	mus_rustboro_5_B1
mus_rustboro_5_B2:
	.byte		VOICE , 35
	.byte		        35
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_rustboro_6:
	.byte	KEYSH , mus_rustboro_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 17
	.byte		VOL   , 127*mus_rustboro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W84
mus_rustboro_6_B1:
	.byte	W12
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
	.byte	W36
	.byte		N12   , Gs5 , v127
	.byte	W12
	.byte		N01   , Fs5 
	.byte	W01
	.byte		        Gs5 
	.byte	W02
	.byte		N09   , Fs5 
	.byte	W09
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		N96   , Fn5 
	.byte	W12
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W36
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		N60   , Fn5 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W48
	.byte		N06   
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		N12   , Fn5 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N01   
	.byte	W01
	.byte		        Gn5 
	.byte	W02
	.byte		N09   , Fn5 
	.byte	W21
	.byte		N06   , Ds5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , Cn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte		N60   , Dn5 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W48
	.byte		N24   , Ds5 
	.byte	W24
	.byte		N06   , Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
@ 012   ----------------------------------------
	.byte		        As4 
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N36   , As4 
	.byte	W12
@ 013   ----------------------------------------
	.byte	W24
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N24   , An4 
	.byte	W36
	.byte		N12   , Gn4 
	.byte	W24
@ 014   ----------------------------------------
	.byte		        An4 
	.byte	W24
	.byte		        Fs4 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte		N01   , Fs5 
	.byte	W01
	.byte		        Gs5 
	.byte	W02
	.byte		N09   , Fs5 
	.byte	W09
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N24   , Fn5 
	.byte	W24
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N24   , Fn5 
	.byte	W24
@ 016   ----------------------------------------
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N36   , Fn5 
	.byte	W36
	.byte		N24   , Fs5 
	.byte	W36
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
	.byte	W84
	.byte	GOTO
	 .word	mus_rustboro_6_B1
mus_rustboro_6_B2:
	.byte		VOICE , 17
	.byte		        17
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_rustboro_7:
	.byte	KEYSH , mus_rustboro_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 86
	.byte		VOL   , 63*mus_rustboro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N12   , An2 , v080
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
mus_rustboro_7_B1:
	.byte		N48   , Fn2 , v080
	.byte	W12
@ 001   ----------------------------------------
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W24
@ 002   ----------------------------------------
	.byte		N12   
	.byte	W24
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N48   , Dn2 
	.byte	W12
@ 003   ----------------------------------------
	.byte	W48
	.byte		N24   , Ds2 
	.byte	W24
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N48   , Gn1 
	.byte	W12
@ 004   ----------------------------------------
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N36   , As1 
	.byte	W12
@ 005   ----------------------------------------
	.byte	W24
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N24   , An1 
	.byte	W36
	.byte		N12   , Gn1 
	.byte	W21
	.byte		N03   , Gs1 
	.byte	W03
@ 006   ----------------------------------------
	.byte		N12   , An1 
	.byte	W24
	.byte		N48   , Fn1 
	.byte	W72
@ 007   ----------------------------------------
	.byte		N12   , As1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N12   , As1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N24   , Fn2 
	.byte	W24
@ 008   ----------------------------------------
	.byte		N12   , As1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W24
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
	.byte	W12
	.byte		N24   , As1 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W24
@ 026   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W24
	.byte		N24   , Ds2 
	.byte	W24
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N24   , Dn2 
	.byte	W12
@ 027   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N09   , Cs2 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
@ 028   ----------------------------------------
	.byte		N06   , Fn2 
	.byte	W24
	.byte		N24   , Ds2 
	.byte	W24
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N24   , Dn2 
	.byte	W12
@ 029   ----------------------------------------
	.byte	W12
	.byte		N12   , As1 
	.byte	W36
	.byte		N09   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N09   , Ds2 
	.byte	W12
@ 030   ----------------------------------------
	.byte		N09   
	.byte	W12
	.byte		N24   , Dn2 
	.byte	W24
	.byte		        Ds2 
	.byte	W24
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N09   , Dn2 
	.byte	W12
@ 031   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		        Fn1 
	.byte	W24
@ 032   ----------------------------------------
	.byte		N09   , As1 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N11   , An1 
	.byte	W12
	.byte	GOTO
	 .word	mus_rustboro_7_B1
mus_rustboro_7_B2:
	.byte		VOICE , 86
	.byte		        86
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_rustboro_8:
	.byte	KEYSH , mus_rustboro_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 126
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rustboro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rustboro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rustboro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rustboro_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W84
mus_rustboro_8_B1:
	.byte		N06   , An4 , v112
	.byte	W12
@ 001   ----------------------------------------
mus_rustboro_8_001:
	.byte		N06   , An4 , v064
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        An4 , v112
	.byte	W12
	.byte		        An4 , v064
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        An4 , v112
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_rustboro_8_002:
	.byte		N06   , An4 , v064
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        An4 , v112
	.byte	W12
	.byte		        An4 , v064
	.byte	W12
	.byte		        An4 , v104
	.byte	W12
	.byte		        An4 , v064
	.byte	W12
	.byte		        An4 , v112
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_002
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_001
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_002
@ 025   ----------------------------------------
mus_rustboro_8_025:
	.byte		N06   , An4 , v064
	.byte	W12
	.byte		N03   , En4 , v112
	.byte	W12
	.byte		N06   , An4 , v064
	.byte	W12
	.byte		        An4 , v112
	.byte	W12
	.byte		N03   , En4 
	.byte	W12
	.byte		N06   , An4 , v064
	.byte	W12
	.byte		N03   , En4 , v112
	.byte	W12
	.byte		N06   , An4 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_rustboro_8_026:
	.byte		N03   , En4 , v112
	.byte	W12
	.byte		N06   , An4 
	.byte	W12
	.byte		N03   , En4 
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		N06   , An4 , v064
	.byte	W12
	.byte		N03   , En4 , v112
	.byte	W12
	.byte		N06   , An4 , v064
	.byte	W12
	.byte		        An4 , v112
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte		        An4 , v064
	.byte	W12
	.byte		N03   , En4 , v112
	.byte	W12
	.byte		N06   , An4 , v064
	.byte	W12
	.byte		        An4 , v112
	.byte	W12
	.byte		N03   , En4 
	.byte	W12
	.byte		N06   , An4 , v064
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N03   , En4 , v112
	.byte	W12
@ 028   ----------------------------------------
	.byte		N03   
	.byte	W12
	.byte		N06   , An4 , v064
	.byte	W12
	.byte		N03   , En4 , v112
	.byte	W12
	.byte		N06   , An4 
	.byte	W12
	.byte		        An4 , v064
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        An4 , v112
	.byte	W12
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_8_026
@ 031   ----------------------------------------
	.byte		N06   , An4 , v064
	.byte	W12
	.byte		N03   , En4 , v112
	.byte	W12
	.byte		N06   , An4 , v064
	.byte	W12
	.byte		        An4 , v112
	.byte	W12
	.byte		N03   , En4 
	.byte	W12
	.byte		N06   , An4 , v064
	.byte	W12
	.byte		N03   , En4 , v112
	.byte	W24
@ 032   ----------------------------------------
	.byte		N03   
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		N06   , An4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N15   , En4 
	.byte	W24
	.byte	GOTO
	 .word	mus_rustboro_8_B1
mus_rustboro_8_B2:
	.byte		VOICE , 126
	.byte		        126
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rustboro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rustboro_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_rustboro:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_rustboro_pri	@ Priority
	.byte	mus_rustboro_rev	@ Reverb.

	.word	mus_rustboro_grp

	.word	mus_rustboro_1
	.word	mus_rustboro_2
	.word	mus_rustboro_3
	.word	mus_rustboro_4
	.word	mus_rustboro_5
	.word	mus_rustboro_6
	.word	mus_rustboro_7
	.word	mus_rustboro_8

	.end
