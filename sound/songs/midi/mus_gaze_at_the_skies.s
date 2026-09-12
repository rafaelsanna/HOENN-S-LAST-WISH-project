	.include "MPlayDef.s"

	.equ	mus_gaze_at_the_skies_grp, voicegroup_hlw_rock_metal
	.equ	mus_gaze_at_the_skies_pri, 0
	.equ	mus_gaze_at_the_skies_rev, reverb_set+18
	.equ	mus_gaze_at_the_skies_mvl, 90
	.equ	mus_gaze_at_the_skies_key, 0
	.equ	mus_gaze_at_the_skies_tbs, 1
	.equ	mus_gaze_at_the_skies_exg, 0
	.equ	mus_gaze_at_the_skies_cmp, 1

	.section .rodata
	.global	mus_gaze_at_the_skies
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_gaze_at_the_skies_1:
	.byte	KEYSH , mus_gaze_at_the_skies_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 120*mus_gaze_at_the_skies_tbs/2
	.byte		VOICE , 31
	.byte		VOL   , 92*mus_gaze_at_the_skies_mvl/mxv
	.byte		PAN   , c_v-18
	.byte	W96
@ 002   ----------------------------------------
mus_gaze_at_the_skies_1_002:
	.byte		N12   , Dn2 , v072
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
mus_gaze_at_the_skies_1_003:
	.byte		N12   , Dn2 , v072
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_gaze_at_the_skies_1_004:
	.byte		N12   , Dn2 , v072
	.byte		N12   , An3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_002
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_003
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_002
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_003
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_002
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_003
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_003
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_002
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_003
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 026   ----------------------------------------
mus_gaze_at_the_skies_1_026:
	.byte		N12   , Dn2 , v072
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , An2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , An2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte	PEND
@ 027   ----------------------------------------
mus_gaze_at_the_skies_1_027:
	.byte		N12   , Cn2 , v072
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , Cn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_gaze_at_the_skies_1_028:
	.byte		N12   , Dn2 , v072
	.byte		N12   , An3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_026
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_027
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_028
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_026
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_027
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_028
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_026
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_027
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_028
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_002
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_003
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_002
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_003
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_002
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_003
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_004
@ 050   ----------------------------------------
mus_gaze_at_the_skies_1_050:
	.byte		N12   , Dn2 , v072
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , An2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte	PEND
@ 051   ----------------------------------------
mus_gaze_at_the_skies_1_051:
	.byte		N12   , Cn2 , v072
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Gn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Gn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte	PEND
@ 052   ----------------------------------------
mus_gaze_at_the_skies_1_052:
	.byte		N12   , Fn2 , v072
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Fn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N12   , Fn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_050
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_051
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_052
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_050
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_051
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_052
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_050
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_051
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_052
@ 062   ----------------------------------------
mus_gaze_at_the_skies_1_062:
	.byte		N12   , Dn2 , v072
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , An2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , An2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Fn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte	PEND
@ 063   ----------------------------------------
mus_gaze_at_the_skies_1_063:
	.byte		N12   , Fn2 , v072
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Fn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N12   , Fn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , En2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
mus_gaze_at_the_skies_1_064:
	.byte		N06   , An1 , v072
	.byte		N06   , En2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		N12   
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , En2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_062
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_063
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_064
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_062
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_063
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_064
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_062
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_063
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_064
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_050
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_051
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_052
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_050
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_051
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_052
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_050
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_051
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_052
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_050
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_051
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_052
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_062
@ 087   ----------------------------------------
mus_gaze_at_the_skies_1_087:
	.byte		N12   , Fn2 , v072
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Fn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N12   , Fn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , Cn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 088   ----------------------------------------
mus_gaze_at_the_skies_1_088:
	.byte		N06   , Cn2 , v072
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , An2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , An2 
	.byte	W06
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte	W12
	.byte	PEND
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_062
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_087
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_088
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_062
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_087
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_088
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_062
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_087
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_088
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_062
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_087
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_088
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_062
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_087
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_1_088
@ 104   ----------------------------------------
	.byte		N96   , Dn2 , v072
	.byte		N96   , Dn3 
	.byte	W96
@ 105   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_gaze_at_the_skies_2:
	.byte	KEYSH , mus_gaze_at_the_skies_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 64
	.byte		VOL   , 66*mus_gaze_at_the_skies_mvl/mxv
	.byte		PAN   , c_v+18
	.byte		N96   , Dn3 , v048
	.byte		N96   , Dn4 
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_gaze_at_the_skies_2_004:
	.byte		N36   , Dn3 , v052
	.byte	W72
	.byte		        Cn3 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte	W48
	.byte		        Fn3 
	.byte	W48
@ 006   ----------------------------------------
	.byte	W24
	.byte		N36   
	.byte	W72
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_004
@ 008   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn3 , v052
	.byte	W48
@ 009   ----------------------------------------
	.byte	W24
	.byte		N36   
	.byte	W72
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_004
@ 011   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn3 , v052
	.byte	W48
