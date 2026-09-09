	.include "MPlayDef.s"

	.equ	mus_paparazzi_lady_gaga_grp, voicegroup_littleroot_test
	.equ	mus_paparazzi_lady_gaga_pri, 0
	.equ	mus_paparazzi_lady_gaga_rev, reverb_set+12
	.equ	mus_paparazzi_lady_gaga_mvl, 90
	.equ	mus_paparazzi_lady_gaga_key, 0
	.equ	mus_paparazzi_lady_gaga_tbs, 1
	.equ	mus_paparazzi_lady_gaga_exg, 1
	.equ	mus_paparazzi_lady_gaga_cmp, 1

	.section .rodata
	.global	mus_paparazzi_lady_gaga
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_paparazzi_lady_gaga_1:
	.byte		VOL   , 127*mus_paparazzi_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_paparazzi_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 116*mus_paparazzi_lady_gaga_tbs/2
	.byte		VOICE , 45
	.byte		TIE   , Cn2 , v036
	.byte		TIE   , Gn2 
	.byte		TIE   , Cn3 
	.byte		TIE   , Ds3 
	.byte		TIE   , Gn3 
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn2 
	.byte		        Gn2 
	.byte		        Cn3 
	.byte		        Ds3 
	.byte		        Gn3 
@ 004   ----------------------------------------
mus_paparazzi_lady_gaga_1_004:
	.byte		N24   , Cn2 , v036
	.byte		N24   
	.byte		TIE   , Gn2 
	.byte		N36   , Cn3 
	.byte		TIE   , Ds3 
	.byte		TIE   , Gn3 
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte	W60
	.byte	PEND
@ 005   ----------------------------------------
mus_paparazzi_lady_gaga_1_005:
	.byte	W12
	.byte		N12   , Cn3 , v036
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn2 
	.byte	W60
	.byte	PEND
@ 006   ----------------------------------------
mus_paparazzi_lady_gaga_1_006:
	.byte		N24   , Cn2 , v036
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte	W60
	.byte	PEND
@ 007   ----------------------------------------
mus_paparazzi_lady_gaga_1_007:
	.byte	W36
	.byte		N12   , As1 , v036
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
	.byte		EOT   , Gn2 
	.byte		        Ds3 
	.byte		        Gn3 
@ 008   ----------------------------------------
mus_paparazzi_lady_gaga_1_008:
	.byte		TIE   , Gs1 , v036
	.byte		N24   , Cn2 
	.byte		N24   
	.byte		TIE   , Ds2 
	.byte		TIE   , Gs2 
	.byte		TIE   , Ds3 
	.byte		TIE   , Gs3 
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte	W60
	.byte	PEND
@ 009   ----------------------------------------
mus_paparazzi_lady_gaga_1_009:
	.byte		N24   , Cn2 , v036
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte	W24
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N12   , Cn2 
	.byte	W12
	.byte	PEND
	.byte		EOT   , Gs1 
	.byte		        Ds2 
	.byte		        Gs2 
	.byte		        Ds3 
	.byte		        Gs3 
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_007
	.byte		EOT   , Gn2 
	.byte		        Ds3 
	.byte		        Gn3 
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_007
	.byte		EOT   , Gn2 
	.byte		        Ds3 
	.byte		        Gn3 
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_009
	.byte		EOT   , Gs1 
	.byte		        Ds2 
	.byte		        Gs2 
	.byte		        Ds3 
	.byte		        Gs3 
@ 018   ----------------------------------------
mus_paparazzi_lady_gaga_1_018:
	.byte		TIE   , Fn1 , v036
	.byte		N24   , Cn2 
	.byte		N24   
	.byte		TIE   , Fn2 
	.byte		TIE   , Gs2 
	.byte		N36   , Cn3 
	.byte		TIE   , Fn3 
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte	W60
	.byte	PEND
@ 019   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn1 
	.byte		        Fn2 
	.byte		        Gs2 
	.byte		        Fn3 
@ 020   ----------------------------------------
mus_paparazzi_lady_gaga_1_020:
	.byte		N96   , Gs1 , v036
	.byte		N96   
	.byte		N96   , Cn2 
	.byte		N96   
	.byte		N96   , Ds2 
	.byte		N96   
	.byte		N96   , Gs2 
	.byte		N96   
	.byte		N96   , Ds3 
	.byte		N96   
	.byte		N96   , Gs3 
	.byte		N96   
	.byte	W96
	.byte	PEND
