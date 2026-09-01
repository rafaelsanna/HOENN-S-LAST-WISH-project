	.include "MPlayDef.s"

	.equ	mus_through_the_sea_of_time_grp, voicegroup_fly_me_to_the_moon
	.equ	mus_through_the_sea_of_time_pri, 0
	.equ	mus_through_the_sea_of_time_rev, reverb_set+50
	.equ	mus_through_the_sea_of_time_mvl, 100
	.equ	mus_through_the_sea_of_time_key, 0
	.equ	mus_through_the_sea_of_time_tbs, 1
	.equ	mus_through_the_sea_of_time_exg, 1
	.equ	mus_through_the_sea_of_time_cmp, 1

	.section .rodata
	.global	mus_through_the_sea_of_time
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_through_the_sea_of_time_1:
	.byte	KEYSH , mus_through_the_sea_of_time_key+0
mus_through_the_sea_of_time_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 246*mus_through_the_sea_of_time_tbs/2
	.byte		VOICE , 0
	.byte		        0
	.byte		VOL   , 119*mus_through_the_sea_of_time_mvl/mxv
	.byte		PAN   , c_v+3
	.byte		N24   , Fn3 , v064
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte		N24   , Dn4 
	.byte	W24
@ 001   ----------------------------------------
mus_through_the_sea_of_time_1_001:
	.byte		N24   , Fn3 , v064
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte		N24   , Dn4 
	.byte	W24
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_001
@ 004   ----------------------------------------
mus_through_the_sea_of_time_1_004:
	.byte		N24   , An3 , v064
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        An3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        An3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        An3 
	.byte		N24   , Cn4 
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte		        An3 
	.byte		N24   , Cn4 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        An3 
	.byte		N24   , Cn4 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        An3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        An3 
	.byte		N24   , Cn4 
	.byte		N24   , Dn4 
	.byte	W24
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_004
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
mus_through_the_sea_of_time_1_008:
	.byte		N24   , En3 , v088
	.byte		N24   , An3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        En3 
	.byte		N24   , An3 
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
mus_through_the_sea_of_time_1_009:
	.byte		N24   , Dn3 , v088
	.byte		N24   , An3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        En3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , An3 
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_008
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_009
@ 012   ----------------------------------------
mus_through_the_sea_of_time_1_012:
	.byte		N24   , Dn3 , v088
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Cn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Cn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
mus_through_the_sea_of_time_1_013:
	.byte		N24   , Cn3 , v088
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Cn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Cn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_012
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_013
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_008
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_009
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_012
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_013
@ 024   ----------------------------------------
mus_through_the_sea_of_time_1_024:
	.byte		N24   , Fn2 , v064
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W48
	.byte		        Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_024
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_024
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_024
@ 028   ----------------------------------------
mus_through_the_sea_of_time_1_028:
	.byte		N24   , En2 , v064
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte		N24   , Bn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte		N24   , Bn3 
	.byte		N24   , Dn4 
	.byte	W48
	.byte		        En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte		N24   , Bn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_028
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_028
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_028
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_024
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_024
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_024
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_024
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_028
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_028
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_028
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_028
@ 040   ----------------------------------------
mus_through_the_sea_of_time_1_040:
	.byte		N24   , Fn2 , v084
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W48
	.byte		        Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte	PEND
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_040
@ 042   ----------------------------------------
mus_through_the_sea_of_time_1_042:
	.byte		N24   , En2 , v084
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte		N24   , Bn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte		N24   , Bn3 
	.byte		N24   , Dn4 
	.byte	W48
	.byte		        En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte		N24   , Bn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_042
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_042
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_042
@ 046   ----------------------------------------
mus_through_the_sea_of_time_1_046:
	.byte		N24   , An1 , v084
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte		N24   , Cs4 
	.byte	W48
	.byte		        An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte	PEND
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_046
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_040
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_040
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_042
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_042
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_042
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_042
@ 054   ----------------------------------------
mus_through_the_sea_of_time_1_054:
	.byte		N96   , An1 , v084
	.byte		N96   , Cn2 
	.byte		N96   , En2 
	.byte		N96   , Cn3 
	.byte		N96   , En3 
	.byte		N96   , An3 
	.byte		N96   , Cn4 
	.byte	W96
	.byte	PEND
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_008
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_009
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_008
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_009
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_012
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_013
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_012
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_013
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_008
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_009
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_008
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_009
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_012
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_013
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_012
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_013
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_024
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_024
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_024
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_024
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_028
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_028
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_028
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_028
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_024
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_024
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_024
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_024
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_028
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_028
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_028
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_028
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_040
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_040
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_042
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_042
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_042
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_042
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_046
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_046
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_040
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_040
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_042
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_042
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_042
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_042
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_1_054
	.byte	GOTO
	 .word	mus_through_the_sea_of_time_1_B1
