	.include "MPlayDef.s"

	.equ	mus_alejandro_lady_gaga_grp, voicegroup_pink_and_white
	.equ	mus_alejandro_lady_gaga_pri, 0
	.equ	mus_alejandro_lady_gaga_rev, reverb_set+9
	.equ	mus_alejandro_lady_gaga_mvl, 82
	.equ	mus_alejandro_lady_gaga_key, 0
	.equ	mus_alejandro_lady_gaga_tbs, 1
	.equ	mus_alejandro_lady_gaga_exg, 1
	.equ	mus_alejandro_lady_gaga_cmp, 1

	.section .rodata
	.global	mus_alejandro_lady_gaga
	.align	2

@**************** Track 1 (Midi-Chn.9) ****************@

mus_alejandro_lady_gaga_1:
	.byte		VOL   , 127*mus_alejandro_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_alejandro_lady_gaga_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 99*mus_alejandro_lady_gaga_tbs/2
	.byte		VOICE , 5
	.byte	W24
	.byte		N12   , Bn2 , v068
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N24   
	.byte	W12
@ 002   ----------------------------------------
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W24
@ 003   ----------------------------------------
	.byte	W24
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N24   
	.byte	W12
@ 004   ----------------------------------------
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N24   
	.byte	W36
	.byte		        Cs3 
	.byte	W24
@ 005   ----------------------------------------
mus_alejandro_lady_gaga_1_005:
	.byte		N24   , Cs3 , v068
	.byte	W24
	.byte		N18   
	.byte	W18
	.byte		N24   , Bn2 
	.byte	W54
	.byte	PEND
@ 006   ----------------------------------------
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N24   , An2 
	.byte	W60
@ 007   ----------------------------------------
mus_alejandro_lady_gaga_1_007:
	.byte	W12
	.byte		N06   , An2 , v068
	.byte	W06
	.byte		        Bn2 
	.byte	W18
	.byte		N12   , An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N18   , En3 
	.byte	W18
	.byte		N12   , An3 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_alejandro_lady_gaga_1_008:
	.byte		N12   , En3 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W42
	.byte		        Cs3 
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_005
@ 010   ----------------------------------------
mus_alejandro_lady_gaga_1_010:
	.byte		N12   , Bn2 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N24   , An2 
	.byte	W60
	.byte	PEND
@ 011   ----------------------------------------
mus_alejandro_lady_gaga_1_011:
	.byte	W06
	.byte		N06   , An2 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N18   , En3 
	.byte	W18
	.byte		N12   , An3 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_alejandro_lady_gaga_1_012:
	.byte		N06   , En3 , v068
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W66
	.byte	PEND
@ 013   ----------------------------------------
mus_alejandro_lady_gaga_1_013:
	.byte	W24
	.byte		N09   , Fs2 , v068
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
mus_alejandro_lady_gaga_1_014:
	.byte		N24   , Fs2 , v068
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		N09   
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_alejandro_lady_gaga_1_015:
	.byte		N24   , Fs2 , v068
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N09   
	.byte	W06
	.byte	PEND
@ 016   ----------------------------------------
mus_alejandro_lady_gaga_1_016:
	.byte	W12
	.byte		N12   , Fs2 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N24   
	.byte	W42
	.byte		N12   , Gn3 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_alejandro_lady_gaga_1_017:
	.byte		N12   , Gn3 , v068
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N24   , Dn3 
	.byte	W30
	.byte	PEND
@ 018   ----------------------------------------
mus_alejandro_lady_gaga_1_018:
	.byte	W12
	.byte		N06   , En3 , v068
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N18   , En3 
	.byte	W18
	.byte		N24   , Cs3 
	.byte	W42
	.byte		N12   , Gn3 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_017
@ 020   ----------------------------------------
mus_alejandro_lady_gaga_1_020:
	.byte	W18
	.byte		N06   , Fs3 , v068
	.byte	W06
	.byte		N18   , En3 
	.byte	W18
	.byte		N24   , Cs3 
	.byte	W42
	.byte		N12   , Gn3 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_alejandro_lady_gaga_1_021:
	.byte		N12   , Gn3 , v068
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Dn3 
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_alejandro_lady_gaga_1_022:
	.byte		N12   , Gn3 , v068
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W24
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
mus_alejandro_lady_gaga_1_023:
	.byte		N12   , Bn2 , v068
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W18
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N24   , Dn3 
	.byte	W30
	.byte	PEND
