	.include "MPlayDef.s"

	.equ	mus_hunting_for_your_dream_grp, voicegroup_hlw_rock_metal
	.equ	mus_hunting_for_your_dream_pri, 0
	.equ	mus_hunting_for_your_dream_rev, reverb_set+12
	.equ	mus_hunting_for_your_dream_mvl, 90
	.equ	mus_hunting_for_your_dream_key, 0
	.equ	mus_hunting_for_your_dream_tbs, 1
	.equ	mus_hunting_for_your_dream_exg, 0
	.equ	mus_hunting_for_your_dream_cmp, 1

	.section .rodata
	.global	mus_hunting_for_your_dream
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_hunting_for_your_dream_1:
	.byte	KEYSH , mus_hunting_for_your_dream_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 178*mus_hunting_for_your_dream_tbs/2
	.byte		VOICE , 29
	.byte		VOL   , 92*mus_hunting_for_your_dream_mvl/mxv
	.byte		PAN   , c_v-18
	.byte		N24   , Ds3 , v072
	.byte	W36
	.byte		N12   
	.byte	W06
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N12   , Fs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        As2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs3 
	.byte	W12
@ 002   ----------------------------------------
mus_hunting_for_your_dream_1_002:
	.byte		N36   , Cs3 , v072
	.byte		N36   , Fn3 
	.byte	W36
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N24   , Gs2 
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_hunting_for_your_dream_1_003:
	.byte		N36   , Bn2 , v072
	.byte	W36
	.byte		N12   
	.byte	W06
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Bn2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_hunting_for_your_dream_1_004:
	.byte		N36   , As2 , v072
	.byte		N36   , Fn3 
	.byte	W36
	.byte		N12   , As2 
	.byte	W12
	.byte		N48   
	.byte	W24
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_hunting_for_your_dream_1_005:
	.byte		N36   , Ds2 , v072
	.byte		N48   , Gs2 
	.byte	W36
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N36   , Fn2 
	.byte		N48   , As2 
	.byte	W36
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte		N48   , Fs2 
	.byte		N48   , Bn2 
	.byte	W48
	.byte		N24   , Gs2 
	.byte		N36   , Cs3 
	.byte	W24
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 007   ----------------------------------------
mus_hunting_for_your_dream_1_007:
	.byte		N30   , Ds3 , v072
	.byte	W18
	.byte		N12   
	.byte		N12   , Fs3 
	.byte	W18
	.byte		        Ds3 
	.byte		N12   , Fn3 
	.byte	W18
	.byte		        Ds3 
	.byte		N12   , Fs3 
	.byte	W18
	.byte		        Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_hunting_for_your_dream_1_008:
	.byte		N48   , As2 , v072
	.byte		N06   , An3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , As2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , As2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 010   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 011   ----------------------------------------
mus_hunting_for_your_dream_1_011:
	.byte		N24   , As1 , v072
	.byte		N24   , Ds2 
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N24   , Ds3 
	.byte		N24   , As3 
	.byte	W36
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
mus_hunting_for_your_dream_1_012:
	.byte		N12   , Ds2 , v072
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
mus_hunting_for_your_dream_1_013:
	.byte		N24   , Bn1 , v072
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte	W24
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
mus_hunting_for_your_dream_1_014:
	.byte		N12   , Bn1 , v072
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte	PEND
@ 015   ----------------------------------------
mus_hunting_for_your_dream_1_015:
	.byte		N24   , Cs2 , v072
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N06   , Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N24   , Cs2 
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N06   , Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte	PEND
@ 016   ----------------------------------------
mus_hunting_for_your_dream_1_016:
	.byte		N24   , Bn1 , v072
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N06   , Bn1 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte		N12   , Gs2 
	.byte	W24
	.byte		N06   , Bn1 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Gs2 
	.byte	W06
	.byte	PEND
@ 017   ----------------------------------------
	.byte		N24   , As1 
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N06   , As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte	W24
	.byte		N06   , As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte	W06
@ 018   ----------------------------------------
mus_hunting_for_your_dream_1_018:
	.byte		N12   , As1 , v072
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_013
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_014
@ 021   ----------------------------------------
	.byte		N24   , Ds2 , v072
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W24
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Ds2 
	.byte		N06   , Gs2 
	.byte	W06
@ 022   ----------------------------------------
mus_hunting_for_your_dream_1_022:
	.byte		N12   , Ds2 , v072
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
	.byte		N24   , Cs2 
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N06   , Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte	W24
	.byte		N06   , Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
@ 024   ----------------------------------------
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
@ 025   ----------------------------------------
	.byte		N24   , Dn2 
	.byte		N24   , As2 
	.byte	W24
	.byte		N06   , Dn2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , As2 
	.byte	W24
	.byte		N06   , Dn2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , As2 
	.byte	W06
@ 026   ----------------------------------------
	.byte		        Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 027   ----------------------------------------
mus_hunting_for_your_dream_1_027:
	.byte		N12   , Ds2 , v072
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W24
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_hunting_for_your_dream_1_028:
	.byte	W12
	.byte		N06   , Bn1 , v072
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_hunting_for_your_dream_1_029:
	.byte		N12   , Cs2 , v072
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W24
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
mus_hunting_for_your_dream_1_030:
	.byte	W12
	.byte		N06   , As1 , v072
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
mus_hunting_for_your_dream_1_031:
	.byte		N12   , Bn1 , v072
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte	W24
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
mus_hunting_for_your_dream_1_032:
	.byte	W12
	.byte		N06   , Ds2 , v072
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
mus_hunting_for_your_dream_1_033:
	.byte		N12   , As1 , v072
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	PEND
@ 034   ----------------------------------------
mus_hunting_for_your_dream_1_034:
	.byte		N12   , Cs2 , v072
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte	PEND
@ 035   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 036   ----------------------------------------
	.byte		N48   , Cs4 
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
mus_hunting_for_your_dream_1_038:
	.byte		N12   , Dn2 , v072
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W60
	.byte	PEND
@ 039   ----------------------------------------
mus_hunting_for_your_dream_1_039:
	.byte		N24   , An2 , v072
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte	PEND
@ 040   ----------------------------------------
mus_hunting_for_your_dream_1_040:
	.byte		N24   , En2 , v072
	.byte		N24   , En3 
	.byte	W24
	.byte		        En2 
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte	PEND
@ 041   ----------------------------------------
mus_hunting_for_your_dream_1_041:
	.byte	W12
	.byte		N12   , Bn2 , v072
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W36
	.byte		        En3 
	.byte	W24
	.byte	PEND
@ 042   ----------------------------------------
mus_hunting_for_your_dream_1_042:
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte	PEND
@ 043   ----------------------------------------
mus_hunting_for_your_dream_1_043:
	.byte	W24
	.byte		N12   , Gs2 , v072
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte	PEND
@ 044   ----------------------------------------
mus_hunting_for_your_dream_1_044:
	.byte		N24   , Dn2 , v072
	.byte		N24   , An2 
	.byte	W24
	.byte		        Dn2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte	PEND
@ 045   ----------------------------------------
mus_hunting_for_your_dream_1_045:
	.byte	W12
	.byte		N12   , Gs2 , v072
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 046   ----------------------------------------
mus_hunting_for_your_dream_1_046:
	.byte		N12   , Bn1 , v072
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte	PEND
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_046
@ 048   ----------------------------------------
mus_hunting_for_your_dream_1_048:
	.byte		N24   , En2 , v072
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N12   , En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte	PEND
@ 049   ----------------------------------------
mus_hunting_for_your_dream_1_049:
	.byte		N12   , En2 , v072
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte	PEND
@ 050   ----------------------------------------
mus_hunting_for_your_dream_1_050:
	.byte		N06   , Fn2 , v072
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte	PEND
@ 051   ----------------------------------------
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
@ 052   ----------------------------------------
	.byte		N36   , Fs2 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 053   ----------------------------------------
	.byte		N36   , Gs3 
	.byte	W36
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 054   ----------------------------------------
	.byte		N36   , Dn3 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 055   ----------------------------------------
	.byte		N36   , Gs3 
	.byte	W36
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 056   ----------------------------------------
	.byte		N36   , Fs2 
	.byte		N36   , Bn2 
	.byte	W36
	.byte		N06   , An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N36   , Gs2 
	.byte		N36   , Cs3 
	.byte	W36
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 057   ----------------------------------------
	.byte		N48   , An2 
	.byte		N48   , Dn3 
	.byte	W48
	.byte		N24   , Bn2 
	.byte		N24   , En3 
	.byte	W24
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 058   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 059   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_011
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_012
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_013
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_014
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_015
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_016
@ 066   ----------------------------------------
	.byte		N12   , As1 , v072
	.byte		N12   , Fn2 
	.byte	W36
	.byte		N36   , As1 
	.byte		N36   , Fn2 
	.byte	W36
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 067   ----------------------------------------
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
@ 068   ----------------------------------------
	.byte	W24
	.byte		        Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte	W24
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Fs2 
	.byte	W06
@ 069   ----------------------------------------
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 070   ----------------------------------------
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N24   , Ds2 
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
@ 071   ----------------------------------------
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , As2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 072   ----------------------------------------
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N24   , Cs2 
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N06   , Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
@ 073   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 074   ----------------------------------------
	.byte		N06   , As2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
@ 075   ----------------------------------------
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_027
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_028
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_029
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_030
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_031
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_032
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_033
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_034
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
mus_hunting_for_your_dream_1_085:
	.byte		N24   , Fs2 , v072
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Fs2 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 086   ----------------------------------------
mus_hunting_for_your_dream_1_086:
	.byte	W12
	.byte		N12   , En2 , v072
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_038
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_039
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_040
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_041
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_042
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_043
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_044
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_045
@ 095   ----------------------------------------
mus_hunting_for_your_dream_1_095:
	.byte		N12   , Bn1 , v072
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 096   ----------------------------------------
mus_hunting_for_your_dream_1_096:
	.byte		N12   , Bn2 , v072
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        An2 
	.byte		N12   , An3 
	.byte	W12
	.byte		        An2 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte	PEND
@ 097   ----------------------------------------
mus_hunting_for_your_dream_1_097:
	.byte		N12   , En2 , v072
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 098   ----------------------------------------
mus_hunting_for_your_dream_1_098:
	.byte		N24   , Bn2 , v072
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte	PEND
@ 099   ----------------------------------------
mus_hunting_for_your_dream_1_099:
	.byte		N12   , Fn2 , v072
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte	PEND
@ 100   ----------------------------------------
	.byte		        Cs2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 101   ----------------------------------------
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N48   , Dn2 
	.byte		N48   , An2 
	.byte	W48
@ 102   ----------------------------------------
	.byte		N24   
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
@ 103   ----------------------------------------
	.byte		        Cs2 
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N48   , Cs2 
	.byte		N48   , Gs2 
	.byte	W48
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte	W12
@ 104   ----------------------------------------
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
@ 105   ----------------------------------------
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte	W24
	.byte		        Bn1 
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte	W12
@ 106   ----------------------------------------
	.byte		N24   , Bn1 
	.byte		N24   , En2 
	.byte	W24
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , En2 
	.byte	W12
