	.include "MPlayDef.s"

	.equ	mus_faint_grp, voicegroup_hlw_rock_metal
	.equ	mus_faint_pri, 0
	.equ	mus_faint_rev, reverb_set+16
	.equ	mus_faint_mvl, 90
	.equ	mus_faint_key, 0
	.equ	mus_faint_tbs, 1
	.equ	mus_faint_exg, 0
	.equ	mus_faint_cmp, 1

	.section .rodata
	.global	mus_faint
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_faint_1:
	.byte	KEYSH , mus_faint_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 139*mus_faint_tbs/2
	.byte		VOICE , 64
	.byte		VOL   , 80*mus_faint_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		N12   , Cs4 , v072
	.byte	W96
@ 002   ----------------------------------------
mus_faint_1_002:
	.byte		N03   , Cs4 , v072
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		N06   , En4 
	.byte	W90
	.byte	PEND
@ 003   ----------------------------------------
mus_faint_1_003:
	.byte		N12   , Fs3 , v072
	.byte	W24
	.byte		        Gs3 
	.byte	W72
	.byte	PEND
@ 004   ----------------------------------------
mus_faint_1_004:
	.byte		N12   , Cs3 , v072
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_004
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_004
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
	.byte	PATT
	 .word	mus_faint_1_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_004
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_004
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_004
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
	.byte	PATT
	 .word	mus_faint_1_002
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_003
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_004
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_004
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_002
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_003
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_004
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_004
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_002
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_003
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_004
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_004
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
	.byte	PATT
	 .word	mus_faint_1_002
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_003
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_1_004
@ 072   ----------------------------------------
	.byte		N12   , Cs3 , v072
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_faint_2:
	.byte	KEYSH , mus_faint_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 104*mus_faint_mvl/mxv
	.byte		PAN   , c_v-6
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
mus_faint_2_008:
	.byte	W48
	.byte		N12   , Cs2 , v088
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_faint_2_009:
	.byte		N12   , Gs1 , v080
	.byte		N12   , Cs3 , v088
	.byte	W12
	.byte		        Gs1 , v080
	.byte		N12   , Cs3 , v088
	.byte	W12
	.byte		        Gs1 , v080
	.byte		N12   , Cs3 , v088
	.byte	W12
	.byte		        Gs1 , v080
	.byte		N12   , Gs3 , v088
	.byte	W12
	.byte		        Gs1 , v080
	.byte		N12   , Gs3 , v088
	.byte	W12
	.byte		        Gs1 , v080
	.byte		N12   , Fs3 , v088
	.byte	W12
	.byte		        Gs1 , v080
	.byte		N12   , Fs3 , v088
	.byte	W12
	.byte		        Gs1 , v080
	.byte		N12   , Fs3 , v088
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_faint_2_010:
	.byte		N12   , Bn1 , v080
	.byte		N12   , Fs3 , v088
	.byte	W12
	.byte		        Bn1 , v080
	.byte		N12   , Fs3 , v088
	.byte	W12
	.byte		        Bn1 , v080
	.byte		N12   , Fs3 , v088
	.byte	W12
	.byte		        Bn1 , v080
	.byte		N12   , Gs3 , v088
	.byte	W12
	.byte		        Bn1 , v080
	.byte		N12   , Gs3 , v088
	.byte	W12
	.byte		        Bn1 , v080
	.byte		N12   , En3 , v088
	.byte	W12
	.byte		        Bn1 , v080
	.byte		N12   , En3 , v088
	.byte	W12
	.byte		        Bn1 , v080
	.byte		N12   , En3 , v088
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_faint_2_011:
	.byte		N12   , An1 , v080
	.byte		N12   , Cs3 , v088
	.byte	W12
	.byte		        An1 , v080
	.byte		N12   , Cs3 , v088
	.byte	W12
	.byte		        An1 , v080
	.byte		N12   , Cs3 , v088
	.byte	W12
	.byte		        An1 , v080
	.byte		N12   , Gs3 , v088
	.byte	W12
	.byte		        An1 , v080
	.byte		N12   , Gs3 , v088
	.byte	W12
	.byte		        An1 , v080
	.byte		N12   , Fs3 , v088
	.byte	W12
	.byte		        An1 , v080
	.byte		N12   , Fs3 , v088
	.byte	W12
	.byte		        An1 , v080
	.byte		N12   , Fs3 , v088
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_faint_2_012:
	.byte		N12   , Cs2 , v080
	.byte		N12   , Fs3 , v088
	.byte	W12
	.byte		        Cs2 , v080
	.byte		N12   , Fs3 , v088
	.byte	W12
	.byte		        Cs2 , v080
	.byte		N12   , Fs3 , v088
	.byte	W12
	.byte		        Gs1 , v080
	.byte		N12   , Gs3 , v088
	.byte	W12
	.byte		        Gs1 , v080
	.byte		N12   , Gs3 , v088
	.byte	W12
	.byte		        Bn1 , v080
	.byte		N12   , En3 , v088
	.byte	W12
	.byte		        Bn1 , v080
	.byte		N12   , En3 , v088
	.byte	W12
	.byte		        Bn1 , v080
	.byte		N12   , En3 , v088
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_012
@ 017   ----------------------------------------
mus_faint_2_017:
	.byte		N12   , Gs1 , v088
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Cs2 
	.byte	W84
	.byte	PEND
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_017
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_017
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
mus_faint_2_027:
	.byte		N12   , An1 , v088
	.byte		N12   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , An2 
	.byte	W84
	.byte	PEND
