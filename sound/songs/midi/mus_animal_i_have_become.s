	.include "MPlayDef.s"

	.equ	mus_animal_i_have_become_grp, voicegroup_hlw_rock_metal
	.equ	mus_animal_i_have_become_pri, 0
	.equ	mus_animal_i_have_become_rev, reverb_set+25
	.equ	mus_animal_i_have_become_mvl, 100
	.equ	mus_animal_i_have_become_key, 0
	.equ	mus_animal_i_have_become_tbs, 1
	.equ	mus_animal_i_have_become_exg, 1
	.equ	mus_animal_i_have_become_cmp, 1

	.section .rodata
	.global	mus_animal_i_have_become
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_animal_i_have_become_1:
	.byte		VOL   , 127*mus_animal_i_have_become_mvl/mxv
	.byte	KEYSH , mus_animal_i_have_become_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 122*mus_animal_i_have_become_tbs/2
	.byte		VOICE , 30
	.byte		N12   , Gn1 , v104
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Cn2 
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 002   ----------------------------------------
mus_animal_i_have_become_1_002:
	.byte		N12   , Gn1 , v104
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Cn2 
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 004   ----------------------------------------
mus_animal_i_have_become_1_004:
	.byte		N12   , Gn1 , v104
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Cn2 
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N24   , Gs1 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_004
@ 009   ----------------------------------------
mus_animal_i_have_become_1_009:
	.byte		N12   , As1 , v104
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W24
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W24
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_animal_i_have_become_1_010:
	.byte		N12   , As1 , v104
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W24
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N24   , Fn1 
	.byte		N24   , Cn2 
	.byte		N24   , Fn2 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_009
@ 023   ----------------------------------------
mus_animal_i_have_become_1_023:
	.byte		N12   , Fn1 , v104
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W24
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
	.byte	W24
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
mus_animal_i_have_become_1_024:
	.byte		N96   , Gs1 , v104
	.byte		N96   , Ds2 
	.byte		N96   , Gs2 
	.byte	W96
	.byte	PEND
@ 025   ----------------------------------------
mus_animal_i_have_become_1_025:
	.byte		N24   , Gn1 , v104
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N12   , Gn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N24   , As1 
	.byte		N24   , Fn2 
	.byte		N24   , As2 
	.byte	W24
	.byte		N12   , As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_animal_i_have_become_1_026:
	.byte		N24   , As1 , v104
	.byte		N24   , Ds2 
	.byte	W24
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
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
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_025
@ 028   ----------------------------------------
mus_animal_i_have_become_1_028:
	.byte		N24   , As1 , v104
	.byte		N24   , Ds2 
	.byte	W24
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_025
@ 032   ----------------------------------------
mus_animal_i_have_become_1_032:
	.byte		N24   , As1 , v104
	.byte		N24   , Ds2 
	.byte	W24
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N18   , Fn1 
	.byte		N18   , Cn2 
	.byte		N18   , Fn2 
	.byte	W18
	.byte		        As1 
	.byte		N18   , Ds2 
	.byte	W18
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_004
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_009
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_010
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_004
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_009
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_010
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_004
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_009
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_010
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_004
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_009
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_009
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_023
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_024
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_025
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_026
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_025
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_028
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_025
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_026
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_028
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_025
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_026
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_025
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_032
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 064   ----------------------------------------
mus_animal_i_have_become_1_064:
	.byte		N12   , Gs1 , v104
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W24
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W24
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
mus_animal_i_have_become_1_065:
	.byte		N12   , Fn1 , v104
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 066   ----------------------------------------
mus_animal_i_have_become_1_066:
	.byte		N12   , Gn1 , v104
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Cn2 
	.byte	W24
	.byte		        Gn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Cn2 
	.byte	W24
	.byte		        Gn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte	PEND
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_009
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_064
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_065
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_066
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_009
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_064
@ 073   ----------------------------------------
	.byte		N18   , Fn1 , v104
	.byte	W18
	.byte		        Gn1 
	.byte	W18
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N18   , Dn2 
	.byte	W18
	.byte		        Gs1 
	.byte	W18
	.byte		N12   , Gn1 
	.byte	W12
