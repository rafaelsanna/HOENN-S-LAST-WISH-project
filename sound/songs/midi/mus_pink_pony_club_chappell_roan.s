	.include "MPlayDef.s"

	.equ	mus_pink_pony_club_chappell_roan_grp, voicegroup_diva_pop
	.equ	mus_pink_pony_club_chappell_roan_pri, 0
	.equ	mus_pink_pony_club_chappell_roan_rev, reverb_set+12
	.equ	mus_pink_pony_club_chappell_roan_mvl, 90
	.equ	mus_pink_pony_club_chappell_roan_key, 0
	.equ	mus_pink_pony_club_chappell_roan_tbs, 1
	.equ	mus_pink_pony_club_chappell_roan_exg, 0
	.equ	mus_pink_pony_club_chappell_roan_cmp, 1

	.section .rodata
	.global	mus_pink_pony_club_chappell_roan
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_pink_pony_club_chappell_roan_1:
	.byte	KEYSH , mus_pink_pony_club_chappell_roan_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 108*mus_pink_pony_club_chappell_roan_tbs/2
	.byte		VOICE , 7
	.byte		VOL   , 96*mus_pink_pony_club_chappell_roan_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		TIE   , Cs2 , v060
	.byte		TIE   , Gs2 
	.byte		TIE   , Cs3 , v068
	.byte	W36
	.byte		N24   , Fn4 
	.byte	W18
	.byte		N18   , Gs4 
	.byte	W12
	.byte		        Bn4 
	.byte	W10
	.byte		N12   , Cs4 
	.byte	W08
	.byte		        Fn4 
	.byte	W04
	.byte		N08   , Gs4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
@ 001   ----------------------------------------
	.byte		N06   , Gs4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		N84   , Fn2 , v060
	.byte	W03
	.byte		N06   , Gs2 
	.byte	W03
	.byte		N60   , Bn2 
	.byte	W03
	.byte		EOT   , Gs2 
	.byte		N06   , Cs3 , v068
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		EOT   , Cs3 
	.byte		N06   , Gs3 
	.byte	W03
	.byte		N12   , Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 002   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N18   , Cs3 
	.byte	W08
	.byte		        Bn2 , v060
	.byte	W08
	.byte		        Gs2 
	.byte	W08
	.byte		        Fn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W06
	.byte		EOT   , Cs2 
	.byte	W06
	.byte		N24   , Fn2 
	.byte	W24
@ 003   ----------------------------------------
	.byte		N96   , Cs2 
	.byte		N96   , Gs2 
	.byte		N96   , Cs3 , v068
	.byte	W96
@ 004   ----------------------------------------
mus_pink_pony_club_chappell_roan_1_004:
	.byte		N96   , Cs2 , v060
	.byte		N96   , Fs2 
	.byte		N96   , As2 
	.byte	W96
	.byte	PEND
@ 005   ----------------------------------------
mus_pink_pony_club_chappell_roan_1_005:
	.byte		N96   , Gs1 , v060
	.byte		N96   , Gs2 
	.byte		N96   , Bn2 
	.byte	W96
	.byte	PEND
@ 006   ----------------------------------------
mus_pink_pony_club_chappell_roan_1_006:
	.byte		N96   , As1 , v060
	.byte		N96   , Ds2 
	.byte		N96   , Fs2 
	.byte	W96
	.byte	PEND
@ 007   ----------------------------------------
	.byte		        Bn1 
	.byte		N96   , Ds2 
	.byte		N96   , Fs2 
	.byte	W96
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_006
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
mus_pink_pony_club_chappell_roan_1_012:
	.byte		N24   , Fs2 , v060
	.byte		N24   , As2 
	.byte	W24
	.byte		        Fs2 
	.byte		N24   , As2 
	.byte	W24
	.byte		        Fs2 
	.byte		N24   , As2 
	.byte	W24
	.byte		        Fs2 
	.byte		N24   , As2 
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
mus_pink_pony_club_chappell_roan_1_013:
	.byte		N24   , Gs2 , v060
	.byte		N24   , Bn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte		N24   , Bn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte		N24   , Bn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte		N24   , Bn2 
	.byte	W12
	.byte		N12   , Ds2 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
