	.include "MPlayDef.s"

	.equ	mus_i_bet_on_losing_dogs_mitski_grp, voicegroup_diva_pop
	.equ	mus_i_bet_on_losing_dogs_mitski_pri, 0
	.equ	mus_i_bet_on_losing_dogs_mitski_rev, reverb_set+10
	.equ	mus_i_bet_on_losing_dogs_mitski_mvl, 90
	.equ	mus_i_bet_on_losing_dogs_mitski_key, 0
	.equ	mus_i_bet_on_losing_dogs_mitski_tbs, 1
	.equ	mus_i_bet_on_losing_dogs_mitski_exg, 0
	.equ	mus_i_bet_on_losing_dogs_mitski_cmp, 1

	.section .rodata
	.global	mus_i_bet_on_losing_dogs_mitski
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_i_bet_on_losing_dogs_mitski_1:
	.byte	KEYSH , mus_i_bet_on_losing_dogs_mitski_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 82*mus_i_bet_on_losing_dogs_mitski_tbs/2
	.byte		VOICE , 7
	.byte		VOL   , 98*mus_i_bet_on_losing_dogs_mitski_mvl/mxv
	.byte		PAN   , c_v+12
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		N48   , Bn2 , v076
	.byte	W24
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W12
@ 003   ----------------------------------------
mus_i_bet_on_losing_dogs_mitski_1_003:
	.byte		N48   , Bn2 , v076
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N36   , Cs3 
	.byte	W12
	.byte		N48   , An2 
	.byte	W48
	.byte	PEND
@ 004   ----------------------------------------
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Cs3 
	.byte	W12
	.byte		N48   , Bn2 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W12
@ 005   ----------------------------------------
mus_i_bet_on_losing_dogs_mitski_1_005:
	.byte		N36   , Dn3 , v076
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		        Cs3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W36
	.byte	PEND
@ 006   ----------------------------------------
	.byte		N60   , Cs3 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W12
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_1_003
@ 008   ----------------------------------------
	.byte		N12   , En3 , v076
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Cs3 
	.byte	W12
	.byte		N48   , Bn2 
	.byte	W12
	.byte		N18   , Dn3 
	.byte	W18
	.byte		N06   , An2 
	.byte	W06
	.byte		N24   , En3 
	.byte	W12
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_1_005
@ 010   ----------------------------------------
	.byte		N48   , Cs3 , v076
	.byte	W48
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		        Dn3 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N48   
	.byte	W12
	.byte		N36   
	.byte	W48
@ 012   ----------------------------------------
	.byte		N24   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N36   , Bn2 
	.byte	W12
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N18   , Gs2 
	.byte	W18
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N18   , An2 
	.byte	W12
	.byte		N06   
	.byte	W18
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   
	.byte	W12
@ 014   ----------------------------------------
	.byte		N48   , An2 
	.byte	W18
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N36   , Cs3 
	.byte	W12
	.byte		N48   , An2 
	.byte	W36
	.byte		N60   , Cs3 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N48   , An2 
	.byte	W48
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		        Dn3 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N48   , An2 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N36   , Gs2 
	.byte	W12
	.byte		N24   
	.byte	W48
@ 018   ----------------------------------------
	.byte		N48   , An2 
	.byte	W36
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		        Dn3 
	.byte	W12
@ 019   ----------------------------------------
	.byte		N48   , Bn2 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N48   , Fs2 
	.byte	W12
	.byte		        En2 
	.byte	W48
@ 020   ----------------------------------------
	.byte		N96   , En3 
	.byte	W96
@ 021   ----------------------------------------
	.byte		N48   , Dn3 
	.byte	W48
	.byte		        Bn2 
	.byte	W48
@ 022   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		        Dn3 
	.byte	W48
@ 023   ----------------------------------------
	.byte		N96   , Bn2 
	.byte	W96
@ 024   ----------------------------------------
	.byte		N48   , Dn3 
	.byte	W48
	.byte		N96   , Cs3 
	.byte	W48
@ 025   ----------------------------------------
	.byte	W48
	.byte		N48   , Bn2 
	.byte	W48
@ 026   ----------------------------------------
	.byte		        An2 
	.byte	W48
	.byte		        Bn2 
	.byte	W48
@ 027   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N96   
	.byte	W48
@ 028   ----------------------------------------
	.byte	W48
	.byte		N48   , Dn3 
	.byte	W48
@ 029   ----------------------------------------
	.byte		N96   , Bn2 
	.byte	W96
@ 030   ----------------------------------------
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N24   , En3 
	.byte	W24
	.byte		N60   , An3 
	.byte	W60
