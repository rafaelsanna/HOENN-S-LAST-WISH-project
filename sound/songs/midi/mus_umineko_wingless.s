	.include "MPlayDef.s"

	.equ	mus_umineko_wingless_grp, voicegroup_littleroot_test
	.equ	mus_umineko_wingless_pri, 0
	.equ	mus_umineko_wingless_rev, reverb_set+50
	.equ	mus_umineko_wingless_mvl, 90
	.equ	mus_umineko_wingless_key, 0
	.equ	mus_umineko_wingless_tbs, 1
	.equ	mus_umineko_wingless_exg, 1
	.equ	mus_umineko_wingless_cmp, 1

	.section .rodata
	.global	mus_umineko_wingless
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_umineko_wingless_1:
	.byte	KEYSH , mus_umineko_wingless_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 100*mus_umineko_wingless_tbs/2
	.byte		VOICE , 35
	.byte		VOL   , 127*mus_umineko_wingless_mvl/mxv
	.byte		PAN   , c_v-24
	.byte		N11   , Gs1 , v104
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N18   , Ds2 
	.byte	W18
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N17   , Cn2 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N17   , As1 
	.byte	W12
@ 002   ----------------------------------------
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N16   , Fn2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		N17   , Dn2 
	.byte	W18
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N16   , Cn2 
	.byte	W18
@ 003   ----------------------------------------
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N16   , Ds2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , Dn2 
	.byte	W12
@ 004   ----------------------------------------
	.byte	W06
	.byte		N15   , Gn2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		N16   , Dn2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N16   , Gs1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N15   , Ds2 
	.byte	W18
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N16   , As1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N16   , Fn2 
	.byte	W06
@ 006   ----------------------------------------
	.byte	W12
	.byte		N12   , As1 
	.byte	W12
	.byte		N16   , Dn2 
	.byte	W18
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N16   , Cn2 
	.byte	W12
@ 007   ----------------------------------------
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N17   , Ds2 
	.byte	W18
	.byte		N14   , Gn2 
	.byte	W18
	.byte		N10   
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N16   , Gn2 
	.byte	W18
@ 008   ----------------------------------------
	.byte		N12   , As1 
	.byte	W12
	.byte		N16   , Dn2 
	.byte	W18
	.byte		N10   , Gn2 
	.byte	W12
	.byte		N16   , Gs1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N18   , Gs1 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W06
	.byte		N16   , Cn2 
	.byte	W18
	.byte		N11   , Ds2 
	.byte	W12
	.byte		N16   , As1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N14   , Fn2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
@ 010   ----------------------------------------
	.byte		N15   , Dn2 
	.byte	W18
	.byte		N08   , Fn2 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N17   , Gn2 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N18   , Dn2 
	.byte	W18
	.byte		N15   , Ds2 
	.byte	W06
@ 011   ----------------------------------------
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N17   , Dn2 
	.byte	W18
	.byte		N15   , Gn2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		N15   , Dn2 
	.byte	W12
@ 012   ----------------------------------------
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N15   , Gs1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N15   , Ds2 
	.byte	W18
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N15   , Cn2 
	.byte	W18
@ 013   ----------------------------------------
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N16   , As1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N18   , As1 
	.byte	W18
	.byte		N15   , Dn2 
	.byte	W18
	.byte		N11   , Fn2 
	.byte	W06
@ 014   ----------------------------------------
	.byte	W06
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N16   , Ds2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N15   
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N15   , Gn2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		N15   , Dn2 
	.byte	W18
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N15   , Gs1 
	.byte	W06
@ 016   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N18   , Gs1 
	.byte	W18
	.byte		N14   , Cn2 
	.byte	W18
	.byte		N11   , Ds2 
	.byte	W12
	.byte		N16   , As1 
	.byte	W12
@ 017   ----------------------------------------
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N16   , As1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N16   , Fn2 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N17   , Gn2 
	.byte	W06
@ 018   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N17   , Dn2 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N15   , Gn2 
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W06
@ 019   ----------------------------------------
	.byte	W06
	.byte		N16   , Gn2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N18   , Gn2 
	.byte	W18
	.byte		N15   , Gs1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N16   , Ds2 
	.byte	W18
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N11   , Ds2 
	.byte	W12
	.byte		N16   , As1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N15   , Fn2 
	.byte	W06
@ 021   ----------------------------------------
	.byte	W12
	.byte		N12   , As1 
	.byte	W12
	.byte		N16   , Dn2 
	.byte	W18
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N16   , Cn2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N15   , Cn2 
	.byte	W12
@ 022   ----------------------------------------
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N15   , Ds2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N16   
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N16   , Gn2 
	.byte	W18
@ 023   ----------------------------------------
	.byte		N12   , As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N14   , Gn2 
	.byte	W18
	.byte		N16   , Gs1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N18   , Gs1 
	.byte	W12
@ 024   ----------------------------------------
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N16   , Ds2 
	.byte	W18
	.byte		        As1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N15   , Fn2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
@ 025   ----------------------------------------
	.byte		N15   , Dn2 
	.byte	W18
	.byte		N09   , Fn2 
	.byte	W12
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N18   , Dn2 
	.byte	W18
	.byte		N16   , Ds2 
	.byte	W06
@ 026   ----------------------------------------
	.byte	W12
	.byte		N10   , Gn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , Dn2 
	.byte	W18
	.byte		N15   , Gn2 
	.byte	W18
	.byte		N11   , As1 
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
@ 027   ----------------------------------------
	.byte		N15   , Gn2 
	.byte	W18
	.byte		N16   , Gs1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N18   , Gs1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N15   , Ds2 
	.byte	W06
@ 028   ----------------------------------------
	.byte	W12
	.byte		N12   , As1 
	.byte	W12
	.byte		N18   , Dn2 
	.byte	W18
	.byte		N15   , Fn2 
	.byte	W18
	.byte		N11   , As1 
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N16   , Fn2 
	.byte	W12
@ 029   ----------------------------------------
	.byte	W06
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N16   , Ds2 
	.byte	W18
	.byte		N10   , Gn2 
	.byte	W12
@ 030   ----------------------------------------
	.byte		N16   
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N16   , Gn2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		N14   , Dn2 
	.byte	W18
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N17   , Gs1 
	.byte	W06
@ 031   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N15   , Ds2 
	.byte	W18
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N16   , Cn2 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N16   , As1 
	.byte	W12
@ 032   ----------------------------------------
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N16   , Fn2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		N15   , Dn2 
	.byte	W18
	.byte		N10   , Fn2 
	.byte	W12
	.byte		N16   , Cn2 
	.byte	W18
@ 033   ----------------------------------------
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N16   , Ds2 
	.byte	W18
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N16   , Gn1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W06
@ 034   ----------------------------------------
	.byte	W06
	.byte		N16   , Gn2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		N15   , Dn2 
	.byte	W18
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N17   , Gs1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
@ 035   ----------------------------------------
	.byte		N15   , Ds2 
	.byte	W18
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N10   , Ds2 
	.byte	W12
	.byte		N16   , As1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N15   , Fn2 
	.byte	W06
@ 036   ----------------------------------------
	.byte	W12
	.byte		N11   , As1 
	.byte	W12
	.byte		N15   , Dn2 
	.byte	W18
	.byte		N09   , Fn2 
	.byte	W12
	.byte		N16   , Cn2 
	.byte	W18
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
@ 037   ----------------------------------------
	.byte		N18   , Dn2 
	.byte	W18
	.byte		N15   , Ds2 
	.byte	W18
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N16   , Gn1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N17   , Gn2 
	.byte	W18
@ 038   ----------------------------------------
	.byte		N12   , As1 
	.byte	W12
	.byte		N13   , Dn2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N16   , Gs1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N16   , Ds2 
	.byte	W18
	.byte		N12   , Gs1 
	.byte	W06
@ 039   ----------------------------------------
	.byte	W06
	.byte		N14   , Cn2 
	.byte	W18
	.byte		N10   , Ds2 
	.byte	W12
	.byte		N15   , As1 
	.byte	W18
	.byte		N11   , Dn2 
	.byte	W12
	.byte		N14   , Fn2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
@ 040   ----------------------------------------
	.byte		        Dn2 
	.byte	W12
	.byte		N16   , Fn2 
	.byte	W18
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N16   , Ds2 
	.byte	W06
@ 041   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N15   , Gn1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N15   , Gn2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 042   ----------------------------------------
	.byte		N16   , Gn2 
	.byte	W18
	.byte		N15   , Gs1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N16   , Ds2 
	.byte	W18
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N15   , Ds2 
	.byte	W06
@ 043   ----------------------------------------
	.byte	W12
	.byte		N12   , As1 
	.byte	W12
	.byte		N18   , Dn2 
	.byte	W18
	.byte		N15   , Fn2 
	.byte	W18
	.byte		N11   , As1 
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N13   , Fn2 
	.byte	W12
@ 044   ----------------------------------------
mus_umineko_wingless_1_044:
	.byte	W06
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		N16   , Gn2 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N17   , Dn2 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N15   , Gn2 
	.byte	W18
	.byte	PEND
@ 045   ----------------------------------------
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N16   , Dn2 
	.byte	W18
	.byte		N15   , Gn2 
	.byte	W18
	.byte		N11   , As1 
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N16   , As1 
	.byte	W18
	.byte		        Gs1 
	.byte	W06
@ 046   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N17   , Gs1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N17   , Ds2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
@ 047   ----------------------------------------
	.byte		N18   , Dn2 
	.byte	W18
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N17   , As1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N17   , Fn2 
	.byte	W18
	.byte		N16   , Cn2 
	.byte	W18
@ 048   ----------------------------------------
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N16   , Cn2 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N16   , Ds2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N16   
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W06
@ 049   ----------------------------------------
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		N16   , Dn2 
	.byte	W18
	.byte		N13   , Gn2 
	.byte	W18
	.byte		N11   , Gs1 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
@ 050   ----------------------------------------
	.byte		N16   , Ds2 
	.byte	W18
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N11   , Ds2 
	.byte	W12
	.byte		N16   , As1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N16   , Fn2 
	.byte	W06
