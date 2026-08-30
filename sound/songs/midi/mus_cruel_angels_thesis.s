	.include "MPlayDef.s"

	.equ	mus_cruel_angels_thesis_grp, voicegroup_cruel_angels_thesis
	.equ	mus_cruel_angels_thesis_pri, 0
	.equ	mus_cruel_angels_thesis_rev, reverb_set+50
	.equ	mus_cruel_angels_thesis_mvl, 100
	.equ	mus_cruel_angels_thesis_key, 0
	.equ	mus_cruel_angels_thesis_tbs, 1
	.equ	mus_cruel_angels_thesis_exg, 1
	.equ	mus_cruel_angels_thesis_cmp, 1

	.section .rodata
	.global	mus_cruel_angels_thesis
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_cruel_angels_thesis_1:
	.byte	KEYSH , mus_cruel_angels_thesis_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 76*mus_cruel_angels_thesis_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_cruel_angels_thesis_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N48   , Cn2 , v076
	.byte	W48
	.byte		N48   
	.byte	W48
@ 001   ----------------------------------------
	.byte		        As2 
	.byte	W48
	.byte		        Ds2 
	.byte	W48
@ 002   ----------------------------------------
	.byte		        Cn2 
	.byte	W48
	.byte		        Ds2 
	.byte	W48
@ 003   ----------------------------------------
	.byte		        Dn2 
	.byte	W48
@ 004   ----------------------------------------
	.byte		N96   , Gn2 
	.byte	W96
mus_cruel_angels_thesis_1_B1:
@ 005   ----------------------------------------
	.byte	TEMPO , 126*mus_cruel_angels_thesis_tbs/2
	.byte		N12   , Cn2 , v076
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N06   , Fn2 
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		        Cn2 
	.byte	W12
@ 006   ----------------------------------------
mus_cruel_angels_thesis_1_006:
	.byte		N12   , As1 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W30
	.byte	PEND
@ 007   ----------------------------------------
mus_cruel_angels_thesis_1_007:
	.byte		N12   , Cn2 , v076
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N06   , Fn2 
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_cruel_angels_thesis_1_008:
	.byte		N12   , As1 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W18
	.byte		N06   
	.byte	W30
	.byte	PEND
@ 009   ----------------------------------------
	.byte		N96   , Ds2 
	.byte	W96
@ 010   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 011   ----------------------------------------
mus_cruel_angels_thesis_1_011:
	.byte		N48   , Cn2 , v076
	.byte	W48
	.byte		        As1 
	.byte	W48
	.byte	PEND
@ 012   ----------------------------------------
	.byte		N96   , Gs1 
	.byte	W96
@ 013   ----------------------------------------
mus_cruel_angels_thesis_1_013:
	.byte		N48   , As1 , v076
	.byte	W48
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 014   ----------------------------------------
mus_cruel_angels_thesis_1_014:
	.byte		N48   , Ds2 , v076
	.byte	W48
	.byte		        Cn2 
	.byte	W48
	.byte	PEND
@ 015   ----------------------------------------
	.byte		N96   , Dn2 
	.byte	W96
@ 016   ----------------------------------------
	.byte		N48   , Gn1 
	.byte	W48
	.byte		N48   
	.byte	W48
@ 017   ----------------------------------------
	.byte		N96   , Ds2 
	.byte	W96
@ 018   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_011
@ 020   ----------------------------------------
	.byte		N96   , Gs1 , v076
	.byte	W96
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_014
@ 023   ----------------------------------------
	.byte		N96   , Dn2 , v076
	.byte	W96
@ 024   ----------------------------------------
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 025   ----------------------------------------
mus_cruel_angels_thesis_1_025:
	.byte		N12   , Gs1 , v076
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_cruel_angels_thesis_1_026:
	.byte		N12   , Gn1 , v076
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Cn2 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte		        Fn1 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        As1 
	.byte	W36
	.byte		N12   
	.byte	W12
@ 028   ----------------------------------------
	.byte		N12   
	.byte	W24
	.byte		        Fn2 
	.byte	W24
	.byte		        Ds2 
	.byte	W24
	.byte		        As1 
	.byte	W24
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_026
@ 031   ----------------------------------------
	.byte		N12   , Dn2 , v076
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		N12   
	.byte	W12
@ 032   ----------------------------------------
	.byte		N48   , Gn1 
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_007
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_006
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_007
@ 036   ----------------------------------------
	.byte		N12   , As1 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N24   , Ds2 
	.byte	W48
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_007
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_006
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_007
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_007
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_006
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_007
@ 044   ----------------------------------------
	.byte		N12   , As1 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N30   , Cn2 
	.byte	W30
