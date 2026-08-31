	.include "MPlayDef.s"

	.equ	mus_crawling_grp, voicegroup_hlw_rock_metal
	.equ	mus_crawling_pri, 0
	.equ	mus_crawling_rev, reverb_set+32
	.equ	mus_crawling_mvl, 98
	.equ	mus_crawling_key, 0
	.equ	mus_crawling_tbs, 1
	.equ	mus_crawling_exg, 1
	.equ	mus_crawling_cmp, 1

	.section .rodata
	.global	mus_crawling
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_crawling_1:
	.byte	KEYSH , mus_crawling_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 95*mus_crawling_tbs/2
	.byte		VOICE , 29
	.byte		VOL   , 98*mus_crawling_mvl/mxv
	.byte		N03   , Cs3 , v084
	.byte		N03   , Gs3 
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Cs3 
	.byte		N03   , Gs3 
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Cs3 
	.byte		N03   , Gs3 
	.byte		N03   , Cs4 
	.byte	W06
	.byte		        Cs3 
	.byte		N03   , Gs3 
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Cs3 
	.byte		N03   , Gs3 
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Cs3 
	.byte		N03   , Gs3 
	.byte		N03   , Cs4 
	.byte	W03
	.byte		N96   , Cs1 
	.byte		N96   , Gs1 
	.byte		N96   , Cs2 
	.byte	W72
	.byte	W03
@ 002   ----------------------------------------
mus_crawling_1_002:
	.byte	W21
	.byte		N96   , An1 , v084
	.byte		N96   , En2 
	.byte		N96   , An2 
	.byte	W72
	.byte	W03
	.byte	PEND
@ 003   ----------------------------------------
mus_crawling_1_003:
	.byte	W21
	.byte		N96   , En1 , v084
	.byte		N96   , Bn1 
	.byte		N96   , En2 
	.byte	W72
	.byte	W03
	.byte	PEND
@ 004   ----------------------------------------
mus_crawling_1_004:
	.byte	W21
	.byte		N48   , Bn1 , v084
	.byte		N48   , Fs2 
	.byte		N48   , Bn2 
	.byte	W48
	.byte		        Gs1 
	.byte		N48   , Ds2 
	.byte		N48   , Gs2 
	.byte	W24
	.byte	W03
	.byte	PEND
@ 005   ----------------------------------------
mus_crawling_1_005:
	.byte	W21
	.byte		N96   , Cs1 , v084
	.byte		N96   , Gs1 
	.byte		N96   , Cs2 
	.byte	W72
	.byte	W03
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_004
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
mus_crawling_1_029:
	.byte		N03   , Cs3 , v084
	.byte		N03   , Gs3 
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Cs3 
	.byte		N03   , Gs3 
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Cs3 
	.byte		N03   , Gs3 
	.byte		N03   , Cs4 
	.byte	W06
	.byte		        Cs3 
	.byte		N03   , Gs3 
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Cs3 
	.byte		N03   , Gs3 
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Cs3 
	.byte		N03   , Gs3 
	.byte		N03   , Cs4 
	.byte	W03
	.byte		N96   , Cs1 
	.byte		N96   , Gs1 
	.byte		N96   , Cs2 
	.byte	W72
	.byte	W03
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_005
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_003
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_004
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
	.byte	PATT
	 .word	mus_crawling_1_029
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_003
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_004
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_005
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_005
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_002
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_003
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_004
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_005
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_002
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_003
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_004
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_005
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_002
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_003
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_004
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_005
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_002
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_003
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_1_004
@ 077   ----------------------------------------
	.byte	W21
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_crawling_2:
	.byte	KEYSH , mus_crawling_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 120*mus_crawling_mvl/mxv
	.byte		N21   , An0 , v100
	.byte	W21
	.byte		N96   , Cs0 
	.byte	W72
	.byte	W03
@ 001   ----------------------------------------
mus_crawling_2_001:
	.byte	W21
	.byte		N96   , An0 , v100
	.byte	W72
	.byte	W03
	.byte	PEND
@ 002   ----------------------------------------
mus_crawling_2_002:
	.byte	W21
	.byte		N96   , En0 , v100
	.byte	W72
	.byte	W03
	.byte	PEND
@ 003   ----------------------------------------
mus_crawling_2_003:
	.byte	W21
	.byte		N48   , Bn0 , v100
	.byte	W48
	.byte		        An0 
	.byte	W24
	.byte	W03
	.byte	PEND