@ 021   ----------------------------------------
mus_paparazzi_lady_gaga_1_021:
	.byte		N96   , Ds2 , v036
	.byte		N96   
	.byte		N96   , As2 
	.byte		N96   
	.byte		N96   , Ds3 
	.byte		N96   
	.byte		N96   , Gn3 
	.byte		N96   
	.byte	W96
	.byte	PEND
@ 022   ----------------------------------------
mus_paparazzi_lady_gaga_1_022:
	.byte		N96   , Fn1 , v036
	.byte		N96   
	.byte		N96   , Cn2 
	.byte		N96   
	.byte		N96   , Fn2 
	.byte		N96   
	.byte		N96   , Gs2 
	.byte		N96   
	.byte		N96   , Cn3 
	.byte		N96   
	.byte		N96   , Fn3 
	.byte		N96   
	.byte	W96
	.byte	PEND
@ 023   ----------------------------------------
mus_paparazzi_lady_gaga_1_023:
	.byte		N96   , Cs2 , v036
	.byte		N96   
	.byte		N96   , Fn2 
	.byte		N96   
	.byte		N96   , Gs2 
	.byte		N96   
	.byte		N96   , Cs3 
	.byte		N96   
	.byte		N96   , Fn3 
	.byte		N96   
	.byte	W96
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_022
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_023
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_021
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_022
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_023
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_020
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_021
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_022
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_023
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_006
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_007
	.byte		EOT   , Gn2 
	.byte		        Ds3 
	.byte		        Gn3 
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_008
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_009
	.byte		EOT   , Gs1 
	.byte		        Ds2 
	.byte		        Gs2 
	.byte		        Ds3 
	.byte		        Gs3 
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_004
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_007
	.byte		EOT   , Gn2 
	.byte		        Ds3 
	.byte		        Gn3 
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_004
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_005
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_006
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_007
	.byte		EOT   , Gn2 
	.byte		        Ds3 
	.byte		        Gn3 
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_008
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_009
	.byte		EOT   , Gs1 
	.byte		        Ds2 
	.byte		        Gs2 
	.byte		        Ds3 
	.byte		        Gs3 
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_018
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_007
	.byte		EOT   , Fn1 
	.byte		        Fn2 
	.byte		        Gs2 
	.byte		        Fn3 
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_020
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_021
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_022
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_023
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_020
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_021
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_022
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_023
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_020
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_021
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_022
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_023
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_020
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_021
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_022
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_023
@ 072   ----------------------------------------
mus_paparazzi_lady_gaga_1_072:
	.byte		N36   , Gn2 , v036
	.byte	W36
	.byte		N48   , Cn2 
	.byte	W60
	.byte	PEND
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_072
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte		N24   , Cn2 , v036
	.byte	W24
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N60   , Cn2 
	.byte	W60
@ 077   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 078   ----------------------------------------
	.byte		TIE   , Fn1 
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_020
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_021
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_022
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_023
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_020
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_021
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_022
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_023
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_020
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_021
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_022
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_023
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_020
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_021
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_022
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_1_023
@ 096   ----------------------------------------
	.byte		N96   , Gs1 , v036
	.byte		N96   , Gs2 
	.byte	W96
@ 097   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , Ds3 
	.byte	W96
@ 098   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Fn2 
	.byte	W96
@ 099   ----------------------------------------
	.byte		        Cs2 
	.byte		N96   , Cs3 
	.byte	W96
@ 100   ----------------------------------------
	.byte		        Gs1 
	.byte		N96   , Gs2 
	.byte	W96
@ 101   ----------------------------------------
	.byte		        Ds2 
	.byte		N96   , Ds3 
	.byte	W96
@ 102   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Fn2 
	.byte	W96
@ 103   ----------------------------------------
	.byte		        Cs2 
	.byte		N96   , Cs3 
	.byte	W96
@ 104   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.10) ****************@