@ 045   ----------------------------------------
mus_cruel_angels_thesis_1_045:
	.byte	W24
	.byte		N24   , Cn1 , v076
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_045
@ 047   ----------------------------------------
mus_cruel_angels_thesis_1_047:
	.byte	W24
	.byte		N24   , Gs0 , v076
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 048   ----------------------------------------
mus_cruel_angels_thesis_1_048:
	.byte	W24
	.byte		N24   , As0 , v076
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_045
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_045
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_047
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_048
@ 053   ----------------------------------------
	.byte		N12   , Fn1 , v076
	.byte	W12
	.byte		N12   
	.byte	W60
	.byte		N12   
	.byte	W24
@ 054   ----------------------------------------
	.byte		        Gn1 
	.byte	W48
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N12   , Gn1 
	.byte	W24
@ 055   ----------------------------------------
	.byte		        Gs1 
	.byte	W72
	.byte		N12   
	.byte	W24
@ 056   ----------------------------------------
	.byte		        Gn1 
	.byte	W36
	.byte		N06   
	.byte	W36
	.byte		N12   
	.byte	W24
@ 057   ----------------------------------------
	.byte		        Fn1 
	.byte	W36
	.byte		N06   
	.byte	W36
	.byte		N12   
	.byte	W24
@ 058   ----------------------------------------
	.byte		        Gn1 
	.byte	W72
	.byte		N12   
	.byte	W24
@ 059   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_007
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_006
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_007
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_1_008
	.byte	GOTO
	 .word	mus_cruel_angels_thesis_1_B1
mus_cruel_angels_thesis_1_B2:
@ 065   ----------------------------------------
	.byte	TEMPO , 126*mus_cruel_angels_thesis_tbs/2
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_cruel_angels_thesis_2:
	.byte	KEYSH , mus_cruel_angels_thesis_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 58*mus_cruel_angels_thesis_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N48   , Ds3 , v052
	.byte		N48   , Gn3 
	.byte	W48
	.byte		        Fn3 
	.byte		N48   , Gs3 
	.byte	W48
@ 001   ----------------------------------------
	.byte		        Dn3 
	.byte		N48   , Fn3 
	.byte	W48
	.byte		        As3 
	.byte	W48
@ 002   ----------------------------------------
	.byte		        Ds3 
	.byte		N48   , Gn3 
	.byte	W48
	.byte		        Fn3 
	.byte		N48   , Cn4 
	.byte	W48
@ 003   ----------------------------------------
	.byte		        Fn3 
	.byte		N48   , Dn4 
	.byte	W48
@ 004   ----------------------------------------
	.byte		N96   , Gs3 
	.byte		N96   , Ds4 
	.byte	W96
mus_cruel_angels_thesis_2_B1:
@ 005   ----------------------------------------
mus_cruel_angels_thesis_2_005:
	.byte	W48
	.byte		N18   , Gs2 , v052
	.byte		N18   , Cn3 
	.byte	W48
	.byte	PEND
@ 006   ----------------------------------------
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W96
@ 007   ----------------------------------------
mus_cruel_angels_thesis_2_007:
	.byte		N24   , Ds3 , v052
	.byte	W48
	.byte		N18   , Fn3 
	.byte		N18   , Gs3 
	.byte	W48
	.byte	PEND
@ 008   ----------------------------------------
mus_cruel_angels_thesis_2_008:
	.byte		N12   , Dn3 , v052
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N18   , Gn3 
	.byte	W18
	.byte		N30   
	.byte	W30
	.byte	PEND
@ 009   ----------------------------------------
	.byte		N96   , Gn2 
	.byte	W96
@ 010   ----------------------------------------
	.byte		        Dn2 
	.byte		N96   , As2 
	.byte	W96
@ 011   ----------------------------------------
mus_cruel_angels_thesis_2_011:
	.byte		N48   , Ds2 , v052
	.byte		N48   , Gn2 
	.byte	W48
	.byte		        Dn2 
	.byte		N48   , Gn2 
	.byte	W48
	.byte	PEND
@ 012   ----------------------------------------
	.byte		N96   , Cn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 013   ----------------------------------------
mus_cruel_angels_thesis_2_013:
	.byte		N48   , Ds2 , v052
	.byte		N48   , Fn2 
	.byte	W48
	.byte		        Dn2 
	.byte		N48   , Fn2 
	.byte	W48
	.byte	PEND
