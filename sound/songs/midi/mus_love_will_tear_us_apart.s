	.include "MPlayDef.s"

	.equ	mus_love_will_tear_us_apart_grp, voicegroup_hlw_indie_guitar
	.equ	mus_love_will_tear_us_apart_pri, 0
	.equ	mus_love_will_tear_us_apart_rev, reverb_set+35
	.equ	mus_love_will_tear_us_apart_mvl, 96
	.equ	mus_love_will_tear_us_apart_key, 0
	.equ	mus_love_will_tear_us_apart_tbs, 1
	.equ	mus_love_will_tear_us_apart_exg, 1
	.equ	mus_love_will_tear_us_apart_cmp, 1

	.section .rodata
	.global	mus_love_will_tear_us_apart
	.align	2

@**************** Track 1 (Midi-Chn.9) ****************@

mus_love_will_tear_us_apart_1:
	.byte		VOL   , 127*mus_love_will_tear_us_apart_mvl/mxv
	.byte	KEYSH , mus_love_will_tear_us_apart_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 135*mus_love_will_tear_us_apart_tbs/2
	.byte		VOICE , 73
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
mus_love_will_tear_us_apart_1_017:
	.byte		N24   , Dn3 , v072
	.byte	W24
	.byte		N48   , En3 
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
mus_love_will_tear_us_apart_1_018:
	.byte		N48   , Fs3 , v072
	.byte	W60
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
mus_love_will_tear_us_apart_1_019:
	.byte		N24   , Fs3 , v072
	.byte	W24
	.byte		N48   , Bn2 
	.byte	W60
	.byte		N12   , Dn3 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_love_will_tear_us_apart_1_020:
	.byte		N48   , An2 , v072
	.byte	W72
	.byte		N24   , Dn3 
	.byte	W24
	.byte	PEND
@ 021   ----------------------------------------
	.byte		N48   , En3 
	.byte	W72
	.byte		N24   
	.byte	W24
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_020
@ 025   ----------------------------------------
	.byte		N48   , En3 , v072
	.byte	W72
	.byte		N24   
	.byte	W24
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_019
@ 028   ----------------------------------------
	.byte		N96   , An2 , v072
	.byte	W96
@ 029   ----------------------------------------
	.byte		        En3 
	.byte	W96
@ 030   ----------------------------------------
mus_love_will_tear_us_apart_1_030:
	.byte		N24   , Fs3 , v072
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte	PEND
@ 031   ----------------------------------------
mus_love_will_tear_us_apart_1_031:
	.byte		N48   , Bn2 , v072
	.byte	W72
	.byte		N24   , Dn3 
	.byte	W24
	.byte	PEND
@ 032   ----------------------------------------
	.byte		N96   , An2 
	.byte	W96
@ 033   ----------------------------------------
	.byte		        En3 
	.byte	W96
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_030
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_031
@ 036   ----------------------------------------
	.byte		N96   , An2 , v072
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
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_017
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_018
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_019
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_020
@ 045   ----------------------------------------
	.byte		N48   , En3 , v072
	.byte	W72
	.byte		N24   
	.byte	W24
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_018
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_019
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_020
@ 049   ----------------------------------------
	.byte		N48   , En3 , v072
	.byte	W72
	.byte		N24   
	.byte	W24
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_018
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_019
@ 052   ----------------------------------------
	.byte		N96   , An2 , v072
	.byte	W96
@ 053   ----------------------------------------
	.byte		        En3 
	.byte	W96
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_030
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_031
@ 056   ----------------------------------------
	.byte		N96   , An2 , v072
	.byte	W96
@ 057   ----------------------------------------
	.byte		        En3 
	.byte	W96
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_030
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_031
@ 060   ----------------------------------------
	.byte		N96   , An2 , v072
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
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_017
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_018
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_019
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_020
@ 081   ----------------------------------------
	.byte		N48   , En3 , v072
	.byte	W72
	.byte		N24   
	.byte	W24
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_018
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_019
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_020
@ 085   ----------------------------------------
	.byte		N48   , En3 , v072
	.byte	W72
	.byte		N24   
	.byte	W24
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_018
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_019
@ 088   ----------------------------------------
	.byte		N96   , An2 , v072
	.byte	W96
@ 089   ----------------------------------------
	.byte		        En3 
	.byte	W96
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_030
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_031
@ 092   ----------------------------------------
	.byte		N96   , An2 , v072
	.byte	W96
@ 093   ----------------------------------------
	.byte		        En3 
	.byte	W96
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_030
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_031
@ 096   ----------------------------------------
	.byte		N96   , An2 , v072
	.byte	W96
@ 097   ----------------------------------------
	.byte		        En3 
	.byte	W96
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_030
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_031
@ 100   ----------------------------------------
	.byte		N96   , An2 , v072
	.byte	W96
