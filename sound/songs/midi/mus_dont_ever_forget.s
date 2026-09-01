	.include "MPlayDef.s"

	.equ	mus_dont_ever_forget_grp, voicegroup_fly_me_to_the_moon
	.equ	mus_dont_ever_forget_pri, 0
	.equ	mus_dont_ever_forget_rev, reverb_set+50
	.equ	mus_dont_ever_forget_mvl, 100
	.equ	mus_dont_ever_forget_key, 0
	.equ	mus_dont_ever_forget_tbs, 1
	.equ	mus_dont_ever_forget_exg, 1
	.equ	mus_dont_ever_forget_cmp, 1

	.section .rodata
	.global	mus_dont_ever_forget
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_dont_ever_forget_1:
	.byte		VOL   , 127*mus_dont_ever_forget_mvl/mxv
	.byte	KEYSH , mus_dont_ever_forget_key+0
mus_dont_ever_forget_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 63*mus_dont_ever_forget_tbs/2
	.byte		VOICE , 0
	.byte		        40
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BENDR , 24
	.byte		BEND  , c_v+0
	.byte		N96   , Fs2 , v092
	.byte		N96   , Cs3 , v108
	.byte		N96   , Fs3 , v092
	.byte		N48   , Gs3 , v108
	.byte	W48
	.byte		        Ds4 
	.byte	W48
@ 001   ----------------------------------------
	.byte		N84   , Gs2 
	.byte		N84   , Ds3 
	.byte		N84   , Gs3 , v092
	.byte		N84   , Cs4 , v108
	.byte	W96
@ 002   ----------------------------------------
	.byte		N96   , Bn2 , v092
	.byte		N96   , Fs3 , v108
	.byte		N96   , Bn3 , v092
	.byte		N48   , Ds4 , v108
	.byte	W48
	.byte		        Fs4 
	.byte	W48
@ 003   ----------------------------------------
	.byte		TIE   , Cs3 , v092
	.byte		TIE   , Gs3 , v108
	.byte		TIE   , Cs4 , v092
	.byte		TIE   , Fn4 , v108
	.byte	W96
@ 004   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cs3 
	.byte		        Gs3 
	.byte		        Cs4 
	.byte		        Fn4 
	.byte	W48
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
	.byte		VOICE , 40
	.byte		N24   , Ds3 , v088
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
@ 022   ----------------------------------------
	.byte		        Fs3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        As3 
	.byte	W24
@ 023   ----------------------------------------
	.byte		        Fs3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
@ 024   ----------------------------------------
	.byte		        Ds3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Cs3 
	.byte	W24
@ 025   ----------------------------------------
	.byte		        Ds3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
@ 026   ----------------------------------------
	.byte		        Fs3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
@ 027   ----------------------------------------
	.byte		        As2 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 028   ----------------------------------------
	.byte		        Dn3 
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
	.byte	W54
	.byte	GOTO
	 .word	mus_dont_ever_forget_1_B1
mus_dont_ever_forget_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_dont_ever_forget_2:
	.byte		VOL   , 127*mus_dont_ever_forget_mvl/mxv
	.byte	KEYSH , mus_dont_ever_forget_key+0
mus_dont_ever_forget_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        73
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BENDR , 24
	.byte		BEND  , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W48
	.byte		VOICE , 73
	.byte		N06   , Ds4 , v072
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		N12   , Fs5 
	.byte	W18
@ 004   ----------------------------------------
	.byte	W12
	.byte		N36   , Fn5 
	.byte	W60
	.byte		VOICE , 73
	.byte		N12   , As4 , v060
	.byte	W12
	.byte		N06   , Cs5 
	.byte	W06
	.byte		N42   , Ds5 
	.byte	W06
@ 005   ----------------------------------------
mus_dont_ever_forget_2_005:
	.byte	W36
	.byte		N06   , Fs5 , v060
	.byte	W06
	.byte		N18   , Fn5 
	.byte	W18
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N78   , As4 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
mus_dont_ever_forget_2_006:
	.byte	W72
	.byte		N12   , Ds4 , v060
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N42   , Gs4 
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
mus_dont_ever_forget_2_007:
	.byte	W36
	.byte		N06   , Fs4 , v060
	.byte	W06
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N06   , Cs5 
	.byte	W06
	.byte		N66   , As4 
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
mus_dont_ever_forget_2_008:
	.byte	W72
	.byte		N12   , As4 , v060
	.byte	W12
	.byte		N06   , Cs5 
	.byte	W06
	.byte		N42   , Ds5 
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_2_005
@ 010   ----------------------------------------
mus_dont_ever_forget_2_010:
	.byte	W72
	.byte		N12   , Ds4 , v060
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W06
	.byte		TIE   , Gs4 
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 012   ----------------------------------------
mus_dont_ever_forget_2_012:
	.byte	W42
	.byte		VOICE , 40
	.byte		N18   , Gs3 , v092
	.byte	W18
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , As3 
	.byte	W06
	.byte		N96   , Fs3 
	.byte	W06
	.byte	PEND
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
	.byte	W72
	.byte		VOICE , 73
	.byte		N12   , As4 , v060
	.byte	W12
	.byte		N06   , Cs5 
	.byte	W06
	.byte		N42   , Ds5 
	.byte	W06
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_2_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_2_006
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_2_007
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_2_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_2_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_2_010
@ 027   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gs4 
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_2_012
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
	.byte	W54
	.byte	GOTO
	 .word	mus_dont_ever_forget_2_B1
mus_dont_ever_forget_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_dont_ever_forget_3:
	.byte		VOL   , 127*mus_dont_ever_forget_mvl/mxv
	.byte	KEYSH , mus_dont_ever_forget_key+0