@ 004   ----------------------------------------
mus_crawling_2_004:
	.byte	W21
	.byte		N96   , Cs0 , v100
	.byte	W72
	.byte	W03
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_004
@ 011   ----------------------------------------
mus_crawling_2_011:
	.byte	W21
	.byte		N48   , En1 , v100
	.byte	W48
	.byte		N24   , Gs0 
	.byte	W24
	.byte		        An0 
	.byte	W03
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_004
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_011
@ 020   ----------------------------------------
mus_crawling_2_020:
	.byte	W21
	.byte		N48   , An0 , v100
	.byte	W48
	.byte		        En1 
	.byte	W24
	.byte	W03
	.byte	PEND
@ 021   ----------------------------------------
mus_crawling_2_021:
	.byte	W21
	.byte		N48   , Bn0 , v100
	.byte	W48
	.byte		        En1 
	.byte	W24
	.byte	W03
	.byte	PEND
@ 022   ----------------------------------------
mus_crawling_2_022:
	.byte	W21
	.byte		N48   , Cs1 , v100
	.byte	W48
	.byte		        Bn0 
	.byte	W24
	.byte	W03
	.byte	PEND
@ 023   ----------------------------------------
mus_crawling_2_023:
	.byte	W21
	.byte		N48   , En0 , v100
	.byte	W48
	.byte		N24   , Gs0 
	.byte	W24
	.byte		        An0 
	.byte	W03
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_022
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_023
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_003
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_004
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_011
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_004
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_020
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_022
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_023
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_020
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_021
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_022
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_023
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_003
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_004
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_001
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_002
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_003
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_004
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_001
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_002
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_003
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_004
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_001
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_002
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_003
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_004
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_002
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_2_003
@ 076   ----------------------------------------
	.byte	W21
	.byte	FINE

@**************** Track 3 (Midi-Chn.5) ****************@

mus_crawling_3:
	.byte	KEYSH , mus_crawling_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 30
	.byte		VOL   , 96*mus_crawling_mvl/mxv
	.byte	W21
	.byte		N96   , Cs1 , v084
	.byte		N96   , Gs1 
	.byte		N96   , Cs2 
	.byte	W72
	.byte	W03
@ 001   ----------------------------------------
mus_crawling_3_001:
	.byte	W21
	.byte		N96   , An1 , v084
	.byte		N96   , En2 
	.byte		N96   , An2 
	.byte	W72
	.byte	W03
	.byte	PEND
@ 002   ----------------------------------------
mus_crawling_3_002:
	.byte	W21
	.byte		N96   , En1 , v084
	.byte		N96   , Bn1 
	.byte		N96   , En2 
	.byte	W72
	.byte	W03
	.byte	PEND
@ 003   ----------------------------------------
mus_crawling_3_003:
	.byte	W21
	.byte		N48   , Bn1 , v084
	.byte		N48   , Fs2 
	.byte		N48   , Bn2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , En2 
	.byte		N48   , An2 
	.byte	W24
	.byte	W03
	.byte	PEND
@ 004   ----------------------------------------
mus_crawling_3_004:
	.byte	W21
	.byte		N96   , Cs1 , v084
	.byte		N96   , Gs1 
	.byte		N96   , Cs2 
	.byte	W72
	.byte	W03
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_003
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
	.byte	PATT
	 .word	mus_crawling_3_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_003
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
	.byte	PATT
	 .word	mus_crawling_3_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_003
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_004
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_001
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_002
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_003
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_004
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_001
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_002
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_003
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_004
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_001
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_002
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_003
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_004
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_002
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_3_003
@ 076   ----------------------------------------
	.byte	W21
	.byte	FINE

@**************** Track 4 (Midi-Chn.7) ****************@

mus_crawling_4:
	.byte	KEYSH , mus_crawling_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 112*mus_crawling_mvl/mxv
	.byte		N06   , Cs4 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N48   , Cs3 
	.byte	W72
	.byte	W03
@ 001   ----------------------------------------
	.byte	W21
	.byte		        An2 
	.byte	W72
	.byte	W03
@ 002   ----------------------------------------
	.byte	W21
	.byte		        En2 
	.byte	W72
	.byte	W03