@ 024   ----------------------------------------
mus_alejandro_lady_gaga_1_024:
	.byte	W18
	.byte		N06   , Fs3 , v068
	.byte	W06
	.byte		N18   , En3 
	.byte	W18
	.byte		N24   , Cs3 
	.byte	W54
	.byte	PEND
@ 025   ----------------------------------------
mus_alejandro_lady_gaga_1_025:
	.byte	W12
	.byte		N06   , Dn3 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		        Bn2 
	.byte	W18
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		N24   , Bn2 
	.byte	W06
	.byte	PEND
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
mus_alejandro_lady_gaga_1_027:
	.byte	W24
	.byte		N06   , Dn3 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte	PEND
@ 028   ----------------------------------------
mus_alejandro_lady_gaga_1_028:
	.byte		N18   , Dn3 , v068
	.byte		N18   , Fs3 
	.byte	W18
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte	W78
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_025
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_028
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W72
	.byte		N24   , Cs3 , v068
	.byte	W24
@ 037   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N18   
	.byte	W18
	.byte		N24   , Bn2 
	.byte	W42
	.byte		N12   , Fs2 
	.byte	W12
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_010
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_007
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_010
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_012
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_013
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_014
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_015
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_018
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_017
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_020
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_021
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_022
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_023
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_024
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_025
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_027
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_028
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_025
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_027
@ 064   ----------------------------------------
mus_alejandro_lady_gaga_1_064:
	.byte		N18   , Dn3 , v068
	.byte		N18   , Fs3 
	.byte	W18
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte	W66
	.byte		N12   , Gn3 
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_017
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_018
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_017
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_020
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_017
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_018
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_017
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_020
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_017
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_018
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_017
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_020
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_021
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_022
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_023
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_024
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_025
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_027
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_028
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_025
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_027
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_064
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_017
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_018
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_017
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_020
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_021
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_022
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_023
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_1_024
@ 097   ----------------------------------------
	.byte	W12
	.byte		N06   , Dn3 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		N48   , Bn2 
	.byte	W48
	.byte	FINE

@**************** Track 2 (Midi-Chn.16) ****************@

mus_alejandro_lady_gaga_2:
	.byte		VOL   , 127*mus_alejandro_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_alejandro_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
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
mus_alejandro_lady_gaga_2_088:
	.byte	W12
	.byte		N06   , Dn3 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		        Bn2 
	.byte	W18
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		N24   , Bn2 
	.byte	W06
	.byte	PEND
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
mus_alejandro_lady_gaga_2_090:
	.byte	W24
	.byte		N06   , Dn3 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte	PEND
@ 091   ----------------------------------------
mus_alejandro_lady_gaga_2_091:
	.byte		N18   , Dn3 , v052
	.byte		N18   , Fs3 
	.byte	W18
	.byte		N06   , An2 
	.byte		N06   , Cs3 
	.byte	W78
	.byte	PEND
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_2_088
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_2_090
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_2_091
@ 096   ----------------------------------------
	.byte	W90
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_alejandro_lady_gaga_3:
	.byte		VOL   , 127*mus_alejandro_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_alejandro_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte	W24
	.byte		N12   , Bn3 , v064
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W12
	.byte		N24   
	.byte	W12
@ 001   ----------------------------------------
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
@ 002   ----------------------------------------
	.byte		        An3 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W12
	.byte		N24   
	.byte	W12
@ 003   ----------------------------------------
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W12
	.byte		N24   
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 004   ----------------------------------------
mus_alejandro_lady_gaga_3_004:
	.byte		N06   , Fs4 , v064
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W78
	.byte	PEND
@ 005   ----------------------------------------
mus_alejandro_lady_gaga_3_005:
	.byte	W72
	.byte		N06   , Cs4 , v064
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte		N12   , An3 
	.byte	W96
@ 007   ----------------------------------------
mus_alejandro_lady_gaga_3_007:
	.byte	W60
	.byte		N06   , Bn3 , v064
	.byte	W12
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_005
@ 010   ----------------------------------------
	.byte		N24   , An3 , v064
	.byte	W96