mus_through_the_sea_of_time_1_B2:
@ 103   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_through_the_sea_of_time_2:
	.byte	KEYSH , mus_through_the_sea_of_time_key+0
mus_through_the_sea_of_time_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        1
	.byte		PAN   , c_v+8
	.byte		VOL   , 116*mus_through_the_sea_of_time_mvl/mxv
	.byte		TIE   , Fn1 , v096
	.byte		TIE   , Cn2 
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fn1 
	.byte		        Cn2 
@ 004   ----------------------------------------
	.byte		TIE   , Gn1 
	.byte		TIE   , Dn2 
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn1 
	.byte		        Dn2 
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
mus_through_the_sea_of_time_2_008:
	.byte		TIE   , Fn1 , v096
	.byte		TIE   , Cn2 
	.byte		TIE   , Fn2 
	.byte		TIE   , An2 
	.byte	W96
	.byte	PEND
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W72
	.byte		EOT   , Fn1 
	.byte		        Cn2 
	.byte		        Fn2 
	.byte		        An2 
	.byte		N24   , Fn1 
	.byte		N24   , Fn2 
	.byte	W24
@ 012   ----------------------------------------
mus_through_the_sea_of_time_2_012:
	.byte		TIE   , En1 , v096
	.byte		TIE   , Bn1 
	.byte		TIE   , En2 
	.byte	W96
	.byte	PEND
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
	.byte		EOT   , En1 
	.byte		        Bn1 
	.byte		        En2 
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_008
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W72
	.byte		EOT   , Fn1 
	.byte		        Cn2 
	.byte		        Fn2 
	.byte		        An2 
	.byte		N24   , Fn1 , v096
	.byte	W24
@ 020   ----------------------------------------
mus_through_the_sea_of_time_2_020:
	.byte		TIE   , An1 , v096
	.byte		TIE   , En2 
	.byte	W96
	.byte	PEND
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 023   ----------------------------------------
	.byte		N12   , AnM1
	.byte	W12
	.byte		EOT   , An1 
	.byte		N12   , An0 
	.byte		N12   , An2 
	.byte	W12
	.byte		        AnM1
	.byte		N12   , An1 
	.byte	W12
	.byte		        An0 
	.byte		N12   , An2 
	.byte	W12
	.byte		        AnM1
	.byte		N12   , An1 
	.byte	W12
	.byte		        An0 
	.byte		N12   , An2 
	.byte	W12
	.byte		        AnM1
	.byte		N12   , An1 
	.byte	W12
	.byte		        An0 
	.byte		N12   , An2 
	.byte	W12
@ 024   ----------------------------------------
mus_through_the_sea_of_time_2_024:
	.byte		TIE   , Fn1 , v096
	.byte		N24   , Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte		        Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte	W48
	.byte		        Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
mus_through_the_sea_of_time_2_025:
	.byte		N24   , Fn2 , v096
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte		        Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte	W48
	.byte		        Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_025
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_025
	.byte		EOT   , Fn1 
@ 028   ----------------------------------------
mus_through_the_sea_of_time_2_028:
	.byte		TIE   , En1 , v096
	.byte		N24   , En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		        En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte	W48
	.byte		        En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte	PEND
@ 029   ----------------------------------------
mus_through_the_sea_of_time_2_029:
	.byte		N24   , En2 , v096
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		        En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte	W48
	.byte		        En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_029
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_029
	.byte		EOT   , En1 
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_024
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_025
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_025
	.byte		EOT   , Fn1 