@ 012   ----------------------------------------
	.byte	W24
	.byte		N36   
	.byte	W72
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_004
@ 014   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn3 , v052
	.byte	W48
@ 015   ----------------------------------------
	.byte	W24
	.byte		N36   
	.byte	W72
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_004
@ 017   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn3 , v052
	.byte	W48
@ 018   ----------------------------------------
	.byte	W24
	.byte		N36   
	.byte	W72
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_004
@ 020   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn3 , v052
	.byte	W48
@ 021   ----------------------------------------
	.byte	W24
	.byte		N36   
	.byte	W72
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_004
@ 023   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn3 , v052
	.byte	W48
@ 024   ----------------------------------------
	.byte	W24
	.byte		N36   
	.byte	W72
@ 025   ----------------------------------------
mus_gaze_at_the_skies_2_025:
	.byte		N72   , An2 , v052
	.byte	W72
	.byte		        Gn2 
	.byte	W24
	.byte	PEND
@ 026   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn3 
	.byte	W48
@ 027   ----------------------------------------
	.byte	W24
	.byte		        En3 
	.byte	W72
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_025
@ 029   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn3 , v052
	.byte	W48
@ 030   ----------------------------------------
	.byte	W24
	.byte		        En3 
	.byte	W72
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_025
@ 032   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn3 , v052
	.byte	W48
@ 033   ----------------------------------------
	.byte	W24
	.byte		        En3 
	.byte	W72
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_025
@ 035   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn3 , v052
	.byte	W48
@ 036   ----------------------------------------
	.byte	W24
	.byte		        En3 
	.byte	W72
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_004
@ 038   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn3 , v052
	.byte	W48
@ 039   ----------------------------------------
	.byte	W24
	.byte		N36   
	.byte	W72
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_004
@ 041   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn3 , v052
	.byte	W48
@ 042   ----------------------------------------
	.byte	W24
	.byte		N36   
	.byte	W72
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_004
@ 044   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn3 , v052
	.byte	W48
@ 045   ----------------------------------------
	.byte	W24
	.byte		N36   
	.byte	W72
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_004
@ 047   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn3 , v052
	.byte	W48
@ 048   ----------------------------------------
	.byte	W24
	.byte		N36   
	.byte	W72
@ 049   ----------------------------------------
mus_gaze_at_the_skies_2_049:
	.byte		N48   , An2 , v052
	.byte	W72
	.byte		        Gn2 
	.byte	W24
	.byte	PEND
@ 050   ----------------------------------------
	.byte	W48
	.byte		        Dn3 
	.byte	W48
@ 051   ----------------------------------------
	.byte	W24
	.byte		        Cn3 
	.byte	W72
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_049
@ 053   ----------------------------------------
	.byte	W48
	.byte		N48   , Dn3 , v052
	.byte	W48
@ 054   ----------------------------------------
	.byte	W24
	.byte		        Cn3 
	.byte	W72
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_049
@ 056   ----------------------------------------
	.byte	W48
	.byte		N48   , Dn3 , v052
	.byte	W48
@ 057   ----------------------------------------
	.byte	W24
	.byte		        Cn3 
	.byte	W72
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_049
@ 059   ----------------------------------------
	.byte	W48
	.byte		N48   , Dn3 , v052
	.byte	W48
@ 060   ----------------------------------------
	.byte	W24
	.byte		        Cn3 
	.byte	W72
@ 061   ----------------------------------------
mus_gaze_at_the_skies_2_061:
	.byte		N72   , An2 , v052
	.byte	W72
	.byte		        Cn3 
	.byte	W24
	.byte	PEND
@ 062   ----------------------------------------
mus_gaze_at_the_skies_2_062:
	.byte	W48
	.byte		N36   , Bn2 , v052
	.byte	W36
	.byte		        En3 
	.byte	W12
	.byte	PEND
@ 063   ----------------------------------------
mus_gaze_at_the_skies_2_063:
	.byte	W24
	.byte		N36   , Bn2 , v052
	.byte	W36
	.byte		        En3 
	.byte	W36
	.byte	PEND
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_061
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_062
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_063
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_061
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_062
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_063
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_061
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_062
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_063
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_049
@ 074   ----------------------------------------
	.byte	W48
	.byte		N48   , Dn3 , v052
	.byte	W48
@ 075   ----------------------------------------
	.byte	W24
	.byte		        Cn3 
	.byte	W72
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_049
@ 077   ----------------------------------------
	.byte	W48
	.byte		N48   , Dn3 , v052
	.byte	W48
@ 078   ----------------------------------------
	.byte	W24
	.byte		        Cn3 
	.byte	W72
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_049
@ 080   ----------------------------------------
	.byte	W48
	.byte		N48   , Dn3 , v052
	.byte	W48
@ 081   ----------------------------------------
	.byte	W24
	.byte		        Cn3 
	.byte	W72
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_049
@ 083   ----------------------------------------
	.byte	W48
	.byte		N48   , Dn3 , v052
	.byte	W48
@ 084   ----------------------------------------
	.byte	W24
	.byte		        Cn3 
	.byte	W72
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
	 .word	mus_gaze_at_the_skies_2_061
