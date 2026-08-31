	.include "MPlayDef.s"

	.equ	mus_around_the_fur_grp, voicegroup_hlw_rock_metal
	.equ	mus_around_the_fur_pri, 0
	.equ	mus_around_the_fur_rev, reverb_set+28
	.equ	mus_around_the_fur_mvl, 100
	.equ	mus_around_the_fur_key, 0
	.equ	mus_around_the_fur_tbs, 1
	.equ	mus_around_the_fur_exg, 1
	.equ	mus_around_the_fur_cmp, 1

	.section .rodata
	.global	mus_around_the_fur
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_around_the_fur_1:
	.byte	KEYSH , mus_around_the_fur_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 155*mus_around_the_fur_tbs/2
	.byte		VOICE , 30
	.byte		VOL   , 127*mus_around_the_fur_mvl/mxv
	.byte		N12   , Cs1 , v096
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W36
	.byte		        Cs1 
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
@ 002   ----------------------------------------
mus_around_the_fur_1_002:
	.byte		N12   , Cs1 , v096
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Bn1 
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
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_around_the_fur_1_003:
	.byte		N12   , Cs1 , v096
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W36
	.byte		        Cs1 
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_002
@ 009   ----------------------------------------
mus_around_the_fur_1_009:
	.byte		N12   , Dn2 , v096
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W36
	.byte		        Cs1 
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_003
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_002
@ 017   ----------------------------------------
	.byte		N12   , Cs1 , v096
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte	W12
@ 018   ----------------------------------------
mus_around_the_fur_1_018:
	.byte		N48   , Cs1 , v096
	.byte		N48   , Gs1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		N36   , Cs1 
	.byte		N36   , Gs1 
	.byte		N36   , Cs2 
	.byte	W36
	.byte		N12   , Cs1 
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_around_the_fur_1_019:
	.byte		N12   , En1 , v096
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		N24   , En1 
	.byte		N24   , Bn1 
	.byte		N24   , En2 
	.byte	W24
	.byte		        En1 
	.byte		N24   , Bn1 
	.byte		N24   , En2 
	.byte	W24
	.byte		N12   , En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_around_the_fur_1_020:
	.byte		N12   , Fn1 , v096
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_around_the_fur_1_021:
	.byte		N12   , Cn2 , v096
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_021
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_018
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_019
@ 032   ----------------------------------------
mus_around_the_fur_1_032:
	.byte		N12   , Ds1 , v096
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Ds1 
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_032
@ 034   ----------------------------------------
mus_around_the_fur_1_034:
	.byte		N96   , Cs1 , v096
	.byte		N96   , Gs1 
	.byte		N96   , Cs2 
	.byte		N96   , Gs2 
	.byte	W96
	.byte	PEND
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
	.byte	PATT
	 .word	mus_around_the_fur_1_003
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_002
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_003
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_002
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_003
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_002
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_003
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_002
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_009
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_002
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_003
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_002
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_003
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_002
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_003
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_002
@ 058   ----------------------------------------
	.byte		N12   , Cs1 , v096
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cs1 , v068
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cs1 , v060
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cs1 , v080
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cs1 , v068
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cs1 , v060
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte	W12
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_018
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_019
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_020
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_021
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_018
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_019
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_020
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_021
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_018
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_019
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_020
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_021
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_018
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_019
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_032
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_032
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_034
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
mus_around_the_fur_1_094:
	.byte		N24   , Fn2 , v096
	.byte	W24
	.byte		N48   , Dn2 
	.byte	W48
	.byte		N24   , Cn2 
	.byte	W24
	.byte	PEND
@ 095   ----------------------------------------
	.byte		N96   , Cs2 
	.byte	W96
@ 096   ----------------------------------------
	.byte	W72
	.byte		N24   , Gn1 
	.byte	W24
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte		N96   , Cs1 
	.byte		N96   , Gs1 
	.byte		N96   , Cs2 
	.byte	W96
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_094
@ 103   ----------------------------------------
	.byte		N96   , Cs2 , v096
	.byte	W96