@ 036   ----------------------------------------
mus_through_the_sea_of_time_2_036:
	.byte		TIE   , An1 , v096
	.byte		N24   , En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		        En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte	W48
	.byte		        En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte	PEND
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_029
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_029
@ 039   ----------------------------------------
mus_through_the_sea_of_time_2_039:
	.byte		N24   , En2 , v096
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		        En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte	W12
	.byte		N12   , An2 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   , En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte	PEND
	.byte		EOT   , An1 
@ 040   ----------------------------------------
mus_through_the_sea_of_time_2_040:
	.byte		TIE   , Fn1 , v084
	.byte		N24   , Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W48
	.byte		        Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte	PEND
@ 041   ----------------------------------------
mus_through_the_sea_of_time_2_041:
	.byte		N24   , Fn2 , v084
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W48
	.byte		        Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte	PEND
	.byte		EOT   , Fn1 
@ 042   ----------------------------------------
mus_through_the_sea_of_time_2_042:
	.byte		TIE   , En1 , v084
	.byte		N24   , En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte		N24   , Bn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte		N24   , Bn3 
	.byte		N24   , Dn4 
	.byte	W48
	.byte		        En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte		N24   , Bn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
@ 043   ----------------------------------------
mus_through_the_sea_of_time_2_043:
	.byte		N24   , En2 , v084
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte		N24   , Bn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte		N24   , Bn3 
	.byte		N24   , Dn4 
	.byte	W48
	.byte		        En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte		N24   , Bn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
	.byte		EOT   , En1 
@ 044   ----------------------------------------
mus_through_the_sea_of_time_2_044:
	.byte		TIE   , An1 , v084
	.byte		N24   , En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte		N24   , Bn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte		N24   , Bn3 
	.byte		N24   , Dn4 
	.byte	W48
	.byte		        En2 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte		N24   , Bn3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_043
@ 046   ----------------------------------------
mus_through_the_sea_of_time_2_046:
	.byte		N24   , En2 , v084
	.byte		N24   , An2 
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        En2 
	.byte		N24   , An2 
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte		N24   , Cs4 
	.byte	W48
	.byte		        En2 
	.byte		N24   , An2 
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte	PEND
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_046
	.byte		EOT   , An1 
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_040
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_041
	.byte		EOT   , Fn1 
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_042
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_043
	.byte		EOT   , En1 
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_044
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_043
	.byte		EOT   , An1 
@ 054   ----------------------------------------
mus_through_the_sea_of_time_2_054:
	.byte		N96   , An1 , v084
	.byte		N96   , Cn2 
	.byte		N96   , En2 
	.byte		N96   , Cn3 
	.byte		N96   , En3 
	.byte		N96   , An3 
	.byte		N96   , Cn4 
	.byte	W96
	.byte	PEND
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_008
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W72
	.byte		EOT   , Fn1 
	.byte		        Cn2 
	.byte		        Fn2 
	.byte		        An2 
	.byte		N24   , Fn1 , v096
	.byte		N24   , Fn2 
	.byte	W24
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_012
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
	.byte		EOT   , En1 
	.byte		        Bn1 
	.byte		        En2 
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_008
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W72
	.byte		EOT   , Fn1 
	.byte		        Cn2 
	.byte		        Fn2 
	.byte		        An2 
	.byte		N24   , Fn1 , v096
	.byte	W24
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_020
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
	.byte		EOT   , En2 