@ 101   ----------------------------------------
	.byte		        En3 
	.byte	W96
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_030
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_1_031
@ 104   ----------------------------------------
	.byte		N96   , An2 , v072
	.byte	W96
@ 105   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.1) ****************@

mus_love_will_tear_us_apart_2:
	.byte		VOL   , 127*mus_love_will_tear_us_apart_mvl/mxv
	.byte	KEYSH , mus_love_will_tear_us_apart_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		N48   , En2 , v108
	.byte		N48   , An2 
	.byte		N48   , Cs3 
	.byte	W84
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        En2 
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte	W06
@ 003   ----------------------------------------
	.byte		N48   , En2 
	.byte		N48   , An2 
	.byte		N48   , Cs3 
	.byte	W60
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte	W36
	.byte		        En2 
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte	W36
	.byte		        En2 
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        En2 
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte	W06
@ 006   ----------------------------------------
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W06
@ 007   ----------------------------------------
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
@ 008   ----------------------------------------
mus_love_will_tear_us_apart_2_008:
	.byte		N24   , En2 , v108
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_love_will_tear_us_apart_2_009:
	.byte		N24   , Dn2 , v108
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
mus_love_will_tear_us_apart_2_010:
	.byte		N24   , Bn1 , v108
	.byte		N24   , Fs2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_008
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_008
@ 016   ----------------------------------------
	.byte		N96   , En2 , v108
	.byte		N96   , An2 
	.byte		N96   , Cs3 
	.byte		N96   , En3 
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
	.byte		N24   , En2 
	.byte		N24   , Bn2 
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , En2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , En2 
	.byte		N24   , Bn2 
	.byte		N24   , En3 
	.byte	W24
	.byte		N06   , En2 
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , En2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
@ 037   ----------------------------------------
	.byte		N24   , Fs2 
	.byte		N24   , Cs3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N24   , Fs2 
	.byte		N24   , Cs3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte	W12
@ 038   ----------------------------------------
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Fs2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W12
@ 039   ----------------------------------------
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
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
mus_love_will_tear_us_apart_2_060:
	.byte		N48   , En2 , v108
	.byte		N48   , An2 
	.byte		N48   , Cs3 
	.byte		N48   , En3 
	.byte	W84
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W06
	.byte	PEND
@ 061   ----------------------------------------
mus_love_will_tear_us_apart_2_061:
	.byte		N48   , En2 , v108
	.byte		N48   , An2 
	.byte		N48   , Cs3 
	.byte		N48   , En3 
	.byte	W60
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_060
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_061
@ 064   ----------------------------------------
mus_love_will_tear_us_apart_2_064:
	.byte		N24   , En2 , v108
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte		N24   , En3 
	.byte	W36
	.byte		        En2 
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
mus_love_will_tear_us_apart_2_065:
	.byte		N24   , En2 , v108
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte		N24   , En3 
	.byte	W36
	.byte		        En2 
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W06
	.byte	PEND
@ 066   ----------------------------------------
mus_love_will_tear_us_apart_2_066:
	.byte		N12   , En2 , v108
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        En2 
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte	PEND
@ 067   ----------------------------------------
mus_love_will_tear_us_apart_2_067:
	.byte		N12   , En2 , v108
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte	PEND
@ 068   ----------------------------------------
mus_love_will_tear_us_apart_2_068:
	.byte		N96   , En2 , v108
	.byte		N96   , An2 
	.byte		N96   , Cs3 
	.byte		N96   , En3 
	.byte		N96   , An3 
	.byte	W96
	.byte	PEND
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
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_060
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_061
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_060
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_061
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_060
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_061
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_060
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_061
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_064
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_065
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_064
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_065
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_066
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_067
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_066
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_067
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_2_068
@ 121   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_love_will_tear_us_apart_3:
	.byte		VOL   , 127*mus_love_will_tear_us_apart_mvl/mxv
	.byte	KEYSH , mus_love_will_tear_us_apart_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
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
	.byte		N96   , En4 , v048
	.byte	W96
@ 009   ----------------------------------------
mus_love_will_tear_us_apart_3_009:
	.byte		N24   , Fs4 , v048
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
	.byte		N96   , Bn3 
	.byte	W96
@ 011   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 012   ----------------------------------------
	.byte		        En4 
	.byte	W96
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_3_009
@ 014   ----------------------------------------
	.byte		N96   , Bn3 , v048
	.byte	W96
@ 015   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 016   ----------------------------------------
	.byte		        Dn3 
	.byte	W96
@ 017   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 018   ----------------------------------------
	.byte		        Dn4 
	.byte	W96
@ 019   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 020   ----------------------------------------
	.byte		        Dn3 
	.byte	W96
