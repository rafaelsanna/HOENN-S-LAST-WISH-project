	.include "MPlayDef.s"

	.equ	mus_fire_emblem_mystery_of_the_emblem_grp, voicegroup_brothers
	.equ	mus_fire_emblem_mystery_of_the_emblem_pri, 0
	.equ	mus_fire_emblem_mystery_of_the_emblem_rev, reverb_set+18
	.equ	mus_fire_emblem_mystery_of_the_emblem_mvl, 90
	.equ	mus_fire_emblem_mystery_of_the_emblem_key, 0
	.equ	mus_fire_emblem_mystery_of_the_emblem_tbs, 1
	.equ	mus_fire_emblem_mystery_of_the_emblem_exg, 0
	.equ	mus_fire_emblem_mystery_of_the_emblem_cmp, 1

	.section .rodata
	.global	mus_fire_emblem_mystery_of_the_emblem
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_fire_emblem_mystery_of_the_emblem_1:
	.byte	KEYSH , mus_fire_emblem_mystery_of_the_emblem_key+0
mus_fire_emblem_mystery_of_the_emblem_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 125*mus_fire_emblem_mystery_of_the_emblem_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 90*mus_fire_emblem_mystery_of_the_emblem_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		TIE   , Cs2 , v076
	.byte	W96
@ 002   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		EOT   , Cs2 
@ 003   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_003:
	.byte		N42   , Fs1 , v076
	.byte		N42   , Fs2 
	.byte	W36
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N36   
	.byte		N42   , As2 
	.byte	W24
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_004:
	.byte		N36   , Gs1 , v076
	.byte		N36   , Bn1 
	.byte		N42   , Bn2 
	.byte	W36
	.byte		N06   , Gs1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		N24   , Gs1 
	.byte		N24   , Bn1 
	.byte		N42   , Gs2 
	.byte	W24
	.byte		N24   , Ds1 
	.byte		N12   , As1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_005:
	.byte		N42   , Gs1 , v076
	.byte		N42   , Gs2 
	.byte	W36
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte		N14   , Cs2 
	.byte	W12
	.byte		N12   , Gs1 
	.byte	W04
	.byte		N14   , Ds2 
	.byte	W08
	.byte		N24   , Ds1 
	.byte	W08
	.byte		N14   , Fn2 
	.byte	W04
	.byte		N12   , Ds1 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_006:
	.byte		N36   , Fs1 , v076
	.byte		N36   , Cs2 
	.byte		N42   , As2 
	.byte	W36
	.byte		N06   , Fs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N24   , Cs1 
	.byte		N12   , Cs2 
	.byte		N42   , Gs2 
	.byte	W12
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N24   , Cs1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_007:
	.byte		N42   , Fs1 , v076
	.byte		N42   , Fs2 
	.byte	W36
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   
	.byte		N42   , As2 
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   
	.byte	W12
	.byte		N06   , Fs1 , v072
	.byte	W06
	.byte		        Fs1 , v076
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_008:
	.byte		N36   , Gs1 , v076
	.byte		N36   , Bn1 
	.byte		N42   , Bn2 
	.byte	W36
	.byte		N06   , Gs1 
	.byte		N06   , Bn1 , v068
	.byte	W06
	.byte		        Gs1 , v076
	.byte		N06   , Bn1 , v072
	.byte	W06
	.byte		N24   , Gs1 , v076
	.byte		N36   , Bn1 
	.byte		N42   , Gs2 
	.byte	W24
	.byte		N24   , Ds1 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_009:
	.byte		N36   , Gs1 , v076
	.byte		N42   , Gs2 
	.byte	W36
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N24   , Ds1 
	.byte		N36   , Cs2 
	.byte		N42   , Cs3 
	.byte	W24
	.byte		N24   , Cs1 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_010:
	.byte		N36   , Fs1 , v076
	.byte		N36   , Fs2 
	.byte		N60   , As2 
	.byte	W36
	.byte		N06   , Fs1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N24   , Fs1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_011:
	.byte		N48   , Fs1 , v076
	.byte		N96   , Fs2 
	.byte	W48
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_012:
	.byte		N36   , Gs1 , v076
	.byte		N42   , Fs2 
	.byte	W36
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N24   
	.byte		N21   , Ds2 
	.byte	W24
	.byte		N24   , Ds1 
	.byte		N10   , Ds2 
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_013:
	.byte		N72   , Gs1 , v076
	.byte		N30   , Ds2 
	.byte	W36
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N24   , Ds1 
	.byte		N21   , Ds2 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_014:
	.byte		N36   , Fs1 , v076
	.byte		N42   , Cs2 
	.byte	W36
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N24   , Cs1 
	.byte		N21   , Cs2 
	.byte	W24
	.byte		N24   , Cs1 
	.byte		N21   , Gs1 
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_015:
	.byte		N48   , Fs1 , v076
	.byte		N60   , Fs2 
	.byte	W48
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N24   
	.byte		N21   , As2 
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_016:
	.byte		N36   , Gs1 , v076
	.byte		N42   , Bn2 
	.byte	W36
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N24   
	.byte		N21   , Bn2 
	.byte	W24
	.byte		N24   , Ds1 
	.byte		N21   , As2 
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_017:
	.byte		N36   , Gs1 , v076
	.byte		N42   , Ds2 
	.byte	W36
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N24   , Ds1 
	.byte		N42   , Gs2 
	.byte	W24
	.byte		N24   , Cs1 
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_018:
	.byte		N36   , Fs1 , v076
	.byte		N72   , Fs2 
	.byte	W36
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	TEMPO , 120*mus_fire_emblem_mystery_of_the_emblem_tbs/2
	.byte		N24   
	.byte	W24
	.byte	TEMPO , 115*mus_fire_emblem_mystery_of_the_emblem_tbs/2
	.byte		N12   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_019:
	.byte		N48   , Ds1 , v076
	.byte		N42   , Gs2 
	.byte	W48
	.byte		N48   , Gs1 
	.byte		N42   , Cs3 
	.byte	W48
	.byte	PEND
@ 020   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_020:
	.byte		N48   , Fn1 , v076
	.byte		N42   , As2 
	.byte	W48
	.byte		N24   , As1 
	.byte		N21   , Ds3 
	.byte	W24
	.byte		N24   , Gs1 
	.byte		N21   , Cs3 
	.byte	W24
	.byte	PEND
@ 021   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_021:
	.byte		N48   , Fs1 , v076
	.byte		N42   , Bn2 
	.byte	W48
	.byte		N48   , Gs1 
	.byte		N42   , Cs3 
	.byte	W48
	.byte	PEND
@ 022   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_022:
	.byte		N72   , As1 , v076
	.byte		N84   , Fs2 
	.byte	W72
	.byte		N24   , As1 
	.byte	W12
	.byte	TEMPO , 120*mus_fire_emblem_mystery_of_the_emblem_tbs/2
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_023:
	.byte		N24   , Ds1 , v076
	.byte		N42   , Gs2 
	.byte	W24
	.byte		N24   , Ds1 
	.byte	W24
	.byte		        Gs1 
	.byte		N42   , Cs3 
	.byte	W24
	.byte		N24   , Gs1 
	.byte	W24
	.byte	PEND
