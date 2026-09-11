	.include "MPlayDef.s"

	.equ	mus_umbrella_rihanna_grp, voicegroup_diva_pop
	.equ	mus_umbrella_rihanna_pri, 0
	.equ	mus_umbrella_rihanna_rev, reverb_set+12
	.equ	mus_umbrella_rihanna_mvl, 90
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
	.byte		VOICE , 1
	.byte	W48
	.byte		N12   , Fs1 , v056
	.byte	W48
@ 001   ----------------------------------------
	.byte	W48
	.byte		        Gs1 
	.byte	W48
@ 002   ----------------------------------------
	.byte	W48
	.byte		        Fn1 
	.byte	W48
@ 003   ----------------------------------------
	.byte	W48
	.byte		        As1 
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
	.byte		        Fs1 
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
	.byte		        Gs1 
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
	.byte		        Fn1 , v060
	.byte	W48
@ 007   ----------------------------------------
	.byte	W48
	.byte		        As1 
	.byte	W48
@ 008   ----------------------------------------
	.byte	W48
	.byte		N96   , Fs1 
	.byte	W48
@ 009   ----------------------------------------
	.byte	W48
	.byte		        Cs2 , v056
	.byte	W48
@ 010   ----------------------------------------
	.byte	W48
	.byte		        Gs1 , v060
	.byte	W48
@ 011   ----------------------------------------
	.byte	W48
	.byte		        As1 , v056
	.byte	W48
@ 012   ----------------------------------------
	.byte	W48
	.byte		        Fs1 
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
	.byte		        Cs2 
	.byte	W48
@ 014   ----------------------------------------
	.byte	W48
	.byte		        Gs1 
	.byte	W48
@ 015   ----------------------------------------
	.byte	W48
	.byte		        As1 
	.byte	W48
@ 016   ----------------------------------------
	.byte	W48
	.byte		N12   , Fs1 , v060
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
	.byte		        Gs1 , v056
	.byte	W48
@ 018   ----------------------------------------
	.byte	W48
	.byte		        Fn1 
	.byte	W48
@ 019   ----------------------------------------
	.byte	W48
	.byte		        As1 
	.byte	W48
@ 020   ----------------------------------------
	.byte	W48
	.byte		        Fs1 
	.byte	W48
@ 021   ----------------------------------------
	.byte	W48
	.byte		        Gs1 
	.byte	W48
@ 022   ----------------------------------------
	.byte	W48
	.byte		        Fn1 
	.byte	W48
@ 023   ----------------------------------------
	.byte	W48
	.byte		        As1 
	.byte	W48
@ 024   ----------------------------------------
	.byte	W48
	.byte		N06   , Fs1 , v060
	.byte	W48
@ 025   ----------------------------------------
	.byte	W48
	.byte		        Gs1 , v056
	.byte	W48
@ 026   ----------------------------------------
	.byte	W48
	.byte		        Fn1 , v060
	.byte	W48
@ 027   ----------------------------------------
	.byte	W48
	.byte		        As1 , v056
	.byte	W48
@ 028   ----------------------------------------
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn2 , v060
	.byte	W12
	.byte		        Cn2 , v056
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gs1 , v060
	.byte	W54
@ 029   ----------------------------------------
	.byte	W48
	.byte		N12   
	.byte	W48
@ 030   ----------------------------------------
	.byte	W48
	.byte		        Fn1 , v056
	.byte	W48
@ 031   ----------------------------------------
	.byte	W42
	.byte		N06   
	.byte	W06
	.byte		N18   , As1 
	.byte	W18
	.byte		        Cn2 , v060
	.byte	W30
@ 032   ----------------------------------------
	.byte	W48
	.byte		N96   , Fs1 , v056
	.byte	W48
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W48
	.byte		        Gs1 , v060
	.byte	W48
@ 035   ----------------------------------------
	.byte	W48
	.byte		        As1 , v056
	.byte	W48
@ 036   ----------------------------------------
	.byte	W48
	.byte		        Fs1 
	.byte	W48
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W48
	.byte		N18   , As1 , v060
	.byte		N18   , As1 , v056
	.byte	W18
	.byte		N12   , Cn2 
	.byte		N12   
	.byte	W30
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W48
	.byte		N96   , Fn1 , v060
	.byte		N96   
	.byte	W48
@ 043   ----------------------------------------
mus_umbrella_rihanna_1_043:
	.byte	W48
	.byte		N90   , As1 , v056
	.byte		N90   , As1 , v060
	.byte	W48
	.byte	PEND
@ 044   ----------------------------------------
	.byte	W48
	.byte		N96   , Fs1 , v056
	.byte	W48
@ 045   ----------------------------------------
	.byte	W48
	.byte		        Gs1 
	.byte	W48
@ 046   ----------------------------------------
	.byte	W48
	.byte		        Fn1 , v060
	.byte		N96   , Fn1 , v056
	.byte	W48
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_1_043
@ 048   ----------------------------------------
	.byte	W48
	.byte		N84   , Bn1 , v048
	.byte	W48
@ 049   ----------------------------------------
	.byte	W36
	.byte		N06   , Ds2 , v036
	.byte	W06
	.byte		        Fn1 , v052
	.byte	W06
	.byte		N90   , Fs1 , v048
	.byte	W48
@ 050   ----------------------------------------
	.byte	W48
	.byte		TIE   , Cs2 , v052
	.byte	W48
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte		N18   , Gs1 , v048
	.byte		N18   , Gs1 , v052
	.byte	W18
	.byte		        As1 
	.byte		N18   
	.byte	W18
	.byte		N84   , Bn1 , v048
	.byte		N84   
	.byte	W48
@ 053   ----------------------------------------
	.byte	W36
	.byte		N06   , Ds2 , v036
	.byte	W06
	.byte		        Fn1 , v052
	.byte	W06
	.byte		N96   , Fs1 , v048
	.byte	W48
@ 054   ----------------------------------------
	.byte	W48
	.byte		N18   , Fn1 , v060
	.byte		N18   , Fn1 , v052
	.byte	W18
	.byte		        An1 , v056
	.byte	W18
	.byte		        Cn2 , v052
	.byte		N18   , Cn2 , v056
	.byte	W12
@ 055   ----------------------------------------
	.byte	W60
	.byte		N12   , Cn2 , v048
	.byte	W06
	.byte		N06   , Cn2 , v056
	.byte	W06
	.byte		N12   , As1 
	.byte	W12
	.byte		N54   , An1 , v060
	.byte	W12
@ 056   ----------------------------------------
	.byte	W48
	.byte		N96   , Fs1 , v056
	.byte	W48
@ 057   ----------------------------------------
	.byte	W48
	.byte		        Gs1 
	.byte	W48
@ 058   ----------------------------------------
	.byte	W48
	.byte		        Fn1 
	.byte	W48
@ 059   ----------------------------------------
	.byte	W48
	.byte		        As1 
	.byte	W48
@ 060   ----------------------------------------
	.byte	W48
	.byte		        Fs1 
	.byte	W48
@ 061   ----------------------------------------
	.byte	W48
	.byte		        Gs1 
	.byte	W48
@ 062   ----------------------------------------
	.byte	W48
	.byte		        Fn1 , v060
	.byte	W48
@ 063   ----------------------------------------
	.byte	W48
	.byte		        As1 , v056
	.byte	W48
@ 064   ----------------------------------------
	.byte	W48
	.byte		        Fs1 
	.byte	W48
@ 065   ----------------------------------------
	.byte	W48
	.byte		        Cs2 , v060
	.byte	W48
@ 066   ----------------------------------------
	.byte	W48
	.byte		        Gs1 , v056
	.byte	W48
@ 067   ----------------------------------------
	.byte	W48
	.byte		        As1 
	.byte	W48
@ 068   ----------------------------------------
	.byte	W48
	.byte		        Fs1 
	.byte	W48
@ 069   ----------------------------------------
	.byte	W48
	.byte		        Cs2 
	.byte	W48
@ 070   ----------------------------------------
	.byte	W48
	.byte		        Gs1 
	.byte	W48
@ 071   ----------------------------------------
	.byte	W48
	.byte		        As1 
	.byte	W48
@ 072   ----------------------------------------
	.byte	W48
	.byte		        Fs1 
	.byte	W48
@ 073   ----------------------------------------
	.byte	W48
	.byte		        Cs2 
	.byte	W48
@ 074   ----------------------------------------
mus_umbrella_rihanna_1_074:
	.byte	W48
	.byte		N96   , Gs1 , v056
	.byte		N96   
	.byte	W48
	.byte	PEND
@ 075   ----------------------------------------
	.byte	W48
	.byte		        As1 
	.byte		N96   , As1 , v060
	.byte	W48
@ 076   ----------------------------------------
	.byte	W48
	.byte		        Fs1 
	.byte	W48
@ 077   ----------------------------------------
	.byte	W48
	.byte		        Cs2 
	.byte	W48
@ 078   ----------------------------------------
mus_umbrella_rihanna_1_078:
	.byte	W48
	.byte		N96   , Gs1 , v060
	.byte		N96   
	.byte	W48
	.byte	PEND
@ 079   ----------------------------------------
	.byte	W48
	.byte		N48   , As1 , v056
	.byte		N48   , As1 , v060
	.byte	W48
@ 080   ----------------------------------------
	.byte		N18   , Cn2 , v056
	.byte	W48
	.byte		N96   , Fs1 
	.byte	W48
@ 081   ----------------------------------------
	.byte	W48
	.byte		        Cs2 
	.byte	W48
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_1_078
@ 083   ----------------------------------------
	.byte	W48
	.byte		N96   , As1 , v056
	.byte		N96   
	.byte	W48
@ 084   ----------------------------------------
	.byte	W48
	.byte		        Fs1 
	.byte	W48
@ 085   ----------------------------------------
	.byte	W48
	.byte		        Cs2 
	.byte	W48
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_1_074
@ 087   ----------------------------------------
	.byte	W48
	.byte		N18   , Gs1 , v056
	.byte		N18   , Gs1 , v060
	.byte	W24
	.byte		N06   , As1 
	.byte		N06   
	.byte	W12
	.byte		TIE   
	.byte		TIE   
	.byte	W12
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W36
	.byte		EOT   
	.byte		EOT   
	.byte	W06
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_umbrella_rihanna_2:
	.byte		VOL   , 127*mus_umbrella_rihanna_mvl/mxv
	.byte	KEYSH , mus_umbrella_rihanna_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W72
	.byte		N30   , As3 , v052
	.byte	W24
@ 004   ----------------------------------------
	.byte	W24
	.byte		N12   , As3 , v048
	.byte	W12
	.byte		N12   
	.byte	W60
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W72
	.byte		N36   , As3 , v052
	.byte	W24
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W66
	.byte		N06   , As3 , v048
	.byte	W24
	.byte		N06   
	.byte	W06
@ 012   ----------------------------------------
	.byte	W48
	.byte		N18   
	.byte	W48
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W78
	.byte		N06   , As3 , v052
	.byte	W18