mus_pink_pony_club_chappell_roan_1_014:
	.byte		N24   , Ds2 , v060
	.byte		N24   , Fs2 
	.byte	W24
	.byte		        Ds2 
	.byte		N24   , Fs2 
	.byte	W24
	.byte		        Ds2 
	.byte		N24   , Fs2 
	.byte	W24
	.byte		        Ds2 
	.byte		N24   , Fs2 
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_014
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_014
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_014
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
mus_pink_pony_club_chappell_roan_1_028:
	.byte		N36   , Fs2 , v060
	.byte		N36   , As2 
	.byte	W36
	.byte		        Fs2 
	.byte		N36   , As2 
	.byte	W36
	.byte		N24   , Fs2 
	.byte		N24   , As2 
	.byte	W24
	.byte	PEND
@ 029   ----------------------------------------
mus_pink_pony_club_chappell_roan_1_029:
	.byte		N36   , Ds2 , v060
	.byte		N36   , Gs2 
	.byte		N36   , Bn2 
	.byte	W36
	.byte		        Ds2 
	.byte		N36   , Gs2 
	.byte		N36   , Bn2 
	.byte	W36
	.byte		N24   , Ds2 
	.byte		N24   , Gs2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
mus_pink_pony_club_chappell_roan_1_030:
	.byte		N36   , Ds2 , v060
	.byte		N36   , Fs2 
	.byte		N36   , As2 
	.byte	W36
	.byte		        Ds2 
	.byte		N36   , Fs2 
	.byte		N36   , As2 
	.byte	W36
	.byte		N24   , Ds2 
	.byte		N24   , Fs2 
	.byte		N24   , As2 
	.byte	W24
	.byte	PEND
@ 031   ----------------------------------------
mus_pink_pony_club_chappell_roan_1_031:
	.byte		N36   , Ds2 , v060
	.byte		N36   , Fs2 
	.byte		N36   , Bn2 
	.byte	W36
	.byte		        Ds2 
	.byte		N36   , Fs2 
	.byte		N36   , Bn2 
	.byte	W36
	.byte		N24   , Ds2 
	.byte		N24   , Fs2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte	PEND
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_029
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_030
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_031
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
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_028
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_029
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_030
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_031
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_028
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_029
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_030
@ 059   ----------------------------------------
	.byte		N36   , Ds2 , v060
	.byte		N36   , Fs2 
	.byte		N36   , Bn2 
	.byte	W36
	.byte		        Ds2 
	.byte		N36   , Fs2 
	.byte		N36   , Bn2 
	.byte	W36
	.byte		N12   , Ds2 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W24
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_028
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_029
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_030
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_031
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_028
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_029
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_030
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_031
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_028
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_029
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_030
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_031
@ 072   ----------------------------------------
mus_pink_pony_club_chappell_roan_1_072:
	.byte	W03
	.byte		N92   , Gs2 , v060
	.byte	W03
	.byte		N90   , Bn2 
	.byte	W03
	.byte		N84   , Ds3 , v068
	.byte	W84
	.byte	W03
	.byte	PEND
@ 073   ----------------------------------------
mus_pink_pony_club_chappell_roan_1_073:
	.byte	W02
	.byte		N92   , Cs3 , v068
	.byte	W02
	.byte		        Fs3 
	.byte	W02
	.byte		N90   , Gs3 
	.byte	W90
	.byte	PEND
@ 074   ----------------------------------------
mus_pink_pony_club_chappell_roan_1_074:
	.byte		N96   , Ds2 , v060
	.byte	W02
	.byte		N92   , Ds3 , v068
	.byte	W02
	.byte		        Fs3 
	.byte	W02
	.byte		N90   , As3 
	.byte	W90
	.byte	PEND
