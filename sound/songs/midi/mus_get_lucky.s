	.include "MPlayDef.s"

	.equ	mus_get_lucky_grp, voicegroup_get_lucky
	.equ	mus_get_lucky_pri, 0
	.equ	mus_get_lucky_rev, reverb_set+50
	.equ	mus_get_lucky_mvl, 100
	.equ	mus_get_lucky_key, 0
	.equ	mus_get_lucky_tbs, 1
	.equ	mus_get_lucky_exg, 1
	.equ	mus_get_lucky_cmp, 1

	.section .rodata
	.global	mus_get_lucky
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_get_lucky_1:
	.byte		VOL   , 127*mus_get_lucky_mvl/mxv
	.byte	KEYSH , mus_get_lucky_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 116*mus_get_lucky_tbs/2
	.byte		VOICE , 33
	.byte	W96
mus_get_lucky_1_B1:
@ 001   ----------------------------------------
	.byte		N06   , Bn0 , v072
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
@ 002   ----------------------------------------
mus_get_lucky_1_002:
	.byte		N06   , Dn1 , v072
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		        Cs1 
	.byte	W06
	.byte		        Dn1 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
mus_get_lucky_1_003:
	.byte		N06   , Fs1 , v072
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_get_lucky_1_004:
	.byte		N06   , En1 , v072
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_get_lucky_1_005:
	.byte		N06   , Bn0 , v072
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
mus_get_lucky_1_006:
	.byte		N06   , Dn1 , v072
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Cs1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_get_lucky_1_007:
	.byte		N06   , Fs1 , v072
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		        Fs0 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
mus_get_lucky_1_008:
	.byte		N06   , En0 , v072
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Fn0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		        Gn0 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_get_lucky_1_009:
	.byte		N06   , Bn0 , v072
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        Cs0 
	.byte		N06   , Cs1 
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W24
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        En0 
	.byte	W06
@ 011   ----------------------------------------
mus_get_lucky_1_011:
	.byte		N06   , Fs0 , v072
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		        Fs1 
	.byte	W06
	.byte		        Fs0 
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
mus_get_lucky_1_012:
	.byte		N06   , En0 , v072
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_009
@ 014   ----------------------------------------
mus_get_lucky_1_014:
	.byte		N06   , Dn0 , v072
	.byte		N06   , Dn1 
	.byte	W24
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W18
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Cs0 
	.byte		N06   , Cs1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        En0 
	.byte		N06   , En1 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
	.byte		        Fs0 
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
@ 016   ----------------------------------------
mus_get_lucky_1_016:
	.byte		N06   , En0 , v072
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 017   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn0 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
@ 018   ----------------------------------------
mus_get_lucky_1_018:
	.byte		N06   , Dn0 , v072
	.byte		N06   , Dn1 
	.byte	W24
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W18
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        En0 
	.byte		N06   , En1 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_get_lucky_1_019:
	.byte		N06   , Fs0 , v072
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Fs0 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte		        En0 
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte		N06   , En1 
	.byte	W06
	.byte		        En0 
	.byte		N06   , En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        An1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W12
@ 021   ----------------------------------------
mus_get_lucky_1_021:
	.byte		N06   , Bn0 , v072
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W24
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W18
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        En0 
	.byte		N06   , Dn1 
	.byte	W12
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_019
@ 024   ----------------------------------------
	.byte		N06   , En0 , v072
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte		N06   , En1 
	.byte	W06
	.byte		        En0 
	.byte		N06   , En1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cs0 
	.byte	W06
@ 026   ----------------------------------------
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W24
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W18
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Dn0 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Cs1 
	.byte	W06
	.byte		        Dn0 
	.byte		N06   , An0 
	.byte	W06
@ 027   ----------------------------------------
	.byte		        Fs0 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 028   ----------------------------------------
	.byte		        En0 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        En1 
	.byte	W06
	.byte		        En0 
	.byte	W06
	.byte		        Fs0 
	.byte	W12
	.byte		N06   
	.byte		N06   , Bn0 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
@ 029   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
@ 030   ----------------------------------------
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W24
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W24
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W24
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Dn0 
	.byte	W06
