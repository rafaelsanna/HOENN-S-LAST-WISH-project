	.include "MPlayDef.s"

	.equ	mus_change_in_the_house_of_flies_grp, voicegroup_hlw_rock_metal
	.equ	mus_change_in_the_house_of_flies_pri, 0
	.equ	mus_change_in_the_house_of_flies_rev, reverb_set+40
	.equ	mus_change_in_the_house_of_flies_mvl, 98
	.equ	mus_change_in_the_house_of_flies_key, 0
	.equ	mus_change_in_the_house_of_flies_tbs, 1
	.equ	mus_change_in_the_house_of_flies_exg, 1
	.equ	mus_change_in_the_house_of_flies_cmp, 1

	.section .rodata
	.global	mus_change_in_the_house_of_flies
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_change_in_the_house_of_flies_1:
	.byte	KEYSH , mus_change_in_the_house_of_flies_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 68*mus_change_in_the_house_of_flies_tbs/2
	.byte		VOICE , 29
	.byte		VOL   , 124*mus_change_in_the_house_of_flies_mvl/mxv
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Gn1 
	.byte	W06
@ 002   ----------------------------------------
mus_change_in_the_house_of_flies_1_002:
	.byte		N06   , Fn1 , v096
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
mus_change_in_the_house_of_flies_1_003:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Gn1 
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_002
@ 013   ----------------------------------------
mus_change_in_the_house_of_flies_1_013:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
mus_change_in_the_house_of_flies_1_014:
	.byte		N06   , Gs1 , v096
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N12   , Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_013
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_014
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_014
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_013
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_014
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_003
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_002
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_003
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_013
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_014
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_013
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_014
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_013
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_014
@ 037   ----------------------------------------
mus_change_in_the_house_of_flies_1_037:
	.byte		N12   , Ds1 , v096
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
mus_change_in_the_house_of_flies_1_038:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn1 
	.byte		N12   , Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte	PEND
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_037
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_038
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_037
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_038
@ 043   ----------------------------------------
	.byte		N12   , Ds1 , v096
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		N18   , Ds1 
	.byte		N18   , As1 
	.byte		N18   , Ds2 
	.byte		N18   , As2 
	.byte	W42
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
	 .word	mus_change_in_the_house_of_flies_1_003
@ 053   ----------------------------------------
mus_change_in_the_house_of_flies_1_053:
	.byte		N06   , Fn1 , v096
	.byte		N06   , Cn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	PEND
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_003
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_053
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_003
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_053
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_003
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_053
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_037
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_038
@ 062   ----------------------------------------
	.byte		N12   , Ds1 , v096
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W18
	.byte		N12   , Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_038
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_037
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_038
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_037
@ 067   ----------------------------------------
mus_change_in_the_house_of_flies_1_067:
	.byte		N18   , Cn1 , v096
	.byte		N18   , Ds2 
	.byte		N18   , Ds3 
	.byte	W18
	.byte		N06   , Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W18
	.byte		N12   , Cn1 
	.byte		N12   , Ds2 
	.byte		N12   , Ds3 
	.byte	W18
	.byte		        Cn1 
	.byte		N12   , Ds2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Ds2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte	PEND