@ 075   ----------------------------------------
mus_pink_pony_club_chappell_roan_1_075:
	.byte	W02
	.byte		N92   , Ds3 , v068
	.byte	W02
	.byte		        Gs3 
	.byte	W02
	.byte		N90   , Bn3 
	.byte	W90
	.byte	PEND
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_072
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_073
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_074
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_075
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
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_028
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_029
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_030
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_031
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_028
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_029
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_030
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_031
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_028
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_029
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_030
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_031
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_028
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_029
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_030
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_031
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_028
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_029
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_030
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_031
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_028
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_029
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_1_030
@ 111   ----------------------------------------
	.byte		N12   , Gs2 , v060
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 112   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_pink_pony_club_chappell_roan_2:
	.byte	KEYSH , mus_pink_pony_club_chappell_roan_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 88*mus_pink_pony_club_chappell_roan_mvl/mxv
	.byte		PAN   , c_v+0
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
	.byte		N96   , Fs1 , v068
	.byte	W96
@ 013   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 014   ----------------------------------------
	.byte		        Ds1 
	.byte	W96
@ 015   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 016   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 017   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 018   ----------------------------------------
	.byte		        Ds1 
	.byte	W96
@ 019   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 020   ----------------------------------------
mus_pink_pony_club_chappell_roan_2_020:
	.byte		N12   , Fs0 , v068
	.byte	W12
	.byte		N12   
	.byte	W84
	.byte	PEND
@ 021   ----------------------------------------
mus_pink_pony_club_chappell_roan_2_021:
	.byte		N12   , Gs0 , v068
	.byte	W12
	.byte		N12   
	.byte	W84
	.byte	PEND
@ 022   ----------------------------------------
mus_pink_pony_club_chappell_roan_2_022:
	.byte		N12   , Ds1 , v068
	.byte	W12
	.byte		N12   
	.byte	W84
	.byte	PEND
@ 023   ----------------------------------------
mus_pink_pony_club_chappell_roan_2_023:
	.byte		N12   , Bn0 , v068
	.byte	W12
	.byte		N12   
	.byte	W84
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_022
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_023
@ 028   ----------------------------------------
	.byte		N96   , Fs1 , v068
	.byte	W96
@ 029   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 030   ----------------------------------------
	.byte		        Ds1 
	.byte	W96
@ 031   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 032   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 033   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 034   ----------------------------------------
	.byte		        Ds1 
	.byte	W96
@ 035   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_020
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_021
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_022
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_023
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_020
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_021
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_022
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_023
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_020
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_022
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_023
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_020
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_021
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_022
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_023
@ 052   ----------------------------------------
	.byte		N96   , Fs1 , v068
	.byte	W96
@ 053   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 054   ----------------------------------------
	.byte		        Ds1 
	.byte	W96
@ 055   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 056   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 057   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 058   ----------------------------------------
	.byte		        Ds1 
	.byte	W96
@ 059   ----------------------------------------
	.byte		N84   , Bn1 
	.byte	W96
@ 060   ----------------------------------------
	.byte		N96   , Fs1 
	.byte	W96
@ 061   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 062   ----------------------------------------
	.byte		        Ds1 
	.byte	W96
@ 063   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 064   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 065   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 066   ----------------------------------------
	.byte		        Ds1 
	.byte	W96
@ 067   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 068   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 069   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 070   ----------------------------------------
	.byte		        Ds1 
	.byte	W96
@ 071   ----------------------------------------
	.byte		        Bn1 
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
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_020
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_021
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_022
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_023
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_020
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_021
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_022
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_2_023
@ 088   ----------------------------------------
	.byte		N96   , Fs1 , v068
	.byte	W96
@ 089   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 090   ----------------------------------------
	.byte		        Ds1 
	.byte	W96
@ 091   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 092   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 093   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 094   ----------------------------------------
	.byte		        Ds1 
	.byte	W96
@ 095   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 096   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 097   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 098   ----------------------------------------
	.byte		        Ds1 
	.byte	W96
@ 099   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 100   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 101   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 102   ----------------------------------------
	.byte		        Ds1 
	.byte	W96
@ 103   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 104   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 105   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 106   ----------------------------------------
	.byte		        Ds1 
	.byte	W96
@ 107   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 108   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 109   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 110   ----------------------------------------
	.byte		        Ds1 
	.byte	W96
