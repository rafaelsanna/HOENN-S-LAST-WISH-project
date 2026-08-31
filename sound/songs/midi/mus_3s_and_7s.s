	.include "MPlayDef.s"

	.equ	mus_3s_and_7s_grp, voicegroup_hlw_rock_metal
	.equ	mus_3s_and_7s_pri, 0
	.equ	mus_3s_and_7s_rev, reverb_set+15
	.equ	mus_3s_and_7s_mvl, 96
	.equ	mus_3s_and_7s_key, 0
	.equ	mus_3s_and_7s_tbs, 1
	.equ	mus_3s_and_7s_exg, 1
	.equ	mus_3s_and_7s_cmp, 1

	.section .rodata
	.global	mus_3s_and_7s
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_3s_and_7s_1:
	.byte	KEYSH , mus_3s_and_7s_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 134*mus_3s_and_7s_tbs/2
	.byte		VOICE , 29
	.byte		VOL   , 124*mus_3s_and_7s_mvl/mxv
	.byte		N06   , En1 , v096
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
@ 002   ----------------------------------------
mus_3s_and_7s_1_002:
	.byte		N12   , As1 , v096
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Fn1 
	.byte		N24   , Cn2 
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N12   , Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_3s_and_7s_1_003:
	.byte		N06   , En1 , v096
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Fn1 
	.byte		N24   , Cn2 
	.byte		N24   , Fn2 
	.byte	W36
@ 005   ----------------------------------------
	.byte	W24
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 029   ----------------------------------------
mus_3s_and_7s_1_029:
	.byte		N06   , En1 , v096
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W36
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
mus_3s_and_7s_1_030:
	.byte	W24
	.byte		N12   , Gs1 , v096
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W36
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
mus_3s_and_7s_1_031:
	.byte	W24
	.byte		N12   , En1 , v096
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W36
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
mus_3s_and_7s_1_032:
	.byte	W24
	.byte		N12   , Fs1 , v096
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W36
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_031
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_030
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_031
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_032
@ 037   ----------------------------------------
mus_3s_and_7s_1_037:
	.byte	W24
	.byte		N24   , An1 , v096
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte		        An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte		        An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte	PEND
@ 038   ----------------------------------------
	.byte		        An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_003
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_002
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_029
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_030
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_031
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_032
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_031
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_030
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_031
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_032
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_037
@ 075   ----------------------------------------
	.byte		N24   , An1 , v096
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
@ 076   ----------------------------------------
mus_3s_and_7s_1_076:
	.byte	TEMPO , 118*mus_3s_and_7s_tbs/2
	.byte		N12   , Fn1 , v096
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N08   , Fn1 
	.byte		N08   , Cn2 
	.byte		N08   , Fn2 
	.byte	W08
	.byte		N12   , Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N08   , Fn1 
	.byte		N08   , Cn2 
	.byte		N08   , Fn2 
	.byte	W08
	.byte		N12   , Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N08   , Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		N12   , Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N08   , Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		N12   , Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N08   , Gn1 
	.byte		N08   , Dn2 
	.byte		N08   , Gn2 
	.byte	W08
	.byte		N12   , Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N08   , Gn1 
	.byte		N08   , Dn2 
	.byte		N08   , Gn2 
	.byte	W08
	.byte	PEND