@ 003   ----------------------------------------
mus_crawling_4_003:
	.byte	W21
	.byte		N48   , Bn2 , v064
	.byte	W48
	.byte		        An2 
	.byte	W24
	.byte	W03
	.byte	PEND
@ 004   ----------------------------------------
mus_crawling_4_004:
	.byte	W21
	.byte		N48   , Cs3 , v064
	.byte	W72
	.byte	W03
	.byte	PEND
@ 005   ----------------------------------------
mus_crawling_4_005:
	.byte	W21
	.byte		N48   , An2 , v064
	.byte	W72
	.byte	W03
	.byte	PEND
@ 006   ----------------------------------------
mus_crawling_4_006:
	.byte	W21
	.byte		N48   , En2 , v064
	.byte	W72
	.byte	W03
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_003
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
mus_crawling_4_028:
	.byte		N06   , Cs4 , v064
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N48   , Cs3 
	.byte	W72
	.byte	W03
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_006
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_005
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_006
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_003
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
	.byte	PATT
	 .word	mus_crawling_4_028
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_005
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_006
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_003
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_004
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_005
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_006
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_005
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_006
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_003
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_004
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_005
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_006
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_003
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_004
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_005
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_006
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_003
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_004
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_005
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_006
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_4_003
@ 076   ----------------------------------------
	.byte	W21
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_crawling_5:
	.byte	KEYSH , mus_crawling_key+0
@ 000   ----------------------------------------
	.byte		VOL   , 120*mus_crawling_mvl/mxv
	.byte		N09   , Fs1 , v068
	.byte	W09
	.byte		N12   , As1 
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W03
@ 001   ----------------------------------------
mus_crawling_5_001:
	.byte	W09
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W03
	.byte	PEND
@ 002   ----------------------------------------
mus_crawling_5_002:
	.byte	W09
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W03
	.byte	PEND
@ 003   ----------------------------------------
mus_crawling_5_003:
	.byte	W09
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N24   , Dn1 , v092
	.byte		N24   , Cs2 , v072
	.byte	W03
	.byte	PEND
@ 004   ----------------------------------------
mus_crawling_5_004:
	.byte	W21
	.byte		N12   , Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W03
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_002
@ 007   ----------------------------------------
mus_crawling_5_007:
	.byte	W09
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N24   , Dn1 , v092
	.byte		N24   , Fs1 , v068
	.byte	W03
	.byte	PEND
@ 008   ----------------------------------------
	.byte	W21
	.byte		N12   , Cn1 , v096
	.byte		N12   , An1 , v080
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W03
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_002
@ 011   ----------------------------------------
mus_crawling_5_011:
	.byte	W09
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N06   , Dn1 , v092
	.byte		N06   , Fs1 , v068
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N12   
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W03
	.byte	PEND
@ 012   ----------------------------------------
mus_crawling_5_012:
	.byte	W09
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W03
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_012
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_012
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_012
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_012
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_012
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_012
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_001
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_002
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_001
@ 028   ----------------------------------------
mus_crawling_5_028:
	.byte	W09
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W03
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_007
@ 036   ----------------------------------------
	.byte	W21
	.byte		N12   , Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W03
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_012
@ 038   ----------------------------------------
	.byte	W09
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W15
@ 039   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W03
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_012
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_012
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_012
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_012
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_001
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_002
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_001
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_002
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_001
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_002
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_001
@ 051   ----------------------------------------
	.byte	W09
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	W03
@ 052   ----------------------------------------
mus_crawling_5_052:
	.byte	W21
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W03
	.byte	PEND
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_003
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_004
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_052
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_001
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_028
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_011
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_012
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_001
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_002
@ 067   ----------------------------------------
	.byte	W09
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W03
@ 068   ----------------------------------------
	.byte	W09
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W03
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_001
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_028
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_001
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_028
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_crawling_5_028
@ 075   ----------------------------------------
	.byte	W09
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W03
@ 076   ----------------------------------------
	.byte	W09
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W03
@ 077   ----------------------------------------
	.byte	W09
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

mus_crawling:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_crawling_pri	@ Priority
	.byte	mus_crawling_rev	@ Reverb.

	.word	mus_crawling_grp

	.word	mus_crawling_1
	.word	mus_crawling_2
	.word	mus_crawling_3
	.word	mus_crawling_4
	.word	mus_crawling_5

	.end