@ 014   ----------------------------------------
mus_cruel_angels_thesis_2_014:
	.byte		N48   , As2 , v052
	.byte	W48
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 015   ----------------------------------------
	.byte		N96   , Cn3 
	.byte	W96
@ 016   ----------------------------------------
	.byte		N48   , Fn3 
	.byte		N48   , An3 
	.byte	W48
	.byte		        Gn3 
	.byte		N48   , Bn3 
	.byte	W48
@ 017   ----------------------------------------
	.byte		N96   , Gn2 
	.byte	W96
@ 018   ----------------------------------------
	.byte		        Dn2 
	.byte		N96   , As2 
	.byte	W96
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_2_011
@ 020   ----------------------------------------
	.byte		N96   , Cn2 , v052
	.byte		N96   , Gn2 
	.byte	W96
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_2_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_2_014
@ 023   ----------------------------------------
	.byte		N96   , Cn3 , v052
	.byte	W96
@ 024   ----------------------------------------
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
@ 025   ----------------------------------------
	.byte		N96   , Gn3 
	.byte		N96   , Cn4 
	.byte	W96
@ 026   ----------------------------------------
	.byte		N48   , As3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        Gn3 
	.byte		N48   , As3 
	.byte	W48
@ 027   ----------------------------------------
	.byte		        Gs3 
	.byte		N48   , Cn4 
	.byte	W48
	.byte		        Gs3 
	.byte		N48   , Cn4 
	.byte	W48
@ 028   ----------------------------------------
	.byte		        As3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
@ 029   ----------------------------------------
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   , As3 
	.byte	W12
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   , As3 
	.byte	W12
@ 030   ----------------------------------------
	.byte		N18   , Dn4 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N18   , As3 
	.byte	W18
	.byte		        Cn4 
	.byte	W18
	.byte		N12   , Dn4 
	.byte	W12
@ 031   ----------------------------------------
	.byte		N18   , Cn4 
	.byte		N18   , Dn4 
	.byte	W18
	.byte		        Cn4 
	.byte		N18   , Dn4 
	.byte	W18
	.byte		N12   , Cn4 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N18   , Cn4 
	.byte		N18   , Dn4 
	.byte	W18
	.byte		        Cn4 
	.byte	W18
	.byte		N12   
	.byte		N12   , Dn4 
	.byte	W12
@ 032   ----------------------------------------
	.byte		N48   , An3 
	.byte		N48   , Fn4 
	.byte	W48
	.byte		N18   , Bn3 
	.byte		N18   , Dn4 
	.byte	W18
	.byte		        Cn4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W12
@ 033   ----------------------------------------
mus_cruel_angels_thesis_2_033:
	.byte	W24
	.byte		N24   , Gn3 , v052
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N48   , Gs3 
	.byte		N48   , Cn4 
	.byte	W48
	.byte	PEND
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
mus_cruel_angels_thesis_2_035:
	.byte		N24   , Ds4 , v052
	.byte	W24
	.byte		N24   
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N18   , Gs3 
	.byte		N18   , Ds4 
	.byte	W48
	.byte	PEND
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_2_033
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_2_035
@ 040   ----------------------------------------
mus_cruel_angels_thesis_2_040:
	.byte		N12   , Dn4 , v052
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N18   , Dn4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N30   , Ds4 
	.byte		N30   , Gn4 
	.byte	W30
	.byte	PEND
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_2_033
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_2_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_2_040
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
	.byte		N12   , Ds3 , v052
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N18   , Ds3 
	.byte		N18   , Gs3 
	.byte	W18
	.byte		        Ds3 
	.byte		N18   , Gs3 
	.byte	W18
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 054   ----------------------------------------
	.byte		N48   , Fn3 
	.byte	W72
	.byte		N24   , Gn2 
	.byte	W24
@ 055   ----------------------------------------
	.byte		N48   , Cn3 
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 056   ----------------------------------------
	.byte		N36   , Fn3 
	.byte	W96
@ 057   ----------------------------------------
	.byte		        Cn3 
	.byte	W96
@ 058   ----------------------------------------
	.byte		N48   , Fn3 
	.byte	W72
	.byte		N24   , Dn3 
	.byte	W24
@ 059   ----------------------------------------
	.byte		TIE   , Ds3 
	.byte		TIE   , As3 
	.byte	W96