@ 077   ----------------------------------------
mus_3s_and_7s_1_077:
	.byte		N12   , As1 , v096
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N08   , As1 
	.byte		N08   , Fn2 
	.byte		N08   , As2 
	.byte	W08
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N08   , As1 
	.byte		N08   , Fn2 
	.byte		N08   , As2 
	.byte	W08
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N08   , An1 
	.byte		N08   , En2 
	.byte		N08   , An2 
	.byte	W08
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N08   , An1 
	.byte		N08   , En2 
	.byte		N08   , An2 
	.byte	W08
	.byte		N12   , Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N08   , Cn2 
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte		N12   , Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N08   , Cn2 
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte	PEND
@ 078   ----------------------------------------
@ 079   ----------------------------------------
mus_3s_and_7s_1_079:
	.byte	TEMPO , 134*mus_3s_and_7s_tbs/2
	.byte		N08   , Cs2 , v096
	.byte		N08   , Gs2 
	.byte		N08   , Cs3 
	.byte	W08
	.byte		        Cs2 
	.byte		N08   , Gs2 
	.byte		N08   , Cs3 
	.byte	W08
	.byte		        Cs2 
	.byte		N08   , Gs2 
	.byte		N08   , Cs3 
	.byte	W08
	.byte		        Cs2 
	.byte		N08   , Gs2 
	.byte		N08   , Cs3 
	.byte	W08
	.byte		        Cs2 
	.byte		N08   , Gs2 
	.byte		N08   , Cs3 
	.byte	W08
	.byte		        Cs2 
	.byte		N08   , Gs2 
	.byte		N08   , Cs3 
	.byte	W08
	.byte		        Cn2 
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte		        Cn2 
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte		        Cn2 
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte		        Cn2 
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte		        Cn2 
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte		        Cn2 
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte	PEND
@ 080   ----------------------------------------
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_076
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_077
@ 083   ----------------------------------------
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_079
@ 085   ----------------------------------------
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_076
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_077
@ 088   ----------------------------------------
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_079
@ 090   ----------------------------------------
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_076
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_077
@ 093   ----------------------------------------
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_079
@ 095   ----------------------------------------
	.byte		N08   , Gs1 , v096
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
@ 096   ----------------------------------------
mus_3s_and_7s_1_096:
	.byte		N08   , Gs1 , v096
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W56
	.byte	PEND
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_096
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_096
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte		N96   , As1 , v096
	.byte		N96   , Fn2 
	.byte		N96   , As2 
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
	.byte	W24
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	W96
@ 107   ----------------------------------------
mus_3s_and_7s_1_107:
	.byte		N12   , As1 , v096
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte	PEND
@ 108   ----------------------------------------
mus_3s_and_7s_1_108:
	.byte		N12   , Gs1 , v096
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Fn1 
	.byte		N24   , Cn2 
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N12   , Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte	PEND
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_107
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_108
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_107
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_108
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_107
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_108
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_107
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_108
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_107
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_108
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_107
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_108
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_1_107
@ 122   ----------------------------------------
	.byte		N12   , Gs1 , v096
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N48   , Fn1 
	.byte		N48   , Cn2 
	.byte		N48   , Fn2 
	.byte	W48
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_3s_and_7s_2:
	.byte	KEYSH , mus_3s_and_7s_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 28
	.byte		VOL   , 74*mus_3s_and_7s_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_3s_and_7s_2_004:
	.byte	W36
	.byte		N06   , Ds4 , v068
	.byte	W06
	.byte		N12   , Fn4 
	.byte	W18
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W24
	.byte		        As3 
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_3s_and_7s_2_005:
	.byte	W24
	.byte		N12   , Ds3 , v068
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
mus_3s_and_7s_2_006:
	.byte		N12   , As2 , v068
	.byte	W36
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N12   , Fn4 
	.byte	W18
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W24
	.byte		        As3 
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_005
@ 008   ----------------------------------------
	.byte		N12   , As2 , v068
	.byte	W24
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
@ 009   ----------------------------------------
mus_3s_and_7s_2_009:
	.byte		N12   , As1 , v068
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Fn1 
	.byte		N24   , Cn2 
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N12   , Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_3s_and_7s_2_010:
	.byte		N06   , En1 , v068
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_009
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_009
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_010
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_009
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_010
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_010
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_009
@ 024   ----------------------------------------
mus_3s_and_7s_2_024:
	.byte		N06   , En1 , v068
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W18
	.byte		        Ds4 
	.byte	W06
	.byte		N12   , Fn4 
	.byte	W18
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W24
	.byte		        As3 
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_006
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_005
@ 028   ----------------------------------------
mus_3s_and_7s_2_028:
	.byte		N12   , As2 , v068
	.byte	W48
	.byte		        Bn2 
	.byte	W12
	.byte		        As2 
	.byte	W36
	.byte	PEND
@ 029   ----------------------------------------
mus_3s_and_7s_2_029:
	.byte		N12   , Ds3 , v068
	.byte	W12
	.byte		        Cs3 
	.byte	W36
	.byte		        Ds3 
	.byte	W12
	.byte		        En3 
	.byte	W36
	.byte	PEND
@ 030   ----------------------------------------
mus_3s_and_7s_2_030:
	.byte		N12   , Ds3 , v068
	.byte	W12
	.byte		        Bn2 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        As2 
	.byte	W36
	.byte	PEND