@ 016   ----------------------------------------
	.byte	W06
	.byte		        As3 , v048
	.byte	W42
	.byte		N18   
	.byte	W30
	.byte		N18   
	.byte	W18
@ 017   ----------------------------------------
	.byte	W06
	.byte		N12   
	.byte	W90
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W48
	.byte		N18   , As3 , v052
	.byte	W30
	.byte		N12   
	.byte	W18
@ 021   ----------------------------------------
	.byte	W06
	.byte		        As3 , v048
	.byte	W90
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W72
	.byte		N18   
	.byte	W24
@ 024   ----------------------------------------
	.byte		        As3 , v052
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W60
	.byte		N06   , As3 , v048
	.byte	W06
	.byte		N36   
	.byte	W30
@ 028   ----------------------------------------
	.byte	W24
	.byte		N06   , Cs3 
	.byte	W72
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		N18   
	.byte	W09
@ 032   ----------------------------------------
	.byte		N24   , As3 , v052
	.byte	W12
	.byte		N36   , Fn3 
	.byte	W36
	.byte		N72   , Fs3 , v048
	.byte		N72   
	.byte	W48
@ 033   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N90   , Cs3 
	.byte		N90   , Cs3 , v052
	.byte	W48
@ 034   ----------------------------------------
mus_umbrella_rihanna_2_034:
	.byte	W48
	.byte		N96   , Gs3 , v048
	.byte		N96   
	.byte	W48
	.byte	PEND
@ 035   ----------------------------------------
	.byte	W48
	.byte		N24   , As3 , v052
	.byte		N24   , As3 , v048
	.byte	W18
	.byte		N06   , As3 , v052
	.byte	W24
	.byte		        As3 , v048
	.byte	W06
@ 036   ----------------------------------------
	.byte	W48
	.byte		N72   , Fs3 
	.byte		N72   , Fs3 , v052
	.byte		N18   , As3 , v048
	.byte	W48
@ 037   ----------------------------------------
	.byte	W24
	.byte		N24   , Fs3 , v052
	.byte	W24
	.byte		N90   , Cs3 , v048
	.byte		N90   , Cs3 , v052
	.byte	W48
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_2_034
@ 039   ----------------------------------------
	.byte	W48
	.byte		N36   , As3 , v052
	.byte	W30
	.byte		N06   , As3 , v048
	.byte	W06
	.byte		N18   , Cs3 , v052
	.byte		N18   , Cs3 , v048
	.byte	W12
@ 040   ----------------------------------------
	.byte	W06
	.byte		N06   , As3 
	.byte	W06
	.byte		N24   , Fn3 
	.byte		N24   
	.byte	W36
	.byte		N96   , Fs3 , v052
	.byte		N18   , As3 
	.byte	W30
	.byte		N18   
	.byte	W18
@ 041   ----------------------------------------
mus_umbrella_rihanna_2_041:
	.byte	W06
	.byte		N12   , As3 , v048
	.byte	W42
	.byte		N72   , Gs3 , v052
	.byte	W48
	.byte	PEND
@ 042   ----------------------------------------
	.byte	W24
	.byte		N24   , Cs3 
	.byte	W72
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W48
	.byte		N96   , Fs3 , v048
	.byte		N18   , As3 , v052
	.byte	W30
	.byte		N12   , As3 , v048
	.byte	W18
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_2_041
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W72
	.byte		N18   , As3 , v052
	.byte	W24
@ 048   ----------------------------------------
	.byte		N18   
	.byte	W48
	.byte		N84   , Bn3 , v032
	.byte	W48
@ 049   ----------------------------------------
	.byte	W36
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N90   , Fs3 
	.byte	W48
@ 050   ----------------------------------------
	.byte	W48
	.byte		TIE   , Cs3 , v040
	.byte		TIE   , Gs3 , v044
	.byte	W48
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W12
	.byte		EOT   , Cs3 
	.byte		        Gs3 
	.byte		N18   , Ds3 , v040
	.byte		N18   , Gs3 , v044
	.byte		N18   , Gs3 , v032
	.byte		N18   
	.byte	W18
	.byte		        Fn3 , v044
	.byte		N18   , As3 , v032
	.byte		N18   
	.byte		N18   , As3 , v044
	.byte	W18
	.byte		N84   , Bn3 , v032
	.byte	W48
@ 053   ----------------------------------------
	.byte	W36
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		TIE   , Fs3 
	.byte	W48
@ 054   ----------------------------------------
	.byte	W48
	.byte		N18   , Fn3 , v048
	.byte		N18   
	.byte	W06
	.byte		EOT   , Fs3 
	.byte	W12
	.byte		N18   , An3 
	.byte		N18   
	.byte	W30
@ 055   ----------------------------------------
	.byte	W06
	.byte		        Fs3 , v052
	.byte	W18
	.byte		        Fn3 , v048
	.byte		N18   , Fn3 , v044
	.byte	W18
	.byte		N06   , Ds3 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs3 , v052
	.byte	W18
	.byte		        As3 
	.byte		N12   , As3 , v048
	.byte	W12
	.byte		N54   , An3 
	.byte		N54   
	.byte	W12
@ 056   ----------------------------------------
	.byte	W48
	.byte		N96   , Fs3 , v052
	.byte	W48
@ 057   ----------------------------------------
	.byte	W48
	.byte		        Gs3 , v048
	.byte	W48
@ 058   ----------------------------------------
	.byte	W48
	.byte		        Fn3 
	.byte	W48
@ 059   ----------------------------------------
	.byte	W48
	.byte		N24   , As3 , v052
	.byte	W18
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W06
@ 060   ----------------------------------------
	.byte	W48
	.byte		N96   , Fs3 
	.byte		N18   , As3 , v048
	.byte	W48
@ 061   ----------------------------------------
	.byte	W48
	.byte		N96   , Gs3 
	.byte	W48
@ 062   ----------------------------------------
	.byte	W48
	.byte		        Fn3 , v052
	.byte	W48
@ 063   ----------------------------------------
	.byte	W48
	.byte		N36   , As3 
	.byte	W30
	.byte		N06   
	.byte	W18
@ 064   ----------------------------------------
	.byte	W06
	.byte		N06   
	.byte	W42
	.byte		N96   , Fs3 
	.byte		N18   , As3 
	.byte	W30
	.byte		N12   , As3 , v048
	.byte	W18
@ 065   ----------------------------------------
	.byte	W06
	.byte		        As3 , v052
	.byte	W42
	.byte		N96   , Gs3 
	.byte	W48
@ 066   ----------------------------------------
	.byte	W36
	.byte		N06   , Fn3 , v044
	.byte	W06
	.byte		        Fs3 , v048
	.byte	W06
	.byte		N90   , Gs3 
	.byte		N90   , Gs3 , v044
	.byte	W48
@ 067   ----------------------------------------
	.byte	W48
	.byte		N84   , As3 , v040
	.byte		N84   , As3 , v048
	.byte	W48
@ 068   ----------------------------------------
	.byte	W36
	.byte		N06   , Fn3 , v044
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N84   , Fs3 , v048
	.byte		N84   , Fs3 , v044
	.byte		N18   , As3 , v052
	.byte	W30
	.byte		        As3 , v048
	.byte	W18
@ 069   ----------------------------------------
	.byte	W06
	.byte		N12   
	.byte	W42
	.byte		N96   , Gs3 
	.byte	W48
@ 070   ----------------------------------------
	.byte	W48
	.byte		N96   
	.byte	W48
@ 071   ----------------------------------------
	.byte	W48
	.byte		N42   , As3 , v052
	.byte	W24
	.byte		N18   , As3 , v048
	.byte	W24
@ 072   ----------------------------------------
	.byte		N18   
	.byte	W48
	.byte		N96   , Fs3 
	.byte		N96   , As3 , v044
	.byte	W48
@ 073   ----------------------------------------
	.byte	W48
	.byte		        Cs3 , v048
	.byte		N96   , Gs3 , v044
	.byte	W48
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W48
	.byte		        As3 
	.byte	W48
@ 076   ----------------------------------------
	.byte	W48
	.byte		        Fs3 , v052
	.byte		N96   , As3 , v044
	.byte	W48
@ 077   ----------------------------------------
	.byte	W48
	.byte		        Cs3 , v052
	.byte		N96   , Gs3 , v044
	.byte	W48
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W48
	.byte		N84   , As3 
	.byte	W48
@ 080   ----------------------------------------
	.byte	W18
	.byte		N18   , Cs3 , v048
	.byte	W18
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N96   , Fs3 , v052
	.byte	W48
@ 081   ----------------------------------------
	.byte	W48
	.byte		        Cs3 
	.byte	W48
@ 082   ----------------------------------------
	.byte	W48
	.byte		        Gs3 , v044
	.byte	W48
@ 083   ----------------------------------------
	.byte	W48
	.byte		N72   , As3 
	.byte	W48
@ 084   ----------------------------------------
	.byte	W48
	.byte		N96   , Fs3 , v048
	.byte	W48
@ 085   ----------------------------------------
	.byte	W48
	.byte		        Cs3 
	.byte	W48
@ 086   ----------------------------------------
	.byte	W48
	.byte		        Gs3 , v044
	.byte	W48
@ 087   ----------------------------------------
	.byte	W48
	.byte		N18   
	.byte	W24
	.byte		N06   , As3 , v040
	.byte	W12
	.byte		TIE   
	.byte	W12
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W36
	.byte		EOT   
	.byte	W06
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_umbrella_rihanna_3:
	.byte		VOL   , 127*mus_umbrella_rihanna_mvl/mxv
	.byte	KEYSH , mus_umbrella_rihanna_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 7
	.byte	W12
	.byte		N06   , Cs4 , v040
	.byte	W12
	.byte		N12   , As4 , v052
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N30   
	.byte	W30
@ 001   ----------------------------------------
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Ds4 , v048
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N36   , Fn4 , v052
	.byte	W30
@ 002   ----------------------------------------
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Cs4 , v048
	.byte	W12
	.byte		N06   , Cs4 , v052
	.byte	W12
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N18   , Fn4 , v048
	.byte	W18
	.byte		N24   , Ds4 , v052
	.byte	W12
@ 003   ----------------------------------------
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds4 , v056
	.byte	W12
	.byte		N06   , Cs4 , v052
	.byte	W06
	.byte		N06   
	.byte	W30
@ 004   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		        Ds4 
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W06
	.byte		N36   , Fn4 , v052
	.byte	W30
@ 005   ----------------------------------------
	.byte	W12
	.byte		N12   , Cs4 , v056
	.byte	W12
	.byte		        Cs4 , v048
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds4 , v052
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W06
	.byte		N30   , Fn4 , v052
	.byte	W30
@ 006   ----------------------------------------
	.byte	W06
	.byte		N06   , Cs4 , v048
	.byte	W06
	.byte		N12   , Cs4 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N06   , Cs4 , v048
	.byte	W06
	.byte		N30   , Cn4 , v056
	.byte	W30
@ 007   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn4 , v052
	.byte	W12
	.byte		N12   
	.byte		N12   , As4 , v048
	.byte		N12   , As4 , v052
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W42
@ 008   ----------------------------------------
	.byte	W24
	.byte		N06   , Gs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fs4 , v056
	.byte	W12