@ 051   ----------------------------------------
	.byte	W12
	.byte		N12   , As1 
	.byte	W12
	.byte		N16   , Dn2 
	.byte	W18
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N16   , Cn2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 052   ----------------------------------------
	.byte		N18   , Dn2 
	.byte	W18
	.byte		N16   , Ds2 
	.byte	W18
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N17   , Gn2 
	.byte	W18
@ 053   ----------------------------------------
	.byte		N12   , As1 
	.byte	W12
	.byte		N15   , Dn2 
	.byte	W18
	.byte		N06   , Gn2 
	.byte	W12
	.byte		N16   , Gs1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N17   , Gs1 
	.byte	W12
@ 054   ----------------------------------------
	.byte	W06
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N11   , Ds2 
	.byte	W12
	.byte		N15   , As1 
	.byte	W18
	.byte		N11   , Dn2 
	.byte	W12
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N17   , As1 
	.byte	W18
@ 055   ----------------------------------------
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N13   , Fn2 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N17   , Gn2 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N17   , Dn2 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W06
@ 056   ----------------------------------------
	.byte	W06
	.byte		N16   , Gn2 
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N17   , Dn2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N18   , As1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
@ 057   ----------------------------------------
	.byte		N18   , Gn2 
	.byte	W18
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N18   , Cn2 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N18   , Gs1 
	.byte	W18
	.byte		N14   , Cn2 
	.byte	W18
@ 058   ----------------------------------------
	.byte		N11   , Ds2 
	.byte	W12
	.byte		N15   , As1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N17   , As1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N16   , Fn2 
	.byte	W12
@ 059   ----------------------------------------
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N18   , Gn2 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N18   , Dn2 
	.byte	W18
	.byte		N16   , Ds2 
	.byte	W18
	.byte		N11   , Gn2 
	.byte	W12
@ 060   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N17   , Dn2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N18   , As1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N16   , Gn2 
	.byte	W18
	.byte		N15   , Gs1 
	.byte	W06
@ 061   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N17   , Gs1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N16   , Ds2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
@ 062   ----------------------------------------
	.byte		N17   , Dn2 
	.byte	W18
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N16   , As1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N15   , Fn2 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N17   , Gn2 
	.byte	W06
@ 063   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N16   , Dn2 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N15   , Gn2 
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   , Dn2 
	.byte	W12
@ 064   ----------------------------------------
	.byte	W06
	.byte		N15   , Gn2 
	.byte	W18
	.byte		N11   , As1 
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N17   , Gn2 
	.byte	W18
	.byte		N15   , Gs1 
	.byte	W18
	.byte		N11   , Cn2 
	.byte	W12
@ 065   ----------------------------------------
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N17   , Gs1 
	.byte	W18
	.byte		N14   , Cn2 
	.byte	W18
	.byte		N10   , Ds2 
	.byte	W12
	.byte		N15   , As1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N15   , Fn2 
	.byte	W06
@ 066   ----------------------------------------
	.byte	W12
	.byte		N12   , As1 
	.byte	W12
	.byte		N16   , Dn2 
	.byte	W18
	.byte		N11   , Fn2 
	.byte	W12
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N15   , Cn2 
	.byte	W12
@ 067   ----------------------------------------
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N15   , Ds2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N15   
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N15   , Gn2 
	.byte	W18
@ 068   ----------------------------------------
	.byte		N11   , As1 
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N13   , Gn2 
	.byte	W18
	.byte		N15   , Gs1 
	.byte	W18
	.byte		N11   , Cn2 
	.byte	W12
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N17   , Gs1 
	.byte	W12
@ 069   ----------------------------------------
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N16   , Ds2 
	.byte	W18
	.byte		N15   , As1 
	.byte	W18
	.byte		N11   , Dn2 
	.byte	W12
	.byte		N15   , Fn2 
	.byte	W18
	.byte		N11   , As1 
	.byte	W12
@ 070   ----------------------------------------
	.byte		N15   , Dn2 
	.byte	W18
	.byte		N09   , Fn2 
	.byte	W12
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N18   , Dn2 
	.byte	W18
	.byte		N15   , Ds2 
	.byte	W06
@ 071   ----------------------------------------
	.byte	W12
	.byte		N10   , Gn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N17   , Dn2 
	.byte	W18
	.byte		N15   , Gn2 
	.byte	W18
	.byte		N11   , As1 
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
@ 072   ----------------------------------------
	.byte		N15   , Gn2 
	.byte	W18
	.byte		        Gs1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N17   , Gs1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N14   , Ds2 
	.byte	W06
@ 073   ----------------------------------------
	.byte	W12
	.byte		N12   , As1 
	.byte	W12
	.byte		N17   , Dn2 
	.byte	W18
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N16   , As1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N15   , Fn2 
	.byte	W12
@ 074   ----------------------------------------
	.byte	W06
	.byte		N14   , Cn2 
	.byte	W18
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N15   , Ds2 
	.byte	W18
	.byte		N10   , Gn2 
	.byte	W12
@ 075   ----------------------------------------
	.byte		N15   
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N16   , Gn2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N16   , Gn2 
	.byte	W18
	.byte		        Gs1 
	.byte	W06
@ 076   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N18   , Gs1 
	.byte	W18
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N15   , As1 
	.byte	W12
@ 077   ----------------------------------------
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N15   , Fn2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N15   , Fn2 
	.byte	W18
	.byte		        Cn2 
	.byte	W18
@ 078   ----------------------------------------
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N18   , Dn2 
	.byte	W18
	.byte		N16   , Ds2 
	.byte	W18
	.byte		N10   , Gn2 
	.byte	W12
	.byte		N16   , Gn1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W06
@ 079   ----------------------------------------
	.byte	W06
	.byte		N15   , Gn2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		N15   , Dn2 
	.byte	W18
	.byte		N10   , Gn2 
	.byte	W12
	.byte		N16   , Gs1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
@ 080   ----------------------------------------
	.byte		        Ds2 
	.byte	W12
	.byte		N17   , Gs1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N16   , Ds2 
	.byte	W18
	.byte		        As1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N14   , Fn2 
	.byte	W06
@ 081   ----------------------------------------
	.byte	W12
	.byte		N11   , As1 
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N14   , Fn2 
	.byte	W18
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
@ 082   ----------------------------------------
	.byte		N18   , Dn2 
	.byte	W18
	.byte		N14   , Ds2 
	.byte	W18
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N18   , Dn2 
	.byte	W18
	.byte		N16   , Gn2 
	.byte	W18
@ 083   ----------------------------------------
	.byte		N12   , As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N17   , Gn2 
	.byte	W18
	.byte		N15   , Gs1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N18   , Gs1 
	.byte	W12
@ 084   ----------------------------------------
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N16   , Ds2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		N17   , Dn2 
	.byte	W18
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N17   , As1 
	.byte	W18
@ 085   ----------------------------------------
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N16   , Fn2 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N17   , Gn2 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N18   , Dn2 
	.byte	W18
	.byte		N16   , Ds2 
	.byte	W06
@ 086   ----------------------------------------
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N15   , Gn1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N14   , Gn2 
	.byte	W18
	.byte		N11   , As1 
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
@ 087   ----------------------------------------
	.byte		N16   , Gn2 
	.byte	W18
	.byte		N15   , Gs1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N15   , Ds2 
	.byte	W18
	.byte		N11   , Gs1 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N15   , Ds2 
	.byte	W06
@ 088   ----------------------------------------
	.byte	W12
	.byte		N12   , As1 
	.byte	W12
	.byte		N17   , Dn2 
	.byte	W18
	.byte		N14   , Fn2 
	.byte	W18
	.byte		N11   , As1 
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N13   , Fn2 
	.byte	W12
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_wingless_1_044
@ 090   ----------------------------------------
	.byte		N12   , Gn1 , v104
	.byte	W12
	.byte		N16   , Dn2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N17   , As1 
	.byte	W18
	.byte		N11   , Dn2 
	.byte	W12
	.byte		N16   , As1 
	.byte	W22
	.byte		VOL   , 127*mus_umineko_wingless_mvl/mxv
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_umineko_wingless_2:
	.byte	KEYSH , mus_umineko_wingless_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 96*mus_umineko_wingless_mvl/mxv
	.byte		PAN   , c_v-12
	.byte	W40
	.byte	W01
	.byte		N14   , Gs3 , v060
	.byte	W14
	.byte		N15   , Cn4 
	.byte	W16
	.byte		N13   , Ds4 
	.byte	W24
	.byte	W01
@ 001   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N16   , As3 
	.byte	W17
	.byte		N14   , Dn4 
	.byte	W14
	.byte		        Fn4 
	.byte	W30
	.byte	W01
@ 002   ----------------------------------------
	.byte	W13
	.byte		        Cn4 
	.byte	W14
	.byte		N15   , Dn4 
	.byte	W16
	.byte		        Ds4 
	.byte	W15
	.byte		N14   , Gn4 
	.byte	W36
	.byte	W02
@ 003   ----------------------------------------
	.byte	W52
	.byte		N14   
	.byte	W44
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W40
	.byte		        Fn4 
	.byte	W44
	.byte	W01
	.byte		N15   , Cn4 
	.byte	W11
@ 006   ----------------------------------------
	.byte	W04
	.byte		        Dn4 
	.byte	W15
	.byte		N16   , Ds4 
	.byte	W16
	.byte		N15   , Gn4 
	.byte	W60
	.byte	W01
@ 007   ----------------------------------------
	.byte	W28
	.byte		N11   
	.byte	W15
	.byte		N30   , Dn4 
	.byte	W42
	.byte	W01
	.byte		N16   , Gs3 
	.byte	W10
@ 008   ----------------------------------------
	.byte	W06
	.byte		N15   , Cn4 
	.byte	W16
	.byte		N13   , Ds4 
	.byte	W56
	.byte	W03
	.byte		N15   , As3 
	.byte	W15
@ 009   ----------------------------------------
	.byte		        Dn4 
	.byte	W15
	.byte		N10   , Fn4 
	.byte	W44
	.byte	W01
	.byte		N15   , Cn4 
	.byte	W15
	.byte		        Dn4 
	.byte	W15
	.byte		        Ds4 
	.byte	W06
@ 010   ----------------------------------------
	.byte	W09
	.byte		N14   , Gn4 
	.byte	W14
	.byte		N30   , As4 
	.byte	W72
	.byte	W01