@ 011   ----------------------------------------
mus_alejandro_lady_gaga_3_011:
	.byte	W60
	.byte		N06   , Bn3 , v064
	.byte	W12
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
mus_alejandro_lady_gaga_3_012:
	.byte		N24   , Fs4 , v064
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_alejandro_lady_gaga_3_013:
	.byte	W12
	.byte		N12   , En4 , v064
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
mus_alejandro_lady_gaga_3_014:
	.byte	W24
	.byte		N12   , Bn3 , v064
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_alejandro_lady_gaga_3_015:
	.byte	W12
	.byte		N12   , En4 , v064
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W30
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_014
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_014
@ 019   ----------------------------------------
mus_alejandro_lady_gaga_3_019:
	.byte	W12
	.byte		N12   , En4 , v064
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
mus_alejandro_lady_gaga_3_020:
	.byte		N06   , Fs4 , v064
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_014
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_013
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_014
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_019
@ 032   ----------------------------------------
	.byte		N06   , Fs4 , v064
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W12
	.byte		N24   
	.byte	W12
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_013
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_014
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_015
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_005
@ 038   ----------------------------------------
	.byte		N12   , An3 , v064
	.byte	W96
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_007
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_005
@ 042   ----------------------------------------
	.byte		N24   , An3 , v064
	.byte	W96
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_012
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_013
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_014
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_015
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_014
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_013
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_014
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_019
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_020
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_013
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_014
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_019
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_020
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_013
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_014
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_019
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_020
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_013
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_014
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_019
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_020
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_013
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_014
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_019
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_020
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_013
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_014
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_019
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_020
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_013
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_014
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_019
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_020
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_013
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_014
@ 079   ----------------------------------------
	.byte	W12
	.byte		N12   , En4 , v064
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N06   , Dn4 
	.byte	W36
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_014
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_013
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_014
@ 083   ----------------------------------------
	.byte	W12
	.byte		N12   , En4 , v064
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
@ 084   ----------------------------------------
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 , v052
	.byte	W06
	.byte		N24   , Dn4 , v064
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        An4 
	.byte	W24
@ 085   ----------------------------------------
	.byte		        Gn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_014
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_019
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_020
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_013
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_014
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_019
@ 092   ----------------------------------------
	.byte		N06   , Fs4 , v064
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N03   , Bn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		N24   , An4 
	.byte	W09
@ 093   ----------------------------------------
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        En4 
	.byte	W24
@ 094   ----------------------------------------
	.byte		        Cs4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   
	.byte	W12
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_3_019
@ 096   ----------------------------------------
	.byte		N06   , Fs4 , v064
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W72
	.byte	FINE

@**************** Track 4 (Midi-Chn.1) ****************@

mus_alejandro_lady_gaga_4:
	.byte		VOL   , 127*mus_alejandro_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_alejandro_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
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
mus_alejandro_lady_gaga_4_016:
	.byte	W24
	.byte		N12   , Fs3 , v060
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N36   , Fs4 
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
mus_alejandro_lady_gaga_4_017:
	.byte	W12
	.byte		N12   , Dn4 , v060
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N36   , Gn4 
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
mus_alejandro_lady_gaga_4_018:
	.byte	W12
	.byte		N12   , Gn3 , v060
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_alejandro_lady_gaga_4_019:
	.byte		N12   , Dn4 , v060
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
mus_alejandro_lady_gaga_4_020:
	.byte	W12
	.byte		N12   , Fs3 , v060
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N36   , Fs4 
	.byte	W24
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_017
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_017
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_018
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_019
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
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_018
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_019
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_020
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_017
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_018
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_019
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_020
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_017
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_018
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_019
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_020
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_017
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_018
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_019
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
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_016
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_017
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_018
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_019
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_020
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_017
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_018
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_019
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_016
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_017
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_018
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_019
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_020
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_017
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_018
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_4_019
@ 096   ----------------------------------------
	.byte	W12
	.byte		N12   , Fs3 , v060
	.byte	W78
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_alejandro_lady_gaga_5:
	.byte		VOL   , 127*mus_alejandro_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_alejandro_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		N24   , Fs0 , v068
	.byte	W24
	.byte		N12   , Bn0 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W18
	.byte		N06   
	.byte	W06
@ 001   ----------------------------------------
	.byte		N12   
	.byte	W24
	.byte		        Fs1 
	.byte	W18
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W18
	.byte		N06   , Cs1 
	.byte	W06
@ 002   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W18
	.byte		N06   
	.byte	W06
@ 003   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N06   , An0 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W24
	.byte		N12   
	.byte	W24
@ 004   ----------------------------------------
	.byte		N24   , As1 
	.byte	W24
	.byte		N48   , Bn0 
	.byte	W48
	.byte		        Dn1 
	.byte	W24
@ 005   ----------------------------------------
	.byte	W24
	.byte		N96   , Fs0 
	.byte	W72
