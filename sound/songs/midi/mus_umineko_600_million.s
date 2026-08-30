	.include "MPlayDef.s"

	.equ	mus_umineko_600_million_grp, voicegroup_littleroot_test
	.equ	mus_umineko_600_million_pri, 0
	.equ	mus_umineko_600_million_rev, reverb_set+50
	.equ	mus_umineko_600_million_mvl, 90
	.equ	mus_umineko_600_million_key, 0
	.equ	mus_umineko_600_million_tbs, 1
	.equ	mus_umineko_600_million_exg, 1
	.equ	mus_umineko_600_million_cmp, 1

	.section .rodata
	.global	mus_umineko_600_million
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_umineko_600_million_1:
	.byte	KEYSH , mus_umineko_600_million_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 128*mus_umineko_600_million_tbs/2
	.byte		VOICE , 35
	.byte		VOL   , 127*mus_umineko_600_million_mvl/mxv
	.byte		PAN   , c_v-24
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W72
	.byte		N23   , Bn2 , v096
	.byte	W24
@ 004   ----------------------------------------
	.byte		N10   , Cn3 , v100
	.byte	W24
	.byte		N09   , Dn3 , v096
	.byte	W24
	.byte		N32   , Ds3 , v100, gtp3
	.byte	W36
	.byte		N11   , Gn3 , v096
	.byte	W12
@ 005   ----------------------------------------
	.byte		N10   , An2 , v100
	.byte	W24
	.byte		N09   , Bn2 , v096
	.byte	W24
	.byte		N24   , Cn3 , v100
	.byte	W36
	.byte		N11   , Bn2 , v096
	.byte	W12
@ 006   ----------------------------------------
	.byte		N24   , Ds3 , v100
	.byte	W24
	.byte		N09   , Gn3 , v096
	.byte	W24
	.byte		N11   , Dn3 , v100
	.byte	W12
	.byte		        Gn2 , v096
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 007   ----------------------------------------
	.byte		N24   , Cn3 , v100
	.byte	W24
	.byte		N09   , Bn2 , v096
	.byte	W24
	.byte		N24   , Cn3 , v100
	.byte	W24
	.byte		N23   , Gn1 , v088
	.byte	W24
@ 008   ----------------------------------------
mus_umineko_600_million_1_008:
	.byte		N10   , Cn2 , v100
	.byte	W24
	.byte		N09   , Dn2 , v096
	.byte	W24
	.byte		N32   , Ds2 , v100, gtp3
	.byte	W36
	.byte		N11   , Gn1 , v096
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_umineko_600_million_1_009:
	.byte		N10   , An1 , v100
	.byte	W24
	.byte		N09   , Bn1 , v096
	.byte	W24
	.byte		        Cn2 , v100
	.byte	W24
	.byte		N11   , Gn2 , v096
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_umineko_600_million_1_010:
	.byte		N24   , Ds2 , v100
	.byte	W24
	.byte		N09   , Gn2 , v096
	.byte	W24
	.byte		N11   , Dn2 , v100
	.byte	W12
	.byte		        Gn1 , v096
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_umineko_600_million_1_011:
	.byte		N24   , Cn2 , v100
	.byte	W24
	.byte		N09   , Bn1 , v096
	.byte	W24
	.byte		N24   , Cn2 , v100
	.byte	W24
	.byte		N23   , Dn2 , v096
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_1_008
@ 013   ----------------------------------------
mus_umineko_600_million_1_013:
	.byte		N10   , An1 , v100
	.byte	W24
	.byte		N09   , Bn1 , v096
	.byte	W24
	.byte		        Cn2 , v100
	.byte	W48
	.byte	PEND
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
mus_umineko_600_million_1_016:
	.byte		N36   , Bn1 , v100
	.byte	W36
	.byte		N05   , Gn1 , v096
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N24   , Dn2 , v100
	.byte	W48
	.byte	PEND