@ 011   ----------------------------------------
	.byte	W03
	.byte		N16   , Gn4 
	.byte	W92
	.byte	W01
@ 012   ----------------------------------------
	.byte	W88
	.byte		N13   , Fn4 
	.byte	W08
@ 013   ----------------------------------------
	.byte	W36
	.byte		N15   , Cn4 
	.byte	W15
	.byte		        Dn4 
	.byte	W15
	.byte		N16   , Ds4 
	.byte	W16
	.byte		N14   , Gn4 
	.byte	W14
@ 014   ----------------------------------------
	.byte	W60
	.byte		N15   , Dn4 
	.byte	W16
	.byte		N13   , Gn4 
	.byte	W20
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N28   , Dn5 , v060, gtp1
	.byte	W32
	.byte		        Dn5 , v060, gtp1
	.byte	W18
@ 017   ----------------------------------------
	.byte	W12
	.byte		N56   , Ds5 , v060, gtp1
	.byte	W60
	.byte		N30   , As4 
	.byte	W24
@ 018   ----------------------------------------
	.byte	W48
	.byte	W03
	.byte		N15   , Gn4 
	.byte	W44
	.byte	W01
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		        Dn4 
	.byte	W30
	.byte	W01
	.byte		N14   , Cn3 
	.byte	W14
	.byte		N15   , Gn3 
	.byte	W24
	.byte	W02
@ 021   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		N14   , Gn2 
	.byte	W15
	.byte		N15   , Dn3 
	.byte	W15
	.byte		        Gn3 
	.byte	W15
	.byte		N14   , As3 
	.byte	W02
@ 022   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W30
	.byte		N16   , Gs2 
	.byte	W16
	.byte		N13   , Cn3 
	.byte	W14
	.byte		N14   , Ds3 
	.byte	W15
	.byte		N15   , Gs3 
	.byte	W09
@ 023   ----------------------------------------
	.byte	W36
	.byte		        As2 
	.byte	W16
	.byte		N13   , Dn3 
	.byte	W14
	.byte		N15   , Fn3 
	.byte	W16
	.byte		N14   , As3 
	.byte	W14
@ 024   ----------------------------------------
	.byte		N15   , Dn4 
	.byte	W16
	.byte		N11   , Fn4 
	.byte	W14
	.byte		N15   , Cn3 
	.byte	W15
	.byte		        Gn3 
	.byte	W48
	.byte	W03
@ 025   ----------------------------------------
	.byte	W24
	.byte		N28   , As3 , v060, gtp1
	.byte	W30
	.byte		N15   , Gn3 
	.byte	W15
	.byte		N14   , As3 
	.byte	W15
	.byte		N15   , Dn4 
	.byte	W12
@ 026   ----------------------------------------
	.byte	W03
	.byte		N12   , Gn4 
	.byte	W15
	.byte		N28   , Gn4 , v060, gtp1
	.byte	W78
@ 027   ----------------------------------------
	.byte	W12
	.byte		        As4 , v060, gtp1
	.byte	W56
	.byte	W03
	.byte		        Dn5 
	.byte	W24
	.byte	W01
@ 028   ----------------------------------------
	.byte	W06
	.byte		        Dn4 , v060, gtp1
	.byte	W30
	.byte		N15   , Cn4 
	.byte	W16
	.byte		N14   , Dn4 
	.byte	W14
	.byte		N15   , Ds4 
	.byte	W16
	.byte		N12   , Gn4 
	.byte	W14
@ 029   ----------------------------------------
	.byte	W30
	.byte	W01
	.byte		N28   , As4 , v060, gtp1
	.byte	W28
	.byte	W01
	.byte		N13   , Gn4 
	.byte	W15
	.byte		N13   
	.byte	W15
	.byte		N17   , Gs2 
	.byte	W06
@ 030   ----------------------------------------
	.byte	W11
	.byte		N13   , Cn3 
	.byte	W14
	.byte		N14   , Ds3 
	.byte	W14
	.byte		N15   , Gs3 
	.byte	W44
	.byte	W02
	.byte		N14   , As2 
	.byte	W11
@ 031   ----------------------------------------
	.byte	W04
	.byte		        Dn3 
	.byte	W15
	.byte		N15   , Fn3 
	.byte	W15
	.byte		N14   , As3 
	.byte	W14
	.byte		N15   , Dn4 
	.byte	W15
	.byte		N12   , Fn4 
	.byte	W16
	.byte		N15   , Cn3 
	.byte	W15
	.byte		N14   , Gn3 
	.byte	W02
@ 032   ----------------------------------------
	.byte	W72
	.byte	W01
	.byte		N15   , Gn2 
	.byte	W15
	.byte		N14   , Dn3 
	.byte	W08
@ 033   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		N15   , Gs2 
	.byte	W16
	.byte		N14   , Cn3 
	.byte	W13
@ 034   ----------------------------------------
	.byte	W01
	.byte		N13   , Ds3 
	.byte	W14
	.byte		N14   , Gs3 
	.byte	W15
	.byte		N15   , Cn4 
	.byte	W15
	.byte		N13   , Ds4 
	.byte	W16
	.byte		N16   , As2 
	.byte	W16
	.byte		N14   , Dn3 
	.byte	W14
	.byte		        Fn3 
	.byte	W05
@ 035   ----------------------------------------
	.byte	W09
	.byte		        As3 
	.byte	W15
	.byte		N15   , Dn4 
	.byte	W15
	.byte		N11   , Fn4 
	.byte	W15
	.byte		N15   , Cn3 
	.byte	W16
	.byte		N13   , Gn3 
	.byte	W24
	.byte	W02
@ 036   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		N15   , Gn1 
	.byte	W44
	.byte	W03
@ 037   ----------------------------------------
	.byte	W42
	.byte		N16   , Gs1 
	.byte	W54
@ 038   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte		N14   , As1 
	.byte	W56
	.byte	W03
@ 039   ----------------------------------------
mus_umineko_wingless_2_039:
	.byte	W28
	.byte	W01
	.byte		N15   , Cn2 , v060
	.byte	W66
	.byte	W01
	.byte	PEND
@ 040   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		N13   , Gn1 
	.byte	W68
	.byte	W02
@ 041   ----------------------------------------
	.byte	W18
	.byte		N15   , Gs1 
	.byte	W78
@ 042   ----------------------------------------
	.byte	W11
	.byte		N16   , As1 
	.byte	W84
	.byte	W01
@ 043   ----------------------------------------
	.byte	W05
	.byte		N15   , Cn2 
	.byte	W90
	.byte	W01
@ 044   ----------------------------------------
	.byte		N14   , Gn1 
	.byte	W90
	.byte		N16   , Gs2 
	.byte	W06
@ 045   ----------------------------------------
	.byte	W10
	.byte		N14   , Cn3 
	.byte	W15
	.byte		        Ds3 
	.byte	W56
	.byte	W03
	.byte		N15   , As2 
	.byte	W12
@ 046   ----------------------------------------
	.byte	W03
	.byte		        Dn3 
	.byte	W15
	.byte		N14   , Fn3 
	.byte	W60
	.byte	W01
	.byte		N15   , Cn3 
	.byte	W15
	.byte		N14   , Gn3 
	.byte	W02
@ 047   ----------------------------------------
	.byte	W72
	.byte	W02
	.byte		        Gn2 
	.byte	W14
	.byte		        Dn3 
	.byte	W08
@ 048   ----------------------------------------
	.byte	W07
	.byte		N16   , Gn3 
	.byte	W16
	.byte		N13   , As3 
	.byte	W44
	.byte	W02
	.byte		N14   , Gs2 
	.byte	W14
	.byte		N15   , Cn3 
	.byte	W13
@ 049   ----------------------------------------
	.byte	W02
	.byte		N13   , Ds3 
	.byte	W14
	.byte		N15   , Gs3 
	.byte	W44
	.byte	W01
	.byte		        As2 
	.byte	W15
	.byte		        Dn3 
	.byte	W15
	.byte		        Fn3 
	.byte	W05
@ 050   ----------------------------------------
	.byte	W56
	.byte		N14   , Cn3 
	.byte	W40
@ 051   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		N16   , Gn2 
	.byte	W44
	.byte	W03
@ 052   ----------------------------------------
	.byte	W42
	.byte	W01
	.byte		N15   , Gs2 
	.byte	W15
	.byte		N14   , Cn3 
	.byte	W15
	.byte		N13   , Ds3 
	.byte	W23
@ 053   ----------------------------------------
	.byte	W36
	.byte		N15   , As2 
	.byte	W15
	.byte		N14   , Dn3 
	.byte	W14
	.byte		        Fn3 
	.byte	W30
	.byte	W01
@ 054   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		N15   , Cn3 
	.byte	W15
	.byte		        Gn3 
	.byte	W52
@ 055   ----------------------------------------
	.byte	W23
	.byte		N14   , Gn2 
	.byte	W14
	.byte		N15   , Dn3 
	.byte	W16
	.byte		        Gn3 
	.byte	W15
	.byte		N16   , As3 
	.byte	W16
	.byte		N14   , Dn4 
	.byte	W12
@ 056   ----------------------------------------
	.byte	W19
	.byte		N13   , Gs2 
	.byte	W13
	.byte		N16   , Cn3 
	.byte	W16
	.byte		N14   , Ds3 
	.byte	W15
	.byte		N15   , Gs3 
	.byte	W15
	.byte		N14   , Cn4 
	.byte	W15
	.byte		        Ds4 
	.byte	W03
@ 057   ----------------------------------------
	.byte	W12
	.byte		N15   , As2 
	.byte	W15
	.byte		        Dn3 
	.byte	W15
	.byte		N13   , Fn3 
	.byte	W14
	.byte		N15   , As3 
	.byte	W15
	.byte		        Dn4 
	.byte	W24
	.byte	W01
@ 058   ----------------------------------------
	.byte	W05
	.byte		        Cn3 
	.byte	W15
	.byte		        Gn3 
	.byte	W76
@ 059   ----------------------------------------
	.byte		N14   , Gn2 
	.byte	W14
	.byte		N15   , Dn3 
	.byte	W15
	.byte		        Gn3 
	.byte	W15
	.byte		N32   , As3 , v060, gtp1
	.byte	W44
	.byte		N16   , Gs2 
	.byte	W08
