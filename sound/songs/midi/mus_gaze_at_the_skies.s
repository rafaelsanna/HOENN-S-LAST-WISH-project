	.include "MPlayDef.s"

	.equ	mus_gaze_at_the_skies_grp, voicegroup_gaze_at_the_skies
	.equ	mus_gaze_at_the_skies_pri, 0
	.equ	mus_gaze_at_the_skies_rev, reverb_set+50
	.equ	mus_gaze_at_the_skies_mvl, 100
	.equ	mus_gaze_at_the_skies_key, 0
	.equ	mus_gaze_at_the_skies_tbs, 1
	.equ	mus_gaze_at_the_skies_exg, 1
	.equ	mus_gaze_at_the_skies_cmp, 1

	.section .rodata
	.global	mus_gaze_at_the_skies
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_gaze_at_the_skies_1:
	.byte	KEYSH , mus_gaze_at_the_skies_key+0
mus_gaze_at_the_skies_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 120*mus_gaze_at_the_skies_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_gaze_at_the_skies_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_gaze_at_the_skies_1_004:
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_gaze_at_the_skies_1_005:
	.byte		N11   , Cn1 , v100
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_gaze_at_the_skies_1_006:
	.byte		N11   , Fn1 , v100
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_005
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_006
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_006
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_005
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_006
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_006
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_005
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_006
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_005
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_006
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_005
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_006
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_006
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_005
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_006
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_005
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_006
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_005
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_006
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_006
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_005
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_006
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_005
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_006
@ 049   ----------------------------------------
mus_gaze_at_the_skies_1_049:
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 050   ----------------------------------------
mus_gaze_at_the_skies_1_050:
	.byte		N11   , Cn1 , v100
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
mus_gaze_at_the_skies_1_051:
	.byte		N11   , Fn1 , v100
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte	PEND
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_049
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_050
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_051
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_049
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_050
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_051
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_049
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_050
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_051
@ 061   ----------------------------------------
mus_gaze_at_the_skies_1_061:
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
mus_gaze_at_the_skies_1_062:
	.byte		N11   , Fn1 , v100
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte	PEND
@ 063   ----------------------------------------
mus_gaze_at_the_skies_1_063:
	.byte		N11   , An0 , v100
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_061
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_062
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_063
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_061
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_062
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_063
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_061
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_062
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_063
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_049
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_050
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_051
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_049
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_050
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_051
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_049
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_050
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_051
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_049
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_050
@ 084   ----------------------------------------
	.byte		N11   , Fn1 , v100
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   , Cn1 
	.byte	W12
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
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_061
@ 092   ----------------------------------------
mus_gaze_at_the_skies_1_092:
	.byte		N11   , Fn1 , v100
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 093   ----------------------------------------
mus_gaze_at_the_skies_1_093:
	.byte		N11   , Cn1 , v100
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_061
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_092
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_093
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_061
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_092
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_093
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_061
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_092
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_093
@ 103   ----------------------------------------
	.byte		N96   , Dn1 , v100
	.byte	W96
	.byte	GOTO
	 .word	mus_gaze_at_the_skies_1_B1
mus_gaze_at_the_skies_1_B2:
@ 104   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_gaze_at_the_skies_2:
	.byte	KEYSH , mus_gaze_at_the_skies_key+0
mus_gaze_at_the_skies_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 46*mus_gaze_at_the_skies_mvl/mxv
	.byte		PAN   , c_v-12
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
mus_gaze_at_the_skies_2_003:
	.byte		N11   , Dn2 , v052
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
mus_gaze_at_the_skies_2_004:
	.byte		N11   , Dn2 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_gaze_at_the_skies_2_005:
	.byte		N11   , Dn2 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_003
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_004
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_005
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_003
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_004
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_005
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_003
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_004
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_005
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_003
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_004
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_005
@ 024   ----------------------------------------
mus_gaze_at_the_skies_2_024:
	.byte		N11   , Dn2 , v052
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
mus_gaze_at_the_skies_2_025:
	.byte		N11   , Cn2 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_005
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_024
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_025
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_024
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_025
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_005
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_024
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_025
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_005
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_003
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_004
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_005
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_003
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_004
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_005
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_003
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_004
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_005
@ 048   ----------------------------------------
mus_gaze_at_the_skies_2_048:
	.byte		N11   , Dn2 , v052
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 049   ----------------------------------------
mus_gaze_at_the_skies_2_049:
	.byte		N11   , Cn2 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 050   ----------------------------------------
