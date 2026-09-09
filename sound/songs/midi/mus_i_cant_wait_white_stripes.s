	.include "MPlayDef.s"

	.equ	mus_i_cant_wait_white_stripes_grp, voicegroup_hlw_rock_metal
	.equ	mus_i_cant_wait_white_stripes_pri, 0
	.equ	mus_i_cant_wait_white_stripes_rev, reverb_set+15
	.equ	mus_i_cant_wait_white_stripes_mvl, 96
	.equ	mus_i_cant_wait_white_stripes_key, 0
	.equ	mus_i_cant_wait_white_stripes_tbs, 1
	.equ	mus_i_cant_wait_white_stripes_exg, 1
	.equ	mus_i_cant_wait_white_stripes_cmp, 1

	.section .rodata
	.global	mus_i_cant_wait_white_stripes
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_i_cant_wait_white_stripes_1:
	.byte		VOL   , 127*mus_i_cant_wait_white_stripes_mvl/mxv
	.byte	KEYSH , mus_i_cant_wait_white_stripes_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 81*mus_i_cant_wait_white_stripes_tbs/2
	.byte		VOICE , 29
	.byte		N12   , An1 , v080
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
@ 003   ----------------------------------------
mus_i_cant_wait_white_stripes_1_003:
	.byte		N12   , An1 , v080
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_i_cant_wait_white_stripes_1_004:
	.byte		N12   , Gn1 , v080
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_004
@ 009   ----------------------------------------
mus_i_cant_wait_white_stripes_1_009:
	.byte		N12   , An1 , v080
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_009
@ 012   ----------------------------------------
mus_i_cant_wait_white_stripes_1_012:
	.byte		N48   , Gn1 , v080
	.byte		N48   , Bn1 
	.byte		N48   , Dn2 
	.byte		N48   , Gn2 
	.byte	W48
	.byte		N12   , Gn1 
	.byte		N12   , Bn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
mus_i_cant_wait_white_stripes_1_013:
	.byte		N24   , An1 , v080
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N24   , Fn1 
	.byte		N24   , Cn2 
	.byte		N24   , Fn2 
	.byte		N24   , An2 
	.byte	W24
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
	.byte		        Gn2 
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
mus_i_cant_wait_white_stripes_1_014:
	.byte		N24   , Gn1 , v080
	.byte		N24   , Bn1 
	.byte		N24   , Dn2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N18   , Gn1 
	.byte		N18   , Bn1 
	.byte		N18   , Dn2 
	.byte		N18   , Gn2 
	.byte		N18   , Bn2 
	.byte	W18
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , Gn1 
	.byte		N12   , Bn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte	W06
	.byte	PEND
@ 015   ----------------------------------------
mus_i_cant_wait_white_stripes_1_015:
	.byte		N24   , An1 , v080
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N24   , Fn1 
	.byte		N24   , Cn2 
	.byte		N24   , Fn2 
	.byte		N24   , An2 
	.byte	W24
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
	.byte		N06   , En3 
	.byte	W06
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_014
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_015
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_014
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_015
@ 020   ----------------------------------------
mus_i_cant_wait_white_stripes_1_020:
	.byte		N24   , Gn1 , v080
	.byte		N24   , Bn1 
	.byte		N24   , Dn2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N18   , Gn1 
	.byte		N18   , Bn1 
	.byte		N18   , Dn2 
	.byte		N18   , Gn2 
	.byte		N18   , Bn2 
	.byte	W18
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N48   , Gn1 
	.byte		N48   , Bn1 
	.byte		N48   , Dn2 
	.byte		N48   , Gn2 
	.byte		N48   , Bn2 
	.byte	W48
	.byte	PEND
@ 021   ----------------------------------------
mus_i_cant_wait_white_stripes_1_021:
	.byte		N12   , Bn1 , v072
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 , v080
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
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_021
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_021
@ 024   ----------------------------------------
mus_i_cant_wait_white_stripes_1_024:
	.byte		N12   , Bn1 , v080
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Gn1 
	.byte		N24   , Bn1 
	.byte		N24   , Dn2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N12   , Gn1 
	.byte		N12   , Bn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_i_cant_wait_white_stripes_1_025:
	.byte		N24   , En1 , v080
	.byte		N24   , Bn1 
	.byte		N24   , En2 
	.byte		N24   , Gs2 
	.byte		N24   , Bn2 
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte		N12   , Gs2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N24   , Gn1 
	.byte		N24   , Dn2 
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N12   , Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_i_cant_wait_white_stripes_1_026:
	.byte		N24   , Dn2 , v080
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
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
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_025
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_026
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_025
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_026
@ 033   ----------------------------------------
mus_i_cant_wait_white_stripes_1_033:
	.byte		N96   , Gn1 , v080
	.byte		N96   , Bn1 
	.byte		N96   , Dn2 
	.byte		N96   , Gn2 
	.byte		N96   , Bn2 
	.byte	W96
	.byte	PEND
