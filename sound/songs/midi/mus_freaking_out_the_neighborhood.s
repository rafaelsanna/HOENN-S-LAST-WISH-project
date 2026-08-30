	.include "MPlayDef.s"

	.equ	mus_freaking_out_the_neighborhood_grp, voicegroup_hlw_indie_guitar
	.equ	mus_freaking_out_the_neighborhood_pri, 0
	.equ	mus_freaking_out_the_neighborhood_rev, reverb_set+35
	.equ	mus_freaking_out_the_neighborhood_mvl, 94
	.equ	mus_freaking_out_the_neighborhood_key, 0
	.equ	mus_freaking_out_the_neighborhood_tbs, 1
	.equ	mus_freaking_out_the_neighborhood_exg, 1
	.equ	mus_freaking_out_the_neighborhood_cmp, 1

	.section .rodata
	.global	mus_freaking_out_the_neighborhood
	.align	2

@**************** Track 1 (Midi-Chn.3) ****************@

mus_freaking_out_the_neighborhood_1:
	.byte		VOL   , 127*mus_freaking_out_the_neighborhood_mvl/mxv
	.byte	KEYSH , mus_freaking_out_the_neighborhood_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 140*mus_freaking_out_the_neighborhood_tbs/2
	.byte		VOICE , 29
	.byte		N18   , Gs3 , v080
	.byte	W18
	.byte		        Cs4 
	.byte	W18
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N18   , Cs4 
	.byte	W18
	.byte		        Gs3 
	.byte	W18
	.byte		N12   , Cs4 
	.byte	W12
@ 002   ----------------------------------------
mus_freaking_out_the_neighborhood_1_002:
	.byte		N18   , As3 , v080
	.byte	W18
	.byte		        Fs3 
	.byte	W18
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N18   , Fs3 
	.byte	W18
	.byte		        As3 
	.byte	W18
	.byte		N12   , Fs3 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte		N24   , Gs3 
	.byte	W96
@ 004   ----------------------------------------
mus_freaking_out_the_neighborhood_1_004:
	.byte		N24   , Fs4 , v080
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_freaking_out_the_neighborhood_1_005:
	.byte		N18   , Gs3 , v080
	.byte	W18
	.byte		        Cs4 
	.byte	W18
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N18   , Cs4 
	.byte	W18
	.byte		        Gs3 
	.byte	W18
	.byte		N12   , Cs4 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_002
@ 007   ----------------------------------------
	.byte		N24   , Gs3 , v080
	.byte	W96
@ 008   ----------------------------------------
mus_freaking_out_the_neighborhood_1_008:
	.byte		N24   , Cs4 , v080
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N24   , As3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		N12   , Fs3 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_002
@ 011   ----------------------------------------
	.byte		N24   , Gs3 , v080
	.byte	W96
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_002
@ 015   ----------------------------------------
mus_freaking_out_the_neighborhood_1_015:
	.byte		N24   , Gs3 , v080
	.byte	W84
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 016   ----------------------------------------
mus_freaking_out_the_neighborhood_1_016:
	.byte		N18   , Gs3 , v080
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W60
	.byte	PEND
@ 017   ----------------------------------------
mus_freaking_out_the_neighborhood_1_017:
	.byte		N18   , Ds3 , v080
	.byte	W18
	.byte		        Bn3 
	.byte	W18
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N24   , Ds3 
	.byte	W48
	.byte	PEND
@ 018   ----------------------------------------
mus_freaking_out_the_neighborhood_1_018:
	.byte	W48
	.byte		N18   , Ds3 , v080
	.byte	W18
	.byte		        Bn3 
	.byte	W18
	.byte		N12   , Fs3 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_freaking_out_the_neighborhood_1_019:
	.byte		N18   , Dn3 , v080
	.byte	W18
	.byte		        Bn3 
	.byte	W18
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W48
	.byte	PEND
@ 020   ----------------------------------------
mus_freaking_out_the_neighborhood_1_020:
	.byte	W48
	.byte		N18   , Dn3 , v080
	.byte	W18
	.byte		        Bn3 
	.byte	W18
	.byte		N12   , Gs3 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_freaking_out_the_neighborhood_1_021:
	.byte		N18   , Bn2 , v080
	.byte	W18
	.byte		        Gs3 
	.byte	W18
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W48
	.byte	PEND
@ 022   ----------------------------------------
mus_freaking_out_the_neighborhood_1_022:
	.byte		N18   , Bn2 , v080
	.byte	W18
	.byte		        Gs3 
	.byte	W18
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W48
	.byte	PEND