@ 009   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Fs4 , v052
	.byte	W12
	.byte		        Fs4 , v056
	.byte	W12
	.byte		N06   , Gs4 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   , Fn4 
	.byte	W24
	.byte		N12   , Fn4 , v056
	.byte	W12
	.byte		        Fn4 , v052
	.byte	W12
@ 010   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N12   , Fn4 , v056
	.byte	W12
	.byte		N06   , Fs4 , v052
	.byte	W06
	.byte		        Fn4 , v048
	.byte	W06
	.byte		N18   , Ds4 , v052
	.byte		N12   , As4 
	.byte	W24
	.byte		N06   , Ds4 
	.byte	W12
	.byte		N12   
	.byte		N06   , As4 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   , Fn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W06
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W12
	.byte		N12   , Cs4 , v048
	.byte	W12
	.byte		N06   , Cs4 , v052
	.byte		N06   , As4 
	.byte	W12
@ 012   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N12   , Ds4 
	.byte		N12   , As4 , v048
	.byte	W12
	.byte		N06   , Cs4 , v056
	.byte	W06
	.byte		        Cs4 , v048
	.byte	W30
	.byte		N12   , Fs4 , v056
	.byte	W12
	.byte		N06   , Fs4 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
@ 013   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Gs4 , v048
	.byte	W06
	.byte		N18   , Fn4 , v052
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 014   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N06   , Fn4 , v056
	.byte	W12
	.byte		        Fn4 , v052
	.byte	W12
	.byte		        Fs4 , v048
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N18   , Ds4 , v052
	.byte		N12   , As4 
	.byte	W24
	.byte		N06   , Ds4 , v056
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , As4 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Ds4 , v056
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		        Ds4 , v048
	.byte	W12
	.byte		N12   , Fn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , Cs4 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds4 
	.byte		N12   , As4 
	.byte	W24
	.byte		N06   , Cs4 
	.byte	W12
	.byte		N12   
	.byte		N06   , As4 
	.byte	W12
@ 016   ----------------------------------------
mus_umbrella_rihanna_3_016:
	.byte		N06   , Cs4 , v052
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   , Ds4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N06   
	.byte	W30
	.byte		N06   
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
mus_umbrella_rihanna_3_017:
	.byte		N06   , Cs4 , v052
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
	.byte		N06   , Cs4 , v048
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		        Cs4 , v048
	.byte	W12
	.byte		N12   , Ds4 , v052
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N36   , Cs4 , v056
	.byte	W06
	.byte		N18   , Cn4 , v052
	.byte		N12   , As4 
	.byte	W24
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W06
	.byte		N06   , As4 
	.byte	W12
@ 019   ----------------------------------------
	.byte		        Cs4 , v048
	.byte	W06
	.byte		N12   , Cn4 , v052
	.byte	W18
	.byte		N18   , Cs4 
	.byte		N12   , As4 , v056
	.byte	W24
	.byte		N18   , Cs4 
	.byte		N12   , As4 
	.byte	W24
	.byte		N18   , Cs4 , v052
	.byte	W12
	.byte		N06   , As4 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N12   , Ds4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N06   
	.byte	W30
	.byte		N06   
	.byte	W24
@ 021   ----------------------------------------
	.byte		N06   
	.byte	W24
	.byte		N18   , Cs4 , v048
	.byte	W24
	.byte		        Cs4 , v052
	.byte	W24
	.byte		        Cn4 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N06   , Cs4 , v048
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		N18   , Cn4 , v052
	.byte		N12   , As4 , v048
	.byte	W24
	.byte		N06   , Cs4 , v056
	.byte	W06
	.byte		N12   , Cn4 , v052
	.byte	W06
	.byte		N06   , As4 
	.byte	W12
@ 023   ----------------------------------------
	.byte		        Cs4 , v048
	.byte	W06
	.byte		N12   , Cn4 , v052
	.byte	W18
	.byte		N18   , Cs4 
	.byte		N12   , As4 
	.byte	W24
	.byte		N18   , Cn4 , v048
	.byte		N12   , As4 , v052
	.byte	W36
	.byte		N06   
	.byte	W12
@ 024   ----------------------------------------
	.byte	W24
	.byte		N12   , Cn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 , v048
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N06   , Fn4 , v052
	.byte	W06
	.byte		N36   
	.byte	W30
@ 025   ----------------------------------------
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W06
	.byte		N30   , Fn4 , v052
	.byte	W30
@ 026   ----------------------------------------
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N12   , Ds4 , v056
	.byte	W12
	.byte		N06   , Cn4 , v052
	.byte	W06
	.byte		N30   
	.byte	W30
@ 027   ----------------------------------------
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W48
@ 028   ----------------------------------------
	.byte		N06   , As4 , v048
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		N12   , Cs4 , v048
	.byte		N06   , As4 
	.byte	W12
	.byte		        Cs4 , v052
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N36   
	.byte	W30
@ 029   ----------------------------------------
	.byte	W12
	.byte		N06   , Cs4 , v048
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		N12   , Cs4 , v048
	.byte	W12
	.byte		N06   , Cs4 , v052
	.byte	W12
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N48   , Fn4 , v048
	.byte	W06
	.byte		N42   , Fn4 , v052
	.byte	W30
@ 030   ----------------------------------------
	.byte	W24
	.byte		N06   , Cs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N42   , Cn4 , v056
	.byte	W30
@ 031   ----------------------------------------
	.byte	W18
	.byte		N12   , Cn4 , v048
	.byte	W06
	.byte		N06   , Cn4 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N24   , Ds4 
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		N12   , Cs4 , v048
	.byte	W12
@ 032   ----------------------------------------
	.byte	W24
	.byte		N06   , Gs4 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , Fs4 , v056
	.byte	W24
	.byte		N06   , Fs4 , v052
	.byte	W06
	.byte		        Fs4 , v048
	.byte	W06
	.byte		N12   , Fs4 , v056
	.byte	W12
@ 033   ----------------------------------------
	.byte		        Fs4 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs4 , v040
	.byte		N12   , Fs4 , v048
	.byte	W12
	.byte		N06   , Fn4 , v044
	.byte		N06   , Gs4 , v052
	.byte	W06
	.byte		        Fn4 , v032
	.byte		N06   , Gs4 , v052
	.byte	W06
	.byte		N18   , Cs4 , v044
	.byte		N18   , Fn4 , v048
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 034   ----------------------------------------
	.byte		        Fn4 , v052
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   , Cs4 , v036
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		N06   , Cs4 , v036
	.byte		N06   , Fs4 , v056
	.byte	W06
	.byte		        Cs4 , v036
	.byte		N06   , Fn4 , v052
	.byte	W06
	.byte		N18   , Cn4 , v036
	.byte		N18   , Ds4 , v052
	.byte		N12   , As4 
	.byte	W24
	.byte		N06   , Ds4 
	.byte	W12
	.byte		N12   
	.byte		N06   , As4 
	.byte	W12
@ 035   ----------------------------------------
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   , Fn4 
	.byte		N12   , As4 , v048
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N18   , Ds4 , v056
	.byte	W06
	.byte		N12   , As4 , v052
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte		N06   , As4 
	.byte	W12
@ 036   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N12   , Ds4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N06   
	.byte	W30
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , Fs4 , v048
	.byte	W06
	.byte		        Fs4 , v052
	.byte	W06
@ 037   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs4 , v040
	.byte		N12   , Fs4 , v052
	.byte	W12
	.byte		N06   , Fn4 , v044
	.byte		N06   , Gs4 , v048
	.byte	W06
	.byte		        Fn4 , v032
	.byte		N06   , Gs4 , v052
	.byte	W06
	.byte		N18   , Cs4 , v044
	.byte		N18   , Fn4 , v052
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 038   ----------------------------------------
	.byte		        Fn4 , v048
	.byte	W12
	.byte		N06   , Fn4 , v052
	.byte	W12
	.byte		N12   , Cs4 , v036
	.byte		N06   , Fn4 , v052
	.byte	W12
	.byte		        Cs4 , v036
	.byte		N06   , Fs4 , v052
	.byte	W06
	.byte		        Cs4 , v036
	.byte		N06   , Fn4 , v052
	.byte	W06
	.byte		N18   , Cn4 , v036
	.byte		N18   , Ds4 , v052
	.byte		N12   , As4 
	.byte	W24
	.byte		N06   , Ds4 , v056
	.byte	W06
	.byte		        Cs4 , v048
	.byte	W06
	.byte		        Ds4 , v052
	.byte		N06   , As4 
	.byte	W12
@ 039   ----------------------------------------
	.byte		        Ds4 , v048
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		        Ds4 
	.byte	W12
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds4 
	.byte		N12   , As4 , v048
	.byte	W24
	.byte		N06   , Cs4 , v052
	.byte	W12
	.byte		N12   , Cs4 , v048
	.byte		N06   , As4 , v052
	.byte	W12
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_3_016
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_3_017
@ 042   ----------------------------------------
	.byte		N06   , Cs4 , v048
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N36   , Cs4 , v048
	.byte	W06
	.byte		N18   , Cn4 , v052
	.byte		N12   , As4 
	.byte	W24
	.byte		N06   , Cs4 , v048
	.byte	W06
	.byte		N12   , Cn4 , v052
	.byte	W06
	.byte		N06   , As4 , v048
	.byte	W12
@ 043   ----------------------------------------
	.byte		        Cs4 , v052
	.byte	W06
	.byte		N12   , Cn4 , v048
	.byte	W18
	.byte		N18   , Cs4 , v052
	.byte		N12   , As4 
	.byte	W24
	.byte		N18   , Cs4 
	.byte		N12   , As4 
	.byte	W24
	.byte		N18   , Cs4 
	.byte	W12
	.byte		N06   , As4 , v048
	.byte	W12
@ 044   ----------------------------------------
	.byte		        Cs4 , v052
	.byte	W06
	.byte		        Cs4 , v048
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W12
	.byte		N12   , Ds4 , v056
	.byte		N12   , As4 , v052
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N06   
	.byte	W30
	.byte		N06   
	.byte	W24
@ 045   ----------------------------------------
	.byte		        Cs4 , v048
	.byte	W24
	.byte		N18   , Cs4 , v052
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		        Cn4 
	.byte	W24
@ 046   ----------------------------------------
	.byte		N06   , Cs4 , v056
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte		N06   , Ds4 , v056
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N06   
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		N18   , Cn4 , v052
	.byte		N12   , As4 , v056
	.byte	W24
	.byte		N06   , Cs4 , v048
	.byte	W06
	.byte		N12   , Cn4 , v052
	.byte	W06
	.byte		N06   , As4 
	.byte	W12
@ 047   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , Cn4 , v048
	.byte	W18
	.byte		N18   , Cs4 , v052
	.byte		N12   , As4 , v048
	.byte	W24
	.byte		N18   , Cn4 
	.byte		N12   , As4 , v052
	.byte	W36
	.byte		N06   
	.byte	W12