@ 068   ----------------------------------------
mus_change_in_the_house_of_flies_1_068:
	.byte		N18   , Fn1 , v096
	.byte		N18   , Cn2 
	.byte		N18   , Fn2 
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N06   , Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Fn2 
	.byte		N06   , Cn3 
	.byte	W18
	.byte		N12   , Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W18
	.byte		N18   , Fn1 
	.byte		N18   , Cn2 
	.byte		N18   , Gs2 
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N12   , Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte	PEND
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_067
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_068
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_067
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_1_068
@ 073   ----------------------------------------
	.byte		N18   , Fn1 , v096
	.byte		N18   , Cn2 
	.byte		N18   , Fn2 
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N06   , Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Fn2 
	.byte		N06   , Cn3 
	.byte	W18
	.byte		N12   , Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_change_in_the_house_of_flies_2:
	.byte	KEYSH , mus_change_in_the_house_of_flies_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 30
	.byte		VOL   , 127*mus_change_in_the_house_of_flies_mvl/mxv
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
mus_change_in_the_house_of_flies_2_012:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
mus_change_in_the_house_of_flies_2_013:
	.byte		N06   , Gs1 , v096
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N12   , Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_012
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_013
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_012
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_013
@ 020   ----------------------------------------
mus_change_in_the_house_of_flies_2_020:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Gn1 
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
mus_change_in_the_house_of_flies_2_021:
	.byte		N06   , Fn1 , v096
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_020
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_021
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_020
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_021
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_012
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_013
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_012
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_013
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_012
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_013
@ 036   ----------------------------------------
mus_change_in_the_house_of_flies_2_036:
	.byte		N12   , Ds1 , v096
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_change_in_the_house_of_flies_2_037:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn1 
	.byte		N12   , Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_036
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_037
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_036
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_037
@ 042   ----------------------------------------
	.byte		N12   , Ds1 , v096
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		N18   , Ds1 
	.byte		N18   , As1 
	.byte		N18   , Ds2 
	.byte		N18   , As2 
	.byte	W30
	.byte		N12   , Ds1 
	.byte	W12
@ 043   ----------------------------------------
	.byte		N96   , Cn1 
	.byte	W96
@ 044   ----------------------------------------
	.byte		N06   , Fn1 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
@ 045   ----------------------------------------
mus_change_in_the_house_of_flies_2_045:
	.byte		N96   , Cn1 , v096
	.byte		N96   , Ds2 
	.byte		N96   , Ds3 
	.byte	W96
	.byte	PEND
@ 046   ----------------------------------------
	.byte		N06   , Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_045
@ 048   ----------------------------------------
	.byte		N06   , Fn1 , v096
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_045
@ 050   ----------------------------------------
	.byte		N06   , Fn1 , v096
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N24   , Dn2 
	.byte	W24
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_020
@ 052   ----------------------------------------
mus_change_in_the_house_of_flies_2_052:
	.byte		N06   , Fn1 , v096
	.byte		N06   , Cn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	PEND
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_020
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_052
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_020
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_052
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_020
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_052
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_036
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_037
@ 061   ----------------------------------------
	.byte		N12   , Ds1 , v096
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W18
	.byte		N12   , Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Ds1 
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
@ 062   ----------------------------------------
	.byte		N06   , Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_036
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_037
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_036
@ 066   ----------------------------------------
mus_change_in_the_house_of_flies_2_066:
	.byte		N18   , Cn1 , v096
	.byte		N18   , Ds2 
	.byte		N18   , Ds3 
	.byte	W18
	.byte		N06   , Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W18
	.byte		N12   , Cn1 
	.byte		N12   , Ds2 
	.byte		N12   , Ds3 
	.byte	W18
	.byte		        Cn1 
	.byte		N12   , Ds2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Ds2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte	PEND
@ 067   ----------------------------------------
mus_change_in_the_house_of_flies_2_067:
	.byte		N18   , Fn1 , v096
	.byte		N18   , Cn2 
	.byte		N18   , Fn2 
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N06   , Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Fn2 
	.byte		N06   , Cn3 
	.byte	W18
	.byte		N12   , Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W18
	.byte		N18   , Fn1 
	.byte		N18   , Cn2 
	.byte		N18   , Gs2 
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N12   , Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte	PEND
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_066
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_067
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_066
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_2_067
@ 072   ----------------------------------------
	.byte		N18   , Fn1 , v096
	.byte		N18   , Cn2 
	.byte		N18   , Fn2 
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N06   , Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Fn2 
	.byte		N06   , Cn3 
	.byte	W18
	.byte		N12   , Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte	FINE

@**************** Track 3 (Midi-Chn.5) ****************@