@ 031   ----------------------------------------
	.byte		        Fs0 
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W18
@ 032   ----------------------------------------
	.byte		        En0 
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		        Bn0 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 033   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
@ 034   ----------------------------------------
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W24
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W18
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W24
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W18
	.byte		        En0 
	.byte		N06   , An0 
	.byte	W06
@ 035   ----------------------------------------
	.byte		        Fs0 
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		N06   
	.byte	W12
@ 036   ----------------------------------------
	.byte		        En0 
	.byte		N06   , En1 
	.byte	W24
	.byte		        En0 
	.byte		N06   , En1 
	.byte	W18
	.byte		        En0 
	.byte		N06   , En1 
	.byte	W06
	.byte		        En0 
	.byte		N06   , En1 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_005
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_006
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_007
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_009
@ 042   ----------------------------------------
	.byte		N06   , Dn0 , v072
	.byte		N06   , Dn1 
	.byte	W24
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W18
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W18
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn0 
	.byte	W06
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_012
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_009
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_014
@ 047   ----------------------------------------
	.byte		N06   , Fs0 , v072
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W24
	.byte		N06   
	.byte	W12
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_021
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_018
@ 051   ----------------------------------------
	.byte		N06   , Fs0 , v072
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
@ 052   ----------------------------------------
	.byte		        En0 
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        An1 
	.byte	W24
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_021
@ 054   ----------------------------------------
	.byte		N06   , Dn0 , v072
	.byte		N06   , Dn1 
	.byte	W24
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W18
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
@ 055   ----------------------------------------
	.byte		        Fs0 
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		        Fs1 
	.byte	W06
	.byte		        Fs0 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
@ 056   ----------------------------------------
	.byte		        En0 
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
@ 057   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
@ 058   ----------------------------------------
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W24
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W18
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Dn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Dn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Dn0 
	.byte		N06   , Cs1 
	.byte	W06
	.byte		        An0 
	.byte	W06
@ 059   ----------------------------------------
	.byte		        Fs0 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
@ 060   ----------------------------------------
	.byte		        En0 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        En1 
	.byte	W06
	.byte		        En0 
	.byte	W18
	.byte		        Fs0 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
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
	.byte	W48
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        An1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W12
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
mus_get_lucky_1_073:
	.byte		N06   , Bn0 , v072
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 074   ----------------------------------------
mus_get_lucky_1_074:
	.byte		N06   , Dn0 , v072
	.byte		N06   , Dn1 
	.byte	W24
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte	PEND
@ 075   ----------------------------------------
mus_get_lucky_1_075:
	.byte		N06   , Fs0 , v072
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 076   ----------------------------------------
mus_get_lucky_1_076:
	.byte		N06   , En0 , v072
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		        En0 
	.byte	W06
	.byte	PEND
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_073
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_074
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_075
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_076
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_073
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_074
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_075
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_076
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_073
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_074
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_075
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_076
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_073
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_074
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_075
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_076
@ 093   ----------------------------------------
mus_get_lucky_1_093:
	.byte		N06   , Bn0 , v072
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cs0 
	.byte	W06
	.byte	PEND
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_074
@ 095   ----------------------------------------
	.byte		N06   , Fs0 , v072
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_076
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_093
@ 098   ----------------------------------------
	.byte		N06   , Dn0 , v072
	.byte		N06   , Dn1 
	.byte	W24
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
@ 099   ----------------------------------------
mus_get_lucky_1_099:
	.byte		N06   , Fs0 , v072
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_076
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_093
@ 102   ----------------------------------------
mus_get_lucky_1_102:
	.byte		N06   , Dn0 , v072
	.byte		N06   , Dn1 
	.byte	W24
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn0 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte	PEND
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_099
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_076
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_093
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_102
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_099
@ 108   ----------------------------------------
	.byte		N06   , En0 , v072
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Bn0 
	.byte		N06   , En1 
	.byte	W06
	.byte		        Cs1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte	W06
	.byte		        Cs1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Bn0 
	.byte		N06   , An1 
	.byte	W06
	.byte		        En0 
	.byte	W06
@ 109   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		        Cs1 
	.byte	W06
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_002
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_003
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_004
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_005
@ 114   ----------------------------------------
	.byte		N06   , Dn1 , v072
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W12
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_007
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_1_008
	.byte	GOTO
	 .word	mus_get_lucky_1_B1