@ 031   ----------------------------------------
mus_3s_and_7s_2_031:
	.byte		N12   , Cs3 , v068
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
mus_3s_and_7s_2_032:
	.byte		N12   , As2 , v068
	.byte	W12
	.byte		        Bn2 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        As2 
	.byte	W36
	.byte	PEND
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_029
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_030
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_031
@ 036   ----------------------------------------
	.byte		N12   , As2 , v068
	.byte	W12
	.byte		        Bn2 
	.byte	W84
@ 037   ----------------------------------------
	.byte	W36
	.byte		        Ds2 , v060
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte		        As1 
	.byte	W12
@ 038   ----------------------------------------
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N12   , As1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N48   , Gs2 
	.byte	W24
@ 039   ----------------------------------------
	.byte	W36
	.byte		N24   , Ds3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N24   , Ds3 
	.byte		N24   , Fn3 
	.byte	W24
@ 040   ----------------------------------------
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N48   , An3 
	.byte	W24
@ 041   ----------------------------------------
	.byte	W24
	.byte		N12   , As1 , v068
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_009
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_010
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_009
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_010
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_009
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_010
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_009
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_010
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_009
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_010
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_009
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_010
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_009
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_010
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_009
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_024
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_005
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_006
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_005
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_006
@ 062   ----------------------------------------
	.byte	W24
	.byte		N12   , Ds3 , v068
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N48   , As2 
	.byte	W24
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_004
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_005
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_028
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_029
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_030
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_031
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_032
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_029
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_030
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_031
@ 073   ----------------------------------------
	.byte		N12   , As2 , v068
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte		        An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte		        An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
@ 074   ----------------------------------------
	.byte		        An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
@ 075   ----------------------------------------
mus_3s_and_7s_2_075:
	.byte		N12   , Fn1 , v068
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N08   , Fn1 
	.byte		N08   , Cn2 
	.byte		N08   , Fn2 
	.byte	W08
	.byte		N12   , Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N08   , Fn1 
	.byte		N08   , Cn2 
	.byte		N08   , Fn2 
	.byte	W08
	.byte		N12   , Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N08   , Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		N12   , Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N08   , Gs1 
	.byte		N08   , Ds2 
	.byte		N08   , Gs2 
	.byte	W08
	.byte		N12   , Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N08   , Gn1 
	.byte		N08   , Dn2 
	.byte		N08   , Gn2 
	.byte	W08
	.byte		N12   , Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N08   , Gn1 
	.byte		N08   , Dn2 
	.byte		N08   , Gn2 
	.byte	W08
	.byte	PEND
@ 076   ----------------------------------------
mus_3s_and_7s_2_076:
	.byte		N12   , As1 , v068
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N08   , As1 
	.byte		N08   , Fn2 
	.byte		N08   , As2 
	.byte	W08
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N08   , As1 
	.byte		N08   , Fn2 
	.byte		N08   , As2 
	.byte	W08
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N08   , An1 
	.byte		N08   , En2 
	.byte		N08   , An2 
	.byte	W08
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N08   , An1 
	.byte		N08   , En2 
	.byte		N08   , An2 
	.byte	W08
	.byte		N12   , Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N08   , Cn2 
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte		N12   , Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N08   , Cn2 
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte	PEND
@ 077   ----------------------------------------
mus_3s_and_7s_2_077:
	.byte		N08   , Cs2 , v068
	.byte		N08   , Gs2 
	.byte		N08   , Cs3 
	.byte	W08
	.byte		        Cs2 
	.byte		N08   , Gs2 
	.byte		N08   , Cs3 
	.byte	W08
	.byte		        Cs2 
	.byte		N08   , Gs2 
	.byte		N08   , Cs3 
	.byte	W08
	.byte		        Cs2 
	.byte		N08   , Gs2 
	.byte		N08   , Cs3 
	.byte	W08
	.byte		        Cs2 
	.byte		N08   , Gs2 
	.byte		N08   , Cs3 
	.byte	W08
	.byte		        Cs2 
	.byte		N08   , Gs2 
	.byte		N08   , Cs3 
	.byte	W08
	.byte		        Cn2 
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte		        Cn2 
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte		        Cn2 
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte		        Cn2 
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte		        Cn2 
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte		        Cn2 
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte	PEND
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_075
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_076
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_077
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_075
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_076
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_077
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_075
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_076
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_077
@ 087   ----------------------------------------
	.byte		N96   , Gs1 , v068
	.byte		N96   , Ds2 
	.byte		N96   , Gs2 
	.byte	W96
	.byte	W24