@ 034   ----------------------------------------
	.byte	W36
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Fn1 , v080
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_003
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_003
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_004
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_009
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_012
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_013
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_014
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_015
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_014
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_015
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_014
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_015
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_020
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_021
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_021
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_021
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_024
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_025
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_026
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_026
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_025
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_026
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_025
@ 062   ----------------------------------------
	.byte		N24   , As1 , v080
	.byte		N24   , Fn2 
	.byte		N24   , As2 
	.byte	W24
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , As1 
	.byte		N06   , Fn2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte	W06
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
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte	W06
@ 063   ----------------------------------------
mus_i_cant_wait_white_stripes_1_063:
	.byte		N24   , En1 , v080
	.byte		N24   , Bn1 
	.byte		N24   , En2 
	.byte		N24   , Gs2 
	.byte		N24   , Bn2 
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte		N12   , Gs2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte		N12   , Gs2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Gn1 
	.byte		N24   , Dn2 
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N12   , Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
mus_i_cant_wait_white_stripes_1_064:
	.byte		N24   , As1 , v080
	.byte		N24   , Fn2 
	.byte		N24   , As2 
	.byte	W24
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , As1 
	.byte		N06   , Fn2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte		N06   , As2 
	.byte	W06
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
	.byte		N06   , En2 
	.byte		N06   , An2 
	.byte	W06
	.byte	PEND
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_063
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_064
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_063
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_064
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_063
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_064
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_1_033
@ 072   ----------------------------------------
	.byte	W36
	.byte		N12   , En1 , v064
	.byte	W12
	.byte		N06   , Fn1 , v080
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
@ 073   ----------------------------------------
	.byte		N96   , An1 
	.byte	W96
@ 074   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_i_cant_wait_white_stripes_2:
	.byte		VOL   , 127*mus_i_cant_wait_white_stripes_mvl/mxv
	.byte	KEYSH , mus_i_cant_wait_white_stripes_key+0
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
	.byte	W72
	.byte		N24   , Gs1 , v080
	.byte	W24
@ 062   ----------------------------------------
mus_i_cant_wait_white_stripes_2_062:
	.byte		N24   , En1 , v080
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 063   ----------------------------------------
mus_i_cant_wait_white_stripes_2_063:
	.byte		N24   , Dn2 , v080
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_2_062
@ 065   ----------------------------------------
mus_i_cant_wait_white_stripes_2_065:
	.byte		N24   , Dn2 , v080
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_2_062
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_2_063
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_2_062
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_2_065
@ 070   ----------------------------------------
	.byte		N96   , Gn1 , v080
	.byte		N96   , Bn1 
	.byte		N96   , Dn2 
	.byte		N96   , Gn2 
	.byte		N96   , Bn2 
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.10) ****************@

mus_i_cant_wait_white_stripes_3:
	.byte		VOL   , 127*mus_i_cant_wait_white_stripes_mvl/mxv
	.byte	KEYSH , mus_i_cant_wait_white_stripes_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
mus_i_cant_wait_white_stripes_3_002:
	.byte		N24   , Ds2 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Fs1 
	.byte		N24   , Ds2 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_002
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_002
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_002
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_002
@ 011   ----------------------------------------
	.byte		N24   , Ds2 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn1 
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
@ 012   ----------------------------------------
mus_i_cant_wait_white_stripes_3_012:
	.byte		N24   , Bn0 , v080
	.byte		N24   , Cs2 
	.byte	W24
	.byte		        Dn1 
	.byte		N24   , Cs2 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Cs2 
	.byte	W24
	.byte		        Dn1 
	.byte		N24   , Cs2 
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
mus_i_cant_wait_white_stripes_3_013:
	.byte		N24   , Bn0 , v080
	.byte		N24   , Cs2 
	.byte	W24
	.byte		        Dn1 
	.byte		N24   , Cs2 
	.byte	W24
	.byte		N12   , Bn0 
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , Dn1 
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
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_012
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_013
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_012
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_013
@ 020   ----------------------------------------
mus_i_cant_wait_white_stripes_3_020:
	.byte		N24   , Bn0 , v080
	.byte		N24   , Cs2 
	.byte	W24
	.byte		        Fs1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 021   ----------------------------------------
mus_i_cant_wait_white_stripes_3_021:
	.byte		N24   , Fs1 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_021
@ 023   ----------------------------------------
mus_i_cant_wait_white_stripes_3_023:
	.byte		N24   , Fs1 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Fs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Fs1 
	.byte	W24
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_012
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_012
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_012
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_012
@ 028   ----------------------------------------
mus_i_cant_wait_white_stripes_3_028:
	.byte		N24   , Bn0 , v080
	.byte		N24   , Cs2 
	.byte	W24
	.byte		        Dn1 
	.byte		N24   , Cs2 
	.byte	W24
	.byte		N12   , Bn0 
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Bn0 
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Dn1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Bn0 
	.byte		N12   , Cs2 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_028
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_012
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_028
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_020
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_021
@ 034   ----------------------------------------
mus_i_cant_wait_white_stripes_3_034:
	.byte		N24   , Ds2 , v080
	.byte	W24
	.byte		        Fs1 
	.byte		N24   , Ds2 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Fs1 
	.byte		N24   , Ds2 
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_034
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_034
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_034
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_034
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_002
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_012
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_013
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_012
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_013
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_012
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_013
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_012
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_013
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_020
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_021
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_021
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_023
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_012
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_012
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_012
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_012
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_028
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_028
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_012
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_028
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_028
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_028
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_012
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_028
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_012
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_028
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_012
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_028
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_i_cant_wait_white_stripes_3_020
@ 071   ----------------------------------------
	.byte		N24   , Fs1 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Ds2 
	.byte	W24
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_i_cant_wait_white_stripes:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_i_cant_wait_white_stripes_pri	@ Priority
	.byte	mus_i_cant_wait_white_stripes_rev	@ Reverb.

	.word	mus_i_cant_wait_white_stripes_grp

	.word	mus_i_cant_wait_white_stripes_1
	.word	mus_i_cant_wait_white_stripes_2
	.word	mus_i_cant_wait_white_stripes_3

	.end