mus_get_lucky_1_B2:
@ 117   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_get_lucky_2:
	.byte		VOL   , 127*mus_get_lucky_mvl/mxv
	.byte	KEYSH , mus_get_lucky_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 25
	.byte	W96
mus_get_lucky_2_B1:
@ 001   ----------------------------------------
	.byte		N06   , Dn2 , v072
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Fs2 
	.byte	W12
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , An2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
@ 002   ----------------------------------------
mus_get_lucky_2_002:
	.byte		N06   , Dn2 , v072
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , En3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , En3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte		N06   
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , En3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
@ 004   ----------------------------------------
mus_get_lucky_2_004:
	.byte		N06   , Dn2 , v072
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W12
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_get_lucky_2_005:
	.byte		N06   , Dn2 , v072
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_002
@ 007   ----------------------------------------
mus_get_lucky_2_007:
	.byte		N06   , Dn2 , v072
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , En3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , En3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_004
@ 009   ----------------------------------------
mus_get_lucky_2_009:
	.byte		N06   , Dn2 , v072
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
mus_get_lucky_2_010:
	.byte		N06   , Dn2 , v072
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
@ 012   ----------------------------------------
mus_get_lucky_2_012:
	.byte		N06   , Dn2 , v072
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
mus_get_lucky_2_013:
	.byte		N06   , Dn2 , v072
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
mus_get_lucky_2_014:
	.byte		N06   , Dn2 , v072
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte	PEND
@ 015   ----------------------------------------
mus_get_lucky_2_015:
	.byte		N06   , Dn2 , v072
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte	PEND
@ 016   ----------------------------------------
mus_get_lucky_2_016:
	.byte		N06   , Dn2 , v072
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte	PEND
@ 017   ----------------------------------------
mus_get_lucky_2_017:
	.byte		N06   , Dn2 , v072
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte	PEND
@ 018   ----------------------------------------
mus_get_lucky_2_018:
	.byte		N06   , Dn2 , v072
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
mus_get_lucky_2_019:
	.byte		N06   , Dn2 , v072
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_019
@ 024   ----------------------------------------
mus_get_lucky_2_024:
	.byte		N06   , Dn2 , v072
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N06   , Cs3 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_get_lucky_2_025:
	.byte		N06   , Dn2 , v072
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_get_lucky_2_026:
	.byte		N06   , Dn2 , v072
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W18
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
@ 028   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 029   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
@ 030   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , An2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
@ 031   ----------------------------------------
mus_get_lucky_2_031:
	.byte		N06   , Dn2 , v072
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W18
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 033   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
@ 034   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
@ 035   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , An2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
@ 036   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_005
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_007
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_010
@ 043   ----------------------------------------
	.byte		N06   , Dn2 , v072
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_012
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_013
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_014
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_015
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_018
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_019
@ 052   ----------------------------------------
	.byte		N06   , Dn2 , v072
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_017
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_018
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_019
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_024
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_026
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_031
@ 060   ----------------------------------------
	.byte		N06   , Dn2 , v072
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 061   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
@ 062   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N96   , Dn4 
	.byte		N96   , Fs4 
	.byte		N96   , An4 
	.byte	W06
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
@ 063   ----------------------------------------
	.byte		        Fs2 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N96   , Cs4 
	.byte		N96   , Fs4 
	.byte		N96   , An4 
	.byte	W06
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W18
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
@ 064   ----------------------------------------
	.byte		        En2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N30   , Bn3 
	.byte		N96   , En4 
	.byte	W06
	.byte		N06   , En2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Dn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 065   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
@ 066   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
@ 067   ----------------------------------------
	.byte		        Fs2 
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , An2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
@ 068   ----------------------------------------
	.byte		        En2 
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        En2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 069   ----------------------------------------
	.byte		        Fs3 
	.byte		N06   , Bn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N06   
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 070   ----------------------------------------
mus_get_lucky_2_070:
	.byte		N06   , Fs3 , v072
	.byte		N06   , An3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		        An3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte	PEND
@ 071   ----------------------------------------
mus_get_lucky_2_071:
	.byte		N06   , Cs3 , v072
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W24
	.byte		        Bn2 
	.byte	W12
	.byte		N06   
	.byte	W60
	.byte	PEND
