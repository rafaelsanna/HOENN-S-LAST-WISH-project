	.include "MPlayDef.s"

	.equ	mus_pegasus_fantasy_grp, voicegroup_hlw_rock_metal
	.equ	mus_pegasus_fantasy_pri, 0
	.equ	mus_pegasus_fantasy_rev, reverb_set+14
	.equ	mus_pegasus_fantasy_mvl, 90
	.equ	mus_pegasus_fantasy_key, 0
	.equ	mus_pegasus_fantasy_tbs, 1
	.equ	mus_pegasus_fantasy_exg, 1
	.equ	mus_pegasus_fantasy_cmp, 1

	.section .rodata
	.global	mus_pegasus_fantasy
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_pegasus_fantasy_1:
	.byte	KEYSH , mus_pegasus_fantasy_key+0
mus_pegasus_fantasy_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 115*mus_pegasus_fantasy_tbs/2
	.byte		VOICE , 33
	.byte		VOL   , 86*mus_pegasus_fantasy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N36   , Cn1 , v068
	.byte	W36
	.byte		N48   , As1 
	.byte	W48
	.byte		        Gs1 
	.byte	W12
@ 001   ----------------------------------------
	.byte	W36
	.byte		N60   , As1 
	.byte	W60
@ 002   ----------------------------------------
mus_pegasus_fantasy_1_002:
	.byte		N36   , Cn1 , v068
	.byte	W36
	.byte		N48   , As1 
	.byte	W48
	.byte		TIE   , Gs1 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 005   ----------------------------------------
	.byte		TIE   , Cn1 
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 007   ----------------------------------------
	.byte		TIE   , Gn1 
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 009   ----------------------------------------
	.byte		N96   , Gs1 
	.byte	W96
@ 010   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 011   ----------------------------------------
	.byte		        Ds1 
	.byte	W96
@ 012   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 013   ----------------------------------------
	.byte		TIE   , Cn1 
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 015   ----------------------------------------
	.byte		TIE   , Gn1 
	.byte	W96
@ 016   ----------------------------------------
	.byte	W84
	.byte		EOT   
	.byte		TIE   , Gs1 
	.byte	W12
@ 017   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 018   ----------------------------------------
	.byte		N96   , As1 
	.byte	W96
@ 019   ----------------------------------------
	.byte		        Cn1 
	.byte	W96
@ 020   ----------------------------------------
mus_pegasus_fantasy_1_020:
	.byte		N48   , Cn1 , v068
	.byte	W48
	.byte		        As1 
	.byte	W48
	.byte	PEND
@ 021   ----------------------------------------
	.byte		N96   , Gs1 
	.byte	W96
@ 022   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 023   ----------------------------------------
mus_pegasus_fantasy_1_023:
	.byte		N48   , Ds1 , v068
	.byte	W48
	.byte		        Gn1 
	.byte	W48
	.byte	PEND
@ 024   ----------------------------------------
	.byte		N96   , Cn1 
	.byte	W96
@ 025   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 026   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 027   ----------------------------------------
	.byte		TIE   , Gn1 
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 029   ----------------------------------------
	.byte		TIE   , Cn1 
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 031   ----------------------------------------
	.byte		TIE   , Gs1 
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 033   ----------------------------------------
	.byte		TIE   , As1 
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 035   ----------------------------------------
	.byte		N96   , Ds1 
	.byte	W96
@ 036   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 037   ----------------------------------------
	.byte		TIE   , Cn1 
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 039   ----------------------------------------
	.byte		TIE   , Gs1 
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte		N96   , As1 
	.byte	W84
@ 042   ----------------------------------------
	.byte	W12
	.byte		N84   
	.byte	W84
@ 043   ----------------------------------------
	.byte		N96   , Gn1 
	.byte	W96
@ 044   ----------------------------------------
	.byte		        Cn1 
	.byte	W96
@ 045   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 046   ----------------------------------------
mus_pegasus_fantasy_1_046:
	.byte	TEMPO , 58*mus_pegasus_fantasy_tbs/2
	.byte		N96   , As1 , v068
	.byte	W92
	.byte	W03
	.byte	TEMPO , 115*mus_pegasus_fantasy_tbs/2
	.byte	W01
	.byte	PEND