mus_dont_ever_forget_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        40
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BENDR , 24
	.byte		BEND  , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_dont_ever_forget_3_004:
	.byte	W72
	.byte		N12   , As3 , v100
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N42   , Ds4 
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_dont_ever_forget_3_005:
	.byte	W36
	.byte		N06   , Fs4 , v100
	.byte	W06
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N78   , As3 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
mus_dont_ever_forget_3_006:
	.byte	W72
	.byte		N12   , Ds3 , v100
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N42   , Gs3 
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
mus_dont_ever_forget_3_007:
	.byte	W36
	.byte		N06   , Fs3 , v100
	.byte	W06
	.byte		N18   , Gs3 
	.byte	W18
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N66   , As3 
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_3_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_3_005
@ 010   ----------------------------------------
mus_dont_ever_forget_3_010:
	.byte	W72
	.byte		N12   , Ds3 , v100
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		TIE   , Gs3 
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 012   ----------------------------------------
mus_dont_ever_forget_3_012:
	.byte	W42
	.byte		VOICE , 40
	.byte		N18   , Gs3 , v100
	.byte	W18
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , As3 
	.byte	W06
	.byte		N96   , Fs3 
	.byte	W06
	.byte	PEND
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
	.byte	W72
	.byte		VOICE , 40
	.byte		N12   , As3 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N42   , Ds4 
	.byte	W06
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_3_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_3_006
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_3_007
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_3_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_3_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_3_010
@ 027   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gs3 
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_3_012
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
	.byte	W54
	.byte	GOTO
	 .word	mus_dont_ever_forget_3_B1
mus_dont_ever_forget_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_dont_ever_forget_4:
	.byte		VOL   , 127*mus_dont_ever_forget_mvl/mxv
	.byte	KEYSH , mus_dont_ever_forget_key+0
mus_dont_ever_forget_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BENDR , 24
	.byte		BEND  , c_v+0
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
	.byte	W06
	.byte		VOICE , 0
	.byte		N06   , Fn4 , v044
	.byte		N06   , Fn5 , v052
	.byte	W06
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As3 , v044
	.byte		N06   , As4 , v052
	.byte	W06
	.byte		        Fn4 , v044
	.byte		N06   , Fn5 , v052
	.byte	W06
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As3 , v044
	.byte		N06   , As4 , v052
	.byte	W06
	.byte		        Fn4 , v044
	.byte		N06   , Fn5 , v052
	.byte	W12
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As3 , v044
	.byte		N06   , As4 , v052
	.byte	W06
	.byte		        As5 
	.byte	W12
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As3 , v044
	.byte		N06   , As4 , v052
	.byte	W12
@ 006   ----------------------------------------
mus_dont_ever_forget_4_006:
	.byte	W06
	.byte		N06   , Fn4 , v044
	.byte		N06   , Fn5 , v052
	.byte	W06
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As3 , v044
	.byte		N06   , As4 , v052
	.byte	W06
	.byte		        Fn4 , v044
	.byte		N06   , Fn5 , v052
	.byte	W06
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As3 , v044
	.byte		N06   , As4 , v052
	.byte	W06
	.byte		        Fn4 , v044
	.byte		N06   , Fn5 , v052
	.byte	W12
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Fn5 
	.byte	W12
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As3 , v044
	.byte		N06   , As4 , v052
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W06
	.byte		        Fn4 , v044
	.byte		N06   , Fn5 , v052
	.byte	W06
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As3 , v044
	.byte		N06   , As4 , v052
	.byte	W06
	.byte		        Fn4 , v044
	.byte		N06   , Fn5 , v052
	.byte	W06
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As3 , v044
	.byte		N06   , As4 , v052
	.byte	W06
	.byte		        Fn4 , v044
	.byte		N06   , Fn5 , v052
	.byte	W12
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As3 , v044
	.byte		N06   , As4 , v052
	.byte	W06
	.byte		        Fn4 , v044
	.byte		N06   , Fn5 , v052
	.byte	W12
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As3 , v044
	.byte		N06   , As4 , v052
	.byte	W12
@ 008   ----------------------------------------
	.byte	W06
	.byte		        Fn4 , v044
	.byte		N06   , Fn5 , v052
	.byte	W06
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As3 , v044
	.byte		N06   , As4 , v052
	.byte	W06
	.byte		        Fn4 , v044
	.byte		N06   , Fn5 , v052
	.byte	W06
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As3 , v044
	.byte		N06   , As4 , v052
	.byte	W06
	.byte		        As5 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		        Fn5 
	.byte	W18
@ 009   ----------------------------------------
	.byte	W06
	.byte		        Fn4 , v044
	.byte		N06   , Fn5 , v052
	.byte	W06
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As3 , v044
	.byte		N06   , As4 , v052
	.byte	W06
	.byte		        Fn4 , v044
	.byte		N06   , Fn5 , v052
	.byte	W06
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As3 , v044
	.byte		N06   , As4 , v052
	.byte	W06
	.byte		        Fn4 , v044
	.byte		N06   , Fn5 , v052
	.byte	W12
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As3 , v044
	.byte		N06   , As4 , v052
	.byte	W06
	.byte		        As5 
	.byte	W12
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As3 
	.byte		N06   , As4 
	.byte	W12
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_4_006
@ 011   ----------------------------------------
	.byte	W06
	.byte		N06   , Fn4 , v044
	.byte		N06   , Fn5 , v052
	.byte	W06
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As3 , v044
	.byte		N06   , As4 , v052
	.byte	W06
	.byte		        Fn4 , v044
	.byte		N06   , Fn5 , v052
	.byte	W06
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As3 , v044
	.byte		N06   , As4 , v052
	.byte	W06
	.byte		        Fn4 , v044
	.byte		N06   , Fn5 , v052
	.byte	W12
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W12
	.byte		        Fn4 , v044
	.byte		N06   , Fn5 , v052
	.byte	W12
	.byte		        Ds4 , v044
	.byte		N06   , Ds5 , v052
	.byte	W06
	.byte		        As4 , v044
	.byte		N06   , As5 , v052
	.byte	W12
@ 012   ----------------------------------------
	.byte		        Fn4 , v044
	.byte		N06   , Fn5 , v052
	.byte	W96
