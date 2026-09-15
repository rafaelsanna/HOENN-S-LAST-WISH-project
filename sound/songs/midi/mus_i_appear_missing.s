	.include "MPlayDef.s"

	.equ	mus_i_appear_missing_grp, voicegroup_hlw_rock_metal
	.equ	mus_i_appear_missing_pri, 0
	.equ	mus_i_appear_missing_rev, reverb_set+18
	.equ	mus_i_appear_missing_mvl, 90
	.equ	mus_i_appear_missing_key, 0
	.equ	mus_i_appear_missing_tbs, 1
	.equ	mus_i_appear_missing_exg, 0
	.equ	mus_i_appear_missing_cmp, 1

	.section .rodata
	.global	mus_i_appear_missing
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_i_appear_missing_1:
	.byte	KEYSH , mus_i_appear_missing_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 88*mus_i_appear_missing_tbs/2
	.byte		VOICE , 1
	.byte		VOL   , 92*mus_i_appear_missing_mvl/mxv
	.byte		PAN   , c_v-10
	.byte		N12   , Cs4 , v072
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
@ 002   ----------------------------------------
mus_i_appear_missing_1_002:
	.byte		N12   , Bn3 , v072
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
mus_i_appear_missing_1_003:
	.byte		N12   , Ds3 , v072
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
mus_i_appear_missing_1_004:
	.byte		N12   , En3 , v072
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , En4 
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_i_appear_missing_1_005:
	.byte		N12   , Cs4 , v072
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_003
@ 008   ----------------------------------------
mus_i_appear_missing_1_008:
	.byte		N18   , Bn3 , v072
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N24   , An3 
	.byte	W24
	.byte		N18   , Gs3 
	.byte	W18
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_008
@ 017   ----------------------------------------
	.byte	W72
@ 018   ----------------------------------------
	.byte	W72
@ 019   ----------------------------------------
	.byte	W72
@ 020   ----------------------------------------
	.byte	W72
@ 021   ----------------------------------------
	.byte	W72
@ 022   ----------------------------------------
	.byte	W72
@ 023   ----------------------------------------
	.byte	W72
@ 024   ----------------------------------------
	.byte	W72
@ 025   ----------------------------------------
	.byte	W72
@ 026   ----------------------------------------
	.byte	W72
@ 027   ----------------------------------------
	.byte	W72
@ 028   ----------------------------------------
	.byte	W72
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_005
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_003
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_008
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_005
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_008
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_005
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_003
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_004
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_005
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_1_008
@ 053   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_i_appear_missing_2:
	.byte	KEYSH , mus_i_appear_missing_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 104*mus_i_appear_missing_mvl/mxv
	.byte		PAN   , c_v+12
	.byte	W72
@ 001   ----------------------------------------
	.byte	W72
@ 002   ----------------------------------------
	.byte	W72
@ 003   ----------------------------------------
	.byte	W72
@ 004   ----------------------------------------
	.byte	W72
@ 005   ----------------------------------------
	.byte	W72
@ 006   ----------------------------------------
	.byte	W72
@ 007   ----------------------------------------
	.byte	W72
@ 008   ----------------------------------------
	.byte	W72
@ 009   ----------------------------------------
	.byte	W72
@ 010   ----------------------------------------
	.byte	W72
@ 011   ----------------------------------------
	.byte	W72
@ 012   ----------------------------------------
	.byte	W72
@ 013   ----------------------------------------
	.byte	W72
@ 014   ----------------------------------------
	.byte	W72
@ 015   ----------------------------------------
	.byte	W72
@ 016   ----------------------------------------
mus_i_appear_missing_2_016:
	.byte		N12   , An1 , v092
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , An1 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , An1 
	.byte	W06
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_016
@ 018   ----------------------------------------
mus_i_appear_missing_2_018:
	.byte		N12   , An1 , v092
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , An1 
	.byte	W06
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N06   , An1 
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
mus_i_appear_missing_2_019:
	.byte		N12   , Fs3 , v092
	.byte	W12
	.byte		N06   , An1 
	.byte	W06
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , An1 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , An1 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
mus_i_appear_missing_2_020:
	.byte	W12
	.byte		N06   , Cs2 , v092
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
mus_i_appear_missing_2_021:
	.byte		N12   , Ds2 , v092
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N24   , En3 
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_016
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_016
@ 028   ----------------------------------------
	.byte	W72
@ 029   ----------------------------------------
	.byte	W72
@ 030   ----------------------------------------
	.byte	W72
@ 031   ----------------------------------------
	.byte	W72
@ 032   ----------------------------------------
	.byte	W72