@ 060   ----------------------------------------
	.byte	W09
	.byte		N15   , Cn3 
	.byte	W15
	.byte		N14   , Ds3 
	.byte	W14
	.byte		        Gs3 
	.byte	W15
	.byte		        Cn4 
	.byte	W15
	.byte		        Ds4 
	.byte	W15
	.byte		N15   , As2 
	.byte	W13
@ 061   ----------------------------------------
	.byte	W03
	.byte		N14   , Dn3 
	.byte	W14
	.byte		        Fn3 
	.byte	W14
	.byte		N15   , As3 
	.byte	W15
	.byte		N16   , Dn4 
	.byte	W30
	.byte	W01
	.byte		N14   , Cn3 
	.byte	W15
	.byte		N15   , Gn3 
	.byte	W04
@ 062   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N16   , Gn2 
	.byte	W16
	.byte		N15   , Dn3 
	.byte	W09
@ 063   ----------------------------------------
	.byte	W06
	.byte		        Gn3 
	.byte	W15
	.byte		N14   , As3 
	.byte	W14
	.byte		N15   , Dn4 
	.byte	W30
	.byte	W01
	.byte		N14   , Gs2 
	.byte	W15
	.byte		        Cn3 
	.byte	W15
@ 064   ----------------------------------------
	.byte		N15   , Ds3 
	.byte	W15
	.byte		N14   , Gs3 
	.byte	W15
	.byte		        Cn4 
	.byte	W15
	.byte		N13   , Ds4 
	.byte	W15
	.byte		N15   , As2 
	.byte	W15
	.byte		N14   , Dn3 
	.byte	W15
	.byte		N15   , Fn3 
	.byte	W06
@ 065   ----------------------------------------
	.byte	W09
	.byte		        As3 
	.byte	W15
	.byte		        Dn4 
	.byte	W30
	.byte	W01
	.byte		N14   , Cn3 
	.byte	W14
	.byte		N15   , Gn3 
	.byte	W24
	.byte	W03
@ 066   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		N14   , Gn2 
	.byte	W14
	.byte		N15   , Dn3 
	.byte	W16
	.byte		N14   , Gn3 
	.byte	W14
	.byte		        As3 
	.byte	W03
@ 067   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W28
	.byte	W01
	.byte		N16   , Gs2 
	.byte	W16
	.byte		N14   , Cn3 
	.byte	W14
	.byte		N15   , Ds3 
	.byte	W15
	.byte		        Gs3 
	.byte	W10
@ 068   ----------------------------------------
	.byte	W36
	.byte		        As2 
	.byte	W15
	.byte		N14   , Dn3 
	.byte	W14
	.byte		N15   , Fn3 
	.byte	W16
	.byte		N14   , As3 
	.byte	W14
	.byte		N15   , Dn4 
	.byte	W01
@ 069   ----------------------------------------
	.byte	W15
	.byte		N11   , Fn4 
	.byte	W15
	.byte		N15   , Cn3 
	.byte	W15
	.byte		        Gn3 
	.byte	W48
	.byte	W03
@ 070   ----------------------------------------
	.byte	W24
	.byte		N14   , Gn2 
	.byte	W14
	.byte		        Dn3 
	.byte	W56
	.byte	W02
@ 071   ----------------------------------------
	.byte	W17
	.byte		N15   , Gs2 
	.byte	W16
	.byte		N14   , Cn3 
	.byte	W15
	.byte		        Ds3 
	.byte	W14
	.byte		N15   , Gs3 
	.byte	W32
	.byte	W02
@ 072   ----------------------------------------
	.byte	W11
	.byte		        As2 
	.byte	W15
	.byte		        Dn3 
	.byte	W15
	.byte		        Fn3 
	.byte	W54
	.byte	W01
@ 073   ----------------------------------------
	.byte	W06
	.byte		N14   , Cn3 
	.byte	W15
	.byte		        Gn3 
	.byte	W72
	.byte	W03
@ 074   ----------------------------------------
	.byte	W01
	.byte		        Gn2 
	.byte	W14
	.byte		N15   , Dn3 
	.byte	W16
	.byte		        Gn3 
	.byte	W15
	.byte		N14   , As3 
	.byte	W14
	.byte		N13   , Dn4 
	.byte	W28
	.byte	W01
	.byte		N17   , Gs1 
	.byte	W07
@ 075   ----------------------------------------
	.byte	W84
	.byte	W01
	.byte		N14   , As1 
	.byte	W11
@ 076   ----------------------------------------
	.byte	W78
	.byte		N15   , Cn2 
	.byte	W18
@ 077   ----------------------------------------
	.byte	W72
	.byte		        Gn1 
	.byte	W24
@ 078   ----------------------------------------
	.byte	W66
	.byte		        Gs1 
	.byte	W30
@ 079   ----------------------------------------
	.byte	W60
	.byte		N16   , As1 
	.byte	W36
@ 080   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		        Cn2 
	.byte	W42
	.byte	W01
@ 081   ----------------------------------------
	.byte	W48
	.byte		N15   , Gn1 
	.byte	W48
@ 082   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		        Gs1 
	.byte	W54
	.byte	W01
@ 083   ----------------------------------------
	.byte	W36
	.byte		N14   , As1 
	.byte	W60
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_wingless_2_039
@ 085   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		N13   , Gn1 , v060
	.byte	W68
	.byte	W03
@ 086   ----------------------------------------
	.byte	W17
	.byte		N15   , Gs1 
	.byte	W78
	.byte	W01
@ 087   ----------------------------------------
	.byte	W10
	.byte		        As1 
	.byte	W84
	.byte	W02
@ 088   ----------------------------------------
	.byte	W04
	.byte		        Cn2 
	.byte	W90
	.byte	W01
	.byte		N14   , Gn1 
	.byte	W01
@ 089   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		VOL   , 96*mus_umineko_wingless_mvl/mxv
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_umineko_wingless_3:
	.byte	KEYSH , mus_umineko_wingless_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 96*mus_umineko_wingless_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N11   , Gs2 , v064
	.byte	W11
	.byte		N15   , Cn3 
	.byte	W16
	.byte		        Ds3 
	.byte	W56
	.byte	W03
	.byte		N14   , As2 
	.byte	W10
@ 001   ----------------------------------------
	.byte	W05
	.byte		N15   , Dn3 
	.byte	W15
	.byte		N14   , Fn3 
	.byte	W60
	.byte		        Cn3 
	.byte	W14
	.byte		N15   , Gn3 
	.byte	W02
@ 002   ----------------------------------------
	.byte	W72
	.byte	W01
	.byte		N14   , Gn2 
	.byte	W14
	.byte		N15   , Dn3 
	.byte	W09
@ 003   ----------------------------------------
	.byte	W06
	.byte		        Gn3 
	.byte	W15
	.byte		        As3 
	.byte	W16
	.byte		        Dn4 
	.byte	W30
	.byte	W01
	.byte		N14   , Gs2 
	.byte	W14
	.byte		N15   , Cn3 
	.byte	W14
@ 004   ----------------------------------------
	.byte	W02
	.byte		N13   , Ds3 
	.byte	W13
	.byte		N15   , Gs3 
	.byte	W16
	.byte		N14   , Cn4 
	.byte	W14
	.byte		N16   , Ds4 
	.byte	W17
	.byte		N14   , As2 
	.byte	W14
	.byte		        Dn3 
	.byte	W15
	.byte		N15   , Fn3 
	.byte	W05
@ 005   ----------------------------------------
	.byte	W10
	.byte		        As3 
	.byte	W15
	.byte		        Dn4 
	.byte	W30
	.byte	W01
	.byte		N13   , Cn3 
	.byte	W14
	.byte		N15   , Gn3 
	.byte	W24
	.byte	W02
@ 006   ----------------------------------------
	.byte	W52
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N15   , Dn3 
	.byte	W15
	.byte		N14   , Gn3 
	.byte	W15
	.byte		        As3 
	.byte	W02
@ 007   ----------------------------------------
	.byte	W12
	.byte		N16   , Dn4 
	.byte	W30
	.byte	W01
	.byte		N15   , Gs2 
	.byte	W16
	.byte		N14   , Cn3 
	.byte	W14
	.byte		N13   , Ds3 
	.byte	W23
@ 008   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte		N15   , As2 
	.byte	W15
	.byte		N14   , Dn3 
	.byte	W14
	.byte		        Fn3 
	.byte	W30
@ 009   ----------------------------------------
	.byte	W30
	.byte		        Cn3 
	.byte	W14
	.byte		N15   , Gn3 
	.byte	W52
@ 010   ----------------------------------------
	.byte	W24
	.byte		N14   , Gn2 
	.byte	W14
	.byte		N15   , Dn3 
	.byte	W16
	.byte		        Gn3 
	.byte	W15
	.byte		N16   , As3 
	.byte	W16
	.byte		N14   , Dn4 
	.byte	W11
@ 011   ----------------------------------------
	.byte	W19
	.byte		        Gs2 
	.byte	W14
	.byte		N16   , Cn3 
	.byte	W16
	.byte		N14   , Ds3 
	.byte	W15
	.byte		N15   , Gs3 
	.byte	W15
	.byte		N14   , Cn4 
	.byte	W15
	.byte		        Ds4 
	.byte	W02
@ 012   ----------------------------------------
	.byte	W13
	.byte		N15   , As2 
	.byte	W15
	.byte		        Dn3 
	.byte	W15
	.byte		N13   , Fn3 
	.byte	W13
	.byte		N15   , As3 
	.byte	W16
	.byte		        Dn4 
	.byte	W24
@ 013   ----------------------------------------
	.byte	W06
	.byte		        Cn3 
	.byte	W15
	.byte		        Gn3 
	.byte	W72
	.byte	W03
@ 014   ----------------------------------------
	.byte	W01
	.byte		N14   , Gn2 
	.byte	W14
	.byte		        Dn3 
	.byte	W15
	.byte		N15   , Gn3 
	.byte	W15
	.byte		N32   , As3 , v064, gtp1
	.byte	W44
	.byte		N16   , Gs2 
	.byte	W07
