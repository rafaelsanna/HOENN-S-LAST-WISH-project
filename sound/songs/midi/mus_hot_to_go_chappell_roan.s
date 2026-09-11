	.include "MPlayDef.s"

	.equ	mus_hot_to_go_chappell_roan_grp, voicegroup_diva_pop
	.equ	mus_hot_to_go_chappell_roan_pri, 0
	.equ	mus_hot_to_go_chappell_roan_rev, reverb_set+12
	.equ	mus_hot_to_go_chappell_roan_mvl, 90
	.equ	mus_hot_to_go_chappell_roan_key, 0
	.equ	mus_hot_to_go_chappell_roan_tbs, 1
	.equ	mus_hot_to_go_chappell_roan_exg, 0
	.equ	mus_hot_to_go_chappell_roan_cmp, 1

	.section .rodata
	.global	mus_hot_to_go_chappell_roan
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_hot_to_go_chappell_roan_1:
	.byte	KEYSH , mus_hot_to_go_chappell_roan_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 140*mus_hot_to_go_chappell_roan_tbs/2
	.byte		VOICE , 1
	.byte		VOL   , 88*mus_hot_to_go_chappell_roan_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N04   , Fs0 , v068
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N04   
	.byte	W12
@ 001   ----------------------------------------
mus_hot_to_go_chappell_roan_1_001:
	.byte		N04   , Fs0 , v068
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 004   ----------------------------------------
mus_hot_to_go_chappell_roan_1_004:
	.byte		N04   , Bn0 , v068
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_001
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_004
@ 096   ----------------------------------------
mus_hot_to_go_chappell_roan_1_096:
	.byte		N04   , Fs1 , v068
	.byte	W12
	.byte		N04   
	.byte	W72
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_096
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_096
@ 099   ----------------------------------------
	.byte		N04   , Fs1 , v068
	.byte	W12
	.byte		N04   
	.byte	W72
	.byte		        As1 
	.byte	W12
@ 100   ----------------------------------------
	.byte		        Cs2 
	.byte	W12
	.byte		N04   
	.byte	W72
	.byte		N04   
	.byte	W12
@ 101   ----------------------------------------
	.byte		        Bn1 
	.byte	W12
	.byte		N04   
	.byte	W72
	.byte		        Fn1 
	.byte	W12
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_096
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_1_096
@ 104   ----------------------------------------
	.byte		N04   , Fs1 , v068
	.byte	W04
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_hot_to_go_chappell_roan_2:
	.byte	KEYSH , mus_hot_to_go_chappell_roan_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 76*mus_hot_to_go_chappell_roan_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N04   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fn2 , v056
	.byte	W12
	.byte		        Fn2 , v048
	.byte	W12
	.byte		        Fs2 , v056
	.byte	W12
	.byte		        Fs2 , v048
	.byte	W12
	.byte		        Fn2 , v056
	.byte	W12
	.byte		        Fn2 , v048
	.byte	W12
@ 001   ----------------------------------------
mus_hot_to_go_chappell_roan_2_001:
	.byte		N04   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fn2 , v056
	.byte	W12
	.byte		        Fn2 , v048
	.byte	W12
	.byte		        Fs2 , v056
	.byte	W12
	.byte		        Fs2 , v048
	.byte	W12
	.byte		        Fn2 , v056
	.byte	W12
	.byte		        Fn2 , v048
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 004   ----------------------------------------
mus_hot_to_go_chappell_roan_2_004:
	.byte		N04   , Bn1 , v056
	.byte	W12
	.byte		        Bn1 , v048
	.byte	W12
	.byte		        As2 , v056
	.byte	W12
	.byte		        As2 , v048
	.byte	W12
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Bn2 , v048
	.byte	W12
	.byte		        As2 , v056
	.byte	W12
	.byte		        As2 , v048
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_001
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_004
@ 096   ----------------------------------------
mus_hot_to_go_chappell_roan_2_096:
	.byte		N04   , Fs2 , v056
	.byte	W12
	.byte		        Fs2 , v048
	.byte	W72
	.byte		        Fn2 
	.byte	W12
	.byte	PEND
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_096
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_096
@ 099   ----------------------------------------
	.byte		N04   , Fs2 , v056
	.byte	W12
	.byte		        Fs2 , v048
	.byte	W72
	.byte		        As2 
	.byte	W12
@ 100   ----------------------------------------
	.byte		        Cs3 , v056
	.byte	W12
	.byte		        Cs3 , v048
	.byte	W72
	.byte		N04   
	.byte	W12