@ 060   ----------------------------------------
	.byte	W72
	.byte		EOT   , Ds3 
	.byte		        As3 
	.byte	W24
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_2_005
@ 062   ----------------------------------------
	.byte		N12   , As2 , v052
	.byte		N12   , Dn3 
	.byte	W96
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_2_007
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_2_008
	.byte	GOTO
	 .word	mus_cruel_angels_thesis_2_B1
mus_cruel_angels_thesis_2_B2:
@ 065   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_cruel_angels_thesis_3:
	.byte	KEYSH , mus_cruel_angels_thesis_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 110*mus_cruel_angels_thesis_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N24   , Cn4 , v064
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        Ds4 
	.byte	W18
	.byte		N12   , Fn4 
	.byte	W12
@ 001   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N06   , Gn4 
	.byte	W06
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N30   , Gn4 
	.byte	W30
@ 002   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		        As4 
	.byte	W24
	.byte		N18   , Cn5 
	.byte	W18
	.byte		        Fn4 
	.byte	W18
	.byte		N12   , Ds4 
	.byte	W12
@ 003   ----------------------------------------
	.byte		        As4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N78   , Cn5 
	.byte	W78
mus_cruel_angels_thesis_3_B1:
@ 005   ----------------------------------------
mus_cruel_angels_thesis_3_005:
	.byte		N11   , Cn3 , v064
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N05   , Fn3 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N18   , Ds3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_cruel_angels_thesis_3_006:
	.byte		N12   , Fn3 , v064
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N30   , Gn3 
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_cruel_angels_thesis_3_007:
	.byte		N24   , Gn3 , v064
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N24   , As3 
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N18   , Cn4 
	.byte	W06
	.byte		N06   , Fn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_cruel_angels_thesis_3_008:
	.byte		N12   , As3 , v064
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N18   
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N30   , Cn4 
	.byte	W06
	.byte		N24   , As2 
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
mus_cruel_angels_thesis_3_009:
	.byte		N96   , As2 , v064
	.byte	W24
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N06   , As3 
	.byte	W06
	.byte		N30   
	.byte	W42
	.byte		N12   , Ds4 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_cruel_angels_thesis_3_010:
	.byte		N18   , Ds4 , v064
	.byte	W18
	.byte		        Fn4 
	.byte	W18
	.byte		N12   , As3 
	.byte	W12
	.byte		N24   
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_cruel_angels_thesis_3_011:
	.byte		N18   , Gn4 , v064
	.byte	W18
	.byte		        Gs4 
	.byte	W18
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        Ds4 
	.byte	W18
	.byte		N12   , Fn4 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_cruel_angels_thesis_3_012:
	.byte		N18   , Gn4 , v064
	.byte	W18
	.byte		        Gs4 
	.byte	W18
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
mus_cruel_angels_thesis_3_013:
	.byte		N18   , Ds4 , v064
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   
	.byte	W36
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
mus_cruel_angels_thesis_3_014:
	.byte		N18   , Gs4 , v064
	.byte	W18
	.byte		        Gn4 
	.byte	W18
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N24   , Ds4 
	.byte	W36
	.byte		N12   , Gn4 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		        Fn4 
	.byte	W18
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
@ 016   ----------------------------------------
	.byte		N36   
	.byte	W36
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N48   
	.byte	W48
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_014
@ 023   ----------------------------------------
	.byte		N18   , Gn4 , v064
	.byte	W18
	.byte		        Fn4 
	.byte	W18
	.byte		N12   , En4 
	.byte	W12
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        Gn4 
	.byte	W18
	.byte		N12   , Gs4 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N72   , Gn4 
	.byte	W24
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 025   ----------------------------------------
mus_cruel_angels_thesis_3_025:
	.byte		N18   , Ds4 , v064
	.byte	W12
	.byte		N12   , Gs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W06
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N18   , Ds4 
	.byte	W12
	.byte		N12   , Gs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W06
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte		N18   , Fn4 
	.byte	W12
	.byte		N12   , Gn3 
	.byte	W06
	.byte		N18   , Fn4 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N18   , Dn4 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N18   , Cn4 
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 027   ----------------------------------------
	.byte		N18   , Ds4 
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W06
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N18   , Fn4 
	.byte	W12
	.byte		N12   , As2 
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W06
	.byte		N12   , As2 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 028   ----------------------------------------
	.byte		N24   , Fn4 
	.byte	W12
	.byte		N12   , As2 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Gs4 
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N24   , As4 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_025
@ 030   ----------------------------------------
	.byte		N18   , Fn4 , v064
	.byte	W12
	.byte		N12   , Gn3 
	.byte	W06
	.byte		N18   , Fn4 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N18   , Dn4 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 031   ----------------------------------------
	.byte		N18   , Gn4 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N18   , Gs4 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N18   , Fn4 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 032   ----------------------------------------
	.byte		N48   , Gn4 
	.byte	W48
	.byte		N18   
	.byte	W18
	.byte		        An4 
	.byte	W18
	.byte		N12   , Bn4 
	.byte	W12
