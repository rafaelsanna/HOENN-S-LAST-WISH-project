	.include "MPlayDef.s"

	.equ	mus_umbrella_rihanna_grp, voicegroup_pink_and_white
	.equ	mus_umbrella_rihanna_pri, 0
	.equ	mus_umbrella_rihanna_rev, reverb_set+12
	.equ	mus_umbrella_rihanna_mvl, 84
	.equ	mus_umbrella_rihanna_key, 0
	.equ	mus_umbrella_rihanna_tbs, 1
	.equ	mus_umbrella_rihanna_exg, 1
	.equ	mus_umbrella_rihanna_cmp, 1

	.section .rodata
	.global	mus_umbrella_rihanna
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_umbrella_rihanna_1:
	.byte		VOL   , 127*mus_umbrella_rihanna_mvl/mxv
	.byte	KEYSH , mus_umbrella_rihanna_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 87*mus_umbrella_rihanna_tbs/2
	.byte		VOICE , 5
	.byte		N24   , Cs5 , v040
	.byte		N12   , Fn5 , v036
	.byte	W06
	.byte	W06
	.byte		N06   , Cs4 , v032
	.byte		N12   , Gs5 , v024
	.byte	W06
	.byte	W06
	.byte		        As4 , v040
	.byte		N06   , Cs5 , v036
	.byte	W12
	.byte		N12   , Cs4 , v040
	.byte		N12   , Cn5 
	.byte		N12   , Ds5 , v020
	.byte	W11
	.byte		        Ds4 , v040
	.byte	W01
	.byte		        Fs2 
	.byte		N12   , Fn5 , v032
	.byte	W11
	.byte		N06   , Fn4 , v040
	.byte		N01   , Fn5 , v020
	.byte	W06
	.byte		N30   , Fn4 , v040
	.byte	W07
	.byte		N12   , Fn5 , v032
	.byte	W11
	.byte		N01   , Fn5 , v024
	.byte	W12
	.byte		N12   , Fn5 , v036
	.byte	W01
@ 001   ----------------------------------------
	.byte	W06
	.byte		        Cs4 , v040
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N06   , Cs4 , v040
	.byte	W11
	.byte		        Cs4 , v044
	.byte		N12   , Fn5 , v036
	.byte	W06
	.byte		N06   , Cs4 , v040
	.byte	W06
	.byte		N12   
	.byte	W01
	.byte		N06   , Gs5 , v020
	.byte	W11
	.byte		N12   , Ds4 , v040
	.byte	W01
	.byte		        Gs2 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		N06   , Fn4 , v040
	.byte	W01
	.byte		        Gs5 , v020
	.byte	W05
	.byte		N36   , Fn4 , v040
	.byte	W07
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N06   , Gs5 , v024
	.byte	W12
@ 002   ----------------------------------------
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		        Cs4 , v040
	.byte	W01
	.byte		        Gs5 , v024
	.byte	W12
	.byte		        Cs4 , v040
	.byte		N06   , Fn5 , v036
	.byte	W12
	.byte		        Cs4 , v040
	.byte		N12   , Gs5 , v020
	.byte	W11
	.byte		        Ds4 , v040
	.byte	W01
	.byte		        Fn2 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		N06   , Fn4 , v040
	.byte		N01   , Fn5 , v024
	.byte	W07
	.byte		N18   , Fn4 , v040
	.byte	W06
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N24   , Ds4 , v040
	.byte	W11
	.byte		N12   , Fn5 , v032
	.byte	W01
@ 003   ----------------------------------------
	.byte	W11
	.byte		        Cs4 , v040
	.byte		N01   , Fn5 , v020
	.byte	W12
	.byte		N12   , Fn5 , v036
	.byte	W01
	.byte		        Cs4 , v040
	.byte	W12
	.byte		N12   
	.byte		N06   , Gs5 , v020
	.byte	W12
	.byte		N12   , As2 , v040
	.byte		N12   , Ds4 , v044
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N06   , Cs4 , v040
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		        Cs4 , v040
	.byte	W06
	.byte		N30   , As3 , v044
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N06   , Gs5 , v020
	.byte	W12
@ 004   ----------------------------------------
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		        Cs4 , v040
	.byte		N12   , Gs5 , v024
	.byte	W12
	.byte		        As3 , v040
	.byte		N06   , Fn5 , v036
	.byte	W12
	.byte		N12   , As3 , v040
	.byte		N12   , Gs5 , v024
	.byte	W11
	.byte		        Ds4 , v040
	.byte	W01
	.byte		        Fs2 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N06   , Fn4 , v040
	.byte	W06
	.byte		N36   
	.byte	W06
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W12
	.byte		N12   , Fn5 , v036
	.byte	W01
@ 005   ----------------------------------------
	.byte	W11
	.byte		        Cs4 , v044
	.byte		N01   , Fn5 , v020
	.byte	W12
	.byte		N12   , Cs4 , v040
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		        Cs4 , v040
	.byte	W01
	.byte		N06   , Gs5 , v020
	.byte	W11
	.byte		N12   , Ds4 , v040
	.byte	W01
	.byte		        Gs2 
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N06   , Fn4 , v040
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		N30   , Fn4 , v040
	.byte	W06
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N06   , Gs5 , v024
	.byte	W12
@ 006   ----------------------------------------
	.byte		N12   , Fn5 , v036
	.byte	W06
	.byte		N06   , Cs4 , v040
	.byte	W06
	.byte		N12   
	.byte		N12   , Gs5 , v020
	.byte	W12
	.byte		        Cs4 , v040
	.byte		N06   , Fn5 , v036
	.byte	W12
	.byte		        Cs4 , v040
	.byte		N12   , Gs5 , v024
	.byte	W12
	.byte		        Fn2 , v040
	.byte		N12   , Ds4 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N06   , Cs4 , v040
	.byte	W06
	.byte		N30   , Cn4 , v044
	.byte	W06
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W12
	.byte		N12   , Fn5 , v036
	.byte	W01
@ 007   ----------------------------------------
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Cn4 , v040
	.byte	W11
	.byte		        Fn5 , v036
	.byte	W01
	.byte		        Cn4 , v040
	.byte		N12   , As4 , v036
	.byte		N12   , As4 , v040
	.byte	W09
	.byte		N08   , Gs5 , v036
	.byte		N08   , Gs5 , v040
	.byte	W03
	.byte		N12   , Cn4 
	.byte		N06   , Gs5 , v020
	.byte		N12   , As5 , v036
	.byte		N12   , As5 , v044
	.byte	W12
	.byte		        As2 , v040
	.byte		N06   , Cs4 
	.byte		N12   , Fn5 , v032
	.byte	W05
	.byte		N18   , Ds4 , v040
	.byte	W07
	.byte		N06   , Gs5 , v020
	.byte	W11
	.byte		N36   , As3 , v040
	.byte	W01
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N06   , Gs5 , v020
	.byte	W12
@ 008   ----------------------------------------
	.byte		N12   , Fn5 , v032
	.byte	W12
	.byte		        Gs5 , v024
	.byte	W12
	.byte		N06   , Gs4 , v040
	.byte		N06   , Fn5 , v036
	.byte	W12
	.byte		N12   , Gs4 , v040
	.byte		N12   , Gs5 , v024
	.byte	W12
	.byte		N96   , Fs2 , v040
	.byte		N18   , Fs4 
	.byte		N12   , Cs5 , v044
	.byte		N12   , Fn5 , v032
	.byte	W11
	.byte		        Ds5 , v040
	.byte		N01   , Fn5 , v024
	.byte	W13
	.byte		N06   , Fs4 , v040
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W06
	.byte		N06   , Fs4 
	.byte	W05
	.byte		        Cs5 
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Fs4 , v044
	.byte	W05
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W01
@ 009   ----------------------------------------
	.byte		        Fs4 , v044
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Fs4 , v040
	.byte	W11
	.byte		        Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W01
	.byte		        Fs4 , v044
	.byte	W11
	.byte		        Ds5 , v040
	.byte	W01
	.byte		N06   , Gs4 
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W05
	.byte		N96   , Cs2 
	.byte		N12   , Cs5 
	.byte	W01
	.byte		N18   , Fn4 
	.byte		N12   , Fn5 , v032
	.byte	W11
	.byte		        Ds5 , v040
	.byte	W01
	.byte		N06   , Gs5 , v024
	.byte	W11
	.byte		N12   , Fn4 , v044
	.byte		N12   , Fn5 , v040
	.byte	W01
	.byte		N11   , Fn5 , v036
	.byte	W12
	.byte		N12   , Fn4 , v040
	.byte		N06   , Cs5 
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		        Ds5 , v040
	.byte	W06
@ 010   ----------------------------------------
	.byte		N12   , Fn4 
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v044
	.byte	W12
	.byte		N06   , Fn4 , v040
	.byte		N12   , Gs5 , v024
	.byte	W12
	.byte		        Fn4 , v044
	.byte		N12   , Cs5 , v040
	.byte		N06   , Fn5 , v036
	.byte	W11
	.byte		        Fs4 , v040
	.byte	W01
	.byte		N12   , Ds5 
	.byte		N12   , Gs5 , v020
	.byte	W05
	.byte		N06   , Fn4 , v040
	.byte	W07
	.byte		N96   , Gs2 
	.byte		N18   , Ds4 
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N12   , Cn5 , v040
	.byte	W12
	.byte		N06   , Ds4 
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v032
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Ds4 , v040
	.byte		N06   , As4 
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W05
	.byte		N12   , Fn5 , v032
	.byte	W01
@ 011   ----------------------------------------
	.byte		        Ds4 , v040
	.byte		N24   , Cs5 
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N06   , Ds4 , v040
	.byte	W11
	.byte		N12   , Fn5 , v032
	.byte	W01
	.byte		        Fn4 , v040
	.byte		N12   , As4 
	.byte	W11
	.byte		N06   , Cs4 
	.byte	W01
	.byte		N12   , Cn5 
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		N18   , Ds4 , v040
	.byte	W05
	.byte		N96   , As2 
	.byte	W01
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		N06   , Cs4 , v040
	.byte	W01
	.byte		N12   , Cn5 
	.byte		N06   , Gs5 , v024
	.byte	W06
	.byte		        As3 , v040
	.byte	W06
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N06   , Cs4 , v040
	.byte		N06   , As4 
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		        As3 , v040
	.byte		N06   , Cn5 
	.byte	W06
@ 012   ----------------------------------------
	.byte		        Cs4 
	.byte		N24   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W06
	.byte		N06   , Cs4 , v040
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs5 , v020
	.byte	W12
	.byte		        Ds4 , v040
	.byte		N12   , As4 
	.byte		N06   , Fn5 , v036
	.byte	W12
	.byte		        Cs4 , v044
	.byte		N12   , Cn5 , v040
	.byte		N12   , Gs5 , v024
	.byte	W06
	.byte		N06   , Cs4 , v040
	.byte	W06
	.byte		N96   , Fs2 
	.byte		N18   , As3 
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		        Ds5 , v040
	.byte		N01   , Fn5 , v020
	.byte	W13
	.byte		N12   , Fs4 , v044
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W11
	.byte		N06   , Cs5 
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N06   , Fs4 , v040
	.byte	W05
	.byte		        Ds5 
	.byte	W01
	.byte		        Fs4 
	.byte	W05
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W01
@ 013   ----------------------------------------
	.byte		        Fs4 
	.byte	W11
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N12   , Fs4 , v040
	.byte	W11
	.byte		        Cs5 
	.byte		N12   , Fn5 , v032
	.byte	W01
	.byte		        Fs4 , v040
	.byte	W11
	.byte		        Ds5 
	.byte	W01
	.byte		N06   , Gs4 
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W05
	.byte		N96   , Cs2 
	.byte		N12   , Cs5 
	.byte	W01
	.byte		N18   , Fn4 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		        Ds5 , v040
	.byte	W01
	.byte		N06   , Gs5 , v020
	.byte	W11
	.byte		N12   , Fn5 , v040
	.byte	W01
	.byte		        Fn4 
	.byte		N11   , Fn5 , v032
	.byte	W12
	.byte		N12   , Fn4 , v040
	.byte		N06   , Cs5 , v044
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		        Ds5 , v040
	.byte	W06
@ 014   ----------------------------------------
	.byte		N12   , Fn4 
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W12
	.byte		N06   , Fn4 , v044
	.byte		N12   , Gs5 , v024
	.byte	W12
	.byte		N06   , Fn4 , v040
	.byte		N12   , Cs5 
	.byte		N06   , Fn5 , v036
	.byte	W12
	.byte		        Fs4 , v040
	.byte		N12   , Ds5 , v044
	.byte		N12   , Gs5 , v024
	.byte	W05
	.byte		N06   , Fn4 , v040
	.byte	W07
	.byte		N96   , Gs2 
	.byte		N18   , Ds4 
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N12   , Cn5 , v040
	.byte	W11
	.byte		N06   , Ds4 , v044
	.byte	W01
	.byte		N12   , Cs5 , v040
	.byte		N12   , Fn5 , v036
	.byte	W05
	.byte		N06   , Cs4 , v040
	.byte	W06
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N06   , Ds4 , v040
	.byte		N06   , As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W05
	.byte		N12   , Fn5 , v036
	.byte	W01