@ 071   ----------------------------------------
	.byte		N12   , AnM1, v096
	.byte	W12
	.byte		EOT   , An1 
	.byte		N12   , An0 
	.byte		N12   , An2 
	.byte	W12
	.byte		        AnM1
	.byte		N12   , An1 
	.byte	W12
	.byte		        An0 
	.byte		N12   , An2 
	.byte	W12
	.byte		        AnM1
	.byte		N12   , An1 
	.byte	W12
	.byte		        An0 
	.byte		N12   , An2 
	.byte	W12
	.byte		        AnM1
	.byte		N12   , An1 
	.byte	W12
	.byte		        An0 
	.byte		N12   , An2 
	.byte	W12
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_024
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_025
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_025
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_025
	.byte		EOT   , Fn1 
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_028
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_029
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_029
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_029
	.byte		EOT   , En1 
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_024
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_025
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_025
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_025
	.byte		EOT   , Fn1 
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_036
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_029
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_029
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_039
	.byte		EOT   , An1 
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_040
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_041
	.byte		EOT   , Fn1 
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_042
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_043
	.byte		EOT   , En1 
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_044
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_043
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_046
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_046
	.byte		EOT   , An1 
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_040
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_041
	.byte		EOT   , Fn1 
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_042
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_043
	.byte		EOT   , En1 
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_044
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_043
	.byte		EOT   , An1 
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_2_054
	.byte	GOTO
	 .word	mus_through_the_sea_of_time_2_B1
mus_through_the_sea_of_time_2_B2:
@ 103   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_through_the_sea_of_time_3:
	.byte		VOL   , 127*mus_through_the_sea_of_time_mvl/mxv
	.byte	KEYSH , mus_through_the_sea_of_time_key+0
mus_through_the_sea_of_time_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        73
	.byte		PAN   , c_v+29
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
mus_through_the_sea_of_time_3_007:
	.byte		N24   , Gn4 , v100
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
	.byte		TIE   , En5 
	.byte	W96
@ 009   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N24   , Dn5 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N96   , Bn4 
	.byte	W96
@ 011   ----------------------------------------
mus_through_the_sea_of_time_3_011:
	.byte		N48   , Gn4 , v100
	.byte	W48
	.byte		        Bn4 
	.byte	W48
	.byte	PEND
@ 012   ----------------------------------------
mus_through_the_sea_of_time_3_012:
	.byte		N48   , An4 , v100
	.byte	W48
	.byte		        En4 
	.byte	W48
	.byte	PEND
@ 013   ----------------------------------------
mus_through_the_sea_of_time_3_013:
	.byte		N48   , En4 , v100
	.byte	W48
	.byte		        Dn4 
	.byte	W48
	.byte	PEND
@ 014   ----------------------------------------
	.byte		N72   , En4 
	.byte	W96
@ 015   ----------------------------------------
mus_through_the_sea_of_time_3_015:
	.byte		N24   , An4 , v100
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
	.byte		TIE   , En5 
	.byte	W96
@ 017   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N24   , Dn5 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
@ 018   ----------------------------------------
	.byte		N96   , Bn4 
	.byte	W96
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_3_011
@ 020   ----------------------------------------
mus_through_the_sea_of_time_3_020:
	.byte		N48   , An4 , v100
	.byte	W48
	.byte		        En5 
	.byte	W48
	.byte	PEND
@ 021   ----------------------------------------
mus_through_the_sea_of_time_3_021:
	.byte		N48   , En5 , v100
	.byte	W48
	.byte		        Dn5 
	.byte	W48
	.byte	PEND
@ 022   ----------------------------------------
	.byte		N72   , En5 
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
	.byte	PATT
	 .word	mus_through_the_sea_of_time_3_007
@ 056   ----------------------------------------
	.byte		TIE   , En5 , v100
	.byte	W96
@ 057   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N24   , Dn5 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
@ 058   ----------------------------------------
	.byte		N96   , Bn4 
	.byte	W96
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_3_011
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_3_012
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_3_013
@ 062   ----------------------------------------
	.byte		N72   , En4 , v100
	.byte	W96
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_3_015
@ 064   ----------------------------------------
	.byte		TIE   , En5 , v100
	.byte	W96
@ 065   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N24   , Dn5 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
@ 066   ----------------------------------------
	.byte		N96   , Bn4 
	.byte	W96
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_3_011
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_3_020
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_3_021
@ 070   ----------------------------------------
	.byte		N72   , En5 , v100
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
	.byte	GOTO
	 .word	mus_through_the_sea_of_time_3_B1