@ 024   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_024:
	.byte		N24   , Fn1 , v076
	.byte		N42   , As2 
	.byte	W24
	.byte		N24   , Fn1 
	.byte	W24
	.byte		        Bn1 
	.byte		N21   , Ds3 
	.byte	W24
	.byte		N24   , As1 
	.byte		N21   , Cs3 
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_025:
	.byte		N24   , Gs1 , v076
	.byte		N42   , Bn2 
	.byte	W24
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        As1 
	.byte		N42   , Cn3 
	.byte	W24
	.byte		N24   , Cn2 
	.byte	W24
	.byte	PEND
@ 026   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_026:
	.byte	TEMPO , 122*mus_fire_emblem_mystery_of_the_emblem_tbs/2
	.byte		N30   , Cs2 , v076
	.byte		N42   , Cs3 
	.byte	W12
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Gs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	TEMPO , 125*mus_fire_emblem_mystery_of_the_emblem_tbs/2
	.byte		N12   
	.byte		N21   , Gs3 
	.byte	W12
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Cs2 
	.byte		N21   , Cs3 
	.byte	W06
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N12   , Gs1 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_006
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_007
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_008
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_009
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_011
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_012
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_013
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_014
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_015
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_016
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_017
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_018
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_019
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_020
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_022
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_023
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_024
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_025
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_026
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_005
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_006
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_007
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_008
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_009
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_010
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_011
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_012
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_013
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_014
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_015
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_016
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_017
@ 066   ----------------------------------------
	.byte		N36   , Fs1 , v076
	.byte		N72   , Fs2 
	.byte	W36
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	TEMPO , 120*mus_fire_emblem_mystery_of_the_emblem_tbs/2
	.byte		N24   
	.byte	W24
	.byte	TEMPO , 115*mus_fire_emblem_mystery_of_the_emblem_tbs/2
	.byte		N08   
	.byte	W04
	.byte		N04   , Fs1 , v072
	.byte	W04
	.byte		        Fs1 , v076
	.byte	W04
	.byte		N12   , Fn1 
	.byte		N04   , Fs1 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
@ 067   ----------------------------------------
	.byte	TEMPO , 127*mus_fire_emblem_mystery_of_the_emblem_tbs/2
	.byte		N72   , Ds1 
	.byte		N96   , Gs1 
	.byte		N54   , Gs2 
	.byte	W72
	.byte		N08   , Ds1 
	.byte		N06   , Gs2 
	.byte	W08
	.byte		N08   , Ds1 
	.byte		N06   , Gs2 
	.byte	W08
	.byte		N08   , Ds1 
	.byte		N06   , Gs2 
	.byte	W08
@ 068   ----------------------------------------
	.byte		N96   , Fn1 
	.byte		N72   , Gs2 
	.byte	W72
	.byte		N04   , Gs1 , v072
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Gs1 , v076
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
@ 069   ----------------------------------------
	.byte		N72   , Fn1 
	.byte		N96   , Gs1 
	.byte		N54   , Bn2 
	.byte	W72
	.byte		N08   , Fn1 
	.byte		N06   , Bn2 
	.byte	W08
	.byte		N08   , Fs1 
	.byte		N06   , Bn2 
	.byte	W08
	.byte		N08   , Gs1 
	.byte		N06   , Bn2 
	.byte	W08
@ 070   ----------------------------------------
	.byte		N48   , Fs1 
	.byte		N72   , As2 
	.byte	W48
	.byte		N48   , Cs1 
	.byte	W24
	.byte		N04   , Gs1 , v072
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Gs1 , v076
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
@ 071   ----------------------------------------
	.byte		N72   , Fs1 
	.byte		N72   , Gs1 
	.byte		N54   , An2 
	.byte	W72
	.byte		N08   , Fs1 
	.byte		N04   , Gs1 , v072
	.byte		N06   , An2 , v076
	.byte	W04
	.byte		N04   , Gs1 , v072
	.byte	W04
	.byte		N08   , Fn1 , v076
	.byte		N04   , Gs1 
	.byte		N06   , Gs2 
	.byte	W04
	.byte		N04   , Gs1 
	.byte	W04
	.byte		N08   , Ds1 
	.byte		N04   , Gs1 
	.byte		N06   , Fs2 
	.byte	W04
	.byte		N04   , Gs1 
	.byte	W04
@ 072   ----------------------------------------
	.byte		N48   , Fn1 
	.byte		N72   , Gs1 
	.byte		N72   , Gs2 
	.byte	W48
	.byte		N48   , Cs1 
	.byte	W24
	.byte		N24   , Fn1 
	.byte	W24
@ 073   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_073:
	.byte		N24   , Ds1 , v076
	.byte		N24   , Fn1 
	.byte		N18   , Ds2 
	.byte	W24
	.byte		N08   , Ds1 
	.byte		N24   , Fn1 
	.byte		N06   , Ds2 
	.byte	W08
	.byte		N08   , Ds1 
	.byte		N06   , Ds2 
	.byte	W08
	.byte		N08   , Ds1 
	.byte		N06   , Ds2 
	.byte	W08
	.byte		N24   , Fn1 
	.byte		N18   , Fn2 
	.byte	W24
	.byte		N16   , Fn1 
	.byte		N06   , Fn2 
	.byte	W08
	.byte		N08   , Fn1 
	.byte		N06   , Fn2 
	.byte	W08
	.byte		N08   , Fn1 
	.byte		N06   , Fn2 
	.byte	W08
	.byte	PEND
@ 074   ----------------------------------------
	.byte		N24   , Fn1 
	.byte		N24   , Fs1 
	.byte		N18   , Fs2 
	.byte	W24
	.byte		N24   , Fn1 
	.byte		N08   , Fs1 
	.byte		N06   , Fs2 
	.byte	W08
	.byte		N08   , Fs1 
	.byte		N06   , Fs2 
	.byte	W08
	.byte		N08   , Fs1 
	.byte		N06   , Fs2 
	.byte	W08
	.byte		N24   , Fn1 
	.byte		N24   , Gs1 
	.byte		N15   , Gs2 
	.byte	W24
	.byte		N24   , Fn1 
	.byte		N24   , Gs1 
	.byte		N18   , Gs2 
	.byte	W24
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_073
@ 076   ----------------------------------------
	.byte		N24   , Fn1 , v076
	.byte		N24   , Fs1 
	.byte		N18   , Fs2 
	.byte	W24
	.byte		N24   , Fn1 
	.byte		N08   , Fs1 
	.byte		N06   , Fs2 
	.byte	W08
	.byte		N08   , Fs1 
	.byte		N06   , Fs2 
	.byte	W08
	.byte		N08   , Fs1 
	.byte		N06   , Fs2 
	.byte	W08
	.byte	TEMPO , 110*mus_fire_emblem_mystery_of_the_emblem_tbs/2
	.byte		N24   , Fn1 
	.byte		N24   , Gs1 
	.byte		N15   , Gs2 
	.byte	W24
	.byte	TEMPO , 85*mus_fire_emblem_mystery_of_the_emblem_tbs/2
	.byte		N24   , Ds1 
	.byte		N24   , Fn1 
	.byte		N18   , Gs1 
	.byte	W24
@ 077   ----------------------------------------
	.byte	TEMPO , 125*mus_fire_emblem_mystery_of_the_emblem_tbs/2
	.byte		N24   , Cs1 
	.byte		N36   , Cs2 
	.byte	W24
	.byte		N12   , Cs1 
	.byte		N18   , Gs1 
	.byte	W12
	.byte		N24   , Cs1 
	.byte		N48   , Cs2 
	.byte	W24
	.byte		N24   , Cs1 
	.byte		N18   , Gs1 
	.byte	W24
	.byte		N12   , Cs1 
	.byte	W12