@ 104   ----------------------------------------
	.byte	W72
	.byte		N24   , Gn1 
	.byte	W24
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	W96
@ 107   ----------------------------------------
mus_around_the_fur_1_107:
	.byte		N12   , Cs1 , v096
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte	PEND
@ 108   ----------------------------------------
mus_around_the_fur_1_108:
	.byte		N12   , Cs1 , v096
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Bn1 
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
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_107
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_108
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_107
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_108
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_107
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_108
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_107
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_108
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_107
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_108
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_107
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_108
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_107
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_1_108
@ 123   ----------------------------------------
	.byte	TEMPO , 120*mus_around_the_fur_tbs/2
	.byte		N36   , Cs1 , v096
	.byte		N36   , Gs1 
	.byte		N36   , Cs2 
	.byte	W36
	.byte		        Cs1 
	.byte		N36   , Gs1 
	.byte		N36   , Cs2 
	.byte	W36
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_around_the_fur_2:
	.byte	KEYSH , mus_around_the_fur_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 118*mus_around_the_fur_mvl/mxv
	.byte		N12   , Cs0 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 001   ----------------------------------------
mus_around_the_fur_2_001:
	.byte		N12   , Cs1 , v096
	.byte	W12
	.byte		        Bn0 
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
@ 002   ----------------------------------------
mus_around_the_fur_2_002:
	.byte		N12   , Cs0 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_001
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
mus_around_the_fur_2_017:
	.byte		N48   , Cs0 , v096
	.byte	W48
	.byte		N36   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_around_the_fur_2_018:
	.byte		N12   , En0 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_around_the_fur_2_019:
	.byte		N12   , Fn0 , v096
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
@ 020   ----------------------------------------
mus_around_the_fur_2_020:
	.byte		N12   , Cn1 , v096
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
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_017
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_017
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_018
@ 031   ----------------------------------------
mus_around_the_fur_2_031:
	.byte		N12   , Ds0 , v096
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
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_031
@ 033   ----------------------------------------
	.byte		N96   , Cs0 , v096
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
	.byte	PATT
	 .word	mus_around_the_fur_2_002
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_001
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_002
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_001
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_002
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_001
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_002
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_001
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_002
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_001
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_002
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_001
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_002
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_001
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_002
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_001
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_017
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_018
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_019
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_020
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_017
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_018
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_019
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_020
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_017
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_018
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_019
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_020
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_017
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_018
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_031
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_031
@ 074   ----------------------------------------
mus_around_the_fur_2_074:
	.byte		N48   , Cs0 , v096
	.byte	W48
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 075   ----------------------------------------
mus_around_the_fur_2_075:
	.byte	W24
	.byte		N24   , Cs0 , v096
	.byte	W24
	.byte		        Cs1 
	.byte	W24
	.byte		        Gn0 
	.byte	W24
	.byte	PEND
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_074
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_075
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_074
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_075
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_074
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_075
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_074
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_075
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_074
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_075
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_074
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_075
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_074
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_075
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
mus_around_the_fur_2_106:
	.byte		N12   , Cs0 , v096
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
@ 107   ----------------------------------------
mus_around_the_fur_2_107:
	.byte		N12   , Cs0 , v096
	.byte	W12
	.byte		        Bn0 
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
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_106
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_107
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_106
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_107
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_106
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_107
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_106
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_107
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_106
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_107
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_106
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_107
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_106
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_2_107
@ 122   ----------------------------------------
	.byte		N36   , Cs0 , v096
	.byte	W36
	.byte		N36   
	.byte	W36
	.byte	FINE

@**************** Track 3 (Midi-Chn.10) ****************@

mus_around_the_fur_3:
	.byte	KEYSH , mus_around_the_fur_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 120*mus_around_the_fur_mvl/mxv
	.byte		N12   , Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v104
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W24
@ 001   ----------------------------------------
mus_around_the_fur_3_001:
	.byte		N12   , Fs1 , v068
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W24
	.byte		N12   
	.byte	W15
	.byte		N03   , Dn1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	PEND