@ 033   ----------------------------------------
mus_cruel_angels_thesis_3_033:
	.byte		N24   , Cn4 , v064
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N24   , Ds4 
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N18   , Fn4 
	.byte	W06
	.byte		N06   , Fn3 
	.byte	W12
	.byte		N18   , Ds4 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N12   , Fn4 
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
mus_cruel_angels_thesis_3_034:
	.byte		N12   , Fn4 , v064
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N06   , Gn4 
	.byte	W06
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N30   , Gn4 
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
mus_cruel_angels_thesis_3_035:
	.byte		N24   , Gn4 , v064
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N24   , As4 
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N18   , Cn5 
	.byte	W06
	.byte		N06   , Fn3 
	.byte	W12
	.byte		N18   , Fn4 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N12   , Ds4 
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
	.byte		        Dn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N30   
	.byte	W06
	.byte		N24   , Dn3 
	.byte	W24
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_033
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_034
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_035
@ 040   ----------------------------------------
	.byte		N12   , As4 , v064
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N18   
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N30   , Cn5 
	.byte	W06
	.byte		N24   , As2 
	.byte	W24
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_033
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_034
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_035
@ 044   ----------------------------------------
	.byte		N12   , As4 , v064
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N30   , Cn5 
	.byte	W30
@ 045   ----------------------------------------
mus_cruel_angels_thesis_3_045:
	.byte		N06   , Gn3 , v064
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte	PEND
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_045
@ 047   ----------------------------------------
mus_cruel_angels_thesis_3_047:
	.byte		N06   , Ds3 , v064
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
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
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
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
	.byte	PEND
@ 048   ----------------------------------------
mus_cruel_angels_thesis_3_048:
	.byte		N06   , Fn3 , v064
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	PEND
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_045
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_045
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_047
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_048
@ 053   ----------------------------------------
	.byte		N12   , Cn4 , v064
	.byte	W12
	.byte		N18   
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N18   , Cn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W06
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N24   
	.byte	W12
	.byte		N12   , Fs3 
	.byte	W12
@ 054   ----------------------------------------
	.byte		N48   , Cn4 
	.byte	W12
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W06
	.byte		N24   , Cn3 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N24   , Cn3 
	.byte	W12
	.byte		N12   , Gn3 
	.byte	W12
@ 055   ----------------------------------------
	.byte		N48   
	.byte	W12
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W06
	.byte		N24   , Gn3 
	.byte	W06
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N24   , Fn3 
	.byte	W12
	.byte		N12   , Gs3 
	.byte	W12
@ 056   ----------------------------------------
	.byte		N36   , Cn4 
	.byte	W12
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N60   , As3 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W06
	.byte		N24   , Dn3 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N24   , Dn3 
	.byte	W12
	.byte		N12   , Gn3 
	.byte	W12
@ 057   ----------------------------------------
	.byte		N36   
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N24   , Gn3 
	.byte	W06
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 058   ----------------------------------------
	.byte		N48   , Cn4 
	.byte	W12
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N24   , As3 
	.byte	W12
	.byte		N12   , Gn3 
	.byte	W12
@ 059   ----------------------------------------
	.byte		TIE   , Dn4 
	.byte	W12
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 060   ----------------------------------------
	.byte		        As2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		EOT   , Dn4 
	.byte		N24   , Bn2 
	.byte	W24
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_005
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_006
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_007
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_cruel_angels_thesis_3_008
	.byte	GOTO
	 .word	mus_cruel_angels_thesis_3_B1
mus_cruel_angels_thesis_3_B2:
@ 065   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_cruel_angels_thesis:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_cruel_angels_thesis_pri	@ Priority
	.byte	mus_cruel_angels_thesis_rev	@ Reverb.

	.word	mus_cruel_angels_thesis_grp

	.word	mus_cruel_angels_thesis_1
	.word	mus_cruel_angels_thesis_2
	.word	mus_cruel_angels_thesis_3

	.end