@ 013   ----------------------------------------
mus_dont_ever_forget_4_013:
	.byte	W06
	.byte		VOICE , 0
	.byte		N06   , Fn4 , v080
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
mus_dont_ever_forget_4_014:
	.byte	W06
	.byte		N06   , Fn4 , v080
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_dont_ever_forget_4_015:
	.byte	W06
	.byte		N06   , Fn4 , v080
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_dont_ever_forget_4_016:
	.byte	W06
	.byte		N06   , Fn4 , v080
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        As5 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		        Fn5 
	.byte	W18
	.byte	PEND
@ 017   ----------------------------------------
mus_dont_ever_forget_4_017:
	.byte	W06
	.byte		N06   , Fn4 , v080
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		        As4 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_4_014
@ 019   ----------------------------------------
mus_dont_ever_forget_4_019:
	.byte	W06
	.byte		N06   , Fn4 , v080
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W18
	.byte	PEND
@ 020   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W12
	.byte		N09   , Cs4 
	.byte	W12
	.byte		N12   , Ds4 
	.byte	W54
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
	.byte	PATT
	 .word	mus_dont_ever_forget_4_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_4_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_4_015
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_4_016
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_4_017
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_4_014
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_4_019
@ 036   ----------------------------------------
	.byte		N06   , As3 , v080
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W12
	.byte		N09   , Cs4 
	.byte	W12
	.byte		N12   , Ds4 
	.byte	W12
	.byte	GOTO
	 .word	mus_dont_ever_forget_4_B1
mus_dont_ever_forget_4_B2:
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_dont_ever_forget_5:
	.byte		VOL   , 127*mus_dont_ever_forget_mvl/mxv
	.byte	KEYSH , mus_dont_ever_forget_key+0
mus_dont_ever_forget_5_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BENDR , 24
	.byte		BEND  , c_v+0
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
	.byte	W06
	.byte		N06   , Fn4 , v068
	.byte		N06   , Fn5 , v080
	.byte	W06
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As3 , v068
	.byte		N06   , As4 , v080
	.byte	W06
	.byte		        Fn4 , v068
	.byte		N06   , Fn5 , v080
	.byte	W06
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As3 , v068
	.byte		N06   , As4 , v080
	.byte	W06
	.byte		        Fn4 , v068
	.byte		N06   , Fn5 , v080
	.byte	W12
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As3 , v068
	.byte		N06   , As4 , v080
	.byte	W06
	.byte		        As5 
	.byte	W12
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As3 , v068
	.byte		N06   , As4 , v080
	.byte	W12
@ 006   ----------------------------------------
mus_dont_ever_forget_5_006:
	.byte	W06
	.byte		N06   , Fn4 , v068
	.byte		N06   , Fn5 , v080
	.byte	W06
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As3 , v068
	.byte		N06   , As4 , v080
	.byte	W06
	.byte		        Fn4 , v068
	.byte		N06   , Fn5 , v080
	.byte	W06
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As3 , v068
	.byte		N06   , As4 , v080
	.byte	W06
	.byte		        Fn4 , v068
	.byte		N06   , Fn5 , v080
	.byte	W12
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Fn5 
	.byte	W12
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As3 , v068
	.byte		N06   , As4 , v080
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W06
	.byte		        Fn4 , v068
	.byte		N06   , Fn5 , v080
	.byte	W06
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As3 , v068
	.byte		N06   , As4 , v080
	.byte	W06
	.byte		        Fn4 , v068
	.byte		N06   , Fn5 , v080
	.byte	W06
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As3 , v068
	.byte		N06   , As4 , v080
	.byte	W06
	.byte		        Fn4 , v068
	.byte		N06   , Fn5 , v080
	.byte	W12
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As3 , v068
	.byte		N06   , As4 , v080
	.byte	W06
	.byte		        Fn4 , v068
	.byte		N06   , Fn5 , v080
	.byte	W12
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As3 , v068
	.byte		N06   , As4 , v080
	.byte	W12
@ 008   ----------------------------------------
	.byte	W06
	.byte		        Fn4 , v068
	.byte		N06   , Fn5 , v080
	.byte	W06
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As3 , v068
	.byte		N06   , As4 , v080
	.byte	W06
	.byte		        Fn4 , v068
	.byte		N06   , Fn5 , v080
	.byte	W06
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As3 , v068
	.byte		N06   , As4 , v080
	.byte	W06
	.byte		        As5 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		        Fn5 
	.byte	W18
@ 009   ----------------------------------------
	.byte	W06
	.byte		        Fn4 , v068
	.byte		N06   , Fn5 , v080
	.byte	W06
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As3 , v068
	.byte		N06   , As4 , v080
	.byte	W06
	.byte		        Fn4 , v068
	.byte		N06   , Fn5 , v080
	.byte	W06
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As3 , v068
	.byte		N06   , As4 , v080
	.byte	W06
	.byte		        Fn4 , v068
	.byte		N06   , Fn5 , v080
	.byte	W12
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As3 , v068
	.byte		N06   , As4 , v080
	.byte	W06
	.byte		        As5 
	.byte	W12
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As3 
	.byte		N06   , As4 
	.byte	W12
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_5_006
@ 011   ----------------------------------------
	.byte	W06
	.byte		N06   , Fn4 , v068
	.byte		N06   , Fn5 , v080
	.byte	W06
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As3 , v068
	.byte		N06   , As4 , v080
	.byte	W06
	.byte		        Fn4 , v068
	.byte		N06   , Fn5 , v080
	.byte	W06
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As3 , v068
	.byte		N06   , As4 , v080
	.byte	W06
	.byte		        Fn4 , v068
	.byte		N06   , Fn5 , v080
	.byte	W12
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W12
	.byte		        Fn4 , v068
	.byte		N06   , Fn5 , v080
	.byte	W12
	.byte		        Ds4 , v068
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        As4 , v068
	.byte		N06   , As5 , v080
	.byte	W12