@ 101   ----------------------------------------
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Bn2 , v048
	.byte	W72
	.byte		        Fn2 
	.byte	W12
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_096
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_2_096
@ 104   ----------------------------------------
	.byte		N04   , Fs2 , v056
	.byte	W04
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_hot_to_go_chappell_roan_3:
	.byte	KEYSH , mus_hot_to_go_chappell_roan_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 7
	.byte		VOL   , 94*mus_hot_to_go_chappell_roan_mvl/mxv
	.byte		PAN   , c_v+14
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
	.byte	W84
	.byte		N12   , Cs4 , v068
	.byte	W12
@ 008   ----------------------------------------
mus_hot_to_go_chappell_roan_3_008:
	.byte	W12
	.byte		N12   , Cs4 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_hot_to_go_chappell_roan_3_009:
	.byte		N24   , Ds4 , v068
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cs4 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_008
@ 011   ----------------------------------------
mus_hot_to_go_chappell_roan_3_011:
	.byte		N24   , Ds4 , v068
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cs4 
	.byte	W24
	.byte		        Fs4 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Fs4 
	.byte	W24
	.byte		N12   
	.byte	W12
@ 014   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Fs4 
	.byte	W24
	.byte		N24   , As4 
	.byte	W12
@ 016   ----------------------------------------
mus_hot_to_go_chappell_roan_3_016:
	.byte	W12
	.byte		N12   , Bn4 , v068
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N24   , As4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
mus_hot_to_go_chappell_roan_3_017:
	.byte		N36   , Gs4 , v068
	.byte	W72
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N24   , As4 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_016
@ 019   ----------------------------------------
mus_hot_to_go_chappell_roan_3_019:
	.byte		N36   , Gs4 , v068
	.byte	W36
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_hot_to_go_chappell_roan_3_020:
	.byte		N12   , As4 , v068
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N24   , As4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte	PEND
@ 021   ----------------------------------------
mus_hot_to_go_chappell_roan_3_021:
	.byte		N48   , Gs4 , v068
	.byte	W72
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_hot_to_go_chappell_roan_3_022:
	.byte		N12   , As4 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte	W24
	.byte		N24   , Bn4 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
mus_hot_to_go_chappell_roan_3_023:
	.byte	W12
	.byte		N12   , Bn4 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , As4 
	.byte	W24
	.byte		N12   , Gs4 
	.byte	W36
	.byte	PEND
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
mus_hot_to_go_chappell_roan_3_032:
	.byte		N24   , As2 , v060
	.byte		N24   , As3 , v068
	.byte	W24
	.byte		        Cs3 , v060
	.byte		N24   , Cs4 , v068
	.byte	W24
	.byte		        Cs3 , v060
	.byte		N24   , Cs4 , v068
	.byte	W24
	.byte		        Cs3 , v060
	.byte		N24   , Cs4 , v068
	.byte	W24
	.byte	PEND
@ 033   ----------------------------------------
mus_hot_to_go_chappell_roan_3_033:
	.byte		N36   , Ds3 , v060
	.byte		N36   , Ds4 , v068
	.byte	W36
	.byte		N12   , Cs3 , v060
	.byte		N12   , Cs4 , v068
	.byte	W12
	.byte		        Ds3 , v060
	.byte		N12   , Ds4 , v068
	.byte	W12
	.byte		N24   , Cs3 , v060
	.byte		N24   , Cs4 , v068
	.byte	W36
	.byte	PEND
@ 034   ----------------------------------------
mus_hot_to_go_chappell_roan_3_034:
	.byte		N24   , As2 , v060
	.byte		N24   , As3 , v068
	.byte	W24
	.byte		        Cs3 , v060
	.byte		N24   , Cs4 , v068
	.byte	W24
	.byte		        Fs3 , v060
	.byte		N24   , Fs4 , v068
	.byte	W24
	.byte		        Gs3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
mus_hot_to_go_chappell_roan_3_035:
	.byte		N36   , Gs3 , v068
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N24   , Fs3 , v060
	.byte		N24   , Fs4 , v068
	.byte	W36
	.byte	PEND
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_032
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_033
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_034
@ 039   ----------------------------------------
	.byte		N36   , Gs3 , v068
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N24   , Fs3 , v060
	.byte		N24   , Fs4 , v068
	.byte	W24
	.byte		N12   , Cs4 
	.byte	W12
@ 040   ----------------------------------------
mus_hot_to_go_chappell_roan_3_040:
	.byte	W12
	.byte		N12   , Cs4 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	PEND
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_040
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_011
@ 044   ----------------------------------------
	.byte	W12
	.byte		N12   , Fs4 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		        Gs4 
	.byte	W24