@ 033   ----------------------------------------
	.byte	W72
@ 034   ----------------------------------------
	.byte	W72
@ 035   ----------------------------------------
	.byte	W72
@ 036   ----------------------------------------
	.byte	W72
@ 037   ----------------------------------------
	.byte	W72
@ 038   ----------------------------------------
	.byte	W72
@ 039   ----------------------------------------
	.byte	W72
@ 040   ----------------------------------------
	.byte	W72
@ 041   ----------------------------------------
	.byte	W72
@ 042   ----------------------------------------
	.byte	W72
@ 043   ----------------------------------------
	.byte	W72
@ 044   ----------------------------------------
	.byte	W72
@ 045   ----------------------------------------
	.byte	W72
@ 046   ----------------------------------------
	.byte	W72
@ 047   ----------------------------------------
	.byte	W72
@ 048   ----------------------------------------
	.byte	W72
@ 049   ----------------------------------------
	.byte	W72
@ 050   ----------------------------------------
	.byte	W72
@ 051   ----------------------------------------
	.byte	W72
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_016
@ 054   ----------------------------------------
mus_i_appear_missing_2_054:
	.byte		N24   , An1 , v092
	.byte	W30
	.byte		N42   , Cs3 
	.byte	W42
	.byte	PEND
@ 055   ----------------------------------------
mus_i_appear_missing_2_055:
	.byte		N24   , Fs2 , v092
	.byte	W30
	.byte		N42   , Cs3 
	.byte	W42
	.byte	PEND
@ 056   ----------------------------------------
mus_i_appear_missing_2_056:
	.byte		N24   , En2 , v092
	.byte	W30
	.byte		N42   , Cs3 
	.byte	W42
	.byte	PEND
@ 057   ----------------------------------------
mus_i_appear_missing_2_057:
	.byte		N12   , Cs2 , v092
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Cs2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N18   , Bn1 
	.byte		N18   , Bn2 
	.byte	W18
	.byte	PEND
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_054
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_055
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_056
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_057
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_018
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_019
@ 064   ----------------------------------------
mus_i_appear_missing_2_064:
	.byte	W12
	.byte		N06   , Cs2 , v092
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte	PEND
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_021
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_018
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_019
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_064
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_021
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_016
@ 071   ----------------------------------------
	.byte		N12   , Cs2 , v092
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_021
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_016
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_016
@ 075   ----------------------------------------
mus_i_appear_missing_2_075:
	.byte		N06   , Cs2 , v092
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	PEND
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_075
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_075
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_075
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_075
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_075
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_075
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_2_075
@ 083   ----------------------------------------
	.byte		N12   , Cs2 , v092
	.byte		N12   , Cs3 
	.byte	W12
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_i_appear_missing_3:
	.byte	KEYSH , mus_i_appear_missing_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 92*mus_i_appear_missing_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W72
@ 001   ----------------------------------------
	.byte	W72
@ 002   ----------------------------------------
	.byte	W72
@ 003   ----------------------------------------
	.byte	W72
@ 004   ----------------------------------------
	.byte	W72
@ 005   ----------------------------------------
	.byte	W72
@ 006   ----------------------------------------
	.byte	W72
@ 007   ----------------------------------------
	.byte	W72
@ 008   ----------------------------------------
	.byte	W72
@ 009   ----------------------------------------
	.byte	W72
@ 010   ----------------------------------------
	.byte	W72
@ 011   ----------------------------------------
	.byte	W72
@ 012   ----------------------------------------
	.byte	W72
@ 013   ----------------------------------------
	.byte	W72
@ 014   ----------------------------------------
	.byte	W72
@ 015   ----------------------------------------
	.byte	W72
@ 016   ----------------------------------------
mus_i_appear_missing_3_016:
	.byte		N12   , An0 , v084
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , An0 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , An0 
	.byte	W06
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_016
@ 018   ----------------------------------------
mus_i_appear_missing_3_018:
	.byte		N12   , An0 , v084
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , An0 
	.byte	W06
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , An0 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
mus_i_appear_missing_3_019:
	.byte		N12   , Fs1 , v084
	.byte	W12
	.byte		N06   , An0 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		N06   , An0 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N06   , An0 
	.byte	W06
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
mus_i_appear_missing_3_020:
	.byte	W12
	.byte		N06   , Cs1 , v084
	.byte	W06
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
mus_i_appear_missing_3_021:
	.byte		N12   , Ds1 , v084
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , As1 
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N24   , En2 
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_016
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_016
@ 028   ----------------------------------------
	.byte	W72
@ 029   ----------------------------------------
	.byte	W72
@ 030   ----------------------------------------
	.byte	W72