@ 012   ----------------------------------------
	.byte		        Fn4 , v068
	.byte		N06   , Fn5 , v080
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
mus_dont_ever_forget_5_021:
	.byte	W06
	.byte		N06   , Fn5 , v088
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        As5 , v072
	.byte	W12
	.byte		        As4 , v088
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte	PEND
@ 022   ----------------------------------------
mus_dont_ever_forget_5_022:
	.byte	W06
	.byte		N06   , Fn5 , v088
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W06
	.byte		        As5 , v072
	.byte	W06
	.byte		        Fn5 , v088
	.byte	W12
	.byte		        As4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W06
	.byte		        As4 
	.byte	W12
@ 024   ----------------------------------------
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        As5 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		        Fn5 
	.byte	W18
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_5_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_5_022
@ 027   ----------------------------------------
	.byte	W06
	.byte		N06   , Fn5 , v088
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte	W12
@ 028   ----------------------------------------
	.byte		N18   , As4 
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
	.byte	W54
	.byte	GOTO
	 .word	mus_dont_ever_forget_5_B1
mus_dont_ever_forget_5_B2:
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_dont_ever_forget_6:
	.byte		VOL   , 127*mus_dont_ever_forget_mvl/mxv
	.byte	KEYSH , mus_dont_ever_forget_key+0
mus_dont_ever_forget_6_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        40
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BENDR , 24
	.byte		BEND  , c_v+0
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
mus_dont_ever_forget_6_005:
	.byte	W12
	.byte		N06   , As2 , v080
	.byte	W06
	.byte		        Ds3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W30
	.byte	PEND
@ 006   ----------------------------------------
mus_dont_ever_forget_6_006:
	.byte	W12
	.byte		N06   , As2 , v080
	.byte	W06
	.byte		        Cs3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        As3 
	.byte	W30
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte		        Ds3 
	.byte	W42
	.byte		        Cs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W30
@ 008   ----------------------------------------
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte		N06   , As3 
	.byte	W12
	.byte		        Fn3 
	.byte		N06   , Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte		N06   , Fn3 
	.byte	W18
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_6_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_6_006
@ 011   ----------------------------------------
	.byte	W12
	.byte		N06   , As2 , v080
	.byte	W06
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W12
@ 012   ----------------------------------------
	.byte		N18   , Cs4 
	.byte	W96
@ 013   ----------------------------------------
mus_dont_ever_forget_6_013:
	.byte	W12
	.byte		N06   , As2 , v072
	.byte	W06
	.byte		        Ds3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W30
	.byte	PEND
@ 014   ----------------------------------------
mus_dont_ever_forget_6_014:
	.byte	W12
	.byte		N06   , As2 , v072
	.byte	W06
	.byte		        Cs3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        As3 
	.byte	W30
	.byte	PEND
@ 015   ----------------------------------------
mus_dont_ever_forget_6_015:
	.byte	W12
	.byte		N06   , As2 , v072
	.byte	W06
	.byte		        Ds3 
	.byte	W42
	.byte		        Cs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W30
	.byte	PEND
@ 016   ----------------------------------------
mus_dont_ever_forget_6_016:
	.byte	W12
	.byte		N06   , As2 , v072
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte		N06   , As3 
	.byte	W12
	.byte		        Fn3 
	.byte		N06   , Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte		N06   , Fn3 
	.byte	W18
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_6_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_6_014
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_6_015
@ 020   ----------------------------------------
	.byte	W12
	.byte		N06   , Ds3 , v072
	.byte	W06
	.byte		        As3 
	.byte	W12
	.byte		N09   , Gs2 , v060
	.byte		N09   , Cs3 , v072
	.byte	W12
	.byte		N12   , As2 , v060
	.byte		N12   , Ds3 , v072
	.byte	W54
@ 021   ----------------------------------------
	.byte	W12
	.byte		N06   , Ds3 , v088
	.byte	W06
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W30
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W18
@ 022   ----------------------------------------
	.byte	W12
	.byte		        Ds3 
	.byte	W06
	.byte		        As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gs3 
	.byte	W18
	.byte		        Fs3 
	.byte	W12
@ 023   ----------------------------------------
	.byte	W12
	.byte		        Ds3 , v080
	.byte	W06
	.byte		        Fs3 
	.byte	W12
	.byte		N30   , Ds3 
	.byte	W30
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W18
@ 024   ----------------------------------------
	.byte	W12
	.byte		        Fs3 
	.byte	W06
	.byte		        As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte		N06   , As3 
	.byte	W12
	.byte		        Fn3 
	.byte		N06   , Gs3 
	.byte	W18
@ 025   ----------------------------------------
	.byte	W12
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W42
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W30
@ 026   ----------------------------------------
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W18
	.byte		        As2 
	.byte	W12
	.byte		N06   
	.byte	W24
@ 027   ----------------------------------------
	.byte	W12
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W42
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W30
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_6_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_6_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_6_015
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_6_016
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_6_013
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_6_014
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_6_015
@ 036   ----------------------------------------
	.byte	W12
	.byte		N06   , Ds3 , v072
	.byte	W06
	.byte		        As3 
	.byte	W12
	.byte		N09   , Gs2 , v060
	.byte		N09   , Cs3 , v072
	.byte	W12
	.byte		N12   , As2 , v060
	.byte		N12   , Ds3 , v072
	.byte	W12
	.byte	GOTO
	 .word	mus_dont_ever_forget_6_B1
mus_dont_ever_forget_6_B2:
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_dont_ever_forget_7:
	.byte		VOL   , 127*mus_dont_ever_forget_mvl/mxv
	.byte	KEYSH , mus_dont_ever_forget_key+0
mus_dont_ever_forget_7_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        40
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BENDR , 24
	.byte		BEND  , c_v+0
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
mus_dont_ever_forget_7_005:
	.byte	W12
	.byte		N06   , As2 , v120
	.byte	W06
	.byte		        Ds3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W30
	.byte	PEND
@ 006   ----------------------------------------
mus_dont_ever_forget_7_006:
	.byte	W12
	.byte		N06   , As2 , v120
	.byte	W06
	.byte		        Cs3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        As3 
	.byte	W30
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte		        Ds3 
	.byte	W42
	.byte		        Cs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W30