@ 017   ----------------------------------------
mus_umineko_600_million_1_017:
	.byte		N48   , Ds2 , v100
	.byte	W48
	.byte		N44   , Cn2 , v100, gtp3
	.byte	W48
	.byte	PEND
@ 018   ----------------------------------------
mus_umineko_600_million_1_018:
	.byte		N36   , Fn2 , v100
	.byte	W36
	.byte		N05   , Dn2 , v096
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N24   , Fn2 , v100
	.byte	W24
	.byte		N23   , Gs2 , v096
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
mus_umineko_600_million_1_019:
	.byte		N10   , Gn2 , v100
	.byte	W42
	.byte		N05   , Gn2 , v096
	.byte	W06
	.byte		N04   , An2 , v100
	.byte	W12
	.byte		N11   , Bn2 , v096
	.byte	W12
	.byte		N04   , Cn3 
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
mus_umineko_600_million_1_020:
	.byte		N56   , Gs1 , v100, gtp3
	.byte	W60
	.byte		N11   , Gn1 , v096
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_umineko_600_million_1_021:
	.byte		N10   , Cn2 , v100
	.byte	W24
	.byte		N24   , Bn1 , v096
	.byte	W24
	.byte		        Cn2 , v100
	.byte	W24
	.byte		N11   , Dn2 , v096
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_umineko_600_million_1_022:
	.byte		N48   , An2 , v100
	.byte	W60
	.byte		N11   , Fn1 , v096
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
mus_umineko_600_million_1_023:
	.byte		N24   , As1 , v100
	.byte	W48
	.byte		        Gn1 
	.byte	W24
	.byte		N23   , Bn1 , v096
	.byte	W24
	.byte	PEND
@ 024   ----------------------------------------
	.byte	TEMPO , 128*mus_umineko_600_million_tbs/2
	.byte	W84
	.byte		N11   , Gn2 
	.byte	W12
@ 025   ----------------------------------------
	.byte		N10   , An2 , v100
	.byte	W24
	.byte		N09   , Bn2 , v096
	.byte	W24
	.byte		        Cn3 , v100
	.byte	W24
	.byte		N11   , Gn2 , v096
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_1_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_1_011
@ 028   ----------------------------------------
	.byte		N48   , Ds2 , v100
	.byte	W48
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N23   , Gn2 , v096
	.byte	W24
@ 029   ----------------------------------------
	.byte		N24   , Fn2 , v100
	.byte	W24
	.byte		N11   , Dn2 , v096
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 , v100
	.byte	W12
	.byte		        Gn1 , v096
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 030   ----------------------------------------
	.byte	W60
	.byte		        Gn2 
	.byte	W36
@ 031   ----------------------------------------
	.byte	W72
	.byte		N23   , Gn1 , v088
	.byte	W24
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_1_008
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_1_009
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_1_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_1_011
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_1_008
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_1_013
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_1_016
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_1_017
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_1_018
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_1_019
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_1_020
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_1_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_1_022
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_1_023
@ 048   ----------------------------------------
	.byte	W06
	.byte		VOL   , 127*mus_umineko_600_million_mvl/mxv
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_umineko_600_million_2:
	.byte	KEYSH , mus_umineko_600_million_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 92*mus_umineko_600_million_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N10   , Cn3 , v076
	.byte	W24
	.byte		N09   , Dn3 , v072
	.byte	W24
	.byte		N32   , Ds3 , v076, gtp3
	.byte	W36
	.byte		N11   , Gn2 , v072
	.byte	W12
@ 001   ----------------------------------------
	.byte		N10   , An2 , v076
	.byte	W24
	.byte		N09   , Bn2 , v072
	.byte	W24
	.byte		        Cn3 , v076
	.byte	W24
	.byte		N11   , Gn2 , v072
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 002   ----------------------------------------
	.byte		N24   , Ds2 , v076
	.byte	W24
	.byte		N09   , Gn2 , v072
	.byte	W24
	.byte		N11   , Dn2 , v076
	.byte	W12
	.byte		        Gn1 , v072
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 003   ----------------------------------------
	.byte		N24   , Cn2 , v076
	.byte	W24
	.byte		N09   , Bn1 , v072
	.byte	W24
	.byte		N24   , Cn2 , v076
	.byte	W24
	.byte		N23   , Dn2 , v072
	.byte	W24