mus_through_the_sea_of_time_3_B2:
@ 103   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_through_the_sea_of_time_4:
	.byte		VOL   , 127*mus_through_the_sea_of_time_mvl/mxv
	.byte	KEYSH , mus_through_the_sea_of_time_key+0
mus_through_the_sea_of_time_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        40
	.byte		PAN   , c_v+0
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
mus_through_the_sea_of_time_4_023:
	.byte		N24   , Gn4 , v104
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte	PEND
@ 024   ----------------------------------------
	.byte		TIE   , En5 
	.byte	W96
@ 025   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N24   , Dn5 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
@ 026   ----------------------------------------
	.byte		N96   , Bn4 
	.byte	W96
@ 027   ----------------------------------------
mus_through_the_sea_of_time_4_027:
	.byte		N48   , Gn4 , v104
	.byte	W48
	.byte		        Bn4 
	.byte	W48
	.byte	PEND
@ 028   ----------------------------------------
mus_through_the_sea_of_time_4_028:
	.byte		N48   , An4 , v104
	.byte	W48
	.byte		        En4 
	.byte	W48
	.byte	PEND
@ 029   ----------------------------------------
mus_through_the_sea_of_time_4_029:
	.byte		N48   , En4 , v104
	.byte	W48
	.byte		        Dn4 
	.byte	W48
	.byte	PEND
@ 030   ----------------------------------------
	.byte		N72   , En4 
	.byte	W96
@ 031   ----------------------------------------
mus_through_the_sea_of_time_4_031:
	.byte		N24   , An4 , v104
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte	PEND
@ 032   ----------------------------------------
	.byte		TIE   , En5 
	.byte	W96
@ 033   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N24   , Dn5 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
@ 034   ----------------------------------------
	.byte		N96   , Bn4 
	.byte	W96
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_4_027
@ 036   ----------------------------------------
mus_through_the_sea_of_time_4_036:
	.byte		N48   , An4 , v104
	.byte	W48
	.byte		        En5 
	.byte	W48
	.byte	PEND
@ 037   ----------------------------------------
mus_through_the_sea_of_time_4_037:
	.byte		N48   , En5 , v104
	.byte	W48
	.byte		        Dn5 
	.byte	W48
	.byte	PEND
@ 038   ----------------------------------------
	.byte		N96   , En5 
	.byte	W96
@ 039   ----------------------------------------
	.byte		        Gn5 
	.byte	W96
@ 040   ----------------------------------------
mus_through_the_sea_of_time_4_040:
	.byte		N96   , Cn4 , v064
	.byte		TIE   , Cn5 , v100
	.byte		TIE   , En5 
	.byte	W96
	.byte	PEND
@ 041   ----------------------------------------
	.byte		N48   , Cn4 , v064
	.byte	W48
	.byte		EOT   , Cn5 
	.byte		        En5 
	.byte		N48   , Cn4 
	.byte		N48   , An4 , v100
	.byte		N48   , Cn5 
	.byte	W48
@ 042   ----------------------------------------
mus_through_the_sea_of_time_4_042:
	.byte		N96   , Bn3 , v064
	.byte		N96   , Bn4 , v100
	.byte		N96   , Dn5 
	.byte	W96
	.byte	PEND
@ 043   ----------------------------------------
mus_through_the_sea_of_time_4_043:
	.byte		N96   , Bn3 , v064
	.byte		N48   , Gn4 , v100
	.byte		N48   , Bn4 
	.byte	W48
	.byte		        En4 
	.byte		N48   , Gn4 
	.byte	W48
	.byte	PEND
@ 044   ----------------------------------------
mus_through_the_sea_of_time_4_044:
	.byte		N96   , An3 , v064
	.byte		N24   , Dn4 , v100
	.byte		N24   , En4 
	.byte	W24
	.byte		N24   
	.byte		N24   , An4 
	.byte	W24
	.byte		TIE   , En4 
	.byte		TIE   , An4 
	.byte	W48
	.byte	PEND
@ 045   ----------------------------------------
	.byte		N96   , An3 , v064
	.byte	W96
@ 046   ----------------------------------------
	.byte		N96   
	.byte	W96
	.byte		EOT   , En4 
	.byte		        An4 