mus_change_in_the_house_of_flies_3:
	.byte	KEYSH , mus_change_in_the_house_of_flies_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 118*mus_change_in_the_house_of_flies_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_change_in_the_house_of_flies_3_004:
	.byte		N06   , Cn0 , v096
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Cn0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn0 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_change_in_the_house_of_flies_3_005:
	.byte		N12   , Cn1 , v096
	.byte	W12
	.byte		N06   , Fn0 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Ds0 
	.byte	W06
	.byte		        Fn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Ds0 
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		N12   , Ds0 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_005
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_005
@ 012   ----------------------------------------
mus_change_in_the_house_of_flies_3_012:
	.byte		N06   , Cn0 , v096
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
mus_change_in_the_house_of_flies_3_013:
	.byte		N06   , Gs0 , v096
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_012
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_013
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_012
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_013
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_004
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_005
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_004
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_005
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_012
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_013
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_012
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_013
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_012
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_013
@ 036   ----------------------------------------
mus_change_in_the_house_of_flies_3_036:
	.byte		N12   , Ds0 , v096
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_change_in_the_house_of_flies_3_037:
	.byte		N06   , Cn0 , v096
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_036
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_037
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_036
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_037
@ 042   ----------------------------------------
	.byte		N12   , Ds0 , v096
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N18   
	.byte	W42
@ 043   ----------------------------------------
	.byte		N96   , Cn0 
	.byte	W96
@ 044   ----------------------------------------
	.byte		        Fn0 
	.byte	W96
@ 045   ----------------------------------------
	.byte		        Cn0 
	.byte	W96
@ 046   ----------------------------------------
	.byte		        Fn0 
	.byte	W96
@ 047   ----------------------------------------
	.byte		        Cn0 
	.byte	W96
@ 048   ----------------------------------------
	.byte		        Fn0 
	.byte	W96
@ 049   ----------------------------------------
	.byte		        Cn0 
	.byte	W96
@ 050   ----------------------------------------
	.byte		        Fn0 
	.byte	W96
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_012
@ 052   ----------------------------------------
mus_change_in_the_house_of_flies_3_052:
	.byte		N06   , Fn0 , v096
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_012
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_052
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_012
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_052
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_012
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_052
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_036
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_037
@ 061   ----------------------------------------
mus_change_in_the_house_of_flies_3_061:
	.byte		N12   , Ds0 , v096
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_037
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_061
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_012
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_061
@ 066   ----------------------------------------
mus_change_in_the_house_of_flies_3_066:
	.byte		N18   , Cn0 , v096
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 067   ----------------------------------------
mus_change_in_the_house_of_flies_3_067:
	.byte		N18   , Fn0 , v096
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_066
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_067
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_066
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_3_067
@ 072   ----------------------------------------
	.byte		N18   , Fn0 , v096
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N12   , Cn0 
	.byte	W12
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_change_in_the_house_of_flies_4:
	.byte	KEYSH , mus_change_in_the_house_of_flies_key+0
@ 000   ----------------------------------------
	.byte		VOL   , 120*mus_change_in_the_house_of_flies_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_change_in_the_house_of_flies_4_004:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_4_004
@ 007   ----------------------------------------
mus_change_in_the_house_of_flies_4_007:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte		        Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_4_007
@ 010   ----------------------------------------
	.byte		N12   , Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N06   , As1 
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
@ 011   ----------------------------------------
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N06   , As1 
	.byte	W06
	.byte		        Bn1 , v080
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte	W12
	.byte		        As1 , v068
	.byte	W12
@ 012   ----------------------------------------
mus_change_in_the_house_of_flies_4_012:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
mus_change_in_the_house_of_flies_4_013:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_4_013
@ 015   ----------------------------------------
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
@ 016   ----------------------------------------
	.byte		N12   
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , As1 , v068
	.byte	W12
@ 017   ----------------------------------------
	.byte		        Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
@ 018   ----------------------------------------
mus_change_in_the_house_of_flies_4_018:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
	.byte		N12   
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Bn1 , v080
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte	W06
@ 020   ----------------------------------------
	.byte		        Cn1 , v096
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		N03   
	.byte	W03