@ 031   ----------------------------------------
	.byte		N36   , Gn3 
	.byte	W48
	.byte		        Fn3 
	.byte	W36
	.byte		N60   , Ds3 
	.byte	W12
@ 032   ----------------------------------------
	.byte	W48
	.byte		        Dn3 
	.byte	W48
@ 033   ----------------------------------------
	.byte		N12   , An2 
	.byte	W12
	.byte		N24   , As2 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		N36   
	.byte	W12
@ 034   ----------------------------------------
	.byte	W48
	.byte		N24   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 035   ----------------------------------------
	.byte		        As2 
	.byte	W12
	.byte		N36   , Cn3 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N18   , An2 
	.byte	W18
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , An2 
	.byte	W12
	.byte		N18   , As2 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N06   
	.byte	W18
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N48   , As2 
	.byte	W18
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 037   ----------------------------------------
mus_i_bet_on_losing_dogs_mitski_1_037:
	.byte		N12   , As2 , v076
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N36   , Dn3 
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
	.byte		N48   , As2 
	.byte	W36
	.byte		N36   , Dn3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 039   ----------------------------------------
	.byte		        As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N24   
	.byte	W18
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N60   , Dn3 
	.byte	W12
	.byte		N48   
	.byte	W12
@ 040   ----------------------------------------
	.byte	W48
	.byte		N48   
	.byte	W48
@ 041   ----------------------------------------
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N24   , As2 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		N48   
	.byte	W12
@ 042   ----------------------------------------
	.byte	W48
	.byte		        As2 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 043   ----------------------------------------
	.byte		        As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N18   , An2 
	.byte	W18
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , An2 
	.byte	W12
	.byte		N18   , As2 
	.byte	W12
@ 044   ----------------------------------------
	.byte	W18
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W12
	.byte		N48   , As2 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_1_037
@ 046   ----------------------------------------
	.byte	W36
	.byte		N60   , Dn3 , v076
	.byte	W12
	.byte		N48   , As2 
	.byte	W48
@ 047   ----------------------------------------
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N12   , As2 
	.byte	W12
	.byte		N24   , Ds3 
	.byte	W12
	.byte		N96   , As2 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N36   , An2 
	.byte	W12
@ 048   ----------------------------------------
mus_i_bet_on_losing_dogs_mitski_1_048:
	.byte	W48
	.byte		N48   , As2 , v076
	.byte	W36
	.byte		N12   , Dn3 
	.byte	W12
	.byte	PEND
@ 049   ----------------------------------------
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N12   , As2 
	.byte	W12
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		N48   , An2 
	.byte	W12
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_1_048
@ 051   ----------------------------------------
	.byte		N06   , Cn3 , v076
	.byte	W06
	.byte		N30   , As2 
	.byte	W30
	.byte		N24   , Ds3 
	.byte	W12
	.byte		N96   , As2 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N36   
	.byte	W12
@ 052   ----------------------------------------
	.byte	W48
	.byte		N48   
	.byte	W48
@ 053   ----------------------------------------
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N12   , As2 
	.byte	W12
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_i_bet_on_losing_dogs_mitski_2:
	.byte	KEYSH , mus_i_bet_on_losing_dogs_mitski_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 7
	.byte		VOL   , 70*mus_i_bet_on_losing_dogs_mitski_mvl/mxv
	.byte		PAN   , c_v-16
	.byte	W96
@ 001   ----------------------------------------
	.byte		N17   , Gs1 , v044
	.byte		N17   , Ds2 
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte		N17   
	.byte		N17   , Ds2 
	.byte	W24
	.byte		        Gs1 
	.byte	W24
@ 002   ----------------------------------------
	.byte		N17   
	.byte		N17   , Ds2 
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte		        An1 
	.byte		N17   , En2 
	.byte	W24
	.byte		        An1 
	.byte	W24
@ 003   ----------------------------------------
mus_i_bet_on_losing_dogs_mitski_2_003:
	.byte		N17   , Bn1 , v044
	.byte		N17   , Fs2 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		        Cs2 
	.byte		N17   , Fs2 
	.byte	W24
	.byte		N17   
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
mus_i_bet_on_losing_dogs_mitski_2_004:
	.byte		N17   , An1 , v044
	.byte		N17   , En2 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		        Bn1 
	.byte		N17   , En2 
	.byte	W24
	.byte		N17   
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
mus_i_bet_on_losing_dogs_mitski_2_005:
	.byte		N17   , Bn1 , v044
	.byte		N17   , Fs2 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		        An1 
	.byte		N17   , Dn2 
	.byte	W24
	.byte		N17   
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte		        An1 
	.byte		N17   , En2 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		N17   
	.byte		N17   , En2 
	.byte	W24
	.byte		        An1 
	.byte	W24
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_2_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_2_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_2_005
@ 010   ----------------------------------------
	.byte		N17   , Bn1 , v044
	.byte		N17   , En2 
	.byte	W24
	.byte		        Bn1 
	.byte		N17   , En2 
	.byte	W24
	.byte		        An1 
	.byte		N17   , En2 
	.byte	W24
	.byte		        An1 
	.byte		N17   , En2 
	.byte	W24