@ 047   ----------------------------------------
mus_through_the_sea_of_time_4_047:
	.byte		N96   , An3 , v064
	.byte		N96   , En5 , v100
	.byte		N96   , Gn5 
	.byte	W96
	.byte	PEND
@ 048   ----------------------------------------
mus_through_the_sea_of_time_4_048:
	.byte		TIE   , Cn5 , v100
	.byte		TIE   , En5 
	.byte	W96
	.byte	PEND
@ 049   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cn5 
	.byte		        En5 
	.byte		N48   , An4 
	.byte		N48   , Cn5 
	.byte	W48
@ 050   ----------------------------------------
	.byte		N96   , Bn4 
	.byte		N96   , Dn5 
	.byte	W96
@ 051   ----------------------------------------
mus_through_the_sea_of_time_4_051:
	.byte		N48   , Gn4 , v100
	.byte		N48   , Bn4 
	.byte	W48
	.byte		        En4 
	.byte		N48   , Gn4 
	.byte	W48
	.byte	PEND
@ 052   ----------------------------------------
mus_through_the_sea_of_time_4_052:
	.byte		TIE   , En3 , v100
	.byte		N24   , An3 
	.byte		N24   , En4 
	.byte	W24
	.byte		TIE   , Dn4 
	.byte		N24   , An4 
	.byte	W24
	.byte		TIE   
	.byte	W48
	.byte	PEND
@ 053   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn4 
@ 054   ----------------------------------------
	.byte		N96   , Cn4 
	.byte	W96
	.byte		EOT   , En3 
	.byte		        An4 
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
	.byte	PATT
	 .word	mus_through_the_sea_of_time_4_023
@ 072   ----------------------------------------
	.byte		TIE   , En5 , v104
	.byte	W96
@ 073   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N24   , Dn5 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
@ 074   ----------------------------------------
	.byte		N96   , Bn4 
	.byte	W96
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_4_027
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_4_028
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_4_029
@ 078   ----------------------------------------
	.byte		N72   , En4 , v104
	.byte	W96
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_4_031
@ 080   ----------------------------------------
	.byte		TIE   , En5 , v104
	.byte	W96
@ 081   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N24   , Dn5 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
@ 082   ----------------------------------------
	.byte		N96   , Bn4 
	.byte	W96
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_4_027
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_4_036
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_4_037
@ 086   ----------------------------------------
	.byte		N96   , En5 , v104
	.byte	W96
@ 087   ----------------------------------------
	.byte		        Gn5 
	.byte	W96
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_4_040
@ 089   ----------------------------------------
	.byte		N48   , Cn4 , v064
	.byte	W48
	.byte		EOT   , Cn5 
	.byte		        En5 
	.byte		N48   , Cn4 
	.byte		N48   , An4 , v100
	.byte		N48   , Cn5 
	.byte	W48
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_4_042
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_4_043
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_4_044
@ 093   ----------------------------------------
	.byte		N96   , An3 , v064
	.byte	W96
@ 094   ----------------------------------------
	.byte		N96   
	.byte	W96
	.byte		EOT   , En4 
	.byte		        An4 
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_4_047
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_4_048
@ 097   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cn5 
	.byte		        En5 
	.byte		N48   , An4 , v100
	.byte		N48   , Cn5 
	.byte	W48
@ 098   ----------------------------------------
	.byte		N96   , Bn4 
	.byte		N96   , Dn5 
	.byte	W96
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_4_051
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_4_052
@ 101   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn4 
@ 102   ----------------------------------------
	.byte		N96   , Cn4 , v100
	.byte	W96
	.byte		EOT   , En3 
	.byte		        An4 
	.byte	GOTO
	 .word	mus_through_the_sea_of_time_4_B1
mus_through_the_sea_of_time_4_B2:
@ 103   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_through_the_sea_of_time_5:
	.byte	KEYSH , mus_through_the_sea_of_time_key+0
mus_through_the_sea_of_time_5_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        40
	.byte		VOL   , 116*mus_through_the_sea_of_time_mvl/mxv
	.byte		PAN   , c_v-7
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
	.byte		N96   , Gn0 , v116
	.byte		N96   , Gn1 
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W72
	.byte		N24   , Gn0 
	.byte	W24