@ 045   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte	W24
	.byte		N12   
	.byte	W12
@ 046   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 047   ----------------------------------------
	.byte		N24   , As4 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W12
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_016
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_019
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_020
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_021
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_022
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_023
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
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_032
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_033
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_034
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_035
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_032
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_033
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_034
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_035
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
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_032
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_033
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_034
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_035
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_032
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_033
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_034
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_035
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_032
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_033
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_034
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_035
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_032
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_033
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_3_034
@ 095   ----------------------------------------
	.byte		N36   , Gs3 , v068
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N24   , Fs3 , v060
	.byte		N24   , Fs4 , v068
	.byte	W24
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_hot_to_go_chappell_roan_4:
	.byte	KEYSH , mus_hot_to_go_chappell_roan_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 68*mus_hot_to_go_chappell_roan_mvl/mxv
	.byte		PAN   , c_v-22
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
mus_hot_to_go_chappell_roan_4_017:
	.byte	W24
	.byte		N06   , Cs3 , v044
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N24   , Ds3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_017
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
mus_hot_to_go_chappell_roan_4_021:
	.byte	W24
	.byte		N06   , Cs3 , v044
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N24   , Ds3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_hot_to_go_chappell_roan_4_022:
	.byte		N12   , Fs3 , v044
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N24   , Ds3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Cs3 
	.byte		N12   , As3 
	.byte	W24
	.byte		N24   , Gs3 
	.byte		N24   , Ds4 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
mus_hot_to_go_chappell_roan_4_023:
	.byte	W12
	.byte		N12   , Gs3 , v044
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   , Fs3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Ds3 
	.byte		N12   , Bn3 
	.byte	W36
	.byte	PEND
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
mus_hot_to_go_chappell_roan_4_032:
	.byte		N24   , As1 , v044
	.byte		N24   , As2 
	.byte	W24
	.byte		        Cs2 
	.byte		N24   , Cs3 
	.byte	W24
	.byte		        Cs2 
	.byte		N24   , Cs3 
	.byte	W24
	.byte		        Cs2 
	.byte		N24   , Cs3 
	.byte	W24
	.byte	PEND
@ 033   ----------------------------------------
mus_hot_to_go_chappell_roan_4_033:
	.byte		N24   , Ds2 , v044
	.byte		N24   , Ds3 
	.byte	W36
	.byte		N12   , Cs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N24   , Cs2 
	.byte		N24   , Cs3 
	.byte	W36
	.byte	PEND
@ 034   ----------------------------------------
mus_hot_to_go_chappell_roan_4_034:
	.byte		N24   , As1 , v044
	.byte		N24   , As2 
	.byte	W24
	.byte		        Cs2 
	.byte		N24   , Cs3 
	.byte	W24
	.byte		        Fs2 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Gs2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
mus_hot_to_go_chappell_roan_4_035:
	.byte		N24   , Gs2 , v044
	.byte		N24   , Gs3 
	.byte	W36
	.byte		N12   , As2 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N24   , Fs2 
	.byte		N24   , Fs3 
	.byte	W36
	.byte	PEND
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_032
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_033
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_034
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_035
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
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_017
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_017
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_021
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_022
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_023
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
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_032
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_033
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_034
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_035
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_032
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_033
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_034
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_035
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
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_032
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_033
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_034
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_035
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_032
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_033
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_034
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_035
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_032
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_033
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_034
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_035
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_032
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_033
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_4_034
@ 095   ----------------------------------------
	.byte		N24   , Gs2 , v044
	.byte		N24   , Gs3 
	.byte	W36
	.byte		N12   , As2 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N24   , Fs2 
	.byte		N24   , Fs3 
	.byte	W24
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_hot_to_go_chappell_roan_5:
	.byte	KEYSH , mus_hot_to_go_chappell_roan_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 76*mus_hot_to_go_chappell_roan_mvl/mxv
	.byte		PAN   , c_v+22
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
mus_hot_to_go_chappell_roan_5_032:
	.byte		N24   , Fs1 , v052
	.byte		N24   , Cs2 
	.byte		N24   , Fs2 
	.byte	W84
	.byte		        Fs1 
	.byte		N24   , Cs2 
	.byte		N24   , Fs2 
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
mus_hot_to_go_chappell_roan_5_033:
	.byte	W12
	.byte		N12   , Fs1 , v052
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W72
	.byte		N24   , Fs1 
	.byte		N24   , Cs2 
	.byte		N24   , Fs2 
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_033
@ 035   ----------------------------------------
mus_hot_to_go_chappell_roan_5_035:
	.byte	W12
	.byte		N12   , Fs1 , v052
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W72
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte		N24   , Bn2 
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
mus_hot_to_go_chappell_roan_5_036:
	.byte	W12
	.byte		N12   , Bn1 , v052
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W72
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte		N24   , Bn2 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_036
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_036
@ 039   ----------------------------------------
mus_hot_to_go_chappell_roan_5_039:
	.byte	W12
	.byte		N12   , Bn1 , v052
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W84
	.byte	PEND
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
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_032
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_033
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_033
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_035
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_036
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_036
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_036
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_039
@ 072   ----------------------------------------
	.byte		N24   , Fs1 , v052
	.byte		N24   , Cs2 
	.byte		N24   , Fs2 
	.byte	W12
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N24   , Fs1 
	.byte		N24   , Cs2 
	.byte		N24   , Fs2 
	.byte	W12