@ 008   ----------------------------------------
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte		N06   , As3 
	.byte	W12
	.byte		        Fn3 
	.byte		N06   , Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte		N06   , Fn3 
	.byte	W18
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_7_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_7_006
@ 011   ----------------------------------------
	.byte	W12
	.byte		N06   , As2 , v120
	.byte	W06
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W12
@ 012   ----------------------------------------
	.byte		N18   , Cs4 
	.byte	W96
@ 013   ----------------------------------------
mus_dont_ever_forget_7_013:
	.byte	W12
	.byte		N06   , As2 , v112
	.byte	W06
	.byte		        Ds3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W30
	.byte	PEND
@ 014   ----------------------------------------
mus_dont_ever_forget_7_014:
	.byte	W12
	.byte		N06   , As2 , v112
	.byte	W06
	.byte		        Cs3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        As3 
	.byte	W30
	.byte	PEND
@ 015   ----------------------------------------
mus_dont_ever_forget_7_015:
	.byte	W12
	.byte		N06   , As2 , v112
	.byte	W06
	.byte		        Ds3 
	.byte	W42
	.byte		        Cs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W30
	.byte	PEND
@ 016   ----------------------------------------
mus_dont_ever_forget_7_016:
	.byte	W12
	.byte		N06   , As2 , v112
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte		N06   , As3 
	.byte	W12
	.byte		        Fn3 
	.byte		N06   , Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte		N06   , Fn3 
	.byte	W18
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_7_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_7_014
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_7_015
@ 020   ----------------------------------------
	.byte	W12
	.byte		N06   , Ds3 , v112
	.byte	W06
	.byte		        As3 
	.byte	W12
	.byte		N09   , Gs2 , v096
	.byte		N09   , Cs3 , v112
	.byte	W12
	.byte		N12   , As2 , v096
	.byte		N12   , Ds3 , v112
	.byte	W54
@ 021   ----------------------------------------
mus_dont_ever_forget_7_021:
	.byte	W12
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W30
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W18
	.byte	PEND
@ 022   ----------------------------------------
	.byte	W12
	.byte		        Ds3 
	.byte	W06
	.byte		        As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds4 , v108
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gs3 , v127
	.byte	W18
	.byte		        Fs3 
	.byte	W12
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_7_021
@ 024   ----------------------------------------
	.byte	W12
	.byte		N06   , Fs3 , v127
	.byte	W06
	.byte		        As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte		N06   , As3 
	.byte	W12
	.byte		        Fn3 
	.byte		N06   , Gs3 
	.byte	W18
@ 025   ----------------------------------------
	.byte	W12
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W42
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W30
@ 026   ----------------------------------------
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W18
	.byte		        As2 
	.byte	W12
	.byte		N06   
	.byte	W24
@ 027   ----------------------------------------
	.byte	W12
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W42
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W30
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_7_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_7_014
@ 031   ----------------------------------------
	.byte	W12
	.byte		N06   , As2 , v112
	.byte	W06
	.byte		        Ds3 
	.byte	W42
	.byte		        As2 
	.byte	W06
	.byte		        Fn3 
	.byte	W30
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_7_016
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_7_013
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_7_014
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_7_015
@ 036   ----------------------------------------
	.byte	W12
	.byte		N06   , Ds3 , v112
	.byte	W06
	.byte		        As3 
	.byte	W12
	.byte		N09   , Gs2 , v096
	.byte		N09   , Cs3 , v112
	.byte	W12
	.byte		N12   , As2 , v096
	.byte		N12   , Ds3 , v112
	.byte	W12
	.byte	GOTO
	 .word	mus_dont_ever_forget_7_B1
mus_dont_ever_forget_7_B2:
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_dont_ever_forget_8:
	.byte		VOL   , 127*mus_dont_ever_forget_mvl/mxv
	.byte	KEYSH , mus_dont_ever_forget_key+0
mus_dont_ever_forget_8_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        40
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BENDR , 24
	.byte		BEND  , c_v+0
	.byte		N48   , Gs3 , v088
	.byte	W48
	.byte		        Ds4 
	.byte	W48
@ 001   ----------------------------------------
	.byte		N84   , Cs4 
	.byte	W96
@ 002   ----------------------------------------
	.byte		N48   , Ds4 
	.byte	W48
	.byte		        Fs4 
	.byte	W48
@ 003   ----------------------------------------
	.byte		TIE   , Fn4 
	.byte	W96
@ 004   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
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
	.byte		N18   , Gs3 , v092
	.byte	W96
@ 013   ----------------------------------------
mus_dont_ever_forget_8_013:
	.byte		VOICE , 40
	.byte		N96   , As2 , v052
	.byte		N96   , Ds3 
	.byte	W96
	.byte	PEND
@ 014   ----------------------------------------
	.byte		        Cs3 
	.byte		N96   , Fn3 
	.byte	W96
@ 015   ----------------------------------------
mus_dont_ever_forget_8_015:
	.byte		N48   , Ds3 , v052
	.byte		N48   , Fs3 
	.byte	W48
	.byte		        Fn3 
	.byte		N48   , Gs3 
	.byte	W48
	.byte	PEND
@ 016   ----------------------------------------
mus_dont_ever_forget_8_016:
	.byte		N48   , Ds3 , v052
	.byte		N48   , Fs3 
	.byte	W48
	.byte		N24   
	.byte		N24   , As3 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
	.byte		N96   , Ds3 
	.byte		N96   , Fs3 
	.byte	W96
@ 018   ----------------------------------------
	.byte		        Cs3 
	.byte		N96   , Fn3 
	.byte	W96
@ 019   ----------------------------------------
mus_dont_ever_forget_8_019:
	.byte		N48   , Ds3 , v052
	.byte		N48   , Fs3 
	.byte	W48
	.byte		        Cs3 
	.byte		N48   , Fn3 
	.byte	W48
	.byte	PEND
@ 020   ----------------------------------------
	.byte		N30   , Ds3 
	.byte	W30
	.byte		VOICE , 40
	.byte		N12   , Cs2 , v072
	.byte		N09   , Cs3 
	.byte	W12
	.byte		N12   , Ds2 
	.byte		N12   , Ds3 
	.byte	W54