@ 107   ----------------------------------------
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		N48   , An1 
	.byte		N48   , En2 
	.byte	W60
@ 108   ----------------------------------------
	.byte		        Gn2 
	.byte		N48   , Gn3 
	.byte	W48
	.byte		N24   , Fs2 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        En2 
	.byte		N24   , En3 
	.byte	W24
@ 109   ----------------------------------------
	.byte		        Dn2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 110   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 111   ----------------------------------------
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W24
	.byte		        Cs2 
	.byte	W12
	.byte		N24   
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
@ 112   ----------------------------------------
	.byte		        Fs2 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 113   ----------------------------------------
	.byte		N48   , Gn2 
	.byte	W96
@ 114   ----------------------------------------
	.byte		N48   
	.byte		N48   , Gn3 
	.byte	W96
@ 115   ----------------------------------------
	.byte		N12   , Cs3 
	.byte		N12   , Bn3 
	.byte	W36
	.byte		        Cs3 
	.byte		N12   , Bn3 
	.byte	W36
	.byte		        Cs3 
	.byte		N12   , Bn3 
	.byte	W24
@ 116   ----------------------------------------
	.byte		N18   , Cs3 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 117   ----------------------------------------
	.byte		N48   , Bn1 
	.byte		N48   , Cs4 
	.byte	W60
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W12
@ 118   ----------------------------------------
	.byte		N48   , Fs2 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N12   , Cs4 
	.byte	W12
@ 119   ----------------------------------------
	.byte		N48   , Gs2 
	.byte		N48   , Cs4 
	.byte	W60
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 120   ----------------------------------------
	.byte		N48   , Ds2 
	.byte		N24   , En4 
	.byte	W24
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N36   , Bn3 
	.byte	W36
@ 121   ----------------------------------------
	.byte		N48   , En2 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 122   ----------------------------------------
	.byte		N48   , Bn1 
	.byte		N36   , Fs3 
	.byte	W36
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 123   ----------------------------------------
	.byte		N48   , An1 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte	W12
@ 124   ----------------------------------------
	.byte		N48   , Fs2 
	.byte		N24   , Cs4 
	.byte	W36
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 125   ----------------------------------------
	.byte		N24   , Gs2 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , Gs2 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs2 
	.byte		N18   , Gs3 
	.byte	W12
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N12   
	.byte		N18   , As3 
	.byte	W12
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N12   
	.byte		N12   , Bn3 
	.byte	W12
@ 126   ----------------------------------------
	.byte		N24   , Ds2 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N18   , As3 
	.byte	W18
	.byte		N12   , Ds2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Ds2 
	.byte		N36   , Fs3 
	.byte	W12
	.byte		N12   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Ds4 
	.byte	W12
@ 127   ----------------------------------------
	.byte		N24   , En2 
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N12   , En2 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En2 
	.byte		N24   , Gs3 
	.byte	W12
	.byte		N12   , En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N24   , As3 
	.byte	W12
	.byte		N12   , En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn3 
	.byte	W12
@ 128   ----------------------------------------
	.byte		N24   , Bn1 
	.byte		N48   , Bn3 
	.byte	W24
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N48   , Fs3 
	.byte	W12
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
@ 129   ----------------------------------------
	.byte		N24   , Cs2 
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , Ds2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , Ds2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N12   , En2 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 130   ----------------------------------------
	.byte		N24   , Fs2 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N24   , En2 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N12   , Ds2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N24   , Cs2 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
@ 131   ----------------------------------------
	.byte		N48   , Bn1 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte	W12
@ 132   ----------------------------------------
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N48   , Dn2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 133   ----------------------------------------
	.byte		N36   , Ds2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Ds2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , As2 
	.byte		N12   , Fs3 
	.byte	W06
	.byte		N06   , As2 
	.byte	W06
@ 134   ----------------------------------------
	.byte		N12   , Gs2 
	.byte		N36   , Fn3 
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte		N12   , Cs3 
	.byte	W06
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Gs2 
	.byte		N12   , As2 
	.byte	W06
	.byte		N06   , Gs2 
	.byte	W06
@ 135   ----------------------------------------
	.byte		N12   , Fs2 
	.byte		N36   , Bn2 
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte		N12   , Ds3 
	.byte	W06
	.byte		N06   , Fs2 
	.byte	W06
@ 136   ----------------------------------------
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte		N12   , As2 
	.byte	W06
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N12   
	.byte		N24   , As2 
	.byte	W12
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Fn2 
	.byte		N12   , Fs2 
	.byte	W06
	.byte		N06   , Fn2 
	.byte	W06
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_022
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_018
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_014
@ 140   ----------------------------------------
	.byte		N48   , As1 , v072
	.byte		N48   , Fn2 
	.byte	W48
	.byte		N24   , Dn2 
	.byte		N48   , As2 
	.byte	W24
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 141   ----------------------------------------
	.byte		N12   , As2 
	.byte		N36   , Ds3 
	.byte	W12
	.byte		N06   , As2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N12   , As2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , As2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N06   , As2 
	.byte		N12   , Fs3 
	.byte	W06
	.byte		N06   , As2 
	.byte	W06
@ 142   ----------------------------------------
	.byte		N12   , Gs2 
	.byte		N36   , Fn3 
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte		N12   , Cs4 
	.byte	W06
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Gs2 
	.byte		N12   , As3 
	.byte	W06
	.byte		N06   , Gs2 
	.byte	W06
@ 143   ----------------------------------------
	.byte		N12   , Fs2 
	.byte		N36   , Bn3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , Fs2 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N06   , Fs2 
	.byte		N12   , Fs3 
	.byte	W06
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N12   
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte		N12   , Ds4 
	.byte	W06
	.byte		N06   , Fs2 
	.byte	W06
@ 144   ----------------------------------------
	.byte		N12   , Fn2 
	.byte		N36   , Fn3 
	.byte	W12
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte		N12   , As3 
	.byte	W06
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N12   
	.byte		N24   , As2 
	.byte	W12
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N06   , Fn2 
	.byte		N12   , Fs3 
	.byte	W06
	.byte		N06   , Fn2 
	.byte	W06
@ 145   ----------------------------------------
	.byte		N48   , Gs2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 146   ----------------------------------------
	.byte		N48   , As2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N48   , Fn3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 147   ----------------------------------------
	.byte		N48   , Bn2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
@ 148   ----------------------------------------
	.byte		        Gs2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 149   ----------------------------------------
	.byte		N12   , Fn2 
	.byte		N24   , Gs3 
	.byte	W12
	.byte		N06   , As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte		N12   , Cs4 
	.byte	W06
	.byte		N06   , As1 
	.byte	W06
	.byte		N12   , Fn2 
	.byte		N24   , As3 
	.byte	W12
	.byte		N06   , As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fn2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Gs3 
	.byte	W06
@ 150   ----------------------------------------
	.byte		N12   , Fn2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N12   , Fn2 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As1 
	.byte		N06   , As3 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N12   , Fn2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        As1 
	.byte		N06   , As3 
	.byte	W06
@ 151   ----------------------------------------
	.byte		N12   , Dn3 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , As2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Fn2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Dn2 
	.byte	W06
@ 152   ----------------------------------------
	.byte		N08   , As2 
	.byte		N48   , Cs4 
	.byte	W08
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Fn2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		        Gs2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Fn2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
@ 153   ----------------------------------------
	.byte		N48   , Ds3 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N12   , Gs2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N12   , Fs2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 154   ----------------------------------------
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 155   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 156   ----------------------------------------
	.byte		        Fn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 157   ----------------------------------------
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 158   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 159   ----------------------------------------
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 160   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 161   ----------------------------------------
	.byte		N24   , Gs3 
	.byte	W96
@ 162   ----------------------------------------
	.byte	W96
@ 163   ----------------------------------------
	.byte	W48
@ 164   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_085
@ 165   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_086
@ 166   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_038
@ 167   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_039
@ 168   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_040
@ 169   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_041
@ 170   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_042
@ 171   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_043
@ 172   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_044
@ 173   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_045
@ 174   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_046
@ 175   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_046
@ 176   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_048
@ 177   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_049
@ 178   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_050
@ 179   ----------------------------------------
	.byte		N24   , Dn3 , v072
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        An2 
	.byte		N24   , An3 
	.byte	W24
@ 180   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_085
@ 181   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_086
@ 182   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_038
@ 183   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_039
@ 184   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_040
@ 185   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_041
@ 186   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_042
@ 187   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_043
@ 188   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_044
@ 189   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_045
@ 190   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_095
@ 191   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_096
@ 192   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_097
@ 193   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_098
@ 194   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_099
@ 195   ----------------------------------------
	.byte		N12   , Cs3 , v072
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
@ 196   ----------------------------------------
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Ds2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N12   
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 197   ----------------------------------------
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
@ 198   ----------------------------------------
mus_hunting_for_your_dream_1_198:
	.byte		N12   , Dn2 , v072
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte	PEND
@ 199   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_198
@ 200   ----------------------------------------
	.byte		N12   , En2 , v072
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , En2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W24
	.byte		N06   , En2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 
	.byte	W12
@ 201   ----------------------------------------
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
@ 202   ----------------------------------------
	.byte		N12   , Cs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Cs2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Cs3 
	.byte	W24
	.byte		N06   , Cs2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Cs3 
	.byte	W12
@ 203   ----------------------------------------
	.byte		N48   , Cs2 
	.byte		N48   , Gs3 
	.byte	W96
@ 204   ----------------------------------------
	.byte		N12   , Dn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 
	.byte	W24
	.byte		N06   , Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 
	.byte	W12
@ 205   ----------------------------------------
	.byte		        Cs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Cs2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N24   , Cs2 
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N06   , Cs2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Cs3 
	.byte	W12
@ 206   ----------------------------------------
	.byte		        Bn1 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Cs2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , En2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N06   , En3 
	.byte	W06
@ 207   ----------------------------------------
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N12   , An2 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , An2 
	.byte		N06   , An3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , An3 
	.byte	W06
	.byte		N12   , Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N06   , Gs2 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , Fs3 
	.byte	W06
@ 208   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_049
@ 209   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_049
@ 210   ----------------------------------------
	.byte		N12   , Fn2 , v072
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Fn2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Fn2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Fn2 
	.byte		N12   , Cs3 
	.byte	W12
@ 211   ----------------------------------------
	.byte		N24   , As2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N24   , Fn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 212   ----------------------------------------
	.byte		N48   , Ds2 
	.byte		N24   , As3 
	.byte	W36
	.byte		N36   , Ds4 
	.byte	W36
	.byte		N24   , Bn3 
	.byte	W24
@ 213   ----------------------------------------
	.byte		N48   , Cs2 
	.byte		N36   , Gs3 
	.byte	W36
	.byte		        As3 
	.byte	W36
	.byte		N24   , Ds4 
	.byte	W24