@ 074   ----------------------------------------
	.byte		N96   
	.byte		N96   , Cn2 
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 082   ----------------------------------------
mus_animal_i_have_become_1_082:
	.byte		N48   , Gn1 , v104
	.byte		N48   , Cn2 
	.byte	W48
	.byte		        As1 
	.byte		N48   , Fn2 
	.byte		N48   , As2 
	.byte	W48
	.byte	PEND
@ 083   ----------------------------------------
	.byte		N96   , As1 
	.byte		N96   , Ds2 
	.byte	W96
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_082
@ 085   ----------------------------------------
	.byte		N96   , As1 , v104
	.byte		N96   , Ds2 
	.byte	W96
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_025
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_026
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_025
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_028
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_025
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_026
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_025
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_032
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_002
@ 100   ----------------------------------------
mus_animal_i_have_become_1_100:
	.byte		N18   , Gn1 , v104
	.byte		N18   , Cn2 
	.byte	W18
	.byte		        Gn1 
	.byte		N18   , Dn2 
	.byte		N18   , Gn2 
	.byte	W18
	.byte		N12   , Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N18   , Dn2 
	.byte		N18   , An2 
	.byte		N18   , Dn3 
	.byte	W18
	.byte		        Gs1 
	.byte		N18   , Ds2 
	.byte		N18   , Gs2 
	.byte	W18
	.byte		N12   , Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_100
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_100
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_1_100
@ 104   ----------------------------------------
	.byte		N96   , Gn1 , v104
	.byte		N96   , Cn2 
	.byte	W96
@ 105   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_animal_i_have_become_2:
	.byte		VOL   , 127*mus_animal_i_have_become_mvl/mxv
	.byte	KEYSH , mus_animal_i_have_become_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		N12   , Gn0 , v096
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
@ 001   ----------------------------------------
mus_animal_i_have_become_2_001:
	.byte		N12   , Gn0 , v096
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 007   ----------------------------------------
mus_animal_i_have_become_2_007:
	.byte		N12   , Gn0 , v096
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N24   , Gs0 
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
mus_animal_i_have_become_2_008:
	.byte		N12   , As0 , v096
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_animal_i_have_become_2_009:
	.byte		N12   , As0 , v096
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Fn0 
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_007
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_008
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_008
@ 022   ----------------------------------------
mus_animal_i_have_become_2_022:
	.byte		N12   , Fn0 , v096
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
	.byte		N96   , Gs0 
	.byte	W96
@ 024   ----------------------------------------
mus_animal_i_have_become_2_024:
	.byte		N24   , Gn0 , v096
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , As0 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_animal_i_have_become_2_025:
	.byte		N24   , As0 , v096
	.byte	W24
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
	.byte		        Gs0 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte		N24   , Gn0 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N24   , As0 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 027   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        An0 
	.byte	W12
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_024
@ 031   ----------------------------------------
	.byte		N24   , As0 , v096
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , Fn0 
	.byte	W18
	.byte		        As0 
	.byte	W18
	.byte		N12   , An0 
	.byte	W12
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_007
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W72
	.byte		N24   , Fn0 , v096
	.byte	W24
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_007
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W72
	.byte		N24   , Fn0 , v096
	.byte	W24
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_007
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W72
	.byte		N24   , Fn0 , v096
	.byte	W24
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_007
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_022
@ 049   ----------------------------------------
	.byte		N96   , Gs0 , v096
	.byte	W96
@ 050   ----------------------------------------
mus_animal_i_have_become_2_050:
	.byte	W48
	.byte		N24   , As0 , v096
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
mus_animal_i_have_become_2_051:
	.byte	W48
	.byte		N12   , Gn0 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte	PEND
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_050
@ 053   ----------------------------------------
mus_animal_i_have_become_2_053:
	.byte	W48
	.byte		N12   , Fn0 , v096
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_050
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_051
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_050
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_053
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_050
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_051
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_050
@ 061   ----------------------------------------
	.byte	W48
	.byte		N18   , Fn0 , v096
	.byte	W48
@ 062   ----------------------------------------
	.byte	W36
	.byte		N12   , Gn0 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