@ 002   ----------------------------------------
mus_around_the_fur_3_002:
	.byte		N12   , Cn1 , v104
	.byte		N12   , As1 , v072
	.byte	W24
	.byte		        Cn1 , v104
	.byte		N12   , As1 , v072
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
mus_around_the_fur_3_003:
	.byte		N12   , Fs1 , v068
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
mus_around_the_fur_3_004:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v104
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_002
@ 015   ----------------------------------------
mus_around_the_fur_3_015:
	.byte		N12   , Fs1 , v068
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v104
	.byte	W09
	.byte		N03   , Dn1 , v064
	.byte	W03
	.byte	PEND
@ 016   ----------------------------------------
mus_around_the_fur_3_016:
	.byte		N48   , Dn1 , v104
	.byte	W48
	.byte		        Fs1 , v068
	.byte	W48
	.byte	PEND
@ 017   ----------------------------------------
mus_around_the_fur_3_017:
	.byte		N24   , Cn1 , v116
	.byte		N24   , Cs2 , v088
	.byte	W24
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        As1 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_around_the_fur_3_018:
	.byte		N24   , Cn1 , v104
	.byte		N24   , An2 , v080
	.byte	W24
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        As1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
mus_around_the_fur_3_019:
	.byte		N24   , Cn1 , v116
	.byte		N24   , An2 , v088
	.byte	W24
	.byte		N12   , Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N24   , Dn1 , v104
	.byte		N24   , Cs2 , v080
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_around_the_fur_3_020:
	.byte		N24   , Dn1 , v104
	.byte		N24   , Cs2 , v080
	.byte	W24
	.byte		N12   , Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_019
@ 024   ----------------------------------------
mus_around_the_fur_3_024:
	.byte		N12   , Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_017
@ 026   ----------------------------------------
mus_around_the_fur_3_026:
	.byte		N24   , Cn1 , v104
	.byte		N24   , An2 , v080
	.byte	W24
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N24   , Dn1 , v104
	.byte		N24   , As1 , v072
	.byte	W24
	.byte		N12   , Cn1 , v104
	.byte		N12   , As1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_019
@ 028   ----------------------------------------
mus_around_the_fur_3_028:
	.byte		N24   , Cn1 , v104
	.byte		N24   , Cs2 , v080
	.byte	W24
	.byte		N12   , Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_017
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_019
@ 032   ----------------------------------------
mus_around_the_fur_3_032:
	.byte		N24   , Dn1 , v104
	.byte		N24   , Cs2 , v080
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N24   , Cs2 , v080
	.byte	W24
	.byte	PEND
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_004
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_001
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_002
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_003
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_004
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_001
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_002
@ 040   ----------------------------------------
	.byte		N12   , Fs1 , v068
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N24   , Dn1 , v104
	.byte		N24   , Cs2 , v080
	.byte	W24
	.byte		N12   , Fs1 , v068
	.byte	W24
@ 041   ----------------------------------------
	.byte		        Cn1 , v116
	.byte		N12   , An2 , v088
	.byte	W12
	.byte		        Cn1 , v104
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W24
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_001
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_002
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_003
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_004
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_001
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_002
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_003
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_004
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_001
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_002
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_003
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_004
@ 054   ----------------------------------------
	.byte		N12   , Fs1 , v068
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W24
	.byte		N12   
	.byte	W15
	.byte		N03   , Dn1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_002
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_015
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_016
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_017
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_018
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_019
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_020
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_017
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_018
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_019
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_024
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_017
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_026
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_019
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_028
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_017
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_026
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_019
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_032
@ 074   ----------------------------------------
	.byte		N24   , Cn1 , v116
	.byte		N24   , Cs2 , v088
	.byte	W24
	.byte		        Ds2 , v068
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte		N24   
	.byte	W24