@ 048   ----------------------------------------
	.byte	W24
	.byte		N12   , Cn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N90   , Ds4 , v048
	.byte		N06   , Fs4 , v052
	.byte		N06   , Fs4 , v032
	.byte		N06   , Fs4 , v044
	.byte		N84   , Bn4 , v032
	.byte		N84   
	.byte		N84   , Bn4 , v044
	.byte	W12
	.byte		N06   , Fs4 , v052
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
@ 049   ----------------------------------------
	.byte	W06
	.byte		        Fs4 , v048
	.byte	W12
	.byte		N18   , Fs4 , v052
	.byte	W30
	.byte		N90   , Cs4 , v044
	.byte		N06   , Fs4 , v052
	.byte		N06   , Fs4 , v044
	.byte		N90   , As4 , v032
	.byte		N90   , As4 , v044
	.byte	W12
	.byte		N06   , Fs4 , v052
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
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte		TIE   , Cs4 , v044
	.byte		TIE   , Cs4 , v032
	.byte		TIE   
	.byte		N24   , Fs4 , v052
	.byte		N24   , Fs4 , v032
	.byte	W24
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		N12   
	.byte		N12   , Fn4 , v032
	.byte	W12
@ 051   ----------------------------------------
	.byte		        Fn4 , v052
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W24
	.byte		N06   , Ds4 
	.byte	W12
	.byte		N30   
	.byte	W12
@ 052   ----------------------------------------
	.byte	W06
	.byte		EOT   , Cs4 
	.byte		EOT   
	.byte		EOT   
	.byte	W06
	.byte		N06   , Ds4 , v032
	.byte		N18   , Gs4 
	.byte	W12
	.byte		N06   , Ds4 , v056
	.byte	W06
	.byte		        Ds4 , v032
	.byte		N18   , As4 
	.byte	W06
	.byte		N12   , Ds4 , v048
	.byte	W12
	.byte		N12   
	.byte		N36   , Fs4 , v044
	.byte		N36   , Fs4 , v032
	.byte		N78   , Bn4 , v044
	.byte		N78   , Bn4 , v032
	.byte		N78   
	.byte	W12
	.byte		N12   , Ds4 , v056
	.byte	W12
	.byte		        Fs4 , v048
	.byte	W12
	.byte		        Fs4 , v052
	.byte	W12
@ 053   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs4 , v056
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W12
	.byte		N96   , Cs4 , v048
	.byte		N24   , Fs4 , v044
	.byte		N24   , Fs4 , v052
	.byte		N96   , As4 , v032
	.byte		N96   , As4 , v044
	.byte	W24
	.byte		N12   , Fs4 , v052
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
	.byte		N54   , Cn4 , v048
	.byte		N30   , Ds4 
	.byte		N18   , Fn4 , v052
	.byte		N18   , Fn4 , v044
	.byte		N18   , Fn4 , v048
	.byte		N18   , Fn4 , v052
	.byte		N18   , Fn4 , v048
	.byte		N30   , An4 
	.byte	W18
	.byte		N12   , An4 , v044
	.byte		N12   , An4 , v048
	.byte	W18
	.byte		N18   , Cn4 , v052
	.byte		N18   
	.byte		N30   , Ds4 , v044
	.byte		N30   , Fn4 
	.byte		N30   , An4 
	.byte	W12
@ 055   ----------------------------------------
	.byte	W06
	.byte		N18   , Fs4 , v052
	.byte		N18   , Fs4 , v048
	.byte	W18
	.byte		N24   , Ds4 
	.byte		N18   , Fn4 , v052
	.byte		N18   
	.byte		N18   , Fn4 , v048
	.byte		N30   , An4 , v044
	.byte	W18
	.byte		N06   , Ds4 , v052
	.byte		N06   , Ds4 , v048
	.byte	W06
	.byte		        Ds4 , v052
	.byte		N06   
	.byte		N06   , An4 
	.byte	W06
	.byte		N12   , Cs4 , v048
	.byte		N12   , Cs4 , v052
	.byte	W06
	.byte		N78   , Ds4 , v044
	.byte		N78   , Fn4 
	.byte		N60   , An4 
	.byte	W06
	.byte		N06   , Cn4 , v048
	.byte		N06   
	.byte	W06
	.byte		N12   , As4 , v044
	.byte		N12   , As4 , v056
	.byte	W12
	.byte		N36   , An4 , v044
	.byte		N36   , An4 , v052
	.byte	W12
@ 056   ----------------------------------------
	.byte	W24
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , As4 , v056
	.byte	W12
	.byte		N96   , Cs4 , v048
	.byte		N30   , Fs4 , v044
	.byte	W24
	.byte		N06   , Fs4 , v056
	.byte	W06
	.byte		        Fs4 , v052
	.byte	W06
	.byte		N12   , Fs4 , v056
	.byte	W12
@ 057   ----------------------------------------
	.byte		        Fs4 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs4 , v056
	.byte	W12
	.byte		N06   , Gs4 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   , Fn4 , v044
	.byte		N18   , Fn4 , v048
	.byte		N96   , Gs4 , v044
	.byte	W24
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
@ 058   ----------------------------------------
	.byte		        Fn4 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Fs4 , v048
	.byte	W06
	.byte		        Fn4 , v052
	.byte	W06
	.byte		N24   , Ds4 , v056
	.byte		N84   , Fn4 , v044
	.byte		N12   , As4 , v052
	.byte	W24
	.byte		        Ds4 , v048
	.byte	W12
	.byte		N06   , Ds4 , v052
	.byte		N06   , As4 
	.byte	W12
@ 059   ----------------------------------------
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Ds4 , v056
	.byte	W12
	.byte		        Fn4 , v048
	.byte		N12   , As4 , v052
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , Ds4 , v048
	.byte	W06
	.byte		N90   , Fn4 , v044
	.byte		N12   , As4 
	.byte		N12   , As4 , v052
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte		N06   , As4 
	.byte	W12
@ 060   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W12
	.byte		N12   , Ds4 , v048
	.byte		N12   , As4 , v052
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		N96   , Cs4 , v048
	.byte		N36   , Fs4 , v040
	.byte	W24
	.byte		N12   , Fs4 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
@ 061   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs4 , v056
	.byte	W06
	.byte		N18   , Fn4 
	.byte		N18   , Fn4 , v040
	.byte		N96   , Gs4 , v044
	.byte	W24
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		        Fn4 , v056
	.byte	W12
@ 062   ----------------------------------------
	.byte		N06   , Fn4 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Fn4 , v056
	.byte	W12
	.byte		        Fs4 , v052
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N18   , Ds4 
	.byte		N84   , Fn4 , v044
	.byte		N12   , As4 , v048
	.byte	W24
	.byte		N06   , Ds4 , v052
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , Ds4 , v056
	.byte		N06   , As4 , v048
	.byte	W12
@ 063   ----------------------------------------
	.byte		        Ds4 , v056
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		        Ds4 
	.byte	W12
	.byte		N12   , Fn4 , v056
	.byte		N12   , As4 , v052
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		N18   , Ds4 , v052
	.byte		N90   , Fn4 , v044
	.byte		N12   , As4 
	.byte		N12   , As4 , v056
	.byte	W24
	.byte		N06   , Cs4 , v048
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N06   , As4 
	.byte	W12
@ 064   ----------------------------------------
	.byte		        Cs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , As4 , v048
	.byte	W12
	.byte		N06   , Cs4 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N30   , Cs4 , v044
	.byte		N96   , Fs4 
	.byte	W24
	.byte		N06   , Cs4 , v052
	.byte	W24
@ 065   ----------------------------------------
	.byte		N06   
	.byte	W24
	.byte		        Cs4 , v056
	.byte		N06   , Cs4 , v048
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 , v044
	.byte	W06
	.byte		N18   , Cs4 , v048
	.byte		N18   
	.byte		N96   , Fn4 , v044
	.byte		N96   , Gs4 
	.byte	W24
	.byte		N18   , Cs4 , v052
	.byte	W24
@ 066   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs4 , v048
	.byte	W12
	.byte		N12   , Ds4 , v052
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   , Cn4 , v056
	.byte		N96   , Fn4 , v044
	.byte		N12   , As4 , v052
	.byte	W24
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W06
	.byte		N06   , As4 
	.byte	W12
@ 067   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W18
	.byte		N18   , Cs4 
	.byte		N12   , As4 
	.byte	W24
	.byte		N18   , Cs4 , v056
	.byte		N90   , Fn4 , v048
	.byte		N12   , As4 , v044
	.byte		N12   , As4 , v052
	.byte	W24
	.byte		N18   , Cs4 
	.byte	W12
	.byte		N06   , As4 
	.byte	W12
@ 068   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs4 , v048
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , As4 , v056
	.byte	W12
	.byte		N06   , Cs4 , v048
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		N96   , Fs4 , v044
	.byte		N96   , As4 
	.byte	W24
	.byte		N06   , Cs4 , v052
	.byte	W24
@ 069   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		        Cs4 , v048
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N18   , Cs4 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Ds4 , v044
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 , v048
	.byte	W06
	.byte		N18   , Cs4 , v052
	.byte		N84   , Fn4 , v044
	.byte		N84   , Fn4 , v048
	.byte		N96   , Gs4 
	.byte	W24
	.byte		N18   , Cn4 , v052
	.byte	W24
@ 070   ----------------------------------------
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W12
	.byte		        Cs4 , v048
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte		N06   , Fn4 , v044
	.byte	W06
	.byte		N18   , Cn4 , v052
	.byte		N90   , Ds4 , v044
	.byte		N90   
	.byte		N96   , Gs4 
	.byte		N12   , As4 , v052
	.byte	W24
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W06
	.byte		N06   , As4 
	.byte	W12
@ 071   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W18
	.byte		N18   , Cs4 
	.byte		N12   , As4 
	.byte	W18
	.byte		N06   , Fn4 , v044
	.byte	W03
	.byte		N03   , Ds4 
	.byte	W03
	.byte		N18   , Cn4 , v052
	.byte		N18   , Dn4 , v048
	.byte		N90   , Fn4 
	.byte		N84   , As4 , v044
	.byte	W18
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N54   , Fn4 
	.byte	W12
@ 072   ----------------------------------------
	.byte	W24
	.byte		N12   , Cn4 , v048
	.byte		N12   , As4 , v052
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N12   
	.byte		N96   , Fs4 , v044
	.byte		N96   , As4 , v048
	.byte	W12
	.byte		N12   , Ds4 , v052
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 , v048
	.byte	W12
@ 073   ----------------------------------------
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N06   , Fn4 , v052
	.byte	W06
	.byte		N18   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Fn4 , v040
	.byte		N12   , Fn4 , v048
	.byte		N96   , Gs4 
	.byte	W12
	.byte		N12   , Ds4 , v052
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 074   ----------------------------------------
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Fn4 , v056
	.byte	W12
	.byte		N96   , Cn4 , v048
	.byte		N30   , Ds4 , v044
	.byte		N24   , Fn4 , v052
	.byte		N96   , Gs4 , v044
	.byte		N12   , As4 , v052
	.byte	W24
	.byte		N06   , Ds4 
	.byte	W12
	.byte		N42   
	.byte		N06   , As4 
	.byte	W12