@ 004   ----------------------------------------
	.byte		N48   , Ds2 , v076
	.byte	W48
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N23   , Gn2 , v072
	.byte	W24
@ 005   ----------------------------------------
	.byte		N24   , Fn2 , v076
	.byte	W24
	.byte		N11   , Dn2 , v072
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 , v076
	.byte	W12
	.byte		        Gn1 , v072
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N12   , Cn4 , v076
	.byte	W13
	.byte		N11   , Ds4 , v072
	.byte	W11
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 , v076
	.byte	W12
	.byte		        Gn4 , v072
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 007   ----------------------------------------
	.byte		N12   , Ds4 , v076
	.byte	W13
	.byte		N11   , Gn4 , v072
	.byte	W11
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N24   , Ds4 , v076
	.byte	W24
	.byte		N23   , Bn2 , v080
	.byte	W24
@ 008   ----------------------------------------
mus_umineko_600_million_2_008:
	.byte		N12   , Ds3 , v076
	.byte	W13
	.byte		N11   , Cn3 , v072
	.byte	W68
	.byte	W03
	.byte		        Gn2 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_umineko_600_million_2_009:
	.byte	W13
	.byte		N11   , Cn3 , v072
	.byte	W32
	.byte	W03
	.byte		N24   , Ds3 , v076
	.byte	W24
	.byte		N11   , Ds3 , v072
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte		N24   , Cn3 , v076
	.byte	W96
@ 011   ----------------------------------------
mus_umineko_600_million_2_011:
	.byte	W13
	.byte		N11   , Gn2 , v072
	.byte	W80
	.byte	W03
	.byte	PEND
@ 012   ----------------------------------------
mus_umineko_600_million_2_012:
	.byte	W13
	.byte		N11   , Gn2 , v072
	.byte	W23
	.byte		N11   
	.byte	W36
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
mus_umineko_600_million_2_013:
	.byte		N06   , An2 , v076
	.byte	W07
	.byte		N05   , Gn2 , v072
	.byte	W06
	.byte		N11   , An2 
	.byte	W11
	.byte		N09   , Bn2 
	.byte	W24
	.byte		N24   , Cn3 , v076
	.byte	W24
	.byte		N11   , Gn2 , v072
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
mus_umineko_600_million_2_014:
	.byte		N24   , Ds2 , v076
	.byte	W24
	.byte		N09   , Gn2 , v072
	.byte	W24
	.byte		N11   , Gs2 , v076
	.byte	W12
	.byte		        Gn2 , v072
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_umineko_600_million_2_015:
	.byte		N24   , Cn3 , v076
	.byte	W24
	.byte		N09   , Bn2 , v072
	.byte	W24
	.byte		N32   , Cn3 , v076, gtp3
	.byte	W48
	.byte	PEND
@ 016   ----------------------------------------
mus_umineko_600_million_2_016:
	.byte	W13
	.byte		N11   , Gn2 , v072
	.byte	W56
	.byte	W03
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
mus_umineko_600_million_2_017:
	.byte	W13
	.byte		N11   , Gn2 , v072
	.byte	W68
	.byte	W03
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
mus_umineko_600_million_2_019:
	.byte	W18
	.byte		N06   , Cn3 , v072
	.byte	W06
	.byte		        Bn2 
	.byte	W07
	.byte		N05   , Cn3 
	.byte	W05
	.byte		        Dn3 
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_umineko_600_million_2_020:
	.byte		N12   , Ds3 , v076
	.byte	W13
	.byte		N11   , Gs2 , v072
	.byte	W11
	.byte		        As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 , v076
	.byte	W12
	.byte		        Ds3 , v072
	.byte	W36
	.byte	PEND