@ 111   ----------------------------------------
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 112   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_pink_pony_club_chappell_roan_3:
	.byte	KEYSH , mus_pink_pony_club_chappell_roan_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 72*mus_pink_pony_club_chappell_roan_mvl/mxv
	.byte		PAN   , c_v-20
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
mus_pink_pony_club_chappell_roan_3_012:
	.byte	W12
	.byte		N12   , As3 , v048
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
mus_pink_pony_club_chappell_roan_3_013:
	.byte	W12
	.byte		N12   , Bn3 , v048
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Ds4 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
mus_pink_pony_club_chappell_roan_3_014:
	.byte	W12
	.byte		N12   , Cs4 , v048
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Fn4 
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
mus_pink_pony_club_chappell_roan_3_015:
	.byte	W12
	.byte		N12   , Ds4 , v048
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_014
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_015
@ 020   ----------------------------------------
mus_pink_pony_club_chappell_roan_3_020:
	.byte		N24   , Cs5 , v048
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_pink_pony_club_chappell_roan_3_021:
	.byte		N18   , As4 , v048
	.byte	W36
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_pink_pony_club_chappell_roan_3_022:
	.byte		N18   , Fs4 , v048
	.byte	W36
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N24   , Ds4 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
mus_pink_pony_club_chappell_roan_3_023:
	.byte	W12
	.byte		N24   , Cs4 , v048
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Cs5 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
mus_pink_pony_club_chappell_roan_3_024:
	.byte	W48
	.byte		N12   , Cs5 , v048
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_021
@ 026   ----------------------------------------
mus_pink_pony_club_chappell_roan_3_026:
	.byte		N18   , Fs4 , v048
	.byte	W36
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N24   , Ds4 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_pink_pony_club_chappell_roan_3_027:
	.byte	W12
	.byte		N24   , Cs4 , v048
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W36
	.byte	PEND
@ 028   ----------------------------------------
mus_pink_pony_club_chappell_roan_3_028:
	.byte		N12   , Cs4 , v048
	.byte		N12   , As4 
	.byte	W24
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N24   , Bn3 
	.byte		N24   , Gs4 
	.byte	W36
	.byte		        Bn4 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_pink_pony_club_chappell_roan_3_029:
	.byte	W12
	.byte		N06   , Bn4 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_028
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_029
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_029
@ 034   ----------------------------------------
mus_pink_pony_club_chappell_roan_3_034:
	.byte		N12   , Cs4 , v048
	.byte		N12   , As4 
	.byte	W24
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N24   , Bn3 
	.byte		N24   , Gs4 
	.byte	W36
	.byte		        Bn3 
	.byte		N24   , Gs4 
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N24   , As3 
	.byte		N24   , Fs4 
	.byte	W42
	.byte		N06   , Fn4 
	.byte	W06
@ 036   ----------------------------------------
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N20   
	.byte	W72
	.byte		N12   
	.byte	W12
@ 037   ----------------------------------------
	.byte		        Fn4 
	.byte	W12
	.byte		N08   , Fs4 
	.byte	W08
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   , Fn4 
	.byte	W52
@ 038   ----------------------------------------
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 039   ----------------------------------------
mus_pink_pony_club_chappell_roan_3_039:
	.byte		N12   , As3 , v048
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N24   , As3 
	.byte	W54
	.byte	PEND
@ 040   ----------------------------------------
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N18   
	.byte	W66
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 041   ----------------------------------------
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N08   , Fs4 
	.byte	W08
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N16   , Fs4 
	.byte	W16
	.byte		N24   , Fn4 
	.byte	W48
@ 042   ----------------------------------------
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_039
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_012
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_013
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_014
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_015
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_012
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_013
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_014
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_015
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_020
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_021
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_022
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_023
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_024
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_021
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_026
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_027
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_028
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_029
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_028
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_029
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_028
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_029
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_034
@ 067   ----------------------------------------
mus_pink_pony_club_chappell_roan_3_067:
	.byte	W24
	.byte		N12   , Bn3 , v048
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N24   , As3 
	.byte		N24   , Fs4 
	.byte	W48
	.byte	PEND
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N24   
	.byte	W66
	.byte		N12   
	.byte	W12