@ 078   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_1_078:
	.byte		N24   , Bn1 , v076
	.byte	W12
	.byte		N18   , Fs1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N18   , Fs1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 079   ----------------------------------------
	.byte		N24   , Cs1 
	.byte		N36   , Cs2 
	.byte	W24
	.byte		N12   , Cs1 
	.byte		N18   , Gs1 
	.byte	W12
	.byte		N24   , Cs1 
	.byte		N24   , Cs2 
	.byte	W24
	.byte		        Cs1 
	.byte		N18   , Gs1 
	.byte	W12
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_078
@ 081   ----------------------------------------
	.byte		N12   , Cs1 , v076
	.byte		N24   , Gs1 
	.byte		N84   , Cs2 
	.byte	W12
	.byte		N24   , Cs1 
	.byte	W24
	.byte		N24   
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Cs1 
	.byte	W12
	.byte		N18   , Gs1 
	.byte	W12
	.byte		N12   , Cs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 082   ----------------------------------------
	.byte		N24   , Cs1 
	.byte		N96   , Cs2 
	.byte	W96
	.byte	GOTO
	 .word	mus_fire_emblem_mystery_of_the_emblem_1_B1
mus_fire_emblem_mystery_of_the_emblem_1_B2:
@ 083   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_fire_emblem_mystery_of_the_emblem_2:
	.byte	KEYSH , mus_fire_emblem_mystery_of_the_emblem_key+0
mus_fire_emblem_mystery_of_the_emblem_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 96*mus_fire_emblem_mystery_of_the_emblem_mvl/mxv
	.byte		PAN   , c_v+16
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_002:
	.byte		N36   , Cs3 , v084
	.byte		N48   , Cs4 
	.byte	W36
	.byte		N03   , Cs3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N18   , Fs3 
	.byte		N18   , Fs4 
	.byte	W12
	.byte		N07   , Cs3 
	.byte	W12
	.byte		N18   , As3 
	.byte		N18   , As4 
	.byte	W12
	.byte		N07   , Cs3 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte		N48   , As3 
	.byte		N48   , As4 
	.byte	W36
	.byte		N03   , Ds3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N19   
	.byte		N32   , Ds4 
	.byte	W12
	.byte		N07   , Ds3 
	.byte	W12
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N07   , Ds3 
	.byte	W06
	.byte		N05   , Ds4 
	.byte	W06
@ 004   ----------------------------------------
	.byte		N36   , Ds3 
	.byte		N92   , Ds4 
	.byte	W36
	.byte		N03   , Ds3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N16   , Fn3 
	.byte		N16   , Fn4 
	.byte	W12
	.byte		N07   , Ds3 
	.byte	W04
	.byte		N16   , Fs3 
	.byte		N16   , Fs4 
	.byte	W16
	.byte		        Gs3 
	.byte		N16   , Gs4 
	.byte	W04
	.byte		N07   , Ds3 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , Fs4 
	.byte	W36
	.byte		N03   , Cs3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N48   , Fn3 
	.byte		N48   , Fn4 
	.byte	W24
	.byte		N15   , Gs3 
	.byte	W24
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_002
@ 007   ----------------------------------------
	.byte		N48   , Cs4 , v084
	.byte		N48   , Cs5 
	.byte	W36
	.byte		N03   , Fs3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N18   , Bn3 
	.byte		N18   , Bn4 
	.byte	W12
	.byte		N07   , Fs3 
	.byte	W12
	.byte		N18   , As3 
	.byte		N18   , As4 
	.byte	W12
	.byte		N07   , Fs3 
	.byte	W12
@ 008   ----------------------------------------
	.byte		N36   , Ds3 
	.byte		N60   , Ds4 
	.byte	W36
	.byte		N03   , Ds3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   
	.byte		N42   , Gs4 
	.byte	W12
	.byte		N07   , Fn3 
	.byte		N07   , Fn4 
	.byte	W12
	.byte		        Fs3 
	.byte		N07   , Fs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N07   , Gs4 
	.byte	W12
@ 009   ----------------------------------------
	.byte		N72   , Fs3 
	.byte		N92   , Fs4 
	.byte	W96
@ 010   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_010:
	.byte		N18   , Cs3 , v084
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W24
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N18   , Fs3 
	.byte	W12
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N18   , As3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte		N06   , As3 , v076
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_011:
	.byte		N06   , Gs3 , v084
	.byte		N06   , As3 
	.byte	W12
	.byte		        Gs3 
	.byte		N30   , As3 , v076
	.byte	W24
	.byte		N06   , Cs3 , v084
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N42   , Ds3 
	.byte		N06   , Gs3 
	.byte	W12
	.byte		N30   , Ds3 , v076
	.byte		N06   , Gs3 , v084
	.byte	W12
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N12   , Fn4 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_012:
	.byte		N06   , Gs3 , v084
	.byte		N60   , Ds4 
	.byte	W12
	.byte		N42   , Ds3 , v076
	.byte		N06   , Gs3 , v084
	.byte	W24
	.byte		        Cs3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Gs3 
	.byte	W12
	.byte		N06   
	.byte		N07   , Fn4 
	.byte	W12
	.byte		N05   , Fs3 
	.byte		N07   , Fs4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N07   , Gs4 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_013:
	.byte		N06   , Gs3 , v084
	.byte		N24   , Fs4 
	.byte	W12
	.byte		N42   , Fs3 , v076
	.byte		N06   , Gs3 , v084
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W12
	.byte		N06   , Cs3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte		N24   , Gs4 
	.byte	W12
	.byte		N18   , Fn3 , v076
	.byte	W12
	.byte		N06   , Fn3 , v084
	.byte		N24   , Cs5 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_014:
	.byte		N06   , Fs3 , v084
	.byte		N72   , As4 
	.byte	W12
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W24
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N18   , Fs3 
	.byte	W12
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N18   , As3 
	.byte		N24   , As4 
	.byte	W12
	.byte		N06   , Fs3 
	.byte		N06   , As3 , v076
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_015:
	.byte		N42   , Cs4 , v084
	.byte		N48   , Bn4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N30   , Cs4 , v076
	.byte	W24
	.byte		N06   , Cs3 , v084
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N18   , Bn3 
	.byte		N24   , Bn4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 , v076
	.byte	W12
	.byte		N18   , As3 , v084
	.byte		N24   , As4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N06   , As3 , v076
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_016:
	.byte		N06   , Gs3 , v084
	.byte		N60   , Gs4 
	.byte	W12
	.byte		        Ds3 , v076
	.byte		N06   , Gs3 , v084
	.byte	W24
	.byte		        Cs3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fn3 
	.byte	W12
	.byte		N06   
	.byte		N07   , As4 
	.byte	W12
	.byte		N06   , Fs3 
	.byte		N07   , Bn4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N07   , Fn4 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_017:
	.byte		N06   , Gs3 , v076
	.byte		N84   , Fs4 , v084
	.byte	W12
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W24
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W24
	.byte		N12   , Fs4 , v076
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , Fs4 , v064
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_018:
	.byte		N24   , Ds4 , v076
	.byte		N12   , Fn4 , v064
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N36   , Bn4 , v076
	.byte	W12
	.byte		N24   , Bn4 , v064
	.byte	W24
	.byte		N12   , Gs4 , v076
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Gs4 , v064
	.byte	W12
	.byte		        Fn4 , v076
	.byte		N12   , Fs4 , v064
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_019:
	.byte		N12   , Fn4 , v064
	.byte		N36   , Cs5 , v076
	.byte	W12
	.byte		N24   , Cs5 , v064
	.byte	W24
	.byte		N12   , As4 , v076
	.byte	W12
	.byte		N15   , Fs4 
	.byte		N12   , As4 , v064
	.byte	W12
	.byte		N03   , Fs4 
	.byte	W12
	.byte		        Fs4 , v076
	.byte	W12
	.byte		N12   , Fn4 
	.byte		N12   , Fs4 , v064
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_020:
	.byte		N24   , Ds4 , v076
	.byte		N12   , Fn4 , v064
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N36   , Ds5 , v076
	.byte	W12
	.byte		N24   , Ds5 , v064
	.byte	W24
	.byte		N12   , Cs5 , v076
	.byte	W12
	.byte		        Bn4 
	.byte		N12   , Cs5 , v064
	.byte	W12
	.byte		        Gs4 , v076
	.byte		N12   , Bn4 , v064
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_021:
	.byte		N12   , Gs4 , v064
	.byte		N84   , As4 , v076
	.byte	W12
	.byte		N72   , As4 , v064
	.byte	W84
	.byte	PEND