@ 092   ----------------------------------------
	.byte	W48
	.byte		N60   , Gn2 , v052
	.byte	W48
@ 093   ----------------------------------------
	.byte	W24
	.byte		        An2 
	.byte	W72
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_061
@ 095   ----------------------------------------
	.byte	W48
	.byte		N60   , Gn2 , v052
	.byte	W48
@ 096   ----------------------------------------
	.byte	W24
	.byte		        An2 
	.byte	W72
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_061
@ 098   ----------------------------------------
	.byte	W48
	.byte		N60   , Gn2 , v052
	.byte	W48
@ 099   ----------------------------------------
	.byte	W24
	.byte		        An2 
	.byte	W72
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_2_061
@ 101   ----------------------------------------
	.byte	W48
	.byte		N60   , Gn2 , v052
	.byte	W48
@ 102   ----------------------------------------
	.byte	W24
	.byte		        An2 
	.byte	W72
@ 103   ----------------------------------------
	.byte		N96   , Dn3 
	.byte	W96
@ 104   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_gaze_at_the_skies_3:
	.byte	KEYSH , mus_gaze_at_the_skies_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 80*mus_gaze_at_the_skies_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_gaze_at_the_skies_3_004:
	.byte		N12   , Dn1 , v068
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
	.byte		        Cn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_gaze_at_the_skies_3_005:
	.byte		N12   , Cn1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_gaze_at_the_skies_3_006:
	.byte		N12   , Fn1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_004
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_005
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_006
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_006
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_004
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_005
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_006
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_006
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_004
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_005
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_006
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_004
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_005
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_006
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_004
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_005
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_006
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_006
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_004
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_005
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_006
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_004
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_005
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_006
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_004
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_005
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_006
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_006
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_004
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_005
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_006
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_004
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_005
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_006
@ 049   ----------------------------------------
mus_gaze_at_the_skies_3_049:
	.byte		N12   , Dn1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 050   ----------------------------------------
mus_gaze_at_the_skies_3_050:
	.byte		N12   , Cn1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
mus_gaze_at_the_skies_3_051:
	.byte		N12   , Fn1 , v068
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte	PEND
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_049
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_050
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_051
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_049
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_050
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_051
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_049
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_050
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_051
@ 061   ----------------------------------------
mus_gaze_at_the_skies_3_061:
	.byte		N12   , Dn1 , v068
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
	.byte		        Fn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
mus_gaze_at_the_skies_3_062:
	.byte		N12   , Fn1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte	PEND
@ 063   ----------------------------------------
mus_gaze_at_the_skies_3_063:
	.byte		N12   , An0 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En1 
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
	.byte	PEND
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_061
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_062
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_063
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_061
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_062
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_063
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_061
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_062
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_063
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_049
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_050
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_051
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_049
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_050
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_051
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_049
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_050
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_051
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_049
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_050
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_051
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
	 .word	mus_gaze_at_the_skies_3_061
@ 092   ----------------------------------------
mus_gaze_at_the_skies_3_092:
	.byte		N12   , Fn1 , v068
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
@ 093   ----------------------------------------
mus_gaze_at_the_skies_3_093:
	.byte		N12   , Cn1 , v068
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_061
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_092
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_093
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_061
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_092
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_093
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_061
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_092
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_3_093
@ 103   ----------------------------------------
	.byte		N96   , Dn1 , v068
	.byte	W96
@ 104   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_gaze_at_the_skies_4:
	.byte	KEYSH , mus_gaze_at_the_skies_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 96*mus_gaze_at_the_skies_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W96
@ 005   ----------------------------------------
	.byte	W36
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
@ 007   ----------------------------------------
mus_gaze_at_the_skies_4_007:
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
mus_gaze_at_the_skies_4_008:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_gaze_at_the_skies_4_009:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 012   ----------------------------------------
mus_gaze_at_the_skies_4_012:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_009
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_012
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_012
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_009
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_009
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_009
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_009
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_009
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_012
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_009
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_012
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_012
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_012
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_012
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_012
@ 061   ----------------------------------------
mus_gaze_at_the_skies_4_061:
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
mus_gaze_at_the_skies_4_062:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte	PEND
@ 063   ----------------------------------------
mus_gaze_at_the_skies_4_063:
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_061
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_062
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_063
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_061
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_062
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_063
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_061
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_062
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_063
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_012
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_012
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_012
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_012
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
	 .word	mus_gaze_at_the_skies_4_007
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_012
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_012
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_012
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_007
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_008
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_gaze_at_the_skies_4_012
@ 103   ----------------------------------------
	.byte		N02   , Fs1 , v064
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

mus_gaze_at_the_skies:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_gaze_at_the_skies_pri	@ Priority
	.byte	mus_gaze_at_the_skies_rev	@ Reverb.

	.word	mus_gaze_at_the_skies_grp

	.word	mus_gaze_at_the_skies_1
	.word	mus_gaze_at_the_skies_2
	.word	mus_gaze_at_the_skies_3
	.word	mus_gaze_at_the_skies_4

	.end