@ 047   ----------------------------------------
	.byte		        Cn1 
	.byte	W96
@ 048   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_1_046
@ 050   ----------------------------------------
	.byte	TEMPO , 115*mus_pegasus_fantasy_tbs/2
	.byte		N36   , Cn1 , v068
	.byte	W36
	.byte		N48   , As1 
	.byte	W48
	.byte		        Gs1 
	.byte	W12
@ 051   ----------------------------------------
	.byte	W36
	.byte		N60   , As1 
	.byte	W60
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_1_002
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gs1 
@ 055   ----------------------------------------
	.byte		TIE   , Cn1 , v068
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 057   ----------------------------------------
	.byte		TIE   , Gn1 
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 059   ----------------------------------------
	.byte		N96   , Gs1 
	.byte	W96
@ 060   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 061   ----------------------------------------
	.byte		        Ds1 
	.byte	W96
@ 062   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 063   ----------------------------------------
	.byte		TIE   , Cn1 
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 065   ----------------------------------------
	.byte		TIE   , Gn1 
	.byte	W96
@ 066   ----------------------------------------
	.byte	W84
	.byte		EOT   
	.byte		TIE   , Gs1 
	.byte	W12
@ 067   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 068   ----------------------------------------
	.byte		N96   , As1 
	.byte	W96
@ 069   ----------------------------------------
	.byte		        Cn1 
	.byte	W96
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_1_020
@ 071   ----------------------------------------
	.byte		N96   , Gs1 , v068
	.byte	W96
@ 072   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_1_023
@ 074   ----------------------------------------
	.byte		N96   , Cn1 , v068
	.byte	W96
@ 075   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 076   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 077   ----------------------------------------
	.byte		TIE   , Gn1 
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 079   ----------------------------------------
	.byte		TIE   , Cn1 
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 081   ----------------------------------------
	.byte		TIE   , Gs1 
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 083   ----------------------------------------
	.byte		TIE   , As1 
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 085   ----------------------------------------
	.byte		N96   , Ds1 
	.byte	W96
@ 086   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 087   ----------------------------------------
	.byte		TIE   , Cn1 
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 089   ----------------------------------------
	.byte		TIE   , Gs1 
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte		N96   , As1 
	.byte	W84
@ 092   ----------------------------------------
	.byte	W12
	.byte		N84   
	.byte	W84
@ 093   ----------------------------------------
	.byte		N96   , Gn1 
	.byte	W96
@ 094   ----------------------------------------
	.byte		        Cn1 
	.byte	W96
@ 095   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_1_046
@ 097   ----------------------------------------
	.byte		N96   , Cn1 , v068
	.byte	W96
@ 098   ----------------------------------------
	.byte		        Gs1 
	.byte	W96
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_1_046
@ 100   ----------------------------------------
	.byte		N96   , Cn1 , v068
	.byte	W44
	.byte	W03
	.byte	TEMPO , 115*mus_pegasus_fantasy_tbs/2
	.byte	W01
	.byte	TEMPO , 58*mus_pegasus_fantasy_tbs/2
	.byte	W48
	.byte	GOTO
	 .word	mus_pegasus_fantasy_1_B1
mus_pegasus_fantasy_1_B2:
@ 101   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_pegasus_fantasy_2:
	.byte	KEYSH , mus_pegasus_fantasy_key+0
mus_pegasus_fantasy_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 80*mus_pegasus_fantasy_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N36   , Cn3 , v056
	.byte		N36   , Gn3 
	.byte	W36
	.byte		N48   , Dn3 
	.byte		N48   , As3 
	.byte	W48
	.byte		        Cn3 
	.byte		N48   , Ds3 
	.byte	W12
@ 001   ----------------------------------------
mus_pegasus_fantasy_2_001:
	.byte	W36
	.byte		N60   , Dn3 , v056
	.byte		N60   , As3 
	.byte	W60
	.byte	PEND
@ 002   ----------------------------------------
mus_pegasus_fantasy_2_002:
	.byte		N36   , Cn3 , v056
	.byte		N36   , Gn3 
	.byte	W36
	.byte		N48   , Dn3 
	.byte		N48   , As3 
	.byte	W48
	.byte		TIE   , Cn3 
	.byte		TIE   , Gs3 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn3 
	.byte		        Gs3 
