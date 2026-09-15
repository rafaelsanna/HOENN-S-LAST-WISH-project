	.include "MPlayDef.s"

	.equ	mus_little_sister_grp, voicegroup_hlw_rock_metal
	.equ	mus_little_sister_pri, 0
	.equ	mus_little_sister_rev, reverb_set+12
	.equ	mus_little_sister_mvl, 90
	.equ	mus_little_sister_key, 0
	.equ	mus_little_sister_tbs, 1
	.equ	mus_little_sister_exg, 0
	.equ	mus_little_sister_cmp, 1

	.section .rodata
	.global	mus_little_sister
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_little_sister_1:
	.byte	KEYSH , mus_little_sister_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 161*mus_little_sister_tbs/2
	.byte		VOICE , 29
	.byte		VOL   , 106*mus_little_sister_mvl/mxv
	.byte		PAN   , c_v-12
	.byte	W96
@ 002   ----------------------------------------
mus_little_sister_1_002:
	.byte		N12   , Cs2 , v092
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W24
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W24
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_little_sister_1_003:
	.byte		N12   , En2 , v092
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W24
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W24
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 015   ----------------------------------------
mus_little_sister_1_015:
	.byte		N12   , En2 , v092
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W24
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W24
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_little_sister_1_016:
	.byte		N12   , Fs2 , v092
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte	W24
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte	W24
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_little_sister_1_017:
	.byte		N12   , En2 , v092
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W24
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , As2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_015
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_016
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_017
@ 026   ----------------------------------------
mus_little_sister_1_026:
	.byte		N12   , Fs2 , v092
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_little_sister_1_027:
	.byte		N12   , En2 , v092
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_little_sister_1_028:
	.byte		N12   , Gs2 , v092
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_026
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_026
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_026
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_027
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_028
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_026
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_026
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_027
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_028
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_028
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 045   ----------------------------------------
	.byte		N12   , En2 , v092
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W24
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W36
@ 046   ----------------------------------------
mus_little_sister_1_046:
	.byte		N12   , Cs2 , v092
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W24
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W24
	.byte	PEND
@ 047   ----------------------------------------
mus_little_sister_1_047:
	.byte		N12   , En2 , v092
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W24
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte	PEND
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_015
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_016
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_017
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_015
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_016
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_017
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_026
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_027
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_028
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_026
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_026
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_027
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_028
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_026
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_026
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_027
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_028
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_026
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_026
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_027
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_028
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_028
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
	.byte	PATT
	 .word	mus_little_sister_1_046
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_047
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_002
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_1_003
@ 116   ----------------------------------------
	.byte		N96   , Cs2 , v092
	.byte		N96   , Gs2 
	.byte		N96   , Cs3 
	.byte	W96
@ 117   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_little_sister_2:
	.byte	KEYSH , mus_little_sister_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 103*mus_little_sister_mvl/mxv
	.byte		PAN   , c_v+14
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
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
mus_little_sister_2_025:
	.byte	W12
	.byte		N12   , Fs2 , v096
	.byte		N12   , Bn2 
	.byte	W24
	.byte		        Fs2 
	.byte		N12   , Bn2 
	.byte	W24
	.byte		        Fs2 
	.byte		N12   , Bn2 
	.byte	W24
	.byte		        Fs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_little_sister_2_026:
	.byte	W12
	.byte		N12   , En2 , v096
	.byte		N12   , Gs2 
	.byte	W24
	.byte		        En2 
	.byte		N12   , Gs2 
	.byte	W24
	.byte		        En2 
	.byte		N12   , Gs2 
	.byte	W24
	.byte		        En2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_little_sister_2_027:
	.byte	W12
	.byte		N12   , Gs2 , v096
	.byte		N12   , Cs3 
	.byte	W24
	.byte		        Gs2 
	.byte		N12   , Cs3 
	.byte	W24
	.byte		        Gs2 
	.byte		N12   , Cs3 
	.byte	W24
	.byte		        Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_025
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_025
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_026
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_027
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_025
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_025
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_026
@ 039   ----------------------------------------
mus_little_sister_2_039:
	.byte	W36
	.byte		N12   , Gs2 , v096
	.byte		N12   , Cs3 
	.byte	W48
	.byte		        Gs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
mus_little_sister_2_040:
	.byte	W36
	.byte		N12   , Gs2 , v096
	.byte		N12   , Cs3 
	.byte	W48
	.byte		        Bn3 
	.byte	W12
	.byte	PEND
@ 041   ----------------------------------------
mus_little_sister_2_041:
	.byte		N12   , Cs4 , v096
	.byte	W12
	.byte		        Bn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 042   ----------------------------------------
