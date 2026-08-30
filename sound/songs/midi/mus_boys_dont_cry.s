	.include "MPlayDef.s"

	.equ	mus_boys_dont_cry_grp, voicegroup_hlw_indie_guitar
	.equ	mus_boys_dont_cry_pri, 0
	.equ	mus_boys_dont_cry_rev, reverb_set+35
	.equ	mus_boys_dont_cry_mvl, 94
	.equ	mus_boys_dont_cry_key, 0
	.equ	mus_boys_dont_cry_tbs, 1
	.equ	mus_boys_dont_cry_exg, 1
	.equ	mus_boys_dont_cry_cmp, 1

	.section .rodata
	.global	mus_boys_dont_cry
	.align	2

@**************** Track 1 (Midi-Chn.3) ****************@

mus_boys_dont_cry_1:
	.byte		VOL   , 127*mus_boys_dont_cry_mvl/mxv
	.byte	KEYSH , mus_boys_dont_cry_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 160*mus_boys_dont_cry_tbs/2
	.byte		VOICE , 29
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
mus_boys_dont_cry_1_005:
	.byte		N24   , Cs3 , v080
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte		N24   , En3 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_005
@ 007   ----------------------------------------
mus_boys_dont_cry_1_007:
	.byte		N36   , En3 , v080
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		        Fs3 
	.byte	W12
	.byte		N24   , Gs3 
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
mus_boys_dont_cry_1_008:
	.byte		N24   , An3 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N16   , Fs3 
	.byte	W16
	.byte		        En3 
	.byte	W16
	.byte		        Dn3 
	.byte	W16
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_005
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_008
@ 013   ----------------------------------------
	.byte		N96   , Cs3 , v080
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte		N24   
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
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_005
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_005
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_007
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_008
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_005
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_005
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_007
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_008
@ 041   ----------------------------------------
	.byte		N24   , Cs3 , v080
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte		N24   
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
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte		N24   
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte		N24   
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_005
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_005
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_007
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_008
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_005
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_005
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_007
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_008
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_005
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_005
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_007
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_008
@ 077   ----------------------------------------
mus_boys_dont_cry_1_077:
	.byte		N36   , Cs3 , v080
	.byte	W36
	.byte		N12   
	.byte	W36
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte	PEND
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_1_077
@ 079   ----------------------------------------
	.byte		N36   , En3 , v080
	.byte	W36
	.byte		N12   
	.byte	W36
	.byte		        Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 080   ----------------------------------------
	.byte		N36   , An3 
	.byte	W36
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N16   , Fs3 
	.byte	W16
	.byte		        En3 
	.byte	W16
	.byte		        Dn3 
	.byte	W16
@ 081   ----------------------------------------
	.byte		N96   , Cs3 
	.byte	W96
@ 082   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.5) ****************@

mus_boys_dont_cry_2:
	.byte		VOL   , 127*mus_boys_dont_cry_mvl/mxv
	.byte	KEYSH , mus_boys_dont_cry_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 27
	.byte		N96   , An1 , v080
	.byte		N96   , An2 
	.byte		N96   , Cs3 
	.byte	W96
@ 001   ----------------------------------------
	.byte		        Bn1 
	.byte		N96   , Bn2 
	.byte		N96   , Dn3 
	.byte	W96
@ 002   ----------------------------------------
	.byte		        Cs2 
	.byte		N96   , Cs3 
	.byte		N96   , En3 
	.byte	W96
@ 003   ----------------------------------------
	.byte		N48   , Dn2 
	.byte		N48   , Dn3 
	.byte		N48   , Fs3 
	.byte	W48
	.byte		N16   , Dn2 
	.byte		N16   , Dn3 
	.byte		N16   , Fs3 
	.byte	W16
	.byte		        Cs2 
	.byte		N16   , Cs3 
	.byte		N16   , En3 
	.byte	W16
	.byte		        Bn1 
	.byte		N16   , Bn2 
	.byte		N16   , Dn3 
	.byte	W16