@ 022   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_022:
	.byte		N24   , Ds4 , v084
	.byte	W12
	.byte		N12   , Ds4 , v076
	.byte	W12
	.byte		N36   , Bn4 , v084
	.byte	W12
	.byte		N24   , Bn4 , v076
	.byte	W24
	.byte		N12   , Gs4 , v084
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Gs4 , v076
	.byte	W12
	.byte		        Fn4 , v084
	.byte		N12   , Fs4 , v076
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_023:
	.byte		N12   , Fn4 , v076
	.byte		N36   , Cs5 , v084
	.byte	W12
	.byte		N24   , Cs5 , v076
	.byte	W24
	.byte		N12   , As4 , v084
	.byte	W12
	.byte		N21   , Fs4 
	.byte		N12   , As4 , v076
	.byte	W12
	.byte		N09   , Fs4 
	.byte	W12
	.byte		        Fs4 , v084
	.byte	W12
	.byte		N12   , Fn4 
	.byte		N12   , Fs4 , v076
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_024:
	.byte		N12   , Fn4 , v076
	.byte		N24   , Ds5 , v084
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte		N12   , Ds5 , v068
	.byte	W06
	.byte		N06   , Fn4 , v084
	.byte	W06
	.byte		        Ds4 
	.byte		N12   , Ds5 
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte		N24   , Ds5 , v068
	.byte	W06
	.byte		N05   , Ds3 , v084
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte		N12   , Fn4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fn4 , v068
	.byte		N12   , Fs4 , v084
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N12   , Gs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_025:
	.byte		N12   , Gs4 , v068
	.byte		N24   , As4 , v084
	.byte	W12
	.byte		N48   , Fs4 , v068
	.byte	W12
	.byte		N24   , Cs4 , v084
	.byte	W24
	.byte		N48   , Fn4 , v080
	.byte		N24   , Gs4 , v084
	.byte	W12
	.byte		N36   , Fn4 , v064
	.byte	W12
	.byte		N24   , Cs5 , v084
	.byte	W24
	.byte	PEND
@ 026   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_026:
	.byte		N07   , Cs3 , v084
	.byte		N48   , Cs4 
	.byte	W36
	.byte		N03   , Cs3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N18   , Fs3 , v076
	.byte		N18   , Fs4 , v084
	.byte	W12
	.byte		N07   , Cs3 
	.byte	W12
	.byte		N18   , As3 , v076
	.byte		N18   , As4 , v084
	.byte	W12
	.byte		N07   , Cs3 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_027:
	.byte		N48   , As3 , v076
	.byte		N48   , As4 , v084
	.byte	W36
	.byte		N03   , Ds3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N07   
	.byte		N32   , Ds4 
	.byte	W12
	.byte		N07   , Ds3 
	.byte	W12
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N07   , Ds3 
	.byte	W06
	.byte		N05   , Ds4 
	.byte	W06
	.byte	PEND
@ 028   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_028:
	.byte		N07   , Ds3 , v084
	.byte		N92   , Ds4 
	.byte	W36
	.byte		N03   , Ds3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N16   , Fn3 , v076
	.byte		N16   , Fn4 , v084
	.byte	W12
	.byte		N07   , Ds3 
	.byte	W04
	.byte		N16   , Fs3 , v076
	.byte		N16   , Fs4 , v084
	.byte	W16
	.byte		        Gs3 , v076
	.byte		N16   , Gs4 , v084
	.byte	W04
	.byte		N07   , Ds3 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_029:
	.byte		N48   , Fs3 , v076
	.byte		N48   , Fs4 , v084
	.byte	W36
	.byte		N03   , Cs3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N48   , Fn3 , v076
	.byte		N48   , Fn4 , v084
	.byte	W24
	.byte		N15   , Gs3 
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_026
@ 031   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_031:
	.byte		N48   , Cs4 , v076
	.byte		N48   , Cs5 , v084
	.byte	W36
	.byte		N03   , Fs3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N18   , Bn3 , v076
	.byte		N18   , Bn4 , v084
	.byte	W12
	.byte		N07   , Fs3 
	.byte	W12
	.byte		N18   , As3 , v076
	.byte		N18   , As4 , v084
	.byte	W12
	.byte		N07   , Fs3 
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_032:
	.byte		N07   , Ds3 , v084
	.byte		N60   , Ds4 
	.byte	W36
	.byte		N03   , Ds3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N15   
	.byte		N42   , Gs4 
	.byte	W12
	.byte		N07   , Fn3 , v076
	.byte		N07   , Fn4 , v084
	.byte	W12
	.byte		        Fs3 , v076
	.byte		N07   , Fs4 , v084
	.byte	W12
	.byte		        Gs3 , v076
	.byte		N07   , Gs4 , v084
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_2_033:
	.byte		N72   , Fs3 , v076
	.byte		N92   , Fs4 , v084
	.byte	W96
	.byte	PEND
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_011
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_012
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_013
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_014
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_015
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_016
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_017
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_018
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_019
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_020
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_022
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_023
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_024
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_025
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_026
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_027
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_028
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_029
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_026
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_031
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_032
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_033
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_010
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_011
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_012
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_013
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_014
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_015
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_016
@ 065   ----------------------------------------
	.byte		N06   , Gs3 , v076
	.byte		N84   , Fs4 , v084
	.byte	W12
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W24
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W48
@ 066   ----------------------------------------
	.byte		N60   , Ds3 , v076
	.byte		N60   , Ds4 , v084
	.byte	W72
	.byte		N07   , Ds3 , v076
	.byte		N07   , Ds4 , v084
	.byte	W08
	.byte		        Ds3 , v076
	.byte		N07   , Ds4 , v084
	.byte	W08
	.byte		        Fs3 , v076
	.byte		N07   , Fs4 , v084
	.byte	W08
@ 067   ----------------------------------------
	.byte		N84   , Fn3 , v076
	.byte		N84   , Fn4 , v084
	.byte	W24
	.byte		N21   , Gs3 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N12   , Fn4 
	.byte	W24