@ 015   ----------------------------------------
	.byte	W10
	.byte		N14   , Cn3 
	.byte	W14
	.byte		        Ds3 
	.byte	W15
	.byte		N15   , Gs3 
	.byte	W15
	.byte		N14   , Cn4 
	.byte	W15
	.byte		        Ds4 
	.byte	W15
	.byte		N15   , As2 
	.byte	W12
@ 016   ----------------------------------------
	.byte	W04
	.byte		N14   , Dn3 
	.byte	W14
	.byte		        Fn3 
	.byte	W14
	.byte		        As3 
	.byte	W14
	.byte		N16   , Dn4 
	.byte	W16
	.byte		N13   , Fn4 
	.byte	W16
	.byte		N14   , Cn3 
	.byte	W14
	.byte		N15   , Gn3 
	.byte	W04
@ 017   ----------------------------------------
	.byte	W12
	.byte		        Cn4 
	.byte	W15
	.byte		N14   , Dn4 
	.byte	W14
	.byte		N15   , Ds4 
	.byte	W15
	.byte		N13   , Gn4 
	.byte	W16
	.byte		N15   , Gn2 
	.byte	W15
	.byte		        Dn3 
	.byte	W09
@ 018   ----------------------------------------
	.byte	W06
	.byte		        Gn3 
	.byte	W16
	.byte		N13   , As3 
	.byte	W14
	.byte		N14   , Dn4 
	.byte	W30
	.byte	W01
	.byte		        Gs2 
	.byte	W15
	.byte		        Cn3 
	.byte	W14
@ 019   ----------------------------------------
	.byte		N15   , Ds3 
	.byte	W16
	.byte		N14   , Gs3 
	.byte	W14
	.byte		        Cn4 
	.byte	W16
	.byte		N13   , Ds4 
	.byte	W14
	.byte		N15   , As2 
	.byte	W16
	.byte		N14   , Dn3 
	.byte	W14
	.byte		N15   , Fn3 
	.byte	W06
@ 020   ----------------------------------------
	.byte	W10
	.byte		        As3 
	.byte	W15
	.byte		        Dn4 
	.byte	W15
	.byte		N13   , Fn4 
	.byte	W44
	.byte	W01
	.byte		N14   , Cn4 
	.byte	W11
@ 021   ----------------------------------------
	.byte	W04
	.byte		        Dn4 
	.byte	W14
	.byte		N15   , Ds4 
	.byte	W16
	.byte		N14   , Gn4 
	.byte	W44
	.byte	W01
	.byte		N28   , As4 , v064, gtp1
	.byte	W17
@ 022   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn4 
	.byte	W14
	.byte		N12   
	.byte	W16
	.byte		N30   , Dn4 
	.byte	W54
@ 023   ----------------------------------------
	.byte	W06
	.byte		N14   , Cn4 
	.byte	W14
	.byte		        Ds4 
	.byte	W16
	.byte		N30   , As4 
	.byte	W60
@ 024   ----------------------------------------
	.byte		N24   , Dn5 , v064, gtp3
	.byte	W30
	.byte		N30   , Dn4 
	.byte	W30
	.byte		N14   , Cn4 
	.byte	W14
	.byte		N16   , Dn4 
	.byte	W16
	.byte		N15   , Ds4 
	.byte	W06
@ 025   ----------------------------------------
	.byte	W10
	.byte		N12   , Gn4 
	.byte	W14
	.byte		N28   , As4 , v064, gtp1
	.byte	W30
	.byte		        Ds5 , v064, gtp1
	.byte	W30
	.byte		N24   , Fn5 , v064, gtp3
	.byte	W12
@ 026   ----------------------------------------
	.byte	W18
	.byte		N28   , Gn5 , v064, gtp1
	.byte	W30
	.byte		        Gs5 , v064, gtp1
	.byte	W30
	.byte		N24   , Ds5 , v064, gtp3
	.byte	W18
@ 027   ----------------------------------------
	.byte	W12
	.byte		N28   , As5 , v064, gtp1
	.byte	W30
	.byte		        Gs5 , v064, gtp1
	.byte	W54
@ 028   ----------------------------------------
	.byte	W06
	.byte		        Dn5 , v064, gtp1
	.byte	W30
	.byte		N56   , Ds5 , v064, gtp2
	.byte	W60
@ 029   ----------------------------------------
	.byte	W90
	.byte		N30   , Dn4 , v064, gtp1
	.byte	W06
@ 030   ----------------------------------------
	.byte	W54
	.byte		N15   , Cn4 
	.byte	W16
	.byte		N14   , Ds4 
	.byte	W15
	.byte		N28   , As4 , v064, gtp1
	.byte	W11
@ 031   ----------------------------------------
	.byte	W48
	.byte		N24   , Dn5 , v064, gtp3
	.byte	W30
	.byte	W01
	.byte		N28   , Dn4 , v064, gtp1
	.byte	W17
@ 032   ----------------------------------------
	.byte	W12
	.byte		N15   , Cn4 
	.byte	W15
	.byte		        Dn4 
	.byte	W16
	.byte		        Ds4 
	.byte	W15
	.byte		N12   , Gn4 
	.byte	W15
	.byte		N30   , As3 
	.byte	W23
@ 033   ----------------------------------------
	.byte	W07
	.byte		N15   , Gn3 
	.byte	W15
	.byte		        As3 
	.byte	W15
	.byte		N14   , Dn4 
	.byte	W15
	.byte		N13   , Gn4 
	.byte	W15
	.byte		N28   , Gn4 , v064, gtp1
	.byte	W28
	.byte	W01
@ 034   ----------------------------------------
	.byte	W60
	.byte	W01
	.byte		        As4 , v064, gtp1
	.byte	W32
	.byte	W03
@ 035   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn5 , v064, gtp3
	.byte	W30
	.byte		N28   , Dn4 , v064, gtp1
	.byte	W30
	.byte		N15   , Cn4 
	.byte	W12
@ 036   ----------------------------------------
	.byte	W03
	.byte		        Dn4 
	.byte	W15
	.byte		        Ds4 
	.byte	W15
	.byte		N14   , Gn4 
	.byte	W60
	.byte	W03
@ 037   ----------------------------------------
	.byte	W12
	.byte		N13   , Dn4 
	.byte	W72
	.byte	W03
	.byte		N15   , Gs3 
	.byte	W09
@ 038   ----------------------------------------
	.byte	W06
	.byte		N14   , Cn4 
	.byte	W15
	.byte		N13   , Ds4 
	.byte	W60
	.byte		N15   , As3 
	.byte	W15
@ 039   ----------------------------------------
	.byte		        Dn4 
	.byte	W44
	.byte	W01
	.byte		N14   , Gn3 
	.byte	W48
	.byte	W03
@ 040   ----------------------------------------
	.byte	W40
	.byte		        Dn3 
	.byte	W14
	.byte		N15   , Gn3 
	.byte	W15
	.byte		N14   , As3 
	.byte	W15
	.byte		        Dn4 
	.byte	W12
@ 041   ----------------------------------------
	.byte	W02
	.byte		        Gn4 
	.byte	W16
	.byte		N15   , Gs2 
	.byte	W16
	.byte		        Cn3 
	.byte	W15
	.byte		N14   , Ds3 
	.byte	W15
	.byte		        Gs3 
	.byte	W14
	.byte		        Cn4 
	.byte	W14
	.byte		N13   , Ds4 
	.byte	W04
@ 042   ----------------------------------------
	.byte	W11
	.byte		N16   , As2 
	.byte	W16
	.byte		N15   , Dn3 
	.byte	W15
	.byte		        Fn3 
	.byte	W15
	.byte		N14   , As3 
	.byte	W15
	.byte		        Dn4 
	.byte	W14
	.byte		N11   , Fn4 
	.byte	W10
@ 043   ----------------------------------------
	.byte	W05
	.byte		N15   , Cn3 
	.byte	W15
	.byte		N14   , Gn3 
	.byte	W14
	.byte		N16   , Cn4 
	.byte	W16
	.byte		N15   , Dn4 
	.byte	W15
	.byte		        Ds4 
	.byte	W15
	.byte		N13   , Gn4 
	.byte	W16
@ 044   ----------------------------------------
	.byte		N14   , Gn2 
	.byte	W14
	.byte		        Dn3 
	.byte	W14
	.byte		N16   , Gn3 
	.byte	W17
	.byte		N14   , As3 
	.byte	W15
	.byte		N12   , Dn4 
	.byte	W36
@ 045   ----------------------------------------
	.byte	W36
	.byte	W02
	.byte		N15   , Gs3 
	.byte	W16
	.byte		N13   , Cn4 
	.byte	W14
	.byte		N14   , Ds4 
	.byte	W28
@ 046   ----------------------------------------
	.byte	W32
	.byte		        As3 
	.byte	W15
	.byte		N15   , Dn4 
	.byte	W15
	.byte		        Fn4 
	.byte	W32
	.byte	W02
@ 047   ----------------------------------------
	.byte	W12
	.byte		        Cn4 
	.byte	W16
	.byte		N14   , Dn4 
	.byte	W14
	.byte		N15   , Ds4 
	.byte	W54
@ 048   ----------------------------------------
	.byte	W36
	.byte		N16   , Dn4 
	.byte	W60
@ 049   ----------------------------------------
	.byte	W30
	.byte	W01
	.byte		N14   , Cn4 
	.byte	W15
	.byte		N13   , Ds4 
	.byte	W48
	.byte	W02
@ 050   ----------------------------------------
	.byte	W10
	.byte		N15   , As3 
	.byte	W15
	.byte		N14   , Dn4 
	.byte	W44
	.byte	W01
	.byte		N15   , Gn3 
	.byte	W24
	.byte	W02
@ 051   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		N14   , Dn3 
	.byte	W14
	.byte		N15   , Gn3 
	.byte	W16
	.byte		N14   , As3 
	.byte	W01
@ 052   ----------------------------------------
	.byte	W14
	.byte		N13   , Dn4 
	.byte	W28
	.byte	W01
	.byte		N28   , Dn4 , v064, gtp1
	.byte	W42
	.byte	W01
	.byte		N15   , Gs3 
	.byte	W10
@ 053   ----------------------------------------
	.byte	W05
	.byte		N16   , Cn4 
	.byte	W16
	.byte		N13   , Ds4 
	.byte	W56
	.byte	W03
	.byte		N14   , As3 
	.byte	W15
	.byte		N15   , Dn4 
	.byte	W01