@ 023   ----------------------------------------
mus_freaking_out_the_neighborhood_1_023:
	.byte		N18   , Cs3 , v080
	.byte	W18
	.byte		        Ds3 
	.byte	W18
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N18   , Ds3 
	.byte	W18
	.byte		        Cs3 
	.byte	W18
	.byte		N12   , Ds3 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
mus_freaking_out_the_neighborhood_1_024:
	.byte		N18   , Bn2 , v080
	.byte	W18
	.byte		        Cs3 
	.byte	W18
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N48   , Fs1 
	.byte		N48   , Cs2 
	.byte		N48   , Fs2 
	.byte		N48   , As2 
	.byte		N48   , Cs3 
	.byte		N48   , Fs3 
	.byte	W48
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_017
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_021
@ 030   ----------------------------------------
mus_freaking_out_the_neighborhood_1_030:
	.byte		N18   , Bn2 , v080
	.byte	W18
	.byte		        Fn3 
	.byte	W18
	.byte		N24   , Fs3 
	.byte	W60
	.byte	PEND
@ 031   ----------------------------------------
mus_freaking_out_the_neighborhood_1_031:
	.byte		N18   , Bn2 , v080
	.byte	W18
	.byte		        Fs3 
	.byte	W18
	.byte		N24   , Gs3 
	.byte	W60
	.byte	PEND
@ 032   ----------------------------------------
mus_freaking_out_the_neighborhood_1_032:
	.byte		N96   , Fs1 , v080
	.byte		N96   , Cs2 
	.byte		N96   , Fs2 
	.byte		N96   , As2 
	.byte		N96   , Cs3 
	.byte		N96   , Fs3 
	.byte	W96
	.byte	PEND
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_005
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_002
@ 036   ----------------------------------------
	.byte		N24   , Gs3 , v080
	.byte	W96
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_004
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_005
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_002
@ 040   ----------------------------------------
	.byte		N24   , Gs3 , v080
	.byte	W96
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_008
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_005
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_002
@ 044   ----------------------------------------
	.byte		N24   , Gs3 , v080
	.byte	W96
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_004
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_005
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_002
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_015
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_016
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_017
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_018
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_019
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_020
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_021
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_022
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_023
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_024
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_017
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_018
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_019
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_020
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_021
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_030
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_031
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_032
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_005
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_002
@ 069   ----------------------------------------
	.byte		N24   , Gs3 , v080
	.byte	W96
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_004
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_005
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_002
@ 073   ----------------------------------------
	.byte		N24   , Gs3 , v080
	.byte	W96
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_008
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_005
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_002
@ 077   ----------------------------------------
	.byte		N24   , Gs3 , v080
	.byte	W96
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_004
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_005
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_002
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_015
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_016
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_005
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_002
@ 085   ----------------------------------------
	.byte		N24   , Gs3 , v080
	.byte	W96
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_004
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_005
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_002
@ 089   ----------------------------------------
	.byte		N24   , Gs3 , v080
	.byte	W96
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_008
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_005
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_002
@ 093   ----------------------------------------
	.byte		N24   , Gs3 , v080
	.byte	W96
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_004
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_005
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_002
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_015
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_1_016
@ 099   ----------------------------------------
	.byte		N96   , Fs3 , v080
	.byte	W96
@ 100   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.5) ****************@

mus_freaking_out_the_neighborhood_2:
	.byte		VOL   , 127*mus_freaking_out_the_neighborhood_mvl/mxv
	.byte	KEYSH , mus_freaking_out_the_neighborhood_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 27
	.byte		N24   , Cs2 , v080
	.byte		N24   , Bn2 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Cs2 
	.byte		N24   , Bn2 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Cs2 
	.byte		N24   , Bn2 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
@ 001   ----------------------------------------
mus_freaking_out_the_neighborhood_2_001:
	.byte		N24   , Ds2 , v080
	.byte		N24   , Cs3 
	.byte		N24   , As3 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Ds2 
	.byte		N24   , Cs3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Ds2 
	.byte		N24   , Cs3 
	.byte		N24   , As3 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_freaking_out_the_neighborhood_2_002:
	.byte		N24   , Gs1 , v080
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Gs1 
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Gs1 
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 004   ----------------------------------------
mus_freaking_out_the_neighborhood_2_004:
	.byte		N24   , Cs2 , v080
	.byte		N24   , Bn2 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Cs2 
	.byte		N24   , Bn2 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Cs2 
	.byte		N24   , Bn2 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 016   ----------------------------------------
mus_freaking_out_the_neighborhood_2_016:
	.byte		N24   , Bn1 , v080
	.byte		N24   , Bn2 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Bn1 
	.byte		N24   , Bn2 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        Bn1 
	.byte		N24   , Bn2 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_016
