	.include "MPlayDef.s"

	.equ	mus_someday_grp, voicegroup_someday
	.equ	mus_someday_pri, 0
	.equ	mus_someday_rev, reverb_set+50
	.equ	mus_someday_mvl, 100
	.equ	mus_someday_key, 0
	.equ	mus_someday_tbs, 1
	.equ	mus_someday_exg, 1
	.equ	mus_someday_cmp, 1

	.section .rodata
	.global	mus_someday
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_someday_1:
	.byte	KEYSH , mus_someday_key+0
mus_someday_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 108*mus_someday_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_someday_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W36
@ 002   ----------------------------------------
mus_someday_1_002:
	.byte		N12   , An0 , v108
	.byte	W18
	.byte		N48   
	.byte	W78
	.byte	PEND
@ 003   ----------------------------------------
mus_someday_1_003:
	.byte		N12   , Bn0 , v108
	.byte	W18
	.byte		N48   
	.byte	W78
	.byte	PEND
@ 004   ----------------------------------------
mus_someday_1_004:
	.byte		N12   , Dn1 , v108
	.byte	W18
	.byte		N48   
	.byte	W78
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_002
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_002
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_004
@ 013   ----------------------------------------
	.byte		N12   , An0 , v108
	.byte	W18
	.byte		N44   , An0 , v108, gtp3
	.byte	W48
	.byte		N24   
	.byte	W30
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_002
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_002
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_004
@ 025   ----------------------------------------
mus_someday_1_025:
	.byte		N12   , An0 , v108
	.byte	W18
	.byte		N48   
	.byte	W54
	.byte		N11   , En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_someday_1_026:
	.byte		N12   , An0 , v108
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N23   , En1 
	.byte	W24
	.byte		        Cs1 
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
mus_someday_1_027:
	.byte		N44   , Fs1 , v108, gtp3
	.byte	W48
	.byte		N23   
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
mus_someday_1_028:
	.byte		N06   , Dn1 , v108
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_someday_1_029:
	.byte		N06   , An0 , v108
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N11   , En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_029
@ 034   ----------------------------------------
mus_someday_1_034:
	.byte		N11   , En1 , v108
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
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_034
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_034
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_034
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_002
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_002
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_003
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_004
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_002
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_025
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_026
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_027
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_028
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_029
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_026
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_027
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_028
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_029
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_026
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_027
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_028
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_029
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_026
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_027
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_028
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_029
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_034
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_034
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_034
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_1_034
@ 074   ----------------------------------------
	.byte		N12   , An0 , v108
	.byte	W12
	.byte	GOTO
	 .word	mus_someday_1_B1
mus_someday_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_someday_2:
	.byte	KEYSH , mus_someday_key+0
mus_someday_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 62*mus_someday_mvl/mxv
	.byte		PAN   , c_v-14
	.byte	W36
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
mus_someday_2_005:
	.byte		N07   , An2 , v068
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte	PEND
@ 006   ----------------------------------------
mus_someday_2_006:
	.byte		N07   , Bn2 , v068
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte	PEND
@ 007   ----------------------------------------
mus_someday_2_007:
	.byte		N07   , Dn3 , v068
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   , An2 
	.byte	W08
	.byte		N03   , Dn3 
	.byte	W04
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_005
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_005
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_005
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_006
@ 019   ----------------------------------------
	.byte		N07   , Dn3 , v068
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_005
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_006
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_007
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_005
@ 025   ----------------------------------------
mus_someday_2_025:
	.byte		N07   , An2 , v068
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   , Bn2 
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte	PEND
@ 026   ----------------------------------------
mus_someday_2_026:
	.byte		N07   , Fs2 , v068
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_007
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_005
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_007
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_005
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_006
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_006
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_006
@ 036   ----------------------------------------
mus_someday_2_036:
	.byte		N07   , Bn2 , v068
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte	PEND
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
	.byte	PATT
	 .word	mus_someday_2_005
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_006
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_007
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_005
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_005
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_006
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_007
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_005
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_025
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_026
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_007
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_005
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_026
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_007
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_005
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_025
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_026
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_007
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_005
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_025
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_026
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_007
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_005
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_006
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_006
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_006
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_2_036
@ 073   ----------------------------------------
	.byte	W12
	.byte	GOTO
	 .word	mus_someday_2_B1
mus_someday_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_someday_3:
	.byte	KEYSH , mus_someday_key+0
mus_someday_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 108*mus_someday_mvl/mxv
	.byte		PAN   , c_v+14
	.byte	W36
@ 001   ----------------------------------------
mus_someday_3_001:
	.byte		N12   , An3 , v096
	.byte	W18
	.byte		N72   , Bn3 
	.byte	W78
	.byte	PEND