@ 072   ----------------------------------------
	.byte		        En2 
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En3 
	.byte	W06
@ 073   ----------------------------------------
	.byte		        Fs3 
	.byte		N06   , Bn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_070
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_071
@ 076   ----------------------------------------
mus_get_lucky_2_076:
	.byte		N06   , En2 , v072
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 077   ----------------------------------------
	.byte		        Fs3 
	.byte		N06   , Bn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_070
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_071
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_076
@ 081   ----------------------------------------
	.byte		N06   , Fs3 , v072
	.byte		N06   , Bn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , Bn4 
	.byte	W06
@ 082   ----------------------------------------
	.byte		        Fs3 
	.byte		N06   , An3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		        Fs3 
	.byte		N06   , An3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , An3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , An3 
	.byte		N06   , Dn4 
	.byte	W06
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_071
@ 084   ----------------------------------------
	.byte		N06   , En2 , v072
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        En3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 085   ----------------------------------------
mus_get_lucky_2_085:
	.byte		N06   , Dn2 , v072
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte	PEND
@ 086   ----------------------------------------
mus_get_lucky_2_086:
	.byte		N06   , Dn2 , v072
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte	PEND
@ 087   ----------------------------------------
mus_get_lucky_2_087:
	.byte		N06   , Dn2 , v072
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte	PEND
@ 088   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_085
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_086
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_087
@ 092   ----------------------------------------
	.byte		N06   , Dn2 , v072
	.byte		N06   , En2 
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
@ 093   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
@ 094   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Dn4 
	.byte		N06   , Fs4 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
@ 095   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , Fs2 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte		N06   , Fs4 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
@ 096   ----------------------------------------
	.byte		        En2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte		N06   , En4 
	.byte	W12
	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
@ 097   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
@ 098   ----------------------------------------
mus_get_lucky_2_098:
	.byte		N06   , Dn2 , v072
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Dn4 
	.byte		N06   , Fs4 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte	PEND
@ 099   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte		N06   , Fs4 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        En3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
@ 100   ----------------------------------------
	.byte		        En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte		N06   , En4 
	.byte	W12
	.byte		        En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W12
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
@ 101   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
@ 102   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Dn4 
	.byte		N06   , Fs4 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 103   ----------------------------------------
mus_get_lucky_2_103:
	.byte		N06   , Dn2 , v072
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte		N06   , Fs4 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte	PEND
@ 104   ----------------------------------------
	.byte		        En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte		N06   , En4 
	.byte	W12
	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W12
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
@ 105   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_098
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_103
@ 108   ----------------------------------------
	.byte		N06   , En3 , v072
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte		N06   , En4 
	.byte	W12
	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , En3 
	.byte	W12
	.byte		        Cs3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , En3 
	.byte	W06
@ 109   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_002
@ 111   ----------------------------------------
	.byte		N06   , Bn2 , v072
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , En3 
	.byte		N06   , Fs3 
	.byte		N06   , An3 
	.byte	W12
@ 112   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gs3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An2 
	.byte		N06   , Bn2 
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W12
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_005
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_002
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_007
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_2_004
	.byte	GOTO
	 .word	mus_get_lucky_2_B1
mus_get_lucky_2_B2:
@ 117   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_get_lucky_3:
	.byte		VOL   , 127*mus_get_lucky_mvl/mxv
	.byte	KEYSH , mus_get_lucky_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 65
	.byte	W96
mus_get_lucky_3_B1:
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
mus_get_lucky_3_008:
	.byte	W24
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
	.byte	W06
	.byte		N96   , Fs2 
	.byte	W90
@ 010   ----------------------------------------
mus_get_lucky_3_010:
	.byte	W36
	.byte		N11   , Fs2 , v112
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W06
	.byte		N96   , Fs2 
	.byte	W90
@ 012   ----------------------------------------
	.byte	W36
	.byte		N11   , En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W06
@ 013   ----------------------------------------
	.byte	W06
	.byte		N76   , An2 , v112, gtp1
	.byte	W78
	.byte		N11   , En2 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N32   , Fs2 , v112, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W06