@ 021   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 022   ----------------------------------------
	.byte		        Dn4 
	.byte	W96
@ 023   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 024   ----------------------------------------
	.byte		        Dn3 
	.byte	W96
@ 025   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Gn3 
	.byte	W96
@ 027   ----------------------------------------
	.byte		        Dn4 
	.byte	W96
@ 028   ----------------------------------------
	.byte		        En4 
	.byte	W96
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_3_009
@ 030   ----------------------------------------
	.byte		N96   , Bn3 , v048
	.byte	W96
@ 031   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 032   ----------------------------------------
	.byte		        En4 
	.byte	W96
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_3_009
@ 034   ----------------------------------------
	.byte		N96   , Bn3 , v048
	.byte	W96
@ 035   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 036   ----------------------------------------
	.byte		        Dn3 
	.byte	W96
@ 037   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 038   ----------------------------------------
	.byte		        Dn4 
	.byte	W96
@ 039   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 040   ----------------------------------------
	.byte		        Dn3 
	.byte	W96
@ 041   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 042   ----------------------------------------
	.byte		        Dn4 
	.byte	W96
@ 043   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 044   ----------------------------------------
	.byte		        Dn3 
	.byte	W96
@ 045   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 046   ----------------------------------------
	.byte		        Dn4 
	.byte	W96
@ 047   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 048   ----------------------------------------
	.byte		        Dn3 
	.byte	W96
@ 049   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 050   ----------------------------------------
	.byte		        Gn3 
	.byte	W96
@ 051   ----------------------------------------
	.byte		        Dn4 
	.byte	W96
@ 052   ----------------------------------------
	.byte		        En4 
	.byte	W96
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_3_009
@ 054   ----------------------------------------
	.byte		N96   , Bn3 , v048
	.byte	W96
@ 055   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 056   ----------------------------------------
	.byte		        En4 
	.byte	W96
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_3_009
@ 058   ----------------------------------------
	.byte		N96   , Bn3 , v048
	.byte	W96
@ 059   ----------------------------------------
	.byte		        An3 
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
	.byte		        En4 
	.byte	W96
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_3_009
@ 070   ----------------------------------------
	.byte		N96   , Bn3 , v048
	.byte	W96
@ 071   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 072   ----------------------------------------
	.byte		        En4 
	.byte	W96
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_3_009
@ 074   ----------------------------------------
	.byte		N96   , Bn3 , v048
	.byte	W96
@ 075   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 076   ----------------------------------------
	.byte		        Dn3 
	.byte	W96
@ 077   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 078   ----------------------------------------
	.byte		        Dn4 
	.byte	W96
@ 079   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 080   ----------------------------------------
	.byte		        Dn3 
	.byte	W96
@ 081   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 082   ----------------------------------------
	.byte		        Dn4 
	.byte	W96
@ 083   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 084   ----------------------------------------
	.byte		        Dn3 
	.byte	W96
@ 085   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 086   ----------------------------------------
	.byte		        Gn3 
	.byte	W96
@ 087   ----------------------------------------
	.byte		        Dn4 
	.byte	W96
@ 088   ----------------------------------------
	.byte		        En4 
	.byte	W96
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_3_009
@ 090   ----------------------------------------
	.byte		N96   , Bn3 , v048
	.byte	W96
@ 091   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 092   ----------------------------------------
	.byte		        En4 
	.byte	W96
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_3_009
@ 094   ----------------------------------------
	.byte		N96   , Bn3 , v048
	.byte	W96
@ 095   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 096   ----------------------------------------
	.byte		        En4 
	.byte	W96
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_3_009
@ 098   ----------------------------------------
	.byte		N96   , Bn3 , v048
	.byte	W96
@ 099   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 100   ----------------------------------------
	.byte		        En4 
	.byte	W96
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_3_009
@ 102   ----------------------------------------
	.byte		N96   , Bn3 , v048
	.byte	W96
@ 103   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 104   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.5) ****************@