@ 214   ----------------------------------------
	.byte		N12   , Bn1 
	.byte		N24   , Gs3 
	.byte	W12
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N36   , Ds4 
	.byte	W36
	.byte		N24   , Cs4 
	.byte	W24
@ 215   ----------------------------------------
	.byte		N48   , Bn1 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 216   ----------------------------------------
	.byte		N12   , Cs2 
	.byte		N24   , Fn3 
	.byte	W12
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte		N24   , Gs3 
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 217   ----------------------------------------
	.byte		N12   , Bn1 
	.byte		N24   , Gs3 
	.byte	W12
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte		N24   , Gs3 
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
@ 218   ----------------------------------------
	.byte		N48   , As1 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Gs3 
	.byte	W48
	.byte		N12   , Cs4 
	.byte	W12
@ 219   ----------------------------------------
	.byte		N48   , Cs3 
	.byte		N24   , As3 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 220   ----------------------------------------
	.byte		N48   , Bn1 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , Fn3 
	.byte	W12
@ 221   ----------------------------------------
	.byte		N48   , As1 
	.byte		N48   , As2 
	.byte	W24
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fn3 
	.byte	W18
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
@ 222   ----------------------------------------
	.byte		N48   , Gs2 
	.byte		N24   , Ds4 
	.byte	W36
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 223   ----------------------------------------
	.byte		N48   , Ds4 
	.byte	W96
@ 224   ----------------------------------------
	.byte		N06   , Cs2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Ds4 
	.byte	W06
@ 225   ----------------------------------------
	.byte		        Bn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , Ds4 
	.byte	W06
@ 226   ----------------------------------------
	.byte		N12   , Dn2 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Bn3 
	.byte	W06
@ 227   ----------------------------------------
	.byte		        Cs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Ds2 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        Ds2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Fs2 
	.byte	W06
@ 228   ----------------------------------------
	.byte		N24   , Ds3 
	.byte	W36
	.byte		N12   
	.byte	W06
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N12   , Fs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        As2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs3 
	.byte	W12
@ 229   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_002
@ 230   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_003
@ 231   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_004
@ 232   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_005
@ 233   ----------------------------------------
	.byte		N48   , Fs2 , v072
	.byte		N48   , Bn2 
	.byte	W48
	.byte		N24   , Gs2 
	.byte		N48   , Cs3 
	.byte	W36
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
@ 234   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_007
@ 235   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_1_008
@ 236   ----------------------------------------
	.byte		N48   , Ds3 , v072
	.byte	W48
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_hunting_for_your_dream_2:
	.byte	KEYSH , mus_hunting_for_your_dream_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 84*mus_hunting_for_your_dream_mvl/mxv
	.byte		PAN   , c_v+12
	.byte		N72   , As1 , v060
	.byte		N72   , Ds2 
	.byte		N36   , Ds3 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 001   ----------------------------------------
	.byte		N72   , Gs1 
	.byte		N72   , Cs2 
	.byte		N36   , Fn3 
	.byte	W36
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N24   , Gs2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As2 
	.byte		N12   , As3 
	.byte	W12
@ 002   ----------------------------------------
mus_hunting_for_your_dream_2_002:
	.byte		N72   , Fs1 , v060
	.byte		N36   , Bn2 
	.byte		N36   , Bn3 
	.byte	W36
	.byte		N06   , Bn2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , Ds3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte		N72   , Fn1 
	.byte		N36   , Fn3 
	.byte		N36   , Fn4 
	.byte	W36
	.byte		N12   , As2 
	.byte		N12   , Fn3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N24   , As2 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N48   , Gs1 
	.byte		N36   , Ds3 
	.byte		N36   , Gs3 
	.byte	W36
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N48   , Fn1 
	.byte		N36   , Fn3 
	.byte		N36   , As3 
	.byte	W36
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 005   ----------------------------------------
	.byte		N48   , Fs1 
	.byte		N48   , Fs3 
	.byte		N48   , Bn3 
	.byte	W48
	.byte		        Gs1 
	.byte		N24   , Gs3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N06   , Bn2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Fn4 
	.byte	W06
@ 006   ----------------------------------------
	.byte		N72   , As1 
	.byte		N12   , Ds3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Ds3 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Ds3 
	.byte		N12   , Fn3 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Ds3 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
@ 007   ----------------------------------------
	.byte		N72   , Fn1 
	.byte		N72   , As1 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 008   ----------------------------------------
	.byte		N12   , As1 
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W36
	.byte		        As1 
	.byte		N12   , As3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        As1 
	.byte		N12   , As3 
	.byte		N12   , Fn4 
	.byte	W24
@ 009   ----------------------------------------
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Ds4 
	.byte		N12   , Gs4 
	.byte	W36
	.byte		        Ds2 
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W24
	.byte		        Cs2 
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 
	.byte	W24
@ 010   ----------------------------------------
mus_hunting_for_your_dream_2_010:
	.byte		N12   , As1 , v060
	.byte		N12   , Ds3 
	.byte		N12   , Ds4 
	.byte	W36
	.byte		N48   , As1 
	.byte		N24   , Ds3 
	.byte		N24   , Ds4 
	.byte	W60
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
mus_hunting_for_your_dream_2_012:
	.byte		N12   , Fs1 , v060
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		N48   , Fs1 
	.byte		N48   , Fs3 
	.byte		N48   , Fs4 
	.byte	W60
	.byte	PEND
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
mus_hunting_for_your_dream_2_014:
	.byte		N12   , Gs1 , v060
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W36
	.byte		N48   , Gs1 
	.byte		N48   , Gs3 
	.byte		N48   , Gs4 
	.byte	W60
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_012
@ 016   ----------------------------------------
	.byte		N72   , Cs2 , v060
	.byte		N72   , Cs4 
	.byte		N72   , Fn4 
	.byte	W92
	.byte	W01
	.byte		N03   , Gs3 , v056
	.byte		N03   , Fn4 
	.byte	W03
@ 017   ----------------------------------------
	.byte		N24   , As2 , v060
	.byte		N24   , As4 
	.byte	W24
	.byte		        Fn2 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        Cs2 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        As1 
	.byte		N24   , As3 
	.byte	W24
@ 018   ----------------------------------------
	.byte		N12   , Fs1 
	.byte		N12   , Fs3 
	.byte		N12   , Bn3 
	.byte	W36
	.byte		N48   , Fs1 
	.byte		N48   , Fs3 
	.byte		N48   , Bn3 
	.byte	W60
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
mus_hunting_for_your_dream_2_020:
	.byte		N12   , Gs1 , v060
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W36
	.byte		N48   , Gs1 
	.byte		N48   , Ds3 
	.byte		N48   , Gs3 
	.byte	W60
	.byte	PEND
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
mus_hunting_for_your_dream_2_022:
	.byte		N12   , Gs1 , v060
	.byte		N12   , Gs3 
	.byte		N12   , Cs4 
	.byte	W36
	.byte		N48   , Gs1 
	.byte		N48   , Gs3 
	.byte		N48   , Cs4 
	.byte	W60
	.byte	PEND
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte		N12   , Gs1 
	.byte		N12   , Gs3 
	.byte		N12   , Dn4 
	.byte	W36
	.byte		N48   , Gs1 
	.byte		N48   , Gs3 
	.byte		N48   , Dn4 
	.byte	W60
@ 025   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 026   ----------------------------------------
mus_hunting_for_your_dream_2_026:
	.byte		N12   , As2 , v060
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        As2 
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W24
	.byte		        As2 
	.byte		N12   , Fs3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte		N12   , Cs4 
	.byte	W24
	.byte		        Fs2 
	.byte		N12   , Ds3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
mus_hunting_for_your_dream_2_028:
	.byte		N36   , Gs2 , v060
	.byte		N12   , Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte		N12   , Cs4 
	.byte	W24
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N24   , Fs2 
	.byte		N12   , Fs3 
	.byte		N12   , Bn3 
	.byte	W24
	.byte		        Fn2 
	.byte		N12   , Fn3 
	.byte		N12   , As3 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
mus_hunting_for_your_dream_2_030:
	.byte		N36   , Fs2 , v060
	.byte		N12   , Fs3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte		N12   , Bn3 
	.byte	W24
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N24   , Fn2 
	.byte		N12   , Fn3 
	.byte		N12   , As3 
	.byte	W24
	.byte		        Ds2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
mus_hunting_for_your_dream_2_032:
	.byte		N72   , Fn2 , v060
	.byte		N72   , Fn3 
	.byte		N72   , As3 
	.byte	W96
	.byte	PEND
@ 033   ----------------------------------------
mus_hunting_for_your_dream_2_033:
	.byte		N72   , Gs2 , v060
	.byte		N72   , Gs3 
	.byte		N72   , Cs4 
	.byte	W96
	.byte	PEND
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte		        Fs2 
	.byte		N72   , Fs3 
	.byte		N72   , Cs4 
	.byte	W84
	.byte		N12   , En2 
	.byte		N12   , En3 
	.byte		N12   , Bn3 
	.byte	W12
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte		N72   , Dn2 
	.byte		N72   , Dn3 
	.byte		N72   , An3 
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte		        En2 
	.byte		N72   , En3 
	.byte		N72   , Bn3 
	.byte	W84
	.byte		N12   , Dn2 
	.byte		N12   , Dn3 
	.byte		N12   , An3 
	.byte	W12
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte		N72   , Cs2 
	.byte		N72   , Cs3 
	.byte		N72   , Gs3 
	.byte	W96
@ 042   ----------------------------------------
	.byte		N24   , Gs2 
	.byte		N24   , Gs3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        En2 
	.byte		N24   , En3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Cs2 
	.byte		N24   , Cs3 
	.byte		N24   , En3 
	.byte	W24
	.byte		        Gs1 
	.byte		N24   , Gs2 
	.byte		N24   , Cs3 
	.byte	W24
@ 043   ----------------------------------------
	.byte		N72   , Dn2 
	.byte		N72   , Dn3 
	.byte		N72   , An3 
	.byte	W84
	.byte		N12   , Cs2 
	.byte		N12   , Cs3 
	.byte		N12   , Gs3 
	.byte	W12
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte		N72   , Fs2 
	.byte		N72   , Fs3 
	.byte		N72   , Bn3 
	.byte	W96
@ 046   ----------------------------------------
	.byte		N24   , Bn2 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fs3 
	.byte		N24   , Fs4 
	.byte	W24
@ 047   ----------------------------------------
	.byte		N72   , Bn2 
	.byte		N72   , Bn3 
	.byte		N72   , En4 
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte		        Cs3 
	.byte		N72   , Cs4 
	.byte		N72   , Fn4 
	.byte	W96
@ 050   ----------------------------------------
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Cs4 
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Fn4 
	.byte	W06