@ 073   ----------------------------------------
	.byte		        Fn4 
	.byte	W12
	.byte		N08   , Fs4 
	.byte	W08
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N08   , Fs4 
	.byte	W08
	.byte		N24   , Fn4 
	.byte	W56
@ 074   ----------------------------------------
mus_pink_pony_club_chappell_roan_3_074:
	.byte		N12   , Cs4 , v048
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 075   ----------------------------------------
	.byte		N12   , As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N24   , As3 
	.byte	W48
	.byte		N06   , Fs3 
	.byte	W06
@ 076   ----------------------------------------
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N24   
	.byte	W78
@ 077   ----------------------------------------
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N08   , Fn4 
	.byte	W08
	.byte		        Fs4 
	.byte	W08
	.byte		N24   , Fn4 
	.byte	W56
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_074
@ 079   ----------------------------------------
	.byte		N12   , As3 , v048
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N24   , As3 
	.byte	W30
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N18   , Fs3 
	.byte	W18
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_020
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_021
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_022
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_023
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_024
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_021
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_026
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_027
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_028
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_029
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_028
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_029
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_028
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_029
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_034
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_067
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	W84
	.byte		N24   , Bn4 , v048
	.byte	W12
@ 105   ----------------------------------------
mus_pink_pony_club_chappell_roan_3_105:
	.byte	W12
	.byte		N06   , Bn4 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , As4 
	.byte	W24
	.byte		N24   
	.byte	W12
	.byte	PEND
@ 106   ----------------------------------------
	.byte	W84
	.byte		        Bn4 
	.byte	W12
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_3_105
@ 108   ----------------------------------------
	.byte	W36
	.byte		N04   , Gs4 , v048
	.byte	W04
	.byte		N08   , As4 
	.byte	W08
	.byte		N24   , Gs4 
	.byte	W36
	.byte		N04   , Fs4 
	.byte	W04
	.byte		N08   , Gs4 
	.byte	W08
@ 109   ----------------------------------------
	.byte		N24   , Fs4 
	.byte	W24
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_pink_pony_club_chappell_roan_4:
	.byte	KEYSH , mus_pink_pony_club_chappell_roan_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 74*mus_pink_pony_club_chappell_roan_mvl/mxv
	.byte		PAN   , c_v+20
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
mus_pink_pony_club_chappell_roan_4_020:
	.byte		N06   , Fs0 , v048
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N06   , Fs1 
	.byte	W24
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W36
	.byte		        Ds3 
	.byte		N06   , Gs3 
	.byte	W24
	.byte	PEND
@ 021   ----------------------------------------
mus_pink_pony_club_chappell_roan_4_021:
	.byte		N06   , Gs0 , v048
	.byte		N06   , Gs1 
	.byte	W12
	.byte		        Gs0 
	.byte		N06   , Gs1 
	.byte	W24
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W36
	.byte		        Gs2 
	.byte		N06   , Ds3 
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
mus_pink_pony_club_chappell_roan_4_022:
	.byte		N06   , Ds0 , v048
	.byte		N06   , Ds1 
	.byte	W12
	.byte		        Ds0 
	.byte		N06   , Ds1 
	.byte	W24
	.byte		        Ds3 
	.byte		N06   , As3 
	.byte	W36
	.byte		        Cs3 
	.byte		N06   , Gs3 
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
mus_pink_pony_club_chappell_roan_4_023:
	.byte		N06   , Bn0 , v048
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Bn1 
	.byte	W24
	.byte		        Ds3 
	.byte		N06   , As3 
	.byte	W36
	.byte		        Bn2 
	.byte		N06   , Fs3 
	.byte	W24
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_022
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_023
@ 028   ----------------------------------------
mus_pink_pony_club_chappell_roan_4_028:
	.byte		N06   , Cs3 , v048
	.byte	W36
	.byte		        As3 
	.byte	W24
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W24
	.byte	PEND