@ 005   ----------------------------------------
mus_pegasus_fantasy_2_005:
	.byte		TIE   , Cn3 , v056
	.byte		TIE   , Gn3 
	.byte	W96
	.byte	PEND
@ 006   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn3 
	.byte		        Gn3 
@ 007   ----------------------------------------
mus_pegasus_fantasy_2_007:
	.byte		TIE   , Dn3 , v056
	.byte		TIE   , As3 
	.byte	W96
	.byte	PEND
@ 008   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn3 
	.byte		        As3 
@ 009   ----------------------------------------
	.byte		N96   , Cn3 
	.byte		N96   , Ds3 
	.byte	W96
@ 010   ----------------------------------------
	.byte		        Dn3 
	.byte		N96   , Fn3 
	.byte	W96
@ 011   ----------------------------------------
	.byte		        Ds3 
	.byte		N96   , Gn3 
	.byte	W96
@ 012   ----------------------------------------
	.byte		        Dn3 
	.byte		N96   , Gn3 
	.byte	W96
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_005
@ 014   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn3 
	.byte		        Gn3 
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_007
@ 016   ----------------------------------------
	.byte	W84
	.byte		EOT   , Dn3 
	.byte		        As3 
	.byte		TIE   , Cn3 , v056
	.byte		TIE   , Gs3 
	.byte	W12
@ 017   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn3 
	.byte		        Gs3 
@ 018   ----------------------------------------
	.byte		N96   , Dn3 
	.byte		N96   , As3 
	.byte	W96
@ 019   ----------------------------------------
	.byte		        Cn3 
	.byte		N96   , Ds3 
	.byte	W96
@ 020   ----------------------------------------
mus_pegasus_fantasy_2_020:
	.byte		N48   , Cn3 , v056
	.byte		N48   , Gn3 
	.byte	W48
	.byte		        Dn3 
	.byte		N48   , As3 
	.byte	W48
	.byte	PEND
@ 021   ----------------------------------------
	.byte		N96   , Cn3 
	.byte		N96   , Gs3 
	.byte	W96
@ 022   ----------------------------------------
	.byte		        Dn3 
	.byte		N96   , As3 
	.byte	W96
@ 023   ----------------------------------------
mus_pegasus_fantasy_2_023:
	.byte		N48   , Ds3 , v056
	.byte		N48   , As3 
	.byte	W48
	.byte		        Dn3 
	.byte		N48   , Bn3 
	.byte	W48
	.byte	PEND
@ 024   ----------------------------------------
	.byte		N96   , Cn3 
	.byte		N96   , Ds3 
	.byte	W96
@ 025   ----------------------------------------
	.byte		        Cn3 
	.byte		N96   , Ds3 
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Dn3 
	.byte		N96   , Fn3 
	.byte	W96
@ 027   ----------------------------------------
mus_pegasus_fantasy_2_027:
	.byte		TIE   , Dn3 , v056
	.byte		TIE   , Gn3 
	.byte	W96
	.byte	PEND
@ 028   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn3 
	.byte		        Gn3 
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_005
@ 030   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn3 
	.byte		        Gn3 
@ 031   ----------------------------------------
mus_pegasus_fantasy_2_031:
	.byte		TIE   , Cn3 , v056
	.byte		TIE   , Gs3 
	.byte	W96
	.byte	PEND
@ 032   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn3 
	.byte		        Gs3 
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_007
@ 034   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn3 
	.byte		        As3 
@ 035   ----------------------------------------
	.byte		N96   , Ds3 , v056
	.byte		N96   , Gn3 
	.byte	W96
@ 036   ----------------------------------------
	.byte		        Dn3 
	.byte		N96   , Gn3 
	.byte	W96
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_005
@ 038   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn3 
	.byte		        Gn3 
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_031
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W12
	.byte		EOT   , Cn3 
	.byte		        Gs3 
	.byte		N96   , Dn3 , v056
	.byte		N96   , As3 
	.byte	W84