@ 015   ----------------------------------------
	.byte		N06   , Ds4 , v044
	.byte		N24   , Cs5 , v040
	.byte	W06
	.byte		N06   , Cs4 
	.byte	W05
	.byte		        Ds4 
	.byte		N01   , Fn5 , v024
	.byte	W12
	.byte		N12   , Fn4 , v040
	.byte		N12   , Fn5 , v036
	.byte	W01
	.byte		        As4 , v040
	.byte	W11
	.byte		N06   , Cs4 
	.byte	W01
	.byte		N12   , Cn5 
	.byte		N06   , Gs5 , v024
	.byte	W06
	.byte		        Cs4 , v040
	.byte	W05
	.byte		N96   , As2 
	.byte	W01
	.byte		N12   , Ds4 
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		        Cn5 , v040
	.byte		N06   , Gs5 , v020
	.byte	W11
	.byte		        Cs4 , v040
	.byte	W01
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W06
	.byte		N06   , As3 , v040
	.byte	W05
	.byte		N12   , Cs4 
	.byte	W01
	.byte		N06   , As4 
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W06
@ 016   ----------------------------------------
	.byte		        Cs4 
	.byte		N24   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W06
	.byte		N06   , As3 , v040
	.byte	W06
	.byte		        Cs4 
	.byte		N12   , Gs5 , v020
	.byte	W12
	.byte		        Ds4 , v040
	.byte		N12   , As4 
	.byte		N06   , Fn5 , v032
	.byte	W11
	.byte		        Cs4 , v040
	.byte	W01
	.byte		N12   , Cn5 
	.byte		N12   , Gs5 , v024
	.byte	W05
	.byte		N06   , Cs4 , v040
	.byte	W07
	.byte		N12   , Fs2 
	.byte		N18   , As3 
	.byte		N12   , Cs5 , v044
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		        Ds5 , v044
	.byte		N01   , Fn5 , v020
	.byte	W13
	.byte		N06   , Cs4 , v040
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W06
	.byte		N18   , As3 
	.byte	W05
	.byte		N06   , Cs5 
	.byte		N01   , Fn5 , v020
	.byte	W06
	.byte		N06   , Ds5 , v040
	.byte	W06
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W01
@ 017   ----------------------------------------
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , As3 
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W12
	.byte		N24   , Cs4 , v040
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		        Ds5 , v040
	.byte	W01
	.byte		N06   , Gs5 , v020
	.byte	W11
	.byte		N24   , Cs4 , v040
	.byte		N12   , Cs5 
	.byte	W01
	.byte		        Gs2 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		        Ds5 , v040
	.byte	W01
	.byte		N06   , Gs5 , v024
	.byte	W11
	.byte		N12   , Fn5 , v040
	.byte	W01
	.byte		N18   , Cs4 
	.byte		N11   , Fn5 , v036
	.byte	W12
	.byte		N06   , Cs5 , v040
	.byte		N06   , Gs5 , v024
	.byte	W06
	.byte		        Ds5 , v040
	.byte	W05
	.byte		        Cs4 
	.byte	W01
@ 018   ----------------------------------------
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W05
	.byte		N06   , Cs4 
	.byte	W07
	.byte		N06   
	.byte		N12   , Gs5 , v024
	.byte	W12
	.byte		        Ds4 , v040
	.byte		N12   , Cs5 
	.byte		N06   , Fn5 , v036
	.byte	W12
	.byte		N05   , Cs4 , v040
	.byte		N12   , Ds5 
	.byte		N12   , Gs5 , v024
	.byte	W05
	.byte		N36   , Cs4 , v044
	.byte	W07
	.byte		N12   , Fn2 , v040
	.byte		N18   , Cn4 
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v032
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Cn5 , v040
	.byte	W12
	.byte		N06   , Cs4 
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N06   , As4 , v040
	.byte	W06
	.byte		        Cn5 
	.byte	W05
	.byte		N12   , Fn5 , v036
	.byte	W01
@ 019   ----------------------------------------
	.byte		N06   , Cs4 , v040
	.byte		N24   , Cs5 
	.byte	W05
	.byte		N12   , Cn4 
	.byte	W06
	.byte		N01   , Fn5 , v020
	.byte	W12
	.byte		N12   , Fn5 , v036
	.byte	W01
	.byte		N18   , Cs4 , v040
	.byte		N12   , As4 , v044
	.byte	W12
	.byte		        Cn5 , v040
	.byte		N06   , Gs5 , v020
	.byte	W11
	.byte		N18   , Cs4 , v044
	.byte	W01
	.byte		N12   , As2 , v040
	.byte		N12   , As4 , v044
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		        Cn5 , v040
	.byte		N06   , Gs5 , v020
	.byte	W12
	.byte		N18   , Cs4 , v040
	.byte		N12   , Cs5 , v044
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N06   , As4 , v040
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W05
	.byte		        Cs4 
	.byte	W01
@ 020   ----------------------------------------
	.byte		N24   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W05
	.byte		N06   , Cs4 , v040
	.byte	W07
	.byte		N06   
	.byte		N12   , Gs5 , v020
	.byte	W11
	.byte		        Ds4 , v040
	.byte	W01
	.byte		        As4 
	.byte		N06   , Fn5 , v036
	.byte	W11
	.byte		        Cs4 , v040
	.byte	W01
	.byte		N12   , Cn5 
	.byte		N12   , Gs5 , v020
	.byte	W05
	.byte		N06   , Cs4 , v040
	.byte	W07
	.byte		N12   , Fs2 
	.byte		N18   , As3 
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		        Ds5 , v040
	.byte		N01   , Fn5 , v024
	.byte	W13
	.byte		N06   , Cs4 , v040
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v044
	.byte	W06
	.byte		        As3 , v040
	.byte	W05
	.byte		N06   , Cs5 
	.byte		N01   , Fn5 , v020
	.byte	W06
	.byte		N06   , Ds5 , v040
	.byte	W06
	.byte		N12   , Fn5 , v032
	.byte		N12   , Fn5 , v040
	.byte	W01
@ 021   ----------------------------------------
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , As3 
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W12
	.byte		N18   , Cs4 , v040
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		        Ds5 , v040
	.byte	W01
	.byte		N06   , Gs5 , v020
	.byte	W11
	.byte		N12   , Cs5 , v040
	.byte	W01
	.byte		        Gs2 
	.byte		N18   , Cs4 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		        Ds5 , v040
	.byte	W01
	.byte		N06   , Gs5 , v020
	.byte	W11
	.byte		N18   , Cn4 , v040
	.byte		N12   , Fn5 
	.byte	W01
	.byte		N11   , Fn5 , v036
	.byte	W12
	.byte		N06   , Cs5 , v040
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		        Ds5 , v040
	.byte	W05
	.byte		        Cs4 
	.byte	W01
@ 022   ----------------------------------------
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W05
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N06   
	.byte	W01
	.byte		N12   , Gs5 , v020
	.byte	W12
	.byte		N06   , Ds4 , v040
	.byte		N12   , Cs5 
	.byte		N06   , Fn5 , v036
	.byte	W11
	.byte		        Cs4 , v040
	.byte	W01
	.byte		N12   , Ds5 
	.byte		N12   , Gs5 , v020
	.byte	W05
	.byte		N06   , Cs4 , v044
	.byte	W06
	.byte		N18   , Cn4 , v040
	.byte	W01
	.byte		N12   , Fn2 
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v032
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Cn5 , v040
	.byte	W11
	.byte		N06   , Cs4 , v044
	.byte	W01
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N06   , As4 , v040
	.byte	W06
	.byte		        Cn5 
	.byte	W05
	.byte		N12   , Fn5 , v036
	.byte	W01
@ 023   ----------------------------------------
	.byte		N06   , Cs4 , v040
	.byte		N24   , Cs5 
	.byte	W05
	.byte		N12   , Cn4 
	.byte	W06
	.byte		N01   , Fn5 , v020
	.byte	W12
	.byte		N18   , Cs4 , v040
	.byte		N12   , Fn5 , v036
	.byte	W01
	.byte		        As4 , v040
	.byte	W12
	.byte		        Cn5 
	.byte		N06   , Gs5 , v024
	.byte	W11
	.byte		N18   , Cn4 , v040
	.byte	W01
	.byte		N12   , As2 
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		        Cn5 , v044
	.byte		N06   , Gs5 , v024
	.byte	W11
	.byte		N18   , As3 , v040
	.byte	W01
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N06   , As4 , v040
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W05
	.byte		N18   , As3 , v044
	.byte	W01
@ 024   ----------------------------------------
	.byte		N24   , Cs5 , v040
	.byte		N12   , Fn5 , v032
	.byte	W12
	.byte		        Gs5 , v020
	.byte	W12
	.byte		        Cn4 , v040
	.byte		N12   , As4 
	.byte		N06   , Fn5 , v036
	.byte	W11
	.byte		N12   , Cs4 , v040
	.byte	W01
	.byte		        Cn5 
	.byte		N12   , Gs5 , v024
	.byte	W11
	.byte		        Ds4 , v040
	.byte	W01
	.byte		N06   , Fs2 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N06   , Fn4 , v040
	.byte	W06
	.byte		N36   
	.byte	W06
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		N01   , Fn5 , v024
	.byte	W12
	.byte		N12   , Fn5 , v036
	.byte	W01
@ 025   ----------------------------------------
	.byte	W11
	.byte		        Cs4 , v040
	.byte		N01   , Fn5 , v024
	.byte	W12
	.byte		N12   , Fn5 , v036
	.byte	W01
	.byte		N06   , Cs4 , v040
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte		N06   , Gs5 , v020
	.byte	W12
	.byte		        Gs2 , v040
	.byte		N06   , Ds4 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		N06   , Fn4 , v040
	.byte	W01
	.byte		        Gs5 , v020
	.byte	W05
	.byte		N30   , Fn4 , v040
	.byte	W07
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N06   , Gs5 , v024
	.byte	W12
@ 026   ----------------------------------------
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N06   , Cs4 , v040
	.byte		N12   , Gs5 , v020
	.byte	W12
	.byte		N06   , Cs4 , v044
	.byte		N06   , Fn5 , v036
	.byte	W06
	.byte		        Cs4 , v040
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs5 , v024
	.byte	W11
	.byte		        Ds4 , v044
	.byte	W01
	.byte		N06   , Fn2 , v040
	.byte		N12   , Fn5 , v032
	.byte	W11
	.byte		N06   , Cn4 , v040
	.byte		N01   , Fn5 , v020
	.byte	W06
	.byte		N30   , Cn4 , v040
	.byte	W07
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W12
	.byte		N12   , Fn5 , v036
	.byte	W01
@ 027   ----------------------------------------
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N06   , Cn4 , v040
	.byte	W11
	.byte		N12   , Fn5 , v032
	.byte	W01
	.byte		N06   , Cn4 , v040
	.byte	W11
	.byte		N06   
	.byte	W01
	.byte		        Gs5 , v024
	.byte	W12
	.byte		        As2 , v040
	.byte		N12   , Cs4 
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N06   , As3 , v040
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		N36   , As3 , v040
	.byte	W06
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N06   , Gs5 , v024
	.byte	W12
@ 028   ----------------------------------------
	.byte		        As4 , v036
	.byte		N12   , Fn5 
	.byte	W11
	.byte		N06   , As2 , v040
	.byte	W01
	.byte		        Cs4 
	.byte		N06   , As4 , v036
	.byte		N12   , Gs5 , v024
	.byte	W06
	.byte		N06   , Cn3 , v040
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte		N06   , As4 , v036
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Cn3 , v040
	.byte	W06
	.byte		        As2 
	.byte		N06   , Cs4 
	.byte		N12   , Gs5 , v020
	.byte		N12   , As5 , v036
	.byte		N12   , As5 , v040
	.byte	W06
	.byte		N06   , Gs2 , v044
	.byte	W05
	.byte		        Ds4 , v040
	.byte	W01
	.byte		N12   , Fn5 , v036
	.byte	W05
	.byte		        Fn4 , v040
	.byte	W06
	.byte		N01   , Fn5 , v020
	.byte	W07
	.byte		N36   , Fn4 , v040
	.byte	W06
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		N01   , Fn5 , v024
	.byte	W12
	.byte		N12   , Fn5 , v036
	.byte	W01
@ 029   ----------------------------------------
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N06   , Cs4 , v040
	.byte	W06
	.byte		N06   
	.byte	W05
	.byte		N12   , Fn5 , v036
	.byte	W01
	.byte		        Cs4 , v040
	.byte	W12
	.byte		N06   
	.byte		N06   , Gs5 , v024
	.byte	W11
	.byte		N12   , Ds4 , v040
	.byte	W01
	.byte		        Gs2 , v044
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N48   , Fn4 , v040
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		N42   , Fn4 , v040
	.byte	W06
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N06   , Gs5 , v020
	.byte	W12
@ 030   ----------------------------------------
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		        Gs5 , v024
	.byte	W11
	.byte		N06   , Cs4 , v040
	.byte	W01
	.byte		        Fn5 , v036
	.byte	W11
	.byte		N12   , Cs4 , v040
	.byte	W01
	.byte		        Gs5 , v024
	.byte		N12   , As5 , v036
	.byte		N12   , As5 , v040
	.byte	W11
	.byte		        Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W01
	.byte		        Fn2 
	.byte		N12   , Ds4 
	.byte		N11   , Fn5 , v036
	.byte	W11
	.byte		N06   , Cn4 , v040
	.byte		N01   , Fn5 , v024
	.byte	W07
	.byte		N42   , Cn4 , v044
	.byte	W06
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W12
	.byte		N12   , Fn5 , v036
	.byte	W01
@ 031   ----------------------------------------
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W07
	.byte		N12   , Cn4 , v040
	.byte	W05
	.byte		        Fn5 , v032
	.byte	W01
	.byte		N06   , Cn4 , v040
	.byte	W06
	.byte		N06   
	.byte	W05
	.byte		N01   
	.byte	W01
	.byte		N06   , Gs5 , v020
	.byte	W07
	.byte		        Fn2 , v040
	.byte	W04
	.byte		N12   , Cs4 
	.byte	W01
	.byte		N18   , As2 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		N24   , Ds4 , v040
	.byte	W01
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		        Fn4 , v040
	.byte	W01
	.byte		N18   , Cn3 
	.byte	W05
	.byte		N12   , Fn5 , v036
	.byte	W05
	.byte		N06   , Ds4 , v040
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W01
	.byte		N06   , Gs5 , v024
	.byte	W01
	.byte		N18   , Cs3 , v040
	.byte	W10
	.byte		N24   , As3 
	.byte	W01