@ 063   ----------------------------------------
mus_animal_i_have_become_2_063:
	.byte		N12   , Gs0 , v096
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
mus_animal_i_have_become_2_064:
	.byte		N12   , Fn0 , v096
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Gn0 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_063
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_064
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_063
@ 072   ----------------------------------------
mus_animal_i_have_become_2_072:
	.byte	W18
	.byte		N18   , Gn0 , v096
	.byte	W18
	.byte		N12   , Gs0 
	.byte	W12
	.byte		N18   , Dn1 
	.byte	W18
	.byte		        Gs0 
	.byte	W18
	.byte		N12   , Gn0 
	.byte	W12
	.byte	PEND
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 081   ----------------------------------------
	.byte	W48
	.byte		N48   , As0 , v096
	.byte	W48
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W48
	.byte		N48   
	.byte	W48
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_050
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_051
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_050
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_053
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_050
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_051
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_050
@ 092   ----------------------------------------
	.byte	W48
	.byte		N18   , Fn0 , v096
	.byte	W48
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_001
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_072
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_072
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_072
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_2_072
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.5) ****************@

mus_animal_i_have_become_3:
	.byte		VOL   , 127*mus_animal_i_have_become_mvl/mxv
	.byte	KEYSH , mus_animal_i_have_become_key+0
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
mus_animal_i_have_become_3_004:
	.byte		N12   , Gn1 , v088
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Cn2 
	.byte	W84
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_004
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_004
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
mus_animal_i_have_become_3_024:
	.byte		N06   , Cn4 , v088
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
	.byte		        Dn4 
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
@ 025   ----------------------------------------
mus_animal_i_have_become_3_025:
	.byte		N06   , Ds4 , v088
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
	.byte		        Gn4 
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
	.byte		        Gs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_024
@ 027   ----------------------------------------
mus_animal_i_have_become_3_027:
	.byte		N06   , Ds4 , v088
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
	.byte		        Fn4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_024
@ 031   ----------------------------------------
mus_animal_i_have_become_3_031:
	.byte		N06   , Ds4 , v088
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
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        Ds4 
	.byte	W18
	.byte		N12   , Dn4 
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
	.byte		N96   , Cn4 
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
	.byte	PATT
	 .word	mus_animal_i_have_become_3_024
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_025
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_024
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_027
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_024
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_025
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_024
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_027
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_024
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_025
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_024
@ 061   ----------------------------------------
	.byte		N06   , Ds4 , v088
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
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        Ds4 
	.byte	W18
	.byte		N12   
	.byte	W12
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
mus_animal_i_have_become_3_063:
	.byte		N12   , Gs1 , v088
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W24
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W24
	.byte		        Gs1 
	.byte		N12   , Ds2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
mus_animal_i_have_become_3_064:
	.byte		N12   , Fn1 , v088
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
mus_animal_i_have_become_3_065:
	.byte		N12   , Gn1 , v088
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Cn2 
	.byte	W24
	.byte		        Gn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Cn2 
	.byte	W24
	.byte		        Gn1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte	PEND
@ 066   ----------------------------------------
mus_animal_i_have_become_3_066:
	.byte		N12   , As1 , v088
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W24
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W24
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte	PEND
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_063
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_064
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_065
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_066
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_063
@ 072   ----------------------------------------
	.byte		N18   , Fn1 , v088
	.byte	W18
	.byte		        Gn1 
	.byte	W18
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N18   , Dn2 
	.byte	W18
	.byte		        Gs1 
	.byte	W18
	.byte		N12   , Gn1 
	.byte	W12
@ 073   ----------------------------------------
	.byte		N96   
	.byte		N96   , Cn2 
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_004
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_004
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_004
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_004
@ 081   ----------------------------------------
mus_animal_i_have_become_3_081:
	.byte		N48   , Gn1 , v088
	.byte		N48   , Cn2 
	.byte	W48
	.byte		        As1 
	.byte		N48   , Fn2 
	.byte		N48   , As2 
	.byte	W48
	.byte	PEND