@ 051   ----------------------------------------
	.byte		N42   , Fs3 
	.byte		N72   , Cs4 
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N06   , Fs3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
@ 052   ----------------------------------------
	.byte		N48   , En3 
	.byte		N72   , Bn3 
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Bn2 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte	W12
@ 053   ----------------------------------------
	.byte		N42   , Dn3 
	.byte		N72   , An3 
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        En3 
	.byte		N06   , En4 
	.byte	W06
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
@ 054   ----------------------------------------
	.byte		N72   , Cs3 
	.byte		N72   , Gs3 
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N12   , Cs2 
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Cs2 
	.byte		N24   , Cs3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        An2 
	.byte		N12   , An3 
	.byte	W12
@ 055   ----------------------------------------
	.byte		N36   , Fs2 
	.byte		N48   , Fs3 
	.byte		N48   , Bn3 
	.byte	W36
	.byte		N06   , An2 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N36   , Gs2 
	.byte		N48   , Gs3 
	.byte		N48   , Cs4 
	.byte	W36
	.byte		N06   , Bn2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W06
@ 056   ----------------------------------------
	.byte		N48   , An2 
	.byte		N48   , An3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N24   , Bn2 
	.byte		N48   , Bn3 
	.byte		N36   , En4 
	.byte	W24
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        En3 
	.byte		N06   , En4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W06
@ 057   ----------------------------------------
	.byte		N12   , Bn3 
	.byte		N72   , Fs4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N06   , Cs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		N06   , Cs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N06   , Cs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		N06   , Cs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
@ 058   ----------------------------------------
	.byte		N06   , An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        As3 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Dn5 
	.byte	W06
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_010
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_012
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_014
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_012
@ 065   ----------------------------------------
	.byte		N12   , Cs2 , v060
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 
	.byte	W36
	.byte		N36   , Cs2 
	.byte		N36   , Cs4 
	.byte		N36   , Fn4 
	.byte	W36
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 066   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
@ 067   ----------------------------------------
	.byte	W18
	.byte		N48   , Bn3 
	.byte	W18
	.byte		        Fs1 
	.byte		N48   , Fs3 
	.byte		N30   , Bn3 
	.byte	W60
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_020
@ 070   ----------------------------------------
	.byte	W12
	.byte		N12   , Ds3 , v060
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_022
@ 072   ----------------------------------------
	.byte	W12
	.byte		N12   , Gs3 , v060
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 073   ----------------------------------------
	.byte		N06   , As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 074   ----------------------------------------
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_026
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_028
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_030
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_032
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_033
@ 083   ----------------------------------------
	.byte		N72   , Cs2 , v060
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 084   ----------------------------------------
	.byte		N72   , Fs2 
	.byte		N72   , Fs3 
	.byte		N72   , En4 
	.byte	W96
@ 085   ----------------------------------------
	.byte	W48
	.byte		N24   , An3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
@ 086   ----------------------------------------
	.byte		N72   , Dn2 
	.byte		N72   , An2 
	.byte		N24   , Cs3 
	.byte	W84
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 087   ----------------------------------------
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 088   ----------------------------------------
	.byte		N72   , En2 
	.byte		N72   , Bn2 
	.byte		N48   , En3 
	.byte	W48
	.byte		        An3 
	.byte	W36
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte	W12
@ 089   ----------------------------------------
	.byte		N48   , Dn3 
	.byte	W48
	.byte		N24   , En3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
@ 090   ----------------------------------------
	.byte		N72   , Cs2 
	.byte		N72   , Gs2 
	.byte		N48   , Bn3 
	.byte	W48
	.byte		N24   , An3 
	.byte	W36
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 091   ----------------------------------------
	.byte		N24   , Gs2 
	.byte		N24   , Cs3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        En2 
	.byte		N24   , Gs2 
	.byte		N24   , En3 
	.byte	W24
	.byte		        Cs2 
	.byte		N24   , En2 
	.byte		N24   , Cs3 
	.byte	W24
	.byte		        Gs1 
	.byte		N24   , Cs2 
	.byte		N24   , Gs2 
	.byte	W24
@ 092   ----------------------------------------
	.byte		N72   , Dn2 
	.byte		N48   , Fs2 
	.byte		N72   , An2 
	.byte	W84
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte	W12
@ 093   ----------------------------------------
	.byte	W24
	.byte		N24   , Fs2 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		        En3 
	.byte	W24
@ 094   ----------------------------------------
	.byte		N72   , Fs2 
	.byte		N72   , Bn2 
	.byte		N72   , Dn3 
	.byte	W96
@ 095   ----------------------------------------
	.byte		N24   , Bn2 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        Fs3 
	.byte		N24   , An3 
	.byte	W24
@ 096   ----------------------------------------
	.byte		N72   , Bn2 
	.byte		N72   , En3 
	.byte		N24   , Gs3 
	.byte	W96
@ 097   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
@ 098   ----------------------------------------
	.byte		N72   , Cs3 
	.byte		N72   , Fn3 
	.byte	W96
@ 099   ----------------------------------------
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 100   ----------------------------------------
	.byte		N12   , Dn2 , v064
	.byte		N24   , Dn3 , v060
	.byte		N36   , Fs3 
	.byte	W12
	.byte		N12   , Dn3 , v064
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W60
@ 101   ----------------------------------------
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N24   , Fs3 , v060
	.byte		N24   , Gs3 , v064
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 102   ----------------------------------------
	.byte		N12   , Cs2 
	.byte		N36   , En3 , v060
	.byte		N36   , En4 
	.byte	W12
	.byte		N12   , Cs3 , v064
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs3 
	.byte		N36   , Cs4 , v060
	.byte	W12
	.byte		N12   , An3 , v064
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte		N24   , Bn3 , v060
	.byte	W12
	.byte		N12   , An2 , v064
	.byte	W12
@ 103   ----------------------------------------
	.byte		        Cs2 
	.byte		N48   , An3 , v060
	.byte	W12
	.byte		N12   , Cs3 , v064
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs3 
	.byte		N24   , En4 , v060
	.byte	W24
	.byte		N12   , An3 , v064
	.byte		N24   , Cs4 , v060
	.byte	W12
	.byte		N12   , Fs3 , v064
	.byte	W12
@ 104   ----------------------------------------
	.byte		N72   , Bn2 , v060
	.byte		N24   , Bn3 , v064
	.byte		N36   , Dn4 , v060
	.byte	W24
	.byte		N12   , Fs3 , v064
	.byte	W12
	.byte		N24   , Bn3 
	.byte		N12   , Bn4 , v060
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N24   , An3 , v064
	.byte		N12   , Fs4 , v060
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 105   ----------------------------------------
	.byte		N72   , Gs2 
	.byte		N72   , Bn2 
	.byte		N24   , Gs3 , v064
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Gs3 
	.byte		N24   , An4 , v060
	.byte	W24
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N24   , Dn4 , v064
	.byte		N12   , Fs4 , v060
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 106   ----------------------------------------
	.byte		N72   , An2 
	.byte		N72   , Cs3 
	.byte		N24   , Cs4 , v064
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W36
	.byte		        An3 
	.byte	W24
@ 107   ----------------------------------------
	.byte		N48   , Gn2 , v060
	.byte		N48   , Gn3 , v064
	.byte	W48
	.byte		N24   , An2 , v060
	.byte		N24   , An3 , v064
	.byte	W24
	.byte		        Gn2 , v060
	.byte		N24   , Gn3 , v064
	.byte	W24
@ 108   ----------------------------------------
	.byte		N36   , Dn3 , v060
	.byte		N12   , Fs3 , v064
	.byte		N72   , Fs4 , v060
	.byte	W12
	.byte		N12   , An2 , v064
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 109   ----------------------------------------
	.byte		        Fs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W24
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N06   , An3 
	.byte		N06   , An4 , v060
	.byte	W06
	.byte		        Bn3 , v064
	.byte		N06   , Bn4 , v060
	.byte	W06
@ 110   ----------------------------------------
	.byte		N72   , Cs3 
	.byte		N24   , Cs4 , v064
	.byte		N36   , Cs5 , v060
	.byte	W24
	.byte		N12   , Gs3 , v064
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte		N24   , Dn5 , v060
	.byte	W12
	.byte		N12   , Gs3 , v064
	.byte	W12
@ 111   ----------------------------------------
	.byte		N72   , Fs2 , v060
	.byte		N12   , Fs3 , v064
	.byte		N24   , Cs5 , v060
	.byte	W12
	.byte		N12   , Cs3 , v064
	.byte	W12
	.byte		        En3 
	.byte		N12   , Bn4 , v060
	.byte	W12
	.byte		        Fs3 , v064
	.byte		N24   , An4 , v060
	.byte	W24
	.byte		N12   , An3 , v064
	.byte		N12   , An4 , v060
	.byte	W12
	.byte		        Bn3 , v064
	.byte		N12   , Bn4 , v060
	.byte	W12
	.byte		        Cs4 , v064
	.byte		N12   , Cs5 , v060
	.byte	W12
@ 112   ----------------------------------------
	.byte		N72   , Gn2 
	.byte		N12   , Dn4 , v064
	.byte		N72   , Dn5 , v060
	.byte	W12
	.byte		N12   , Dn3 , v064
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 113   ----------------------------------------
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 114   ----------------------------------------
	.byte		N72   , Fs2 , v060
	.byte		N24   , Bn3 
	.byte		N72   , Cs5 
	.byte	W12
	.byte		N12   , Cs3 , v064
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte		N24   , Fs3 , v060
	.byte		N24   , Bn3 
	.byte	W12
	.byte		N12   , Cs4 , v064
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte		N24   , Bn3 , v060
	.byte	W12
	.byte		N12   , Cs3 , v064
	.byte	W12
@ 115   ----------------------------------------
	.byte		N72   
	.byte		N72   , As3 , v060
	.byte		N72   , Cs4 , v064
	.byte	W96
@ 116   ----------------------------------------
	.byte		        Ds3 , v060
	.byte		N36   , Bn3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 117   ----------------------------------------
	.byte		N72   , Fs2 
	.byte		N24   , Fs3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 118   ----------------------------------------
	.byte		N72   , Gs2 
	.byte		N36   , Gs3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 119   ----------------------------------------
	.byte		N72   , Fs2 
	.byte		N24   , Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 120   ----------------------------------------
	.byte		N72   , Gs2 
	.byte		N36   , En3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 121   ----------------------------------------
	.byte		N72   , Fs2 
	.byte		N36   , Ds3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 122   ----------------------------------------
	.byte		N72   , Cs2 
	.byte		N24   , Cs3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 123   ----------------------------------------
	.byte		N72   , Cs2 
	.byte		N72   , As2 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 124   ----------------------------------------
	.byte		N72   , Gs2 
	.byte		N72   , Ds3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte		N24   , Gs3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        As3 
	.byte		N24   , Ds4 
	.byte	W24
@ 125   ----------------------------------------
	.byte		N72   , Fs2 
	.byte		N72   , Fs3 
	.byte		N48   , Fs4 
	.byte	W48
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        As3 
	.byte	W24
@ 126   ----------------------------------------
	.byte		N72   , Bn2 
	.byte		N72   , Gs3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        En4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Ds4 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte		N24   , Gs4 
	.byte	W24