mus_paparazzi_lady_gaga_2:
	.byte		VOL   , 127*mus_paparazzi_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_paparazzi_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		N24   , Cn1 , v036
	.byte	W24
	.byte		N12   , Cn0 
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N24   
	.byte	W30
	.byte		        Cn0 
	.byte		N24   , Dn1 
	.byte	W24
@ 001   ----------------------------------------
mus_paparazzi_lady_gaga_2_001:
	.byte		N24   , Cn1 , v036
	.byte	W24
	.byte		N12   , Cn0 
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N24   
	.byte	W30
	.byte		        Cn0 
	.byte		N24   , Dn1 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 003   ----------------------------------------
mus_paparazzi_lady_gaga_2_003:
	.byte		N12   , Cn1 , v036
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn0 
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn0 
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 019   ----------------------------------------
mus_paparazzi_lady_gaga_2_019:
	.byte	W72
	.byte		N06   , Cn0 , v036
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_019
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
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
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_019
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_001
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_2_003
@ 104   ----------------------------------------
	.byte		N96   , Cn0 , v036
	.byte		N96   
	.byte	W96
@ 105   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.2) ****************@

mus_paparazzi_lady_gaga_3:
	.byte		VOL   , 127*mus_paparazzi_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_paparazzi_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_paparazzi_lady_gaga_3_004:
	.byte		N12   , Gn2 , v036
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
mus_paparazzi_lady_gaga_3_005:
	.byte		N12   , Gn2 , v036
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_005
@ 007   ----------------------------------------
mus_paparazzi_lady_gaga_3_007:
	.byte		N12   , Gn2 , v036
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N24   , Gs2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		N12   , Ds2 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_paparazzi_lady_gaga_3_008:
	.byte		N24   , Dn2 , v036
	.byte	W24
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W60
	.byte	PEND
@ 009   ----------------------------------------
mus_paparazzi_lady_gaga_3_009:
	.byte		N24   , Gn2 , v036
	.byte	W24
	.byte		        Ds2 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_008
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_004
@ 013   ----------------------------------------
	.byte		N12   , Gn2 , v036
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W48
	.byte		N12   
	.byte	W12
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_005
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_009
@ 018   ----------------------------------------
mus_paparazzi_lady_gaga_3_018:
	.byte		N24   , Dn2 , v036
	.byte	W24
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W48
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
mus_paparazzi_lady_gaga_3_019:
	.byte		N12   , Gn2 , v036
	.byte	W12
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N18   , Gn2 
	.byte	W18
	.byte		N12   , As2 
	.byte	W12
	.byte		N48   , Gn2 
	.byte	W48
	.byte	PEND
@ 020   ----------------------------------------
mus_paparazzi_lady_gaga_3_020:
	.byte		N12   , Gs3 , v036
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , As3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_paparazzi_lady_gaga_3_021:
	.byte	W12
	.byte		N12   , Gn3 , v036
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_paparazzi_lady_gaga_3_022:
	.byte	W12
	.byte		N24   , Gs3 , v036
	.byte	W36
	.byte		N18   , Gn3 
	.byte	W18
	.byte		N12   , Gs3 
	.byte	W30
	.byte	PEND
@ 023   ----------------------------------------
mus_paparazzi_lady_gaga_3_023:
	.byte		N18   , Gn3 , v036
	.byte	W18
	.byte		        Gs3 
	.byte	W18
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Gs3 
	.byte	W36
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_022
@ 027   ----------------------------------------
mus_paparazzi_lady_gaga_3_027:
	.byte		N18   , Gn3 , v036
	.byte	W18
	.byte		        Gs3 
	.byte	W18
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_paparazzi_lady_gaga_3_028:
	.byte		N24   , Ds4 , v036
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		N12   , As3 
	.byte	W12
	.byte		N48   , Gn3 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_paparazzi_lady_gaga_3_029:
	.byte	W36
	.byte		N12   , Ds3 , v036
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
mus_paparazzi_lady_gaga_3_030:
	.byte		N24   , Ds4 , v036
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		N12   , As3 
	.byte	W12
	.byte		N48   , Fn3 
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_020
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_021
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_022
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_023
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_005
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_007
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_008
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_009
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_008
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_004
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_005
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_005
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_007
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_008
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_009
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_018
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_019
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_020
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_021
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_022
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_023
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_020
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_021
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_022
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_027
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_028
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_029
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_030
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_020
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_021
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_022
@ 071   ----------------------------------------
	.byte		N18   , Gn3 , v036
	.byte	W18
	.byte		        Gs3 
	.byte	W18
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Gs3 
	.byte	W32
	.byte	W01
	.byte		N06   , Fn3 , v032
	.byte	W03