@ 028   ----------------------------------------
	.byte		        Bn1 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Bn2 
	.byte	W36
	.byte		        Cs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Cs3 
	.byte	W12
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_011
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_012
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_009
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_011
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_012
@ 037   ----------------------------------------
mus_faint_2_037:
	.byte		N12   , Bn1 , v080
	.byte		N12   , En3 , v088
	.byte	W12
	.byte		        Bn1 , v080
	.byte		N12   , En3 , v088
	.byte	W12
	.byte		        Bn1 , v080
	.byte		N12   , En3 , v088
	.byte	W12
	.byte		        Bn1 , v080
	.byte		N12   , En3 , v088
	.byte	W12
	.byte		        Bn1 , v080
	.byte		N12   , En3 , v088
	.byte	W12
	.byte		        Bn1 , v080
	.byte		N12   , En3 , v088
	.byte	W12
	.byte		        Bn1 , v080
	.byte		N12   , En3 , v088
	.byte	W12
	.byte		        Bn1 , v080
	.byte		N12   , En3 , v088
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_017
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_017
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_017
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_027
@ 049   ----------------------------------------
	.byte		N12   , Bn1 , v088
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Bn2 
	.byte	W84
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_008
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_009
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_010
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_011
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_012
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_009
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_010
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_011
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_012
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_037
@ 060   ----------------------------------------
mus_faint_2_060:
	.byte		N12   , Gs1 , v088
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte	PEND
@ 061   ----------------------------------------
mus_faint_2_061:
	.byte	W12
	.byte		N12   , Gs1 , v088
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds2 
	.byte	W36
	.byte	PEND
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_060
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_061
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_060
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_061
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_060
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_061
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte		N12   , Fs2 , v088
	.byte		N12   , Fs3 
	.byte	W96
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_009
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_010
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_011
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_012
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_009
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_010
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_011
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_012
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_009
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_010
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_011
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_012
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_009
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_010
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_011
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_012
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_2_037
@ 090   ----------------------------------------
	.byte		N12   , Gs1 , v080
	.byte		N12   , Cs3 , v088
	.byte	W12
	.byte		        Gs1 , v080
	.byte		N12   , Cs3 , v088
	.byte	W12
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_faint_3:
	.byte	KEYSH , mus_faint_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 94*mus_faint_mvl/mxv
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
mus_faint_3_008:
	.byte	W48
	.byte		N12   , Cs2 , v084
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_faint_3_009:
	.byte		N12   , Cs1 , v084
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
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_faint_3_010:
	.byte		N12   , En1 , v084
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
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_faint_3_011:
	.byte		N12   , An1 , v084
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
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_faint_3_012:
	.byte		N12   , Fs1 , v084
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_012
@ 017   ----------------------------------------
mus_faint_3_017:
	.byte		N12   , Cs1 , v084
	.byte	W12
	.byte		N12   
	.byte	W84
	.byte	PEND
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_017
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_017
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
mus_faint_3_027:
	.byte		N12   , An1 , v084
	.byte	W12
	.byte		N12   
	.byte	W84
	.byte	PEND