@ 075   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W12
	.byte		N24   
	.byte		N90   , Fn4 , v044
	.byte		N12   , As4 
	.byte		N12   , As4 , v052
	.byte	W24
	.byte		        Cs4 
	.byte	W12
	.byte		N48   
	.byte		N06   , As4 
	.byte	W12
@ 076   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N12   , Fn4 , v052
	.byte		N96   , Fs4 , v044
	.byte		N96   , As4 , v048
	.byte	W12
	.byte		N12   , Ds4 , v052
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 077   ----------------------------------------
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N06   , Fn4 , v052
	.byte	W06
	.byte		N18   , Fn4 , v056
	.byte	W06
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		        Fn4 , v044
	.byte		N12   , Fn4 , v052
	.byte		N96   , Gs4 , v048
	.byte	W12
	.byte		N12   , Ds4 , v052
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 078   ----------------------------------------
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N30   , Ds4 , v044
	.byte		N24   , Fn4 , v052
	.byte		N96   , Gs4 , v044
	.byte		N12   , As4 , v052
	.byte	W24
	.byte		N06   , Ds4 , v048
	.byte	W12
	.byte		N42   , Ds4 , v052
	.byte		N06   , As4 
	.byte	W12
@ 079   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W12
	.byte		N24   
	.byte		N90   , Fn4 , v044
	.byte		N12   , As4 , v048
	.byte		N12   , As4 , v052
	.byte	W24
	.byte		        Cs4 
	.byte	W12
	.byte		N48   
	.byte		N06   , As4 , v048
	.byte	W12
@ 080   ----------------------------------------
	.byte	W24
	.byte		N12   , As4 , v052
	.byte	W12
	.byte		N06   , Ds4 , v044
	.byte		N06   , Fn4 , v052
	.byte	W06
	.byte		        Fn4 , v048
	.byte	W06
	.byte		N12   , Fn4 , v052
	.byte		N84   , Fs4 , v048
	.byte		N84   , Fs4 , v044
	.byte		N96   , As4 , v040
	.byte	W12
	.byte		N12   , Ds4 , v052
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Ds4 , v056
	.byte	W12
@ 081   ----------------------------------------
	.byte	W12
	.byte		        Gs4 , v052
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N18   , Fn4 , v048
	.byte	W06
	.byte		N06   , Cs4 
	.byte		N12   , Fn4 , v052
	.byte	W06
	.byte		N06   , Ds4 , v048
	.byte	W06
	.byte		N84   , Cs4 , v044
	.byte		N12   , Fn4 , v048
	.byte		N12   , Fn4 , v052
	.byte		N96   , Gs4 , v044
	.byte	W12
	.byte		N12   , Ds4 , v052
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 082   ----------------------------------------
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v052
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        As4 , v044
	.byte	W06
	.byte		N30   , Ds4 , v048
	.byte		N24   , Fn4 , v052
	.byte		N96   , Gs4 , v044
	.byte		N96   , Gs4 , v048
	.byte		N12   , As4 
	.byte	W24
	.byte		N06   , Ds4 , v052
	.byte	W12
	.byte		N42   
	.byte		N06   , As4 
	.byte	W12
@ 083   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W12
	.byte		N24   
	.byte		N90   , Fn4 , v044
	.byte		N12   , As4 
	.byte		N12   
	.byte		N12   , As4 , v052
	.byte	W24
	.byte		        Cs4 
	.byte	W12
	.byte		N48   
	.byte		N06   , As4 
	.byte	W12
@ 084   ----------------------------------------
	.byte	W24
	.byte		N12   , Ds4 , v044
	.byte		N12   , As4 , v056
	.byte	W12
	.byte		N06   , Fn4 , v052
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N12   
	.byte		N84   , Fs4 , v044
	.byte		N84   , Fs4 , v048
	.byte		N96   , As4 , v044
	.byte	W12
	.byte		N12   , Ds4 , v048
	.byte	W12
	.byte		        Fn4 , v052
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 085   ----------------------------------------
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N18   , Fn4 , v048
	.byte	W06
	.byte		N06   , Cs4 , v044
	.byte		N12   , Fn4 , v052
	.byte	W06
	.byte		N06   , Ds4 , v048
	.byte	W06
	.byte		N84   , Cs4 , v044
	.byte		N12   , Fn4 , v040
	.byte		N12   , Fn4 , v052
	.byte		N96   , Gs4 , v044
	.byte	W12
	.byte		N12   , Ds4 , v048
	.byte	W12
	.byte		        Fn4 , v052
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 086   ----------------------------------------
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N30   , Ds4 
	.byte		N24   , Fn4 , v052
	.byte		N96   , Gs4 , v044
	.byte		N96   , Gs4 , v048
	.byte		N12   , As4 , v052
	.byte	W24
	.byte		N06   , Ds4 
	.byte	W12
	.byte		N42   
	.byte		N06   , As4 
	.byte	W12
@ 087   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W12
	.byte		N18   
	.byte		N18   , Gs4 , v044
	.byte		N18   , Gs4 , v048
	.byte		N18   , As4 , v052
	.byte	W24
	.byte		N12   , Cs4 
	.byte		N06   , Fn4 , v044
	.byte		N06   , As4 , v048
	.byte		N06   , As4 , v044
	.byte	W12
	.byte		TIE   , As4 , v052
	.byte		TIE   , As4 , v044
	.byte		TIE   , As4 , v048
	.byte	W12
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W36
	.byte		EOT   
	.byte		EOT   
	.byte		EOT   
	.byte	W12
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_umbrella_rihanna_4:
	.byte		VOL   , 127*mus_umbrella_rihanna_mvl/mxv
	.byte	KEYSH , mus_umbrella_rihanna_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v032
	.byte	W12
	.byte		N06   , Cs4 , v048
	.byte	W12
	.byte		N12   , Cn4 , v052
	.byte		N12   , Ds4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Fn4 , v032
	.byte	W12
@ 001   ----------------------------------------
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		N06   , Gs4 , v028
	.byte	W12
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		N06   , Gs4 , v028
	.byte	W12
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		N06   , Gs4 , v028
	.byte	W12
@ 002   ----------------------------------------
mus_umbrella_rihanna_4_002:
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		N06   , Gs4 , v028
	.byte	W12
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		N06   , Gs4 , v028
	.byte	W12
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		N06   , Gs4 , v028
	.byte	W12
@ 004   ----------------------------------------
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		N06   , Fn4 , v044
	.byte	W12
	.byte		N12   , Gs4 , v032
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Fn4 , v032
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
@ 005   ----------------------------------------
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		N06   , Gs4 , v028
	.byte	W12
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		N06   , Gs4 , v028
	.byte	W12
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		N06   , Gs4 , v028
	.byte	W12
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_4_002
@ 007   ----------------------------------------
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W09
	.byte		N09   , Gs4 , v048
	.byte		N09   , Gs4 , v056
	.byte	W03
	.byte		N06   , Gs4 , v028
	.byte		N12   , As4 , v048
	.byte		N12   , As4 , v056
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
@ 008   ----------------------------------------
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N12   , Gs4 , v032
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Fn4 , v032
	.byte	W12
	.byte		        Fn4 , v048
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		N06   , Cs4 
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N06   , Ds4 , v056
	.byte	W06
@ 009   ----------------------------------------
	.byte		N12   , Fn4 , v048
	.byte		N12   , Fn4 , v056
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v052
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		N06   , Cs4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W06
	.byte		N06   , Ds4 , v052
	.byte	W06
@ 010   ----------------------------------------
	.byte		N12   , Fn4 , v048
	.byte		N12   , Fn4 , v056
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N12   , Ds4 , v056
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Fn4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W06
	.byte		N06   , Cn4 , v056
	.byte	W06
@ 011   ----------------------------------------
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Gs4 , v032
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W06
	.byte		N06   , Cn4 , v056
	.byte	W06
@ 012   ----------------------------------------
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N12   , Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		N06   , Cs4 
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N06   , Ds4 , v052
	.byte	W06
@ 013   ----------------------------------------
	.byte		N12   , Fn4 , v048
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		        Fn4 , v032
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v052
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		N06   , Cs4 , v056
	.byte		N12   , Gs4 , v028
	.byte	W06
	.byte		N06   , Ds4 , v052
	.byte	W06
@ 014   ----------------------------------------
	.byte		N12   , Fn4 , v048
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N12   , Ds4 , v056
	.byte		N12   , Gs4 , v032
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Fn4 , v032
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W06
	.byte		N06   , Cn4 , v052
	.byte	W06
@ 015   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Cn4 , v056
	.byte		N12   , Gs4 , v032
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W06
	.byte		N06   , Cn4 , v052
	.byte	W06
@ 016   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		N06   , Fn4 , v044
	.byte	W12
	.byte		N12   , Cn4 , v056
	.byte		N12   , Gs4 , v032
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Ds4 , v056
	.byte		N12   , Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte		N12   , Fn4 , v056
	.byte	W12
	.byte		N06   , Cs4 , v052
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N06   , Ds4 , v052
	.byte	W06
@ 017   ----------------------------------------
	.byte		N12   , Fn4 , v048
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Ds4 , v056
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Ds4 , v056
	.byte		N12   , Gs4 , v032
	.byte	W12
	.byte		        Fn4 , v052
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		N06   , Cs4 , v052
	.byte		N12   , Gs4 , v032
	.byte	W06
	.byte		N06   , Ds4 , v056
	.byte	W06
@ 018   ----------------------------------------
	.byte		N12   , Fn4 , v048
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		        Gs4 , v032
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N12   , Ds4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Cn4 , v056
	.byte		N12   , Fn4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W06
	.byte		N06   , Cn4 , v056
	.byte	W06
@ 019   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W06
	.byte		N06   , Cn4 , v052
	.byte	W06
@ 020   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		N06   , Fn4 , v044
	.byte	W12
	.byte		N12   , Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte		N12   , Fn4 , v056
	.byte	W12
	.byte		N06   , Cs4 
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N06   , Ds4 , v052
	.byte	W06
@ 021   ----------------------------------------
	.byte		N12   , Fn4 , v044
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Ds4 , v056
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Ds4 , v056
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v056
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		N06   , Cs4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W06
	.byte		N06   , Ds4 , v056
	.byte	W06
@ 022   ----------------------------------------
	.byte		N12   , Fn4 , v044
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N12   , Ds4 , v056
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Fn4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W06
	.byte		N06   , Cn4 , v052
	.byte	W06
@ 023   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Cn4 , v056
	.byte		N12   , Gs4 , v032
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W06
	.byte		N06   , Cn4 , v052
	.byte	W06
@ 024   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N12   , Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v032
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
@ 026   ----------------------------------------
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
@ 027   ----------------------------------------
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Gs4 , v032
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v032
	.byte	W12