mus_gaze_at_the_skies_2_050:
	.byte		N11   , Fn2 , v052
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_048
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_049
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_050
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_048
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_049
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_050
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_048
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_049
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_050
@ 060   ----------------------------------------
mus_gaze_at_the_skies_2_060:
	.byte		N11   , Dn2 , v052
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 061   ----------------------------------------
mus_gaze_at_the_skies_2_061:
	.byte		N11   , Fn2 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
mus_gaze_at_the_skies_2_062:
	.byte		N05   , An2 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_060
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_061
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_062
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_060
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_061
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_062
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_060
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_061
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_062
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_048
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_049
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_050
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_048
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_049
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_050
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_048
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_049
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_050
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_048
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_049
@ 083   ----------------------------------------
	.byte		N11   , Fn2 , v052
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
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
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_060
@ 091   ----------------------------------------
mus_gaze_at_the_skies_2_091:
	.byte		N11   , Fn2 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 092   ----------------------------------------
mus_gaze_at_the_skies_2_092:
	.byte		N05   , Cn2 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , An2 
	.byte	W12
	.byte	PEND
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_060
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_091
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_092
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_060
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_091
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_092
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_060
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_091
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_092
@ 102   ----------------------------------------
	.byte		N96   , Dn2 , v052
	.byte	W96
	.byte	GOTO
	 .word	mus_gaze_at_the_skies_2_B1
mus_gaze_at_the_skies_2_B2:
@ 103   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_gaze_at_the_skies_3:
	.byte	KEYSH , mus_gaze_at_the_skies_key+0
mus_gaze_at_the_skies_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_gaze_at_the_skies_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N11   , Dn3 , v092
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 001   ----------------------------------------
mus_gaze_at_the_skies_3_001:
	.byte		N11   , Cn3 , v092
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_gaze_at_the_skies_3_002:
	.byte		N11   , An3 , v092
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_gaze_at_the_skies_3_003:
	.byte		N11   , Dn3 , v092
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_002
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_003
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_002
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_003
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_002
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_003
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_003
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_002
@ 024   ----------------------------------------
mus_gaze_at_the_skies_3_024:
	.byte		N11   , An2 , v092
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
mus_gaze_at_the_skies_3_025:
	.byte		N11   , Gn2 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_gaze_at_the_skies_3_026:
	.byte		N11   , An3 , v092
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_024
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_025
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_026
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_024
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_025
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_026
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_024
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_025
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_026
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_003
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_002
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_003
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_002
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_003
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_001
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_002
@ 048   ----------------------------------------
mus_gaze_at_the_skies_3_048:
	.byte		N11   , An2 , v092
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 049   ----------------------------------------
mus_gaze_at_the_skies_3_049:
	.byte		N11   , Gn2 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 050   ----------------------------------------
mus_gaze_at_the_skies_3_050:
	.byte		N11   , Cn3 , v092
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_048
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_049
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_050
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_048
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_049
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_050
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_048
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_049
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_050
@ 060   ----------------------------------------
mus_gaze_at_the_skies_3_060:
	.byte		N11   , An2 , v092
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 061   ----------------------------------------
mus_gaze_at_the_skies_3_061:
	.byte		N11   , Cn3 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
mus_gaze_at_the_skies_3_062:
	.byte		N05   , En3 , v092
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_060
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_061
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_062
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_060
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_061
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_062
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_060
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_061
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_062
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_048
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_049
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_050
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_048
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_049
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_050
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_048
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_049
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_050
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_048
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_049
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_050
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_060
@ 085   ----------------------------------------
mus_gaze_at_the_skies_3_085:
	.byte		N11   , Cn3 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 086   ----------------------------------------
mus_gaze_at_the_skies_3_086:
	.byte		N05   , Gn2 , v092
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , En3 
	.byte	W12
	.byte	PEND
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_060
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_085
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_086
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_060
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_085
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_086
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_060
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_085
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_086
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_060
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_085
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_086
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_060
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_085
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_086
@ 102   ----------------------------------------
	.byte		N96   , Dn3 , v092
	.byte	W96
	.byte	GOTO
	 .word	mus_gaze_at_the_skies_3_B1
mus_gaze_at_the_skies_3_B2:
@ 103   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_gaze_at_the_skies:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_gaze_at_the_skies_pri	@ Priority
	.byte	mus_gaze_at_the_skies_rev	@ Reverb.

	.word	mus_gaze_at_the_skies_grp

	.word	mus_gaze_at_the_skies_1
	.word	mus_gaze_at_the_skies_2
	.word	mus_gaze_at_the_skies_3

	.end
