	.include "MPlayDef.s"

	.equ	mus_be_quiet_and_drive_grp, voicegroup_hlw_rock_metal
	.equ	mus_be_quiet_and_drive_pri, 0
	.equ	mus_be_quiet_and_drive_rev, reverb_set+38
	.equ	mus_be_quiet_and_drive_mvl, 100
	.equ	mus_be_quiet_and_drive_key, 0
	.equ	mus_be_quiet_and_drive_tbs, 1
	.equ	mus_be_quiet_and_drive_exg, 1
	.equ	mus_be_quiet_and_drive_cmp, 1

	.section .rodata
	.global	mus_be_quiet_and_drive
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_be_quiet_and_drive_1:
	.byte	KEYSH , mus_be_quiet_and_drive_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 83*mus_be_quiet_and_drive_tbs/2
	.byte		VOICE , 29
	.byte		VOL   , 127*mus_be_quiet_and_drive_mvl/mxv
	.byte		N24   , Gs2 , v096
	.byte		N24   , Ds3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Gs2 
	.byte		N24   , Ds3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Gs2 
	.byte		N24   , Ds3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Gs2 
	.byte		N24   , Ds3 
	.byte		N24   , Gn3 
	.byte	W24
@ 002   ----------------------------------------
mus_be_quiet_and_drive_1_002:
	.byte		N24   , Cs3 , v096
	.byte		N24   , Gs3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , Gs3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , Gs3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , Gs3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
mus_be_quiet_and_drive_1_003:
	.byte		N24   , Gs2 , v096
	.byte		N24   , Ds3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Gs2 
	.byte		N24   , Ds3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Gs2 
	.byte		N24   , Ds3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Gs2 
	.byte		N24   , Ds3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_003
@ 008   ----------------------------------------
	.byte		N24   , Cs3 , v096
	.byte		N24   , Gs3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N48   , Cs3 
	.byte		N48   , Gs3 
	.byte		N48   , Cn4 
	.byte	W48
	.byte		N24   , Gs1 
	.byte		N24   , Cs2 
	.byte		N24   , Fs2 
	.byte	W24
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
mus_be_quiet_and_drive_1_010:
	.byte		N12   , Cs1 , v096
	.byte		N12   , Fn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte		N12   , Fn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   
	.byte		N12   , Fn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , Cs1 
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N24   
	.byte		N24   , Fn2 
	.byte		N24   , Fn3 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
mus_be_quiet_and_drive_1_011:
	.byte		N12   , As1 , v096
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
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , As1 
	.byte		N06   , Fn2 
	.byte		N06   , As2 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W18
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 016   ----------------------------------------
mus_be_quiet_and_drive_1_016:
	.byte		N06   , Fn2 , v096
	.byte		N06   , Fn3 
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
	.byte		N12   , Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N12   , Fn2 
	.byte		N12   , Fn3 
	.byte	W18
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 018   ----------------------------------------
mus_be_quiet_and_drive_1_018:
	.byte		N12   , Cs1 , v096
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , Cs1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N24   
	.byte		N24   , Fn2 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
mus_be_quiet_and_drive_1_019:
	.byte		N12   , As1 , v096
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , As1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte	W18
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_018
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_019
@ 024   ----------------------------------------
mus_be_quiet_and_drive_1_024:
	.byte		N06   , Cs1 , v096
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N12   , Cs1 
	.byte		N12   , Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Cs1 
	.byte		N06   , Fs2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs1 
	.byte		N06   , Fs2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N12   , Cs1 
	.byte		N12   , Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Cs1 
	.byte		N06   , Fs2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs1 
	.byte		N06   , Fs2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N12   , Cs1 
	.byte		N12   , Fn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_019
@ 026   ----------------------------------------
mus_be_quiet_and_drive_1_026:
	.byte		N12   , Fn2 , v096
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Fn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N24   , Fn2 
	.byte		N24   , Fn3 
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_026
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_018
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_019
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_018
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_019
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_018
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_019
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_024
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_019
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_003
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_002
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_003
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_002
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_003
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_002
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_003
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_002
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_010
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_010
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_010
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_018
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_019
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_018
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_019
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_018
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_019
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_024
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_019
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_003
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_002
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_003
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_002
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_003
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_002
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_003
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_002
@ 070   ----------------------------------------
mus_be_quiet_and_drive_1_070:
	.byte		N12   , Cs1 , v096
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , Cs1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Cn4 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N12   , Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	PEND
@ 071   ----------------------------------------
	.byte		N12   , Cs1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_070
@ 073   ----------------------------------------
	.byte		N12   , Cs1 , v096
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Cs3 
	.byte		N06   , Gs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , Cs3 
	.byte		N12   , Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Cs3 
	.byte		N06   , Gs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
@ 074   ----------------------------------------
mus_be_quiet_and_drive_1_074:
	.byte		N12   , Cs1 , v096
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte	W36
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte	W36
	.byte	PEND