@ 042   ----------------------------------------
mus_pegasus_fantasy_2_042:
	.byte	W12
	.byte		N84   , Dn3 , v056
	.byte		N84   , As3 
	.byte	W84
	.byte	PEND
@ 043   ----------------------------------------
	.byte		N96   , Dn3 
	.byte		N96   , Gn3 
	.byte	W96
@ 044   ----------------------------------------
mus_pegasus_fantasy_2_044:
	.byte		N96   , Cn3 , v056
	.byte		N44   , Cn4 , v056, gtp3
	.byte	W96
	.byte	PEND
@ 045   ----------------------------------------
	.byte		N96   , Cn3 
	.byte		N96   , Ds3 
	.byte	W96
@ 046   ----------------------------------------
	.byte		        Dn3 
	.byte		N96   , Fn3 
	.byte	W96
@ 047   ----------------------------------------
	.byte		        Cn3 
	.byte		N96   , Gn3 
	.byte	W96
@ 048   ----------------------------------------
	.byte		        Cn3 
	.byte		N96   , Ds3 
	.byte	W96
@ 049   ----------------------------------------
	.byte		        Dn3 
	.byte		N96   , Fn3 
	.byte	W96
@ 050   ----------------------------------------
	.byte		N36   , Cn3 
	.byte		N36   , Gn3 
	.byte	W36
	.byte		N48   , Dn3 
	.byte		N48   , As3 
	.byte	W48
	.byte		        Cn3 
	.byte		N48   , Ds3 
	.byte	W12
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_001
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_002
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn3 
	.byte		        Gs3 
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_005
@ 056   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn3 
	.byte		        Gn3 
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_007
@ 058   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn3 
	.byte		        As3 
@ 059   ----------------------------------------
	.byte		N96   , Cn3 , v056
	.byte		N96   , Ds3 
	.byte	W96
@ 060   ----------------------------------------
	.byte		        Dn3 
	.byte		N96   , Fn3 
	.byte	W96
@ 061   ----------------------------------------
	.byte		        Ds3 
	.byte		N96   , Gn3 
	.byte	W96
@ 062   ----------------------------------------
	.byte		        Dn3 
	.byte		N96   , Gn3 
	.byte	W96
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_005
@ 064   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn3 
	.byte		        Gn3 
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_007
@ 066   ----------------------------------------
	.byte	W84
	.byte		EOT   , Dn3 
	.byte		        As3 
	.byte		TIE   , Cn3 , v056
	.byte		TIE   , Gs3 
	.byte	W12
@ 067   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn3 
	.byte		        Gs3 
@ 068   ----------------------------------------
	.byte		N96   , Dn3 
	.byte		N96   , As3 
	.byte	W96
@ 069   ----------------------------------------
	.byte		        Cn3 
	.byte		N96   , Ds3 
	.byte	W96
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_020
@ 071   ----------------------------------------
	.byte		N96   , Cn3 , v056
	.byte		N96   , Gs3 
	.byte	W96
@ 072   ----------------------------------------
	.byte		        Dn3 
	.byte		N96   , As3 
	.byte	W96
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_023
@ 074   ----------------------------------------
	.byte		N96   , Cn3 , v056
	.byte		N96   , Ds3 
	.byte	W96
@ 075   ----------------------------------------
	.byte		        Cn3 
	.byte		N96   , Ds3 
	.byte	W96
@ 076   ----------------------------------------
	.byte		        Dn3 
	.byte		N96   , Fn3 
	.byte	W96
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_027
@ 078   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn3 
	.byte		        Gn3 
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_005
@ 080   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn3 
	.byte		        Gn3 
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_031
@ 082   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn3 
	.byte		        Gs3 
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_007
@ 084   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn3 
	.byte		        As3 
@ 085   ----------------------------------------
	.byte		N96   , Ds3 , v056
	.byte		N96   , Gn3 
	.byte	W96
@ 086   ----------------------------------------
	.byte		        Dn3 
	.byte		N96   , Gn3 
	.byte	W96
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_005
@ 088   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn3 
	.byte		        Gn3 
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_031
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W12
	.byte		EOT   , Cn3 
	.byte		        Gs3 
	.byte		N96   , Dn3 , v056
	.byte		N96   , As3 
	.byte	W84
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_042
@ 093   ----------------------------------------
	.byte		N96   , Dn3 , v056
	.byte		N96   , Gn3 
	.byte	W96
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_2_044
@ 095   ----------------------------------------
	.byte		N96   , Cn3 , v056
	.byte		N96   , Ds3 
	.byte	W96