@ 068   ----------------------------------------
	.byte		N60   
	.byte		N60   , Gs4 
	.byte	W72
	.byte		N07   , Fn4 
	.byte		N07   , Gs4 
	.byte	W08
	.byte		        Fs4 
	.byte		N07   , As4 
	.byte	W08
	.byte		        Gs3 , v076
	.byte		N07   , Gs4 , v084
	.byte	W08
@ 069   ----------------------------------------
	.byte		N84   , Fs3 , v076
	.byte		N84   , Fs4 , v084
	.byte	W24
	.byte		N21   , As3 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte	W24
@ 070   ----------------------------------------
	.byte		N60   
	.byte		N60   , An4 
	.byte	W72
	.byte		N07   , Fs4 
	.byte		N07   , An4 
	.byte	W08
	.byte		        Fs4 
	.byte		N07   , Gs4 
	.byte	W08
	.byte		        Fs3 , v076
	.byte		N07   , Fs4 , v084
	.byte	W08
@ 071   ----------------------------------------
	.byte		N42   , Fn4 
	.byte		N30   , Gs4 
	.byte	W48
	.byte		N42   , Cs4 
	.byte		N30   , Fn4 
	.byte	W48
@ 072   ----------------------------------------
	.byte		N21   , Ds3 
	.byte		N10   , As3 
	.byte	W24
	.byte		N07   , Ds3 
	.byte		N07   , As3 
	.byte	W08
	.byte		        Ds3 
	.byte		N07   , As3 
	.byte	W08
	.byte		        Ds3 
	.byte		N07   , As3 
	.byte	W08
	.byte		N21   , Fn3 
	.byte		N10   , Cn4 
	.byte	W24
	.byte		N07   , Fn3 
	.byte		N07   , Cn4 
	.byte	W08
	.byte		        Fn3 
	.byte		N07   , Cn4 
	.byte	W08
	.byte		        Fn3 
	.byte		N07   , Cn4 
	.byte	W08
@ 073   ----------------------------------------
	.byte		N21   , Fs3 
	.byte		N10   , Cs4 
	.byte	W24
	.byte		N07   , Fs3 
	.byte		N07   , Cs4 
	.byte	W08
	.byte		        Fs3 
	.byte		N07   , Cs4 
	.byte	W08
	.byte		        Fs3 
	.byte		N07   , Cs4 
	.byte	W08
	.byte		N15   , Gs3 
	.byte		N10   , Ds4 
	.byte	W24
	.byte		N21   , Gs3 
	.byte		N21   , Ds4 
	.byte	W24
@ 074   ----------------------------------------
	.byte		        Fs3 
	.byte		N10   , As3 
	.byte	W24
	.byte		N07   , Fs3 
	.byte		N07   , As3 
	.byte	W08
	.byte		        Fs3 
	.byte		N07   , As3 
	.byte	W08
	.byte		        Fs3 
	.byte		N07   , As3 
	.byte	W08
	.byte		N21   , Gs3 
	.byte		N10   , Cn4 
	.byte	W24
	.byte		N07   , Gs3 
	.byte		N07   , Cn4 
	.byte	W08
	.byte		        Gs3 
	.byte		N07   , Cn4 
	.byte	W08
	.byte		        Gs3 
	.byte		N07   , Cn4 
	.byte	W08
@ 075   ----------------------------------------
	.byte		N21   , As3 
	.byte		N10   , Cs4 
	.byte	W24
	.byte		N07   , As3 
	.byte		N07   , Cs4 
	.byte	W08
	.byte		        As3 
	.byte		N07   , Cs4 
	.byte	W08
	.byte		        As3 
	.byte		N07   , Cs4 
	.byte	W08
	.byte		N15   , Cn4 
	.byte		N21   , Fs4 
	.byte	W24
	.byte		        Cn3 , v076
	.byte		N21   , Cn4 , v084
	.byte	W24
@ 076   ----------------------------------------
	.byte		N84   , Fn3 , v076
	.byte		N68   , Gs3 , v084
	.byte	W24
	.byte		N21   , Cs3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		N07   , Fs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 077   ----------------------------------------
	.byte		N07   
	.byte	W12
	.byte		        Ds3 
	.byte		N52   , Fs3 
	.byte	W12
	.byte		N40   
	.byte	W48
	.byte		N10   , Fs3 , v076
	.byte		N21   , As3 , v084
	.byte	W24
@ 078   ----------------------------------------
	.byte		N84   , Fn3 , v076
	.byte		N84   , Gs3 , v084
	.byte	W72
	.byte		N07   , Fs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 079   ----------------------------------------
	.byte		N07   
	.byte	W12
	.byte		        Ds3 
	.byte		N52   , Fs3 
	.byte	W12
	.byte		N40   
	.byte	W48
	.byte		N10   , Fs3 , v076
	.byte		N10   , As3 , v084
	.byte	W12
	.byte		N07   , Fs3 
	.byte	W12
@ 080   ----------------------------------------
	.byte		N84   , Fn3 , v076
	.byte		N96   , Gs3 , v084
	.byte	W96
@ 081   ----------------------------------------
	.byte		N24   , Cs3 
	.byte	W96
	.byte	GOTO
	 .word	mus_fire_emblem_mystery_of_the_emblem_2_B1
mus_fire_emblem_mystery_of_the_emblem_2_B2:
@ 082   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_fire_emblem_mystery_of_the_emblem_3:
	.byte	KEYSH , mus_fire_emblem_mystery_of_the_emblem_key+0
mus_fire_emblem_mystery_of_the_emblem_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 82*mus_fire_emblem_mystery_of_the_emblem_mvl/mxv
	.byte		PAN   , c_v-18
	.byte		TIE   , Fs2 , v068
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 002   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_002:
	.byte		N07   , Fs2 , v068
	.byte		N48   , As2 
	.byte	W36
	.byte		N03   , Fs2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N07   
	.byte		N18   , Cs3 
	.byte	W12
	.byte		N07   , Fs2 
	.byte	W12
	.byte		N18   , Fs3 
	.byte	W12
	.byte		N07   , Fs2 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_003:
	.byte		N07   , Gs2 , v068
	.byte		N48   , Fs3 
	.byte	W36
	.byte		N03   , Gs2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N07   
	.byte		N24   , Bn2 
	.byte	W12
	.byte		N07   , Gs2 
	.byte	W12
	.byte		N24   , As2 
	.byte	W12
	.byte		N07   , Gs2 
	.byte		N04   , Ds3 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_004:
	.byte		N07   , Gs2 , v068
	.byte		N48   , Bn2 
	.byte		N44   , Ds3 
	.byte	W36
	.byte		N03   , Gs2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N07   
	.byte		N16   , Cs3 
	.byte	W12
	.byte		N07   , Gs2 
	.byte		N04   , Ds3 
	.byte	W04
	.byte		N16   , Cs3 
	.byte	W02
	.byte		N04   , Ds3 
	.byte	W06
	.byte		N04   
	.byte	W08
	.byte		N08   
	.byte	W04
	.byte		N07   , Gs2 
	.byte		N04   , Ds3 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_005:
	.byte		N07   , As2 , v068
	.byte		N48   , Cs3 
	.byte		N24   , Fs3 
	.byte	W36
	.byte		N03   , As2 
	.byte		N04   , Fs3 
	.byte	W06
	.byte		N03   , As2 
	.byte		N04   , Fs3 
	.byte	W06
	.byte		N15   , Gs2 
	.byte		N48   , Cs3 
	.byte		N09   , Fn3 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N15   , Fn2 
	.byte		N09   , Fn3 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_006:
	.byte		N36   , As2 , v068
	.byte		N36   , Fs3 
	.byte	W36
	.byte		N03   , As2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N07   
	.byte		N18   , Cs3 
	.byte		N09   , Fs3 
	.byte	W12
	.byte		N07   , As2 
	.byte	W12
	.byte		N18   , Fs3 
	.byte	W12
	.byte		N07   , As2 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_007:
	.byte		N07   , Ds3 , v068
	.byte		N48   , Fs3 
	.byte		N24   , Gs3 
	.byte	W36
	.byte		N03   , Ds3 
	.byte		N04   , Gs3 
	.byte	W06
	.byte		N03   , Ds3 
	.byte		N04   , Gs3 
	.byte	W06
	.byte		N18   , Ds3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N18   
	.byte		N18   , Fs3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_008:
	.byte		N36   , Bn2 , v068
	.byte		N36   , Ds3 
	.byte	W36
	.byte		N03   , Bn2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   
	.byte		N24   , Cs3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N15   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_009:
	.byte		N60   , As2 , v068
	.byte		N72   , Cs3 
	.byte		N60   , Fs3 
	.byte	W96
	.byte	PEND