@ 015   ----------------------------------------
	.byte	W06
	.byte		N96   , Fs2 
	.byte	W90
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
mus_get_lucky_3_017:
	.byte		N56   , Bn2 , v112, gtp3
	.byte		N56   , Dn3 , v112, gtp3
	.byte	W60
	.byte		N11   , An2 
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        An2 
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N68   , Dn3 , v112, gtp3
	.byte		N68   , Fs3 , v112, gtp3
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_get_lucky_3_018:
	.byte	W60
	.byte		N11   , Cs3 , v112
	.byte		N11   , Fs3 
	.byte	W12
	.byte		        En3 
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N68   , Fs3 , v112, gtp3
	.byte		N68   , An3 , v112, gtp3
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_get_lucky_3_019:
	.byte	W60
	.byte		N11   , Fs3 , v112
	.byte		N11   , An3 
	.byte	W12
	.byte		        Gs3 
	.byte		N11   , Bn3 
	.byte	W12
	.byte		N92   , En3 , v112, gtp3
	.byte		N92   , Gs3 , v112, gtp3
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte	W84
	.byte		N11   , An2 
	.byte	W12
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_018
@ 023   ----------------------------------------
mus_get_lucky_3_023:
	.byte	W60
	.byte		N11   , Fs3 , v112
	.byte		N11   , An3 
	.byte	W12
	.byte		N11   
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N96   , Gs3 
	.byte		N96   , Bn3 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
mus_get_lucky_3_025:
	.byte	W12
	.byte		N06   , Bn2 , v112
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N11   , Bn2 
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N11   , Bn2 
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N32   , Bn2 , v112, gtp3
	.byte		N32   , En3 , v112, gtp3
	.byte	W24
	.byte	PEND
@ 026   ----------------------------------------
mus_get_lucky_3_026:
	.byte	W12
	.byte		N06   , An2 , v112
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N11   , An2 
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        An2 
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        An2 
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N11   , An2 
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N32   , An2 , v112, gtp3
	.byte		N32   , En3 , v112, gtp3
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
mus_get_lucky_3_027:
	.byte	W12
	.byte		N06   , An2 , v112
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N11   , An2 
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        An2 
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        An2 
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N11   , An2 
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N32   , An2 , v112, gtp3
	.byte		N32   , En3 , v112, gtp3
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
mus_get_lucky_3_028:
	.byte	W12
	.byte		N06   , Gs2 , v112
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N11   , Gs2 
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N06   , Gs2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N23   , An2 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_027
@ 032   ----------------------------------------
mus_get_lucky_3_032:
	.byte	W12
	.byte		N06   , Bn2 , v112
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N23   , An2 
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_032
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_032
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_032
@ 036   ----------------------------------------
mus_get_lucky_3_036:
	.byte	W12
	.byte		N06   , Bn2 , v112
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N96   , An2 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_008
@ 041   ----------------------------------------
	.byte	W06
	.byte		N96   , Fs2 , v112
	.byte	W90
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_010
@ 043   ----------------------------------------
	.byte	W06
	.byte		N96   , Fs2 , v112
	.byte	W90
@ 044   ----------------------------------------
	.byte	W48
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N11   , An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W06
@ 045   ----------------------------------------
	.byte	W06
	.byte		N96   , Fs2 
	.byte	W90
@ 046   ----------------------------------------
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W06
@ 047   ----------------------------------------
	.byte	W06
	.byte		N96   , Fs2 
	.byte	W90
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_018
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_019
@ 052   ----------------------------------------
	.byte	W84
	.byte		N11   , An2 , v112
	.byte	W12
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_017
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_018
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_023
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_026
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_027
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_028
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_025
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_026
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_027
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_032
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_032
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_032
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_032
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_036
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
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
	.byte	PATT
	 .word	mus_get_lucky_3_017
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_018
@ 087   ----------------------------------------
	.byte	W60
	.byte		N11   , Fs3 , v112
	.byte		N11   , An3 
	.byte	W12
	.byte		        Gs3 
	.byte		N11   , Bn3 
	.byte	W12
	.byte		N96   , En3 
	.byte		N96   , Gs3 
	.byte	W12
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_017
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_018
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_023
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_025
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_026
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_027
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_028
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_025
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_026
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_027
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_032
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_032
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_032
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_032
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_032
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_032
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_032
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_3_032
@ 108   ----------------------------------------
	.byte	W12
	.byte		N06   , Bn2 , v112
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N06   , An2 
	.byte	W12