@ 006   ----------------------------------------
mus_alejandro_lady_gaga_5_006:
	.byte	W24
	.byte		N48   , Bn0 , v068
	.byte	W48
	.byte		        Dn1 
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W24
	.byte		N96   , Fs0 
	.byte	W72
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_006
@ 009   ----------------------------------------
	.byte	W24
	.byte		N96   , Fs0 , v068
	.byte	W72
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_006
@ 011   ----------------------------------------
	.byte	W24
	.byte		N96   , Fs0 , v068
	.byte	W72
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_006
@ 013   ----------------------------------------
	.byte	W24
	.byte		N96   , Fs1 , v068
	.byte	W72
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_006
@ 015   ----------------------------------------
	.byte	W24
	.byte		N48   , Fs0 , v068
	.byte	W72
@ 016   ----------------------------------------
mus_alejandro_lady_gaga_5_016:
	.byte	W24
	.byte		N12   , Gn1 , v068
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_alejandro_lady_gaga_5_017:
	.byte		N06   , Dn1 , v068
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W18
	.byte		N06   , Cs1 
	.byte	W06
	.byte	PEND
@ 018   ----------------------------------------
mus_alejandro_lady_gaga_5_018:
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , An0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
mus_alejandro_lady_gaga_5_019:
	.byte		N12   , Dn1 , v068
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        An1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W18
	.byte		N06   , Cs1 
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
mus_alejandro_lady_gaga_5_020:
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_017
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_017
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_018
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_019
@ 032   ----------------------------------------
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N48   , Bn0 
	.byte	W48
	.byte		        Dn1 
	.byte	W24
@ 033   ----------------------------------------
	.byte	W24
	.byte		N72   , Fs1 
	.byte	W72
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_006
@ 035   ----------------------------------------
	.byte	W24
	.byte		N48   , Fs1 , v068
	.byte	W72
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_006
@ 037   ----------------------------------------
	.byte	W24
	.byte		N96   , Fs0 , v068
	.byte	W72
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_006
@ 039   ----------------------------------------
	.byte	W24
	.byte		N96   , Fs0 , v068
	.byte	W72
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_006
@ 041   ----------------------------------------
	.byte	W24
	.byte		N96   , Fs0 , v068
	.byte	W72
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_006
@ 043   ----------------------------------------
	.byte	W24
	.byte		N96   , Fs0 , v068
	.byte	W72
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_006
@ 045   ----------------------------------------
	.byte	W24
	.byte		N96   , Fs1 , v068
	.byte	W72
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_006
@ 047   ----------------------------------------
	.byte	W24
	.byte		N48   , Fs0 , v068
	.byte	W72
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_018
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_019
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_020
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_017
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_018
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_019
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_020
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_017
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_018
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_019
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_020
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_017
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_018
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_019
@ 064   ----------------------------------------
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W78
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_006
@ 069   ----------------------------------------
mus_alejandro_lady_gaga_5_069:
	.byte	W24
	.byte		N48   , An0 , v068
	.byte	W48
	.byte		        Cn1 
	.byte	W24
	.byte	PEND
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_006
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_069
@ 072   ----------------------------------------
	.byte	W24
	.byte		N12   , Bn1 , v068
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W06
@ 073   ----------------------------------------
	.byte	W06
	.byte		N18   , Bn1 
	.byte	W18
	.byte		N12   , An1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        En1 
	.byte	W06
@ 074   ----------------------------------------
	.byte	W06
	.byte		N18   , An1 
	.byte	W18
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N06   , Bn0 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W06
@ 075   ----------------------------------------
	.byte	W06
	.byte		N18   , Gn1 
	.byte	W18
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N06   , As0 
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Cs1 
	.byte	W06
@ 076   ----------------------------------------
	.byte	W06
	.byte		N18   , Fs1 
	.byte	W18
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W06
@ 077   ----------------------------------------
	.byte	W06
	.byte		N18   , An1 
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W06
@ 078   ----------------------------------------
	.byte	W06
	.byte		N18   , An1 
	.byte	W18
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W06
@ 079   ----------------------------------------
	.byte	W06
	.byte		N18   , An1 
	.byte	W18
	.byte		N12   , Bn1 
	.byte	W18
	.byte		        An1 
	.byte	W18
	.byte		N12   
	.byte	W36
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_016
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_017
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_018
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_019
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_020
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_017
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_018
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_019
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_020
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_017
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_018
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_019
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_020
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_017
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_018
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_5_019
@ 096   ----------------------------------------
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W72
	.byte	FINE

@**************** Track 6 (Midi-Chn.7) ****************@