@ 032   ----------------------------------------
	.byte		N12   , Fn5 , v032
	.byte	W10
	.byte		N36   , Fn3 , v040
	.byte	W02
	.byte		N12   , Gs5 , v020
	.byte	W11
	.byte		N06   , Gs4 , v040
	.byte	W01
	.byte		        Fn5 , v036
	.byte	W11
	.byte		N12   , Gs4 , v040
	.byte	W01
	.byte		        Gs5 , v020
	.byte	W12
	.byte		N96   , Fs2 , v040
	.byte		N72   , Fs3 
	.byte		N72   
	.byte		N18   , Fs4 , v044
	.byte		N12   , Cs5 , v040
	.byte	W11
	.byte		        Ds5 
	.byte	W13
	.byte		N06   , Fs4 
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W06
	.byte		N06   , Fs4 
	.byte	W05
	.byte		        Cs5 
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Fs4 , v044
	.byte	W05
	.byte		N06   , Ds5 , v040
	.byte	W06
	.byte		N12   , Fn5 , v032
	.byte		N12   , Fn5 , v040
	.byte	W01
@ 033   ----------------------------------------
	.byte		        Fs4 
	.byte	W11
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N12   , Fs4 , v040
	.byte	W11
	.byte		        Cs5 
	.byte		N12   , Fn5 , v032
	.byte	W01
	.byte		N24   , Fs3 , v040
	.byte		N12   , Cs4 , v032
	.byte		N12   , Fs4 , v040
	.byte	W11
	.byte		        Ds5 
	.byte	W01
	.byte		N06   , Fn4 , v036
	.byte		N06   , Gs4 , v040
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		        Fn4 , v024
	.byte		N06   , Gs4 , v040
	.byte	W05
	.byte		N90   , Cs3 
	.byte		N12   , Cs5 
	.byte		N12   
	.byte	W01
	.byte		N90   , Cs3 
	.byte		N18   , Cs4 , v032
	.byte		N18   , Fn4 , v040
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		        Ds5 , v040
	.byte	W01
	.byte		N06   , Gs5 , v020
	.byte	W11
	.byte		N12   , Fn4 , v040
	.byte		N12   , Fn5 
	.byte	W01
	.byte		N11   , Fn5 , v036
	.byte	W12
	.byte		N12   , Fn4 , v040
	.byte		N06   , Cs5 
	.byte		N06   , Gs5 , v024
	.byte	W06
	.byte		        Ds5 , v040
	.byte	W06
@ 034   ----------------------------------------
	.byte		N12   , Fn4 
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W12
	.byte		N06   , Fn4 
	.byte		N12   , Gs5 , v020
	.byte	W12
	.byte		        Cs4 , v028
	.byte		N12   , Fn4 , v040
	.byte		N12   , Cs5 
	.byte		N06   , Fn5 , v036
	.byte	W11
	.byte		N01   , Cs4 , v028
	.byte		N06   , Fs4 , v044
	.byte	W01
	.byte		N12   , Ds5 , v040
	.byte		N12   , Gs5 , v024
	.byte	W05
	.byte		N06   , Cs4 , v028
	.byte		N06   , Fn4 , v040
	.byte	W07
	.byte		N96   , Gs2 , v044
	.byte		N96   , Gs3 , v040
	.byte		N96   
	.byte		N18   , Cn4 , v028
	.byte		N18   , Ds4 , v040
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v036
	.byte		N90   , Gs5 , v040
	.byte	W11
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N12   , Cn5 , v040
	.byte	W12
	.byte		N06   , Ds4 
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N12   , Ds4 , v040
	.byte		N06   , As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W05
	.byte		N12   , Fn5 , v036
	.byte	W01
@ 035   ----------------------------------------
	.byte		        Ds4 , v040
	.byte		N24   , Cs5 
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N06   , Ds4 , v040
	.byte	W11
	.byte		N12   , Fn5 , v036
	.byte	W01
	.byte		        Fn4 , v040
	.byte		N12   , As4 
	.byte	W11
	.byte		N06   , Cs4 
	.byte	W01
	.byte		N12   , Cn5 
	.byte		N06   , Gs5 , v024
	.byte	W06
	.byte		N18   , Ds4 , v044
	.byte	W05
	.byte		N96   , As2 , v040
	.byte		N24   , As3 
	.byte		N24   
	.byte		N96   , As5 
	.byte	W01
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v032
	.byte	W11
	.byte		N06   , Cs4 , v040
	.byte	W01
	.byte		N12   , Cn5 
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		        As3 , v040
	.byte	W06
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N06   , Cs4 , v040
	.byte		N06   , As4 
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		        As3 , v040
	.byte		N06   , Cn5 
	.byte	W06
@ 036   ----------------------------------------
	.byte		        Cs4 
	.byte		N24   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W06
	.byte		N06   , Cs4 , v040
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs5 , v020
	.byte	W12
	.byte		        Ds4 , v040
	.byte		N12   , As4 
	.byte		N06   , Fn5 , v036
	.byte	W12
	.byte		        Cs4 , v040
	.byte		N12   , Cn5 
	.byte		N12   , Gs5 , v020
	.byte	W06
	.byte		N06   , Cs4 , v040
	.byte	W06
	.byte		N96   , Fs2 
	.byte		N72   , Fs3 
	.byte		N72   
	.byte		N18   , As3 
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte		N96   , Fs5 , v040
	.byte	W11
	.byte		N12   , Ds5 
	.byte		N01   , Fn5 , v020
	.byte	W13
	.byte		N12   , Fs4 , v040
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W11
	.byte		N06   , Cs5 
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N06   , Fs4 , v040
	.byte	W05
	.byte		        Ds5 , v044
	.byte	W01
	.byte		        Fs4 , v040
	.byte	W05
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W01
@ 037   ----------------------------------------
	.byte		        Fs4 
	.byte	W11
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N12   , Fs4 , v040
	.byte	W11
	.byte		        Cs5 , v044
	.byte		N12   , Fn5 , v036
	.byte	W01
	.byte		N24   , Fs3 , v040
	.byte		N12   , Cs4 , v032
	.byte		N12   , Fs4 , v040
	.byte	W11
	.byte		        Ds5 
	.byte	W01
	.byte		N06   , Fn4 , v036
	.byte		N06   , Gs4 , v040
	.byte		N06   , Gs5 , v024
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Gs4 , v040
	.byte	W05
	.byte		N90   , Cs3 
	.byte		N90   , Cs3 , v044
	.byte		N12   , Cs5 , v040
	.byte		N12   
	.byte	W01
	.byte		N18   , Cs4 , v032
	.byte		N18   , Fn4 , v040
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		        Ds5 , v040
	.byte	W01
	.byte		N06   , Gs5 , v024
	.byte	W11
	.byte		N12   , Fn5 , v040
	.byte	W01
	.byte		        Fn4 
	.byte		N11   , Fn5 , v036
	.byte	W12
	.byte		N12   , Fn4 , v040
	.byte		N06   , Cs5 
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		        Ds5 , v044
	.byte	W06
@ 038   ----------------------------------------
	.byte		N12   , Fn4 , v040
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W12
	.byte		N06   , Fn4 
	.byte		N12   , Gs5 , v024
	.byte	W12
	.byte		        Cs4 , v028
	.byte		N06   , Fn4 , v040
	.byte		N12   , Cs5 
	.byte		N06   , Fn5 , v036
	.byte	W11
	.byte		N01   , Cs4 , v028
	.byte	W01
	.byte		N06   , Fs4 , v040
	.byte		N12   , Ds5 
	.byte		N12   , Gs5 , v020
	.byte	W05
	.byte		N06   , Cs4 , v028
	.byte		N06   , Fn4 , v040
	.byte	W07
	.byte		N96   , Gs3 
	.byte		N96   
	.byte		N18   , Cn4 , v028
	.byte		N18   , Ds4 , v040
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v036
	.byte		N90   , Gs5 , v040
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Cn5 , v040
	.byte	W11
	.byte		N06   , Ds4 , v044
	.byte	W01
	.byte		N12   , Cs5 , v040
	.byte		N12   , Fn5 , v036
	.byte	W05
	.byte		N06   , Cs4 , v040
	.byte	W06
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N06   , Ds4 , v040
	.byte		N06   , As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W05
	.byte		N12   , Fn5 , v032
	.byte	W01
@ 039   ----------------------------------------
	.byte		N06   , Ds4 , v040
	.byte		N24   , Cs5 
	.byte	W06
	.byte		N06   , Cs4 
	.byte	W05
	.byte		        Ds4 
	.byte		N01   , Fn5 , v024
	.byte	W12
	.byte		N12   , Fn4 , v040
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N06   , Cs4 , v040
	.byte	W01
	.byte		N12   , Cn5 
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		        Cs4 , v040
	.byte	W05
	.byte		N36   , As3 
	.byte		N96   , As5 
	.byte	W01
	.byte		N18   , As2 , v044
	.byte		N18   , As2 , v040
	.byte		N12   , Ds4 
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		        Cn5 , v040
	.byte		N06   , Gs5 , v024
	.byte	W05
	.byte		N12   , Cn3 , v040
	.byte	W01
	.byte		N11   
	.byte	W05
	.byte		N06   , Cs4 
	.byte	W01
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W06
	.byte		N06   , As3 , v040
	.byte	W05
	.byte		N12   , Cs4 
	.byte	W01
	.byte		N18   , Cs3 
	.byte		N18   
	.byte		N06   , As4 
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W06
@ 040   ----------------------------------------
	.byte		        Cs4 
	.byte		N24   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W06
	.byte		N06   , As3 , v040
	.byte	W05
	.byte		N24   , Fn3 
	.byte	W01
	.byte		N24   
	.byte		N06   , Cs4 
	.byte		N12   , Gs5 , v020
	.byte	W12
	.byte		        Ds4 , v040
	.byte		N12   , As4 
	.byte		N06   , Fn5 , v036
	.byte	W11
	.byte		        Cs4 , v040
	.byte	W01
	.byte		N12   , Cn5 
	.byte		N12   , Gs5 , v024
	.byte	W05
	.byte		N06   , Cs4 , v040
	.byte	W07
	.byte		N96   , Fs3 
	.byte		N18   , As3 , v044
	.byte		N12   , Cs5 , v040
	.byte		N12   , Fn5 , v036
	.byte		N36   , Fs5 
	.byte		N36   , Fs5 , v040
	.byte	W11
	.byte		N12   , Ds5 
	.byte		N01   , Fn5 , v024
	.byte	W13
	.byte		N06   , Cs4 , v040
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W06
	.byte		N18   , As3 , v044
	.byte	W05
	.byte		N06   , Cs5 , v040
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N24   , Fs5 , v036
	.byte	W05
	.byte		N06   , Ds5 , v040
	.byte	W06
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W01
@ 041   ----------------------------------------
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , As3 
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte		N01   , Fs5 , v036
	.byte	W12
	.byte		N24   , Cs4 , v040
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte		N24   , Fs5 , v032
	.byte	W12
	.byte		N12   , Ds5 , v040
	.byte	W01
	.byte		N06   , Gs5 , v020
	.byte	W11
	.byte		N12   , Cs5 , v040
	.byte		N12   
	.byte		N18   , Gs5 , v036
	.byte	W01
	.byte		N72   , Gs3 , v040
	.byte		N24   , Cs4 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		        Ds5 , v040
	.byte	W01
	.byte		N06   , Gs5 , v020
	.byte	W11
	.byte		N12   , Fn5 , v044
	.byte	W01
	.byte		N18   , Cs4 , v040
	.byte		N11   , Fn5 , v036
	.byte	W11
	.byte		N06   , Gs5 
	.byte	W01
	.byte		        Cs5 , v040
	.byte		N06   , Gs5 , v024
	.byte	W06
	.byte		        Ds5 , v040
	.byte	W06
@ 042   ----------------------------------------
	.byte		        Cs4 
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W06
	.byte		N06   , Cs4 
	.byte	W05
	.byte		N12   , Gs5 , v036
	.byte	W01
	.byte		N06   , Cs4 , v040
	.byte		N11   , Gs5 , v024
	.byte	W11
	.byte		N24   , Cs3 , v040
	.byte		N01   , Gs5 , v036
	.byte	W01
	.byte		N12   , Ds4 , v040
	.byte		N12   , Cs5 
	.byte		N06   , Fn5 , v036
	.byte	W12
	.byte		N05   , Cs4 , v040
	.byte		N12   , Ds5 
	.byte		N11   , Gs5 , v020
	.byte	W06
	.byte		N36   , Cs4 , v040
	.byte	W06
	.byte		N96   , Fn2 , v044
	.byte		N92   , Fn2 , v040, gtp3
	.byte		N18   , Cn4 
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v032
	.byte		N12   , Fn5 , v036
	.byte		N90   , Gs5 , v044
	.byte	W11
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N12   , Cn5 , v040
	.byte	W12
	.byte		N06   , Cs4 
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W05
	.byte		N01   , Fn5 , v024
	.byte		N01   , Fn5 , v036
	.byte	W01
	.byte		N06   , As4 , v040
	.byte	W06
	.byte		        Cn5 
	.byte	W05
	.byte		N12   , Fn5 , v036
	.byte	W01