@ 075   ----------------------------------------
mus_be_quiet_and_drive_1_075:
	.byte		N12   , Cs1 , v096
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte	W36
	.byte		N06   , Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte	PEND
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_074
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_075
@ 078   ----------------------------------------
	.byte		N96   , Cs1 , v096
	.byte		N96   , Gs1 
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_010
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_010
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_010
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_016
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_010
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_010
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_010
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_016
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_010
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_010
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_010
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_016
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_010
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_010
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_010
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_016
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_1_011
@ 114   ----------------------------------------
	.byte		N96   , Cs1 , v096
	.byte		N96   , Gs1 
	.byte		N96   , Cs2 
	.byte	W96
@ 115   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_be_quiet_and_drive_2:
	.byte	KEYSH , mus_be_quiet_and_drive_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 30
	.byte		VOL   , 127*mus_be_quiet_and_drive_mvl/mxv
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
mus_be_quiet_and_drive_2_009:
	.byte		N24   , Cs1 , v096
	.byte		N24   , Gs1 
	.byte		N24   , Cs2 
	.byte	W24
	.byte		        Cs1 
	.byte		N24   , Gs1 
	.byte		N24   , Cs2 
	.byte	W24
	.byte		        Cs1 
	.byte		N24   , Gs1 
	.byte		N24   , Cs2 
	.byte	W24
	.byte		        Cs1 
	.byte		N24   , Gs1 
	.byte		N24   , Cs2 
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
mus_be_quiet_and_drive_2_010:
	.byte		N24   , As1 , v096
	.byte		N24   , Fn2 
	.byte		N24   , As2 
	.byte	W24
	.byte		        As1 
	.byte		N24   , Fn2 
	.byte		N24   , As2 
	.byte	W24
	.byte		        As1 
	.byte		N24   , Fn2 
	.byte		N24   , As2 
	.byte	W24
	.byte		        As1 
	.byte		N24   , Fn2 
	.byte		N24   , As2 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
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
	.byte		N12   , Cs1 , v096
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte	W18
	.byte		N06   , Cs1 
	.byte		N06   , Gs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N12   , Cs1 
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte	W18
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , Cs1 
	.byte		N06   , Gs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Cs1 
	.byte		N06   , Gs1 
	.byte		N06   , Cs2 
	.byte	W24
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
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
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
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
mus_be_quiet_and_drive_2_069:
	.byte		N12   , Cs1 , v096
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , Cs1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Cn4 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N12   , Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte		N06   , Fn4 
	.byte	W06
	.byte	PEND
@ 070   ----------------------------------------
	.byte		N12   , Cs1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Cs1 
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_069
@ 072   ----------------------------------------
	.byte		N12   , Cs1 , v096
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Cs3 
	.byte		N06   , Gs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , Cs3 
	.byte		N12   , Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Cs3 
	.byte		N06   , Gs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
@ 073   ----------------------------------------
mus_be_quiet_and_drive_2_073:
	.byte		N12   , Cs1 , v096
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N12   , Cs1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N12   , Cs1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N12   , Cs1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte		N06   , Gs1 
	.byte	W06
	.byte	PEND
@ 074   ----------------------------------------
mus_be_quiet_and_drive_2_074:
	.byte		N12   , Cs1 , v096
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N12   , Cs1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte	PEND
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_073
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_074
@ 077   ----------------------------------------
	.byte		N96   , Cs1 , v096
	.byte		N96   , Gs1 
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_009
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_2_010
@ 113   ----------------------------------------
	.byte		N96   , Cs1 , v096
	.byte		N96   , Gs1 
	.byte		N96   , Cs2 
	.byte	W96
@ 114   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.5) ****************@

mus_be_quiet_and_drive_3:
	.byte	KEYSH , mus_be_quiet_and_drive_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 118*mus_be_quiet_and_drive_mvl/mxv
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
mus_be_quiet_and_drive_3_009:
	.byte		N12   , Cs0 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
mus_be_quiet_and_drive_3_010:
	.byte		N12   , As0 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N12   , As0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N12   , As0 
	.byte	W18
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 037   ----------------------------------------
mus_be_quiet_and_drive_3_037:
	.byte		N06   , Gs1 , v096
	.byte	W06
	.byte		N72   
	.byte	W90
	.byte	PEND
@ 038   ----------------------------------------
mus_be_quiet_and_drive_3_038:
	.byte		N06   , Cs0 , v096
	.byte	W06
	.byte		N72   
	.byte	W90
	.byte	PEND
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_037
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_038
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_037
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_038
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_037
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_038
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_037
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_038
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_037
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_038
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_037
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_038
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_037
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_038
@ 069   ----------------------------------------
mus_be_quiet_and_drive_3_069:
	.byte		N12   , Cs0 , v096
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 070   ----------------------------------------
mus_be_quiet_and_drive_3_070:
	.byte		N12   , Cs0 , v096
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_069
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_070
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_069
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_070
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_069
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_070
@ 077   ----------------------------------------
	.byte		N96   , Cs0 , v096
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_009
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_3_010
@ 113   ----------------------------------------
	.byte		N96   , Cs0 , v096
	.byte	W96