@ 010   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_010:
	.byte		N42   , As2 , v068
	.byte	W48
	.byte		N18   
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_011:
	.byte		N30   , Bn2 , v068
	.byte	W36
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N21   
	.byte	W24
	.byte		N10   
	.byte		N10   , Ds3 
	.byte	W12
	.byte		        As2 
	.byte		N10   , Ds3 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_012:
	.byte		N40   , Gs2 , v068
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N05   , Gs2 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N05   , Gs2 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N42   , Gs3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N05   , Gs2 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N05   , As2 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N05   , Bn2 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_013:
	.byte		N42   , As2 , v068
	.byte		N21   , Cs3 
	.byte		N48   , As3 
	.byte	W24
	.byte		N18   , As2 
	.byte	W24
	.byte		N42   , Gs2 
	.byte		N21   , Cs3 
	.byte		N36   , Gs3 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_014:
	.byte		N42   , As2 , v068
	.byte		N60   , Fs3 
	.byte		N72   , Fs4 
	.byte	W48
	.byte		N18   , As2 
	.byte	W24
	.byte		        Cs3 
	.byte		N21   , Fs3 
	.byte		N24   , Fs4 
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_015:
	.byte		N42   , Ds3 , v068
	.byte		N48   , Gs3 
	.byte	W48
	.byte		N18   , Ds3 
	.byte		N21   , Fs3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N18   , Cs3 
	.byte		N21   , Fn3 
	.byte		N24   , Fs4 
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_016:
	.byte		N60   , Gs2 , v068
	.byte		N24   , Gs3 
	.byte		N60   , Ds4 
	.byte	W36
	.byte		N04   , Gs3 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N06   , Cs3 
	.byte		N09   , Fs3 
	.byte		N07   , Fs4 
	.byte	W12
	.byte		N06   , As2 
	.byte		N09   , Fs3 
	.byte		N07   , Fs4 
	.byte	W12
	.byte		N06   , Cs3 
	.byte		N09   , Fn3 
	.byte		N07   , Cs4 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_017:
	.byte		N84   , As2 , v068
	.byte		N60   , Fs3 
	.byte		N84   , Cs4 
	.byte	W96
	.byte	PEND
@ 018   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_018:
	.byte		N48   , Gs3 , v068
	.byte	W48
	.byte		        Cs4 
	.byte	W48
	.byte	PEND
@ 019   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_019:
	.byte		N48   , As3 , v068
	.byte	W48
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_020:
	.byte		N48   , Bn3 , v068
	.byte	W48
	.byte		        Cs4 
	.byte	W48
	.byte	PEND
@ 021   ----------------------------------------
	.byte		N96   , Fs3 
	.byte	W96
@ 022   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_022:
	.byte		N21   , Ds2 , v068
	.byte		N24   , Ds3 
	.byte		N48   , Gs3 
	.byte	W24
	.byte		N30   , Bn2 
	.byte		N36   , Bn3 
	.byte	W24
	.byte		N48   , Cs4 
	.byte	W12
	.byte		N10   , Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N10   , Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N10   , Fn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_023:
	.byte		N30   , Cs3 , v068
	.byte		N48   , As3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte		N10   , As2 
	.byte		N12   , As3 
	.byte	W12
	.byte		N10   , Fs3 
	.byte		N24   , Ds4 
	.byte		N21   , Fs4 
	.byte	W24
	.byte		N10   , Fs3 
	.byte		N24   , Cs4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N10   , Fn3 
	.byte		N12   , Fn4 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_024:
	.byte		N30   , Ds3 , v068
	.byte		N48   , Bn3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N36   
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N10   
	.byte		N48   , Cn4 
	.byte	W12
	.byte		N10   , Ds3 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N10   , Ds3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N10   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_3_025:
	.byte		N42   , Fs3 , v068
	.byte		N48   , Cs4 
	.byte		N48   , Fs4 
	.byte	W48
	.byte		N42   , Fn3 
	.byte		N24   , Gs3 
	.byte		N48   , Fn4 
	.byte	W24
	.byte		N24   , Cs4 
	.byte	W24
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_006
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_007
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_008
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_009
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_011
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_012
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_013
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_014
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_015
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_016
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_017
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_018
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_019
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_020
@ 045   ----------------------------------------
	.byte		N96   , Fs3 , v068
	.byte	W96
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_022
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_023
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_024
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_025
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_005
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_006
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_007
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_008
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_009
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_010
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_011
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_012
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_013
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_014
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_015
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_016
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_017
@ 066   ----------------------------------------
	.byte		N60   , Fs3 , v068
	.byte	W72
	.byte		N07   , Ds3 
	.byte		N07   , Fs3 
	.byte	W08
	.byte		        Ds3 
	.byte		N07   , Fs3 
	.byte	W08
	.byte		N07   
	.byte		N07   , Bn3 
	.byte	W08
@ 067   ----------------------------------------
	.byte		N44   , Fn3 
	.byte		N42   , Gs3 
	.byte	W24
	.byte		N21   , Fn3 
	.byte	W24
	.byte		        Gs3 
	.byte		N21   , Cs4 
	.byte	W24
	.byte		        Gs3 
	.byte		N21   , Cs4 
	.byte	W24
@ 068   ----------------------------------------
	.byte		N60   , Gs3 
	.byte		N60   , Fn4 
	.byte	W72
	.byte		N07   , Fn3 
	.byte		N07   , Gs3 
	.byte		N07   , Fn4 
	.byte	W08
	.byte		        Fs3 
	.byte		N07   , As3 
	.byte		N07   , Fs4 
	.byte	W08
	.byte		        Gs3 
	.byte		N07   , Fn4 
	.byte	W08
@ 069   ----------------------------------------
	.byte		N44   , Fs3 
	.byte		N42   , As3 
	.byte		N21   , Cs4 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Gs3 
	.byte		N42   , Cs4 
	.byte	W24
	.byte		N18   
	.byte	W24