@ 043   ----------------------------------------
	.byte		N06   , Cs4 , v040
	.byte		N24   , Cs5 
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte		N11   , Fn5 , v036
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte	W01
	.byte		N18   , Cs4 , v040
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn5 
	.byte		N06   , Gs5 , v020
	.byte	W11
	.byte		N90   , As2 , v040
	.byte		N90   
	.byte		N36   , As5 
	.byte	W01
	.byte		N18   , Cs4 
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v036
	.byte		N36   , As5 
	.byte	W12
	.byte		N12   , Cn5 , v040
	.byte		N06   , Gs5 , v024
	.byte	W12
	.byte		N18   , Cs4 , v040
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N06   , As4 , v040
	.byte		N06   , Gs5 , v020
	.byte		N24   , As5 , v036
	.byte	W06
	.byte		N06   , Cn5 , v040
	.byte	W05
	.byte		        Cs4 
	.byte	W01
@ 044   ----------------------------------------
	.byte		N24   , Cs5 
	.byte		N12   , Fn5 , v032
	.byte	W05
	.byte		N06   , Cs4 , v040
	.byte	W06
	.byte		N01   , As5 , v036
	.byte	W01
	.byte		N06   , Cs4 , v040
	.byte		N12   , Gs5 , v020
	.byte	W11
	.byte		        Ds4 , v044
	.byte		N12   , As5 , v036
	.byte	W01
	.byte		        As4 , v040
	.byte		N06   , Fn5 , v036
	.byte	W11
	.byte		        Cs4 , v040
	.byte	W01
	.byte		N12   , Cn5 
	.byte		N12   , Gs5 , v020
	.byte		N11   , As5 , v036
	.byte	W05
	.byte		N06   , Cs4 , v040
	.byte	W07
	.byte		N96   , Fs2 
	.byte		N96   , Fs3 
	.byte		N18   , As3 
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte		N36   , Fs5 , v032
	.byte		N36   , Fs5 , v040
	.byte	W11
	.byte		N12   , Ds5 
	.byte		N01   , Fn5 , v024
	.byte	W13
	.byte		N06   , Cs4 , v040
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W06
	.byte		        As3 
	.byte	W05
	.byte		N06   , Cs5 
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N24   , Fs5 , v036
	.byte	W05
	.byte		N06   , Ds5 , v040
	.byte	W06
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W01
@ 045   ----------------------------------------
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , As3 
	.byte	W05
	.byte		N01   , Fn5 , v024
	.byte		N01   , Fs5 , v036
	.byte	W12
	.byte		N18   , Cs4 , v040
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte		N24   , Fs5 
	.byte	W12
	.byte		N12   , Ds5 , v040
	.byte	W01
	.byte		N06   , Gs5 , v024
	.byte	W11
	.byte		N96   , Gs2 , v040
	.byte		N72   , Gs3 , v044
	.byte		N12   , Cs5 , v040
	.byte		N12   , Cs5 , v044
	.byte		N18   , Gs5 , v036
	.byte	W01
	.byte		        Cs4 , v040
	.byte		N12   , Fn5 , v032
	.byte	W11
	.byte		        Ds5 , v040
	.byte	W01
	.byte		N06   , Gs5 , v024
	.byte	W11
	.byte		N18   , Cn4 , v040
	.byte		N12   , Fn5 
	.byte	W01
	.byte		N11   , Fn5 , v036
	.byte	W11
	.byte		N06   , Gs5 , v032
	.byte	W01
	.byte		        Cs5 , v040
	.byte		N06   , Gs5 , v024
	.byte	W06
	.byte		        Ds5 , v040
	.byte	W05
	.byte		        Cs4 , v044
	.byte	W01
@ 046   ----------------------------------------
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W05
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs5 , v036
	.byte	W01
	.byte		N11   , Gs5 , v020
	.byte	W11
	.byte		N12   , Cs4 , v040
	.byte		N01   , Gs5 , v036
	.byte	W01
	.byte		N06   , Ds4 , v044
	.byte		N12   , Cs5 
	.byte		N06   , Fn5 , v032
	.byte	W11
	.byte		N01   , Cs4 , v040
	.byte		N06   
	.byte	W01
	.byte		N12   , Ds5 
	.byte		N11   , Gs5 , v020
	.byte	W05
	.byte		N05   , Cs4 , v044
	.byte	W06
	.byte		N18   , Cn4 , v040
	.byte	W01
	.byte		N96   , Fn2 
	.byte		N92   , Fn2 , v040, gtp3
	.byte		N12   , As4 , v044
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v032
	.byte		N90   , Gs5 , v040
	.byte	W11
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N12   , Cn5 , v040
	.byte	W11
	.byte		N06   , Cs4 
	.byte	W01
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte		N01   , Fn5 , v032
	.byte	W01
	.byte		N06   , As4 , v040
	.byte	W06
	.byte		        Cn5 
	.byte	W05
	.byte		N12   , Fn5 , v036
	.byte	W01
@ 047   ----------------------------------------
	.byte		N06   , Cs4 , v040
	.byte		N24   , Cs5 
	.byte	W05
	.byte		N12   , Cn4 
	.byte	W06
	.byte		N01   , Fn5 , v024
	.byte		N11   , Fn5 , v032
	.byte	W12
	.byte		N18   , Cs4 , v040
	.byte		N12   , Fn5 , v036
	.byte		N12   
	.byte	W01
	.byte		        As4 , v040
	.byte	W12
	.byte		        Cn5 
	.byte		N06   , Gs5 , v020
	.byte	W11
	.byte		N90   , As2 , v040
	.byte		N90   , As2 , v044
	.byte		N18   , Cn4 , v040
	.byte		N36   , As5 
	.byte	W01
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v036
	.byte		N36   , As5 
	.byte	W12
	.byte		N12   , Cn5 , v040
	.byte		N06   , Gs5 , v020
	.byte	W11
	.byte		N18   , As3 , v044
	.byte	W01
	.byte		N12   , Cs5 , v040
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N06   , As4 , v040
	.byte		N06   , Gs5 , v020
	.byte		N24   , As5 , v036
	.byte	W06
	.byte		N06   , Cn5 , v044
	.byte	W05
	.byte		N18   , As3 , v040
	.byte	W01
@ 048   ----------------------------------------
	.byte		N24   , Cs5 
	.byte		N12   , Fn5 , v032
	.byte	W11
	.byte		N01   , As5 , v036
	.byte	W01
	.byte		N12   , Gs5 , v020
	.byte	W11
	.byte		        As5 , v036
	.byte	W01
	.byte		        Cn4 , v040
	.byte		N12   , As4 
	.byte		N06   , Fn5 , v032
	.byte	W11
	.byte		N12   , Cs4 , v040
	.byte	W01
	.byte		        Cn5 
	.byte		N12   , Gs5 , v020
	.byte		N11   , As5 , v036
	.byte	W12
	.byte		N84   , Bn2 
	.byte		N84   , Bn3 , v024
	.byte		N90   , Ds4 , v036
	.byte		N06   , Fs4 , v040
	.byte		N06   , Fs4 , v020
	.byte		N05   , Fs4 , v036
	.byte		N84   , Bn4 , v024
	.byte		N84   
	.byte		N80   , Bn4 , v036, gtp3
	.byte	W12
	.byte		N06   , Fs4 , v040
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
@ 049   ----------------------------------------
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   , Ds2 , v024
	.byte		N06   , Ds3 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Fn2 , v036
	.byte		N06   , Fn3 , v024
	.byte		N88   , Fn5 , v024, gtp1
	.byte	W05
	.byte		N90   , As4 , v020
	.byte	W01
	.byte		        Fs2 , v032
	.byte		N90   , Fs3 , v024
	.byte		N90   , Cs4 , v036
	.byte		N06   , Fs4 , v040
	.byte		N05   , Fs4 , v036
	.byte		N90   , As4 , v032
	.byte		N78   , Fs5 , v020
	.byte	W12
	.byte		N06   , Fs4 , v040
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
@ 050   ----------------------------------------
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W11
	.byte		N06   , Fn5 , v024
	.byte	W06
	.byte		        Fs4 , v040
	.byte		N30   , Ds5 , v024
	.byte	W06
	.byte		N06   , Cs5 
	.byte	W07
	.byte		TIE   , Cs2 , v036
	.byte		TIE   , Cs3 , v032
	.byte		TIE   , Gs3 , v036
	.byte		TIE   , Cs4 , v032
	.byte		TIE   , Cs4 , v024
	.byte		TIE   
	.byte		N24   , Fs4 , v040
	.byte		N24   , Fs4 , v024
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   , Fn5 , v020
	.byte	W06
	.byte		        Fn4 , v040
	.byte	W11
	.byte		TIE   , Cs5 , v024
	.byte	W01
	.byte		N12   , Fn4 , v040
	.byte		N12   , Fn4 , v024
	.byte	W12
@ 051   ----------------------------------------
	.byte		        Fn4 , v040
	.byte	W11
	.byte		N01   
	.byte	W13
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W11
	.byte		N01   
	.byte	W24
	.byte	W01
	.byte		N06   , Ds4 
	.byte	W12
	.byte		N30   
	.byte	W12
@ 052   ----------------------------------------
	.byte	W05
	.byte		EOT   , Cs5 
	.byte	W01
	.byte		        Cs4 
	.byte		EOT   
	.byte		EOT   
	.byte	W05
	.byte		N18   , Ds3 , v032
	.byte		N01   , Gs3 , v036
	.byte		N01   , Gs3 , v024
	.byte		N01   , Gs3 , v020
	.byte		N06   , Ds4 , v024
	.byte	W01
	.byte		EOT   , Cs2 
	.byte		        Cs3 
	.byte		        Gs3 
	.byte		N18   , Gs1 , v036
	.byte		N18   , Gs2 
	.byte		N18   , Gs4 , v024
	.byte	W12
	.byte		N05   , Ds4 , v044
	.byte	W06
	.byte		N18   , As1 , v036
	.byte		N18   , As2 
	.byte		N18   , Fn3 
	.byte		N18   , As3 , v024
	.byte		N18   
	.byte		N17   , As3 , v036
	.byte		N06   , Ds4 , v024
	.byte		N18   , As4 
	.byte	W06
	.byte		N12   , Ds4 , v040
	.byte	W12
	.byte		N84   , Bn1 , v036
	.byte		N84   , Bn2 
	.byte		N84   , Bn3 , v024
	.byte		N12   , Ds4 , v036
	.byte		N36   , Fs4 
	.byte		N36   , Fs4 , v024
	.byte		N78   , Bn4 , v036
	.byte		N78   , Bn4 , v024
	.byte		N78   
	.byte	W12
	.byte		N12   , Ds4 , v044
	.byte	W12
	.byte		        Fs4 , v040
	.byte	W12
	.byte		N12   
	.byte	W12
@ 053   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs4 , v044
	.byte	W12
	.byte		N06   , Ds2 , v024
	.byte		N06   , Ds3 , v020
	.byte		N06   , Fs4 , v044
	.byte		N06   , Ds5 , v024
	.byte	W05
	.byte		        Fn3 
	.byte	W01
	.byte		        Fn2 , v036
	.byte		TIE   , Fn5 , v024
	.byte	W05
	.byte		        Fs3 
	.byte		N96   , As4 , v020
	.byte	W01
	.byte		        Fs2 , v032
	.byte		N96   , Cs4 , v036
	.byte		N24   , Fs4 
	.byte		N24   , Fs4 , v040
	.byte		N92   , As4 , v036, gtp3
	.byte		N90   , Fs5 , v024
	.byte	W24
	.byte		N12   , Fs4 , v040
	.byte	W12
	.byte		N12   
	.byte	W12
@ 054   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N18   , Fn2 
	.byte		N18   , Fn2 , v036
	.byte		N18   , Fn3 , v040
	.byte		N18   
	.byte		N54   , Cn4 , v036
	.byte		N30   , Ds4 
	.byte		N18   , Fn4 , v040
	.byte		N18   , Fn4 , v032
	.byte		N18   , Fn4 , v036
	.byte		N18   , Fn4 , v040
	.byte		N17   , Fn4 , v036
	.byte		N30   , An4 
	.byte	W05
	.byte		EOT   , Fs3 
	.byte	W13
	.byte		N18   , An2 , v040
	.byte		N18   , An3 
	.byte		N18   
	.byte		N12   , An4 , v032
	.byte		N12   , An4 , v040
	.byte	W17
	.byte		N18   , Cn3 , v036
	.byte	W01
	.byte		        Cn3 , v040
	.byte		N18   , Cn4 
	.byte		N18   
	.byte		N30   , Ds4 , v036
	.byte		N30   , Fn4 , v032
	.byte		N30   , An4 , v036
	.byte		N18   , Cn5 , v032
	.byte		N18   , Cn5 , v040
	.byte	W12
@ 055   ----------------------------------------
	.byte	W06
	.byte		        Fs3 
	.byte		N18   , Fs4 
	.byte		N18   
	.byte		N18   , Fs5 , v036
	.byte		N18   , Fs5 , v040
	.byte	W17
	.byte		        Fn3 
	.byte		N18   , Fn4 
	.byte		N18   
	.byte		N18   , Fn5 , v036
	.byte		N18   , Fn5 , v040
	.byte	W01
	.byte		N17   , Fn3 , v036
	.byte		N23   , Ds4 
	.byte		N17   , Fn4 
	.byte		N30   , An4 , v032
	.byte	W17
	.byte		EOT   , Fn5 
	.byte		N06   , Ds3 , v040
	.byte		N06   , Ds4 
	.byte		N06   
	.byte		N06   , Ds5 , v036
	.byte		N06   , Ds5 , v040
	.byte	W07
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte		N06   
	.byte		N06   , An4 
	.byte		N06   , Ds5 , v036
	.byte		N06   , Ds5 , v044
	.byte	W06
	.byte		N12   , Cs3 , v040
	.byte		N12   , Cs4 
	.byte		N12   
	.byte		N12   , Cs5 , v036
	.byte		N12   , Cs5 , v040
	.byte	W06
	.byte		        Cn3 , v032
	.byte		N78   , Ds4 
	.byte		N78   , Fn4 
	.byte		N56   , An4 , v032, gtp3
	.byte	W06
	.byte		N06   , Cn3 , v040
	.byte		N06   , Cn4 
	.byte		N06   
	.byte		N06   , Cn5 , v036
	.byte		N06   , Cn5 , v040
	.byte	W06
	.byte		N12   , As2 
	.byte		N12   , As3 
	.byte		N12   
	.byte		N12   , As4 , v036
	.byte		N12   , As4 , v044
	.byte	W12
	.byte		N54   , An2 
	.byte		N54   , An3 , v040
	.byte		N54   
	.byte		N36   , An4 , v036
	.byte		N36   , An4 , v040
	.byte	W12