@ 082   ----------------------------------------
	.byte		N96   , As1 
	.byte		N96   , Ds2 
	.byte	W96
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_081
@ 084   ----------------------------------------
	.byte		N96   , As1 , v088
	.byte		N96   , Ds2 
	.byte	W96
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_024
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_025
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_024
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_027
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_024
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_025
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_024
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_031
@ 093   ----------------------------------------
	.byte		N96   , Cn4 , v088
	.byte	W96
@ 094   ----------------------------------------
mus_animal_i_have_become_3_094:
	.byte		N12   , Gn1 , v088
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Cn2 
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_094
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_094
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_094
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_094
@ 099   ----------------------------------------
mus_animal_i_have_become_3_099:
	.byte		N18   , Cn2 , v088
	.byte	W18
	.byte		        Gn2 
	.byte	W18
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N18   , Dn3 
	.byte	W18
	.byte		        Gs2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_099
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_099
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_3_099
@ 103   ----------------------------------------
	.byte		N96   , Cn2 , v088
	.byte	W96
@ 104   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_animal_i_have_become_4:
	.byte		VOL   , 127*mus_animal_i_have_become_mvl/mxv
	.byte	KEYSH , mus_animal_i_have_become_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		N12   , Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 001   ----------------------------------------
mus_animal_i_have_become_4_001:
	.byte		N12   , Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_001
@ 003   ----------------------------------------
	.byte		N12   , Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Bn0 , v100
	.byte		N06   , Fn1 , v080
	.byte	W06
	.byte		        Bn0 , v100
	.byte		N06   , Fn1 , v080
	.byte	W06
	.byte		N24   , Bn0 , v100
	.byte		N24   , Cs2 , v072
	.byte		N24   , An2 
	.byte	W24
@ 004   ----------------------------------------
mus_animal_i_have_become_4_004:
	.byte		N12   , Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_004
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_004
@ 007   ----------------------------------------
mus_animal_i_have_become_4_007:
	.byte		N12   , Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Dn1 , v096
	.byte		N24   , Cs2 , v072
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
mus_animal_i_have_become_4_008:
	.byte		N12   , Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_animal_i_have_become_4_009:
	.byte		N12   , Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		N24   , Dn1 , v096
	.byte		N24   , Fn1 , v080
	.byte		N24   , Cs2 , v072
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
mus_animal_i_have_become_4_010:
	.byte		N12   , Bn0 , v100
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_animal_i_have_become_4_011:
	.byte		N12   , Bn0 , v100
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Dn1 , v096
	.byte		N24   , Cs2 , v072
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_008
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_008
@ 022   ----------------------------------------
	.byte		N12   , Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
@ 023   ----------------------------------------
mus_animal_i_have_become_4_023:
	.byte		N48   , Bn0 , v100
	.byte		N48   , Cs2 , v072
	.byte	W48
	.byte		N12   , Dn1 , v096
	.byte	W12
	.byte		        Bn0 , v100
	.byte	W12
	.byte		        Dn1 , v096
	.byte	W12
	.byte		        Bn0 , v100
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
mus_animal_i_have_become_4_024:
	.byte		N12   , Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_animal_i_have_become_4_025:
	.byte		N12   , Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_024
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_025
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_024
@ 031   ----------------------------------------
	.byte		N12   , Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N18   , Bn0 , v100
	.byte		N18   , Dn1 , v096
	.byte	W18
	.byte		        Bn0 , v100
	.byte		N18   , Dn1 , v096
	.byte		N18   , Cs2 , v072
	.byte	W18
	.byte		N12   , Bn0 , v100
	.byte		N12   , Dn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
@ 032   ----------------------------------------
mus_animal_i_have_become_4_032:
	.byte		N24   , Bn0 , v100
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 033   ----------------------------------------
	.byte		N12   
	.byte		N12   , Gs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Gs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Gs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Dn1 , v096
	.byte	W24
@ 034   ----------------------------------------
	.byte		N12   , Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_009
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_010
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_011
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_008
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_009
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_010
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_011
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_008
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_009
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_010
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_011
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_008
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_008
@ 048   ----------------------------------------
	.byte		N12   , Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
	.byte		N12   
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fn1 , v080
	.byte	W12
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_023
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_024
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_025
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_024
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_025
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_024
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_025
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_024
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_024
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_025
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_024
@ 061   ----------------------------------------
	.byte		N12   , Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N18   , Bn0 , v100
	.byte		N18   , Cn2 , v080
	.byte	W18
	.byte		        Bn0 , v100
	.byte		N18   , Bn1 , v080
	.byte	W18
	.byte		N12   , Bn0 , v100
	.byte		N12   , An1 , v080
	.byte	W12