@ 011   ----------------------------------------
	.byte		        Bn1 
	.byte		N17   , Fs2 
	.byte	W24
	.byte		        Bn1 
	.byte		N17   , Fs2 
	.byte	W24
	.byte		        Cs2 
	.byte		N17   , Fs2 
	.byte	W24
	.byte		        Cs2 
	.byte		N17   , Fs2 
	.byte	W24
@ 012   ----------------------------------------
	.byte		        An1 
	.byte		N17   , En2 
	.byte	W24
	.byte		        An1 
	.byte		N17   , En2 
	.byte	W24
	.byte		        Bn1 
	.byte		N17   , En2 
	.byte	W24
	.byte		        Bn1 
	.byte		N17   , En2 
	.byte	W24
@ 013   ----------------------------------------
	.byte		        Bn1 
	.byte		N17   , Fs2 
	.byte	W24
	.byte		        Bn1 
	.byte		N17   , Fs2 
	.byte	W17
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_i_bet_on_losing_dogs_mitski_3:
	.byte	KEYSH , mus_i_bet_on_losing_dogs_mitski_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 64*mus_i_bet_on_losing_dogs_mitski_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte		N36   , Gs1 , v056
	.byte	W48
	.byte		N36   
	.byte	W48
@ 002   ----------------------------------------
	.byte		N36   
	.byte	W48
	.byte		        An1 
	.byte	W48
@ 003   ----------------------------------------
	.byte		        Bn1 
	.byte	W48
	.byte		        Fs1 
	.byte	W48
@ 004   ----------------------------------------
mus_i_bet_on_losing_dogs_mitski_3_004:
	.byte		N36   , An1 , v056
	.byte	W48
	.byte		        En1 
	.byte	W48
	.byte	PEND
@ 005   ----------------------------------------
	.byte		        Bn1 
	.byte	W48
	.byte		        Dn1 
	.byte	W48
@ 006   ----------------------------------------
	.byte		        An1 
	.byte	W48
	.byte		N36   
	.byte	W48
@ 007   ----------------------------------------
mus_i_bet_on_losing_dogs_mitski_3_007:
	.byte		N36   , Bn0 , v056
	.byte	W48
	.byte		        Fs1 
	.byte	W48
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_3_004
@ 009   ----------------------------------------
	.byte		N36   , Bn0 , v056
	.byte	W48
	.byte		        Dn1 
	.byte	W48
@ 010   ----------------------------------------
	.byte		        En1 
	.byte	W48
	.byte		        An1 
	.byte	W48
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_3_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_3_004
@ 013   ----------------------------------------
	.byte		N36   , Bn0 , v056
	.byte	W36
	.byte	W02
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_i_bet_on_losing_dogs_mitski_4:
	.byte	KEYSH , mus_i_bet_on_losing_dogs_mitski_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 8
	.byte		VOL   , 58*mus_i_bet_on_losing_dogs_mitski_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
mus_i_bet_on_losing_dogs_mitski_4_001:
	.byte		N02   , Cn1 , v040
	.byte		N02   , Fs1 , v024
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        En1 , v036
	.byte		N02   , Fs1 , v024
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v036
	.byte		N02   , Fs1 , v024
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        En1 , v036
	.byte		N02   , Fs1 , v024
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_i_bet_on_losing_dogs_mitski_4_001
@ 053   ----------------------------------------
	.byte		N02   , Cn1 , v040
	.byte		N02   , Fs1 , v024
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        En1 , v036
	.byte		N02   , Fs1 , v024
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v036
	.byte	W24
	.byte		        En1 
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

mus_i_bet_on_losing_dogs_mitski:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_i_bet_on_losing_dogs_mitski_pri	@ Priority
	.byte	mus_i_bet_on_losing_dogs_mitski_rev	@ Reverb.

	.word	mus_i_bet_on_losing_dogs_mitski_grp

	.word	mus_i_bet_on_losing_dogs_mitski_1
	.word	mus_i_bet_on_losing_dogs_mitski_2
	.word	mus_i_bet_on_losing_dogs_mitski_3
	.word	mus_i_bet_on_losing_dogs_mitski_4

	.end