@ 012   ----------------------------------------
	.byte		N96   
	.byte		N96   , Gn1 
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
mus_through_the_sea_of_time_5_015:
	.byte	W72
	.byte		N24   , Fn0 , v116
	.byte		N24   , Gn1 
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
	.byte		        Fn0 
	.byte		N24   , Fn1 
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte		N96   , Gn0 
	.byte		N96   , Gn1 
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
mus_through_the_sea_of_time_5_023:
	.byte		N24   , En1 , v100
	.byte		N24   , Fn1 
	.byte		N24   , Dn2 
	.byte	W24
	.byte		        En1 
	.byte		N24   , Fn1 
	.byte		N24   , Dn2 
	.byte	W24
	.byte		N06   , En1 
	.byte	W01
	.byte		N12   , Dn2 
	.byte	W05
	.byte		N06   , En1 
	.byte	W06
	.byte		N06   
	.byte	W01
	.byte		N12   , Dn2 
	.byte	W05
	.byte		N06   , En1 
	.byte	W06
	.byte		N06   
	.byte	W01
	.byte		        Dn2 
	.byte	W05
	.byte		        En1 
	.byte	W01
	.byte		        Dn2 
	.byte	W05
	.byte		        En1 
	.byte	W01
	.byte		N03   , Dn2 
	.byte	W03
	.byte		N03   
	.byte	W02
	.byte		N06   , En1 
	.byte	W01
	.byte		N03   , Dn2 
	.byte	W03
	.byte		N02   
	.byte	W02
	.byte	PEND
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
mus_through_the_sea_of_time_5_039:
	.byte		N06   , En0 , v100
	.byte		N06   , En1 
	.byte		N06   , An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , En0 
	.byte		N06   , En1 
	.byte		N06   , An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , En0 
	.byte		N06   , En1 
	.byte		N06   , An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , En0 
	.byte		N06   , En1 
	.byte		N06   , An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , En0 
	.byte		N06   , En1 
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En0 
	.byte		N06   , En1 
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En0 
	.byte		N06   , En1 
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En0 
	.byte		N06   , En1 
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En0 
	.byte		N06   , En1 
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En0 
	.byte		N06   , En1 
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En0 
	.byte		N06   , En1 
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En0 
	.byte		N06   , En1 
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte	W06
	.byte	PEND
@ 040   ----------------------------------------
mus_through_the_sea_of_time_5_040:
	.byte		N12   , En0 , v108
	.byte		N12   , En1 
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte	W96
	.byte	PEND
@ 041   ----------------------------------------
mus_through_the_sea_of_time_5_041:
	.byte	W48
	.byte		N24   , Dn1 , v108
	.byte		N24   , En1 
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte	W48
	.byte	PEND
@ 042   ----------------------------------------
mus_through_the_sea_of_time_5_042:
	.byte		N24   , Dn1 , v108
	.byte		N24   , En1 
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte	W96
	.byte	PEND
@ 043   ----------------------------------------
mus_through_the_sea_of_time_5_043:
	.byte		N24   , Dn1 , v108
	.byte		N24   , En1 
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte	W48
	.byte		        Dn1 
	.byte		N24   , En1 
	.byte		N24   , An1 
	.byte		N24   , En2 
	.byte	W48
	.byte	PEND
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_5_042
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
mus_through_the_sea_of_time_5_047:
	.byte		N06   , Bn1 , v104
	.byte		N06   , Dn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Gn0 
	.byte		N06   , Cn1 
	.byte		N06   , En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Gn0 
	.byte		N06   , Cn1 
	.byte		N06   , En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Gn0 
	.byte		N06   , Cn1 
	.byte		N06   , En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Gn0 
	.byte		N06   , Cn1 
	.byte		N06   , En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , Dn2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte	PEND
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_5_040
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_5_041
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_5_042
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_5_043
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_5_042
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte		N96   , Gn0 , v116
	.byte		N96   , Gn1 
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W72
	.byte		N24   , Gn0 
	.byte	W24