@ 109   ----------------------------------------
	.byte	W96
@ 110   ----------------------------------------
	.byte	W96
@ 111   ----------------------------------------
	.byte	W96
@ 112   ----------------------------------------
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte	W96
@ 115   ----------------------------------------
	.byte	W96
@ 116   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_get_lucky_3_B1
mus_get_lucky_3_B2:
@ 117   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_get_lucky_4:
	.byte		VOL   , 127*mus_get_lucky_mvl/mxv
	.byte	KEYSH , mus_get_lucky_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 81
	.byte	W96
mus_get_lucky_4_B1:
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
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W18
	.byte		N06   , An2 , v127
	.byte	W24
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W36
	.byte		        Gs2 
	.byte	W06
@ 074   ----------------------------------------
	.byte	W48
	.byte		        Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W18
	.byte		        Bn2 
	.byte	W06
@ 075   ----------------------------------------
	.byte	W12
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 076   ----------------------------------------
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
@ 077   ----------------------------------------
mus_get_lucky_4_077:
	.byte	W12
	.byte		N06   , Fs2 , v127
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_4_077
@ 079   ----------------------------------------
mus_get_lucky_4_079:
	.byte	W12
	.byte		N06   , An2 , v127
	.byte	W06
	.byte		        Fs2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 080   ----------------------------------------
mus_get_lucky_4_080:
	.byte	W12
	.byte		N06   , Gs2 , v127
	.byte	W06
	.byte		        En2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_4_077
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_4_077
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_4_079
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_4_080
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
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	W96
@ 107   ----------------------------------------
	.byte	W96
@ 108   ----------------------------------------
	.byte	W96
@ 109   ----------------------------------------
	.byte	W96
@ 110   ----------------------------------------
	.byte	W96
@ 111   ----------------------------------------
	.byte	W96
@ 112   ----------------------------------------
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte	W96
@ 115   ----------------------------------------
	.byte	W96
@ 116   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_get_lucky_4_B1
mus_get_lucky_4_B2:
@ 117   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_get_lucky_5:
	.byte		VOL   , 127*mus_get_lucky_mvl/mxv
	.byte	KEYSH , mus_get_lucky_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 27
	.byte	W96
mus_get_lucky_5_B1:
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
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
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
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	W96
@ 107   ----------------------------------------
	.byte	W96
@ 108   ----------------------------------------
	.byte	W96
@ 109   ----------------------------------------
mus_get_lucky_5_109:
	.byte		N84   , Fs3 , v072
	.byte	W84
	.byte		TIE   , An3 
	.byte	W12
	.byte	PEND
@ 110   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 111   ----------------------------------------
mus_get_lucky_5_111:
	.byte		N06   , Cs4 , v072
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W12
	.byte		TIE   , Bn3 
	.byte	W12
	.byte	PEND
@ 112   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_5_109
@ 114   ----------------------------------------
	.byte	W96
	.byte		EOT   , An3 
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_5_111
@ 116   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn3 
	.byte	GOTO
	 .word	mus_get_lucky_5_B1
mus_get_lucky_5_B2:
@ 117   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_get_lucky_6:
	.byte		VOL   , 127*mus_get_lucky_mvl/mxv
	.byte	KEYSH , mus_get_lucky_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 40
	.byte	W96
mus_get_lucky_6_B1:
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
mus_get_lucky_6_069:
	.byte	W12
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W36
	.byte	PEND
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_6_069
@ 071   ----------------------------------------
	.byte	W12
	.byte		N06   , Fs2 , v127
	.byte	W06
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W06
	.byte		        Fs1 
	.byte	W36
@ 072   ----------------------------------------
	.byte	W12
	.byte		        En2 
	.byte	W06
	.byte		        En1 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En0 
	.byte	W06
	.byte		        En1 
	.byte	W36
@ 073   ----------------------------------------
	.byte		        En2 
	.byte	W06
	.byte		        Fs2 
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Bn2 
	.byte	W24
	.byte		        Fs2 
	.byte	W12
	.byte		        En2 
	.byte	W06
	.byte		        Fs2 
	.byte	W12