@ 070   ----------------------------------------
	.byte		N60   
	.byte		N60   , Fs4 
	.byte	W72
	.byte		N07   , Fs3 
	.byte		N07   , Cs4 
	.byte		N07   , Fs4 
	.byte	W08
	.byte		        Fs3 
	.byte		N07   , Cs4 
	.byte		N07   , Fn4 
	.byte	W08
	.byte		        Fs3 
	.byte		N07   , Cs4 
	.byte		N07   , Ds4 
	.byte	W08
@ 071   ----------------------------------------
	.byte		N30   , Fn3 
	.byte		N42   , Cs4 
	.byte		N30   , Fn4 
	.byte	W48
	.byte		N42   , Gs3 
	.byte		N30   , Cs4 
	.byte	W48
@ 072   ----------------------------------------
	.byte		N21   , Ds3 
	.byte		N10   , Fs3 
	.byte	W24
	.byte		N07   , Ds3 
	.byte		N07   , Fs3 
	.byte	W08
	.byte		        Ds3 
	.byte		N07   , Fs3 
	.byte	W08
	.byte		        Ds3 
	.byte		N07   , Fs3 
	.byte	W08
	.byte		N21   , Fn3 
	.byte		N10   , Gs3 
	.byte	W24
	.byte		N07   , Fn3 
	.byte		N07   , Gs3 
	.byte	W08
	.byte		        Fn3 
	.byte		N07   , Gs3 
	.byte	W08
	.byte		        Fn3 
	.byte		N07   , Gs3 
	.byte	W08
@ 073   ----------------------------------------
	.byte		N21   , Fs3 
	.byte		N10   , As3 
	.byte	W24
	.byte		N07   , Fs3 
	.byte		N07   , As3 
	.byte	W08
	.byte		        Fs3 
	.byte		N07   , As3 
	.byte	W08
	.byte		        Fs3 
	.byte		N07   , As3 
	.byte	W08
	.byte		N15   , Gs3 
	.byte		N10   , Cn4 
	.byte	W24
	.byte		N21   , Gs3 
	.byte		N21   , Cn4 
	.byte	W24
@ 074   ----------------------------------------
	.byte		        Ds3 
	.byte		N21   , Fs3 
	.byte	W24
	.byte		N07   , Ds3 
	.byte		N07   , Fs3 
	.byte	W08
	.byte		        Ds3 
	.byte		N07   , Fs3 
	.byte	W08
	.byte		        Ds3 
	.byte		N07   , Fs3 
	.byte	W08
	.byte		N21   , Fn3 
	.byte		N21   , Gs3 
	.byte	W24
	.byte		N07   , Fn3 
	.byte		N07   , Gs3 
	.byte	W08
	.byte		        Fn3 
	.byte		N07   , Gs3 
	.byte	W08
	.byte		        Fn3 
	.byte		N07   , Gs3 
	.byte	W08
@ 075   ----------------------------------------
	.byte		N21   , Fs3 
	.byte		N21   , As3 
	.byte	W24
	.byte		N07   , Fs3 
	.byte		N07   , As3 
	.byte	W08
	.byte		        Fs3 
	.byte		N07   , As3 
	.byte	W08
	.byte		        Fs3 
	.byte		N07   , As3 
	.byte	W08
	.byte		N21   , Gs3 
	.byte		N15   , Cn4 
	.byte		N21   , Ds4 
	.byte	W24
	.byte		        Ds3 
	.byte		N21   , Gs3 
	.byte		N21   , Cn4 
	.byte	W24
@ 076   ----------------------------------------
	.byte		N44   , Cs3 
	.byte	W24
	.byte		N21   
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		N07   , Fs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 077   ----------------------------------------
	.byte		N07   
	.byte	W12
	.byte		N52   , Bn2 
	.byte		N07   , Ds3 
	.byte	W12
	.byte		N42   , Fs3 
	.byte	W48
	.byte		N10   , Cs3 
	.byte		N21   , As3 
	.byte	W24
@ 078   ----------------------------------------
	.byte		N84   , Cs3 
	.byte		N60   , Gs3 
	.byte	W72
	.byte		N07   , Fs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 079   ----------------------------------------
	.byte		N07   
	.byte	W12
	.byte		N52   , Bn2 
	.byte		N07   , Ds3 
	.byte	W12
	.byte		N42   , Fs3 
	.byte	W48
	.byte		N10   , Cs3 
	.byte		N07   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 080   ----------------------------------------
	.byte		N84   , Cs3 
	.byte		N96   , Gs3 
	.byte	W96
@ 081   ----------------------------------------
	.byte		N24   , Gs2 
	.byte		N21   , Fn3 
	.byte	W96
	.byte	GOTO
	 .word	mus_fire_emblem_mystery_of_the_emblem_3_B1
mus_fire_emblem_mystery_of_the_emblem_3_B2:
@ 082   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_fire_emblem_mystery_of_the_emblem_4:
	.byte	KEYSH , mus_fire_emblem_mystery_of_the_emblem_key+0
mus_fire_emblem_mystery_of_the_emblem_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 108*mus_fire_emblem_mystery_of_the_emblem_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N04   , En1 , v092
	.byte	W04
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En1 , v092
	.byte	W04
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   , En1 , v080
	.byte	W06
	.byte		N04   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   
	.byte	W18
	.byte		N04   
	.byte	W06
@ 001   ----------------------------------------
	.byte		N04   
	.byte	W04
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En1 , v092
	.byte	W04
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   , En1 , v080
	.byte	W06
	.byte		N04   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   
	.byte		N04   , Fs1 , v056
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        Fs1 , v060
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        Fs1 , v064
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N04   , En1 , v092
	.byte		N01   , Fs1 , v068
	.byte	W03
	.byte		N01   
	.byte	W03
@ 002   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_4_002:
	.byte		N04   , En1 , v092
	.byte		N01   , Fs1 , v072
	.byte	W04
	.byte		N04   , En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En1 , v092
	.byte	W04
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   , En1 , v080
	.byte	W06
	.byte		N04   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   
	.byte	W18
	.byte		N04   
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_4_003:
	.byte		N04   , En1 , v092
	.byte	W04
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En1 , v092
	.byte	W04
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   , En1 , v080
	.byte	W06
	.byte		N04   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   
	.byte	W18
	.byte		N04   
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_4_004:
	.byte		N04   , En1 , v092
	.byte	W04
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En1 , v092
	.byte	W04
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En1 , v092
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En1 , v092
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_4_005:
	.byte		N04   , En1 , v092
	.byte	W04
	.byte		        En1 , v080
	.byte	W05
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W05
	.byte		        En1 , v092
	.byte	W04
	.byte		        En1 , v080
	.byte	W05
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W05
	.byte		        En1 , v092
	.byte	W04
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En1 , v092
	.byte	W03
	.byte		N01   , En1 , v080
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W18
	.byte		N04   
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_003
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_003
@ 009   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_4_009:
	.byte		N04   , En1 , v092
	.byte	W04
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En1 , v092
	.byte	W04
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   
	.byte	W24
	.byte		        En1 , v080
	.byte		N04   , Fs1 , v056
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N04   , En1 , v080
	.byte		N01   , Fs1 , v060
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N04   , En1 , v092
	.byte		N01   , Fs1 , v064
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        Fs1 , v068
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte	PEND
@ 010   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_4_010:
	.byte		N04   , En1 , v092
	.byte		N01   , Fs1 , v072
	.byte	W04
	.byte		N04   , En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En1 , v092
	.byte	W04
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   , En1 , v080
	.byte	W06
	.byte		N04   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        En1 , v080
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_4_011:
	.byte		N04   , En1 , v092
	.byte	W04
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En1 , v092
	.byte	W04
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W04
	.byte		N04   , En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W04
	.byte		N04   , En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v080
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_4_012:
	.byte		N04   , En1 , v092
	.byte	W04
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En1 , v092
	.byte	W04
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   , En1 , v080
	.byte	W06
	.byte		N04   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        En1 , v080
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_4_013:
	.byte		N04   , En1 , v092
	.byte	W12
	.byte		        En1 , v080
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v080
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W05
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_012
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_012
@ 017   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_4_017:
	.byte		N04   , En1 , v092
	.byte	W12
	.byte		        En1 , v080
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En1 , v092
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v092
	.byte	W06
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W05
	.byte		        En1 , v092
	.byte		N04   , Fs1 , v072
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
@ 018   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_4_018:
	.byte		N04   , En1 , v084
	.byte	W12
	.byte		        En1 , v072
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En1 , v084
	.byte	W12
	.byte		        En1 , v072
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En1 , v084
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		        En1 , v072
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En1 , v084
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_018
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_018
@ 021   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_4_021:
	.byte		N04   , En1 , v084
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		        En1 , v072
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v084
	.byte	W06
	.byte		N04   , En1 , v072
	.byte	W02
	.byte		N02   
	.byte	W02
	.byte		N02   
	.byte	W08
	.byte		N04   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v084
	.byte	W06
	.byte		N04   , En1 , v072
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v084
	.byte	W06
	.byte		N04   , En1 , v072
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En1 , v084
	.byte	W06
	.byte	PEND