@ 018   ----------------------------------------
mus_freaking_out_the_neighborhood_2_018:
	.byte		N24   , Fn2 , v080
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Fn2 
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Fn2 
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_freaking_out_the_neighborhood_2_019:
	.byte		N24   , Fn2 , v080
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Fn2 
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Fn2 
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 021   ----------------------------------------
mus_freaking_out_the_neighborhood_2_021:
	.byte		N24   , Cs2 , v080
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Cs2 
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Cs2 
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_freaking_out_the_neighborhood_2_022:
	.byte		N24   , An1 , v080
	.byte		N24   , Cs3 
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , En2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , An1 
	.byte		N24   , Cs3 
	.byte		N24   , En3 
	.byte	W24
	.byte		        An1 
	.byte		N24   , Cs3 
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
mus_freaking_out_the_neighborhood_2_023:
	.byte		N24   , Fs1 , v080
	.byte		N24   , Cs3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Fs1 
	.byte		N24   , Cs3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Fs1 
	.byte		N24   , Cs3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_016
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_016
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 029   ----------------------------------------
mus_freaking_out_the_neighborhood_2_029:
	.byte		N24   , Ds2 , v080
	.byte		N24   , Cs3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Ds2 
	.byte		N24   , Cs3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Ds2 
	.byte		N24   , Cs3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
mus_freaking_out_the_neighborhood_2_030:
	.byte		N24   , En2 , v080
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , En2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , En2 
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        En2 
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_023
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_023
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_004
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_001
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_004
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_001
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_004
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_001
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_004
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_001
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_016
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_016
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_018
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_019
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_021
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_022
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_023
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_016
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_016
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_018
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_019
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_029
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_030
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_023
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_023
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_004
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_001
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_004
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_001
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_004
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_001
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_004
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_001
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_004
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_001
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_004
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_001
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_004
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_001
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_004
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_001
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_2_002
@ 098   ----------------------------------------
	.byte		N96   , Fs1 , v080
	.byte		N96   , Cs3 
	.byte		N96   , Fs3 
	.byte	W96
@ 099   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.7) ****************@

mus_freaking_out_the_neighborhood_3:
	.byte		VOL   , 127*mus_freaking_out_the_neighborhood_mvl/mxv
	.byte	KEYSH , mus_freaking_out_the_neighborhood_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
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
mus_freaking_out_the_neighborhood_3_082:
	.byte		N18   , Bn3 , v080
	.byte	W18
	.byte		        Ds4 
	.byte	W18
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	PEND
@ 083   ----------------------------------------
mus_freaking_out_the_neighborhood_3_083:
	.byte	W12
	.byte		N12   , Fs3 , v080
	.byte	W12
	.byte		N24   , Gs3 
	.byte	W36
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte	PEND
@ 084   ----------------------------------------
mus_freaking_out_the_neighborhood_3_084:
	.byte		N24   , Bn3 , v080
	.byte	W84
	.byte		N12   , Ds3 
	.byte	W12
	.byte	PEND
@ 085   ----------------------------------------
mus_freaking_out_the_neighborhood_3_085:
	.byte		N12   , Fs3 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		        Ds3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte	PEND
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_3_082
@ 087   ----------------------------------------
mus_freaking_out_the_neighborhood_3_087:
	.byte	W12
	.byte		N12   , Fs3 , v080
	.byte	W12
	.byte		N24   , Gs3 
	.byte	W36
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte	PEND
@ 088   ----------------------------------------
mus_freaking_out_the_neighborhood_3_088:
	.byte		N24   , Gs3 , v080
	.byte	W84
	.byte		N12   , Cs3 
	.byte	W12
	.byte	PEND
@ 089   ----------------------------------------
mus_freaking_out_the_neighborhood_3_089:
	.byte	W12
	.byte		N12   , Ds3 , v080
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N18   , Bn2 
	.byte	W48
	.byte	PEND
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_3_082
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_3_083
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_3_084
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_3_085
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_3_082
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_3_087
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_3_088
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_3_089
@ 098   ----------------------------------------
	.byte		N96   , Fs3 , v080
	.byte	W96
@ 099   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.1) ****************@

mus_freaking_out_the_neighborhood_4:
	.byte		VOL   , 127*mus_freaking_out_the_neighborhood_mvl/mxv
	.byte	KEYSH , mus_freaking_out_the_neighborhood_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		N36   , Cs1 , v080
	.byte	W36
	.byte		N12   , Bn0 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 001   ----------------------------------------