@ 021   ----------------------------------------
mus_umineko_600_million_2_021:
	.byte		N10   , Ds3 , v076
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N23   , Dn3 , v072
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
mus_umineko_600_million_2_022:
	.byte	W13
	.byte		N11   , Fn3 , v072
	.byte	W80
	.byte	W03
	.byte	PEND
@ 023   ----------------------------------------
	.byte	W72
	.byte		N23   , Gn3 
	.byte	W24
@ 024   ----------------------------------------
	.byte		N10   , Cn3 , v076
	.byte	W24
	.byte		N09   , Dn3 , v072
	.byte	W24
	.byte		N32   , Ds3 , v076, gtp3
	.byte	W48
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W84
	.byte		N11   , Gn3 , v072
	.byte	W12
@ 029   ----------------------------------------
	.byte		N10   , An3 , v076
	.byte	W24
	.byte		N09   , Bn3 , v072
	.byte	W24
	.byte		N24   , Cn4 , v076
	.byte	W36
	.byte		N11   , Bn3 , v072
	.byte	W12
@ 030   ----------------------------------------
	.byte		N24   , Ds3 , v076
	.byte	W24
	.byte		N09   , Gn3 , v072
	.byte	W24
	.byte		N11   , Dn3 , v076
	.byte	W24
	.byte		        Bn2 , v072
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 031   ----------------------------------------
	.byte		N24   , Cn3 , v076
	.byte	W24
	.byte		N09   , Bn2 , v072
	.byte	W24
	.byte		N24   , Cn3 , v076
	.byte	W24
	.byte		N23   , Bn2 , v080
	.byte	W24
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_2_008
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_2_009
@ 034   ----------------------------------------
	.byte		N24   , Cn3 , v076
	.byte	W96
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_2_011
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_2_012
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_2_013
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_2_014
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_2_015
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_2_016
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_2_017
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_2_019
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_2_020
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_2_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_2_022
@ 047   ----------------------------------------
	.byte	W72
	.byte		N23   , Gn3 , v072
	.byte	W24
@ 048   ----------------------------------------
	.byte	W06
	.byte		VOL   , 92*mus_umineko_600_million_mvl/mxv
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_umineko_600_million_3:
	.byte	KEYSH , mus_umineko_600_million_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 92*mus_umineko_600_million_mvl/mxv
	.byte		PAN   , c_v+24
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
	.byte	W72
	.byte		N23   , Dn4 , v072
	.byte	W24
@ 008   ----------------------------------------
mus_umineko_600_million_3_008:
	.byte	W24
	.byte		N11   , Gn3 , v072
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn4 , v076
	.byte	W12
	.byte		N05   , Bn3 , v072
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
mus_umineko_600_million_3_009:
	.byte		N12   , Fn3 , v076
	.byte	W24
	.byte		N11   , Fn3 , v072
	.byte	W12
	.byte		        Gn3 
	.byte	W60
	.byte	PEND
@ 010   ----------------------------------------
mus_umineko_600_million_3_010:
	.byte	W24
	.byte		N09   , Gn3 , v072
	.byte	W24
	.byte		N24   , Fn3 , v076
	.byte	W24
	.byte		N11   , Gn3 , v072
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_umineko_600_million_3_011:
	.byte		N12   , Ds3 , v076
	.byte	W24
	.byte		N24   , Dn3 , v072
	.byte	W24
	.byte		        Cn3 , v076
	.byte	W24
	.byte		N23   , Bn2 , v072
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
mus_umineko_600_million_3_012:
	.byte		N06   , Cn3 , v076
	.byte	W07
	.byte		N05   , Bn2 , v072
	.byte	W17
	.byte		N11   , Fn3 
	.byte	W24
	.byte		N24   , Ds3 , v076
	.byte	W48
	.byte	PEND