@ 028   ----------------------------------------
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v032
	.byte	W12
	.byte		N06   , Fn4 , v044
	.byte	W12
	.byte		N12   , Gs4 , v028
	.byte		N12   , As4 , v048
	.byte		N12   , As4 , v056
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
@ 029   ----------------------------------------
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
@ 030   ----------------------------------------
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v032
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N12   , Gs4 , v028
	.byte		N12   , As4 , v044
	.byte		N12   , As4 , v052
	.byte	W12
	.byte		        Fn4 , v044
	.byte		N12   , Fn4 , v052
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
@ 031   ----------------------------------------
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
@ 032   ----------------------------------------
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		N06   , Fn4 , v044
	.byte	W12
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v052
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 , v044
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		N06   , Cs4 , v056
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N06   , Ds4 , v056
	.byte	W06
@ 033   ----------------------------------------
	.byte		N12   , Fn4 , v044
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		        Fn4 , v032
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v056
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Gs4 , v032
	.byte	W06
	.byte		N06   , Ds4 , v052
	.byte	W06
@ 034   ----------------------------------------
	.byte		N12   , Fn4 , v048
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N06   , Fn4 , v044
	.byte	W12
	.byte		N12   , Ds4 , v052
	.byte		N12   , Gs4 , v032
	.byte	W12
	.byte		        Fn4 , v048
	.byte		N12   , Gs4 , v052
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 , v032
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W06
	.byte		N06   , Cn4 , v052
	.byte	W06
@ 035   ----------------------------------------
	.byte		N12   , Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Cn4 , v056
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte		N12   , As4 , v056
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W06
	.byte		N06   , Cn4 , v052
	.byte	W06
@ 036   ----------------------------------------
	.byte		N12   , Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N12   , Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte		N12   , Fs4 , v052
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		N06   , Cs4 
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N06   , Ds4 , v056
	.byte	W06
@ 037   ----------------------------------------
	.byte		N12   , Fn4 , v044
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Ds4 , v056
	.byte		N12   , Gs4 , v032
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Gs4 , v032
	.byte	W12
	.byte		        Fn4 , v052
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Gs4 , v028
	.byte	W06
	.byte		N06   , Ds4 , v056
	.byte	W06
@ 038   ----------------------------------------
	.byte		N12   , Fn4 , v048
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		        Gs4 , v032
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N06   , Fn4 , v044
	.byte	W12
	.byte		N12   , Ds4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte		N12   , Gs4 , v052
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 , v028
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W06
	.byte		N06   , Cn4 , v052
	.byte	W06
@ 039   ----------------------------------------
	.byte		N12   , Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Cn4 , v056
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte		N12   , As4 , v052
	.byte	W12
	.byte		        Cn4 , v056
	.byte		N12   , Gs4 , v032
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W06
	.byte		N06   , Cn4 , v056
	.byte	W06
@ 040   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N12   , Cn4 , v052
	.byte		N12   , Gs4 , v032
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte		N12   , Fs4 
	.byte		N12   , Fs4 , v056
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		N06   , Cs4 
	.byte		N12   , Fn4 , v028
	.byte		N12   , Fs4 , v044
	.byte	W06
	.byte		N06   , Ds4 , v052
	.byte	W06
@ 041   ----------------------------------------
	.byte		N12   , Fn4 , v048
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		        Fn4 , v028
	.byte		N12   , Fs4 , v044
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v044
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v056
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Gs4 , v048
	.byte		N12   , Gs4 , v028
	.byte	W06
	.byte		N06   , Ds4 , v052
	.byte	W06
@ 042   ----------------------------------------
	.byte		N12   , Fn4 , v048
	.byte		N12   , Fn4 , v056
	.byte	W12
	.byte		        Gs4 , v044
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N06   , Fn4 , v048
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 , v056
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte		N12   , Fn4 , v048
	.byte		N12   , Gs4 , v056
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Fn4 , v028
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte		N12   , Fn4 , v048
	.byte	W06
	.byte		N06   , Cn4 , v052
	.byte	W06
@ 043   ----------------------------------------
	.byte		N12   , Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte		N12   , As4 , v052
	.byte		N12   , As4 , v044
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte		N12   , As4 , v048
	.byte	W06
	.byte		N06   , Cn4 , v052
	.byte	W06
@ 044   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Gs4 , v028
	.byte		N12   , As4 , v048
	.byte	W12
	.byte		N06   , Fn4 , v044
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 , v056
	.byte		N12   , Gs4 , v028
	.byte		N12   , As4 , v048
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N12   , Fs4 , v044
	.byte		N12   , Fs4 , v052
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		N06   , Cs4 , v056
	.byte		N12   , Fn4 , v028
	.byte		N12   , Fs4 , v048
	.byte	W06
	.byte		N06   , Ds4 , v052
	.byte	W06
@ 045   ----------------------------------------
	.byte		N12   , Fn4 , v044
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		        Fn4 , v032
	.byte		N12   , Fs4 , v048
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte		N12   , Fs4 , v044
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Gs4 , v032
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte		N12   , Gs4 , v048
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v052
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Gs4 , v044
	.byte		N12   , Gs4 , v028
	.byte	W06
	.byte		N06   , Ds4 , v052
	.byte	W06
@ 046   ----------------------------------------
	.byte		N12   , Fn4 , v044
	.byte		N12   , Fn4 , v056
	.byte	W12
	.byte		        Gs4 , v048
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N06   , Fn4 , v044
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte		N12   
	.byte		N12   , Gs4 , v052
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Fn4 , v028
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte		N12   , Fn4 , v044
	.byte	W06
	.byte		N06   , Cn4 , v056
	.byte	W06
@ 047   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		N12   
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte		N12   , As4 , v052
	.byte		N12   , As4 , v044
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte		N12   , As4 , v048
	.byte	W06
	.byte		N06   , Cn4 , v056
	.byte	W06
@ 048   ----------------------------------------
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Gs4 , v028
	.byte		N12   , As4 , v048
	.byte	W12
	.byte		N06   , Fn4 , v044
	.byte		N12   , As4 , v048
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte		N12   , As4 , v048
	.byte	W60
@ 049   ----------------------------------------
	.byte	W36
	.byte		N06   , Ds4 , v032
	.byte	W06
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		        Fs4 
	.byte	W48
@ 050   ----------------------------------------
	.byte	W30
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N06   , Cs4 , v032
	.byte	W06
	.byte		N12   , Ds4 
	.byte	W18
	.byte		        Fn4 , v028
	.byte	W18
	.byte		        Cs4 
	.byte	W12
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W36
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fs4 
	.byte	W48
@ 054   ----------------------------------------
	.byte	W84
	.byte		        Cn4 , v044
	.byte		N12   , Cn4 , v056
	.byte	W12
@ 055   ----------------------------------------
	.byte	W06
	.byte		        Fs4 , v044
	.byte		N12   , Fs4 , v056
	.byte	W18
	.byte		        Fn4 , v048
	.byte		N12   , Fn4 , v052
	.byte	W18
	.byte		N06   , Ds4 , v048
	.byte		N06   , Ds4 , v052
	.byte	W06
	.byte		        Ds4 , v048
	.byte		N06   , Ds4 , v056
	.byte	W06
	.byte		N12   , Cs4 , v044
	.byte		N12   , Cs4 , v052
	.byte	W12
	.byte		N06   , Cn4 , v048
	.byte		N06   , Cn4 , v056
	.byte	W30
@ 056   ----------------------------------------
	.byte	W24
	.byte		N12   , An4 , v040
	.byte	W24
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte		N12   , Fs4 
	.byte		N12   , Fs4 , v056
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		N06   , Cs4 , v056
	.byte		N12   , Fn4 , v032
	.byte	W06
	.byte		        Ds4 , v052
	.byte	W06
@ 057   ----------------------------------------
	.byte		        Fn4 , v044
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte		N12   , Gs4 , v048
	.byte		N12   , Gs4 , v052
	.byte	W12
	.byte		        Ds4 , v056
	.byte		N12   , Gs4 , v032
	.byte	W12
	.byte		        Fn4 , v056
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		N06   , Cs4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W06
	.byte		        Ds4 , v052
	.byte	W06
@ 058   ----------------------------------------
	.byte		        Fn4 , v048
	.byte		N12   , Fn4 , v056
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cn4 , v048
	.byte		N12   , Fn4 , v056
	.byte		N12   , Fn4 , v044
	.byte		N12   
	.byte	W12
	.byte		        Cn4 , v056
	.byte		N12   , Fn4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W06
	.byte		        Cn4 , v052
	.byte	W06
@ 059   ----------------------------------------
	.byte		        Cs4 
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte		N12   , As4 , v044
	.byte		N12   , As4 , v052
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Gs4 , v032
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Gs4 , v032
	.byte	W06
	.byte		N06   , Cn4 , v052
	.byte	W06
@ 060   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N12   , Fs4 , v044
	.byte		N12   , Fs4 , v052
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte		N12   , Fn4 , v056
	.byte	W12
	.byte		N06   , Cs4 , v052
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		        Ds4 , v056
	.byte	W06
@ 061   ----------------------------------------
	.byte		        Fn4 , v048
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		        Fn4 , v032
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N12   , Gs4 
	.byte		N12   , Gs4 , v056
	.byte	W12
	.byte		        Ds4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v056
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		N06   , Cs4 , v056
	.byte		N12   , Gs4 , v028
	.byte	W06
	.byte		        Ds4 , v056
	.byte	W06
@ 062   ----------------------------------------
	.byte		        Fn4 , v048
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Ds4 , v056
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cn4 , v048
	.byte		N12   , Fn4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N12   
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Fn4 , v028
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W06
	.byte		        Cn4 , v052
	.byte	W06
@ 063   ----------------------------------------
	.byte		        Cs4 
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Cn4 , v056
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v048
	.byte		N12   , As4 
	.byte		N12   , As4 , v052
	.byte	W12
	.byte		        Cn4 , v056
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W06
	.byte		N06   , Cn4 , v052
	.byte	W06
@ 064   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 , v044
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v044
	.byte		N12   , Fs4 , v056
	.byte		N12   , As4 , v044
	.byte	W06
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N12   , Ds4 , v056
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N03   , As4 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 , v048
	.byte		N12   , Fn4 , v052
	.byte		N06   , As4 , v044
	.byte	W06
	.byte		N12   
	.byte	W06
	.byte		N06   , Cs4 , v056
	.byte		N12   , Fn4 , v032
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N12   , Ds4 , v056
	.byte	W06
@ 065   ----------------------------------------
	.byte		        Fn4 , v044
	.byte		N12   , Fn4 , v052
	.byte		N12   , As4 , v048
	.byte	W06
	.byte		N06   , As4 , v044
	.byte	W06
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N03   , As4 , v044
	.byte	W03
	.byte		        As4 , v048
	.byte	W03
	.byte		N12   , Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte		N06   , As4 
	.byte	W06
	.byte		N12   , As4 , v048
	.byte	W06
	.byte		        Ds4 , v056
	.byte		N12   , Gs4 , v028
	.byte		N06   , As4 , v048
	.byte	W12
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v044
	.byte		N12   , Gs4 , v048
	.byte		N12   , Gs4 , v056
	.byte	W06
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		N12   , Ds4 , v056
	.byte		N06   , Gs4 , v028
	.byte	W06
	.byte		        Gs4 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs4 , v056
	.byte		N06   , Gs4 , v032
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		N12   , Ds4 , v056
	.byte	W06