@ 054   ----------------------------------------
	.byte	W14
	.byte		N11   , Fn4 
	.byte	W44
	.byte	W01
	.byte		N15   , Cn4 
	.byte	W15
	.byte		N14   , Dn4 
	.byte	W15
	.byte		N15   , Ds4 
	.byte	W07
@ 055   ----------------------------------------
	.byte	W08
	.byte		N14   , Gn4 
	.byte	W15
	.byte		N30   , As4 
	.byte	W72
	.byte	W01
@ 056   ----------------------------------------
	.byte	W03
	.byte		N15   , Gn4 
	.byte	W92
	.byte	W01
@ 057   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		N13   , Fn4 
	.byte	W09
@ 058   ----------------------------------------
	.byte	W36
	.byte		N14   , Cn4 
	.byte	W15
	.byte		N15   , Dn4 
	.byte	W15
	.byte		N16   , Ds4 
	.byte	W16
	.byte		N13   , Gn4 
	.byte	W14
@ 059   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		N15   , Dn4 
	.byte	W16
	.byte		N13   , Gn4 
	.byte	W21
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W60
	.byte	W02
	.byte		        Fn4 
	.byte	W32
	.byte	W02
@ 062   ----------------------------------------
	.byte	W11
	.byte		N15   , Cn4 
	.byte	W15
	.byte		N14   , Dn4 
	.byte	W14
	.byte		N15   , Ds4 
	.byte	W16
	.byte		N13   , Gn4 
	.byte	W15
	.byte		N30   , As4 , v064, gtp1
	.byte	W24
	.byte	W01
@ 063   ----------------------------------------
	.byte	W48
	.byte	W02
	.byte		N14   , Gn4 
	.byte	W44
	.byte	W02
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		N15   , Dn4 
	.byte	W15
	.byte		N13   , Fn4 
	.byte	W44
	.byte	W01
	.byte		N14   , Cn4 
	.byte	W11
@ 066   ----------------------------------------
	.byte	W03
	.byte		        Dn4 
	.byte	W15
	.byte		N15   , Ds4 
	.byte	W15
	.byte		N14   , Gn4 
	.byte	W44
	.byte	W02
	.byte		N28   , As4 
	.byte	W17
@ 067   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn4 
	.byte	W14
	.byte		N11   
	.byte	W15
	.byte		N30   , Dn4 
	.byte	W54
	.byte	W01
@ 068   ----------------------------------------
	.byte	W05
	.byte		N13   , Cn4 
	.byte	W15
	.byte		N14   , Ds4 
	.byte	W15
	.byte		N28   , As4 , v064, gtp1
	.byte	W60
	.byte	W01
@ 069   ----------------------------------------
	.byte	W30
	.byte		N30   , Dn4 
	.byte	W30
	.byte		N14   , Cn4 
	.byte	W14
	.byte		N16   , Dn4 
	.byte	W16
	.byte		N15   , Ds4 
	.byte	W06
@ 070   ----------------------------------------
	.byte	W09
	.byte		N12   , Gn4 
	.byte	W15
	.byte		N28   , As3 , v064, gtp1
	.byte	W28
	.byte	W01
	.byte		N15   , Gn3 
	.byte	W16
	.byte		N14   , As3 
	.byte	W14
	.byte		N15   , Dn4 
	.byte	W13
@ 071   ----------------------------------------
	.byte	W76
	.byte	W01
	.byte		N14   , Cn4 
	.byte	W15
	.byte		N12   , Ds4 
	.byte	W04
@ 072   ----------------------------------------
	.byte	W56
	.byte		N14   , As3 
	.byte	W15
	.byte		        Dn4 
	.byte	W14
	.byte		        Fn4 
	.byte	W11
@ 073   ----------------------------------------
	.byte	W05
	.byte		N28   , Dn4 , v064, gtp1
	.byte	W30
	.byte		N15   , Cn4 
	.byte	W16
	.byte		N14   , Dn4 
	.byte	W15
	.byte		N15   , Ds4 
	.byte	W15
	.byte		N12   , Gn4 
	.byte	W15
@ 074   ----------------------------------------
	.byte	W30
	.byte	W01
	.byte		N28   , As4 
	.byte	W28
	.byte	W01
	.byte		N13   , Gn4 
	.byte	W15
	.byte		N13   
	.byte	W14
	.byte		N17   , Gs2 
	.byte	W07
@ 075   ----------------------------------------
	.byte	W11
	.byte		N13   , Cn3 
	.byte	W13
	.byte		N14   , Ds3 
	.byte	W15
	.byte		N15   , Gs3 
	.byte	W44
	.byte	W02
	.byte		N14   , As2 
	.byte	W11
@ 076   ----------------------------------------
	.byte	W03
	.byte		N15   , Dn3 
	.byte	W15
	.byte		        Fn3 
	.byte	W15
	.byte		N14   , As3 
	.byte	W15
	.byte		        Dn4 
	.byte	W15
	.byte		N12   , Fn4 
	.byte	W15
	.byte		N15   , Cn3 
	.byte	W15
	.byte		N14   , Gn3 
	.byte	W03
@ 077   ----------------------------------------
	.byte	W72
	.byte		N15   , Gn2 
	.byte	W16
	.byte		N14   , Dn3 
	.byte	W08
@ 078   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		N15   , Gs2 
	.byte	W15
	.byte		N14   , Cn3 
	.byte	W14
@ 079   ----------------------------------------
	.byte	W01
	.byte		N13   , Ds3 
	.byte	W13
	.byte		N15   , Gs3 
	.byte	W15
	.byte		        Cn4 
	.byte	W15
	.byte		N13   , Ds4 
	.byte	W16
	.byte		N16   , As2 
	.byte	W16
	.byte		N14   , Dn3 
	.byte	W14
	.byte		        Fn3 
	.byte	W06
@ 080   ----------------------------------------
	.byte	W09
	.byte		        As3 
	.byte	W14
	.byte		N15   , Dn4 
	.byte	W16
	.byte		N11   , Fn4 
	.byte	W14
	.byte		N16   , Cn3 
	.byte	W16
	.byte		N13   , Gn3 
	.byte	W24
	.byte	W03
@ 081   ----------------------------------------
	.byte	W48
	.byte		N15   , Gn2 
	.byte	W48
@ 082   ----------------------------------------
	.byte	W12
	.byte		N13   , Gn4 
	.byte	W14
	.byte		N15   
	.byte	W68
	.byte	W02
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W14
	.byte		N13   , Fn4 
	.byte	W44
	.byte	W01
	.byte		N15   , Cn4 
	.byte	W16
	.byte		        Dn4 
	.byte	W15
	.byte		        Ds4 
	.byte	W06
@ 085   ----------------------------------------
	.byte	W10
	.byte		N13   , Gn4 
	.byte	W72
	.byte	W01
	.byte		N14   , Ds5 
	.byte	W13
@ 086   ----------------------------------------
	.byte	W17
	.byte		N30   , Dn5 , v064, gtp1
	.byte	W78
	.byte	W01
@ 087   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		N28   , Ds5 , v064, gtp1
	.byte	W30
	.byte		N24   , Dn5 , v064, gtp1
	.byte	W24
	.byte	W01
@ 088   ----------------------------------------
	.byte	W04
	.byte		N48   
	.byte	W92
@ 089   ----------------------------------------
	.byte	W28
	.byte		N15   
	.byte	W30
	.byte	W01
	.byte		N12   , As4 
	.byte	W14
	.byte		N15   
	.byte	W21
	.byte		VOL   , 96*mus_umineko_wingless_mvl/mxv
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_umineko_wingless_4:
	.byte	KEYSH , mus_umineko_wingless_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 96*mus_umineko_wingless_mvl/mxv
	.byte		PAN   , c_v+12
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
	.byte	W42
	.byte	W01
	.byte		N30   , Dn5 , v064
	.byte	W30
	.byte		N28   , Ds5 , v064, gtp1
	.byte	W23
@ 008   ----------------------------------------
	.byte	W06
	.byte		N30   , Fn5 
	.byte	W30
	.byte		N28   , As5 , v064, gtp1
	.byte	W30
	.byte		        Gs5 , v064, gtp1
	.byte	W30
@ 009   ----------------------------------------
	.byte		N24   , Dn5 , v064, gtp2
	.byte	W30
	.byte		N28   , Dn5 , v064, gtp1
	.byte	W30
	.byte		N56   , Ds5 , v064, gtp3
	.byte	W36
@ 010   ----------------------------------------
	.byte	W54
	.byte		N30   
	.byte	W30
	.byte		        Fn5 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W19
	.byte		        Gn5 
	.byte	W30
	.byte		        Gs5 
	.byte	W30
	.byte		N28   , Ds5 , v064, gtp1
	.byte	W17
@ 012   ----------------------------------------
	.byte	W13
	.byte		        As5 , v064, gtp1
	.byte	W28
	.byte	W01
	.byte		        Gs5 , v064, gtp1
	.byte	W30
	.byte		N20   , Dn5 
	.byte	W24
@ 013   ----------------------------------------
	.byte	W06
	.byte		N30   
	.byte	W30
	.byte		N72   , Ds5 , v064, gtp2
	.byte	W60
@ 014   ----------------------------------------
	.byte	W60
	.byte		N15   , Cn5 
	.byte	W28
	.byte	W01
	.byte		N30   , Dn5 , v064, gtp1
	.byte	W07
@ 015   ----------------------------------------
	.byte	W24
	.byte		N28   , Ds5 , v064, gtp1
	.byte	W30
	.byte		        Fn5 , v064, gtp1
	.byte	W30
	.byte		        As5 , v064, gtp1
	.byte	W12
@ 016   ----------------------------------------
mus_umineko_wingless_4_016:
	.byte	W17
	.byte		N30   , Gs5 , v064
	.byte	W78
	.byte	W01
	.byte	PEND
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W06
	.byte		N28   , Ds5 , v064, gtp1
	.byte	W30
	.byte		        Fn5 , v064, gtp1
	.byte	W30
	.byte	W01
	.byte		        Gn5 , v064, gtp1
	.byte	W28
	.byte	W01