@ 004   ----------------------------------------
mus_boys_dont_cry_2_004:
	.byte		N12   , An1 , v080
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        An1 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        An1 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        An1 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W24
	.byte		        An1 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N24   , An1 
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
mus_boys_dont_cry_2_005:
	.byte		N12   , Bn1 , v080
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W24
	.byte		        Bn1 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N24   , Bn1 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
mus_boys_dont_cry_2_006:
	.byte		N12   , Cs2 , v080
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W24
	.byte		        Cs2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Cs2 
	.byte		N24   , Cs3 
	.byte		N24   , En3 
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
mus_boys_dont_cry_2_007:
	.byte		N12   , Dn2 , v080
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N16   , Dn2 
	.byte		N16   , Dn3 
	.byte		N16   , Fs3 
	.byte	W16
	.byte		        Cs2 
	.byte		N16   , Cs3 
	.byte		N16   , En3 
	.byte	W16
	.byte		        Bn1 
	.byte		N16   , Bn2 
	.byte		N16   , Dn3 
	.byte	W16
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_007
@ 016   ----------------------------------------
mus_boys_dont_cry_2_016:
	.byte		N24   , An1 , v080
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        An1 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W24
	.byte		        An1 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N24   , An1 
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
mus_boys_dont_cry_2_017:
	.byte		N24   , Bn1 , v080
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , Bn1 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W24
	.byte		        Bn1 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N24   , Bn1 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
mus_boys_dont_cry_2_018:
	.byte		N24   , Cs2 , v080
	.byte		N24   , Cs3 
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , Cs2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W24
	.byte		        Cs2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Cs2 
	.byte		N24   , Cs3 
	.byte		N24   , En3 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
mus_boys_dont_cry_2_019:
	.byte		N24   , Dn2 , v080
	.byte		N24   , Dn3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , Dn2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W24
	.byte		        Dn2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N24   , Dn2 
	.byte		N24   , Dn3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_018
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_017
@ 026   ----------------------------------------
mus_boys_dont_cry_2_026:
	.byte		N36   , Cs2 , v080
	.byte		N36   , Cs3 
	.byte		N36   , En3 
	.byte	W36
	.byte		N12   , Cs2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N16   , Cs2 
	.byte		N16   , Cs3 
	.byte		N16   , En3 
	.byte	W16
	.byte		        Cs2 
	.byte		N16   , Cs3 
	.byte		N16   , En3 
	.byte	W16
	.byte		        Cs2 
	.byte		N16   , Cs3 
	.byte		N16   , En3 
	.byte	W16
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_017
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_018
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_017
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_017
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_005
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_006
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_007
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_005
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_006
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_007
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_016
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_017
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_018
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_019
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_016
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_017
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_018
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_019
@ 048   ----------------------------------------
mus_boys_dont_cry_2_048:
	.byte		N24   , En2 , v080
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , En2 
	.byte		N12   , Bn2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte		N12   , Gs3 
	.byte	W24
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte		N12   , Gs3 
	.byte	W12
	.byte	PEND
@ 049   ----------------------------------------
mus_boys_dont_cry_2_049:
	.byte		N24   , Fs2 , v080
	.byte		N24   , Cs3 
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , An3 
	.byte	W24
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , An3 
	.byte	W12
	.byte	PEND
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_048
@ 051   ----------------------------------------
	.byte		N12   , Fs2 , v080
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Fs2 
	.byte		N24   , Cs3 
	.byte		N24   , Cs4 
	.byte	W24
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_048
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_049
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_019
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_048
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_016
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_017
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_018
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_019
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_016
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_017
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_018
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_019
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_004
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_005
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_006
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_007
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_004
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_005
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_006
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_007
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_004
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_005
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_006
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_007
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_004
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_005
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_006
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_2_007
@ 080   ----------------------------------------
	.byte		N96   , An1 , v080
	.byte		N96   , An2 
	.byte		N96   , Cs3 
	.byte	W96
@ 081   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.1) ****************@