@ 029   ----------------------------------------
mus_pink_pony_club_chappell_roan_4_029:
	.byte		N06   , Ds3 , v048
	.byte	W36
	.byte		        Bn3 
	.byte	W24
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs3 
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
mus_pink_pony_club_chappell_roan_4_030:
	.byte		N06   , Ds3 , v048
	.byte	W36
	.byte		        As3 
	.byte	W24
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W24
	.byte	PEND
@ 031   ----------------------------------------
mus_pink_pony_club_chappell_roan_4_031:
	.byte		N06   , Ds3 , v048
	.byte	W36
	.byte		        Bn3 
	.byte	W24
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W24
	.byte	PEND
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_029
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_030
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_031
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_020
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_021
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_022
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_023
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_020
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_021
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_022
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_023
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_020
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_022
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_023
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_020
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_021
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_022
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_023
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_028
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_029
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_030
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_031
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_028
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_029
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_030
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_031
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_028
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_029
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_030
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_031
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_028
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_029
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_030
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_031
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
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_020
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_021
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_022
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_023
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_020
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_021
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_022
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_023
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_028
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_029
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_030
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_031
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_028
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_029
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_030
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_031
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_028
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_029
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_030
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_031
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_028
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_029
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_030
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_031
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_028
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_029
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_030
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_031
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_028
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_029
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_4_030
@ 111   ----------------------------------------
	.byte		N06   , Bn2 , v048
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W06
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_pink_pony_club_chappell_roan_5:
	.byte	KEYSH , mus_pink_pony_club_chappell_roan_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 62*mus_pink_pony_club_chappell_roan_mvl/mxv
	.byte		PAN   , c_v-16
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
mus_pink_pony_club_chappell_roan_5_020:
	.byte		N06   , Fs1 , v040
	.byte		N06   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte		N06   , Fs2 
	.byte	W84
	.byte	PEND
@ 021   ----------------------------------------
mus_pink_pony_club_chappell_roan_5_021:
	.byte		N06   , Gs1 , v040
	.byte		N06   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N06   , Gs2 
	.byte	W84
	.byte	PEND
@ 022   ----------------------------------------
mus_pink_pony_club_chappell_roan_5_022:
	.byte		N06   , Ds1 , v040
	.byte		N06   , Ds2 
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , Ds2 
	.byte	W84
	.byte	PEND
@ 023   ----------------------------------------
mus_pink_pony_club_chappell_roan_5_023:
	.byte		N06   , Bn1 , v040
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N06   , Bn2 
	.byte	W84
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_022
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_023
@ 028   ----------------------------------------
mus_pink_pony_club_chappell_roan_5_028:
	.byte		N06   , Cs2 , v040
	.byte	W36
	.byte		        As2 
	.byte	W24
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W24
	.byte	PEND
@ 029   ----------------------------------------
mus_pink_pony_club_chappell_roan_5_029:
	.byte		N06   , Ds2 , v040
	.byte	W36
	.byte		        Bn2 
	.byte	W24
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
mus_pink_pony_club_chappell_roan_5_030:
	.byte		N06   , Ds2 , v040
	.byte	W36
	.byte		        As2 
	.byte	W24
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W24
	.byte	PEND