@ 021   ----------------------------------------
mus_dont_ever_forget_8_021:
	.byte		N24   , Ds3 , v092
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N24   
	.byte		N24   , As3 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N24   
	.byte		N24   , Cs4 
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
	.byte		        Fs3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        As3 , v072
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        Gs3 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        As3 
	.byte		N24   , Cs4 
	.byte	W24
@ 023   ----------------------------------------
	.byte		        Fs3 , v092
	.byte		N24   , As3 
	.byte	W24
	.byte		        Ds3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , Fn3 
	.byte	W24
@ 024   ----------------------------------------
	.byte		        Ds3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Ds3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        Ds3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , Gs3 
	.byte	W24
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_8_021
@ 026   ----------------------------------------
	.byte		N24   , Fs3 , v092
	.byte		N24   , Ds4 , v076
	.byte	W24
	.byte		        Fs3 , v092
	.byte		N24   , As3 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Ds3 
	.byte		N24   , Fs3 
	.byte	W24
@ 027   ----------------------------------------
	.byte		N48   , As2 
	.byte		N48   , Gs3 
	.byte	W48
	.byte		        Cn3 
	.byte		N48   , Gs3 
	.byte	W48
@ 028   ----------------------------------------
	.byte		N24   , Dn3 
	.byte	W96
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_8_013
@ 030   ----------------------------------------
	.byte		N96   , Cs3 , v052
	.byte		N96   , Fn3 
	.byte	W96
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_8_015
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_8_016
@ 033   ----------------------------------------
	.byte		N96   , Ds3 , v052
	.byte		N96   , Fs3 
	.byte	W96
@ 034   ----------------------------------------
	.byte		        Cs3 
	.byte		N96   , Fn3 
	.byte	W96
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_8_019
@ 036   ----------------------------------------
	.byte		N30   , Ds3 , v052
	.byte	W30
	.byte		VOICE , 40
	.byte		N12   , Cs2 , v072
	.byte		N09   , Cs3 
	.byte	W12
	.byte		N12   , Ds2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte	GOTO
	 .word	mus_dont_ever_forget_8_B1
mus_dont_ever_forget_8_B2:
	.byte	FINE

@**************** Track 9 (Midi-Chn.9) ****************@

mus_dont_ever_forget_9:
	.byte		VOL   , 127*mus_dont_ever_forget_mvl/mxv
	.byte	KEYSH , mus_dont_ever_forget_key+0
mus_dont_ever_forget_9_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        40
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BENDR , 24
	.byte		BEND  , c_v+0
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
mus_dont_ever_forget_9_013:
	.byte		N96   , As2 , v052
	.byte		N96   , Ds3 
	.byte		N96   , Fs3 
	.byte	W96
	.byte	PEND
@ 014   ----------------------------------------
mus_dont_ever_forget_9_014:
	.byte		N96   , As2 , v056
	.byte		N96   , Cs3 
	.byte		N96   , Fn3 
	.byte		N96   , As3 , v048
	.byte	W96
	.byte	PEND
@ 015   ----------------------------------------
mus_dont_ever_forget_9_015:
	.byte		N48   , As2 , v056
	.byte		N48   , Ds3 
	.byte		N48   , Fs3 
	.byte		N48   , As3 , v048
	.byte	W48
	.byte		        As2 , v056
	.byte		N48   , Cs3 
	.byte		N48   , Fn3 
	.byte		N48   , Gs3 , v048
	.byte	W48
	.byte	PEND
@ 016   ----------------------------------------
mus_dont_ever_forget_9_016:
	.byte		N48   , As2 , v056
	.byte		N48   , Ds3 
	.byte		N48   , Fs3 
	.byte		N48   , As3 , v048
	.byte	W48
	.byte		N24   , Cs3 , v056
	.byte		N24   , Fs3 
	.byte		N24   , As3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , Fn3 
	.byte		N24   , Gs3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
mus_dont_ever_forget_9_017:
	.byte		N96   , As2 , v056
	.byte		N96   , Ds3 
	.byte		N96   , Fs3 
	.byte		N96   , As3 , v048
	.byte	W96
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_9_014
@ 019   ----------------------------------------
mus_dont_ever_forget_9_019:
	.byte		N48   , As2 , v056
	.byte		N48   , Ds3 
	.byte		N48   , Fs3 
	.byte		N48   , As3 , v048
	.byte	W48
	.byte		        Gs2 , v056
	.byte		N48   , Cs3 
	.byte		N48   , Fn3 
	.byte		N48   , Gs3 , v048
	.byte	W48
	.byte	PEND
@ 020   ----------------------------------------
	.byte		N30   , Fs2 , v056
	.byte		N30   , As2 
	.byte		N30   , Ds3 
	.byte		N30   , Fs3 , v048
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
	.byte	PATT
	 .word	mus_dont_ever_forget_9_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_9_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_9_015
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_9_016
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_9_017
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_9_014
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_9_019
@ 036   ----------------------------------------
	.byte		N30   , Fs2 , v056
	.byte		N30   , As2 
	.byte		N30   , Ds3 
	.byte		N30   , Fs3 , v048
	.byte	W54
	.byte	GOTO
	 .word	mus_dont_ever_forget_9_B1
mus_dont_ever_forget_9_B2:
	.byte	FINE

@**************** Track 10 (Midi-Chn.11) ****************@

mus_dont_ever_forget_10:
	.byte		VOL   , 127*mus_dont_ever_forget_mvl/mxv
	.byte	KEYSH , mus_dont_ever_forget_key+0
mus_dont_ever_forget_10_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BENDR , 24
	.byte		BEND  , c_v+0
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
mus_dont_ever_forget_10_013:
	.byte		N12   , Fn4 , v080
	.byte	W18
	.byte		        Ds4 
	.byte	W18
	.byte		        As4 
	.byte	W60
	.byte	PEND