@ 056   ----------------------------------------
	.byte	W24
	.byte		N12   , As4 
	.byte		N24   , An5 , v032
	.byte	W12
	.byte		N06   , As4 , v044
	.byte	W12
	.byte		N96   , Fs2 , v040
	.byte		N96   , Fs3 
	.byte		N96   , Cs4 , v036
	.byte		N28   , Fs4 , v036, gtp1
	.byte		N12   , Cs5 , v040
	.byte		N12   , Fn5 , v036
	.byte		N96   , Fs5 
	.byte		N96   , Fs5 , v040
	.byte	W11
	.byte		N12   , Ds5 
	.byte		N01   , Fn5 , v020
	.byte	W12
	.byte		N06   , Fs4 , v044
	.byte	W01
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W06
	.byte		N06   , Fs4 
	.byte	W05
	.byte		        Cs5 
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N12   , Fs4 , v044
	.byte	W05
	.byte		N06   , Ds5 , v040
	.byte	W06
	.byte		N12   , Fn5 , v032
	.byte		N12   , Fn5 , v040
	.byte	W01
@ 057   ----------------------------------------
	.byte		        Fs4 
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Fs4 , v040
	.byte	W11
	.byte		        Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W01
	.byte		        Fs4 , v044
	.byte	W11
	.byte		        Ds5 , v040
	.byte	W01
	.byte		N06   , Gs4 
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W05
	.byte		N96   , Gs3 
	.byte		N18   , Fn4 , v036
	.byte		N01   , Gs4 
	.byte		N12   , Cs5 , v040
	.byte		N18   , Gs5 , v036
	.byte		N18   , Gs5 , v040
	.byte	W01
	.byte		N96   , Gs2 
	.byte		N18   , Fn4 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		        Ds5 , v040
	.byte	W01
	.byte		N06   , Gs5 , v024
	.byte	W11
	.byte		N12   , Fn5 , v040
	.byte	W01
	.byte		        Fn4 
	.byte		N11   , Fn5 , v036
	.byte	W12
	.byte		N12   , Fn4 , v040
	.byte		N06   , Cs5 
	.byte		N06   , Gs5 , v024
	.byte	W06
	.byte		        Ds5 , v040
	.byte	W06
@ 058   ----------------------------------------
	.byte		N12   , Fn4 
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v044
	.byte	W12
	.byte		        Fn4 , v040
	.byte		N12   , Gs5 , v020
	.byte	W12
	.byte		N06   , Fn4 , v040
	.byte		N12   , Cs5 
	.byte		N06   , Fn5 , v036
	.byte	W12
	.byte		        Fs4 , v040
	.byte		N12   , Ds5 
	.byte		N11   , Gs5 , v020
	.byte	W05
	.byte		N06   , Fn4 , v040
	.byte	W06
	.byte		N96   , Fn3 
	.byte		N84   , Fn4 , v036
	.byte		N24   , Cn5 
	.byte		N12   , Fn5 , v044
	.byte	W01
	.byte		N96   , Fn2 , v040
	.byte		N24   , Ds4 , v044
	.byte		N12   , As4 , v040
	.byte		N12   , Fn5 , v032
	.byte		N12   
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Cn5 , v040
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N06   , Ds4 , v040
	.byte		N06   , As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W05
	.byte		N12   , Fn5 , v036
	.byte	W01
@ 059   ----------------------------------------
	.byte		        Ds4 , v040
	.byte		N24   , Cs5 
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Ds4 , v044
	.byte	W11
	.byte		        Fn5 , v032
	.byte	W01
	.byte		        Fn4 , v040
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , Cs4 
	.byte		N11   , Cn5 
	.byte		N06   , Gs5 , v024
	.byte	W06
	.byte		N12   , Ds4 , v040
	.byte	W05
	.byte		N90   , Fn4 , v036
	.byte		N12   , As4 , v032
	.byte		N96   , As5 , v036
	.byte		N96   , As5 , v040
	.byte	W01
	.byte		        As2 
	.byte		N24   , As3 
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N06   , Cs4 , v040
	.byte		N12   , Cn5 
	.byte		N06   , Gs5 , v024
	.byte	W06
	.byte		        As3 , v040
	.byte	W06
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v032
	.byte	W12
	.byte		N06   , Cs4 , v040
	.byte		N06   , As4 
	.byte		N06   , Gs5 , v024
	.byte	W06
	.byte		        As3 , v040
	.byte		N06   , Cn5 
	.byte	W06
@ 060   ----------------------------------------
	.byte		        Cs4 
	.byte		N24   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W06
	.byte		N06   , Cs4 , v044
	.byte	W06
	.byte		        Cs4 , v040
	.byte		N12   , Gs5 , v020
	.byte	W12
	.byte		        Ds4 , v040
	.byte		N12   , As4 
	.byte		N06   , Fn5 , v036
	.byte	W12
	.byte		        Cs4 , v040
	.byte		N12   , Cn5 
	.byte		N12   , Gs5 , v020
	.byte	W05
	.byte		N01   , Cs4 , v044
	.byte	W07
	.byte		N96   , Fs2 , v040
	.byte		N96   , Fs3 
	.byte		N18   , As3 
	.byte		N96   , Cs4 , v036
	.byte		N36   , Fs4 , v032
	.byte		N12   , Cs5 , v040
	.byte		N12   , Fn5 , v036
	.byte		N96   , Fs5 
	.byte		N96   , Fs5 , v040
	.byte	W11
	.byte		N12   , Ds5 
	.byte		N01   , Fn5 , v020
	.byte	W13
	.byte		N12   , Fs4 , v040
	.byte		N12   , Fn5 , v032
	.byte		N12   , Fn5 , v040
	.byte	W11
	.byte		N06   , Cs5 
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N12   , Fs4 , v040
	.byte	W05
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W01
@ 061   ----------------------------------------
	.byte		        Fs4 
	.byte	W11
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N12   , Fs4 , v040
	.byte	W11
	.byte		        Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W01
	.byte		N06   , Fs4 , v040
	.byte	W11
	.byte		N12   , Ds5 
	.byte	W01
	.byte		N06   , Gs4 
	.byte		N06   , Gs5 , v020
	.byte	W05
	.byte		N01   , Gs4 , v044
	.byte	W06
	.byte		N96   , Gs3 , v040
	.byte		N18   , Fn4 , v044
	.byte		N18   , Fn4 , v032
	.byte		N96   , Gs4 
	.byte		N12   , Cs5 , v040
	.byte		N18   , Gs5 , v036
	.byte		N18   , Gs5 , v040
	.byte	W01
	.byte		N96   , Gs2 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		        Ds5 , v040
	.byte	W01
	.byte		N06   , Gs5 , v020
	.byte	W11
	.byte		N12   , Fn5 , v044
	.byte	W01
	.byte		        Fn4 , v040
	.byte		N11   , Fn5 , v036
	.byte	W12
	.byte		N12   , Fn4 , v044
	.byte		N06   , Cs5 , v040
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		        Ds5 , v040
	.byte	W06
@ 062   ----------------------------------------
	.byte		        Fn4 
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , Gs5 , v020
	.byte	W12
	.byte		N06   , Fn4 , v044
	.byte		N12   , Cs5 , v040
	.byte		N06   , Fn5 , v036
	.byte	W12
	.byte		        Fs4 , v040
	.byte		N12   , Ds5 
	.byte		N11   , Gs5 , v020
	.byte	W05
	.byte		N06   , Fn4 , v040
	.byte	W06
	.byte		N96   , Fn3 , v044
	.byte		N84   , Fn4 , v032
	.byte		N24   , Cn5 , v036
	.byte		N12   , Fn5 , v040
	.byte	W01
	.byte		N96   , Fn2 , v044
	.byte		N18   , Ds4 , v040
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v036
	.byte		N12   
	.byte	W11
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Cn5 , v040
	.byte	W12
	.byte		N06   , Ds4 
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte	W06
	.byte		N06   , Cs4 , v040
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Ds4 , v044
	.byte		N06   , As4 , v040
	.byte	W06
	.byte		        Cn5 
	.byte	W05
	.byte		N12   , Fn5 , v036
	.byte	W01
@ 063   ----------------------------------------
	.byte		N06   , Ds4 , v044
	.byte		N24   , Cs5 , v040
	.byte	W06
	.byte		N06   , Cs4 
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N06   , Ds4 , v040
	.byte	W11
	.byte		N12   , Fn5 , v036
	.byte	W01
	.byte		        Fn4 , v044
	.byte		N12   , As4 , v040
	.byte	W12
	.byte		N06   , Cs4 
	.byte		N11   , Cn5 
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W05
	.byte		N90   , Fn4 , v036
	.byte		N12   , As4 
	.byte		N96   , As5 
	.byte		N96   , As5 , v040
	.byte	W01
	.byte		        As2 
	.byte		N32   , As3 , v044, gtp3
	.byte		N18   , Ds4 , v040
	.byte		N12   , As4 , v044
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		        Cn5 , v044
	.byte		N06   , Gs5 , v020
	.byte	W11
	.byte		        Cs4 , v040
	.byte	W01
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v032
	.byte	W05
	.byte		N06   , As3 , v040
	.byte	W07
	.byte		        Cs4 
	.byte		N06   , As4 
	.byte		N06   , Gs5 , v024
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W06
@ 064   ----------------------------------------
	.byte		        Cs4 
	.byte		N24   , Cs5 
	.byte		N12   , Fn5 , v032
	.byte	W06
	.byte		N06   , As3 , v040
	.byte	W05
	.byte		N12   , Cs4 
	.byte	W01
	.byte		        Gs5 , v024
	.byte	W12
	.byte		        Ds4 , v040
	.byte		N12   , As4 
	.byte		N06   , Fn5 , v032
	.byte	W12
	.byte		        Cs4 , v040
	.byte		N12   , Cn5 
	.byte		N12   , Gs5 , v020
	.byte	W06
	.byte		N06   , Cs4 , v040
	.byte	W06
	.byte		N96   , Fs2 
	.byte		N96   , Fs3 , v044
	.byte		N18   , As3 
	.byte		N30   , Cs4 , v036
	.byte		N96   , Fs4 , v032
	.byte		N12   , Cs5 , v040
	.byte		N12   , Fn5 , v036
	.byte		N96   , Fs5 , v040
	.byte		N11   , As5 , v036
	.byte	W05
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds5 , v040
	.byte		N01   , Fn5 , v020
	.byte	W07
	.byte		N02   , As5 , v032
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte		N06   , Cs4 , v040
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte		N06   , As5 , v032
	.byte	W06
	.byte		N12   , As3 , v040
	.byte		N12   , As5 , v036
	.byte	W05
	.byte		N06   , Cs5 , v044
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N06   , As5 , v036
	.byte	W05
	.byte		        Ds5 , v040
	.byte	W06
	.byte		N12   , Fn5 , v032
	.byte		N12   , Fn5 , v040
	.byte		N06   , As5 , v036
	.byte	W01
@ 065   ----------------------------------------
	.byte		        Cs4 , v040
	.byte	W06
	.byte		N12   , As3 , v044
	.byte		N06   , As5 , v036
	.byte	W05
	.byte		N01   , Fn5 , v024
	.byte	W07
	.byte		N03   , As5 , v036
	.byte	W03
	.byte		N03   
	.byte	W02
	.byte		N12   , Cs5 , v040
	.byte		N12   , Fn5 , v036
	.byte	W01
	.byte		N06   , Cs4 , v044
	.byte		N06   , Cs4 , v036
	.byte		N06   , As5 
	.byte	W06
	.byte		        Ds4 
	.byte		N12   , As5 
	.byte	W05
	.byte		        Ds5 , v040
	.byte	W01
	.byte		N06   , Fn4 , v036
	.byte		N06   , Gs5 , v020
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		        Ds4 
	.byte	W05
	.byte		N96   , Gs3 , v044
	.byte		N96   , Fn4 , v036
	.byte		N96   , Gs4 
	.byte		N12   , Cs5 , v040
	.byte		N06   , Gs5 , v036
	.byte		N06   , Gs5 , v044
	.byte	W01
	.byte		N96   , Cs2 , v040
	.byte		N18   , Cs4 
	.byte		N18   , Cs4 , v036
	.byte		N12   , Fn5 , v032
	.byte	W05
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		N12   , Ds5 , v040
	.byte	W01
	.byte		N05   , Gs5 , v020
	.byte	W05
	.byte		N01   , Gs5 , v032
	.byte	W03
	.byte		N03   , Gs5 , v036
	.byte	W03
	.byte		N12   , Fn5 , v040
	.byte	W01
	.byte		N18   , Cs4 
	.byte		N11   , Fn5 , v036
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N12   
	.byte	W06
	.byte		N06   , Cs5 , v040
	.byte		N06   , Gs5 , v024
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		        Ds5 , v044
	.byte	W06