@ 127   ----------------------------------------
	.byte		N72   , Fs2 
	.byte		N72   , Fs3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
@ 128   ----------------------------------------
	.byte		N72   , En2 
	.byte		N72   , En3 
	.byte		N72   , En4 
	.byte	W96
@ 129   ----------------------------------------
	.byte		        Fs2 
	.byte		N72   , Fs3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        En4 
	.byte	W24
@ 130   ----------------------------------------
	.byte		N36   , En2 
	.byte		N36   , En3 
	.byte		N36   , En4 
	.byte	W36
	.byte		N12   , Ds2 
	.byte		N12   , Ds3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N48   , Ds2 
	.byte		N48   , Ds3 
	.byte		N48   , Ds4 
	.byte	W48
@ 131   ----------------------------------------
	.byte		        Fn2 
	.byte		N48   , Fn3 
	.byte		N48   , Fn4 
	.byte	W48
	.byte		        Dn3 
	.byte		N48   , Dn4 
	.byte		N48   , Fn4 
	.byte	W48
@ 132   ----------------------------------------
	.byte		N72   , As2 
	.byte		N72   , As3 
	.byte		N72   , Ds4 
	.byte	W36
	.byte		N06   , Ds3 , v056
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N12   , Fs3 , v060
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 133   ----------------------------------------
	.byte		N72   , Gs2 
	.byte		N36   , Fn3 
	.byte		N72   , Cs4 
	.byte	W36
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 134   ----------------------------------------
	.byte		N72   , Fs2 
	.byte		N72   , Fs3 
	.byte		N72   , Bn3 
	.byte	W36
	.byte		N06   , Bn2 , v056
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N12   , Ds3 , v060
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 135   ----------------------------------------
	.byte		N72   , Fn2 
	.byte		N72   , Fn3 
	.byte		N72   , As3 
	.byte	W36
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N48   , As2 
	.byte	W48
@ 136   ----------------------------------------
	.byte		N72   , Ds2 
	.byte		N42   , Ds3 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N03   , Bn2 , v056
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		N06   , Fs3 , v060
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
@ 137   ----------------------------------------
	.byte		N72   , Fn2 
	.byte		N18   , Fn3 
	.byte		N36   , As3 
	.byte	W06
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N04   , Fn3 , v056
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		N06   , As3 , v060
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 138   ----------------------------------------
	.byte		N72   , Fs2 
	.byte		N72   , Fs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N03   , Fs4 
	.byte	W03
	.byte		N06   , Gs4 
	.byte	W15
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N03   , Ds4 , v056
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		N06   , Fs4 , v060
	.byte	W09
	.byte		N03   , Ds5 , v056
	.byte	W03
	.byte		N06   , Ds3 , v060
	.byte	W12
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N03   , Ds3 
	.byte	W03
	.byte		N03   
	.byte	W03
@ 139   ----------------------------------------
	.byte		N48   , Fn2 
	.byte		N48   , Fn3 
	.byte		N48   , As3 
	.byte	W12
	.byte		N04   , Ds3 , v056
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        As4 
	.byte	W07
	.byte		N04   
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        As4 
	.byte	W01
	.byte		N48   , As2 , v060
	.byte		N36   , As3 
	.byte		N28   , Dn4 
	.byte	W03
	.byte		N03   , Bn4 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N03   , Fn4 
	.byte	W03
	.byte		N04   , Dn4 , v056
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
@ 140   ----------------------------------------
	.byte		N72   , As2 , v060
	.byte		N72   , As3 
	.byte		N72   , Ds4 
	.byte	W36
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
@ 141   ----------------------------------------
	.byte		N72   , Gs2 
	.byte		N72   , Gs3 
	.byte		N36   , Fn4 
	.byte	W36
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 142   ----------------------------------------
	.byte		N72   , Fs2 
	.byte		N72   , Fs3 
	.byte		N42   , Bn3 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 143   ----------------------------------------
	.byte		N72   , Fn2 
	.byte		N72   , Fn3 
	.byte		N36   , Fn4 
	.byte	W36
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N48   , As3 
	.byte	W48
@ 144   ----------------------------------------
	.byte		        Gs2 
	.byte		N48   , Gs3 
	.byte		N48   , Bn3 
	.byte	W48
	.byte		        Ds3 
	.byte		N48   , Ds4 
	.byte	W48
@ 145   ----------------------------------------
	.byte		        As2 
	.byte		N48   , As3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        Fn3 
	.byte		N48   , Fn4 
	.byte	W48
@ 146   ----------------------------------------
	.byte		N72   , Bn2 
	.byte		N72   , Bn3 
	.byte		N72   , Ds4 
	.byte	W96
@ 147   ----------------------------------------
	.byte	W72
	.byte		N06   
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
@ 148   ----------------------------------------
	.byte		N12   , Fn3 
	.byte		N12   , Fn4 
	.byte		N12   , As4 
	.byte	W36
	.byte		        Fn3 
	.byte		N12   , Fn4 
	.byte		N12   , As4 
	.byte	W36
	.byte		        Fn3 
	.byte		N12   , Fn4 
	.byte		N12   , As4 
	.byte	W24
@ 149   ----------------------------------------
	.byte		        Fn3 
	.byte		N12   , Fn4 
	.byte		N12   , As4 
	.byte	W36
	.byte		        Fn3 
	.byte		N12   , Fn4 
	.byte		N12   , As4 
	.byte	W36
	.byte		N06   , Ds3 
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W06
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 150   ----------------------------------------
	.byte		N12   , Dn3 
	.byte		N12   , Dn4 
	.byte		N12   , As4 
	.byte	W36
	.byte		        Dn3 
	.byte		N12   , Dn4 
	.byte		N12   , As4 
	.byte	W36
	.byte		        Dn3 
	.byte		N12   , Dn4 
	.byte		N12   , As4 
	.byte	W24
@ 151   ----------------------------------------
	.byte		N08   
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        Fs4 
	.byte	W08
	.byte		        Fn4 
	.byte	W08
	.byte		        Ds4 
	.byte	W08
	.byte		        Dn4 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        Fs3 
	.byte	W08
	.byte		        Fn3 
	.byte	W08
	.byte		        Fs3 
	.byte	W08
@ 152   ----------------------------------------
	.byte		N48   , As2 
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W60
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte		N12   , Cs4 
	.byte	W24
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte		N12   , Bn3 
	.byte	W12
@ 153   ----------------------------------------
	.byte	W96
@ 154   ----------------------------------------
	.byte		N48   , Gs2 
	.byte		N12   , Gs3 
	.byte		N12   , Cs4 
	.byte	W60
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte		N12   , Bn3 
	.byte	W24
	.byte		        Fn2 
	.byte		N12   , Fn3 
	.byte		N12   , As3 
	.byte	W12
@ 155   ----------------------------------------
	.byte	W96
@ 156   ----------------------------------------
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte		N12   , Bn3 
	.byte	W60
	.byte		        Fn2 
	.byte		N12   , Fn3 
	.byte		N12   , As3 
	.byte	W24
	.byte		        Ds2 
	.byte		N12   , Ds3 
	.byte		N12   , Gs3 
	.byte	W12
@ 157   ----------------------------------------
	.byte	W96
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_032
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_033
@ 160   ----------------------------------------
	.byte	W96
@ 161   ----------------------------------------
	.byte	W96
@ 162   ----------------------------------------
	.byte	W48
@ 163   ----------------------------------------
mus_hunting_for_your_dream_2_163:
	.byte		N72   , Fs2 , v060
	.byte		N72   , Cs3 
	.byte		N72   , Cs4 
	.byte	W96
	.byte	PEND
@ 164   ----------------------------------------
mus_hunting_for_your_dream_2_164:
	.byte	W48
	.byte		N24   , An3 , v060
	.byte		N24   , An4 
	.byte	W24
	.byte		        Gs3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte	PEND
@ 165   ----------------------------------------
mus_hunting_for_your_dream_2_165:
	.byte		N72   , Dn2 , v060
	.byte		N24   , Cs3 
	.byte		N24   , Cs4 
	.byte	W84
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W06
	.byte	PEND
@ 166   ----------------------------------------
mus_hunting_for_your_dream_2_166:
	.byte		N24   , Bn3 , v060
	.byte		N24   , Bn4 
	.byte	W24
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte		        Gs3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	PEND
@ 167   ----------------------------------------
mus_hunting_for_your_dream_2_167:
	.byte		N72   , En2 , v060
	.byte		N48   , En3 
	.byte		N48   , En4 
	.byte	W48
	.byte		        An3 
	.byte		N48   , An4 
	.byte	W36
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte	PEND
@ 168   ----------------------------------------
mus_hunting_for_your_dream_2_168:
	.byte		N48   , Dn3 , v060
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N24   , En3 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
@ 169   ----------------------------------------
mus_hunting_for_your_dream_2_169:
	.byte		N72   , Cs2 , v060
	.byte		N48   , Bn3 
	.byte		N48   , Bn4 
	.byte	W48
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W36
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W06
	.byte	PEND
@ 170   ----------------------------------------
mus_hunting_for_your_dream_2_170:
	.byte		N24   , Gs2 , v060
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        En2 
	.byte		N24   , En3 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Cs2 
	.byte		N24   , Cs3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Gs1 
	.byte		N24   , Gs2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte	PEND
@ 171   ----------------------------------------
mus_hunting_for_your_dream_2_171:
	.byte		N72   , Dn2 , v060
	.byte		N72   , An2 
	.byte		N48   , Fs3 
	.byte	W84
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte	PEND
@ 172   ----------------------------------------
mus_hunting_for_your_dream_2_172:
	.byte	W24
	.byte		N24   , Fs2 , v060
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        An2 
	.byte		N24   , An3 
	.byte	W24
	.byte		        En3 
	.byte		N24   , En4 
	.byte	W24
	.byte	PEND
@ 173   ----------------------------------------
mus_hunting_for_your_dream_2_173:
	.byte		N72   , Fs2 , v060
	.byte		N72   , Dn3 
	.byte		N72   , Dn4 
	.byte	W96
	.byte	PEND
@ 174   ----------------------------------------
mus_hunting_for_your_dream_2_174:
	.byte		N24   , Bn2 , v060
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fs3 
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	PEND
@ 175   ----------------------------------------
mus_hunting_for_your_dream_2_175:
	.byte		N72   , Bn2 , v060
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 
	.byte	W96
	.byte	PEND
@ 176   ----------------------------------------
mus_hunting_for_your_dream_2_176:
	.byte		N24   , Gs3 , v060
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Fs3 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
@ 177   ----------------------------------------
mus_hunting_for_your_dream_2_177:
	.byte		N72   , Cs3 , v060
	.byte		N72   , Fn3 
	.byte		N72   , Cs4 
	.byte	W96
	.byte	PEND
@ 178   ----------------------------------------
	.byte		N24   , Dn4 
	.byte		N24   , Dn5 
	.byte	W24
	.byte		        Cs4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        Bn3 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		        An3 
	.byte		N24   , An4 
	.byte	W24