@ 088   ----------------------------------------
mus_3s_and_7s_2_088:
	.byte		N08   , Fn2 , v068
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N24   , Fn1 
	.byte		N24   , Cn2 
	.byte		N24   , Fn2 
	.byte	W48
	.byte	PEND
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_088
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_088
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte		N08   , Cs3 , v068
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Ds3 
	.byte	W08
	.byte		        Fn3 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W24
@ 095   ----------------------------------------
	.byte	W96
	.byte	W24
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte		N48   , Gs3 
	.byte		N48   , As3 
	.byte	W48
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 100   ----------------------------------------
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N48   , Cn4 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 101   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N08   , Gs3 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Ds3 
	.byte	W08
	.byte		        Fn3 
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        Ds3 
	.byte	W08
@ 102   ----------------------------------------
	.byte		N12   , Cs3 , v072
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W36
	.byte		N24   
	.byte	W36
@ 103   ----------------------------------------
	.byte	W12
	.byte		N18   , Ds3 
	.byte		N18   , Fn3 
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , Fs3 
	.byte	W18
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N12   
	.byte	W12
@ 104   ----------------------------------------
	.byte		N24   
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N12   , Bn2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N24   
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        Gn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte		N12   , An3 
	.byte	W12
@ 105   ----------------------------------------
	.byte		        Cs3 
	.byte	W12
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , As3 
	.byte	W12
	.byte		N18   , En3 
	.byte	W18
	.byte		        Cs3 
	.byte	W18
	.byte		N12   
	.byte	W12
@ 106   ----------------------------------------
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
@ 107   ----------------------------------------
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N12   , As1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N12   , As1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
@ 108   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N12   , As1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 109   ----------------------------------------
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , As1 
	.byte	W12
@ 110   ----------------------------------------
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N36   , Cn3 
	.byte	W36
@ 111   ----------------------------------------
mus_3s_and_7s_2_111:
	.byte		N06   , Cn3 , v072
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N36   , Cs3 
	.byte	W36
	.byte	PEND
@ 112   ----------------------------------------
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N36   , Cn3 
	.byte	W36
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_2_111
@ 114   ----------------------------------------
	.byte		N12   , Ds3 , v072
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N24   , Gs2 
	.byte	W48
	.byte	FINE

@**************** Track 3 (Midi-Chn.5) ****************@

mus_3s_and_7s_3:
	.byte	KEYSH , mus_3s_and_7s_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 118*mus_3s_and_7s_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W24
	.byte		N24   , As0 , v096
	.byte	W24
	.byte		        Cs1 
	.byte	W24
	.byte		        As0 
	.byte	W24
@ 005   ----------------------------------------
mus_3s_and_7s_3_005:
	.byte		N12   , Gs1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N24   , Fn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
mus_3s_and_7s_3_006:
	.byte		N24   , Fn1 , v096
	.byte	W24
	.byte		        As0 
	.byte	W24
	.byte		        Cs1 
	.byte	W24
	.byte		        As0 
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 028   ----------------------------------------
mus_3s_and_7s_3_028:
	.byte		N24   , Fn1 , v096
	.byte	W24
	.byte		N12   , En0 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		        Fs0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_3s_and_7s_3_029:
	.byte	W24
	.byte		N12   , Gs0 , v096
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		        En0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
mus_3s_and_7s_3_030:
	.byte	W24
	.byte		N12   , En0 , v096
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		        Fs0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
mus_3s_and_7s_3_031:
	.byte	W24
	.byte		N12   , Fs0 , v096
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		        Gs0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_030
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_029
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_030
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_031
@ 036   ----------------------------------------
mus_3s_and_7s_3_036:
	.byte	W24
	.byte		N24   , An0 , v096
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 037   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		        As0 
	.byte	W24
	.byte		        Cs1 
	.byte	W24
	.byte		        As0 
	.byte	W24
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_006
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_005
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_028
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_029
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_030
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_031
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_030
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_029
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_030
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_031
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_036
@ 074   ----------------------------------------
	.byte		N24   , An0 , v096
	.byte	W24
@ 075   ----------------------------------------
mus_3s_and_7s_3_075:
	.byte		N12   , Fn0 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 076   ----------------------------------------
mus_3s_and_7s_3_076:
	.byte		N12   , As0 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 077   ----------------------------------------