@ 075   ----------------------------------------
mus_around_the_fur_3_075:
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte		        Cn1 , v096
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte		        Cn1 , v096
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte	PEND
@ 076   ----------------------------------------
mus_around_the_fur_3_076:
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 077   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N24   , Ds2 , v068
	.byte	W24
@ 078   ----------------------------------------
mus_around_the_fur_3_078:
	.byte		N24   , Cn1 , v096
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 079   ----------------------------------------
mus_around_the_fur_3_079:
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte		        Cn1 , v096
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte	PEND
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_076
@ 081   ----------------------------------------
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N24   , Dn1 , v092
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte		N24   
	.byte	W24
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_078
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_079
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_076
@ 085   ----------------------------------------
mus_around_the_fur_3_085:
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte		        Cn1 , v096
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_078
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_075
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_076
@ 089   ----------------------------------------
	.byte		N12   , Ds2 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte		N24   
	.byte	W24
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_078
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_079
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_076
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_085
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_078
@ 095   ----------------------------------------
mus_around_the_fur_3_095:
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte		        Cn1 , v096
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte		        Dn1 , v092
	.byte		N24   , Ds2 , v068
	.byte	W24
	.byte		        Cn1 , v088
	.byte		N24   , Cs2 , v068
	.byte	W24
	.byte	PEND
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_076
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_075
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_078
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_079
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_076
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_085
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_078
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_095
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_076
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_075
@ 106   ----------------------------------------
mus_around_the_fur_3_106:
	.byte		N24   , Cn1 , v116
	.byte		N24   , An2 , v088
	.byte	W24
	.byte		N12   , Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte	PEND
@ 107   ----------------------------------------
	.byte		N24   , Cn1 , v104
	.byte		N24   , Cs2 , v080
	.byte	W24
	.byte		        Cn1 , v104
	.byte		N24   , Cs2 , v080
	.byte	W24
	.byte		N12   , Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_106
@ 109   ----------------------------------------
	.byte		N12   , Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Cs2 , v080
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
@ 110   ----------------------------------------
	.byte		        Cn1 , v116
	.byte		N12   , An2 , v088
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N24   , Dn1 , v104
	.byte		N24   , Cs2 , v080
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_028
@ 112   ----------------------------------------
	.byte		N12   , Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N24   , Cn1 , v104
	.byte		N24   , Cs2 , v080
	.byte	W24
	.byte		        Dn1 , v104
	.byte		N24   , Cs2 , v080
	.byte	W24
@ 113   ----------------------------------------
	.byte		N12   , Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Dn1 , v104
	.byte	W12
	.byte		N12   
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_106
@ 115   ----------------------------------------
	.byte		N12   , Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Dn1 , v104
	.byte	W12
	.byte		        Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
@ 116   ----------------------------------------
	.byte		        Cn1 , v116
	.byte		N12   , An2 , v088
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
@ 117   ----------------------------------------
	.byte		N24   , Cn1 , v116
	.byte		N24   , An2 , v088
	.byte	W24
	.byte		N12   , Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_106
@ 119   ----------------------------------------
	.byte		N12   , Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Dn1 , v104
	.byte	W12
	.byte		        Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_around_the_fur_3_106
@ 121   ----------------------------------------
	.byte		N24   , Cn1 , v104
	.byte		N24   , Cs2 , v080
	.byte	W24
	.byte		N12   , Cn1 , v104
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N24   , Dn1 , v104
	.byte		N24   , Cs2 , v080
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
@ 122   ----------------------------------------
	.byte		N36   , Dn1 , v092
	.byte		N36   , Gn1 , v080
	.byte	W36
	.byte		        Dn1 , v092
	.byte		N36   , Gn1 , v080
	.byte	W36
	.byte	FINE

@******************************************************@
	.align	2

mus_around_the_fur:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_around_the_fur_pri	@ Priority
	.byte	mus_around_the_fur_rev	@ Reverb.

	.word	mus_around_the_fur_grp

	.word	mus_around_the_fur_1
	.word	mus_around_the_fur_2
	.word	mus_around_the_fur_3

	.end