@ 179   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_163
@ 180   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_164
@ 181   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_165
@ 182   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_166
@ 183   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_167
@ 184   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_168
@ 185   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_169
@ 186   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_170
@ 187   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_171
@ 188   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_172
@ 189   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_173
@ 190   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_174
@ 191   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_175
@ 192   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_176
@ 193   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_177
@ 194   ----------------------------------------
	.byte		N06   , Gs2 , v060
	.byte		N24   , Dn4 
	.byte		N24   , Dn5 
	.byte	W06
	.byte		N06   , An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N24   , Cs4 
	.byte		N24   , Cs5 
	.byte	W06
	.byte		N06   , En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte		N24   , Bn3 
	.byte		N24   , Bn4 
	.byte	W06
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N24   , An3 
	.byte		N06   , Cs4 
	.byte		N24   , An4 
	.byte	W06
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W12
@ 195   ----------------------------------------
	.byte		N72   , Fs2 
	.byte		N06   , Fs3 
	.byte		N18   , Gs3 
	.byte	W06
	.byte		N12   
	.byte	W18
	.byte		        Fs3 
	.byte	W24
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W24
	.byte		        Cs3 
	.byte	W12
@ 196   ----------------------------------------
	.byte	W48
	.byte		N16   
	.byte	W16
	.byte		        Dn3 
	.byte	W16
	.byte		        En3 
	.byte	W16
@ 197   ----------------------------------------
	.byte		N72   , Dn2 
	.byte		N72   , An2 
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , Cs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N24   , Cs4 
	.byte	W06
	.byte		        Dn3 
	.byte	W24
@ 198   ----------------------------------------
	.byte		        Bn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Gs3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N24   , An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 199   ----------------------------------------
	.byte		N72   , En2 
	.byte		N48   , En3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N12   , En4 
	.byte	W30
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N12   , Gs3 
	.byte	W06
	.byte		N48   , An3 
	.byte	W24
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , An3 
	.byte	W12
@ 200   ----------------------------------------
	.byte		N48   , Dn3 
	.byte		N12   , Bn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N24   
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
@ 201   ----------------------------------------
	.byte		N72   , Cs2 
	.byte		N72   , Gs2 
	.byte		N48   , Bn3 
	.byte	W48
	.byte		N24   , An3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N12   , Bn3 
	.byte	W06
	.byte		N06   , An3 
	.byte	W06
@ 202   ----------------------------------------
	.byte		N24   , Gs2 
	.byte		N24   , Gs3 
	.byte		N12   , Cs4 
	.byte	W24
	.byte		N24   , En2 
	.byte		N24   , En3 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N24   , Bn4 
	.byte	W12
	.byte		        Cs2 
	.byte		N24   , En2 
	.byte		N24   , Cs3 
	.byte	W24
	.byte		        Gs1 
	.byte		N24   , Cs2 
	.byte		N24   , Gs2 
	.byte	W24
@ 203   ----------------------------------------
	.byte		N72   , Dn2 
	.byte		N72   , An2 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
@ 204   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N24   , Fs2 
	.byte		N24   , En4 
	.byte	W24
	.byte		        An2 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N24   , En3 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 205   ----------------------------------------
	.byte		N72   , Fs2 
	.byte		N72   , Dn3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 206   ----------------------------------------
	.byte		N24   
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N24   , Cs3 
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        An2 
	.byte		N18   , Dn3 
	.byte	W06
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N12   , Fs3 
	.byte		N24   , An3 
	.byte	W06
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 207   ----------------------------------------
	.byte		N72   , Bn2 
	.byte		N30   , En3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N06   , En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , En4 
	.byte	W06
@ 208   ----------------------------------------
	.byte		        Fs3 
	.byte		N24   , Bn3 
	.byte	W06
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 209   ----------------------------------------
	.byte		N72   , Cs3 
	.byte		N18   , Cs4 
	.byte		N72   , Cs5 
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
@ 210   ----------------------------------------
	.byte		N24   , As3 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        Gs3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Fs3 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , Fn4 
	.byte	W24
@ 211   ----------------------------------------
mus_hunting_for_your_dream_2_211:
	.byte		N72   , As2 , v060
	.byte		N72   , As3 
	.byte		N72   , As4 
	.byte	W96
	.byte	PEND
@ 212   ----------------------------------------
	.byte	W48
	.byte		N24   , Ds3 
	.byte		N24   , Ds4 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        Ds3 
	.byte		N24   , Cs4 
	.byte		N24   , Fn4 
	.byte	W24
@ 213   ----------------------------------------
	.byte		        As2 
	.byte		N24   , As3 
	.byte		N24   , As4 
	.byte	W84
	.byte		N06   , Ds3 
	.byte		N06   , Cs4 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte		N06   , Fs4 
	.byte	W06
@ 214   ----------------------------------------
	.byte		N24   , Ds3 
	.byte		N24   , Fn4 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Ds3 
	.byte		N24   , Ds4 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        Ds3 
	.byte		N24   , Cs4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        Ds3 
	.byte		N24   , Ds4 
	.byte		N24   , Fs4 
	.byte	W24
@ 215   ----------------------------------------
	.byte		N48   , Cs3 
	.byte		N48   , Cs4 
	.byte		N48   , Cs5 
	.byte	W48
	.byte		        Fs2 
	.byte		N48   , Fs3 
	.byte		N48   , Ds4 
	.byte	W48
@ 216   ----------------------------------------
	.byte		        Bn2 
	.byte		N48   , Bn3 
	.byte		N48   , Bn4 
	.byte	W48
	.byte		N24   , Cs3 
	.byte		N24   , Cs4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , Bn3 
	.byte		N24   , Bn4 
	.byte	W24
@ 217   ----------------------------------------
	.byte		N48   , Ds3 
	.byte		N48   , Fn4 
	.byte		N48   , Gs4 
	.byte	W48
	.byte		N24   , Ds3 
	.byte		N24   , Ds4 
	.byte		N24   , Fs4 
	.byte	W36
	.byte		N06   , Ds3 
	.byte		N06   , Cs4 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte		N06   , Fs4 
	.byte	W06
@ 218   ----------------------------------------
	.byte		N24   , Ds3 
	.byte		N24   , Cs4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , Cs4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        As2 
	.byte		N24   , As3 
	.byte		N24   , As4 
	.byte	W24
	.byte		        Fn2 
	.byte		N24   , Fn3 
	.byte		N24   , Fn4 
	.byte	W24
@ 219   ----------------------------------------
	.byte		N48   , Ds2 
	.byte		N48   , Ds3 
	.byte		N48   , Ds4 
	.byte	W96
@ 220   ----------------------------------------
	.byte	W24
	.byte		N24   , Ds2 
	.byte		N24   , Ds3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        Fs2 
	.byte		N24   , Fs3 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , Cs4 
	.byte		N24   , Cs5 
	.byte	W24
@ 221   ----------------------------------------
	.byte		N72   , Bn2 
	.byte		N72   , Bn3 
	.byte		N72   , Bn4 
	.byte	W96
@ 222   ----------------------------------------
	.byte	W24
	.byte		N24   , As2 
	.byte		N24   , As3 
	.byte		N24   , As4 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , Bn3 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		        Ds3 
	.byte		N24   , Ds4 
	.byte		N24   , Fs4 
	.byte	W24
@ 223   ----------------------------------------
	.byte		        Fn2 
	.byte		N24   , Cs4 
	.byte		N24   , Fn4 
	.byte	W96
@ 224   ----------------------------------------
	.byte		        Fn2 
	.byte		N24   , Ds3 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        Gs1 
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        As1 
	.byte		N24   , As3 
	.byte		N24   , As4 
	.byte	W24
	.byte		        Bn1 
	.byte		N24   , Bn3 
	.byte		N24   , Bn4 
	.byte	W24
@ 225   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_211
@ 226   ----------------------------------------
	.byte		N06   , Dn3 , v060
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Dn4 
	.byte	W06
@ 227   ----------------------------------------
	.byte		N72   , As1 
	.byte		N36   , Ds3 
	.byte		N36   , Ds4 
	.byte	W36
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        As2 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
@ 228   ----------------------------------------
	.byte		N72   , Gs1 
	.byte		N36   , Fn3 
	.byte		N36   , Fn4 
	.byte	W36
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N24   , Gs2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As2 
	.byte		N12   , As3 
	.byte	W12
@ 229   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_2_002
@ 230   ----------------------------------------
	.byte		N72   , Fn1 , v060
	.byte		N36   , Fn3 
	.byte		N36   , Fn4 
	.byte	W36
	.byte		N12   , As2 
	.byte		N12   , Fn3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N24   , As2 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
@ 231   ----------------------------------------
	.byte		N48   , Gs1 
	.byte		N36   , Gs3 
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N06   , Fs3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N48   , Fn1 
	.byte		N36   , As3 
	.byte		N36   , As4 
	.byte	W36
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , As4 
	.byte	W06
@ 232   ----------------------------------------
	.byte		N48   , Fs1 
	.byte		N48   , Bn3 
	.byte		N48   , Bn4 
	.byte	W48
	.byte		        Gs1 
	.byte		N24   , Cs4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		N06   , Bn2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Fn4 
	.byte	W06
@ 233   ----------------------------------------
	.byte		N72   , As1 
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Ds3 
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Ds3 
	.byte		N12   , Ds4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Ds3 
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Ds3 
	.byte		N12   , Ds4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
@ 234   ----------------------------------------
	.byte		N72   , Fn1 
	.byte		N06   , An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        As3 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Dn5 
	.byte	W06
@ 235   ----------------------------------------
	.byte		N72   , As1 
	.byte		N72   , As3 
	.byte		N72   , Ds5 
	.byte	W72
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_hunting_for_your_dream_3:
	.byte	KEYSH , mus_hunting_for_your_dream_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 84*mus_hunting_for_your_dream_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N36   , Ds1 , v076
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 001   ----------------------------------------
mus_hunting_for_your_dream_3_001:
	.byte		N36   , Fn1 , v076
	.byte	W36
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N24   
	.byte	W48
	.byte	PEND