@ 066   ----------------------------------------
	.byte		        Fn4 , v044
	.byte		N12   , Fn4 , v052
	.byte		N12   , Gs4 , v044
	.byte	W06
	.byte		N06   , Gs4 , v048
	.byte	W06
	.byte		        Gs4 , v028
	.byte	W06
	.byte		        Gs4 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N03   , Gs4 , v044
	.byte	W06
	.byte		N12   , Ds4 , v052
	.byte		N06   , Gs4 , v048
	.byte		N06   , Gs4 , v028
	.byte	W12
	.byte		N12   , Cn4 , v044
	.byte		N12   , Fn4 , v052
	.byte		N12   , Fn4 , v044
	.byte		N12   , As4 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn4 , v056
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N03   , As4 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N06   , As4 , v044
	.byte	W06
	.byte		N12   
	.byte	W06
	.byte		        Fn4 , v028
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N12   , Cn4 , v052
	.byte	W06
@ 067   ----------------------------------------
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte		N12   , As4 
	.byte	W06
	.byte		N06   , As4 , v044
	.byte	W06
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N03   , As4 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 , v048
	.byte		N06   , As4 
	.byte	W06
	.byte		N12   , As4 , v044
	.byte	W06
	.byte		        Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte		N06   , As4 , v044
	.byte	W12
	.byte		N12   , Fn4 , v048
	.byte		N12   , Gs4 , v044
	.byte		N12   , As4 , v052
	.byte	W06
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		N12   , Cn4 , v052
	.byte		N06   , Gs4 , v028
	.byte	W06
	.byte		N03   , Gs4 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		        Gs4 , v048
	.byte	W06
	.byte		        Gs4 , v028
	.byte		N06   , Gs4 , v048
	.byte	W06
	.byte		        Cn4 , v052
	.byte	W06
@ 068   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 , v048
	.byte		N12   , Gs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		        Gs4 , v048
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn4 , v056
	.byte		N06   , Gs4 , v044
	.byte		N06   , Gs4 , v028
	.byte	W12
	.byte		N12   , Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte		N12   , As4 , v044
	.byte		N12   , As4 , v052
	.byte	W06
	.byte		N06   , As4 , v044
	.byte	W06
	.byte		N12   , Ds4 , v056
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N06   , As4 , v048
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 
	.byte		N12   , Fn4 , v052
	.byte		N06   , As4 , v044
	.byte	W06
	.byte		        As4 , v048
	.byte	W06
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v032
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N12   , Ds4 , v052
	.byte	W06
@ 069   ----------------------------------------
	.byte		        Fn4 , v044
	.byte		N12   , Fn4 , v052
	.byte		N12   , As4 , v044
	.byte	W06
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N06   , As4 , v048
	.byte	W03
	.byte		N03   , As4 , v044
	.byte	W03
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v044
	.byte		N06   , As4 
	.byte	W06
	.byte		        As4 , v048
	.byte	W06
	.byte		N12   , Ds4 , v052
	.byte		N12   , Gs4 , v028
	.byte		N06   , As4 , v048
	.byte	W12
	.byte		N12   , Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte		N12   , Gs4 , v048
	.byte		N12   , Gs4 , v052
	.byte	W06
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		N12   , Ds4 , v056
	.byte		N06   , Gs4 , v028
	.byte	W06
	.byte		        Gs4 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 , v052
	.byte		N12   , Fn4 , v044
	.byte		N06   , Gs4 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs4 , v052
	.byte		N06   , Gs4 , v028
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		N12   , Ds4 , v052
	.byte	W06
@ 070   ----------------------------------------
	.byte		        Fn4 , v044
	.byte		N12   , Fn4 , v056
	.byte		N12   , Gs4 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 , v028
	.byte	W06
	.byte		        Gs4 , v044
	.byte	W03
	.byte		N03   , Gs4 , v048
	.byte	W03
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Ds4 , v052
	.byte		N06   , Gs4 , v044
	.byte		N06   , Gs4 , v028
	.byte	W12
	.byte		N12   , Fn4 , v048
	.byte		N12   , Gs4 , v056
	.byte		N12   , As4 , v048
	.byte	W06
	.byte		N06   , As4 , v044
	.byte	W06
	.byte		N12   , Cn4 , v052
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N03   , As4 , v048
	.byte	W03
	.byte		        As4 , v044
	.byte	W03
	.byte		N12   , Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte		N06   , As4 , v044
	.byte	W06
	.byte		N12   
	.byte	W06
	.byte		        Fn4 , v028
	.byte		N06   , As4 , v044
	.byte	W06
	.byte		        Cn4 , v052
	.byte	W06
@ 071   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 , v044
	.byte		N12   , As4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N03   , As4 , v048
	.byte	W03
	.byte		        As4 , v044
	.byte	W03
	.byte		N12   , Fn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		N12   , As4 , v048
	.byte	W06
	.byte		        Cn4 , v056
	.byte		N12   , Gs4 , v028
	.byte		N06   , As4 , v044
	.byte	W12
	.byte		N12   , Dn4 , v048
	.byte		N12   , Dn4 , v056
	.byte		N12   
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W06
	.byte		        Ds4 , v044
	.byte		N12   , Ds4 , v056
	.byte		N12   , Ds4 , v052
	.byte	W06
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v044
	.byte		N12   , Fn4 , v052
	.byte		N12   
	.byte		N12   , Gs4 , v028
	.byte	W12
@ 072   ----------------------------------------
	.byte		        Fn4 , v048
	.byte	W12
	.byte		        Gs4 , v028
	.byte	W12
	.byte		        Fn4 , v044
	.byte	W12
	.byte		        Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte	W12
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v044
	.byte		N12   , As4 , v048
	.byte		N12   , As4 , v052
	.byte	W06
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N12   , Ds4 , v052
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N06   , As4 , v048
	.byte	W03
	.byte		N03   , As4 , v044
	.byte	W03
	.byte		N12   , Fn4 
	.byte		N12   , Fn4 , v052
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		        As4 , v044
	.byte	W06
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v032
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N12   , Ds4 , v052
	.byte	W06
@ 073   ----------------------------------------
	.byte		        Fn4 , v044
	.byte		N12   , Fn4 , v056
	.byte		N12   , As4 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N06   , As4 , v044
	.byte	W03
	.byte		N03   , As4 , v048
	.byte	W03
	.byte		N12   , Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte		N06   , As4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds4 , v056
	.byte		N12   , Gs4 , v028
	.byte		N06   , As4 , v044
	.byte	W12
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N12   , Gs4 
	.byte		N12   , Gs4 , v056
	.byte	W06
	.byte		N06   , Gs4 , v048
	.byte	W06
	.byte		N12   , Ds4 , v052
	.byte		N06   , Gs4 , v028
	.byte	W06
	.byte		        Gs4 , v044
	.byte	W03
	.byte		N03   , Gs4 , v048
	.byte	W03
	.byte		N12   , Fn4 , v056
	.byte		N12   , Fn4 , v048
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N03   , Gs4 , v044
	.byte	W06
	.byte		N06   , Cs4 , v056
	.byte		N06   , Gs4 , v028
	.byte		N06   , Gs4 , v048
	.byte	W06
	.byte		N12   , Ds4 , v052
	.byte	W06
@ 074   ----------------------------------------
	.byte		        Fn4 , v044
	.byte		N12   , Fn4 , v052
	.byte		N12   , Gs4 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 , v028
	.byte	W06
	.byte		        Gs4 , v044
	.byte	W03
	.byte		N03   , Gs4 , v048
	.byte	W03
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N03   , Gs4 , v044
	.byte	W06
	.byte		N12   , Ds4 , v056
	.byte		N06   , Gs4 , v044
	.byte		N06   , Gs4 , v028
	.byte	W12
	.byte		N12   , Fn4 , v048
	.byte		N12   , Gs4 , v056
	.byte		N12   , As4 , v044
	.byte	W06
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N12   , Cn4 , v052
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N03   , As4 , v048
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v044
	.byte		N06   , As4 
	.byte	W06
	.byte		N12   , As4 , v048
	.byte	W06
	.byte		        Fn4 , v028
	.byte		N06   , As4 , v044
	.byte	W06
	.byte		        Cn4 , v052
	.byte	W06
@ 075   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 , v048
	.byte		N12   , As4 
	.byte	W06
	.byte		N06   , As4 , v044
	.byte	W06
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N03   , As4 , v048
	.byte	W03
	.byte		        As4 , v044
	.byte	W03
	.byte		N12   , Fn4 , v048
	.byte		N06   , As4 
	.byte	W06
	.byte		N12   , As4 , v044
	.byte	W06
	.byte		        Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte		N06   , As4 , v044
	.byte	W12
	.byte		N12   , Fn4 
	.byte		N12   , Gs4 , v048
	.byte		N12   , As4 , v052
	.byte	W06
	.byte		N06   , Gs4 , v048
	.byte	W06
	.byte		N12   , Cn4 , v052
	.byte		N06   , Gs4 , v028
	.byte	W06
	.byte		N03   , Gs4 , v044
	.byte	W03
	.byte		        Gs4 , v048
	.byte	W03
	.byte		N12   , Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte		N06   , Gs4 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 , v028
	.byte		N06   , Gs4 , v048
	.byte	W06
	.byte		        Cn4 , v052
	.byte	W06
@ 076   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 , v044
	.byte		N12   , Gs4 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 , v028
	.byte	W06
	.byte		        Gs4 , v048
	.byte	W03
	.byte		N03   , Gs4 , v044
	.byte	W03
	.byte		N12   , Fn4 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn4 , v056
	.byte		N06   , Gs4 , v044
	.byte		N06   , Gs4 , v032
	.byte	W12
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v044
	.byte		N12   , As4 , v048
	.byte		N12   , As4 , v052
	.byte	W06
	.byte		N06   , As4 , v044
	.byte	W06
	.byte		N12   , Ds4 , v052
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N06   , As4 , v048
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 , v044
	.byte		N12   , Fn4 , v052
	.byte		N06   , As4 , v044
	.byte	W06
	.byte		        As4 , v048
	.byte	W06
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v028
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N12   , Ds4 , v056
	.byte	W06
@ 077   ----------------------------------------
	.byte		        Fn4 , v048
	.byte		N12   , Fn4 , v056
	.byte		N12   , As4 , v044
	.byte	W06
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N12   , Fn4 , v032
	.byte	W06
	.byte		N06   , As4 , v048
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N06   , As4 , v044
	.byte	W06
	.byte		        As4 , v048
	.byte	W06
	.byte		N12   , Ds4 , v052
	.byte		N12   , Gs4 , v028
	.byte		N06   , As4 , v044
	.byte	W12
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N12   , Gs4 
	.byte		N12   , Gs4 , v052
	.byte	W06
	.byte		N06   , Gs4 , v048
	.byte	W06
	.byte		N12   , Ds4 , v052
	.byte		N06   , Gs4 , v028
	.byte	W06
	.byte		        Gs4 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs4 , v052
	.byte		N06   , Gs4 , v028
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		N12   , Ds4 , v052
	.byte	W06