@ 014   ----------------------------------------
mus_dont_ever_forget_10_014:
	.byte		N12   , Fn4 , v080
	.byte	W18
	.byte		        Ds4 
	.byte	W18
	.byte		        As3 
	.byte	W48
	.byte		        Cs4 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_dont_ever_forget_10_015:
	.byte		N12   , Ds4 , v080
	.byte	W18
	.byte		        As4 
	.byte	W18
	.byte		N12   
	.byte	W24
	.byte		N06   , Gs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Cs5 
	.byte	W06
	.byte		N12   , As4 
	.byte	W06
	.byte	PEND
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_10_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_10_014
@ 019   ----------------------------------------
mus_dont_ever_forget_10_019:
	.byte		N12   , Ds4 , v080
	.byte	W18
	.byte		        As4 
	.byte	W18
	.byte		N12   
	.byte	W24
	.byte		N06   , Gs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gs4 
	.byte	W06
	.byte		N12   , Fs4 
	.byte	W06
	.byte	PEND
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
	.byte	PATT
	 .word	mus_dont_ever_forget_10_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_10_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_10_015
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_10_013
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_10_014
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_10_019
@ 036   ----------------------------------------
	.byte	W54
	.byte	GOTO
	 .word	mus_dont_ever_forget_10_B1
mus_dont_ever_forget_10_B2:
	.byte	FINE

@**************** Track 11 (Midi-Chn.12) ****************@

mus_dont_ever_forget_11:
	.byte		VOL   , 127*mus_dont_ever_forget_mvl/mxv
	.byte	KEYSH , mus_dont_ever_forget_key+0
mus_dont_ever_forget_11_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        32
	.byte		        40
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BENDR , 24
	.byte		BEND  , c_v+0
	.byte		N96   , Bn1 , v080
	.byte	W96
@ 001   ----------------------------------------
	.byte		N84   , Cs2 
	.byte	W96
@ 002   ----------------------------------------
	.byte		N96   , En2 
	.byte	W96
@ 003   ----------------------------------------
	.byte		TIE   , Fs2 
	.byte	W96
@ 004   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
@ 005   ----------------------------------------
	.byte		VOICE , 40
	.byte		N42   , Bn1 , v096
	.byte	W42
	.byte		N54   
	.byte	W54
@ 006   ----------------------------------------
mus_dont_ever_forget_11_006:
	.byte		N42   , As1 , v096
	.byte	W42
	.byte		N54   
	.byte	W54
	.byte	PEND
@ 007   ----------------------------------------
	.byte		N48   , Bn1 
	.byte	W48
	.byte		        Cs2 
	.byte	W48
@ 008   ----------------------------------------
	.byte		N42   , Fs1 , v100
	.byte	W42
	.byte		N24   
	.byte	W24
	.byte		N30   , As1 , v096
	.byte	W30
@ 009   ----------------------------------------
mus_dont_ever_forget_11_009:
	.byte		N42   , Bn1 , v096
	.byte	W42
	.byte		N54   
	.byte	W54
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_11_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_11_009
@ 012   ----------------------------------------
	.byte		N18   , Cs2 , v096
	.byte	W96
@ 013   ----------------------------------------
mus_dont_ever_forget_11_013:
	.byte		VOICE , 32
	.byte		N96   , Bn1 , v127
	.byte	W96
	.byte	PEND
@ 014   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 015   ----------------------------------------
mus_dont_ever_forget_11_015:
	.byte		N48   , Bn1 , v127
	.byte	W48
	.byte		        Cs2 
	.byte	W48
	.byte	PEND
@ 016   ----------------------------------------
mus_dont_ever_forget_11_016:
	.byte		N42   , Fs1 , v127
	.byte	W42
	.byte		N24   
	.byte	W24
	.byte		N30   , As1 
	.byte	W30
	.byte	PEND
@ 017   ----------------------------------------
	.byte		N96   , Bn1 
	.byte	W96
@ 018   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_11_015
@ 020   ----------------------------------------
	.byte		N30   , Ds2 , v127
	.byte	W30
	.byte		N09   , Cs2 
	.byte	W12
	.byte		N12   , Ds2 
	.byte	W54
@ 021   ----------------------------------------
	.byte		VOICE , 40
	.byte		N24   , Bn1 , v112
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Cs2 , v116
	.byte	W24
	.byte		N24   
	.byte	W24
@ 022   ----------------------------------------
	.byte		        Ds2 , v108
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Cs2 , v112
	.byte	W24
	.byte		N24   
	.byte	W24
@ 023   ----------------------------------------
mus_dont_ever_forget_11_023:
	.byte		N24   , Bn1 , v112
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Cs2 , v116
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 024   ----------------------------------------
	.byte		        Ds2 , v108
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Fs1 , v127
	.byte	W24
	.byte		N24   
	.byte	W24
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_11_023
@ 026   ----------------------------------------
	.byte		N24   , Ds2 , v108
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        As1 , v112
	.byte	W24
	.byte		N24   
	.byte	W24
@ 027   ----------------------------------------
	.byte		        Gs1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 028   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_11_013
@ 030   ----------------------------------------
	.byte		N96   , As1 , v127
	.byte	W96
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_11_015
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_11_016
@ 033   ----------------------------------------
	.byte		N96   , Bn1 , v127
	.byte	W96
@ 034   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_11_015
@ 036   ----------------------------------------
	.byte		N30   , Ds2 , v127
	.byte	W30
	.byte		N09   , Cs2 
	.byte	W12
	.byte		N12   , Ds2 
	.byte	W12
	.byte	GOTO
	 .word	mus_dont_ever_forget_11_B1
mus_dont_ever_forget_11_B2:
	.byte	FINE

@**************** Track 12 (Midi-Chn.13) ****************@

mus_dont_ever_forget_12:
	.byte		VOL   , 127*mus_dont_ever_forget_mvl/mxv
	.byte	KEYSH , mus_dont_ever_forget_key+0
mus_dont_ever_forget_12_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        32
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BENDR , 24
	.byte		BEND  , c_v+0
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
	.byte		VOICE , 32
	.byte		N42   , Bn1 , v127
	.byte	W42
	.byte		N54   
	.byte	W54