@ 074   ----------------------------------------
	.byte	W12
	.byte		N06   
	.byte	W18
	.byte		        En2 
	.byte	W12
	.byte		        Fs2 
	.byte	W42
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
@ 075   ----------------------------------------
	.byte	W12
	.byte		        Fs2 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
@ 076   ----------------------------------------
	.byte	W06
	.byte		        En2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En2 
	.byte	W12
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 077   ----------------------------------------
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N06   
	.byte	W12
@ 078   ----------------------------------------
mus_get_lucky_6_078:
	.byte	W12
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		        An1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 079   ----------------------------------------
mus_get_lucky_6_079:
	.byte	W12
	.byte		N06   , Fs2 , v127
	.byte	W06
	.byte		        Cs2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 080   ----------------------------------------
mus_get_lucky_6_080:
	.byte	W12
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Bn1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_6_078
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_6_078
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_6_079
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_6_080
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
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	W96
@ 107   ----------------------------------------
	.byte	W96
@ 108   ----------------------------------------
	.byte	W96
@ 109   ----------------------------------------
	.byte	W96
@ 110   ----------------------------------------
	.byte	W96
@ 111   ----------------------------------------
	.byte	W96
@ 112   ----------------------------------------
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte	W96
@ 115   ----------------------------------------
	.byte	W96
@ 116   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_get_lucky_6_B1
mus_get_lucky_6_B2:
@ 117   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.10) ****************@

mus_get_lucky_7:
	.byte		VOL   , 127*mus_get_lucky_mvl/mxv
	.byte	KEYSH , mus_get_lucky_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		N06   , Gn0 , v072
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
mus_get_lucky_7_B1:
@ 001   ----------------------------------------
mus_get_lucky_7_001:
	.byte		N06   , Bn0 , v072
	.byte		N06   , Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , En1 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , En1 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
mus_get_lucky_7_002:
	.byte		N06   , Bn0 , v072
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , En1 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , En1 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 004   ----------------------------------------
mus_get_lucky_7_004:
	.byte		N06   , Bn0 , v072
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , En1 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , En1 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 008   ----------------------------------------
mus_get_lucky_7_008:
	.byte		N06   , Bn0 , v072
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , En1 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , En1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        As1 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_008
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_008
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_008
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_004
@ 061   ----------------------------------------
mus_get_lucky_7_061:
	.byte	W24
	.byte		N06   , Cs1 , v072
	.byte		N06   , Ds1 
	.byte	W48
	.byte		        Cs1 
	.byte		N06   , Ds1 
	.byte	W24
	.byte	PEND
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_061
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_061
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_061
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_061
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_061
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_061
@ 068   ----------------------------------------
	.byte	W24
	.byte		N06   , Cs1 , v072
	.byte		N06   , Ds1 
	.byte	W24
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , En1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W12
@ 069   ----------------------------------------
mus_get_lucky_7_069:
	.byte		N06   , Bn0 , v072
	.byte		N06   , As1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 
	.byte		N06   , En1 
	.byte		N06   , As1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn0 
	.byte		N06   , As1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 
	.byte		N06   , En1 
	.byte		N06   , As1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_069
@ 108   ----------------------------------------
	.byte		N06   , Bn0 , v072
	.byte		N06   , As1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 
	.byte		N06   , En1 
	.byte		N06   , As1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn0 
	.byte		N06   , As1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 
	.byte		N06   , En1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte		N06   , As1 
	.byte	W12
@ 109   ----------------------------------------
	.byte		        Bn0 
	.byte		N06   , Fs1 
	.byte		N06   , As1 
	.byte		N06   , Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , En1 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , En1 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_get_lucky_7_002
	.byte	GOTO
	 .word	mus_get_lucky_7_B1
mus_get_lucky_7_B2:
@ 117   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_get_lucky:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_get_lucky_pri	@ Priority
	.byte	mus_get_lucky_rev	@ Reverb.

	.word	mus_get_lucky_grp

	.word	mus_get_lucky_1
	.word	mus_get_lucky_2
	.word	mus_get_lucky_3
	.word	mus_get_lucky_4
	.word	mus_get_lucky_5
	.word	mus_get_lucky_6
	.word	mus_get_lucky_7

	.end