@ 002   ----------------------------------------
mus_hunting_for_your_dream_3_002:
	.byte		N36   , Bn0 , v076
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_hunting_for_your_dream_3_003:
	.byte		N36   , Fn1 , v076
	.byte	W36
	.byte		N12   , As0 
	.byte	W12
	.byte		N24   , As1 
	.byte	W24
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_hunting_for_your_dream_3_004:
	.byte		N36   , Gs1 , v076
	.byte	W36
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N36   , As0 
	.byte	W36
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_hunting_for_your_dream_3_005:
	.byte		N36   , Bn0 , v076
	.byte	W36
	.byte		N06   , As0 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N36   , Cs1 
	.byte	W36
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
mus_hunting_for_your_dream_3_006:
	.byte		N06   , Ds1 , v076
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
@ 007   ----------------------------------------
mus_hunting_for_your_dream_3_007:
	.byte		N06   , As0 , v076
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
@ 008   ----------------------------------------
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 009   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 010   ----------------------------------------
mus_hunting_for_your_dream_3_010:
	.byte		N24   , Ds1 , v076
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
mus_hunting_for_your_dream_3_011:
	.byte		N12   , Ds1 , v076
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
mus_hunting_for_your_dream_3_012:
	.byte		N12   , Bn0 , v076
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , As0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
@ 014   ----------------------------------------
mus_hunting_for_your_dream_3_014:
	.byte		N12   , Cs1 , v076
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_012
@ 016   ----------------------------------------
mus_hunting_for_your_dream_3_016:
	.byte		N12   , As0 , v076
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 017   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , As0 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , As0 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , As0 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 018   ----------------------------------------
mus_hunting_for_your_dream_3_018:
	.byte		N12   , Bn0 , v076
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_018
@ 020   ----------------------------------------
	.byte		N12   , Gs1 , v076
	.byte	W24
	.byte		        Ds1 
	.byte	W12
	.byte		        Gs1 
	.byte	W24
	.byte		        Bn1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 021   ----------------------------------------
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , As1 
	.byte	W12
	.byte		N24   , Gs1 
	.byte	W24
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
@ 022   ----------------------------------------
mus_hunting_for_your_dream_3_022:
	.byte		N12   , Cs1 , v076
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        As0 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 025   ----------------------------------------
mus_hunting_for_your_dream_3_025:
	.byte		N06   , Dn1 , v076
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte	PEND
@ 026   ----------------------------------------
mus_hunting_for_your_dream_3_026:
	.byte		N12   , Ds1 , v076
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W24
	.byte		        Bn0 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_hunting_for_your_dream_3_027:
	.byte	W12
	.byte		N12   , Bn1 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_hunting_for_your_dream_3_028:
	.byte		N12   , Cs1 , v076
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W24
	.byte		        As0 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_hunting_for_your_dream_3_029:
	.byte	W12
	.byte		N12   , As1 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
mus_hunting_for_your_dream_3_030:
	.byte		N12   , Bn1 , v076
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        As1 
	.byte	W24
	.byte		        Gs1 
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
mus_hunting_for_your_dream_3_031:
	.byte	W12
	.byte		N12   , Gs1 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
	.byte		        As1 
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
	.byte		N06   
	.byte	W06
@ 033   ----------------------------------------
mus_hunting_for_your_dream_3_033:
	.byte		N06   , Cs2 , v076
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
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
mus_hunting_for_your_dream_3_035:
	.byte		N12   , Fs1 , v076
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
mus_hunting_for_your_dream_3_036:
	.byte	W12
	.byte		N12   , En1 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_hunting_for_your_dream_3_037:
	.byte		N12   , Dn1 , v076
	.byte	W24
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
@ 038   ----------------------------------------
mus_hunting_for_your_dream_3_038:
	.byte		N12   , Dn1 , v076
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte	PEND
@ 039   ----------------------------------------
mus_hunting_for_your_dream_3_039:
	.byte		N12   , En1 , v076
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
mus_hunting_for_your_dream_3_040:
	.byte	W12
	.byte		N12   , Dn1 , v076
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
@ 041   ----------------------------------------
mus_hunting_for_your_dream_3_041:
	.byte		N12   , Cs1 , v076
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte	PEND
@ 042   ----------------------------------------
mus_hunting_for_your_dream_3_042:
	.byte		N12   , Cs2 , v076
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
@ 043   ----------------------------------------
mus_hunting_for_your_dream_3_043:
	.byte		N12   , Dn1 , v076
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 044   ----------------------------------------
mus_hunting_for_your_dream_3_044:
	.byte		N12   , Cs1 , v076
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
	.byte		        Bn0 
	.byte	W12
	.byte	PEND
@ 045   ----------------------------------------
mus_hunting_for_your_dream_3_045:
	.byte	W12
	.byte		N12   , Bn0 , v076
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
@ 046   ----------------------------------------
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
	.byte		        Cs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 047   ----------------------------------------
mus_hunting_for_your_dream_3_047:
	.byte		N12   , En1 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 048   ----------------------------------------
mus_hunting_for_your_dream_3_048:
	.byte		N12   , En1 , v076
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
@ 049   ----------------------------------------
mus_hunting_for_your_dream_3_049:
	.byte		N06   , Fn1 , v076
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
@ 050   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
@ 051   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 052   ----------------------------------------
	.byte		        Gs1 
	.byte	W36
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W48
@ 053   ----------------------------------------
	.byte		        Dn1 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 054   ----------------------------------------
	.byte		        Gs1 
	.byte	W36
	.byte		        Cs1 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Bn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
@ 055   ----------------------------------------
	.byte		        Bn0 
	.byte	W36
	.byte		N06   , An0 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N36   , Cs1 
	.byte	W36
	.byte		N06   , Bn0 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
@ 056   ----------------------------------------
	.byte		N12   , Dn1 
	.byte	W36
	.byte		N06   , Cs1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N48   , En1 
	.byte	W48
@ 057   ----------------------------------------
	.byte		N06   , Fs1 
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
@ 058   ----------------------------------------
	.byte		        Cs1 
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
	.byte		        As0 
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
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_010
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_011
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_012
@ 062   ----------------------------------------
	.byte		N12   , Bn0 , v076
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_014
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_012
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_016
@ 066   ----------------------------------------
	.byte		N12   , As0 , v076
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
@ 067   ----------------------------------------
	.byte	W24
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 068   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
@ 069   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 070   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , As1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 071   ----------------------------------------
	.byte		        Cs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 072   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 073   ----------------------------------------
	.byte		N06   , As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
@ 074   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_026
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_027
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_028
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_029
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_030
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_031
@ 081   ----------------------------------------
	.byte		N06   , As1 , v076
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
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_033
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_035
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_036
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_037
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_038
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_039
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_040
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_041
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_042
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_043
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_044
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_045
@ 095   ----------------------------------------
mus_hunting_for_your_dream_3_095:
	.byte		N12   , Bn0 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_047
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_048
@ 098   ----------------------------------------
mus_hunting_for_your_dream_3_098:
	.byte		N06   , Cs1 , v076
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
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_033
@ 100   ----------------------------------------
mus_hunting_for_your_dream_3_100:
	.byte		N12   , Dn1 , v076
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
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_100
@ 102   ----------------------------------------
mus_hunting_for_your_dream_3_102:
	.byte		N12   , Cs1 , v076
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
@ 103   ----------------------------------------
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
	.byte		        Dn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
@ 104   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 105   ----------------------------------------
	.byte		N24   , En1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
@ 106   ----------------------------------------
	.byte		N24   , An0 
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
@ 107   ----------------------------------------
mus_hunting_for_your_dream_3_107:
	.byte		N12   , Gn1 , v076
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
@ 108   ----------------------------------------
mus_hunting_for_your_dream_3_108:
	.byte		N12   , Dn1 , v076
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_108
@ 110   ----------------------------------------
	.byte		N12   , Cs1 , v076
	.byte	W24
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W24
	.byte		        Bn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 111   ----------------------------------------
mus_hunting_for_your_dream_3_111:
	.byte		N12   , Fs1 , v076
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
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_107
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_107
@ 114   ----------------------------------------
	.byte		N12   , Fs1 , v076
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
	.byte		N06   
	.byte	W06
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_111
@ 116   ----------------------------------------
	.byte		N12   , Bn0 , v076
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
	.byte		        Cs1 
	.byte	W12
@ 117   ----------------------------------------
	.byte		        Fs1 
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
	.byte		        Ds1 
	.byte	W12
@ 118   ----------------------------------------
mus_hunting_for_your_dream_3_118:
	.byte		N12   , Gs1 , v076
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
@ 119   ----------------------------------------
mus_hunting_for_your_dream_3_119:
	.byte		N12   , Ds1 , v076
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
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_048
@ 121   ----------------------------------------
mus_hunting_for_your_dream_3_121:
	.byte		N12   , Bn0 , v076
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
@ 122   ----------------------------------------
	.byte		        An0 
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
@ 123   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_118
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_119
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_048
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_121
@ 128   ----------------------------------------
	.byte		N12   , Cs1 , v076
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
	.byte		        Gs1 
	.byte	W12
@ 129   ----------------------------------------
	.byte		        Fs1 
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
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_121
@ 131   ----------------------------------------
	.byte		N06   , Cs1 , v076
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
	.byte		        Dn1 
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
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_011
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_022
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_018
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_016
@ 136   ----------------------------------------
mus_hunting_for_your_dream_3_136:
	.byte		N12   , Gs1 , v076
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_016
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_018
@ 139   ----------------------------------------
	.byte		N12   , As0 , v076
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_011
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_022
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_018
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_016
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_136
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_016
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_018
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_018
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_007
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_007
@ 150   ----------------------------------------
mus_hunting_for_your_dream_3_150:
	.byte		N06   , Dn1 , v076
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
@ 151   ----------------------------------------
	.byte		N08   , As1 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		        Fs1 
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		        Ds1 
	.byte	W08
	.byte		        Dn1 
	.byte	W08
	.byte		        Bn0 
	.byte	W08
	.byte		        As0 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		        Fs1 
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		        Fs1 
	.byte	W08
@ 152   ----------------------------------------
	.byte		N24   , Ds1 
	.byte	W60
	.byte		N12   , Cs1 
	.byte	W24
	.byte		        Bn0 
	.byte	W12
@ 153   ----------------------------------------
	.byte	W96
@ 154   ----------------------------------------
	.byte		N24   , Cs1 
	.byte	W60
	.byte		N12   , Bn0 
	.byte	W24
	.byte		        As0 
	.byte	W12
@ 155   ----------------------------------------
	.byte	W96
@ 156   ----------------------------------------
	.byte		N24   , Bn1 
	.byte	W60
	.byte		N12   , As1 
	.byte	W24
	.byte		        Gs1 
	.byte	W12
@ 157   ----------------------------------------
	.byte	W96
@ 158   ----------------------------------------
	.byte		N48   , As1 
	.byte	W96
@ 159   ----------------------------------------
	.byte		N12   , Cs2 
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
	.byte		N06   
	.byte	W06
@ 160   ----------------------------------------
	.byte	W96
@ 161   ----------------------------------------
	.byte	W96
@ 162   ----------------------------------------
	.byte	W48
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_035
@ 164   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_036
@ 165   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_037
@ 166   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_038
@ 167   ----------------------------------------
mus_hunting_for_your_dream_3_167:
	.byte		N12   , En1 , v076
	.byte	W24
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
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 168   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_040
@ 169   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_041
@ 170   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_042
@ 171   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_043
@ 172   ----------------------------------------
	.byte	W12
	.byte		N12   , Cs1 , v076
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
@ 173   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_121
@ 174   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_095
@ 175   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_047
@ 176   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_048
@ 177   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_049
@ 178   ----------------------------------------
	.byte		N06   , Cs1 , v076
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 179   ----------------------------------------
	.byte		N24   , Fs1 
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N24   , Cs2 
	.byte	W24
	.byte		N12   , En1 
	.byte	W12