@ 066   ----------------------------------------
	.byte		        Cs4 , v040
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		        Cs4 , v040
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		        Cs4 , v040
	.byte		N05   , Gs5 , v020
	.byte	W05
	.byte		N03   , Gs5 , v032
	.byte	W04
	.byte		N03   
	.byte	W03
	.byte		N12   , Ds4 , v040
	.byte		N12   , Cs5 
	.byte		N06   , Fn5 , v036
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N11   
	.byte	W05
	.byte		N06   
	.byte	W01
	.byte		        Fn3 
	.byte		N06   , Cs4 , v040
	.byte		N12   , Ds5 
	.byte		N05   , Gs5 , v024
	.byte	W05
	.byte		N06   , Fs3 , v036
	.byte	W01
	.byte		        Cs4 , v040
	.byte	W05
	.byte		N90   , Gs3 
	.byte		N96   , Fn4 , v036
	.byte		N24   , Cn5 , v032
	.byte		N12   , Fn5 , v040
	.byte	W01
	.byte		N96   , Gs2 
	.byte		N90   , Gs3 , v036
	.byte		N18   , Cn4 , v044
	.byte		N12   , As4 , v040
	.byte		N12   , Fn5 , v036
	.byte		N11   , As5 
	.byte	W05
	.byte		N06   
	.byte	W06
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Cn5 , v040
	.byte	W06
	.byte		N02   , As5 , v036
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte		N06   , Cs4 , v040
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte		N06   , As5 , v032
	.byte	W06
	.byte		N12   , Cn4 , v040
	.byte		N12   , As5 , v036
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N06   , As4 , v040
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W05
	.byte		N12   , Fn5 , v036
	.byte		N06   , As5 
	.byte	W01
@ 067   ----------------------------------------
	.byte		        Cs4 , v040
	.byte		N24   , Cs5 
	.byte	W06
	.byte		N12   , Cn4 
	.byte		N06   , As5 , v032
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W07
	.byte		N03   , As5 , v036
	.byte	W03
	.byte		N03   
	.byte	W02
	.byte		N12   , Fn5 
	.byte	W01
	.byte		N18   , Cs4 , v040
	.byte		N12   , As4 
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		N12   , As5 , v032
	.byte	W06
	.byte		N11   , Cn5 , v040
	.byte		N06   , Gs5 , v020
	.byte		N06   , As5 , v036
	.byte	W11
	.byte		N90   , Fn4 
	.byte		N12   , As4 
	.byte		N06   , Gs5 
	.byte		N96   , As5 , v040
	.byte	W01
	.byte		        As2 
	.byte		N84   , As3 , v032
	.byte		N84   , As3 , v040
	.byte		N18   , Cs4 , v044
	.byte		N12   , As4 , v040
	.byte		N12   , Fn5 , v036
	.byte	W05
	.byte		N06   , Gs5 
	.byte	W07
	.byte		N12   , Cn5 , v040
	.byte		N05   , Gs5 , v020
	.byte	W05
	.byte		N01   , Gs5 , v032
	.byte	W03
	.byte		N03   
	.byte	W04
	.byte		N18   , Cs4 , v040
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte		N06   , Gs5 , v032
	.byte	W06
	.byte		N12   , Gs5 , v036
	.byte	W06
	.byte		N06   , As4 , v040
	.byte		N06   , Gs5 , v020
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W05
	.byte		        Cs4 
	.byte	W01
@ 068   ----------------------------------------
	.byte		N24   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte		N06   , Gs5 
	.byte	W05
	.byte		        Cs4 , v040
	.byte	W01
	.byte		        Gs5 , v036
	.byte	W06
	.byte		        Cs4 , v040
	.byte		N05   , Gs5 , v024
	.byte	W05
	.byte		N03   , Gs5 , v036
	.byte	W04
	.byte		N03   
	.byte	W03
	.byte		N06   , Ds4 , v040
	.byte		N12   , As4 , v044
	.byte		N06   , Fn5 , v036
	.byte		N06   , Gs5 , v032
	.byte	W06
	.byte		N11   
	.byte	W05
	.byte		N06   , Gs5 , v036
	.byte	W01
	.byte		        Fn3 
	.byte		N06   , Cs4 , v040
	.byte		N12   , Cn5 
	.byte		N05   , Gs5 , v020
	.byte	W05
	.byte		N06   , Gs3 , v036
	.byte	W01
	.byte		        Cs4 , v040
	.byte	W05
	.byte		N01   , As3 , v044
	.byte	W01
	.byte		N96   , Fs2 , v040
	.byte		N84   , Fs3 
	.byte		N84   , Fs3 , v036
	.byte		N96   , Fs4 
	.byte		N96   , As4 , v032
	.byte		N12   , Cs5 , v040
	.byte		N12   , Fn5 , v036
	.byte		N11   , As5 , v032
	.byte		N11   , As5 , v040
	.byte	W05
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		N12   , Ds5 , v040
	.byte		N01   , Fn5 , v020
	.byte	W07
	.byte		N02   , As5 , v036
	.byte	W02
	.byte		N03   
	.byte	W03
	.byte		N06   , Cs4 , v040
	.byte	W01
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte		N06   , As5 , v036
	.byte	W05
	.byte		N18   , As3 , v040
	.byte	W01
	.byte		N12   , As5 , v036
	.byte	W05
	.byte		N06   , Cs5 , v040
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N06   , As5 , v036
	.byte	W05
	.byte		        Ds5 , v040
	.byte	W06
	.byte		N12   , Fn5 , v032
	.byte		N12   , Fn5 , v040
	.byte		N06   , As5 , v036
	.byte	W01
@ 069   ----------------------------------------
	.byte		        Cs4 , v040
	.byte	W06
	.byte		N12   , As3 
	.byte		N06   , As5 , v036
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N06   , Cs4 , v036
	.byte	W05
	.byte		        Ds4 
	.byte	W01
	.byte		N03   , As5 
	.byte	W03
	.byte		N03   
	.byte	W02
	.byte		N18   , Cs4 , v040
	.byte		N06   , Fn4 , v036
	.byte		N12   , Cs5 , v040
	.byte		N12   , Fn5 , v036
	.byte	W01
	.byte		N05   , As5 
	.byte	W05
	.byte		N12   
	.byte	W01
	.byte		N06   , Ds4 
	.byte	W05
	.byte		N12   , Ds5 , v040
	.byte	W01
	.byte		N05   , Cs4 , v036
	.byte		N06   , Gs5 , v020
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		        Ds4 
	.byte	W05
	.byte		N96   , Gs3 , v040
	.byte		N18   , Cs4 
	.byte		N84   , Fn4 , v036
	.byte		N96   , Gs4 
	.byte		N12   , Cs5 , v044
	.byte		N06   , Gs5 , v036
	.byte		N06   , Gs5 , v040
	.byte	W01
	.byte		N96   , Cs2 
	.byte		N84   , Fn4 , v036
	.byte		N12   , Fn5 
	.byte	W05
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N12   , Ds5 , v044
	.byte	W01
	.byte		N05   , Gs5 , v020
	.byte	W05
	.byte		N01   , Gs5 , v036
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn5 , v040
	.byte	W01
	.byte		N18   , Cn4 
	.byte		N11   , Fn5 , v036
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N12   
	.byte	W06
	.byte		N06   , Cs5 , v040
	.byte		N06   , Gs5 , v020
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		        Ds5 , v040
	.byte	W06
@ 070   ----------------------------------------
	.byte		        Cs4 
	.byte		N12   , Fn5 , v032
	.byte		N12   , Fn5 , v044
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		        Cs4 , v040
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		N12   , Cs4 , v040
	.byte		N05   , Gs5 , v020
	.byte	W05
	.byte		N03   , Gs5 , v036
	.byte	W04
	.byte		N03   
	.byte	W03
	.byte		N06   , Ds4 , v040
	.byte		N12   , Cs5 
	.byte		N06   , Fn5 , v036
	.byte		N06   , Gs5 , v032
	.byte	W06
	.byte		N11   , Gs5 , v036
	.byte	W05
	.byte		N06   , Gs5 , v032
	.byte	W01
	.byte		        Cs4 , v040
	.byte		N06   , Ds4 , v036
	.byte		N12   , Ds5 , v040
	.byte		N05   , Gs5 , v020
	.byte	W05
	.byte		N01   , Cs4 , v040
	.byte	W01
	.byte		N05   , Fn4 , v036
	.byte	W05
	.byte		N96   , Gs3 , v040
	.byte		N90   , Ds4 , v032
	.byte		N96   , Gs4 , v036
	.byte		N01   , Gs5 , v040
	.byte	W01
	.byte		N96   , Gs2 
	.byte		N18   , Cn4 
	.byte		N90   , Ds4 , v036
	.byte		N12   , As4 , v040
	.byte		N12   , Fn5 , v036
	.byte		N11   , As5 
	.byte	W05
	.byte		N06   
	.byte	W06
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Cn5 , v040
	.byte	W06
	.byte		N02   , As5 , v036
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte		N06   , Cs4 , v040
	.byte		N12   , Cs5 , v044
	.byte		N12   , Fn5 , v036
	.byte		N06   , As5 , v032
	.byte	W06
	.byte		N12   , Cn4 , v040
	.byte		N12   , As5 , v036
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N06   , As4 , v040
	.byte		N06   , As5 , v032
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W05
	.byte		N12   , Fn5 , v036
	.byte		N06   , As5 
	.byte	W01
@ 071   ----------------------------------------
	.byte		        Cs4 , v040
	.byte		N24   , Cs5 
	.byte	W06
	.byte		N12   , Cn4 
	.byte		N06   , As5 , v036
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W07
	.byte		N03   , As5 , v036
	.byte	W03
	.byte		N03   
	.byte	W02
	.byte		N12   , Fn5 
	.byte	W01
	.byte		N18   , Cs4 , v040
	.byte		N12   , As4 
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		N12   
	.byte	W06
	.byte		        Cn5 , v040
	.byte		N06   , Gs5 , v020
	.byte		N06   , As5 , v036
	.byte	W05
	.byte		        Fn4 , v032
	.byte	W03
	.byte		N03   , Ds4 , v036
	.byte	W03
	.byte		N18   , Dn4 
	.byte		N90   , Fn4 
	.byte		N84   , As4 
	.byte	W01
	.byte		N96   , As1 , v040
	.byte		N42   , As3 
	.byte		N18   , Cn4 
	.byte		N18   , Dn5 , v036
	.byte		N18   , Dn5 , v044
	.byte		N18   
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		N06   , Gs5 , v020
	.byte	W05
	.byte		N18   , Ds5 , v032
	.byte	W01
	.byte		        Ds4 , v036
	.byte		N17   , Ds5 , v048
	.byte		N17   , Ds5 , v040
	.byte	W06
	.byte		N18   , As3 
	.byte		N12   , Fn5 , v036
	.byte	W11
	.byte		N54   , Fn4 
	.byte		N01   , Fn5 
	.byte		N01   , Fn5 , v040
	.byte	W01
	.byte		N24   
	.byte		N06   , Gs5 , v020
	.byte	W12
@ 072   ----------------------------------------
	.byte		N18   , As3 , v040
	.byte		N12   , Fn5 , v036
	.byte	W12
	.byte		        Gs5 , v020
	.byte	W12
	.byte		        Cn4 , v040
	.byte		N12   , As4 
	.byte		N06   , Fn5 , v036
	.byte	W11
	.byte		        Fn4 , v040
	.byte	W01
	.byte		N12   , Cn5 
	.byte		N12   , Gs5 , v020
	.byte	W12
	.byte		N96   , Fs2 , v040
	.byte		N96   , Fs3 
	.byte		N96   , As3 , v036
	.byte		N12   , Fn4 , v040
	.byte		N96   , Fs4 , v036
	.byte		N96   , As4 
	.byte		N12   , Cs5 , v040
	.byte		N12   , Fn5 , v036
	.byte		N11   , As5 
	.byte		N11   , As5 , v040
	.byte	W05
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		N12   , Ds5 , v040
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N12   , Ds4 , v040
	.byte	W06
	.byte		N03   , As5 , v036
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 , v040
	.byte		N12   , Fn5 , v032
	.byte		N12   , Fn5 , v040
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		N12   
	.byte	W05
	.byte		N06   , Cs5 , v040
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N12   , Ds4 , v040
	.byte		N06   , As5 , v036
	.byte	W05
	.byte		        Ds5 , v040
	.byte	W06
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v044
	.byte		N06   , As5 , v036
	.byte	W01
@ 073   ----------------------------------------
	.byte	W06
	.byte		N06   
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Gs4 , v040
	.byte	W06
	.byte		N03   , As5 , v036
	.byte	W03
	.byte		N03   
	.byte	W02
	.byte		N12   , Cs5 , v040
	.byte		N12   , Fn5 , v036
	.byte	W01
	.byte		N06   , Fn4 , v040
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		N18   , Fn4 , v040
	.byte		N12   , As5 , v036
	.byte	W05
	.byte		        Ds5 , v040
	.byte	W01
	.byte		        Fn4 
	.byte		N06   , Gs5 , v024
	.byte		N06   , As5 , v032
	.byte	W11
	.byte		N96   , Gs3 , v036
	.byte		N01   , Fn4 , v032
	.byte		N96   , Gs4 , v036
	.byte		N12   , Cs5 , v040
	.byte		N06   , Gs5 , v036
	.byte		N06   , Gs5 , v040
	.byte	W01
	.byte		N96   , Cs2 
	.byte		N96   , Cs3 
	.byte		N12   , Fn4 
	.byte		N12   , Fn5 , v036
	.byte	W05
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N12   , Ds5 , v040
	.byte	W01
	.byte		        Ds4 
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		N03   , Gs5 , v036
	.byte	W03
	.byte		N03   
	.byte	W02
	.byte		N12   , Fn5 , v040
	.byte	W01
	.byte		        Fn4 
	.byte		N11   , Fn5 , v036
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N12   
	.byte	W06
	.byte		        Ds4 , v040
	.byte		N06   , Cs5 , v044
	.byte		N06   , Gs5 , v020
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		        Ds5 , v040
	.byte	W06