@ 096   ----------------------------------------
	.byte		        Dn3 
	.byte		N96   , Fn3 
	.byte	W96
@ 097   ----------------------------------------
	.byte		        Cn3 
	.byte		N96   , Gn3 
	.byte	W96
@ 098   ----------------------------------------
	.byte		        Cn3 
	.byte		N96   , Ds3 
	.byte	W96
@ 099   ----------------------------------------
	.byte		        Dn3 
	.byte		N96   , Fn3 
	.byte	W96
@ 100   ----------------------------------------
	.byte		        Cn3 
	.byte		N96   , Gn3 
	.byte	W96
	.byte	GOTO
	 .word	mus_pegasus_fantasy_2_B1
mus_pegasus_fantasy_2_B2:
@ 101   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_pegasus_fantasy_3:
	.byte	KEYSH , mus_pegasus_fantasy_key+0
mus_pegasus_fantasy_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 96*mus_pegasus_fantasy_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		N11   , Cn4 , v072
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N23   , Gs3 
	.byte	W12
@ 001   ----------------------------------------
mus_pegasus_fantasy_3_001:
	.byte	W12
	.byte		N11   , Cn4 , v072
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N23   , Dn4 
	.byte	W24
	.byte		N11   , As3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_pegasus_fantasy_3_002:
	.byte		N11   , Cn4 , v072
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		TIE   , As4 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 004   ----------------------------------------
mus_pegasus_fantasy_3_004:
	.byte	W36
	.byte		N23   , Cn4 , v072
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte		N92   , Gn4 , v072, gtp3
	.byte	W96
@ 006   ----------------------------------------
mus_pegasus_fantasy_3_006:
	.byte	W36
	.byte		N23   , Gn4 , v072
	.byte	W24
	.byte		N11   , Fn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_pegasus_fantasy_3_007:
	.byte		N11   , Fn4 , v072
	.byte	W12
	.byte		N23   , Ds4 
	.byte	W24
	.byte		TIE   , Dn4 
	.byte	W60
	.byte	PEND
@ 008   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N68   , Ds4 , v072, gtp3
	.byte	W12
@ 009   ----------------------------------------
mus_pegasus_fantasy_3_009:
	.byte		N96   , Gs3 , v072
	.byte	W60
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N68   , Fn4 , v072, gtp3
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_pegasus_fantasy_3_010:
	.byte		N96   , As3 , v072
	.byte	W60
	.byte		N11   , Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N68   , Gn4 , v072, gtp3
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_pegasus_fantasy_3_011:
	.byte		N96   , As3 , v072
	.byte	W60
	.byte		N11   , Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N44   , Bn4 , v072, gtp3
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_pegasus_fantasy_3_012:
	.byte		N96   , Bn3 , v072
	.byte	W36
	.byte		N23   , Cn4 
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte		N92   , Gn4 , v072, gtp3
	.byte	W96
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_006
@ 015   ----------------------------------------
mus_pegasus_fantasy_3_015:
	.byte		N11   , Fn4 , v072
	.byte	W12
	.byte		        Ds4 
	.byte	W24
	.byte		N80   , Dn4 , v072, gtp3
	.byte	W60
	.byte	PEND
@ 016   ----------------------------------------
mus_pegasus_fantasy_3_016:
	.byte	W60
	.byte		N11   , Cn4 , v072
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N23   , Ds4 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_pegasus_fantasy_3_017:
	.byte	W12
	.byte		N11   , Dn4 , v072
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N32   , Ds4 , v072, gtp3
	.byte	W36
	.byte		N23   , Gn4 
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
mus_pegasus_fantasy_3_018:
	.byte		N23   , Fn4 , v072
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		TIE   , Cn4 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_pegasus_fantasy_3_019:
	.byte		N96   , Gn3 , v072
	.byte	W92
	.byte	W03
	.byte	PEND
	.byte		EOT   , Cn4 
	.byte	W01