@ 002   ----------------------------------------
mus_someday_3_002:
	.byte		N12   , Cs4 , v096
	.byte	W18
	.byte		N72   , Bn3 
	.byte	W78
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_002
@ 004   ----------------------------------------
mus_someday_3_004:
	.byte		N12   , Bn3 , v096
	.byte	W18
	.byte		N72   , An3 
	.byte	W78
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_002
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_002
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_002
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_002
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_002
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_004
@ 025   ----------------------------------------
mus_someday_3_025:
	.byte		N11   , Cs4 , v096
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte		N92   , Cs4 , v096, gtp3
	.byte	W96
@ 027   ----------------------------------------
	.byte		        Fs3 , v096, gtp3
	.byte	W96
@ 028   ----------------------------------------
	.byte		        Cs3 , v096, gtp3
	.byte	W96
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_025
@ 030   ----------------------------------------
	.byte		N92   , Cs4 , v096, gtp3
	.byte	W96
@ 031   ----------------------------------------
	.byte		        Fs3 , v096, gtp3
	.byte	W96
@ 032   ----------------------------------------
	.byte		N96   , Cs3 
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
	.byte	PATT
	 .word	mus_someday_3_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_002
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_002
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_004
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_002
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_025
@ 054   ----------------------------------------
	.byte		N92   , Cs4 , v096, gtp3
	.byte	W96
@ 055   ----------------------------------------
	.byte		        Fs3 , v096, gtp3
	.byte	W96
@ 056   ----------------------------------------
	.byte		        Cs3 , v096, gtp3
	.byte	W96
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_025
@ 058   ----------------------------------------
	.byte		N92   , Cs4 , v096, gtp3
	.byte	W96
@ 059   ----------------------------------------
	.byte		        Fs3 , v096, gtp3
	.byte	W96
@ 060   ----------------------------------------
	.byte		        Cs3 , v096, gtp3
	.byte	W96
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_025
@ 062   ----------------------------------------
	.byte		N92   , Cs4 , v096, gtp3
	.byte	W96
@ 063   ----------------------------------------
	.byte		        Fs3 , v096, gtp3
	.byte	W96
@ 064   ----------------------------------------
	.byte		        Cs3 , v096, gtp3
	.byte	W96
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_3_025
@ 066   ----------------------------------------
	.byte		N92   , Cs4 , v096, gtp3
	.byte	W96
@ 067   ----------------------------------------
	.byte		        Fs3 , v096, gtp3
	.byte	W96
@ 068   ----------------------------------------
	.byte		N96   , Cs3 
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
	.byte		N12   , An2 
	.byte	W12
	.byte	GOTO
	 .word	mus_someday_3_B1
mus_someday_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_someday_4:
	.byte	KEYSH , mus_someday_key+0
mus_someday_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 96*mus_someday_mvl/mxv
	.byte		N01   , Dn1 , v068
	.byte		N01   , Fs3 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
@ 001   ----------------------------------------
mus_someday_4_001:
	.byte		N01   , Cn1 , v068
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N01   
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W18
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_001
@ 005   ----------------------------------------
mus_someday_4_005:
	.byte		N01   , Cn1 , v068
	.byte		N01   , As1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte		        As1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_005
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_005
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_005
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_005
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_005
@ 013   ----------------------------------------
mus_someday_4_013:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Ds2 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Ds2 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_013
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_013
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_013
@ 017   ----------------------------------------
mus_someday_4_017:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Ds2 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Ds2 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_013
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_013
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_013
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_013
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_013
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_013
@ 025   ----------------------------------------
mus_someday_4_025:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Gs1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte		        Gs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Gs1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_someday_4_026:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Gs1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte		        Gs1 
	.byte		N01   , As1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_025
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_025
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_025
@ 031   ----------------------------------------
mus_someday_4_031:
	.byte		N01   , Cn1 , v068
	.byte		N01   , As1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gs1 
	.byte		N01   , As1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte		        Gs1 
	.byte		N01   , As1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs3 
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_025
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_031
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_031
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_031
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_031
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_001
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_001
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_001
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_001
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_005
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_005
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_005
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_005
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_005
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_005
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_005
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_005
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_025
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_026
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_025
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_025
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_026
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_025
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_025
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_025
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_026
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_025
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_025
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_025
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_026
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_025
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_025
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_031
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_031
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_031
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_someday_4_031
@ 073   ----------------------------------------
	.byte		N01   , Dn1 , v068
	.byte		N01   , Fs3 
	.byte	W12
	.byte	GOTO
	 .word	mus_someday_4_B1
mus_someday_4_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_someday:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_someday_pri	@ Priority
	.byte	mus_someday_rev	@ Reverb.

	.word	mus_someday_grp

	.word	mus_someday_1
	.word	mus_someday_2
	.word	mus_someday_3
	.word	mus_someday_4

	.end