mus_love_will_tear_us_apart_4:
	.byte		VOL   , 127*mus_love_will_tear_us_apart_mvl/mxv
	.byte	KEYSH , mus_love_will_tear_us_apart_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		N12   , Gn1 , v100
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
@ 001   ----------------------------------------
mus_love_will_tear_us_apart_4_001:
	.byte		N12   , Gn1 , v100
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_001
@ 008   ----------------------------------------
mus_love_will_tear_us_apart_4_008:
	.byte		N24   , En2 , v100
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
mus_love_will_tear_us_apart_4_009:
	.byte		N24   , Fs2 , v100
	.byte	W24
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N12   , En2 
	.byte	W12
	.byte		N24   , Dn2 
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
mus_love_will_tear_us_apart_4_010:
	.byte		N24   , Bn1 , v100
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_love_will_tear_us_apart_4_011:
	.byte		N24   , An1 , v100
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 060   ----------------------------------------
mus_love_will_tear_us_apart_4_060:
	.byte		N24   , Gn1 , v100
	.byte		N24   , An1 
	.byte	W24
	.byte		N12   , Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte	PEND
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_060
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_060
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_060
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_060
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_060
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_060
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_060
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_008
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_009
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_010
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_011
@ 104   ----------------------------------------
mus_love_will_tear_us_apart_4_104:
	.byte		N24   , Gn1 , v100
	.byte		N24   , An1 
	.byte	W24
	.byte		N12   , Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		N24   , Gn1 
	.byte		N24   , An1 
	.byte	W24
	.byte		N12   , Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An1 
	.byte	W12
	.byte	PEND
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_104
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_104
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_104
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_104
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_104
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_104
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_104
@ 112   ----------------------------------------
mus_love_will_tear_us_apart_4_112:
	.byte		N24   , An1 , v100
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_112
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_112
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_112
@ 116   ----------------------------------------
mus_love_will_tear_us_apart_4_116:
	.byte		N12   , An1 , v100
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
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_116
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_116
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_4_116
@ 120   ----------------------------------------
	.byte		N96   , En1 , v100
	.byte	W96
@ 121   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_love_will_tear_us_apart_5:
	.byte		VOL   , 127*mus_love_will_tear_us_apart_mvl/mxv
	.byte	KEYSH , mus_love_will_tear_us_apart_key+0
@ 000   ----------------------------------------
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		N24   , Cn1 , v116
	.byte		N24   , Dn1 , v108
	.byte		N24   , Fs1 , v052
	.byte		N06   , Cs2 , v096
	.byte	W24
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v116
	.byte		N12   , Dn1 , v108
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v116
	.byte		N12   , Dn1 , v108
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W24
@ 005   ----------------------------------------
mus_love_will_tear_us_apart_5_005:
	.byte		N24   , Cn1 , v116
	.byte		N24   , Dn1 , v108
	.byte		N24   , Fs1 , v052
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v116
	.byte		N12   , Dn1 , v108
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v116
	.byte		N12   , Dn1 , v108
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_005
@ 007   ----------------------------------------
	.byte		N24   , Cn1 , v116
	.byte		N24   , Dn1 , v108
	.byte		N24   , Fs1 , v052
	.byte	W24
	.byte		N12   , Cn1 , v116
	.byte		N12   , Dn1 , v108
	.byte		N12   , Fs1 , v052
	.byte	W24
	.byte		        Cn1 , v116
	.byte		N12   , Dn1 , v108
	.byte		N12   , Fs1 , v052
	.byte	W24
	.byte		        Cn1 , v116
	.byte		N12   , Dn1 , v108
	.byte		N12   , Fs1 , v052
	.byte	W24
@ 008   ----------------------------------------
mus_love_will_tear_us_apart_5_008:
	.byte		N06   , Cn1 , v116
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn1 , v108
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 , v108
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N06   , Cn1 , v116
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn1 , v108
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 011   ----------------------------------------
mus_love_will_tear_us_apart_5_011:
	.byte		N06   , Cn1 , v116
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn1 , v108
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 , v108
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N06   , Cn1 , v116
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 , v108
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N06   , Dn1 , v108
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 , v108
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 015   ----------------------------------------
mus_love_will_tear_us_apart_5_015:
	.byte		N06   , Cn1 , v116
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn1 , v108
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 , v108
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N06   , Cn1 , v116
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 , v108
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 , v108
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_015
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_015
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_015
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_015
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_015
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 060   ----------------------------------------
mus_love_will_tear_us_apart_5_060:
	.byte		N06   , Cn1 , v116
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn1 , v108
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Cn1 , v116
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn1 , v108
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 , v108
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_060
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_060
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_060
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_060
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_060
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_060
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_060
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_015
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_015
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_015
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_015
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_015
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_008
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_love_will_tear_us_apart_5_011
@ 120   ----------------------------------------
	.byte		N96   , Cn1 , v116
	.byte		N96   , Dn1 , v108
	.byte		N96   , Fs1 , v052
	.byte	W96
@ 121   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_love_will_tear_us_apart:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_love_will_tear_us_apart_pri	@ Priority
	.byte	mus_love_will_tear_us_apart_rev	@ Reverb.

	.word	mus_love_will_tear_us_apart_grp

	.word	mus_love_will_tear_us_apart_1
	.word	mus_love_will_tear_us_apart_2
	.word	mus_love_will_tear_us_apart_3
	.word	mus_love_will_tear_us_apart_4
	.word	mus_love_will_tear_us_apart_5

	.end