@ 019   ----------------------------------------
	.byte		N30   , Gs5 
	.byte	W30
	.byte		N28   , Ds5 
	.byte	W30
	.byte		N30   , As5 
	.byte	W30
	.byte	W01
	.byte		        Gs5 
	.byte	W05
@ 020   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		N28   , Dn5 , v064, gtp1
	.byte	W30
	.byte		        Dn5 , v064, gtp1
	.byte	W30
	.byte		N84   , Ds5 , v064, gtp1
	.byte	W11
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W42
	.byte		N30   , Dn5 
	.byte	W30
	.byte		N28   , Ds5 , v064, gtp1
	.byte	W24
@ 023   ----------------------------------------
	.byte	W06
	.byte		        Fn5 
	.byte	W30
	.byte		N30   , As5 
	.byte	W30
	.byte		        Gs5 
	.byte	W30
@ 024   ----------------------------------------
	.byte	W30
	.byte		        Dn5 
	.byte	W30
	.byte		N56   , Ds5 , v064, gtp2
	.byte	W36
@ 025   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		N14   , Gn2 
	.byte	W14
	.byte		N15   , Dn3 
	.byte	W56
	.byte	W01
@ 026   ----------------------------------------
	.byte	W18
	.byte		        Gs2 
	.byte	W16
	.byte		N14   , Cn3 
	.byte	W14
	.byte		        Ds3 
	.byte	W14
	.byte		N15   , Gs3 
	.byte	W16
	.byte		N14   , Cn4 
	.byte	W14
	.byte		N13   , Ds4 
	.byte	W04
@ 027   ----------------------------------------
	.byte	W11
	.byte		N15   , As2 
	.byte	W16
	.byte		        Dn3 
	.byte	W15
	.byte		N14   , Fn3 
	.byte	W15
	.byte		        As3 
	.byte	W14
	.byte		        Dn4 
	.byte	W15
	.byte		        Fn4 
	.byte	W10
@ 028   ----------------------------------------
	.byte	W06
	.byte		N15   , Cn3 
	.byte	W15
	.byte		N14   , Gn3 
	.byte	W72
	.byte	W03
@ 029   ----------------------------------------
	.byte	W02
	.byte		        Gn2 
	.byte	W14
	.byte		N15   , Dn3 
	.byte	W15
	.byte		        Gn3 
	.byte	W15
	.byte		N14   , As3 
	.byte	W14
	.byte		N13   , Dn4 
	.byte	W30
	.byte		N17   , Gs1 
	.byte	W06
@ 030   ----------------------------------------
	.byte	W84
	.byte	W01
	.byte		N14   , As1 
	.byte	W11
@ 031   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		N15   , Cn2 
	.byte	W17
@ 032   ----------------------------------------
	.byte	W72
	.byte	W01
	.byte		        Gn1 
	.byte	W23
@ 033   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		        Gs1 
	.byte	W28
	.byte	W01
@ 034   ----------------------------------------
	.byte	W60
	.byte		N16   , As1 
	.byte	W36
@ 035   ----------------------------------------
	.byte	W54
	.byte		        Cn2 
	.byte	W42
@ 036   ----------------------------------------
	.byte	W48
	.byte		N15   , Gn2 
	.byte	W16
	.byte		        Dn3 
	.byte	W15
	.byte		N16   , Gn3 
	.byte	W16
	.byte		N21   , As3 
	.byte	W01
@ 037   ----------------------------------------
	.byte	W42
	.byte		N15   , Gs2 
	.byte	W16
	.byte		        Cn3 
	.byte	W15
	.byte		        Ds3 
	.byte	W23
@ 038   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte		N14   , As2 
	.byte	W14
	.byte		        Dn3 
	.byte	W15
	.byte		        Fn3 
	.byte	W30
@ 039   ----------------------------------------
	.byte	W30
	.byte		N15   , Cn3 
	.byte	W66
@ 040   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		N14   , Gn2 
	.byte	W56
	.byte	W02
	.byte		N10   , Gs5 
	.byte	W12
@ 041   ----------------------------------------
	.byte	W02
	.byte		N11   , As5 
	.byte	W16
	.byte		N15   , Gn5 
	.byte	W78
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
	.byte	W42
	.byte	W01
	.byte		N28   , Dn5 , v064, gtp1
	.byte	W28
	.byte	W01
	.byte		        Ds5 , v064, gtp1
	.byte	W24
@ 053   ----------------------------------------
	.byte	W05
	.byte		N30   , Fn5 
	.byte	W30
	.byte	W01
	.byte		N28   , As5 , v064, gtp1
	.byte	W60
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W12
	.byte		        As5 , v064, gtp1
	.byte	W30
	.byte		        Gs5 , v064, gtp1
	.byte	W54
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte		        As5 , v064, gtp1
	.byte	W13
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_wingless_4_016
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		N28   , Gn5 , v064
	.byte	W28
	.byte	W01
@ 064   ----------------------------------------
	.byte		        Gs5 , v064, gtp1
	.byte	W56
	.byte	W03
	.byte		N30   , As5 , v064, gtp1
	.byte	W30
	.byte	W01
	.byte		        Gs5 
	.byte	W06
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		        As5 
	.byte	W30
	.byte	W01
	.byte		N28   , Gs5 , v064, gtp1
	.byte	W30
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		N30   , Ds5 
	.byte	W30
	.byte		N24   , Fn5 , v064, gtp3
	.byte	W13
@ 071   ----------------------------------------
	.byte	W18
	.byte		N28   , Gn5 , v064, gtp1
	.byte	W28
	.byte	W01
	.byte		        Gs5 , v064, gtp1
	.byte	W30
	.byte		N24   , Ds5 , v064, gtp3
	.byte	W19
@ 072   ----------------------------------------
	.byte	W11
	.byte		N28   , As5 , v064, gtp1
	.byte	W30
	.byte		        Gs5 , v064, gtp1
	.byte	W54
	.byte	W01
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		N30   , Dn5 , v064, gtp1
	.byte	W07
@ 075   ----------------------------------------
	.byte	W24
	.byte		N28   , Ds5 , v064, gtp1
	.byte	W30
	.byte		N30   , Fn5 
	.byte	W30
	.byte	W01
	.byte		N28   , As4 , v064, gtp1
	.byte	W11
@ 076   ----------------------------------------
	.byte	W48
	.byte		N24   , Dn5 , v064, gtp3
	.byte	W30
	.byte		N28   , Dn4 , v064, gtp1
	.byte	W18
@ 077   ----------------------------------------
	.byte	W12
	.byte		N15   , Cn4 
	.byte	W15
	.byte		        Dn4 
	.byte	W15
	.byte		        Ds4 
	.byte	W16
	.byte		N12   , Gn4 
	.byte	W14
	.byte		N30   , As3 
	.byte	W24
@ 078   ----------------------------------------
	.byte	W06
	.byte		N15   , Gn3 
	.byte	W15
	.byte		        As3 
	.byte	W15
	.byte		N14   , Dn4 
	.byte	W15
	.byte		N13   , Gn4 
	.byte	W15
	.byte		N28   , Gn4 , v064, gtp1
	.byte	W30
@ 079   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		        Ds5 
	.byte	W30
	.byte	W01
	.byte		N30   , As4 
	.byte	W36
@ 080   ----------------------------------------
	.byte	W23
	.byte		N24   , Dn5 , v064, gtp3
	.byte	W30
	.byte		N28   , Dn4 , v064, gtp1
	.byte	W30
	.byte		N15   , Cn4 
	.byte	W13
@ 081   ----------------------------------------
	.byte	W02
	.byte		        Dn4 
	.byte	W16
	.byte		N14   , Ds4 
	.byte	W15
	.byte		        Gn4 
	.byte	W30
	.byte		N15   , Dn3 
	.byte	W15
	.byte		N16   , Gn3 
	.byte	W17
	.byte		N21   , As3 
	.byte	W01
@ 082   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		N16   , Gs2 
	.byte	W16
	.byte		N15   , Cn3 
	.byte	W15
	.byte		        Ds3 
	.byte	W24
@ 083   ----------------------------------------
	.byte	W36
	.byte		N14   , As2 
	.byte	W15
	.byte		        Dn3 
	.byte	W14
	.byte		        Fn3 
	.byte	W30
	.byte	W01
@ 084   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		N15   , Cn3 
	.byte	W66
	.byte	W01
@ 085   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		N13   , Gn2 
	.byte	W56
	.byte	W02
	.byte		N14   , Gs5 
	.byte	W13
@ 086   ----------------------------------------
	.byte	W02
	.byte		        As5 
	.byte	W15
	.byte		N30   , Gn5 , v064, gtp1
	.byte	W78
	.byte	W01
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W28
	.byte		N16   , Dn5 , v044
	.byte	W30
	.byte	W01
	.byte		N12   , As4 , v048
	.byte	W14
	.byte		N14   , As4 , v044
	.byte	W21
	.byte		VOL   , 96*mus_umineko_wingless_mvl/mxv
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_umineko_wingless_5:
	.byte	KEYSH , mus_umineko_wingless_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte		VOL   , 80*mus_umineko_wingless_mvl/mxv
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
	.byte	W90
	.byte		N30   , Dn5 , v056, gtp1
	.byte	W06
@ 030   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		N28   , Ds5 , v056, gtp1
	.byte	W30
	.byte		N30   , Fn5 
	.byte	W30
	.byte		N28   , As5 , v056, gtp1
	.byte	W11
@ 031   ----------------------------------------
	.byte	W19
	.byte		        Gs5 , v056, gtp1
	.byte	W60
	.byte		        Dn5 , v056, gtp1
	.byte	W17
@ 032   ----------------------------------------
	.byte	W12
	.byte		N56   , Ds5 , v056, gtp2
	.byte	W60
	.byte	W01
	.byte		N30   , As4 
	.byte	W23
@ 033   ----------------------------------------
	.byte	W07
	.byte		        Ds5 
	.byte	W30
	.byte		N24   , Fn5 , v056, gtp3
	.byte	W30
	.byte		N28   , Gn5 , v056, gtp1
	.byte	W28
	.byte	W01