mus_little_sister_2_042:
	.byte		N12   , Gs3 , v096
	.byte	W12
	.byte		        Fs3 
	.byte	W24
	.byte		        Cs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs3 
	.byte	W24
	.byte		        Bn3 
	.byte	W12
	.byte	PEND
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_041
@ 044   ----------------------------------------
mus_little_sister_2_044:
	.byte		N12   , Gs3 , v096
	.byte	W12
	.byte		        Fs3 
	.byte	W24
	.byte		        Cs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs3 
	.byte	W36
	.byte	PEND
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W84
	.byte		        Bn3 
	.byte	W12
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_041
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_044
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
	.byte	PATT
	 .word	mus_little_sister_2_025
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_026
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_027
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_025
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_025
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_026
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_027
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_025
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_025
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_026
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_027
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_025
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_025
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_026
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_039
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_040
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_041
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_042
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_041
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_042
@ 085   ----------------------------------------
mus_little_sister_2_085:
	.byte		N12   , Cs4 , v096
	.byte	W12
	.byte		        Bn3 
	.byte	W24
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 086   ----------------------------------------
	.byte		        Ds4 
	.byte	W12
	.byte		        En4 
	.byte	W24
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Cn4 
	.byte	W24
	.byte		        Bn3 
	.byte	W12
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_085
@ 088   ----------------------------------------
	.byte		N12   , Ds4 , v096
	.byte	W12
	.byte		        En4 
	.byte	W24
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Cn4 
	.byte	W36
@ 089   ----------------------------------------
	.byte		        Cs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Ds4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
@ 090   ----------------------------------------
	.byte		        En4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N24   , Fs4 
	.byte	W36
	.byte		N12   
	.byte	W12
@ 091   ----------------------------------------
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		        Gs4 
	.byte	W18
	.byte		        Gn4 
	.byte	W18
	.byte		        Fs4 
	.byte	W18
	.byte		N12   
	.byte	W12
@ 092   ----------------------------------------
	.byte		        Gn4 
	.byte	W12
	.byte		N04   , En4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		N09   , Fs4 
	.byte	W09
	.byte		N12   , En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W48
	.byte	W03
@ 093   ----------------------------------------
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N48   , Gs3 
	.byte	W48
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 094   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N09   , Fs3 
	.byte	W09
	.byte		        Gs3 
	.byte	W09
	.byte		        Cs3 
	.byte	W09
	.byte		        Ds3 
	.byte	W09
	.byte		        Fs3 
	.byte	W09
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N06   
	.byte	W09
@ 095   ----------------------------------------
	.byte		N09   , Fs3 
	.byte	W09
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N09   , Bn2 
	.byte	W09
	.byte		N24   , Gs2 
	.byte	W36
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W24
@ 096   ----------------------------------------
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N09   , Gs2 
	.byte	W09
	.byte		        Fs2 
	.byte	W09
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N09   , Ds3 
	.byte	W36
@ 097   ----------------------------------------
	.byte	W06
	.byte		N18   , Cs3 
	.byte	W18
	.byte		        Ds3 
	.byte	W18
	.byte		        Cs3 
	.byte	W18
	.byte		        Ds3 
	.byte	W18
	.byte		N12   , Cs3 
	.byte	W18
@ 098   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		        Ds3 
	.byte	W18
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N36   , Cn3 
	.byte	W36
	.byte		N06   , Cs3 
	.byte	W12
@ 099   ----------------------------------------
	.byte	W03
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N36   , Gs3 
	.byte	W36
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W09
@ 100   ----------------------------------------
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N09   , Gs3 
	.byte	W09
	.byte		N09   
	.byte	W09
	.byte		N18   
	.byte	W18
	.byte		N06   , Cn4 
	.byte	W30
@ 101   ----------------------------------------
	.byte		N18   , Bn3 
	.byte	W18
	.byte		        Cs4 
	.byte	W18
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N06   , Bn3 
	.byte	W12
@ 102   ----------------------------------------
	.byte		        Cs4 
	.byte	W12
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gs4 
	.byte	W24
	.byte		        Cn4 
	.byte	W48
@ 103   ----------------------------------------
	.byte		N18   , Bn3 
	.byte	W18
	.byte		        Cs4 
	.byte	W18
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N18   , Ds4 
	.byte	W18
	.byte		        Cs4 
	.byte	W18
	.byte		N12   , Ds4 
	.byte	W12
@ 104   ----------------------------------------
	.byte		        En4 
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N09   , En4 
	.byte	W09
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W21
@ 105   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 106   ----------------------------------------
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 107   ----------------------------------------
mus_little_sister_2_107:
	.byte		N12   , Cs4 , v096
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte	PEND
@ 108   ----------------------------------------
mus_little_sister_2_108:
	.byte		N12   , En4 , v096
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte	PEND
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_107
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_108
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_107
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_108
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_2_107
@ 114   ----------------------------------------
	.byte		N12   , En4 , v096
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 115   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_little_sister_3:
	.byte	KEYSH , mus_little_sister_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 100*mus_little_sister_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W60
	.byte		N12   , An1 , v084
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 005   ----------------------------------------
mus_little_sister_3_005:
	.byte		N12   , Cs1 , v084
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_little_sister_3_006:
	.byte		N12   , En1 , v084
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Ds2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_little_sister_3_007:
	.byte		N12   , Cs1 , v084
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Ds1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_little_sister_3_008:
	.byte		N12   , En1 , v084
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_008
@ 013   ----------------------------------------
mus_little_sister_3_013:
	.byte		N12   , Cs1 , v084
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
mus_little_sister_3_014:
	.byte		N12   , En1 , v084
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Ds2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_little_sister_3_015:
	.byte		N12   , Fs1 , v084
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_little_sister_3_016:
	.byte		N12   , En1 , v084
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_006
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_007
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_008
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_014
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_015
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_016
@ 025   ----------------------------------------
mus_little_sister_3_025:
	.byte		N12   , Fs1 , v084
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_little_sister_3_026:
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
	.byte		        Bn0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_little_sister_3_027:
	.byte		N12   , Gs1 , v084
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_025
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_027
@ 032   ----------------------------------------
mus_little_sister_3_032:
	.byte		N12   , Fs1 , v084
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_026
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_027
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_032
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_025
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_026
@ 039   ----------------------------------------
mus_little_sister_3_039:
	.byte		N12   , Gs1 , v084
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_006
@ 043   ----------------------------------------
	.byte		N12   , Cs1 , v084
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Ds1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , En1 
	.byte	W12