mus_boys_dont_cry_3:
	.byte		VOL   , 127*mus_boys_dont_cry_mvl/mxv
	.byte	KEYSH , mus_boys_dont_cry_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
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
	.byte		N24   , An2 , v080
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte	W24
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
@ 017   ----------------------------------------
	.byte	W24
	.byte		        Fs2 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
@ 018   ----------------------------------------
	.byte	W12
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N12   , Fs2 
	.byte	W24
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
@ 019   ----------------------------------------
	.byte	W24
	.byte		        Gs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W60
@ 020   ----------------------------------------
	.byte		        An2 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Bn2 
	.byte	W24
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
@ 021   ----------------------------------------
	.byte	W12
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
@ 022   ----------------------------------------
	.byte	W12
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N12   , Fs2 
	.byte	W24
	.byte		N36   , Gs2 
	.byte	W36
@ 023   ----------------------------------------
mus_boys_dont_cry_3_023:
	.byte		N12   , An2 , v080
	.byte	W12
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N12   , Fs2 
	.byte	W60
	.byte	PEND
@ 024   ----------------------------------------
mus_boys_dont_cry_3_024:
	.byte	W36
	.byte		N12   , An2 , v080
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Fs2 
	.byte	W24
	.byte		N24   , Gs2 
	.byte	W36
@ 026   ----------------------------------------
mus_boys_dont_cry_3_026:
	.byte		N12   , An2 , v080
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N16   
	.byte	W16
	.byte		N16   
	.byte	W16
	.byte		N16   
	.byte	W16
	.byte	PEND
@ 027   ----------------------------------------
	.byte		N96   , Gs2 
	.byte	W96
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_3_024
@ 029   ----------------------------------------
	.byte		N12   , Bn2 , v080
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Fs2 
	.byte	W24
	.byte		N24   , Dn2 
	.byte	W36
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_3_026
@ 031   ----------------------------------------
	.byte		N36   , Gs2 , v080
	.byte	W36
	.byte		N12   , Fs2 
	.byte	W24
	.byte		N36   , An2 
	.byte	W36
@ 032   ----------------------------------------
	.byte	W78
	.byte		N18   , Gs2 
	.byte	W18
@ 033   ----------------------------------------
	.byte		N36   
	.byte	W48
	.byte		N48   , Fs2 
	.byte	W48
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte		N96   , An2 
	.byte	W96
@ 037   ----------------------------------------
	.byte		        Gs2 
	.byte	W96
@ 038   ----------------------------------------
	.byte		        Fs2 
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N36   , Bn2 
	.byte	W36
@ 041   ----------------------------------------
	.byte		N12   , An2 
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N12   , An2 
	.byte	W24
	.byte		N36   , Fs2 
	.byte	W36
@ 042   ----------------------------------------
	.byte		N12   , An2 
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N12   , Cs3 
	.byte	W24
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
@ 043   ----------------------------------------
	.byte	W12
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N12   , Fs2 
	.byte	W60
@ 044   ----------------------------------------
	.byte		        Cs3 
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N12   , An2 
	.byte	W24
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N12   , Cs3 
	.byte	W12
@ 045   ----------------------------------------
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N12   , An2 
	.byte	W24
	.byte		N24   , Bn2 
	.byte	W36
@ 046   ----------------------------------------
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N12   , An2 
	.byte	W24
	.byte		N24   , Fs2 
	.byte	W36
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_3_023
@ 048   ----------------------------------------
	.byte	W36
	.byte		N12   , Gs2 , v080
	.byte		N12   , Dn3 
	.byte	W24
	.byte		N24   , Gs2 
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , An2 
	.byte		N12   , Fs3 
	.byte	W12
@ 049   ----------------------------------------
	.byte		        Gs2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Dn3 
	.byte	W84
@ 050   ----------------------------------------
	.byte	W36
	.byte		        Bn2 
	.byte		N12   , En3 
	.byte	W24
	.byte		N24   , An2 
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , Gs2 
	.byte		N12   , En3 
	.byte	W12
@ 051   ----------------------------------------
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte	W96
@ 052   ----------------------------------------
	.byte	W36
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W24
	.byte		        Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Fs3 
	.byte	W12