@ 072   ----------------------------------------
	.byte		N36   , Gn3 , v036
	.byte	W36
	.byte		        Cn3 
	.byte	W36
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 073   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N24   , Cn3 
	.byte	W21
	.byte		N06   , Fn3 , v032
	.byte	W03
@ 074   ----------------------------------------
	.byte		N36   , Gn3 , v036
	.byte	W36
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 075   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N24   , Cn3 
	.byte	W24
@ 076   ----------------------------------------
	.byte	W21
	.byte		N06   , Fn3 , v032
	.byte	W03
	.byte		N24   , Gn3 , v036
	.byte	W24
	.byte		N48   , Cn3 
	.byte	W48
@ 077   ----------------------------------------
	.byte		N12   , As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N48   , Cn3 
	.byte	W60
@ 078   ----------------------------------------
	.byte	W21
	.byte		N06   , Fn3 , v032
	.byte	W03
	.byte		N24   , Gn3 , v036
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 079   ----------------------------------------
	.byte		        Gn3 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W48
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_020
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_021
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_022
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_023
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_020
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_021
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_022
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_027
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_028
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_029
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_030
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_020
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_021
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_022
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_3_023
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
	.byte	FINE

@**************** Track 4 (Midi-Chn.3) ****************@

mus_paparazzi_lady_gaga_4:
	.byte		VOL   , 127*mus_paparazzi_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_paparazzi_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_paparazzi_lady_gaga_4_004:
	.byte		N24   , Cn1 , v036
	.byte	W24
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N24   , Cn1 
	.byte	W60
	.byte	PEND
@ 005   ----------------------------------------
mus_paparazzi_lady_gaga_4_005:
	.byte	W12
	.byte		N12   , Cn2 , v036
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 
	.byte	W60
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 007   ----------------------------------------
mus_paparazzi_lady_gaga_4_007:
	.byte	W36
	.byte		N12   , As0 , v036
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte		N96   , Gs0 , v036
	.byte		N96   , Gs1 
	.byte	W96
@ 021   ----------------------------------------
	.byte		        Ds1 
	.byte		N96   , Ds2 
	.byte	W96
@ 022   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Fn2 
	.byte	W96
@ 023   ----------------------------------------
	.byte		        Cs1 
	.byte		N96   , Cs2 
	.byte	W96
@ 024   ----------------------------------------
	.byte		        Gs0 
	.byte		N96   , Gs1 
	.byte	W96
@ 025   ----------------------------------------
	.byte		        Ds1 
	.byte		N96   , Ds2 
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Fn2 
	.byte	W96
@ 027   ----------------------------------------
	.byte		        Cs1 
	.byte		N96   , Cs2 
	.byte	W96
@ 028   ----------------------------------------
	.byte		        Gs0 
	.byte		N96   , Gs1 
	.byte	W96
@ 029   ----------------------------------------
	.byte		        Ds1 
	.byte		N96   , Ds2 
	.byte	W96
@ 030   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Fn2 
	.byte	W96
@ 031   ----------------------------------------
	.byte		        Cs1 
	.byte		N96   , Cs2 
	.byte	W96
@ 032   ----------------------------------------
	.byte		        Gs0 
	.byte		N96   , Gs1 
	.byte	W96
@ 033   ----------------------------------------
	.byte		        Ds1 
	.byte		N96   , Ds2 
	.byte	W96
@ 034   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Fn2 
	.byte	W96
@ 035   ----------------------------------------
	.byte		        Cs1 
	.byte		N96   , Cs2 
	.byte	W96
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_005
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_007
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_007
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_005
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_007
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_005
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_007
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_005
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_007
@ 056   ----------------------------------------
	.byte		N96   , Gs0 , v036
	.byte		N96   , Gs1 
	.byte	W96
@ 057   ----------------------------------------
	.byte		        Ds1 
	.byte		N96   , Ds2 
	.byte	W96