@ 021   ----------------------------------------
mus_change_in_the_house_of_flies_4_021:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_4_021
@ 023   ----------------------------------------
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
@ 024   ----------------------------------------
mus_change_in_the_house_of_flies_4_024:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_4_024
@ 026   ----------------------------------------
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
@ 027   ----------------------------------------
	.byte		        Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 028   ----------------------------------------
	.byte		        Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
@ 029   ----------------------------------------
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , As1 , v068
	.byte	W12
@ 030   ----------------------------------------
	.byte		        Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
@ 031   ----------------------------------------
	.byte		N12   
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
@ 032   ----------------------------------------
	.byte		N12   
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_4_018
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_4_018
@ 035   ----------------------------------------
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
@ 036   ----------------------------------------
mus_change_in_the_house_of_flies_4_036:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte	PEND
@ 037   ----------------------------------------
	.byte		N06   
	.byte		N06   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Cs2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_4_036
@ 039   ----------------------------------------
mus_change_in_the_house_of_flies_4_039:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Cs2 , v072
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Cs2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte	PEND
@ 040   ----------------------------------------
	.byte		N12   
	.byte		N12   , Cs2 , v072
	.byte		N12   
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Cs2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Cs2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_4_039
@ 042   ----------------------------------------
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N12   , Bn1 , v080
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Cs2 , v072
	.byte	W12
@ 043   ----------------------------------------
mus_change_in_the_house_of_flies_4_043:
	.byte		N96   , Cn1 , v096
	.byte		N96   , Cs2 , v072
	.byte	W96
	.byte	PEND
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
	 .word	mus_change_in_the_house_of_flies_4_043
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_4_012
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_4_018
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_4_018
@ 054   ----------------------------------------
mus_change_in_the_house_of_flies_4_054:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte	PEND
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_4_018
@ 056   ----------------------------------------
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , As1 , v068
	.byte	W12
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_4_018
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_4_054
@ 059   ----------------------------------------
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_4_036
@ 061   ----------------------------------------
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
@ 062   ----------------------------------------
	.byte		N12   
	.byte		N12   , Cs2 , v072
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_4_036
@ 064   ----------------------------------------
mus_change_in_the_house_of_flies_4_064:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte	PEND
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_4_064
@ 066   ----------------------------------------
mus_change_in_the_house_of_flies_4_066:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , Cs2 , v072
	.byte	W18
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N03   , Bn1 , v080
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	PEND
@ 067   ----------------------------------------
mus_change_in_the_house_of_flies_4_067:
	.byte		N18   , Cn1 , v096
	.byte		N18   , Cs2 , v072
	.byte	W18
	.byte		N06   , Cn1 , v096
	.byte		N06   , Cs2 , v072
	.byte	W18
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte		N06   , As1 , v068
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	PEND
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_4_066
@ 069   ----------------------------------------
	.byte		N18   , Cn1 , v096
	.byte		N18   , Cs2 , v072
	.byte	W18
	.byte		N06   , Cn1 , v096
	.byte		N06   , Cs2 , v072
	.byte	W18
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn1 , v096
	.byte	W06
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_change_in_the_house_of_flies_4_067
@ 071   ----------------------------------------
	.byte		N18   , Cn1 , v096
	.byte		N18   , Cs2 , v072
	.byte	W18
	.byte		N06   , Cn1 , v096
	.byte		N06   , Cs2 , v072
	.byte	W18
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Bn1 , v080
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Gn1 
	.byte	W06
	.byte		N12   
	.byte	W12
@ 072   ----------------------------------------
	.byte		N18   , Cn1 , v096
	.byte		N18   , Cs2 , v072
	.byte	W18
	.byte		N06   , Cn1 , v096
	.byte		N06   , Cs2 , v072
	.byte	W18
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

mus_change_in_the_house_of_flies:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_change_in_the_house_of_flies_pri	@ Priority
	.byte	mus_change_in_the_house_of_flies_rev	@ Reverb.

	.word	mus_change_in_the_house_of_flies_grp

	.word	mus_change_in_the_house_of_flies_1
	.word	mus_change_in_the_house_of_flies_2
	.word	mus_change_in_the_house_of_flies_3
	.word	mus_change_in_the_house_of_flies_4

	.end