mus_3s_and_7s_3_077:
	.byte		N12   , Cs1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_075
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_076
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_077
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_075
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_076
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_077
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_075
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_076
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_077
@ 087   ----------------------------------------
	.byte		N08   , Gs0 , v096
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
@ 088   ----------------------------------------
mus_3s_and_7s_3_088:
	.byte		N08   , Cs1 , v096
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        As0 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Gs0 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte	PEND
@ 089   ----------------------------------------
mus_3s_and_7s_3_089:
	.byte		N08   , Gs0 , v096
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte	PEND
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_088
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_089
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_088
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_089
@ 094   ----------------------------------------
	.byte		N12   , Gs0 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 095   ----------------------------------------
	.byte	W24
	.byte		N24   , As0 
	.byte	W24
	.byte		        Cs1 
	.byte	W24
	.byte		        As0 
	.byte	W24
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 096   ----------------------------------------
mus_3s_and_7s_3_096:
	.byte		N12   , Ds1 , v096
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N24   , Fn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        Fn1 
	.byte	W24
	.byte	PEND
@ 097   ----------------------------------------
mus_3s_and_7s_3_097:
	.byte		N24   , As0 , v096
	.byte	W24
	.byte		        Cs1 
	.byte	W24
	.byte		        As0 
	.byte	W24
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 098   ----------------------------------------
	.byte		        Ds1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N48   , Fn1 
	.byte	W72
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_097
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_096
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_097
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_096
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_097
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_096
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_097
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_096
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_097
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_096
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_097
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_096
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_097
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_096
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_3_097
@ 114   ----------------------------------------
	.byte		N12   , Ds1 , v096
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N24   , Fn1 
	.byte	W60
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_3s_and_7s_4:
	.byte	KEYSH , mus_3s_and_7s_key+0
@ 000   ----------------------------------------
	.byte		VOL   , 120*mus_3s_and_7s_mvl/mxv
	.byte	W36
	.byte		N12   , Dn1 , v092
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
@ 001   ----------------------------------------
	.byte	W60
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
@ 002   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
@ 003   ----------------------------------------
	.byte	W60
	.byte		N24   
	.byte	W36
@ 004   ----------------------------------------
	.byte	W24
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
@ 005   ----------------------------------------
mus_3s_and_7s_4_005:
	.byte		N12   , Dn1 , v092
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_005
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_005
@ 008   ----------------------------------------
mus_3s_and_7s_4_008:
	.byte		N12   , Dn1 , v092
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_3s_and_7s_4_009:
	.byte		N12   , Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_3s_and_7s_4_010:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_009
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_009
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_010
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_009
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_010
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_010
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_009
@ 024   ----------------------------------------
mus_3s_and_7s_4_024:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_005
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_005
@ 028   ----------------------------------------
mus_3s_and_7s_4_028:
	.byte		N12   , Dn1 , v092
	.byte	W12
	.byte		N06   , Cs2 , v072
	.byte	W06
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte	W12
	.byte		        As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		N12   , Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_3s_and_7s_4_029:
	.byte		N12   , Dn1 , v092
	.byte	W12
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		N12   , Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		N12   , Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
mus_3s_and_7s_4_030:
	.byte		N12   , Dn1 , v092
	.byte	W12
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		N12   , Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte	W12
	.byte		        As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		N12   , Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_029
@ 032   ----------------------------------------
mus_3s_and_7s_4_032:
	.byte		N12   , Dn1 , v092
	.byte	W12
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte	W12
	.byte		        As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		N12   , Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_029
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_030
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_029
@ 036   ----------------------------------------
mus_3s_and_7s_4_036:
	.byte		N12   , Dn1 , v092
	.byte	W12
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , As1 , v068
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
	.byte		N24   , Dn1 , v092
	.byte		N24   , Cs2 , v072
	.byte	W24
	.byte		N12   , Cn1 , v096
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_005
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_005
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_005
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_008
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_009
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_010
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_009
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_010
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_009
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_010
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_009
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_010
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_009
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_010
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_009
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_010
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_009
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_010
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_009
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_024
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_005
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_005
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_005
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_005
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_005
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_005
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_005
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_028
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_029
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_030
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_029
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_032
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_029
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_030
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_029
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_036
@ 074   ----------------------------------------
	.byte		N24   , Dn1 , v092
	.byte		N24   , Cs2 , v072
	.byte	W24
@ 075   ----------------------------------------
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Cn1 , v096
	.byte	W08
	.byte		N12   
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Cn1 , v096
	.byte	W08
	.byte		N12   
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Cn1 , v096
	.byte	W08
	.byte		N12   
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Cn1 , v096
	.byte		N08   , Dn1 , v092
	.byte	W08
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Cn1 , v096
	.byte	W08
	.byte		N12   
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Cn1 , v096
	.byte	W08
