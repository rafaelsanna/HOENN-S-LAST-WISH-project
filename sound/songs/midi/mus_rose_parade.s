	.include "MPlayDef.s"

	.equ	mus_rose_parade_grp, voicegroup_hlw_indie_guitar
	.equ	mus_rose_parade_pri, 0
	.equ	mus_rose_parade_rev, reverb_set+35
	.equ	mus_rose_parade_mvl, 92
	.equ	mus_rose_parade_key, 0
	.equ	mus_rose_parade_tbs, 1
	.equ	mus_rose_parade_exg, 1
	.equ	mus_rose_parade_cmp, 1

	.section .rodata
	.global	mus_rose_parade
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_rose_parade_1:
	.byte		VOL   , 127*mus_rose_parade_mvl/mxv
	.byte	KEYSH , mus_rose_parade_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 120*mus_rose_parade_tbs/2
	.byte		VOICE , 24
	.byte		N12   , Ds2 , v080
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W24
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , An2 
	.byte		N12   , Ds3 
	.byte		N12   , Fn3 
	.byte	W24
	.byte		        Fn1 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte		N12   , Fn3 
	.byte	W24
	.byte		        Gs1 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N24   , Gs1 
	.byte	W24
@ 002   ----------------------------------------
mus_rose_parade_1_002:
	.byte		N12   , Gs1 , v080
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N06   , Gs1 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Cn2 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N12   
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        Ds2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W24
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W24
	.byte		        As2 
	.byte	W12
	.byte		N24   , Cn3 
	.byte	W24
@ 004   ----------------------------------------
	.byte		N12   , Gs1 
	.byte		N12   , As1 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Gs1 
	.byte		N06   , As1 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , As1 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , As1 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , As1 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
@ 005   ----------------------------------------
	.byte		        Ds2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W24
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Fn2 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte	W24
	.byte		        Fn1 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N24   , Gs1 
	.byte	W24
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_002
@ 007   ----------------------------------------
mus_rose_parade_1_007:
	.byte		N12   , Ds2 , v080
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W24
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Fn2 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte	W24
	.byte		        Fn1 
	.byte		N12   , Fn2 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Fn2 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N24   , Gs1 
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_007
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_007
@ 012   ----------------------------------------
	.byte		N12   , Gs1 , v080
	.byte		N12   , Cn2 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Gs1 
	.byte		N06   , Cn2 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Cn2 
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Gs1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Cn3 
	.byte	W12
@ 013   ----------------------------------------
mus_rose_parade_1_013:
	.byte		N12   , Gn1 , v080
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N12   
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , Ds3 
	.byte	W24
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
mus_rose_parade_1_014:
	.byte		N12   , Ds2 , v080
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W24
	.byte		        Cn2 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N24   , Gs1 
	.byte		N24   , Gs2 
	.byte		N24   , Ds3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , Gs1 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_rose_parade_1_015:
	.byte		N12   , As1 , v080
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Ds2 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Ds2 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Ds2 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Ds2 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_007
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_002
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_007
@ 019   ----------------------------------------
mus_rose_parade_1_019:
	.byte		N12   , Gs1 , v080
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N06   , Gs1 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Gs2 
	.byte		N06   , Ds3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , Gs1 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
	.byte		        Gs1 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_007
@ 021   ----------------------------------------
mus_rose_parade_1_021:
	.byte		N24   , Gs1 , v080
	.byte		N24   , Gs2 
	.byte		N24   , Ds3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N12   
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_007
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_007
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_013
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_014
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_015
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_007
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_019
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_007
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_021
@ 033   ----------------------------------------
	.byte		N12   , As1 , v080
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Fn2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W24
	.byte		        Fn1 
	.byte		N12   , Fn2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W24
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N24   , Fn1 
	.byte		N24   , Cn2 
	.byte		N24   , Fn2 
	.byte		N24   , An2 
	.byte	W24
@ 034   ----------------------------------------
	.byte		N12   , Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N12   
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W96
	.byte	W12
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_007
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_019
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_007
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_021
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_007
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_019
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_007
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_021
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_013
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_014
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_015
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_007
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_019
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_rose_parade_1_007
@ 049   ----------------------------------------
	.byte		N24   , Gs1 , v080
	.byte		N24   , Gs2 
	.byte		N24   , Ds3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , Gs1 
	.byte		N12   , Cn2 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Cn2 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N12   
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
@ 050   ----------------------------------------
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Fn2 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte	W24
	.byte		        Fn1 
	.byte		N12   , Fn2 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W24
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N24   , Fn1 
	.byte		N24   , Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte	W24
@ 051   ----------------------------------------
	.byte		N12   , Fn1 
	.byte		N12   , Fn2 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        An2 
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W84
	.byte		N24   , Fn1 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte		N24   , Fn3 
	.byte	W24
@ 052   ----------------------------------------
	.byte		N96   , Gs1 
	.byte		N96   , Gs2 
	.byte		N96   , Ds3 
	.byte		N96   , Gs3 
	.byte	W96
@ 053   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_rose_parade:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_rose_parade_pri	@ Priority
	.byte	mus_rose_parade_rev	@ Reverb.

	.word	mus_rose_parade_grp

	.word	mus_rose_parade_1

	.end
