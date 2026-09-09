	.include "MPlayDef.s"

	.equ	mus_dead_leaves_and_the_dirty_ground_grp, voicegroup_hlw_rock_metal
	.equ	mus_dead_leaves_and_the_dirty_ground_pri, 0
	.equ	mus_dead_leaves_and_the_dirty_ground_rev, reverb_set+15
	.equ	mus_dead_leaves_and_the_dirty_ground_mvl, 96
	.equ	mus_dead_leaves_and_the_dirty_ground_key, 0
	.equ	mus_dead_leaves_and_the_dirty_ground_tbs, 1
	.equ	mus_dead_leaves_and_the_dirty_ground_exg, 1
	.equ	mus_dead_leaves_and_the_dirty_ground_cmp, 1

	.section .rodata
	.global	mus_dead_leaves_and_the_dirty_ground
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_dead_leaves_and_the_dirty_ground_1:
	.byte		VOL   , 127*mus_dead_leaves_and_the_dirty_ground_mvl/mxv
	.byte	KEYSH , mus_dead_leaves_and_the_dirty_ground_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 80*mus_dead_leaves_and_the_dirty_ground_tbs/2
	.byte		VOICE , 28
	.byte		N24   , En3 , v080
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N24   , Gn1 
	.byte	W24
@ 002   ----------------------------------------
mus_dead_leaves_and_the_dirty_ground_1_002:
	.byte		N12   , Gn1 , v080
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte	W06
	.byte		N24   , An1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N24   , Gn1 
	.byte	W24
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_dead_leaves_and_the_dirty_ground_1_002
@ 005   ----------------------------------------
	.byte		N12   , Gn1 , v080
	.byte	W24
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N24   , Gn1 
	.byte		N24   , Dn2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte	W24
@ 006   ----------------------------------------
	.byte		N12   , Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Fs1 
	.byte		N06   , Cs2 
	.byte		N06   , Fs2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Fn2 
	.byte		N06   , An2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte	W24
@ 007   ----------------------------------------
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N24   , Gn1 
	.byte		N24   , Dn2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte	W24
@ 008   ----------------------------------------
	.byte		N12   , Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Fs1 
	.byte		N06   , Cs2 
	.byte		N06   , Fs2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Fn1 
	.byte		N06   , Cn2 
	.byte		N06   , Fn2 
	.byte		N06   , An2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N18   , An1 
	.byte		N18   , En2 
	.byte		N18   , An2 
	.byte		N18   , Cs3 
	.byte	W18
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte	W06
@ 009   ----------------------------------------
	.byte		N24   , Gn1 
	.byte		N24   , An1 
	.byte		N24   , Dn2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		        An1 
	.byte		N24   , En2 
	.byte	W24
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 010   ----------------------------------------
	.byte		        Dn2 
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N06   , An2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 012   ----------------------------------------
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N06   , An2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte	W06
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte	W24
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W06
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
@ 014   ----------------------------------------
mus_dead_leaves_and_the_dirty_ground_1_014:
	.byte		N12   , Gn1 , v080
	.byte		N12   , Bn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , Cn2 
	.byte		N12   , En2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
mus_dead_leaves_and_the_dirty_ground_1_015:
	.byte		N06   , An1 , v080
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte	W06
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N18   , Gn1 
	.byte		N18   , Bn1 
	.byte		N18   , Dn2 
	.byte		N18   , Gn2 
	.byte	W18
	.byte		N06   
	.byte		N06   , Bn2 
	.byte		N06   , Gn3 
	.byte	W06
	.byte	PEND
@ 016   ----------------------------------------
mus_dead_leaves_and_the_dirty_ground_1_016:
	.byte		N12   , Gn1 , v080
	.byte		N12   , Bn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , Cn2 
	.byte		N12   , En2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
mus_dead_leaves_and_the_dirty_ground_1_017:
	.byte		N12   , An1 , v080
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Bn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N18   , An1 
	.byte		N18   , En2 
	.byte		N18   , An2 
	.byte		N18   , Cs3 
	.byte	W18
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte	PEND
@ 018   ----------------------------------------
mus_dead_leaves_and_the_dirty_ground_1_018:
	.byte		N06   , An1 , v080
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        An1 
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N18   , Gn1 
	.byte		N18   , Bn1 
	.byte		N18   , Dn2 
	.byte		N18   , Gn2 
	.byte	W18
	.byte		N06   
	.byte		N06   , Bn2 
	.byte		N06   , Gn3 
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_dead_leaves_and_the_dirty_ground_1_016
@ 020   ----------------------------------------
mus_dead_leaves_and_the_dirty_ground_1_020:
	.byte		N12   , An1 , v080
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N18   , Gn1 
	.byte		N18   , Bn1 
	.byte		N18   , Dn2 
	.byte		N18   , Gn2 
	.byte	W18
	.byte		N06   
	.byte		N06   , Bn2 
	.byte		N06   , Gn3 
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_dead_leaves_and_the_dirty_ground_1_016
@ 022   ----------------------------------------
mus_dead_leaves_and_the_dirty_ground_1_022:
	.byte		N12   , An1 , v080
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Fn1 
	.byte		N24   , Cn2 
	.byte		N24   , Fn2 
	.byte		N24   , An2 
	.byte	W24
	.byte		        Gn1 
	.byte		N24   , Bn1 
	.byte		N24   , Dn2 
	.byte		N24   , Gn2 
	.byte	W24
	.byte		        An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