@ 034   ----------------------------------------
	.byte	W01
	.byte		        Gs5 , v056, gtp1
	.byte	W28
	.byte	W01
	.byte		        Ds5 
	.byte	W30
	.byte	W01
	.byte		        As5 , v056, gtp1
	.byte	W28
	.byte	W01
	.byte		        Gs5 , v056, gtp1
	.byte	W06
@ 035   ----------------------------------------
	.byte	W54
	.byte		        Dn5 , v056, gtp1
	.byte	W30
	.byte		N56   , Ds5 , v056, gtp3
	.byte	W12
@ 036   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		N23   , Cn5 
	.byte	W17
@ 037   ----------------------------------------
	.byte	W12
	.byte		N13   , Gn4 
	.byte	W15
	.byte		N14   
	.byte	W68
	.byte	W01
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W15
	.byte		N13   , Fn4 
	.byte	W44
	.byte	W01
	.byte		N15   , Cn4 
	.byte	W15
	.byte		        Dn4 
	.byte	W16
	.byte		        Ds4 
	.byte	W05
@ 040   ----------------------------------------
	.byte	W10
	.byte		N13   , Gn4 
	.byte	W72
	.byte	W02
	.byte		N10   , Ds5 
	.byte	W12
@ 041   ----------------------------------------
	.byte	W18
	.byte		N15   , Dn5 
	.byte	W78
@ 042   ----------------------------------------
	.byte	W42
	.byte		N28   , Ds5 , v056, gtp1
	.byte	W30
	.byte		N24   , Dn5 , v056, gtp1
	.byte	W24
@ 043   ----------------------------------------
	.byte	W05
	.byte		N48   
	.byte	W90
	.byte	W01
@ 044   ----------------------------------------
	.byte	W28
	.byte		N16   
	.byte	W32
	.byte		N12   , As4 
	.byte	W14
	.byte		N14   
	.byte	W22
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W56
	.byte	W02
	.byte		N15   , Gn4 
	.byte	W36
	.byte	W02
@ 048   ----------------------------------------
	.byte	W52
	.byte		N15   
	.byte	W44
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W40
	.byte		N14   , Fn4 
	.byte	W44
	.byte	W01
	.byte		N13   , Cn4 
	.byte	W11
@ 051   ----------------------------------------
	.byte	W03
	.byte		N16   , Dn4 
	.byte	W16
	.byte		N15   , Ds4 
	.byte	W15
	.byte		N12   , Gn4 
	.byte	W60
	.byte	W02
@ 052   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte		N04   
	.byte	W68
	.byte	W01
@ 053   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		N30   , Gs5 
	.byte	W30
	.byte		N24   , Dn5 , v056, gtp2
	.byte	W01
@ 054   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		N28   , Dn5 , v056, gtp1
	.byte	W30
	.byte		N56   , Ds5 , v056, gtp3
	.byte	W36
	.byte	W01
@ 055   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		N30   , Ds5 , v056, gtp1
	.byte	W30
	.byte	W01
	.byte		        Fn5 
	.byte	W12
@ 056   ----------------------------------------
	.byte	W18
	.byte		        Gn5 
	.byte	W30
	.byte		N28   , Gs5 , v056, gtp1
	.byte	W30
	.byte		        Ds5 , v056, gtp1
	.byte	W18
@ 057   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N19   , Dn5 
	.byte	W24
	.byte	W01
@ 058   ----------------------------------------
	.byte	W05
	.byte		N30   
	.byte	W30
	.byte		N72   , Ds5 , v056, gtp3
	.byte	W60
	.byte	W01
@ 059   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		N15   , Cn5 
	.byte	W30
	.byte		N30   , Dn5 , v056, gtp1
	.byte	W07
@ 060   ----------------------------------------
	.byte	W24
	.byte		N28   , Ds5 , v056, gtp1
	.byte	W28
	.byte	W01
	.byte		        Fn5 , v056, gtp1
	.byte	W42
	.byte	W01
@ 061   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		        Dn5 , v056, gtp1
	.byte	W30
	.byte	W01
	.byte		        Dn5 , v056, gtp1
	.byte	W19
@ 062   ----------------------------------------
	.byte	W11
	.byte		N56   , Ds5 , v056, gtp2
	.byte	W84
	.byte	W01
@ 063   ----------------------------------------
	.byte	W06
	.byte		N28   , Ds5 , v056, gtp1
	.byte	W30
	.byte		        Fn5 , v056, gtp1
	.byte	W60
@ 064   ----------------------------------------
	.byte	W30
	.byte		        Ds5 
	.byte	W66
@ 065   ----------------------------------------
	.byte	W24
	.byte		        Dn5 , v056, gtp1
	.byte	W30
	.byte	W01
	.byte		        Dn5 , v056, gtp1
	.byte	W28
	.byte	W01
	.byte		N84   , Ds5 , v056, gtp1
	.byte	W12
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		N30   , Dn5 
	.byte	W30
	.byte		N28   , Ds5 , v056, gtp1
	.byte	W24
	.byte	W01
@ 068   ----------------------------------------
	.byte	W05
	.byte		        Fn5 
	.byte	W90
	.byte		N24   , Dn5 , v056, gtp3
	.byte	W01
@ 069   ----------------------------------------
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		N56   , Ds5 , v056, gtp2
	.byte	W36
@ 070   ----------------------------------------
	.byte	W24
	.byte		N28   , As4 , v056, gtp1
	.byte	W72
@ 071   ----------------------------------------
	.byte	W02
	.byte		N12   , Gn4 
	.byte	W16
	.byte		N28   , Gn4 , v056, gtp1
	.byte	W78
@ 072   ----------------------------------------
	.byte	W11
	.byte		        As4 , v056, gtp1
	.byte	W60
	.byte		        Dn5 
	.byte	W24
	.byte	W01
@ 073   ----------------------------------------
	.byte	W05
	.byte		        Dn5 , v056, gtp1
	.byte	W30
	.byte		N56   , Ds5 , v056, gtp2
	.byte	W60
	.byte	W01
@ 074   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		N30   , Dn4 , v056, gtp1
	.byte	W07
@ 075   ----------------------------------------
	.byte	W54
	.byte		N15   , Cn4 
	.byte	W15
	.byte		        Ds4 
	.byte	W16
	.byte		N28   , As5 , v056, gtp1
	.byte	W11
@ 076   ----------------------------------------
	.byte	W18
	.byte		        Gs5 , v056, gtp1
	.byte	W60
	.byte		        Dn5 , v056, gtp1
	.byte	W18
@ 077   ----------------------------------------
	.byte	W12
	.byte		N56   , Ds5 , v056, gtp2
	.byte	W60
	.byte		N30   , As4 
	.byte	W24
@ 078   ----------------------------------------
	.byte	W06
	.byte		        Ds5 
	.byte	W30
	.byte	W01
	.byte		N24   , Fn5 , v056, gtp3
	.byte	W28
	.byte	W01
	.byte		N28   , Gn5 , v056, gtp1
	.byte	W30
@ 079   ----------------------------------------
	.byte		        Gs5 , v056, gtp1
	.byte	W60
	.byte		N30   , As5 
	.byte	W30
	.byte		N28   , Gs5 , v056, gtp1
	.byte	W06
@ 080   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		        Dn5 , v056, gtp1
	.byte	W30
	.byte		N56   , Ds5 , v056, gtp3
	.byte	W13
@ 081   ----------------------------------------
	.byte	W78
	.byte		N23   , Cn5 
	.byte	W18
@ 082   ----------------------------------------
	.byte	W12
	.byte		N13   , Dn4 
	.byte	W72
	.byte	W03
	.byte		N15   , Gs3 
	.byte	W09
@ 083   ----------------------------------------
	.byte	W06
	.byte		N14   , Cn4 
	.byte	W14
	.byte		N13   , Ds4 
	.byte	W60
	.byte		N14   , As3 
	.byte	W15
	.byte		N15   , Dn4 
	.byte	W01
@ 084   ----------------------------------------
	.byte	W44
	.byte		N14   , Gn3 
	.byte	W52
@ 085   ----------------------------------------
	.byte	W36
	.byte	W03
	.byte		        Dn3 
	.byte	W15
	.byte		        Gn3 
	.byte	W15
	.byte		        As3 
	.byte	W14
	.byte		        Dn4 
	.byte	W13
@ 086   ----------------------------------------
	.byte	W02
	.byte		        Gn4 
	.byte	W15
	.byte		N15   , Gs2 
	.byte	W16
	.byte		        Cn3 
	.byte	W16
	.byte		N14   , Ds3 
	.byte	W14
	.byte		N13   , Gs3 
	.byte	W14
	.byte		N14   , Cn4 
	.byte	W15
	.byte		N13   , Ds4 
	.byte	W04
@ 087   ----------------------------------------
	.byte	W10
	.byte		N16   , As2 
	.byte	W16
	.byte		N15   , Dn3 
	.byte	W15
	.byte		        Fn3 
	.byte	W16
	.byte		N14   , As3 
	.byte	W14
	.byte		        Dn4 
	.byte	W15
	.byte		N11   , Fn4 
	.byte	W10
@ 088   ----------------------------------------
	.byte	W04
	.byte		N15   , Cn3 
	.byte	W15
	.byte		N14   , Gn3 
	.byte	W15
	.byte		N16   , Cn4 
	.byte	W16
	.byte		N15   , Dn4 
	.byte	W15
	.byte		        Ds4 
	.byte	W15
	.byte		N13   , Gn4 
	.byte	W15
	.byte		N14   , Gn2 
	.byte	W01
@ 089   ----------------------------------------
	.byte	W13
	.byte		        Dn3 
	.byte	W15
	.byte		N16   , Gn3 
	.byte	W16
	.byte		N14   , As3 
	.byte	W15
	.byte		N12   , Dn4 
	.byte	W32
	.byte	W03
	.byte		VOL   , 80*mus_umineko_wingless_mvl/mxv
	.byte	FINE

@******************************************************@
	.align	2

mus_umineko_wingless:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_umineko_wingless_pri	@ Priority
	.byte	mus_umineko_wingless_rev	@ Reverb.

	.word	mus_umineko_wingless_grp

	.word	mus_umineko_wingless_1
	.word	mus_umineko_wingless_2
	.word	mus_umineko_wingless_3
	.word	mus_umineko_wingless_4
	.word	mus_umineko_wingless_5

	.end