@ 020   ----------------------------------------
mus_pegasus_fantasy_3_020:
	.byte		N23   , Cn4 , v072
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte	PEND
@ 021   ----------------------------------------
mus_pegasus_fantasy_3_021:
	.byte		N23   , Gs4 , v072
	.byte	W36
	.byte		N23   
	.byte	W24
	.byte		N11   , Gn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_pegasus_fantasy_3_022:
	.byte		N23   , Gn4 , v072
	.byte	W24
	.byte		N11   , Fn4 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , As3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
mus_pegasus_fantasy_3_023:
	.byte		N23   , As4 , v072
	.byte	W24
	.byte		        Gs4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		N11   , Fn4 
	.byte	W12
	.byte		N68   , Ds4 , v072, gtp3
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
mus_pegasus_fantasy_3_024:
	.byte		N96   , Gn3 , v072
	.byte	W60
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N23   , Ds4 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_pegasus_fantasy_3_025:
	.byte		N96   , Gs3 , v072
	.byte	W12
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N23   , Ds4 
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N23   , Fn4 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_pegasus_fantasy_3_026:
	.byte		N68   , As3 , v072, gtp3
	.byte	W12
	.byte		N11   , Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N11   , As3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_pegasus_fantasy_3_027:
	.byte		N32   , Bn3 , v072, gtp3
	.byte	W36
	.byte		        Cn4 , v072, gtp3
	.byte	W36
	.byte		N68   , Dn4 , v072, gtp3
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
mus_pegasus_fantasy_3_028:
	.byte	W72
	.byte		N11   , Ds4 , v072
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_pegasus_fantasy_3_029:
	.byte		N11   , Gn4 , v072
	.byte	W12
	.byte		N68   , Gn4 , v072, gtp3
	.byte	W72
	.byte		N11   , Ds4 
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
mus_pegasus_fantasy_3_030:
	.byte		N23   , Gn4 , v072
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte	PEND
@ 031   ----------------------------------------
mus_pegasus_fantasy_3_031:
	.byte		N32   , Cn4 , v072, gtp3
	.byte	W36
	.byte		TIE   , Gn4 
	.byte	W60
	.byte	PEND
@ 032   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 033   ----------------------------------------
mus_pegasus_fantasy_3_033:
	.byte		N11   , Fn4 , v072
	.byte	W12
	.byte		N68   , Fn4 , v072, gtp3
	.byte	W72
	.byte		N11   , As3 
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
mus_pegasus_fantasy_3_034:
	.byte		N23   , As4 , v072
	.byte	W24
	.byte		        Gs4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		N11   , Fn4 
	.byte	W12
	.byte		N68   , Gn4 , v072, gtp3
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
mus_pegasus_fantasy_3_035:
	.byte		N96   , As3 , v072
	.byte	W60
	.byte		N11   , Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N80   , Gn4 , v072, gtp3
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
mus_pegasus_fantasy_3_036:
	.byte		N96   , Bn3 , v072
	.byte	W72
	.byte		N11   , Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_029
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_030
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_031
@ 040   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   , Gn4 
	.byte	W01
	.byte		N11   , Dn4 , v072
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 041   ----------------------------------------
mus_pegasus_fantasy_3_041:
	.byte		N11   , Fn4 , v072
	.byte	W12
	.byte		N56   , Fn4 , v072, gtp3
	.byte	W60
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte	PEND
@ 042   ----------------------------------------
mus_pegasus_fantasy_3_042:
	.byte		N11   , Fn4 , v072
	.byte	W12
	.byte		N80   , Fn4 , v072, gtp3
	.byte	W84
	.byte	PEND
@ 043   ----------------------------------------
mus_pegasus_fantasy_3_043:
	.byte		N96   , Bn3 , v072
	.byte	W24
	.byte		N23   , Gs4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte	PEND
@ 044   ----------------------------------------
mus_pegasus_fantasy_3_044:
	.byte		N92   , Gn4 , v072, gtp3
	.byte	W48
	.byte		N15   , Cn4 
	.byte	W16
	.byte		        Dn4 
	.byte	W16
	.byte		        Ds4 
	.byte	W16
	.byte	PEND