@ 044   ----------------------------------------
mus_little_sister_3_044:
	.byte		N12   , En1 , v084
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 045   ----------------------------------------
mus_little_sister_3_045:
	.byte		N12   , Cs1 , v084
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 046   ----------------------------------------
mus_little_sister_3_046:
	.byte		N12   , En1 , v084
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_007
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_008
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_005
@ 050   ----------------------------------------
mus_little_sister_3_050:
	.byte		N12   , En1 , v084
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_007
@ 052   ----------------------------------------
mus_little_sister_3_052:
	.byte		N12   , En1 , v084
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte	PEND
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_005
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_014
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_015
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_016
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_013
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_050
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_007
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_052
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_013
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_014
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_015
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_016
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_025
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_026
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_027
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_025
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_025
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_026
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_027
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_032
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_025
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_026
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_027
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_032
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_025
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_026
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_039
@ 080   ----------------------------------------
	.byte		N12   , Gs1 , v084
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W60
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 085   ----------------------------------------
	.byte		        Cs1 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Cs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte	W24
	.byte		        Ds1 
	.byte	W12
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_006
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_007
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_044
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_045
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_046
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_005
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_006
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_007
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_008
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_005
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_006
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_007
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_008
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_005
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_006
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_007
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_008
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_005
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_006
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_007
@ 106   ----------------------------------------
	.byte		N12   , En1 , v084
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W36
@ 107   ----------------------------------------
	.byte		        Cs1 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_050
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_3_007
@ 110   ----------------------------------------
	.byte		N12   , En1 , v084
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
@ 111   ----------------------------------------
	.byte		        Cs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
@ 112   ----------------------------------------
	.byte		        En2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Gs1 
	.byte	W24
	.byte		        En2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
@ 113   ----------------------------------------
	.byte		        Cs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 114   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
@ 115   ----------------------------------------
	.byte		N96   , Cs1 
	.byte	W96
@ 116   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_little_sister_4:
	.byte	KEYSH , mus_little_sister_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 114*mus_little_sister_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W24
@ 001   ----------------------------------------
mus_little_sister_4_001:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_little_sister_4_002:
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 008   ----------------------------------------
mus_little_sister_4_008:
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte	W04
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 024   ----------------------------------------
mus_little_sister_4_024:
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W09
	.byte		        En1 , v076
	.byte	W03
	.byte		N02   
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
mus_little_sister_4_025:
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 032   ----------------------------------------
mus_little_sister_4_032:
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W09
	.byte		        En1 , v076
	.byte	W03
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
	.byte	PEND
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 039   ----------------------------------------
mus_little_sister_4_039:
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
mus_little_sister_4_040:
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W09
	.byte		        En1 , v076
	.byte	W03
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte	PEND
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 044   ----------------------------------------
mus_little_sister_4_044:
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W09
	.byte		        En1 , v076
	.byte	W03
	.byte	PEND
@ 045   ----------------------------------------
mus_little_sister_4_045:
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W21
	.byte		N02   
	.byte	W03
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W21
	.byte		N02   
	.byte	W03
	.byte	PEND
@ 046   ----------------------------------------
mus_little_sister_4_046:
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W24
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte	PEND
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_008
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 053   ----------------------------------------
mus_little_sister_4_053:
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v076
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte	PEND
@ 054   ----------------------------------------
mus_little_sister_4_054:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        En1 , v076
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte	PEND
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_008
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 058   ----------------------------------------
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_053
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_054
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_024
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_032
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_039
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_040
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_044
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_045
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_046
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_002
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_001
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_024
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 110   ----------------------------------------
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		        Cn1 , v080
	.byte	W12
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_little_sister_4_025
@ 114   ----------------------------------------
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
@ 115   ----------------------------------------
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

mus_little_sister:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_little_sister_pri	@ Priority
	.byte	mus_little_sister_rev	@ Reverb.

	.word	mus_little_sister_grp

	.word	mus_little_sister_1
	.word	mus_little_sister_2
	.word	mus_little_sister_3
	.word	mus_little_sister_4

	.end