mus_alejandro_lady_gaga_6:
	.byte		VOL   , 127*mus_alejandro_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_alejandro_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte	W24
	.byte		N12   , Bn1 , v064
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W18
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W24
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W24
@ 001   ----------------------------------------
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W24
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W24
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W24
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W24
@ 002   ----------------------------------------
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W24
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W18
	.byte		N06   , Bn1 
	.byte		N06   , Fs2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W18
	.byte		N06   , Dn2 
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte	W06
@ 003   ----------------------------------------
	.byte		N12   , Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W24
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W24
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W24
@ 004   ----------------------------------------
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W36
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W24
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W24
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
@ 005   ----------------------------------------
mus_alejandro_lady_gaga_6_005:
	.byte	W12
	.byte		N12   , Dn2 , v064
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W24
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W24
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W24
	.byte		        Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_alejandro_lady_gaga_6_006:
	.byte	W12
	.byte		N12   , Fs1 , v064
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W24
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W24
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W24
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_005
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_006
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_005
@ 012   ----------------------------------------
mus_alejandro_lady_gaga_6_012:
	.byte	W12
	.byte		N12   , Fs1 , v064
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W84
	.byte	PEND
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
mus_alejandro_lady_gaga_6_016:
	.byte	W24
	.byte		N48   , Gn1 , v064
	.byte		N48   , Dn2 
	.byte		N48   , Gn2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , Dn2 
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
mus_alejandro_lady_gaga_6_017:
	.byte	W24
	.byte		N48   , An1 , v064
	.byte		N48   , En2 
	.byte		N48   , An2 
	.byte	W48
	.byte		        Fs1 
	.byte		N48   , Cs2 
	.byte		N48   , Fs2 
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W36
	.byte		N12   , Bn1 , v064
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W24
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W24
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_005
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_006
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_005
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_006
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_006
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_005
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_012
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
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
	.byte	W96
@ 072   ----------------------------------------
	.byte	W24
	.byte		N72   , Bn1 , v064
	.byte		N72   , Fs2 
	.byte		N72   , Bn2 
	.byte		N72   , Dn3 
	.byte	W72
@ 073   ----------------------------------------
	.byte	W24
	.byte		        An1 
	.byte		N72   , En2 
	.byte		N72   , An2 
	.byte		N72   , Cs3 
	.byte	W72
@ 074   ----------------------------------------
	.byte	W24
	.byte		        Gn1 
	.byte		N72   , Dn2 
	.byte		N72   , Gn2 
	.byte		N72   , Bn2 
	.byte	W72
@ 075   ----------------------------------------
	.byte	W24
	.byte		        Fs1 
	.byte		N72   , Fs2 
	.byte		N72   , As2 
	.byte		N72   , Cs3 
	.byte	W72
@ 076   ----------------------------------------
mus_alejandro_lady_gaga_6_076:
	.byte	W24
	.byte		N48   , Gn1 , v064
	.byte		N48   , Dn2 
	.byte		N48   , Gn2 
	.byte		N48   , Bn2 
	.byte	W48
	.byte		        Dn2 
	.byte		N48   , An2 
	.byte		N48   , Dn3 
	.byte	W24
	.byte	PEND
@ 077   ----------------------------------------
	.byte	W24
	.byte		        An1 
	.byte		N48   , En2 
	.byte		N48   , An2 
	.byte		N48   , Cs3 
	.byte	W48
	.byte		        Fs1 
	.byte		N48   , Fs2 
	.byte		N48   , An2 
	.byte		N48   , Cs3 
	.byte	W24
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_076
@ 079   ----------------------------------------
	.byte	W24
	.byte		N18   , Bn1 , v064
	.byte		N18   , En2 
	.byte		N18   , An2 
	.byte		N18   , Cs3 
	.byte	W18
	.byte		        An1 
	.byte		N18   , En2 
	.byte		N18   , An2 
	.byte		N18   , Cs3 
	.byte	W18
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W36
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_016
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_6_017
@ 096   ----------------------------------------
	.byte	W90
	.byte	FINE

@**************** Track 7 (Midi-Chn.12) ****************@