@ 078   ----------------------------------------
	.byte		        Fn4 , v048
	.byte		N12   , Fn4 , v056
	.byte		N12   , Gs4 , v044
	.byte	W06
	.byte		N06   , Gs4 , v048
	.byte	W06
	.byte		        Gs4 , v028
	.byte	W06
	.byte		        Gs4 , v044
	.byte	W03
	.byte		N03   , Gs4 , v048
	.byte	W03
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Ds4 , v052
	.byte		N06   , Gs4 , v044
	.byte		N06   , Gs4 , v032
	.byte	W12
	.byte		N12   , Fn4 , v048
	.byte		N12   , Gs4 , v052
	.byte		N12   , As4 , v044
	.byte	W06
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N12   , Cn4 , v056
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N03   , As4 , v048
	.byte	W03
	.byte		        As4 , v044
	.byte	W03
	.byte		N12   , Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N12   
	.byte	W06
	.byte		        Fn4 , v028
	.byte		N06   , As4 , v044
	.byte	W06
	.byte		        Cn4 , v056
	.byte	W06
@ 079   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 , v048
	.byte		N12   , As4 , v044
	.byte	W06
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N03   , As4 , v048
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		N12   
	.byte	W06
	.byte		        Cn4 , v052
	.byte		N12   , Gs4 , v028
	.byte		N06   , As4 , v048
	.byte	W12
	.byte		N12   , Fn4 
	.byte		N12   , Gs4 , v044
	.byte		N12   , As4 , v056
	.byte	W06
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		N12   , Cn4 , v052
	.byte		N06   , Gs4 , v028
	.byte	W06
	.byte		N03   , Gs4 , v044
	.byte	W03
	.byte		        Gs4 , v048
	.byte	W03
	.byte		N12   , Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Gs4 , v044
	.byte	W06
	.byte		        Gs4 , v032
	.byte		N06   , Gs4 , v048
	.byte	W06
	.byte		        Cn4 , v052
	.byte	W06
@ 080   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 , v044
	.byte		N12   , Gs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 , v028
	.byte	W06
	.byte		        Gs4 , v048
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 , v044
	.byte		N06   , Gs4 , v048
	.byte	W06
	.byte		        Gs4 , v044
	.byte	W06
	.byte		N12   , Cn4 , v052
	.byte		N06   , Gs4 , v048
	.byte		N06   , Gs4 , v028
	.byte	W12
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v044
	.byte		N12   , As4 , v048
	.byte		N12   , As4 , v056
	.byte	W06
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N12   , Ds4 , v052
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N06   , As4 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 , v048
	.byte		N12   , Fn4 , v052
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs4 , v056
	.byte		N12   , Fn4 , v028
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N12   , Ds4 , v056
	.byte	W06
@ 081   ----------------------------------------
	.byte		        Fn4 , v048
	.byte		N12   , Fn4 , v052
	.byte		N12   , As4 , v044
	.byte	W06
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N06   , As4 , v048
	.byte	W03
	.byte		N03   , As4 , v044
	.byte	W03
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N06   , As4 
	.byte	W06
	.byte		        As4 , v044
	.byte	W06
	.byte		N12   , Ds4 , v052
	.byte		N12   , Gs4 , v028
	.byte		N06   , As4 , v048
	.byte	W12
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v044
	.byte		N12   , Gs4 
	.byte		N12   , Gs4 , v052
	.byte	W06
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		N12   , Ds4 , v056
	.byte		N06   , Gs4 , v032
	.byte	W06
	.byte		        Gs4 , v048
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs4 , v056
	.byte		N06   , Gs4 , v028
	.byte		N06   , Gs4 , v048
	.byte	W06
	.byte		N12   , Ds4 , v052
	.byte	W06
@ 082   ----------------------------------------
	.byte		        Fn4 , v048
	.byte		N12   , Fn4 , v052
	.byte		N12   , Gs4 , v044
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		        Gs4 , v044
	.byte	W03
	.byte		N03   , Gs4 , v048
	.byte	W03
	.byte		N12   , Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cn4 , v044
	.byte		N12   , Ds4 , v052
	.byte		N06   , Gs4 , v044
	.byte		N06   , Gs4 , v028
	.byte	W12
	.byte		N12   , Fn4 , v044
	.byte		N12   , Gs4 , v052
	.byte		N12   , As4 , v048
	.byte	W06
	.byte		N06   , As4 , v044
	.byte	W06
	.byte		N12   , Cn4 , v052
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N03   , As4 , v044
	.byte	W03
	.byte		        As4 , v048
	.byte	W03
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N06   , As4 
	.byte	W06
	.byte		N12   , As4 , v044
	.byte	W06
	.byte		        Fn4 , v028
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		        Cn4 , v056
	.byte	W06
@ 083   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 , v044
	.byte		N12   , As4 , v048
	.byte	W06
	.byte		N06   , As4 , v044
	.byte	W06
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N03   , As4 , v048
	.byte	W03
	.byte		        As4 , v044
	.byte	W03
	.byte		N12   , Fn4 
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N12   
	.byte	W06
	.byte		        Cn4 , v056
	.byte		N12   , Gs4 , v028
	.byte		N06   , As4 , v048
	.byte	W12
	.byte		N12   , Fn4 , v044
	.byte		N12   , Gs4 , v048
	.byte		N12   , As4 , v052
	.byte	W06
	.byte		N06   , Gs4 , v048
	.byte	W06
	.byte		N12   , Cn4 , v052
	.byte		N06   , Gs4 , v032
	.byte	W06
	.byte		N03   , Gs4 , v048
	.byte	W03
	.byte		        Gs4 , v044
	.byte	W03
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 , v028
	.byte		N06   , Gs4 , v048
	.byte	W06
	.byte		        Cn4 , v052
	.byte	W06
@ 084   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 , v044
	.byte		N12   , Gs4 
	.byte	W06
	.byte		N06   , Gs4 , v048
	.byte	W06
	.byte		        Gs4 , v028
	.byte	W06
	.byte		        Gs4 , v048
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Gs4 , v044
	.byte	W06
	.byte		N12   , Cn4 , v052
	.byte		N06   , Gs4 , v044
	.byte		N06   , Gs4 , v028
	.byte	W12
	.byte		N12   , Cs4 , v056
	.byte		N12   , Fn4 , v048
	.byte		N12   , As4 
	.byte		N12   , As4 , v056
	.byte	W06
	.byte		N06   , As4 , v044
	.byte	W06
	.byte		N12   , Ds4 , v052
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N06   , As4 , v048
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 , v044
	.byte		N12   , Fn4 , v052
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs4 , v052
	.byte		N12   , Fn4 , v032
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N12   , Ds4 , v056
	.byte	W06
@ 085   ----------------------------------------
	.byte		        Fn4 , v048
	.byte		N12   , Fn4 , v056
	.byte		N12   , As4 , v044
	.byte	W06
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N06   , As4 , v044
	.byte	W03
	.byte		N03   , As4 , v048
	.byte	W03
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N06   , As4 
	.byte	W06
	.byte		        As4 , v044
	.byte	W06
	.byte		N12   , Ds4 , v056
	.byte		N12   , Gs4 , v032
	.byte		N06   , As4 , v044
	.byte	W12
	.byte		N12   , Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte		N12   , Gs4 
	.byte		N12   , Gs4 , v052
	.byte	W06
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		N12   , Ds4 , v056
	.byte		N06   , Gs4 , v028
	.byte	W06
	.byte		        Gs4 , v048
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N03   , Gs4 , v044
	.byte	W06
	.byte		N06   , Cs4 , v052
	.byte		N06   , Gs4 , v028
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		N12   , Ds4 , v052
	.byte	W06
@ 086   ----------------------------------------
	.byte		        Fn4 , v048
	.byte		N12   , Fn4 , v052
	.byte		N12   , Gs4 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		        Gs4 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Cs4 , v052
	.byte		N12   , Fn4 , v048
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cn4 
	.byte		N06   , Gs4 , v048
	.byte		N06   , Gs4 , v028
	.byte	W12
	.byte		N12   , Fn4 , v044
	.byte		N12   , Gs4 , v052
	.byte		N12   , As4 , v044
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn4 , v052
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N03   , As4 , v048
	.byte	W03
	.byte		        As4 , v044
	.byte	W03
	.byte		N12   , Cs4 , v056
	.byte		N12   , Fn4 , v044
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		N12   
	.byte	W06
	.byte		        Fn4 , v028
	.byte		N06   , As4 , v048
	.byte	W06
	.byte		        Cn4 , v052
	.byte	W06
@ 087   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 , v048
	.byte		N12   , As4 
	.byte	W06
	.byte		N06   , As4 , v044
	.byte	W06
	.byte		N12   , Fn4 , v028
	.byte	W06
	.byte		N03   , As4 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Fn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		N12   , As4 , v048
	.byte	W06
	.byte		        Cn4 , v056
	.byte		N12   , Gs4 , v028
	.byte		N06   , As4 , v048
	.byte	W12
	.byte		N12   , Gs4 
	.byte	W24
	.byte		        Cs4 
	.byte		N12   , Cs4 , v056
	.byte		N06   , As4 , v044
	.byte		N06   , As4 , v052
	.byte	W12
	.byte		N12   , Cs4 , v028
	.byte		N12   , As4 , v044
	.byte	W12
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W42
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_umbrella_rihanna_5:
	.byte		VOL   , 127*mus_umbrella_rihanna_mvl/mxv
	.byte	KEYSH , mus_umbrella_rihanna_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 8
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
mus_umbrella_rihanna_5_002:
	.byte		N04   , Cn1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		N04   , En1 , v068
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		N04   , Cn1 , v060
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		N04   , En1 , v068
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_umbrella_rihanna_5_003:
	.byte		N04   , Cn1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		N04   , En1 , v068
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		N04   , Cn1 , v048
	.byte		N03   , Fs1 , v028
	.byte	W12
	.byte		N04   , Cn1 , v060
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		N04   , En1 , v068
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_003
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_umbrella_rihanna_5_002
@ 089   ----------------------------------------
	.byte		N04   , Cn1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		N04   , En1 , v068
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		N04   , Cn1 , v048
	.byte		N03   , Fs1 , v028
	.byte	W12
	.byte		N04   , Cn1 , v060
	.byte		N03   , Fs1 , v032
	.byte	W04
	.byte	FINE

@******************************************************@
	.align	2

mus_umbrella_rihanna:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_umbrella_rihanna_pri	@ Priority
	.byte	mus_umbrella_rihanna_rev	@ Reverb.

	.word	mus_umbrella_rihanna_grp

	.word	mus_umbrella_rihanna_1
	.word	mus_umbrella_rihanna_2
	.word	mus_umbrella_rihanna_3
	.word	mus_umbrella_rihanna_4
	.word	mus_umbrella_rihanna_5

	.end