@ 028   ----------------------------------------
	.byte		        Bn1 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		        Cs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_011
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_012
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_009
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_011
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_012
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_010
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_017
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_017
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_017
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_027
@ 049   ----------------------------------------
	.byte		N12   , Bn1 , v084
	.byte	W12
	.byte		N12   
	.byte	W84
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_008
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_009
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_010
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_011
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_012
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_009
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_010
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_011
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_012
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_010
@ 060   ----------------------------------------
mus_faint_3_060:
	.byte		N12   , Cs1 , v084
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W24
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 061   ----------------------------------------
mus_faint_3_061:
	.byte	W12
	.byte		N12   , Gs1 , v084
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W36
	.byte	PEND
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_060
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_061
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_060
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_061
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_060
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_061
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
	.byte	PATT
	 .word	mus_faint_3_009
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_010
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_011
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_012
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_009
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_010
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_011
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_012
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_009
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_010
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_011
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_012
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_009
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_010
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_011
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_012
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_3_010
@ 090   ----------------------------------------
	.byte		N12   , Cs1 , v084
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_faint_4:
	.byte	KEYSH , mus_faint_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 110*mus_faint_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W48
	.byte		N03   , Cn1 , v088
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		N03   
	.byte	W12
@ 003   ----------------------------------------
	.byte		N03   
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		N03   
	.byte	W24
@ 004   ----------------------------------------
mus_faint_4_004:
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_faint_4_005:
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v088
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_005
@ 008   ----------------------------------------
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        En1 , v080
	.byte	W54
@ 009   ----------------------------------------
mus_faint_4_009:
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v084
	.byte	W06
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W06
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_faint_4_010:
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v084
	.byte	W06
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W06
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_009
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_009
@ 016   ----------------------------------------
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v084
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
@ 017   ----------------------------------------
mus_faint_4_017:
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W24
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v084
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 028   ----------------------------------------
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W72
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_009
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_009
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_009
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 037   ----------------------------------------
mus_faint_4_037:
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v084
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Fs1 , v076
	.byte	W06
	.byte	PEND
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_017
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_017
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 050   ----------------------------------------
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        En1 , v084
	.byte	W54
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_009
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_009
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_009
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_009
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_037
@ 060   ----------------------------------------
mus_faint_4_060:
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 , v076
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte	PEND
@ 061   ----------------------------------------
mus_faint_4_061:
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W36
	.byte	PEND
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_060
@ 063   ----------------------------------------
mus_faint_4_063:
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v076
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_060
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_061
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_060
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_063
@ 068   ----------------------------------------
mus_faint_4_068:
	.byte		N03   , Cn1 , v088
	.byte	W24
	.byte		N03   
	.byte	W24
	.byte		        En1 , v084
	.byte	W48
	.byte	PEND
@ 069   ----------------------------------------
mus_faint_4_069:
	.byte		N03   , Cn1 , v088
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N03   
	.byte	W12
	.byte		        En1 , v084
	.byte	W12
	.byte		        Cn1 , v088
	.byte	W12
	.byte		        En1 , v084
	.byte	W24
	.byte	PEND
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_068
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_069
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_009
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_009
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_009
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_009
@ 080   ----------------------------------------
mus_faint_4_080:
	.byte		N03   , Cn1 , v088
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		        En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N03   , En1 , v084
	.byte		N03   , Fs1 , v056
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Fs1 , v076
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte	PEND
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_009
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_009
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_009
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_010
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_009
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_080
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_faint_4_037
@ 090   ----------------------------------------
	.byte		N03   , Cn1 , v088
	.byte		N03   , En1 , v084
	.byte		N03   , Fs1 , v076
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N03   , En1 , v084
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

mus_faint:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_faint_pri	@ Priority
	.byte	mus_faint_rev	@ Reverb.

	.word	mus_faint_grp

	.word	mus_faint_1
	.word	mus_faint_2
	.word	mus_faint_3
	.word	mus_faint_4

	.end