mus_freaking_out_the_neighborhood_4_001:
	.byte		N36   , Ds1 , v080
	.byte	W36
	.byte		N12   , Cs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_freaking_out_the_neighborhood_4_002:
	.byte		N36   , Gs0 , v080
	.byte	W36
	.byte		N12   , Fs0 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_freaking_out_the_neighborhood_4_003:
	.byte		N36   , Gs0 , v080
	.byte	W36
	.byte		N12   , Fs0 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_freaking_out_the_neighborhood_4_004:
	.byte		N36   , Cs1 , v080
	.byte	W36
	.byte		N12   , Bn0 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_003
@ 016   ----------------------------------------
mus_freaking_out_the_neighborhood_4_016:
	.byte		N12   , Bn0 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
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
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_016
@ 018   ----------------------------------------
mus_freaking_out_the_neighborhood_4_018:
	.byte		N36   , Fn1 , v080
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_018
@ 020   ----------------------------------------
mus_freaking_out_the_neighborhood_4_020:
	.byte		N36   , Gs0 , v080
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_freaking_out_the_neighborhood_4_021:
	.byte		N36   , Cs1 , v080
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_freaking_out_the_neighborhood_4_022:
	.byte		N36   , An0 , v080
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
mus_freaking_out_the_neighborhood_4_023:
	.byte		N36   , Fs0 , v080
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_016
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_016
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_018
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_020
@ 029   ----------------------------------------
mus_freaking_out_the_neighborhood_4_029:
	.byte		N36   , Ds1 , v080
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
mus_freaking_out_the_neighborhood_4_030:
	.byte		N36   , En1 , v080
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_023
@ 032   ----------------------------------------
mus_freaking_out_the_neighborhood_4_032:
	.byte		N12   , Fs0 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
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
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_004
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_001
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_002
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_003
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_004
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_001
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_002
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_003
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_004
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_001
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_002
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_003
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_004
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_001
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_002
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_003
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_016
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_016
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_018
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_018
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_020
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_021
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_022
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_023
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_016
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_016
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_018
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_018
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_020
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_029
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_030
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_023
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_032
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_004
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_001
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_002
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_003
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_004
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_001
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_002
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_003
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_004
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_001
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_002
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_003
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_004
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_001
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_002
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_003
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_004
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_001
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_002
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_003
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_004
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_001
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_002
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_003
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_004
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_001
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_002
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_003
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_004
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_001
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_002
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_4_003
@ 098   ----------------------------------------
	.byte		N96   , Fs1 , v080
	.byte	W96
@ 099   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_freaking_out_the_neighborhood_5:
	.byte		VOL   , 127*mus_freaking_out_the_neighborhood_mvl/mxv
	.byte	KEYSH , mus_freaking_out_the_neighborhood_key+0
@ 000   ----------------------------------------
	.byte		N24   , Cn1 , v080
	.byte		N24   , Fs1 , v052
	.byte	W24
	.byte		N12   , Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N24   
	.byte		N24   , Fs1 , v052
	.byte	W24
	.byte		        Dn1 , v080
	.byte		N24   , Fs1 , v052
	.byte	W24
@ 001   ----------------------------------------
mus_freaking_out_the_neighborhood_5_001:
	.byte		N24   , Cn1 , v080
	.byte		N24   , Fs1 , v052
	.byte	W24
	.byte		N12   , Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N24   
	.byte		N24   , Fs1 , v052
	.byte	W24
	.byte		        Dn1 , v080
	.byte		N24   , Fs1 , v052
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 015   ----------------------------------------
mus_freaking_out_the_neighborhood_5_015:
	.byte		N24   , Cn1 , v080
	.byte		N24   , Fs1 , v052
	.byte	W24
	.byte		N12   , Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
mus_freaking_out_the_neighborhood_5_016:
	.byte		N12   , Cn1 , v080
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_015
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_016
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_015
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_001
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_freaking_out_the_neighborhood_5_015
@ 098   ----------------------------------------
	.byte		N48   , Cn1 , v080
	.byte		N48   , Dn1 
	.byte		N48   , Fs1 , v052
	.byte	W96
@ 099   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_freaking_out_the_neighborhood:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_freaking_out_the_neighborhood_pri	@ Priority
	.byte	mus_freaking_out_the_neighborhood_rev	@ Reverb.

	.word	mus_freaking_out_the_neighborhood_grp

	.word	mus_freaking_out_the_neighborhood_1
	.word	mus_freaking_out_the_neighborhood_2
	.word	mus_freaking_out_the_neighborhood_3
	.word	mus_freaking_out_the_neighborhood_4
	.word	mus_freaking_out_the_neighborhood_5

	.end