@ 006   ----------------------------------------
mus_dont_ever_forget_12_006:
	.byte		N42   , As1 , v127
	.byte	W42
	.byte		N54   
	.byte	W54
	.byte	PEND
@ 007   ----------------------------------------
	.byte		N48   , Bn1 
	.byte	W48
	.byte		        Cs2 
	.byte	W48
@ 008   ----------------------------------------
	.byte		N42   , Fs1 
	.byte	W42
	.byte		N24   
	.byte	W24
	.byte		N30   , As1 
	.byte	W30
@ 009   ----------------------------------------
mus_dont_ever_forget_12_009:
	.byte		N42   , Bn1 , v127
	.byte	W42
	.byte		N54   
	.byte	W54
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_12_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_12_009
@ 012   ----------------------------------------
	.byte		N18   , Cs2 , v127
	.byte	W96
@ 013   ----------------------------------------
mus_dont_ever_forget_12_013:
	.byte		VOICE , 32
	.byte		N96   , Bn1 , v100
	.byte	W96
	.byte	PEND
@ 014   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 015   ----------------------------------------
mus_dont_ever_forget_12_015:
	.byte		N48   , Bn1 , v100
	.byte	W48
	.byte		        Cs2 
	.byte	W48
	.byte	PEND
@ 016   ----------------------------------------
mus_dont_ever_forget_12_016:
	.byte		N42   , Fs1 , v100
	.byte	W42
	.byte		N24   
	.byte	W24
	.byte		N30   , As1 
	.byte	W30
	.byte	PEND
@ 017   ----------------------------------------
	.byte		N96   , Bn1 
	.byte	W96
@ 018   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_12_015
@ 020   ----------------------------------------
	.byte		N30   , Ds2 , v100
	.byte	W30
	.byte		N09   , Cs2 , v120
	.byte	W12
	.byte		N12   , Ds2 
	.byte	W54
@ 021   ----------------------------------------
	.byte		VOICE , 32
	.byte		N24   , Bn1 , v127
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 022   ----------------------------------------
	.byte		        Ds2 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 023   ----------------------------------------
mus_dont_ever_forget_12_023:
	.byte		N24   , Bn1 , v127
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 024   ----------------------------------------
	.byte		        Ds2 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Fs1 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_12_023
@ 026   ----------------------------------------
	.byte		N24   , Ds2 , v127
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        As1 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 027   ----------------------------------------
	.byte		        Gs1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 028   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_12_013
@ 030   ----------------------------------------
	.byte		N96   , As1 , v100
	.byte	W96
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_12_015
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_12_016
@ 033   ----------------------------------------
	.byte		N96   , Bn1 , v100
	.byte	W96
@ 034   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_12_015
@ 036   ----------------------------------------
	.byte		N30   , Ds2 , v100
	.byte	W30
	.byte		N09   , Cs2 , v120
	.byte	W12
	.byte		N12   , Ds2 
	.byte	W12
	.byte	GOTO
	 .word	mus_dont_ever_forget_12_B1
mus_dont_ever_forget_12_B2:
	.byte	FINE

@**************** Track 13 (Midi-Chn.14) ****************@

mus_dont_ever_forget_13:
	.byte		VOL   , 127*mus_dont_ever_forget_mvl/mxv
	.byte	KEYSH , mus_dont_ever_forget_key+0
mus_dont_ever_forget_13_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        32
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BENDR , 24
	.byte		BEND  , c_v+0
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
	.byte		VOICE , 32
	.byte		N42   , Bn1 , v032
	.byte	W42
	.byte		N54   
	.byte	W54
@ 006   ----------------------------------------
mus_dont_ever_forget_13_006:
	.byte		N42   , As1 , v032
	.byte	W42
	.byte		N54   
	.byte	W54
	.byte	PEND
@ 007   ----------------------------------------
	.byte		N48   , Bn1 
	.byte	W48
	.byte		        Cs2 
	.byte	W48
@ 008   ----------------------------------------
	.byte		N42   , Fs1 , v080
	.byte	W42
	.byte		N24   
	.byte	W24
	.byte		N30   , As1 , v032
	.byte	W30
@ 009   ----------------------------------------
mus_dont_ever_forget_13_009:
	.byte		N42   , Bn1 , v032
	.byte	W42
	.byte		N54   
	.byte	W54
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_13_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_13_009
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
mus_dont_ever_forget_13_021:
	.byte		N24   , Bn1 , v040
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Cs2 , v052
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
	.byte		        Ds2 , v036
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Cs2 , v052
	.byte	W24
	.byte		N24   
	.byte	W24
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_13_021
@ 024   ----------------------------------------
	.byte		N24   , Ds2 , v036
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Fs1 , v076
	.byte	W24
	.byte		N24   
	.byte	W24
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_dont_ever_forget_13_021
@ 026   ----------------------------------------
	.byte		N24   , Ds2 , v036
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        As1 , v040
	.byte	W24
	.byte		N24   
	.byte	W24
@ 027   ----------------------------------------
	.byte		        Gs1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		N24   
	.byte	W24
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
	.byte	W54
	.byte	GOTO
	 .word	mus_dont_ever_forget_13_B1
mus_dont_ever_forget_13_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_dont_ever_forget:
	.byte	13	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_dont_ever_forget_pri	@ Priority
	.byte	mus_dont_ever_forget_rev	@ Reverb.

	.word	mus_dont_ever_forget_grp

	.word	mus_dont_ever_forget_1
	.word	mus_dont_ever_forget_2
	.word	mus_dont_ever_forget_3
	.word	mus_dont_ever_forget_4
	.word	mus_dont_ever_forget_5
	.word	mus_dont_ever_forget_6
	.word	mus_dont_ever_forget_7
	.word	mus_dont_ever_forget_8
	.word	mus_dont_ever_forget_9
	.word	mus_dont_ever_forget_10
	.word	mus_dont_ever_forget_11
	.word	mus_dont_ever_forget_12
	.word	mus_dont_ever_forget_13

	.end