@ 031   ----------------------------------------
mus_pink_pony_club_chappell_roan_5_031:
	.byte		N06   , Ds2 , v040
	.byte	W36
	.byte		        Bn2 
	.byte	W24
	.byte		        Ds2 
	.byte	W12
	.byte		        Fs2 
	.byte	W24
	.byte	PEND
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_029
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_030
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_031
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_020
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_021
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_022
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_023
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_020
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_021
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_022
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_023
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_020
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_022
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_023
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_020
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_021
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_022
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_023
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_028
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_029
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_030
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_031
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_028
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_029
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_030
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_031
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_028
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_029
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_030
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_031
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_028
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_029
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_030
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_031
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
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_020
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_021
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_022
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_023
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_020
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_021
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_022
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_023
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_028
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_029
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_030
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_031
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_028
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_029
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_030
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_031
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_028
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_029
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_030
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_031
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_028
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_029
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_030
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_031
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_028
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_029
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_030
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_031
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_028
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_029
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_5_030
@ 111   ----------------------------------------
	.byte		N06   , Gs2 , v040
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Fs2 
	.byte		N06   , As2 
	.byte	W12
	.byte		        Ds2 
	.byte		N06   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_pink_pony_club_chappell_roan_6:
	.byte	KEYSH , mus_pink_pony_club_chappell_roan_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 78*mus_pink_pony_club_chappell_roan_mvl/mxv
	.byte		PAN   , c_v+24
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
mus_pink_pony_club_chappell_roan_6_068:
	.byte		N08   , Fs4 , v056
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte	PEND
@ 069   ----------------------------------------
mus_pink_pony_club_chappell_roan_6_069:
	.byte		N08   , Gs4 , v056
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte	PEND
@ 070   ----------------------------------------
mus_pink_pony_club_chappell_roan_6_070:
	.byte		N08   , As4 , v056
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte	PEND
@ 071   ----------------------------------------
	.byte		        As4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , Fs4 
	.byte	W24
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
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte		        Ds4 
	.byte	W42
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , As3 
	.byte	W48
@ 097   ----------------------------------------
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cs4 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
@ 098   ----------------------------------------
	.byte		        Ds4 
	.byte	W48
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N12   , Fs4 
	.byte	W24
@ 099   ----------------------------------------
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N12   , As3 
	.byte	W48
@ 100   ----------------------------------------
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W24
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N12   , Fs4 
	.byte	W24
@ 101   ----------------------------------------
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W24
	.byte		N06   , As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N12   , Gs4 
	.byte	W24
@ 102   ----------------------------------------
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W24
	.byte		N06   , As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N12   , As4 
	.byte	W24
@ 103   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W24
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_6_068
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_6_069
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_6_070
@ 107   ----------------------------------------
	.byte		N08   , Fs4 , v056
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 108   ----------------------------------------
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 109   ----------------------------------------
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_6_070
@ 111   ----------------------------------------
	.byte		N08   , Bn4 , v056
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N06   , Cs4 
	.byte	W06
@ 112   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.10) ****************@

mus_pink_pony_club_chappell_roan_7:
	.byte	KEYSH , mus_pink_pony_club_chappell_roan_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 8
	.byte		VOL   , 92*mus_pink_pony_club_chappell_roan_mvl/mxv
	.byte		PAN   , c_v+0
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
mus_pink_pony_club_chappell_roan_7_028:
	.byte		N02   , Cn1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v048
	.byte		N02   , Fs1 , v032
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v068
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v052
	.byte		N02   , Fs1 , v032
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 031   ----------------------------------------
mus_pink_pony_club_chappell_roan_7_031:
	.byte		N02   , Cn1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v048
	.byte		N02   , Fs1 , v032
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v068
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v052
	.byte		N02   , Fs1 , v032
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , En1 , v048
	.byte		N02   , Fs1 , v040
	.byte	W06
	.byte		        En1 , v052
	.byte	W06
	.byte		        En1 , v060
	.byte		N02   , Fs1 , v032
	.byte	W06
	.byte		        En1 , v068
	.byte	W06
	.byte	PEND
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_031
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_031
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_031
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_031
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_031
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
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_031
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_031
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_028
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_pink_pony_club_chappell_roan_7_031
@ 112   ----------------------------------------
	.byte		N02   , Cn1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

mus_pink_pony_club_chappell_roan:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_pink_pony_club_chappell_roan_pri	@ Priority
	.byte	mus_pink_pony_club_chappell_roan_rev	@ Reverb.

	.word	mus_pink_pony_club_chappell_roan_grp

	.word	mus_pink_pony_club_chappell_roan_1
	.word	mus_pink_pony_club_chappell_roan_2
	.word	mus_pink_pony_club_chappell_roan_3
	.word	mus_pink_pony_club_chappell_roan_4
	.word	mus_pink_pony_club_chappell_roan_5
	.word	mus_pink_pony_club_chappell_roan_6
	.word	mus_pink_pony_club_chappell_roan_7

	.end