@ 180   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 181   ----------------------------------------
	.byte		        Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 182   ----------------------------------------
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        An0 
	.byte	W12
@ 183   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_167
@ 184   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_040
@ 185   ----------------------------------------
	.byte		N12   , Cs1 , v076
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
	.byte		        Cs2 
	.byte	W12
@ 186   ----------------------------------------
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 187   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_043
@ 188   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_102
@ 189   ----------------------------------------
mus_hunting_for_your_dream_3_189:
	.byte		N06   , Bn0 , v076
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 190   ----------------------------------------
mus_hunting_for_your_dream_3_190:
	.byte		N06   , Bn1 , v076
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 191   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_047
@ 192   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_048
@ 193   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_049
@ 194   ----------------------------------------
	.byte		N12   , Cs1 , v076
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 195   ----------------------------------------
	.byte		        Fs1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 196   ----------------------------------------
	.byte	W12
	.byte		N06   
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
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 197   ----------------------------------------
	.byte		        Dn1 
	.byte	W24
	.byte		N06   
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
	.byte		N12   
	.byte	W12
@ 198   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_038
@ 199   ----------------------------------------
	.byte		N12   , En1 , v076
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 200   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_040
@ 201   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_041
@ 202   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_042
@ 203   ----------------------------------------
	.byte		N12   , Dn1 , v076
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 204   ----------------------------------------
	.byte		        Cs1 
	.byte	W12
	.byte		N06   
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
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 205   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_189
@ 206   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_190
@ 207   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_047
@ 208   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_048
@ 209   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_049
@ 210   ----------------------------------------
	.byte		N06   , As1 , v076
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 211   ----------------------------------------
	.byte		N12   , Ds1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
@ 212   ----------------------------------------
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 213   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
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
	.byte		        Bn1 
	.byte	W12
@ 214   ----------------------------------------
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
	.byte		        As1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 215   ----------------------------------------
	.byte		        Cs1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
@ 216   ----------------------------------------
	.byte	W12
	.byte		N06   
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
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 217   ----------------------------------------
	.byte		        As0 
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
	.byte		        As1 
	.byte	W12
@ 218   ----------------------------------------
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
@ 219   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As0 
	.byte	W12
@ 220   ----------------------------------------
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 221   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 222   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
@ 223   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_098
@ 224   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_098
@ 225   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_150
@ 226   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_025
@ 227   ----------------------------------------
	.byte		N36   , Ds1 , v076
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 228   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_001
@ 229   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_002
@ 230   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_003
@ 231   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_004
@ 232   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_005
@ 233   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_006
@ 234   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_3_007
@ 235   ----------------------------------------
	.byte		N48   , Ds1 , v076
	.byte	W48
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_hunting_for_your_dream_4:
	.byte	KEYSH , mus_hunting_for_your_dream_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 96*mus_hunting_for_your_dream_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W36
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
@ 001   ----------------------------------------
mus_hunting_for_your_dream_4_001:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W36
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
mus_hunting_for_your_dream_4_002:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W36
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
mus_hunting_for_your_dream_4_003:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
mus_hunting_for_your_dream_4_004:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W36
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W36
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_hunting_for_your_dream_4_005:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W36
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
mus_hunting_for_your_dream_4_006:
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
mus_hunting_for_your_dream_4_007:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
@ 009   ----------------------------------------
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
@ 010   ----------------------------------------
mus_hunting_for_your_dream_4_010:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
@ 012   ----------------------------------------
mus_hunting_for_your_dream_4_012:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W18
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
@ 014   ----------------------------------------
mus_hunting_for_your_dream_4_014:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W18
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W18
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_014
@ 017   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W18
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_010
@ 019   ----------------------------------------
mus_hunting_for_your_dream_4_019:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W18
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_hunting_for_your_dream_4_020:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W18
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_019
@ 022   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W18
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_019
@ 024   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W18
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte	W18
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
@ 025   ----------------------------------------
mus_hunting_for_your_dream_4_025:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 026   ----------------------------------------
mus_hunting_for_your_dream_4_026:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        En1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_hunting_for_your_dream_4_027:
	.byte	W12
	.byte		N02   , Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_026
@ 029   ----------------------------------------
mus_hunting_for_your_dream_4_029:
	.byte	W12
	.byte		N02   , Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_027
@ 032   ----------------------------------------
mus_hunting_for_your_dream_4_032:
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 , v060
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v060
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v060
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 033   ----------------------------------------
mus_hunting_for_your_dream_4_033:
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 034   ----------------------------------------
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W96
@ 035   ----------------------------------------
mus_hunting_for_your_dream_4_035:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
mus_hunting_for_your_dream_4_036:
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_hunting_for_your_dream_4_037:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte	PEND
@ 038   ----------------------------------------
mus_hunting_for_your_dream_4_038:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte	PEND
@ 039   ----------------------------------------
mus_hunting_for_your_dream_4_039:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
mus_hunting_for_your_dream_4_040:
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte	PEND
@ 041   ----------------------------------------
mus_hunting_for_your_dream_4_041:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte	PEND
@ 042   ----------------------------------------
mus_hunting_for_your_dream_4_042:
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_036
@ 045   ----------------------------------------
mus_hunting_for_your_dream_4_045:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte	PEND
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_045
@ 047   ----------------------------------------
mus_hunting_for_your_dream_4_047:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte	PEND
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_047
@ 049   ----------------------------------------
mus_hunting_for_your_dream_4_049:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte	PEND
@ 050   ----------------------------------------
mus_hunting_for_your_dream_4_050:
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 051   ----------------------------------------
mus_hunting_for_your_dream_4_051:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W36
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte	PEND
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_001
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_002
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_003
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_004
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_005
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_006
@ 058   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
@ 059   ----------------------------------------
mus_hunting_for_your_dream_4_059:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte	PEND
@ 060   ----------------------------------------
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_012
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_020
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_014
@ 064   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W18
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_012
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_025
@ 067   ----------------------------------------
	.byte	W18
	.byte		N02   , Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_012
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_012
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_019
@ 071   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W18
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W18
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_059
@ 073   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
@ 074   ----------------------------------------
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_026
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_027
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_026
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_029
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_026
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_027
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_032
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_033
@ 083   ----------------------------------------
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_035
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_040
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_037
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_038
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_039
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_040
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_041
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_042
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_035
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_036
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_045
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_045
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_047
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_047
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_049
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_050
@ 100   ----------------------------------------
mus_hunting_for_your_dream_4_100:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte	PEND
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_036
@ 102   ----------------------------------------
mus_hunting_for_your_dream_4_102:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte	PEND
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_036
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_100
@ 105   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_102
@ 107   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v060
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v060
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v060
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
@ 108   ----------------------------------------
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		N02   
	.byte	W24
@ 109   ----------------------------------------
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W24
@ 110   ----------------------------------------
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 111   ----------------------------------------
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_100
@ 113   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
@ 114   ----------------------------------------
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 115   ----------------------------------------
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_100
@ 117   ----------------------------------------
mus_hunting_for_your_dream_4_117:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte	PEND
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_117
@ 119   ----------------------------------------
mus_hunting_for_your_dream_4_119:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte	PEND
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_100
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_117
@ 122   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
@ 123   ----------------------------------------
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_100
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_117
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_100
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_119
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_100
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_100
@ 130   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
@ 131   ----------------------------------------
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 132   ----------------------------------------
mus_hunting_for_your_dream_4_132:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte	PEND
@ 133   ----------------------------------------
mus_hunting_for_your_dream_4_133:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte	PEND
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_133
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_133
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_132
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_133
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_133
@ 139   ----------------------------------------
mus_hunting_for_your_dream_4_139:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_132
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_133
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_132
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_133
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_132
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_133
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_133
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_133
@ 148   ----------------------------------------
mus_hunting_for_your_dream_4_148:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_148
@ 150   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 151   ----------------------------------------
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v060
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v060
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
@ 152   ----------------------------------------
mus_hunting_for_your_dream_4_152:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W60
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte	PEND
@ 153   ----------------------------------------
	.byte	W96
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_152
@ 155   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		N02   , En1 , v076
	.byte	W15
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
@ 156   ----------------------------------------
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
@ 157   ----------------------------------------
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_006
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_006
@ 160   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v060
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v060
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v060
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v060
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v060
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v060
	.byte	W06
@ 161   ----------------------------------------
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W96
@ 162   ----------------------------------------
	.byte	W48
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_035
@ 164   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_036
@ 165   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_037
@ 166   ----------------------------------------
mus_hunting_for_your_dream_4_166:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte	PEND
@ 167   ----------------------------------------
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
@ 168   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_040
@ 169   ----------------------------------------
mus_hunting_for_your_dream_4_169:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte	PEND
@ 170   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_042
@ 171   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_035
@ 172   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_036
@ 173   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_045
@ 174   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_047
@ 175   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_047
@ 176   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_047
@ 177   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_049
@ 178   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 179   ----------------------------------------
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
@ 180   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_036
@ 181   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_037
@ 182   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_166
@ 183   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_039
@ 184   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_040
@ 185   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_169
@ 186   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_042
@ 187   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_035
@ 188   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_036
@ 189   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_045
@ 190   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_047
@ 191   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_047
@ 192   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_047
@ 193   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_049
@ 194   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 195   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_132
@ 196   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_133
@ 197   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_132
@ 198   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_133
@ 199   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_132
@ 200   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_133
@ 201   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_132
@ 202   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
@ 203   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_132
@ 204   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_133
@ 205   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_132
@ 206   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_133
@ 207   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
@ 208   ----------------------------------------
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
@ 209   ----------------------------------------
mus_hunting_for_your_dream_4_209:
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 210   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_139
@ 211   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_132
@ 212   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_133
@ 213   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_132
@ 214   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_133
@ 215   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_132
@ 216   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_133
@ 217   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_132
@ 218   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
@ 219   ----------------------------------------
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
@ 220   ----------------------------------------
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
@ 221   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_132
@ 222   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_133
@ 223   ----------------------------------------
mus_hunting_for_your_dream_4_223:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte	PEND
@ 224   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_223
@ 225   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_209
@ 226   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 227   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_051
@ 228   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_001
@ 229   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_002
@ 230   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_003
@ 231   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_004
@ 232   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_005
@ 233   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_006
@ 234   ----------------------------------------
	.byte	PATT
	 .word	mus_hunting_for_your_dream_4_007
@ 235   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v064
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

mus_hunting_for_your_dream:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_hunting_for_your_dream_pri	@ Priority
	.byte	mus_hunting_for_your_dream_rev	@ Reverb.

	.word	mus_hunting_for_your_dream_grp

	.word	mus_hunting_for_your_dream_1
	.word	mus_hunting_for_your_dream_2
	.word	mus_hunting_for_your_dream_3
	.word	mus_hunting_for_your_dream_4

	.end