@ 058   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Fn2 
	.byte	W96
@ 059   ----------------------------------------
	.byte		        Cs1 
	.byte		N96   , Cs2 
	.byte	W96
@ 060   ----------------------------------------
	.byte		        Gs0 
	.byte		N96   , Gs1 
	.byte	W96
@ 061   ----------------------------------------
	.byte		        Ds1 
	.byte		N96   , Ds2 
	.byte	W96
@ 062   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Fn2 
	.byte	W96
@ 063   ----------------------------------------
	.byte		        Cs1 
	.byte		N96   , Cs2 
	.byte	W96
@ 064   ----------------------------------------
	.byte		        Gs0 
	.byte		N96   , Gs1 
	.byte	W96
@ 065   ----------------------------------------
	.byte		        Ds1 
	.byte		N96   , Ds2 
	.byte	W96
@ 066   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Fn2 
	.byte	W96
@ 067   ----------------------------------------
	.byte		        Cs1 
	.byte		N96   , Cs2 
	.byte	W96
@ 068   ----------------------------------------
	.byte		        Gs0 
	.byte		N96   , Gs1 
	.byte	W96
@ 069   ----------------------------------------
	.byte		        Ds1 
	.byte		N96   , Ds2 
	.byte	W96
@ 070   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Fn2 
	.byte	W96
@ 071   ----------------------------------------
	.byte		        Cs1 
	.byte		N96   , Cs2 
	.byte	W96
@ 072   ----------------------------------------
mus_paparazzi_lady_gaga_4_072:
	.byte		N36   , Gn1 , v036
	.byte	W36
	.byte		N48   , Cn1 
	.byte	W60
	.byte	PEND
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_072
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte		N24   , Cn1 , v036
	.byte	W24
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N60   , Cn1 
	.byte	W60
@ 077   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 078   ----------------------------------------
	.byte		TIE   , Fn0 
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 080   ----------------------------------------
	.byte		N96   , Gs0 
	.byte		N96   , Gs1 
	.byte	W96
@ 081   ----------------------------------------
	.byte		        Ds1 
	.byte		N96   , Ds2 
	.byte	W96
@ 082   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Fn2 
	.byte	W96
@ 083   ----------------------------------------
	.byte		        Cs1 
	.byte		N96   , Cs2 
	.byte	W96
@ 084   ----------------------------------------
	.byte		        Gs0 
	.byte		N96   , Gs1 
	.byte	W96
@ 085   ----------------------------------------
	.byte		        Ds1 
	.byte		N96   , Ds2 
	.byte	W96
@ 086   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Fn2 
	.byte	W96
@ 087   ----------------------------------------
	.byte		        Cs1 
	.byte		N96   , Cs2 
	.byte	W96
@ 088   ----------------------------------------
	.byte		        Gs0 
	.byte		N96   , Gs1 
	.byte	W96
@ 089   ----------------------------------------
	.byte		        Ds1 
	.byte		N96   , Ds2 
	.byte	W96
@ 090   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Fn2 
	.byte	W96
@ 091   ----------------------------------------
	.byte		        Cs1 
	.byte		N96   , Cs2 
	.byte	W96
@ 092   ----------------------------------------
	.byte		        Gs0 
	.byte		N96   , Gs1 
	.byte	W96
@ 093   ----------------------------------------
	.byte		        Ds1 
	.byte		N96   , Ds2 
	.byte	W96
@ 094   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Fn2 
	.byte	W96
@ 095   ----------------------------------------
	.byte		        Cs1 
	.byte		N96   , Cs2 
	.byte	W96
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_005
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_007
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_005
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_004
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_paparazzi_lady_gaga_4_007
@ 104   ----------------------------------------
	.byte		N12   , As0 , v036
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

mus_paparazzi_lady_gaga:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_paparazzi_lady_gaga_pri	@ Priority
	.byte	mus_paparazzi_lady_gaga_rev	@ Reverb.

	.word	mus_paparazzi_lady_gaga_grp

	.word	mus_paparazzi_lady_gaga_1
	.word	mus_paparazzi_lady_gaga_2
	.word	mus_paparazzi_lady_gaga_3
	.word	mus_paparazzi_lady_gaga_4

	.end