@ 013   ----------------------------------------
	.byte	W84
	.byte		N11   , Bn2 , v072
	.byte	W12
@ 014   ----------------------------------------
mus_umineko_600_million_3_014:
	.byte		N24   , Cn3 , v076
	.byte	W24
	.byte		N09   , Dn3 , v072
	.byte	W24
	.byte		N11   , Ds3 , v076
	.byte	W12
	.byte		        Dn3 , v072
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_umineko_600_million_3_015:
	.byte		N24   , Ds3 , v076
	.byte	W24
	.byte		N09   , Dn3 , v072
	.byte	W24
	.byte		N32   , En3 , v076, gtp3
	.byte	W36
	.byte		N11   , Ds3 , v072
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_umineko_600_million_3_016:
	.byte		N12   , Dn3 , v076
	.byte	W24
	.byte		N11   , Bn2 , v072
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 , v076
	.byte	W12
	.byte		        Gs3 , v072
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_umineko_600_million_3_017:
	.byte		N12   , Cn3 , v076
	.byte	W24
	.byte		N11   , Cn3 , v072
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Ds3 , v076
	.byte	W12
	.byte		        Fn3 , v072
	.byte	W12
	.byte		        Gn3 
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
mus_umineko_600_million_3_018:
	.byte		N12   , Gs3 , v076
	.byte	W13
	.byte		N11   , Gn3 , v072
	.byte	W11
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn3 , v076
	.byte	W12
	.byte		        Ds3 , v072
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte		N08   , Gn3 , v076
	.byte	W96
@ 020   ----------------------------------------
mus_umineko_600_million_3_020:
	.byte	W72
	.byte		N11   , Fn3 , v072
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W72
@ 022   ----------------------------------------
mus_umineko_600_million_3_022:
	.byte		N12   , An3 , v076
	.byte	W24
	.byte		N11   , Gn3 , v072
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 , v076
	.byte	W12
	.byte		        An3 , v072
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
mus_umineko_600_million_3_023:
	.byte		N24   , Dn4 , v076
	.byte	W48
	.byte		N24   
	.byte	W48
	.byte	PEND
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W72
	.byte		N23   , Bn3 , v072
	.byte	W24
@ 028   ----------------------------------------
	.byte		N10   , Cn4 , v076
	.byte	W24
	.byte		N09   , Dn4 , v072
	.byte	W24
	.byte		N32   , Ds4 , v076, gtp3
	.byte	W48
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte		N12   , Cn4 
	.byte	W13
	.byte		N11   , Ds4 , v072
	.byte	W11
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 , v076
	.byte	W12
	.byte		        Gn4 , v072
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 031   ----------------------------------------
	.byte		N12   , Ds4 , v076
	.byte	W13
	.byte		N11   , Gn4 , v072
	.byte	W11
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N24   , Ds4 , v076
	.byte	W24
	.byte		N23   , Dn4 , v072
	.byte	W24
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_3_008
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_3_009
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_3_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_3_011
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_3_012
@ 037   ----------------------------------------
	.byte	W84
	.byte		N11   , Bn2 , v072
	.byte	W12
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_3_014
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_3_015
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_3_016
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_3_017
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_3_018
@ 043   ----------------------------------------
	.byte		N08   , Gn3 , v076
	.byte	W96
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_3_020
@ 045   ----------------------------------------
	.byte	W24
	.byte		N24   , Gn3 , v072
	.byte	W72
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_3_022
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_600_million_3_023
@ 048   ----------------------------------------
	.byte	W06
	.byte		VOL   , 92*mus_umineko_600_million_mvl/mxv
	.byte	FINE

@******************************************************@
	.align	2

mus_umineko_600_million:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_umineko_600_million_pri	@ Priority
	.byte	mus_umineko_600_million_rev	@ Reverb.

	.word	mus_umineko_600_million_grp

	.word	mus_umineko_600_million_1
	.word	mus_umineko_600_million_2
	.word	mus_umineko_600_million_3

	.end