@ 060   ----------------------------------------
	.byte		N96   
	.byte		N96   , Gn1 
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_5_015
@ 064   ----------------------------------------
	.byte		N24   , Fn0 , v116
	.byte		N24   , Fn1 
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte		N96   , Gn0 
	.byte		N96   , Gn1 
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_5_023
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
	.byte	PATT
	 .word	mus_through_the_sea_of_time_5_039
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_5_040
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_5_041
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_5_042
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_5_043
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_5_042
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_5_047
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_5_040
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_5_041
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_5_042
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_5_043
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_5_042
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_through_the_sea_of_time_5_B1
mus_through_the_sea_of_time_5_B2:
@ 103   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.10) ****************@

mus_through_the_sea_of_time_6:
	.byte	KEYSH , mus_through_the_sea_of_time_key+0
mus_through_the_sea_of_time_6_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 118
	.byte		        118
	.byte		PAN   , c_v+18
	.byte		VOL   , 121*mus_through_the_sea_of_time_mvl/mxv
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
	.byte		N96   , An2 , v064
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W72
	.byte		N24   
	.byte	W24
@ 012   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W72
	.byte		N24   
	.byte	W24
@ 016   ----------------------------------------
	.byte		N24   
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
mus_through_the_sea_of_time_6_024:
	.byte		N12   , An3 , v064
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
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_024
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_024
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_024
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_024
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_024
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_024
@ 032   ----------------------------------------
	.byte		N12   , An3 , v064
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W13
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W11
@ 033   ----------------------------------------
	.byte	W01
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
	.byte		N01   
	.byte	W11
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_024
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_024
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_024
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_024
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_024
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_024
@ 040   ----------------------------------------
mus_through_the_sea_of_time_6_040:
	.byte		N48   , An2 , v112
	.byte		N12   , An3 , v064
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
@ 041   ----------------------------------------
mus_through_the_sea_of_time_6_041:
	.byte		N12   , An3 , v064
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N48   , An2 , v112
	.byte		N12   , An3 , v064
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_040
@ 043   ----------------------------------------
mus_through_the_sea_of_time_6_043:
	.byte		N48   , An2 , v112
	.byte		N12   , An3 , v064
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N48   , An2 , v112
	.byte		N12   , An3 , v064
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 044   ----------------------------------------
	.byte		N48   , An2 , v112
	.byte		N12   , An3 , v064
	.byte	W24
	.byte		N12   
	.byte	W60
	.byte		N12   
	.byte	W12
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_024
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_024
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_024
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_040
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_041
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_040
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_043
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_040
@ 053   ----------------------------------------
	.byte		N12   , An3 , v064
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W60
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte		N96   , An2 
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W72
	.byte		N24   
	.byte	W24
@ 060   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W72
	.byte		N24   
	.byte	W24
@ 064   ----------------------------------------
	.byte		N24   
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte		N96   
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
	.byte		N48   , An2 , v112
	.byte	W96
@ 089   ----------------------------------------
	.byte	W48
	.byte		N48   
	.byte	W48
@ 090   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 091   ----------------------------------------
mus_through_the_sea_of_time_6_091:
	.byte		N48   , An2 , v112
	.byte	W48
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 092   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 097   ----------------------------------------
	.byte	W48
	.byte		N48   
	.byte	W48
@ 098   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_through_the_sea_of_time_6_091
@ 100   ----------------------------------------
	.byte		N48   , An2 , v112
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_through_the_sea_of_time_6_B1
mus_through_the_sea_of_time_6_B2:
@ 103   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_through_the_sea_of_time:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_through_the_sea_of_time_pri	@ Priority
	.byte	mus_through_the_sea_of_time_rev	@ Reverb.

	.word	mus_through_the_sea_of_time_grp

	.word	mus_through_the_sea_of_time_1
	.word	mus_through_the_sea_of_time_2
	.word	mus_through_the_sea_of_time_3
	.word	mus_through_the_sea_of_time_4
	.word	mus_through_the_sea_of_time_5
	.word	mus_through_the_sea_of_time_6

	.end