@ 031   ----------------------------------------
	.byte	W72
@ 032   ----------------------------------------
	.byte	W72
@ 033   ----------------------------------------
	.byte	W72
@ 034   ----------------------------------------
	.byte	W72
@ 035   ----------------------------------------
	.byte	W72
@ 036   ----------------------------------------
	.byte	W72
@ 037   ----------------------------------------
	.byte	W72
@ 038   ----------------------------------------
	.byte	W72
@ 039   ----------------------------------------
	.byte	W72
@ 040   ----------------------------------------
	.byte	W72
@ 041   ----------------------------------------
	.byte	W72
@ 042   ----------------------------------------
	.byte	W72
@ 043   ----------------------------------------
	.byte	W72
@ 044   ----------------------------------------
	.byte	W72
@ 045   ----------------------------------------
	.byte	W72
@ 046   ----------------------------------------
	.byte	W72
@ 047   ----------------------------------------
	.byte	W72
@ 048   ----------------------------------------
	.byte	W72
@ 049   ----------------------------------------
	.byte	W72
@ 050   ----------------------------------------
	.byte	W72
@ 051   ----------------------------------------
	.byte	W72
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_016
@ 054   ----------------------------------------
mus_i_appear_missing_3_054:
	.byte		N24   , An0 , v084
	.byte	W30
	.byte		N42   , Cs2 
	.byte	W42
	.byte	PEND
@ 055   ----------------------------------------
mus_i_appear_missing_3_055:
	.byte		N24   , Fs1 , v084
	.byte	W30
	.byte		N42   , Cs2 
	.byte	W42
	.byte	PEND
@ 056   ----------------------------------------
mus_i_appear_missing_3_056:
	.byte		N24   , En1 , v084
	.byte	W30
	.byte		N42   , Cs2 
	.byte	W42
	.byte	PEND
@ 057   ----------------------------------------
mus_i_appear_missing_3_057:
	.byte		N12   , Cs1 , v084
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Bn0 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N18   , Bn0 
	.byte	W18
	.byte	PEND
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_054
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_055
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_056
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_057
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_018
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_019
@ 064   ----------------------------------------
mus_i_appear_missing_3_064:
	.byte	W12
	.byte		N06   , Cs1 , v084
	.byte	W06
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte	PEND
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_021
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_018
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_019
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_064
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_021
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_016
@ 071   ----------------------------------------
	.byte		N12   , Cs1 , v084
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_021
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_016
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_016
@ 075   ----------------------------------------
mus_i_appear_missing_3_075:
	.byte		N06   , Cs1 , v084
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	PEND
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_075
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_075
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_075
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_075
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_075
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_075
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_3_075
@ 083   ----------------------------------------
	.byte		N12   , Cs1 , v084
	.byte	W12
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_i_appear_missing_4:
	.byte	KEYSH , mus_i_appear_missing_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 108*mus_i_appear_missing_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W72
@ 001   ----------------------------------------
	.byte	W72
@ 002   ----------------------------------------
	.byte	W72
@ 003   ----------------------------------------
	.byte	W72
@ 004   ----------------------------------------
	.byte	W72
@ 005   ----------------------------------------
	.byte	W72
@ 006   ----------------------------------------
	.byte	W72
@ 007   ----------------------------------------
	.byte	W72
@ 008   ----------------------------------------
	.byte	W72
@ 009   ----------------------------------------
	.byte	W72
@ 010   ----------------------------------------
	.byte	W72
@ 011   ----------------------------------------
	.byte	W72
@ 012   ----------------------------------------
	.byte	W72
@ 013   ----------------------------------------
	.byte	W72
@ 014   ----------------------------------------
	.byte	W72
@ 015   ----------------------------------------
	.byte	W72
@ 016   ----------------------------------------
mus_i_appear_missing_4_016:
	.byte		N02   , Cn1 , v092
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 028   ----------------------------------------
mus_i_appear_missing_4_028:
	.byte		N02   , Cn1 , v092
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_028
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_i_appear_missing_4_016
@ 083   ----------------------------------------
	.byte		N02   , Cn1 , v092
	.byte		N02   , Fs1 , v060
	.byte	W72
@ 084   ----------------------------------------
	.byte		        Cn1 , v092
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

mus_i_appear_missing:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_i_appear_missing_pri	@ Priority
	.byte	mus_i_appear_missing_rev	@ Reverb.

	.word	mus_i_appear_missing_grp

	.word	mus_i_appear_missing_1
	.word	mus_i_appear_missing_2
	.word	mus_i_appear_missing_3
	.word	mus_i_appear_missing_4

	.end