mus_alejandro_lady_gaga_7:
	.byte		VOL   , 127*mus_alejandro_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_alejandro_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
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
mus_alejandro_lady_gaga_7_016:
	.byte	W24
	.byte		N48   , Gn3 , v048
	.byte		N48   , Bn3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , An3 
	.byte		N48   , Dn4 
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
mus_alejandro_lady_gaga_7_017:
	.byte	W24
	.byte		N48   , En3 , v048
	.byte		N48   , An3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , An3 
	.byte		N48   , Cs4 
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 019   ----------------------------------------
mus_alejandro_lady_gaga_7_019:
	.byte	W24
	.byte		N48   , An3 , v048
	.byte		N48   , Cs4 
	.byte		N48   , En4 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , An3 
	.byte		N48   , Cs4 
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_017
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_017
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_019
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
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_019
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_017
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_019
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_017
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_019
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_017
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_019
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
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_017
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_019
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_017
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_019
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_017
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_019
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_017
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_016
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_7_019
@ 096   ----------------------------------------
	.byte	W90
	.byte	FINE

@**************** Track 8 (Midi-Chn.10) ****************@

mus_alejandro_lady_gaga_8:
	.byte		VOL   , 127*mus_alejandro_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_alejandro_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 118
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W48
	.byte		N12   , En1 , v044
	.byte	W48
@ 005   ----------------------------------------
mus_alejandro_lady_gaga_8_005:
	.byte		N12   , En1 , v044
	.byte	W48
	.byte		N12   
	.byte	W48
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_005
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_005
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_005
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_005
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_005
@ 012   ----------------------------------------
	.byte		N12   , En1 , v044
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
	.byte	W48
	.byte		N12   
	.byte	W48
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_005
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_005
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_005
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_005
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_005
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_8_005
@ 044   ----------------------------------------
	.byte		N12   , En1 , v044
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
	.byte	W90
	.byte	FINE

@**************** Track 9 (Midi-Chn.10) ****************@

mus_alejandro_lady_gaga_9:
	.byte		VOL   , 127*mus_alejandro_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_alejandro_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 118
	.byte		N12   , Cn1 , v052
	.byte		N12   , En1 
	.byte	W24
	.byte		N18   , Cn1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
@ 001   ----------------------------------------
mus_alejandro_lady_gaga_9_001:
	.byte		N12   , En1 , v052
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 004   ----------------------------------------
	.byte		N12   , En1 , v052
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
@ 005   ----------------------------------------
mus_alejandro_lady_gaga_9_005:
	.byte	W12
	.byte		N12   , Cn1 , v052
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_005
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_005
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_005
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_005
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_005
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_005
@ 015   ----------------------------------------
mus_alejandro_lady_gaga_9_015:
	.byte	W12
	.byte		N12   , Cn1 , v052
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N48   
	.byte		N48   , En1 
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
mus_alejandro_lady_gaga_9_016:
	.byte	W24
	.byte		N18   , Cn1 , v052
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 032   ----------------------------------------
	.byte		N12   , En1 , v052
	.byte	W12
	.byte		        Cn1 
	.byte	W36
	.byte		        En1 
	.byte	W48
@ 033   ----------------------------------------
	.byte		N12   
	.byte	W48
	.byte		N12   
	.byte	W48
@ 034   ----------------------------------------
	.byte		N12   
	.byte	W24
	.byte		N18   , Cn1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
@ 035   ----------------------------------------
	.byte		N12   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W36
@ 036   ----------------------------------------
	.byte	W24
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_005
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_005
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_005
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_005
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_005
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_005
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_005
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_005
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_005
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_015
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 064   ----------------------------------------
	.byte		N12   , En1 , v052
	.byte	W12
	.byte		        Cn1 
	.byte	W84
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
	.byte	W96
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_016
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 079   ----------------------------------------
	.byte		N12   , En1 , v052
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N12   
	.byte		N12   , En1 
	.byte	W24
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_016
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_alejandro_lady_gaga_9_001
@ 096   ----------------------------------------
	.byte		N12   , En1 , v052
	.byte	W12
	.byte		        Cn1 
	.byte	W78
	.byte	FINE

@******************************************************@
	.align	2

mus_alejandro_lady_gaga:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_alejandro_lady_gaga_pri	@ Priority
	.byte	mus_alejandro_lady_gaga_rev	@ Reverb.

	.word	mus_alejandro_lady_gaga_grp

	.word	mus_alejandro_lady_gaga_1
	.word	mus_alejandro_lady_gaga_2
	.word	mus_alejandro_lady_gaga_3
	.word	mus_alejandro_lady_gaga_4
	.word	mus_alejandro_lady_gaga_5
	.word	mus_alejandro_lady_gaga_6
	.word	mus_alejandro_lady_gaga_7
	.word	mus_alejandro_lady_gaga_8
	.word	mus_alejandro_lady_gaga_9

	.end