mus_dead_leaves_and_the_dirty_ground_1_023:
	.byte		N24   , En3 , v080
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte	PEND
@ 024   ----------------------------------------
mus_dead_leaves_and_the_dirty_ground_1_024:
	.byte		N12   , Gn1 , v080
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N06   , Dn2 
	.byte		N06   
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W36
	.byte	PEND
@ 025   ----------------------------------------
mus_dead_leaves_and_the_dirty_ground_1_025:
	.byte	W06
	.byte		N06   , An1 , v080
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_dead_leaves_and_the_dirty_ground_1_024
@ 027   ----------------------------------------
	.byte	W06
	.byte		N06   , An1 , v080
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte	W24
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W06
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_dead_leaves_and_the_dirty_ground_1_014
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_dead_leaves_and_the_dirty_ground_1_015
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_dead_leaves_and_the_dirty_ground_1_016
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_dead_leaves_and_the_dirty_ground_1_017
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_dead_leaves_and_the_dirty_ground_1_018
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_dead_leaves_and_the_dirty_ground_1_016
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_dead_leaves_and_the_dirty_ground_1_020
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_dead_leaves_and_the_dirty_ground_1_016
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_dead_leaves_and_the_dirty_ground_1_022
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_dead_leaves_and_the_dirty_ground_1_023
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_dead_leaves_and_the_dirty_ground_1_024
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_dead_leaves_and_the_dirty_ground_1_025
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_dead_leaves_and_the_dirty_ground_1_024
@ 041   ----------------------------------------
	.byte	W06
	.byte		N06   , An1 , v080
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W36
@ 042   ----------------------------------------
	.byte	W24
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W18
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte		N24   , Fs3 
	.byte	W24
@ 043   ----------------------------------------
mus_dead_leaves_and_the_dirty_ground_1_043:
	.byte		N24   , Dn2 , v080
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Dn2 
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Dn2 
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Dn2 
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte	PEND
@ 044   ----------------------------------------
	.byte		        Dn2 
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte		        An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
@ 045   ----------------------------------------
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte		        An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
@ 046   ----------------------------------------
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W18
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		N24   , Dn2 
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte		N24   , Fs3 
	.byte	W24
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_dead_leaves_and_the_dirty_ground_1_043
@ 048   ----------------------------------------
	.byte		N12   , Dn2 , v080
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N24   , Fn1 
	.byte		N24   , Cn2 
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N18   , Fn1 
	.byte		N18   , Cn2 
	.byte		N18   , Fn2 
	.byte	W18
	.byte		N06   , Fn1 
	.byte	W06
	.byte		N24   
	.byte		N24   , Cn2 
	.byte		N24   , Fn2 
	.byte	W24
@ 049   ----------------------------------------
	.byte		N12   , Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N24   , Gn1 
	.byte		N24   , Dn2 
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N18   , Gn1 
	.byte		N18   , Dn2 
	.byte		N18   , Gn2 
	.byte	W18
	.byte		N06   , Gn1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N24   , Gn1 
	.byte		N24   , Dn2 
	.byte		N24   , Gn2 
	.byte	W24
@ 050   ----------------------------------------
	.byte		N12   , Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An1 
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte		N06   , Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
@ 051   ----------------------------------------
	.byte		N12   , Gn1 
	.byte		N12   , Bn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N18   , Cn2 
	.byte		N18   , En2 
	.byte		N18   , Gn2 
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N18   , An1 
	.byte		N18   , En2 
	.byte		N18   , An2 
	.byte	W18
	.byte		N06   
	.byte		N06   , Cs3 
	.byte	W06
@ 052   ----------------------------------------
	.byte		        An1 
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N18   , An1 
	.byte		N18   , En2 
	.byte		N18   , An2 
	.byte	W18
	.byte		N06   
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An1 
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte	W06
	.byte		N12   , Gn1 
	.byte		N12   , Bn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Bn2 
	.byte		N06   , Gn3 
	.byte	W06
@ 053   ----------------------------------------
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , Cn2 
	.byte		N12   , En2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , En2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        An1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N48   , An1 
	.byte		N48   , En2 
	.byte		N48   , An2 
	.byte		N48   , Cs3 
	.byte	W24
@ 054   ----------------------------------------
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

mus_dead_leaves_and_the_dirty_ground:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_dead_leaves_and_the_dirty_ground_pri	@ Priority
	.byte	mus_dead_leaves_and_the_dirty_ground_rev	@ Reverb.

	.word	mus_dead_leaves_and_the_dirty_ground_grp

	.word	mus_dead_leaves_and_the_dirty_ground_1

	.end