@ 053   ----------------------------------------
	.byte	W12
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte	W84
@ 054   ----------------------------------------
	.byte		N16   , Cs3 
	.byte		N16   , Fs3 
	.byte	W16
	.byte		        Cs3 
	.byte		N16   , Fs3 
	.byte	W16
	.byte		        Cs3 
	.byte		N16   , Fs3 
	.byte	W16
	.byte		        Cs3 
	.byte		N16   , Fs3 
	.byte	W16
	.byte		        Cs3 
	.byte		N16   , Fs3 
	.byte	W16
	.byte		        Cs3 
	.byte		N16   , Fs3 
	.byte	W16
@ 055   ----------------------------------------
	.byte		N24   , Cs3 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
@ 056   ----------------------------------------
mus_boys_dont_cry_3_056:
	.byte		N12   , Cs3 , v080
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N12   , An2 
	.byte	W24
	.byte		N36   , Bn2 
	.byte	W36
	.byte	PEND
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_3_056
@ 058   ----------------------------------------
	.byte		N24   , Cs3 , v080
	.byte	W24
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W24
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N12   , Fs2 
	.byte	W12
@ 059   ----------------------------------------
	.byte		N72   
	.byte	W96
@ 060   ----------------------------------------
	.byte		N12   , An2 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Bn2 
	.byte	W60
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_3_056
@ 062   ----------------------------------------
	.byte		N12   , An2 , v080
	.byte	W12
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Gs2 
	.byte	W12
@ 063   ----------------------------------------
	.byte		N72   , Fs2 
	.byte	W72
	.byte		N24   
	.byte	W24
@ 064   ----------------------------------------
	.byte		N96   , An2 
	.byte	W96
@ 065   ----------------------------------------
	.byte	W60
	.byte		N36   , Gs2 
	.byte	W36
@ 066   ----------------------------------------
	.byte	W36
	.byte		N12   , Fs2 
	.byte	W60
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W48
	.byte		N36   , An2 
	.byte	W36
	.byte		N12   , Fs2 
	.byte	W12
@ 070   ----------------------------------------
	.byte	W36
	.byte		        Cs2 
	.byte	W60
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
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_boys_dont_cry_4:
	.byte		VOL   , 127*mus_boys_dont_cry_mvl/mxv
	.byte	KEYSH , mus_boys_dont_cry_key+0
@ 000   ----------------------------------------
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W48
	.byte		N16   , Dn1 , v044
	.byte		N16   , Dn1 , v080
	.byte	W16
	.byte		        Dn1 , v044
	.byte		N16   , Dn1 , v080
	.byte	W16
	.byte		        Dn1 , v044
	.byte		N16   , Dn1 , v080
	.byte	W16
@ 004   ----------------------------------------
mus_boys_dont_cry_4_004:
	.byte		N12   , Cn1 , v080
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_boys_dont_cry_4_005:
	.byte		N12   , Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 007   ----------------------------------------
mus_boys_dont_cry_4_007:
	.byte		N12   , Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N16   , Dn1 , v044
	.byte		N16   , Dn1 , v080
	.byte	W16
	.byte		        Dn1 , v044
	.byte		N16   , Dn1 , v080
	.byte	W16
	.byte		        Dn1 , v044
	.byte		N16   , Dn1 , v080
	.byte	W16
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_004
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 026   ----------------------------------------
mus_boys_dont_cry_4_026:
	.byte		N12   , Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N16   , Dn1 , v080
	.byte	W16
	.byte		N16   
	.byte	W16
	.byte		N16   
	.byte	W16
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_007
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_007
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_004
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_007
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_004
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_007
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_004
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_007
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_004
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_005
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_boys_dont_cry_4_007
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_boys_dont_cry:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_boys_dont_cry_pri	@ Priority
	.byte	mus_boys_dont_cry_rev	@ Reverb.

	.word	mus_boys_dont_cry_grp

	.word	mus_boys_dont_cry_1
	.word	mus_boys_dont_cry_2
	.word	mus_boys_dont_cry_3
	.word	mus_boys_dont_cry_4

	.end