@ 073   ----------------------------------------
	.byte	W12
	.byte		N12   , Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N24   , Fs1 
	.byte		N24   , Cs2 
	.byte		N24   , Fs2 
	.byte	W12
@ 074   ----------------------------------------
	.byte	W12
	.byte		N12   , Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N24   , Fs1 
	.byte		N24   , Cs2 
	.byte		N24   , Fs2 
	.byte	W12
@ 075   ----------------------------------------
	.byte	W12
	.byte		N12   , Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte		N24   , Bn2 
	.byte	W12
@ 076   ----------------------------------------
mus_hot_to_go_chappell_roan_5_076:
	.byte	W12
	.byte		N12   , Bn1 , v052
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte		N24   , Bn2 
	.byte	W12
	.byte	PEND
@ 077   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte		N24   , Bn2 
	.byte	W12
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_076
@ 079   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn1 , v052
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W24
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_032
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_033
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_033
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_035
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_036
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_036
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_036
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_039
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_032
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_033
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_033
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_035
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_036
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_036
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_5_036
@ 095   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn1 , v052
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte	FINE

@**************** Track 6 (Midi-Chn.10) ****************@

mus_hot_to_go_chappell_roan_6:
	.byte	KEYSH , mus_hot_to_go_chappell_roan_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 8
	.byte		VOL   , 92*mus_hot_to_go_chappell_roan_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Cn1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v064
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v064
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
@ 001   ----------------------------------------
mus_hot_to_go_chappell_roan_6_001:
	.byte		N02   , Cn1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v064
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v064
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v048
	.byte		N02   , Fs1 , v032
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_hot_to_go_chappell_roan_6_002:
	.byte		N02   , Cn1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v064
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v064
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 007   ----------------------------------------
mus_hot_to_go_chappell_roan_6_007:
	.byte		N02   , Cn1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v064
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v064
	.byte		N02   , En1 , v076
	.byte		N02   , En1 , v048
	.byte		N02   , Fs1 , v040
	.byte	W06
	.byte		        En1 , v052
	.byte	W06
	.byte		        Cn1 , v048
	.byte		N02   , En1 , v060
	.byte		N02   , Fs1 , v032
	.byte	W06
	.byte		        En1 , v068
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_007
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_007
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_007
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_007
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_007
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_007
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_007
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_007
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_007
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_007
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_001
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_hot_to_go_chappell_roan_6_002
@ 103   ----------------------------------------
	.byte		N02   , Cn1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v064
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v064
	.byte		N02   , En1 , v076
	.byte		N02   , En1 , v048
	.byte		N02   , Fs1 , v040
	.byte	W06
	.byte		        En1 , v052
	.byte	W06
	.byte		        Cn1 , v048
	.byte		N02   , En1 , v060
	.byte		N02   , Fs1 , v032
	.byte	W06
	.byte		        En1 , v068
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

mus_hot_to_go_chappell_roan:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_hot_to_go_chappell_roan_pri	@ Priority
	.byte	mus_hot_to_go_chappell_roan_rev	@ Reverb.

	.word	mus_hot_to_go_chappell_roan_grp

	.word	mus_hot_to_go_chappell_roan_1
	.word	mus_hot_to_go_chappell_roan_2
	.word	mus_hot_to_go_chappell_roan_3
	.word	mus_hot_to_go_chappell_roan_4
	.word	mus_hot_to_go_chappell_roan_5
	.word	mus_hot_to_go_chappell_roan_6

	.end