@ 114   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_be_quiet_and_drive_4:
	.byte	KEYSH , mus_be_quiet_and_drive_key+0
@ 000   ----------------------------------------
	.byte		VOL   , 120*mus_be_quiet_and_drive_mvl/mxv
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
mus_be_quiet_and_drive_4_008:
	.byte		N24   , Fs1 , v068
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
mus_be_quiet_and_drive_4_009:
	.byte		N06   , Cn1 , v096
	.byte		N06   , An2 , v072
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , An2 , v072
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , An2 , v072
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_be_quiet_and_drive_4_010:
	.byte		N06   , Cn1 , v096
	.byte		N06   , An2 , v072
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , An2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , An2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        An2 , v072
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 016   ----------------------------------------
mus_be_quiet_and_drive_4_016:
	.byte		N06   , Cn1 , v096
	.byte		N06   , An2 , v072
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , An2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		N06   
	.byte		N06   , An2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , An2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , An2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        An2 , v072
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_be_quiet_and_drive_4_017:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_be_quiet_and_drive_4_018:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_017
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_018
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_017
@ 024   ----------------------------------------
mus_be_quiet_and_drive_4_024:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_016
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_017
@ 030   ----------------------------------------
mus_be_quiet_and_drive_4_030:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_017
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_030
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_017
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_030
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_017
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_024
@ 037   ----------------------------------------
mus_be_quiet_and_drive_4_037:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W18
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        An1 , v080
	.byte	W18
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W24
	.byte	PEND
@ 038   ----------------------------------------
mus_be_quiet_and_drive_4_038:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W18
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W18
	.byte		        Ds2 , v068
	.byte	W06
	.byte		        An1 , v080
	.byte	W18
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W18
	.byte	PEND
@ 039   ----------------------------------------
mus_be_quiet_and_drive_4_039:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        An1 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W24
	.byte	PEND
@ 040   ----------------------------------------
mus_be_quiet_and_drive_4_040:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W18
	.byte		        Ds2 , v068
	.byte	W06
	.byte		        An1 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W18
	.byte	PEND
@ 041   ----------------------------------------
mus_be_quiet_and_drive_4_041:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        An1 , v080
	.byte	W18
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W24
	.byte	PEND
@ 042   ----------------------------------------
mus_be_quiet_and_drive_4_042:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W18
	.byte		        Ds2 , v068
	.byte	W06
	.byte		        An1 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W24
	.byte	PEND
@ 043   ----------------------------------------
mus_be_quiet_and_drive_4_043:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Ds2 , v068
	.byte	W06
	.byte		        An1 , v080
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W18
	.byte	PEND
@ 044   ----------------------------------------
mus_be_quiet_and_drive_4_044:
	.byte		N06   , Cn1 , v096
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Ds2 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		N06   
	.byte		N06   , An2 , v072
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte	PEND
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_017
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_030
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_017
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_030
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_017
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_030
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_017
@ 060   ----------------------------------------
	.byte		N06   , Cn1 , v096
	.byte		N06   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W12
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_037
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_038
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_039
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_040
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_041
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_042
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_043
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_044
@ 069   ----------------------------------------
mus_be_quiet_and_drive_4_069:
	.byte		N06   , Cn1 , v096
	.byte		N06   , An2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N06   , An2 , v072
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N06   , An2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N06   , An2 , v072
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_069
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_069
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_069
@ 073   ----------------------------------------
mus_be_quiet_and_drive_4_073:
	.byte		N06   , Cn1 , v096
	.byte		N06   , An2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        An2 , v072
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W18
	.byte		        Cn1 , v096
	.byte		N06   , An2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        An2 , v072
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W18
	.byte	PEND
@ 074   ----------------------------------------
mus_be_quiet_and_drive_4_074:
	.byte		N06   , Cn1 , v096
	.byte		N06   , An2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        An2 , v072
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W18
	.byte		N06   
	.byte		N06   , An2 , v072
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte		N06   , An2 , v072
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_073
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_074
@ 077   ----------------------------------------
mus_be_quiet_and_drive_4_077:
	.byte		N96   , Cn1 , v096
	.byte		N96   , An2 , v072
	.byte	W96
	.byte	PEND
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_008
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_009
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_010
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_be_quiet_and_drive_4_077
@ 114   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_be_quiet_and_drive:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_be_quiet_and_drive_pri	@ Priority
	.byte	mus_be_quiet_and_drive_rev	@ Reverb.

	.word	mus_be_quiet_and_drive_grp

	.word	mus_be_quiet_and_drive_1
	.word	mus_be_quiet_and_drive_2
	.word	mus_be_quiet_and_drive_3
	.word	mus_be_quiet_and_drive_4

	.end