@ 074   ----------------------------------------
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fn4 , v040
	.byte		N05   , Gs5 , v020
	.byte	W05
	.byte		N03   , Gs5 , v036
	.byte	W04
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 , v040
	.byte		N12   , Cs5 
	.byte		N06   , Fn5 , v036
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N11   
	.byte	W05
	.byte		N06   , Gs5 , v032
	.byte	W01
	.byte		        Fn4 , v044
	.byte		N12   , Ds5 
	.byte		N05   , Gs5 , v024
	.byte	W11
	.byte		N96   , Gs2 , v040
	.byte		N30   , Ds4 , v036
	.byte		N96   , Gs4 
	.byte		N01   , Gs5 , v044
	.byte	W01
	.byte		N92   , Gs2 , v040, gtp3
	.byte		N96   , Cn4 , v036
	.byte		N24   , Fn4 , v040
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v036
	.byte		N11   , As5 
	.byte	W05
	.byte		N06   
	.byte	W06
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N12   , Cn5 , v040
	.byte	W06
	.byte		N02   , As5 , v036
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte		N06   , Ds4 , v040
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte		N06   , As5 , v032
	.byte	W06
	.byte		N12   , As5 , v036
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N42   , Ds4 , v040
	.byte		N06   , As4 
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W05
	.byte		N12   , Fn5 , v036
	.byte		N06   , As5 
	.byte	W01
@ 075   ----------------------------------------
	.byte		N24   , Cs5 , v040
	.byte	W06
	.byte		N06   , As5 , v036
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W07
	.byte		N03   , As5 , v036
	.byte	W03
	.byte		N03   
	.byte	W02
	.byte		N12   , Fn5 
	.byte	W01
	.byte		        As4 , v040
	.byte		N05   , As5 , v036
	.byte	W05
	.byte		N12   
	.byte	W07
	.byte		N06   , Ds4 , v040
	.byte		N12   , Cn5 
	.byte		N06   , Gs5 , v020
	.byte		N06   , As5 , v036
	.byte	W11
	.byte		N96   , As2 , v040
	.byte		N90   , Fn4 , v036
	.byte		N12   , As4 
	.byte		N06   , Gs5 
	.byte		N96   , As5 , v040
	.byte	W01
	.byte		N92   , As2 , v040, gtp3
	.byte		N96   , As3 , v036
	.byte		N24   , Ds4 , v040
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v036
	.byte	W05
	.byte		N06   , Gs5 
	.byte	W07
	.byte		N12   , Cn5 , v040
	.byte		N05   , Gs5 , v024
	.byte	W05
	.byte		N01   , Gs5 , v032
	.byte	W04
	.byte		N03   , Gs5 , v036
	.byte	W03
	.byte		N12   , Cs4 , v040
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N12   
	.byte	W06
	.byte		N48   , Cs4 , v040
	.byte		N06   , As4 
	.byte		N06   , Gs5 , v020
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W06
@ 076   ----------------------------------------
	.byte		N24   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N05   , Gs5 , v020
	.byte	W05
	.byte		N03   , Gs5 , v036
	.byte	W04
	.byte		N03   
	.byte	W03
	.byte		N12   , As4 , v040
	.byte		N06   , Fn5 , v036
	.byte		N06   , Gs5 , v032
	.byte	W06
	.byte		N11   
	.byte	W05
	.byte		N06   
	.byte	W01
	.byte		N05   , Fn4 , v040
	.byte		N12   , Cn5 , v044
	.byte		N05   , Gs5 , v024
	.byte	W12
	.byte		N96   , Fs2 , v040
	.byte		N96   , Fs3 , v044
	.byte		N96   , As3 , v036
	.byte		N12   , Fn4 , v040
	.byte		N96   , Fs4 , v036
	.byte		N96   , As4 
	.byte		N12   , Cs5 , v040
	.byte		N12   , Fn5 , v032
	.byte		N11   , As5 , v036
	.byte		N11   , As5 , v040
	.byte	W05
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		N12   , Ds5 , v040
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Ds4 , v040
	.byte	W06
	.byte		N03   , As5 , v036
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 , v040
	.byte		N12   , Fn5 , v032
	.byte		N12   , Fn5 , v040
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		N12   
	.byte	W05
	.byte		N06   , Cs5 , v040
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Ds4 , v040
	.byte		N06   , As5 , v036
	.byte	W05
	.byte		        Ds5 , v040
	.byte	W06
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte		N06   , As5 , v036
	.byte	W01
@ 077   ----------------------------------------
	.byte	W06
	.byte		N06   
	.byte	W05
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N12   , Gs4 , v040
	.byte	W06
	.byte		N03   , As5 , v036
	.byte	W03
	.byte		N03   
	.byte	W02
	.byte		N12   , Cs5 , v040
	.byte		N12   , Fn5 , v036
	.byte	W01
	.byte		N06   , Fn4 , v040
	.byte		N06   , As5 , v032
	.byte	W06
	.byte		N18   , Fn4 , v044
	.byte		N12   , As5 , v036
	.byte	W05
	.byte		        Ds5 , v040
	.byte	W01
	.byte		        Fn4 
	.byte		N06   , Gs5 , v020
	.byte		N06   , As5 , v036
	.byte	W11
	.byte		N96   , Gs3 
	.byte		N01   , Fn4 , v032
	.byte		N96   , Gs4 , v036
	.byte		N12   , Cs5 , v040
	.byte		N06   , Gs5 , v036
	.byte		N06   , Gs5 , v040
	.byte	W01
	.byte		N96   , Cs2 
	.byte		N96   , Cs3 
	.byte		N12   , Fn4 
	.byte		N12   , Fn5 , v036
	.byte	W05
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N12   , Ds5 , v040
	.byte	W01
	.byte		        Ds4 
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		N03   , Gs5 , v036
	.byte	W03
	.byte		N03   
	.byte	W02
	.byte		N12   , Fn5 , v040
	.byte	W01
	.byte		        Fn4 
	.byte		N11   , Fn5 , v036
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N12   
	.byte	W06
	.byte		        Ds4 , v040
	.byte		N06   , Cs5 
	.byte		N06   , Gs5 , v020
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		        Ds5 , v040
	.byte	W06
@ 078   ----------------------------------------
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fn4 , v040
	.byte		N05   , Gs5 , v020
	.byte	W05
	.byte		N03   , Gs5 , v032
	.byte	W04
	.byte		        Gs5 , v036
	.byte	W03
	.byte		N12   , Fn4 , v040
	.byte		N12   , Cs5 
	.byte		N06   , Fn5 , v036
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N11   
	.byte	W05
	.byte		N06   
	.byte	W01
	.byte		        Fn4 , v040
	.byte		N12   , Ds5 
	.byte		N05   , Gs5 , v024
	.byte	W11
	.byte		N96   , Gs2 , v040
	.byte		N30   , Ds4 , v036
	.byte		N96   , Gs4 , v032
	.byte		N01   , Gs5 , v040
	.byte	W01
	.byte		N92   , Gs2 , v040, gtp3
	.byte		N96   , Cn4 , v036
	.byte		N24   , Fn4 , v040
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v036
	.byte		N11   , As5 
	.byte	W05
	.byte		N06   
	.byte	W06
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N12   , Cn5 , v040
	.byte	W06
	.byte		N02   , As5 , v036
	.byte	W02
	.byte		N03   , As5 , v032
	.byte	W04
	.byte		N06   , Ds4 , v040
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v032
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		N12   
	.byte	W05
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N42   , Ds4 , v040
	.byte		N06   , As4 
	.byte		N06   , As5 , v032
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W05
	.byte		N12   , Fn5 , v036
	.byte		N06   , As5 
	.byte	W01
@ 079   ----------------------------------------
	.byte		N24   , Cs5 , v044
	.byte	W06
	.byte		N06   , As5 , v036
	.byte	W05
	.byte		N01   , Fn5 , v024
	.byte	W07
	.byte		N03   , As5 , v036
	.byte	W03
	.byte		N03   
	.byte	W02
	.byte		N12   , Fn5 
	.byte	W01
	.byte		        As4 , v040
	.byte		N05   , As5 , v036
	.byte	W05
	.byte		N12   
	.byte	W07
	.byte		N06   , Ds4 , v040
	.byte		N12   , Cn5 
	.byte		N06   , Gs5 , v020
	.byte		N06   , As5 , v036
	.byte	W11
	.byte		N48   , As2 , v040
	.byte		N90   , Fn4 , v036
	.byte		N12   , As4 
	.byte		N06   , Gs5 
	.byte		N96   , As5 , v040
	.byte	W01
	.byte		N44   , As2 , v044, gtp3
	.byte		N84   , As3 , v036
	.byte		N24   , Ds4 , v040
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v036
	.byte	W05
	.byte		N06   , Gs5 , v032
	.byte	W07
	.byte		N12   , Cn5 , v040
	.byte		N05   , Gs5 , v020
	.byte	W05
	.byte		N01   , Gs5 , v036
	.byte	W04
	.byte		N03   
	.byte	W03
	.byte		N12   , Cs4 , v040
	.byte		N12   , Cs5 , v044
	.byte		N12   , Fn5 , v036
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N12   
	.byte	W06
	.byte		N48   , Cs4 , v040
	.byte		N06   , As4 
	.byte		N06   , Gs5 , v024
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W06
@ 080   ----------------------------------------
	.byte		N18   , Cn3 
	.byte		N24   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte		N06   , Gs5 , v032
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N05   , Gs5 , v020
	.byte	W05
	.byte		N03   , Gs5 , v036
	.byte	W01
	.byte		N18   , Cs3 , v040
	.byte	W03
	.byte		N03   , Gs5 , v036
	.byte	W03
	.byte		N12   , As4 , v040
	.byte		N06   , Fn5 , v036
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N11   
	.byte	W05
	.byte		N12   , Ds3 , v040
	.byte		N06   , Gs5 , v036
	.byte	W01
	.byte		        Ds4 , v032
	.byte		N05   , Fn4 , v040
	.byte		N12   , Cn5 
	.byte		N05   , Gs5 , v020
	.byte	W06
	.byte		N06   , Fn4 , v036
	.byte	W06
	.byte		N96   , Fs2 , v040
	.byte		N96   , Fs3 
	.byte		N12   , Fn4 
	.byte		N84   , Fs4 , v036
	.byte		N84   
	.byte		N96   , As4 , v032
	.byte		N12   , Cs5 , v040
	.byte		N12   , Fn5 , v032
	.byte		N11   , As5 , v036
	.byte		N11   , As5 , v044
	.byte	W05
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		N12   , Ds5 , v040
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Ds4 , v040
	.byte	W06
	.byte		N03   , As5 , v032
	.byte	W03
	.byte		        As5 , v036
	.byte	W03
	.byte		N12   , Fn4 , v040
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		N12   
	.byte	W05
	.byte		N06   , Cs5 , v040
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Ds4 , v044
	.byte		N06   , As5 , v036
	.byte	W05
	.byte		        Ds5 , v040
	.byte	W06
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte		N06   , As5 , v036
	.byte	W01
@ 081   ----------------------------------------
	.byte	W06
	.byte		N06   
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Gs4 , v040
	.byte	W06
	.byte		N03   , As5 , v036
	.byte	W03
	.byte		N03   
	.byte	W02
	.byte		N12   , Cs5 , v040
	.byte		N12   , Fn5 , v036
	.byte	W01
	.byte		N06   , Fn4 , v040
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		N18   , Fn4 , v040
	.byte		N12   , As5 , v032
	.byte	W05
	.byte		N06   , Cs4 , v036
	.byte		N12   , Ds5 , v040
	.byte	W01
	.byte		        Fn4 
	.byte		N06   , Gs5 , v024
	.byte		N06   , As5 , v036
	.byte	W05
	.byte		        Ds4 
	.byte	W06
	.byte		N84   , Cs4 
	.byte		N01   , Fn4 
	.byte		N96   , Gs4 
	.byte		N12   , Cs5 , v040
	.byte		N06   , Gs5 , v036
	.byte		N06   , Gs5 , v040
	.byte	W01
	.byte		N96   , Cs2 
	.byte		N96   , Cs3 , v044
	.byte		N12   , Fn4 , v040
	.byte		N12   , Fn5 , v032
	.byte	W05
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		N12   , Ds5 , v044
	.byte	W01
	.byte		        Ds4 , v040
	.byte		N06   , Gs5 , v024
	.byte	W06
	.byte		N03   , Gs5 , v036
	.byte	W03
	.byte		N03   
	.byte	W02
	.byte		N12   , Fn5 , v040
	.byte	W01
	.byte		        Fn4 
	.byte		N11   , Fn5 , v036
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N12   
	.byte	W06
	.byte		        Ds4 , v040
	.byte		N06   , Cs5 
	.byte		N06   , Gs5 , v020
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		        Ds5 , v040
	.byte	W06
@ 082   ----------------------------------------
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fn4 , v040
	.byte		N05   , Gs5 , v024
	.byte	W05
	.byte		N03   , Gs5 , v036
	.byte	W04
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 , v040
	.byte		N12   , Cs5 
	.byte		N06   , Fn5 , v036
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N11   
	.byte	W05
	.byte		N06   , Cn5 
	.byte		N06   , Gs5 , v032
	.byte	W01
	.byte		        Fn4 , v040
	.byte		N12   , Ds5 
	.byte		N05   , Gs5 , v024
	.byte	W05
	.byte		N06   , As4 , v036
	.byte	W06
	.byte		N96   , Gs2 , v044
	.byte		N96   , Gs3 , v036
	.byte		N30   , Ds4 
	.byte		N96   , Gs4 
	.byte		N96   
	.byte		N01   , Gs5 , v040
	.byte	W01
	.byte		N92   , Gs2 , v040, gtp3
	.byte		N24   , Fn4 
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v036
	.byte		N11   , As5 
	.byte	W05
	.byte		N06   , As5 , v032
	.byte	W06
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Cn5 , v040
	.byte	W06
	.byte		N02   , As5 , v036
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte		N06   , Ds4 , v040
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte		N06   , As5 
	.byte	W06
	.byte		N12   
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N42   , Ds4 , v040
	.byte		N06   , As4 
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W05
	.byte		N12   , Fn5 , v036
	.byte		N06   , As5 
	.byte	W01