@ 076   ----------------------------------------
	.byte		N12   
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Cn1 , v096
	.byte	W08
	.byte		N12   
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Cn1 , v096
	.byte		N08   , Dn1 , v092
	.byte	W08
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Cn1 , v096
	.byte	W08
	.byte		N12   
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Cn1 , v096
	.byte	W08
	.byte		N12   
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Cn1 , v096
	.byte	W08
	.byte		N12   
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Cn1 , v096
	.byte		N08   , Dn1 , v092
	.byte	W08
@ 077   ----------------------------------------
mus_3s_and_7s_4_077:
	.byte		N08   , Cn1 , v096
	.byte		N08   , An2 , v072
	.byte	W08
	.byte		        Dn1 , v092
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Cn1 , v096
	.byte		N08   , Cs2 , v072
	.byte	W08
	.byte		        Dn1 , v092
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte	PEND
@ 078   ----------------------------------------
mus_3s_and_7s_4_078:
	.byte		N12   , Cn1 , v096
	.byte		N12   , An2 , v072
	.byte	W12
	.byte		N08   , Dn1 , v092
	.byte	W08
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Dn1 , v092
	.byte	W08
	.byte		N12   , Cn1 , v096
	.byte		N12   , An2 , v072
	.byte	W12
	.byte		N08   , Dn1 , v092
	.byte	W08
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Dn1 , v092
	.byte	W08
	.byte		N12   , Cn1 , v096
	.byte		N12   , An2 , v072
	.byte	W12
	.byte		N08   , Dn1 , v092
	.byte	W08
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Dn1 , v092
	.byte	W08
	.byte	PEND
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_078
@ 080   ----------------------------------------
mus_3s_and_7s_4_080:
	.byte		N08   , Cn1 , v096
	.byte		N08   , Cs2 , v072
	.byte	W08
	.byte		        Dn1 , v092
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Cn1 , v096
	.byte		N08   , An2 , v072
	.byte	W08
	.byte		        Dn1 , v092
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte	PEND
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_078
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_078
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_077
@ 084   ----------------------------------------
mus_3s_and_7s_4_084:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Dn1 , v092
	.byte	W08
	.byte		N12   , Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Dn1 , v092
	.byte	W08
	.byte		N12   , Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Dn1 , v092
	.byte	W08
	.byte		N12   , Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Dn1 , v092
	.byte	W08
	.byte		N12   , Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Dn1 , v092
	.byte	W08
	.byte		N12   , Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Dn1 , v092
	.byte	W08
	.byte	PEND
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_084
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_080
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_084
@ 088   ----------------------------------------
mus_3s_and_7s_4_088:
	.byte		N08   , Cn1 , v096
	.byte		N08   , Cs2 , v072
	.byte	W08
	.byte		        Dn1 , v092
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Cn1 , v096
	.byte		N08   , An2 , v072
	.byte	W08
	.byte		        Dn1 , v092
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte	PEND
@ 089   ----------------------------------------
mus_3s_and_7s_4_089:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Dn1 , v092
	.byte	W08
	.byte		N12   , Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Dn1 , v092
	.byte	W08
	.byte		N12   , Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Dn1 , v092
	.byte	W08
	.byte		N12   , Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Dn1 , v092
	.byte	W08
	.byte		N12   , Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N08   , Dn1 , v092
	.byte	W04
	.byte	PEND
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_088
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_089
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_088
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_089
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_080
@ 095   ----------------------------------------
	.byte	W96
	.byte	W24
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
mus_3s_and_7s_4_099:
	.byte		N12   , Cn1 , v096
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte	PEND
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_099
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_099
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_099
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_099
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_099
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_099
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_099
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_099
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_099
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_099
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_099
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_099
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_099
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_3s_and_7s_4_099
@ 114   ----------------------------------------
	.byte		N12   , Cn1 , v096
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W48
	.byte	FINE

@******************************************************@
	.align	2

mus_3s_and_7s:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_3s_and_7s_pri	@ Priority
	.byte	mus_3s_and_7s_rev	@ Reverb.

	.word	mus_3s_and_7s_grp

	.word	mus_3s_and_7s_1
	.word	mus_3s_and_7s_2
	.word	mus_3s_and_7s_3
	.word	mus_3s_and_7s_4

	.end