@ 022   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_4_022:
	.byte		N04   , En1 , v092
	.byte	W12
	.byte		        En1 , v080
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v080
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En1 , v092
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_022
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_022
@ 025   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_4_025:
	.byte		N04   , En1 , v092
	.byte	W06
	.byte		        En1 , v080
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W06
	.byte		N04   , En1 , v080
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En1 , v080
	.byte	W12
	.byte		        En1 , v092
	.byte	W06
	.byte		        En1 , v080
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte	W06
	.byte		N04   , En1 , v080
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v092
	.byte		N04   , Fs1 , v056
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N04   , En1 , v092
	.byte		N01   , Fs1 , v060
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N04   , En1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        Fs1 , v068
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_003
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_003
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_009
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_011
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_012
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_013
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_012
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_011
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_012
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_017
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_018
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_018
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_018
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_022
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_022
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_022
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_025
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_005
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_003
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_003
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_003
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_009
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_010
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_011
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_012
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_013
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_012
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_011
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_012
@ 065   ----------------------------------------
	.byte		N04   , En1 , v092
	.byte	W12
	.byte		        En1 , v080
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En1 , v092
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v092
	.byte	W06
	.byte		        En1 , v080
	.byte	W04
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W05
	.byte		        En1 , v092
	.byte		N04   , Fs1 , v056
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N04   , En1 , v080
	.byte		N01   , Fs1 , v060
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N04   , En1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N04   , En1 , v080
	.byte		N01   , Fs1 , v068
	.byte	W03
	.byte		N01   
	.byte	W03
@ 066   ----------------------------------------
	.byte		N04   , En1 , v092
	.byte		N01   , Fs1 , v072
	.byte	W96
@ 067   ----------------------------------------
	.byte	W48
	.byte		N04   , Fs1 , v056
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        Fs1 , v060
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        Fs1 , v064
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        Fs1 , v068
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        Fs1 , v072
	.byte	W24
@ 068   ----------------------------------------
	.byte		N04   
	.byte	W96
@ 069   ----------------------------------------
	.byte	W72
	.byte		        Fs1 , v056
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        Fs1 , v060
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        Fs1 , v064
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        Fs1 , v068
	.byte	W03
	.byte		N01   
	.byte	W03
@ 070   ----------------------------------------
	.byte		        Fs1 , v072
	.byte	W72
	.byte		N04   , Fs1 , v056
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        Fs1 , v060
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        Fs1 , v064
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        Fs1 , v068
	.byte	W03
	.byte		N01   
	.byte	W03
@ 071   ----------------------------------------
	.byte		        Fs1 , v072
	.byte	W96
@ 072   ----------------------------------------
	.byte		N04   
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte		N04   
	.byte	W24
	.byte		N04   
	.byte	W24
	.byte		N04   
	.byte	W24
	.byte		N04   
	.byte	W24
@ 075   ----------------------------------------
	.byte		N04   
	.byte	W24
	.byte		N04   
	.byte	W24
	.byte		N04   
	.byte	W24
	.byte		        Fs1 , v056
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        Fs1 , v060
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        Fs1 , v064
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        Fs1 , v068
	.byte	W03
	.byte		N01   
	.byte	W03
@ 076   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_4_076:
	.byte		N04   , En1 , v092
	.byte		N01   , Fs1 , v072
	.byte	W06
	.byte		N04   , En1 , v080
	.byte	W06
	.byte		        En1 , v092
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v072
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N01   
	.byte	W02
	.byte		N02   
	.byte	W02
	.byte		N02   
	.byte	W02
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   , En1 , v088
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v080
	.byte	W02
	.byte		N02   
	.byte	W02
	.byte		N02   
	.byte	W02
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v092
	.byte	W06
	.byte	PEND
@ 077   ----------------------------------------
mus_fire_emblem_mystery_of_the_emblem_4_077:
	.byte		N04   , En1 , v092
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v092
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v072
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N01   
	.byte	W02
	.byte		N02   
	.byte	W02
	.byte		N02   
	.byte	W02
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   , En1 , v088
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v080
	.byte	W02
	.byte		N02   
	.byte	W02
	.byte		N02   
	.byte	W02
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   
	.byte		N04   , Fs1 , v056
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N04   , En1 , v092
	.byte		N01   , Fs1 , v060
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N04   , En1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N04   , En1 , v092
	.byte		N01   , Fs1 , v068
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte	PEND
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_076
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_077
@ 080   ----------------------------------------
	.byte		N04   , En1 , v092
	.byte		N01   , Fs1 , v072
	.byte	W06
	.byte		N04   , En1 , v080
	.byte	W06
	.byte		        En1 , v092
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v072
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N01   
	.byte	W02
	.byte		N02   
	.byte	W02
	.byte		N02   
	.byte	W02
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   , En1 , v088
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		        En1 , v080
	.byte	W02
	.byte		N02   
	.byte	W02
	.byte		N02   
	.byte	W02
	.byte		        En1 , v092
	.byte	W12
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W08
@ 081   ----------------------------------------
	.byte		N04   
	.byte		N04   , Fs1 , v072
	.byte	W96
	.byte	GOTO
	 .word	mus_fire_emblem_mystery_of_the_emblem_4_B1
mus_fire_emblem_mystery_of_the_emblem_4_B2:
@ 082   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_fire_emblem_mystery_of_the_emblem:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_fire_emblem_mystery_of_the_emblem_pri	@ Priority
	.byte	mus_fire_emblem_mystery_of_the_emblem_rev	@ Reverb.

	.word	mus_fire_emblem_mystery_of_the_emblem_grp

	.word	mus_fire_emblem_mystery_of_the_emblem_1
	.word	mus_fire_emblem_mystery_of_the_emblem_2
	.word	mus_fire_emblem_mystery_of_the_emblem_3
	.word	mus_fire_emblem_mystery_of_the_emblem_4

	.end