@ 045   ----------------------------------------
mus_pegasus_fantasy_3_045:
	.byte		N44   , Gs3 , v072, gtp3
	.byte	W48
	.byte		N15   
	.byte	W16
	.byte		        As3 
	.byte	W16
	.byte		        Cn4 
	.byte	W16
	.byte	PEND
@ 046   ----------------------------------------
	.byte		N92   , As3 , v072, gtp3
	.byte	W96
@ 047   ----------------------------------------
mus_pegasus_fantasy_3_047:
	.byte		N44   , Cn4 , v072, gtp3
	.byte	W48
	.byte		N15   
	.byte	W16
	.byte		        Dn4 
	.byte	W16
	.byte		        Ds4 
	.byte	W16
	.byte	PEND
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_045
@ 049   ----------------------------------------
	.byte		N92   , As3 , v072, gtp3
	.byte	W96
@ 050   ----------------------------------------
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N23   , Gs3 
	.byte	W12
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_001
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_002
@ 053   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , As4 
	.byte	W01
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_004
@ 055   ----------------------------------------
	.byte		N92   , Gn4 , v072, gtp3
	.byte	W96
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_006
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_007
@ 058   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		EOT   , Dn4 
	.byte	W01
	.byte		N11   , Cn4 , v072
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N68   , Ds4 , v072, gtp3
	.byte	W12
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_009
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_010
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_011
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_012
@ 063   ----------------------------------------
	.byte		N92   , Gn4 , v072, gtp3
	.byte	W96
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_006
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_015
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_016
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_017
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_018
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_019
	.byte		EOT   , Cn4 
	.byte	W01
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_020
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_021
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_022
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_023
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_024
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_025
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_026
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_027
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_028
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_029
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_030
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_031
@ 082   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   , Gn4 
	.byte	W01
	.byte		N11   , Dn4 , v072
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_033
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_034
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_035
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_036
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_029
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_030
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_031
@ 090   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   , Gn4 
	.byte	W01
	.byte		N11   , Dn4 , v072
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_041
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_042
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_043
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_044
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_045
@ 096   ----------------------------------------
	.byte		N92   , As3 , v072, gtp3
	.byte	W96
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_047
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_3_045
@ 099   ----------------------------------------
	.byte		N92   , As3 , v072, gtp3
	.byte	W96
@ 100   ----------------------------------------
	.byte		N23   , Cn4 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N44   , Cn4 , v072, gtp3
	.byte	W48
	.byte	GOTO
	 .word	mus_pegasus_fantasy_3_B1
mus_pegasus_fantasy_3_B2:
@ 101   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_pegasus_fantasy_4:
	.byte	KEYSH , mus_pegasus_fantasy_key+0
mus_pegasus_fantasy_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 92*mus_pegasus_fantasy_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Cn1 , v076
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v068
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v052
	.byte		N02   , Fs1 , v032
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
@ 001   ----------------------------------------
mus_pegasus_fantasy_4_001:
	.byte		N02   , Cn1 , v076
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v068
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v052
	.byte		N02   , Fs1 , v032
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 003   ----------------------------------------
mus_pegasus_fantasy_4_003:
	.byte		N02   , Cn1 , v076
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v068
	.byte		N02   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v052
	.byte		N02   , Fs1 , v032
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , En1 , v044
	.byte		N02   , Fs1 , v040
	.byte	W06
	.byte		        En1 , v052
	.byte	W06
	.byte		        En1 , v060
	.byte		N02   , Fs1 , v032
	.byte	W06
	.byte		        En1 , v068
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_003
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_pegasus_fantasy_4_001
	.byte	GOTO
	 .word	mus_pegasus_fantasy_4_B1
mus_pegasus_fantasy_4_B2:
@ 101   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_pegasus_fantasy:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_pegasus_fantasy_pri	@ Priority
	.byte	mus_pegasus_fantasy_rev	@ Reverb.

	.word	mus_pegasus_fantasy_grp

	.word	mus_pegasus_fantasy_1
	.word	mus_pegasus_fantasy_2
	.word	mus_pegasus_fantasy_3
	.word	mus_pegasus_fantasy_4

	.end