@ 083   ----------------------------------------
	.byte		N24   , Cs5 , v040
	.byte	W06
	.byte		N06   , As5 , v036
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W07
	.byte		N03   , As5 , v036
	.byte	W03
	.byte		        As5 , v032
	.byte	W02
	.byte		N12   , Fn5 , v036
	.byte	W01
	.byte		        As4 , v040
	.byte		N05   , As5 , v036
	.byte	W05
	.byte		N12   
	.byte	W07
	.byte		N06   , Ds4 , v040
	.byte		N12   , Cn5 , v044
	.byte		N06   , Gs5 , v020
	.byte		N06   , As5 , v036
	.byte	W11
	.byte		N96   , As2 , v040
	.byte		N72   , As3 , v036
	.byte		N90   , Fn4 , v032
	.byte		N12   , As4 , v036
	.byte		N12   
	.byte		N06   , Gs5 
	.byte		N96   , As5 , v040
	.byte	W01
	.byte		N92   , As2 , v040, gtp3
	.byte		N24   , Ds4 
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v036
	.byte	W05
	.byte		N06   , Gs5 
	.byte	W07
	.byte		N12   , Cn5 , v040
	.byte		N05   , Gs5 , v024
	.byte	W05
	.byte		N01   , Gs5 , v036
	.byte	W04
	.byte		N03   
	.byte	W03
	.byte		N12   , Cs4 , v040
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N12   
	.byte	W06
	.byte		N48   , Cs4 , v040
	.byte		N06   , As4 
	.byte		N06   , Gs5 , v020
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W06
@ 084   ----------------------------------------
	.byte		N24   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte		N06   , Gs5 , v032
	.byte	W06
	.byte		        Gs5 , v036
	.byte	W06
	.byte		N05   , Gs5 , v020
	.byte	W05
	.byte		N03   , Gs5 , v036
	.byte	W04
	.byte		N03   
	.byte	W03
	.byte		N12   , Ds4 
	.byte		N12   , As4 , v044
	.byte		N06   , Fn5 , v036
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N11   , Gs5 , v032
	.byte	W05
	.byte		N06   
	.byte	W01
	.byte		N05   , Fn4 , v040
	.byte		N05   , Fn4 , v036
	.byte		N12   , Cn5 , v040
	.byte		N05   , Gs5 , v024
	.byte	W12
	.byte		N96   , Fs2 , v040
	.byte		N96   , Fs3 
	.byte		N12   , Fn4 
	.byte		N84   , Fs4 , v036
	.byte		N84   
	.byte		N96   , As4 , v032
	.byte		N12   , Cs5 , v040
	.byte		N12   , Fn5 , v036
	.byte		N11   , As5 
	.byte		N11   , As5 , v040
	.byte	W05
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		N12   , Ds5 , v040
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Ds4 , v040
	.byte	W06
	.byte		N03   , As5 , v036
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 , v040
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		N12   
	.byte	W05
	.byte		N06   , Cs5 , v040
	.byte		N01   , Fn5 , v024
	.byte	W01
	.byte		N12   , Ds4 , v040
	.byte		N06   , As5 , v036
	.byte	W05
	.byte		        Ds5 , v040
	.byte	W06
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte		N06   , As5 , v036
	.byte	W01
@ 085   ----------------------------------------
	.byte	W06
	.byte		N06   
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Gs4 , v040
	.byte	W06
	.byte		N03   , As5 , v036
	.byte	W03
	.byte		N03   
	.byte	W02
	.byte		N12   , Cs5 , v040
	.byte		N12   , Fn5 , v036
	.byte	W01
	.byte		N06   , Fn4 , v040
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		N18   , Fn4 , v040
	.byte		N12   , As5 , v032
	.byte	W05
	.byte		N06   , Cs4 , v036
	.byte		N12   , Ds5 , v040
	.byte	W01
	.byte		        Fn4 
	.byte		N06   , Gs5 , v024
	.byte		N06   , As5 , v032
	.byte	W05
	.byte		        Ds4 , v036
	.byte	W06
	.byte		N84   , Cs4 
	.byte		N01   , Fn4 , v032
	.byte		N96   , Gs4 , v036
	.byte		N12   , Cs5 , v040
	.byte		N06   , Gs5 , v032
	.byte		N06   , Gs5 , v040
	.byte	W01
	.byte		N96   , Cs2 
	.byte		N96   , Cs3 
	.byte		N12   , Fn4 
	.byte		N12   , Fn5 , v032
	.byte	W05
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		N12   , Ds5 , v044
	.byte	W01
	.byte		        Ds4 , v040
	.byte		N06   , Gs5 , v020
	.byte	W06
	.byte		N03   , Gs5 , v036
	.byte	W03
	.byte		N03   
	.byte	W02
	.byte		N12   , Fn5 , v040
	.byte	W01
	.byte		        Fn4 
	.byte		N11   , Fn5 , v036
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N12   
	.byte	W06
	.byte		        Ds4 , v040
	.byte		N06   , Cs5 
	.byte		N06   , Gs5 , v020
	.byte		N06   , Gs5 , v032
	.byte	W06
	.byte		        Ds5 , v040
	.byte	W06
@ 086   ----------------------------------------
	.byte		N12   , Fn5 , v036
	.byte		N12   , Fn5 , v040
	.byte		N06   , Gs5 , v036
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fn4 , v040
	.byte		N05   , Gs5 , v024
	.byte	W05
	.byte		N03   , Gs5 , v036
	.byte	W04
	.byte		        Gs5 , v032
	.byte	W03
	.byte		N12   , Fn4 , v040
	.byte		N12   , Cs5 
	.byte		N06   , Fn5 , v036
	.byte		N06   , Gs5 
	.byte	W06
	.byte		N11   
	.byte	W05
	.byte		N06   , Cn5 
	.byte		N06   , Gs5 
	.byte	W01
	.byte		        Fn4 , v040
	.byte		N12   , Ds5 
	.byte		N05   , Gs5 , v020
	.byte	W05
	.byte		N06   , As4 , v036
	.byte	W06
	.byte		N96   , Gs2 , v040
	.byte		N96   , Gs3 , v036
	.byte		N30   , Ds4 
	.byte		N96   , Gs4 , v032
	.byte		N96   , Gs4 , v036
	.byte		N01   , Gs5 , v040
	.byte	W01
	.byte		N92   , Gs2 , v040, gtp3
	.byte		N24   , Fn4 
	.byte		N12   , As4 
	.byte		N12   , Fn5 , v036
	.byte		N11   , As5 , v032
	.byte	W05
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N12   , Cn5 , v040
	.byte	W06
	.byte		N02   , As5 , v036
	.byte	W02
	.byte		N03   , As5 , v032
	.byte	W04
	.byte		N06   , Ds4 , v040
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 , v036
	.byte		N06   , As5 
	.byte	W06
	.byte		N12   
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W01
	.byte		N42   , Ds4 , v040
	.byte		N06   , As4 
	.byte		N06   , As5 , v036
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W05
	.byte		N12   , Fn5 , v036
	.byte		N06   , As5 
	.byte	W01
@ 087   ----------------------------------------
	.byte		N24   , Cs5 , v040
	.byte	W06
	.byte		N06   , As5 , v036
	.byte	W05
	.byte		N01   , Fn5 , v020
	.byte	W07
	.byte		N03   , As5 , v036
	.byte	W03
	.byte		N03   
	.byte	W02
	.byte		N12   , Fn5 
	.byte	W01
	.byte		        As4 , v040
	.byte		N05   , As5 , v032
	.byte	W05
	.byte		N12   , As5 , v036
	.byte	W07
	.byte		N06   , Ds4 , v040
	.byte		N12   , Cn5 
	.byte		N06   , Gs5 , v020
	.byte		N06   , As5 , v036
	.byte	W11
	.byte		N18   , Gs5 
	.byte	W01
	.byte		        Gs2 , v040
	.byte		N17   
	.byte		N18   , Gs3 , v036
	.byte		N18   , Ds4 , v040
	.byte		N18   , Ds4 , v036
	.byte		N18   , Gs4 , v032
	.byte		N17   , Gs4 , v036
	.byte		N18   , As4 , v040
	.byte		N12   , Fn5 , v036
	.byte		N17   , Gs5 , v040
	.byte	W12
	.byte		N05   , Gs5 , v024
	.byte	W12
	.byte		N06   , As2 , v040
	.byte		N05   , As2 , v044
	.byte		N06   , As3 , v032
	.byte		N12   , Cs4 , v040
	.byte		N06   , Fn4 , v036
	.byte		N06   , As4 
	.byte		N05   
	.byte		N12   , Cs5 
	.byte		N12   , Cs5 , v040
	.byte		N06   , As5 , v032
	.byte		N06   , As5 , v040
	.byte	W12
	.byte		TIE   , As2 
	.byte		TIE   , As2 , v044
	.byte		TIE   , As3 , v032
	.byte		TIE   , Cs4 , v040
	.byte		TIE   , As4 
	.byte		TIE   , As4 , v036
	.byte		TIE   , Cs5 , v024
	.byte		TIE   , As5 , v032
	.byte		TIE   , As5 , v040
	.byte	W01
	.byte		        Fn4 , v036
	.byte		TIE   , As4 
	.byte	W11
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W12
	.byte		EOT   , As5 
	.byte		EOT   
	.byte	W24
	.byte		EOT   , As2 
	.byte		EOT   
	.byte		EOT   , As3 
	.byte		        As4 
	.byte		EOT   
	.byte		EOT   
	.byte	W01
	.byte		EOT   , Fn4 
	.byte	W05
	.byte		        Cs4 
	.byte		        Cs5 
	.byte	W06
	.byte	FINE

@**************** Track 2 (Midi-Chn.10) ****************@

mus_umbrella_rihanna_2:
	.byte		VOL   , 127*mus_umbrella_rihanna_mvl/mxv
	.byte	KEYSH , mus_umbrella_rihanna_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 118
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
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W48
	.byte		N12   , Fs2 , v040
	.byte	W48
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
	.byte	W60
	.byte		N06   , Bn2 , v052
	.byte	W36
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W18
	.byte		N06   
	.byte	W78
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
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
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
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
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
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
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W48
	.byte	FINE

@**************** Track 3 (Midi-Chn.2) ****************@

mus_umbrella_rihanna_3:
	.byte		VOL   , 127*mus_umbrella_rihanna_mvl/mxv
	.byte	KEYSH , mus_umbrella_rihanna_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
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
	.byte	W96
@ 033   ----------------------------------------
	.byte		N06   , Gn3 , v052
	.byte	W48
	.byte		N96   , Cs2 , v040
	.byte	W48
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
	.byte	W96
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
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
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
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
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
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W48
	.byte	FINE

@**************** Track 4 (Midi-Chn.3) ****************@

mus_umbrella_rihanna_4:
	.byte		VOL   , 127*mus_umbrella_rihanna_mvl/mxv
	.byte	KEYSH , mus_umbrella_rihanna_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
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
	.byte	W48
	.byte		N96   , Cs2 , v040
	.byte	W48
@ 038   ----------------------------------------
	.byte	W48
	.byte		        Gs2 
	.byte	W48
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W48
	.byte		        Fs2 
	.byte	W48
@ 041   ----------------------------------------
	.byte	W96
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
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
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
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
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
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W48
	.byte	FINE

@**************** Track 5 (Midi-Chn.4) ****************@

mus_umbrella_rihanna_5:
	.byte		VOL   , 127*mus_umbrella_rihanna_mvl/mxv
	.byte	KEYSH , mus_umbrella_rihanna_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
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
	.byte	W48
	.byte		N96   , Gs2 , v040
	.byte	W48
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
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
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
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
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
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W48
	.byte	FINE

@**************** Track 6 (Midi-Chn.10) ****************@

mus_umbrella_rihanna_6:
	.byte		VOL   , 127*mus_umbrella_rihanna_mvl/mxv
	.byte	KEYSH , mus_umbrella_rihanna_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 118
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
	.byte	W96
@ 033   ----------------------------------------
	.byte	W84
	.byte		N06   , Cs2 , v052
	.byte		N06   
	.byte	W12
@ 034   ----------------------------------------
	.byte	W06
	.byte		        Dn2 
	.byte	W90
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W24
	.byte		N12   , As4 , v040
	.byte	W30
	.byte		N06   , Cn3 , v052
	.byte	W42
@ 040   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 041   ----------------------------------------
	.byte	W60
	.byte		N06   
	.byte		N06   
	.byte		N06   
	.byte		N06   
	.byte	W36
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
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
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
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
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
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W48
	.byte	FINE

@******************************************************@
	.align	2

mus_umbrella_rihanna:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_umbrella_rihanna_pri	@ Priority
	.byte	mus_umbrella_rihanna_rev	@ Reverb.

	.word	mus_umbrella_rihanna_grp

	.word	mus_umbrella_rihanna_1
	.word	mus_umbrella_rihanna_2
	.word	mus_umbrella_rihanna_3
	.word	mus_umbrella_rihanna_4
	.word	mus_umbrella_rihanna_5
	.word	mus_umbrella_rihanna_6

	.end