@ 062   ----------------------------------------
	.byte	W72
	.byte		N24   , Dn1 , v096
	.byte	W24
@ 063   ----------------------------------------
mus_animal_i_have_become_4_063:
	.byte		N12   , Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
mus_animal_i_have_become_4_064:
	.byte		N12   , Bn0 , v100
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_063
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_064
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_063
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_064
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_063
@ 070   ----------------------------------------
	.byte		N12   , Bn0 , v100
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N06   , Dn1 , v096
	.byte		N06   , Fs1 , v080
	.byte	W06
	.byte		        Dn1 , v096
	.byte	W06
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_063
@ 072   ----------------------------------------
	.byte		N18   , Bn0 , v100
	.byte		N18   , Dn1 , v096
	.byte	W18
	.byte		        Bn0 , v100
	.byte		N18   , Cs2 , v072
	.byte	W18
	.byte		N12   , Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N18   , Bn0 , v100
	.byte		N18   , Dn1 , v096
	.byte	W18
	.byte		        Bn0 , v100
	.byte		N18   , Bn1 , v080
	.byte	W18
	.byte		N12   , Bn0 , v100
	.byte		N12   , An1 , v080
	.byte	W12
@ 073   ----------------------------------------
	.byte		N96   , Bn0 , v100
	.byte		N96   , Cs2 , v072
	.byte		N96   , An2 
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_032
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_032
@ 077   ----------------------------------------
mus_animal_i_have_become_4_077:
	.byte		N12   , Bn0 , v100
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_077
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_077
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_077
@ 081   ----------------------------------------
	.byte		N24   , Dn1 , v096
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte	W12
	.byte		        Dn1 , v096
	.byte	W12
	.byte		        Bn0 , v100
	.byte	W12
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_024
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_025
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_024
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_025
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_024
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_025
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_024
@ 092   ----------------------------------------
	.byte		N12   , Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N24   , Dn1 , v096
	.byte	W24
	.byte		N24   
	.byte	W24
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_004
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_004
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_004
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_007
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_004
@ 098   ----------------------------------------
	.byte		N12   , Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Bn0 , v100
	.byte	W06
	.byte		N12   , Dn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
@ 099   ----------------------------------------
mus_animal_i_have_become_4_099:
	.byte		N12   , Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Bn0 , v100
	.byte	W06
	.byte		N12   , Dn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 , v100
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Bn0 , v100
	.byte	W06
	.byte		N12   , Dn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Bn0 , v100
	.byte	W12
	.byte	PEND
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_099
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_animal_i_have_become_4_099
@ 102   ----------------------------------------
	.byte		N18   , Bn0 , v100
	.byte		N18   , Dn1 , v096
	.byte	W18
	.byte		        Bn0 , v100
	.byte		N18   , Bn1 , v080
	.byte		N18   , Cs2 , v072
	.byte	W18
	.byte		N12   , Bn0 , v100
	.byte		N12   , An1 , v080
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		N06   , Dn1 , v096
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N18   , Bn0 , v100
	.byte		N18   , Bn1 , v080
	.byte	W18
	.byte		N12   , Bn0 , v100
	.byte		N12   , An1 , v080
	.byte	W12
@ 103   ----------------------------------------
	.byte		N96   , Bn0 , v100
	.byte		N96   , Cs2 , v072
	.byte	W96
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte		N06   , Dn1 , v096
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn0 , v100
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

mus_animal_i_have_become:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_animal_i_have_become_pri	@ Priority
	.byte	mus_animal_i_have_become_rev	@ Reverb.

	.word	mus_animal_i_have_become_grp

	.word	mus_animal_i_have_become_1
	.word	mus_animal_i_have_become_2
	.word	mus_animal_i_have_become_3
	.word	mus_animal_i_have_become_4

	.end
