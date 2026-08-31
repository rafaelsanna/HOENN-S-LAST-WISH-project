	.include "MPlayDef.s"

	.equ	mus_blowin_in_the_wind_grp, voicegroup_hlw_classic_rock
	.equ	mus_blowin_in_the_wind_pri, 0
	.equ	mus_blowin_in_the_wind_rev, reverb_set+35
	.equ	mus_blowin_in_the_wind_mvl, 94
	.equ	mus_blowin_in_the_wind_key, 0
	.equ	mus_blowin_in_the_wind_tbs, 1
	.equ	mus_blowin_in_the_wind_exg, 1
	.equ	mus_blowin_in_the_wind_cmp, 1

	.section .rodata
	.global	mus_blowin_in_the_wind
	.align	2

@**************** Track 1 (Midi-Chn.2) ****************@

mus_blowin_in_the_wind_1:
	.byte	KEYSH , mus_blowin_in_the_wind_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 153*mus_blowin_in_the_wind_tbs/2
	.byte		VOICE , 32
	.byte		VOL   , 105*mus_blowin_in_the_wind_mvl/mxv
	.byte		PAN   , c_v+17
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
mus_blowin_in_the_wind_1_008:
	.byte		N52   , An0 , v076, gtp1
	.byte	W48
	.byte		N48   , En1 , v072
	.byte	W48
	.byte	PEND
@ 009   ----------------------------------------
mus_blowin_in_the_wind_1_009:
	.byte		N52   , Dn1 , v076, gtp1
	.byte	W48
	.byte		N48   , An1 , v072
	.byte	W48
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_008
@ 011   ----------------------------------------
mus_blowin_in_the_wind_1_011:
	.byte		N52   , Fs1 , v076, gtp1
	.byte	W48
	.byte		N48   , Cs2 , v072
	.byte	W48
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_008
@ 013   ----------------------------------------
mus_blowin_in_the_wind_1_013:
	.byte		N52   , Bn0 , v076, gtp1
	.byte	W48
	.byte		N48   , Fs1 , v072
	.byte	W48
	.byte	PEND
@ 014   ----------------------------------------
mus_blowin_in_the_wind_1_014:
	.byte		N52   , En1 , v076, gtp1
	.byte	W48
	.byte		N48   , Bn1 , v072
	.byte	W48
	.byte	PEND
@ 015   ----------------------------------------
mus_blowin_in_the_wind_1_015:
	.byte		N52   , En1 , v076
	.byte	W48
	.byte		N42   , Bn1 , v072, gtp1
	.byte	W48
	.byte	PEND
@ 016   ----------------------------------------
mus_blowin_in_the_wind_1_016:
	.byte		N36   , An0 , v080
	.byte	W40
	.byte	W01
	.byte		N07   , An0 , v088
	.byte	W07
	.byte		N36   , En1 , v068, gtp1
	.byte	W40
	.byte	W01
	.byte		N07   , En1 , v076
	.byte	W07
	.byte	PEND
@ 017   ----------------------------------------
mus_blowin_in_the_wind_1_017:
	.byte		N36   , Dn1 , v080
	.byte	W40
	.byte	W01
	.byte		N07   , Dn1 , v088
	.byte	W07
	.byte		N36   , An0 , v068, gtp1
	.byte	W40
	.byte	W01
	.byte		N07   , An0 , v076
	.byte	W07
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_016
@ 019   ----------------------------------------
mus_blowin_in_the_wind_1_019:
	.byte		N52   , Fs1 , v092, gtp1
	.byte	W48
	.byte		N48   , Cs2 
	.byte	W48
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_017
@ 022   ----------------------------------------
mus_blowin_in_the_wind_1_022:
	.byte		N52   , An0 , v092, gtp1
	.byte	W48
	.byte		N48   , En1 
	.byte	W48
	.byte	PEND
@ 023   ----------------------------------------
mus_blowin_in_the_wind_1_023:
	.byte		N52   , An0 , v092
	.byte	W48
	.byte		N42   , En1 , v092, gtp1
	.byte	W48
	.byte	PEND
@ 024   ----------------------------------------
mus_blowin_in_the_wind_1_024:
	.byte		N52   , Dn1 , v092, gtp1
	.byte	W48
	.byte		N48   , An1 
	.byte	W48
	.byte	PEND
@ 025   ----------------------------------------
mus_blowin_in_the_wind_1_025:
	.byte		N52   , En1 , v092, gtp1
	.byte	W48
	.byte		N48   , Bn1 
	.byte	W48
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_016
@ 027   ----------------------------------------
	.byte		N36   , Fs1 , v080
	.byte	W40
	.byte	W01
	.byte		N07   , Fs1 , v088
	.byte	W07
	.byte		N36   , Cs1 , v068, gtp1
	.byte	W40
	.byte	W01
	.byte		N07   , Cs1 , v076
	.byte	W07
@ 028   ----------------------------------------
	.byte		N36   , Bn0 , v080
	.byte	W40
	.byte	W01
	.byte		N07   , Bn0 , v088
	.byte	W07
	.byte		N36   , Fs1 , v068, gtp1
	.byte	W40
	.byte	W01
	.byte		N07   , Fs1 , v076
	.byte	W07
@ 029   ----------------------------------------
	.byte		N36   , En1 , v080
	.byte	W40
	.byte	W01
	.byte		N07   , En1 , v088
	.byte	W07
	.byte		N36   , Bn0 , v068, gtp1
	.byte	W40
	.byte	W01
	.byte		N07   , Bn0 , v076
	.byte	W07
@ 030   ----------------------------------------
	.byte		N48   , An0 , v080, gtp3
	.byte	W48
	.byte		N32   , En1 , v080, gtp1
	.byte	W40
	.byte		N09   , En1 , v072
	.byte	W08
@ 031   ----------------------------------------
	.byte		N32   , An0 , v080, gtp1
	.byte	W40
	.byte		N09   , An0 , v072
	.byte	W08
	.byte		N24   , En1 , v084
	.byte	W24
	.byte		N22   , An0 , v080
	.byte	W24
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
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_008
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_008
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_013
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_014
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_015
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_022
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_024
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_016
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_019
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_024
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_022
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_023
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_024
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_022
@ 059   ----------------------------------------
	.byte		N36   , Fs1 , v080, gtp1
	.byte	W40
	.byte		N08   , Fs1 , v092
	.byte	W09
	.byte		N30   , Cs1 , v084
	.byte	W23
	.byte		N24   , Fs1 , v080
	.byte	W24
@ 060   ----------------------------------------
	.byte		N32   , Bn0 , v080, gtp2
	.byte	W40
	.byte	W01
	.byte		N15   , Bn0 , v076
	.byte	W07
	.byte		N20   , Cs1 
	.byte	W24
	.byte		N24   , Dn1 , v080
	.byte	W24
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_025
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_1_022
@ 063   ----------------------------------------
	.byte		N36   , An0 , v080, gtp1
	.byte	W40
	.byte		N08   , An0 , v092
	.byte	W09
	.byte		N30   , En1 , v084
	.byte	W23
	.byte		N24   , An0 , v080
	.byte	W24
@ 064   ----------------------------------------
	.byte		N56   , An0 , v092
	.byte	W48
	.byte		N54   , En1 , v080
	.byte	W48
@ 065   ----------------------------------------
	.byte		N12   , An0 , v084
	.byte	W16
	.byte		N07   , An0 , v088
	.byte	W08
	.byte		N24   , En1 , v080
	.byte	W24
	.byte		N44   , An0 , v080, gtp3
	.byte	W48
@ 066   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_blowin_in_the_wind_2:
	.byte	KEYSH , mus_blowin_in_the_wind_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 4
	.byte		VOL   , 90*mus_blowin_in_the_wind_mvl/mxv
	.byte		PAN   , c_v-10
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
mus_blowin_in_the_wind_2_016:
	.byte		N96   , An2 , v064
	.byte		N96   , Cs3 
	.byte		N96   , En3 
	.byte	W96
	.byte	PEND
@ 017   ----------------------------------------
mus_blowin_in_the_wind_2_017:
	.byte		N96   , An2 , v064
	.byte		N96   , Dn3 
	.byte		N96   , Fs3 
	.byte	W96
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_016
@ 019   ----------------------------------------
mus_blowin_in_the_wind_2_019:
	.byte		N96   , Cs3 , v064
	.byte		N96   , Fs3 
	.byte		N96   , An3 
	.byte	W96
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_017
@ 022   ----------------------------------------
mus_blowin_in_the_wind_2_022:
	.byte		TIE   , An2 , v064
	.byte		TIE   , Cs3 
	.byte		TIE   , En3 
	.byte	W96
	.byte	PEND
@ 023   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , An2 
	.byte		        Cs3 
	.byte		        En3 
	.byte	W01
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_017
@ 025   ----------------------------------------
mus_blowin_in_the_wind_2_025:
	.byte		N96   , Bn2 , v064
	.byte		N96   , En3 
	.byte		N96   , Gs3 
	.byte	W96
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_016
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_017
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_022
@ 031   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , An2 
	.byte		        Cs3 
	.byte		        En3 
	.byte	W01
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
	 .word	mus_blowin_in_the_wind_2_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_016
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_019
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_017
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_022
@ 055   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , An2 
	.byte		        Cs3 
	.byte		        En3 
	.byte	W01
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_017
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_016
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_019
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_017
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_025
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_016
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_016
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_2_022
@ 065   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   , An2 
	.byte		        Cs3 
	.byte		        En3 
	.byte	W24
	.byte	W01
@ 066   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.4) ****************@

mus_blowin_in_the_wind_3:
	.byte	KEYSH , mus_blowin_in_the_wind_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 26
	.byte		VOL   , 80*mus_blowin_in_the_wind_mvl/mxv
	.byte		PAN   , c_v-20
	.byte	W03
	.byte		N42   , En3 , v108, gtp1
	.byte	W48
	.byte		N19   , En3 , v112
	.byte	W24
	.byte		N22   
	.byte	W21
@ 001   ----------------------------------------
mus_blowin_in_the_wind_3_001:
	.byte	W03
	.byte		N42   , Fs3 , v108
	.byte	W48
	.byte		N18   , Fs3 , v104
	.byte	W24
	.byte		N24   
	.byte	W21
	.byte	PEND
@ 002   ----------------------------------------
mus_blowin_in_the_wind_3_002:
	.byte	W02
	.byte		N48   , En3 , v108, gtp2
	.byte	W48
	.byte		N32   , Cs3 , v116, gtp2
	.byte	W24
	.byte		N22   , Bn2 , v096
	.byte	W22
	.byte	PEND
@ 003   ----------------------------------------
mus_blowin_in_the_wind_3_003:
	.byte	W02
	.byte		N72   , An2 , v108, gtp3
	.byte	W72
	.byte	W01
	.byte		N24   , Cs3 , v116
	.byte	W21
	.byte	PEND
@ 004   ----------------------------------------
mus_blowin_in_the_wind_3_004:
	.byte	W03
	.byte		N64   , En3 , v108, gtp1
	.byte	W72
	.byte		N24   
	.byte	W21
	.byte	PEND
@ 005   ----------------------------------------
mus_blowin_in_the_wind_3_005:
	.byte	W02
	.byte		N42   , Fs3 , v096, gtp1
	.byte	W48
	.byte	W01
	.byte		N21   , Fs3 , v112
	.byte	W24
	.byte		N24   , Fs3 , v112, gtp1
	.byte	W21
	.byte	PEND
@ 006   ----------------------------------------
mus_blowin_in_the_wind_3_006:
	.byte	W03
	.byte		TIE   , En3 , v100
	.byte	W92
	.byte	W01
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	W06
@ 008   ----------------------------------------
mus_blowin_in_the_wind_3_008:
	.byte	W03
	.byte		N42   , En3 , v108, gtp1
	.byte	W48
	.byte	W01
	.byte		N20   
	.byte	W24
	.byte		N16   , En3 , v096
	.byte	W14
	.byte		N44   , Fs3 , v100, gtp3
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
mus_blowin_in_the_wind_3_009:
	.byte	W48
	.byte	W02
	.byte		N18   , Fs3 , v100
	.byte	W24
	.byte		N19   , Fs3 , v088
	.byte	W16
	.byte		N54   , En3 , v100
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
mus_blowin_in_the_wind_3_010:
	.byte	W48
	.byte	W03
	.byte		N24   , Cs3 , v116, gtp1
	.byte	W24
	.byte		N16   , Bn2 , v108
	.byte	W14
	.byte		N80   , An2 , v092, gtp2
	.byte	W07
	.byte	PEND
@ 011   ----------------------------------------
mus_blowin_in_the_wind_3_011:
	.byte	W72
	.byte	W03
	.byte		N17   , Cs3 , v108
	.byte	W13
	.byte		N48   , En3 , v104, gtp2
	.byte	W08
	.byte	PEND
@ 012   ----------------------------------------
mus_blowin_in_the_wind_3_012:
	.byte	W48
	.byte	W03
	.byte		N24   , En3 , v104
	.byte	W23
	.byte		        Cs3 , v116, gtp1
	.byte	W22
	.byte	PEND
@ 013   ----------------------------------------
mus_blowin_in_the_wind_3_013:
	.byte	W03
	.byte		N36   , Dn3 , v104, gtp3
	.byte	W48
	.byte		N24   , Dn3 , v104, gtp1
	.byte	W24
	.byte		N16   , Cs3 , v112
	.byte	W15
	.byte		TIE   , Bn2 , v108
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W48
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		N15   , Cs3 
	.byte	W14
	.byte		N32   , Dn3 , v108, gtp1
	.byte	W30
@ 016   ----------------------------------------
mus_blowin_in_the_wind_3_016:
	.byte	W03
	.byte		N40   , En3 , v104, gtp1
	.byte	W48
	.byte		N17   
	.byte	W23
	.byte		N18   
	.byte	W15
	.byte		N48   , Fs3 , v100, gtp2
	.byte	W07
	.byte	PEND
@ 017   ----------------------------------------
mus_blowin_in_the_wind_3_017:
	.byte	W48
	.byte	W03
	.byte		N16   , Fs3 , v112
	.byte	W24
	.byte		N17   , Fs3 , v092
	.byte	W13
	.byte		N56   , En3 , v104
	.byte	W08
	.byte	PEND
@ 018   ----------------------------------------
mus_blowin_in_the_wind_3_018:
	.byte	W48
	.byte	W02
	.byte		N24   , Cs3 , v116, gtp1
	.byte	W24
	.byte		N16   , Bn2 , v104
	.byte	W13
	.byte		N80   , An2 , v104, gtp3
	.byte	W09
	.byte	PEND
@ 019   ----------------------------------------
mus_blowin_in_the_wind_3_019:
	.byte	W72
	.byte	W03
	.byte		N28   , Cs3 , v112
	.byte	W21
	.byte	PEND
@ 020   ----------------------------------------
mus_blowin_in_the_wind_3_020:
	.byte	W05
	.byte		N36   , En3 , v104, gtp2
	.byte	W44
	.byte	W02
	.byte		N20   
	.byte	W24
	.byte		N24   , En3 , v108
	.byte	W14
	.byte		N48   , Fs3 , v104, gtp3
	.byte	W07
	.byte	PEND
@ 021   ----------------------------------------
mus_blowin_in_the_wind_3_021:
	.byte	W48
	.byte	W03
	.byte		N17   , Fs3 , v108
	.byte	W23
	.byte		N17   
	.byte	W15
	.byte		TIE   , En3 , v096
	.byte	W07
	.byte	PEND
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W72
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		N18   , Cs3 , v116
	.byte	W15
	.byte		N48   , Dn3 , v112, gtp2
	.byte	W07
@ 024   ----------------------------------------
mus_blowin_in_the_wind_3_024:
	.byte	W48
	.byte	W03
	.byte		N24   , Dn3 , v112, gtp1
	.byte	W24
	.byte		N16   , Cs3 , v108
	.byte	W14
	.byte		N72   , Bn2 , v104
	.byte	W07
	.byte	PEND
@ 025   ----------------------------------------
	.byte	W76
	.byte		N23   , Bn2 , v112
	.byte	W20
@ 026   ----------------------------------------
mus_blowin_in_the_wind_3_026:
	.byte	W03
	.byte		N14   , Cs3 , v112
	.byte	W17
	.byte		N21   , Cs3 , v120
	.byte	W30
	.byte	W01
	.byte		N24   , Cs3 , v112, gtp1
	.byte	W23
	.byte		N18   , Bn2 , v104
	.byte	W15
	.byte		N78   , An2 , v100, gtp1
	.byte	W07
	.byte	PEND
@ 027   ----------------------------------------
mus_blowin_in_the_wind_3_027:
	.byte	W72
	.byte	W02
	.byte		N24   , Cs3 , v116, gtp1
	.byte	W22
	.byte	PEND
@ 028   ----------------------------------------
mus_blowin_in_the_wind_3_028:
	.byte	W03
	.byte		N36   , Dn3 , v104, gtp2
	.byte	W44
	.byte	W03
	.byte		N24   , Dn3 , v108, gtp3
	.byte	W24
	.byte	W01
	.byte		        Cs3 , v112, gtp1
	.byte	W21
	.byte	PEND
@ 029   ----------------------------------------
mus_blowin_in_the_wind_3_029:
	.byte	W03
	.byte		N15   , Bn2 , v104
	.byte	W17
	.byte		N30   , Bn2 , v112, gtp1
	.byte	W32
	.byte	W01
	.byte		N21   , An2 , v100
	.byte	W21
	.byte		N18   , Gs2 , v108
	.byte	W16
	.byte		TIE   , An2 , v104
	.byte	W06
	.byte	PEND
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		EOT   
	.byte	W24
	.byte	W03
@ 032   ----------------------------------------
	.byte	W03
	.byte		N42   , En3 , v108, gtp1
	.byte		N42   , En3 , v108, gtp1
	.byte	W48
	.byte		N19   , En3 , v112
	.byte	W24
	.byte		N22   
	.byte	W21
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_003
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_005
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_006
@ 039   ----------------------------------------
	.byte	W90
	.byte		EOT   , En3 
	.byte	W06
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_010
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_012
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_013
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W48
	.byte	W02
	.byte		EOT   , Bn2 
	.byte	W02
	.byte		N15   , Cs3 , v108
	.byte	W14
	.byte		N32   , Dn3 , v108, gtp1
	.byte	W30
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_018
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_019
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_020
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_021
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W72
	.byte	W01
	.byte		EOT   , En3 
	.byte	W01
	.byte		N18   , Cs3 , v116
	.byte	W15
	.byte		N48   , Dn3 , v112, gtp2
	.byte	W07
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_024
@ 057   ----------------------------------------
	.byte	W76
	.byte		N23   , Bn2 , v112
	.byte	W20
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_026
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_027
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_028
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_3_029
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		EOT   , An2 
	.byte	W24
	.byte	W03
@ 064   ----------------------------------------
	.byte	W03
	.byte		N42   , En3 , v108, gtp1
	.byte	W44
	.byte	FINE

@**************** Track 4 (Midi-Chn.5) ****************@

mus_blowin_in_the_wind_4:
	.byte	KEYSH , mus_blowin_in_the_wind_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 25
	.byte		VOL   , 95*mus_blowin_in_the_wind_mvl/mxv
	.byte		PAN   , c_v+20
	.byte		N10   , An1 , v040
	.byte		N09   , Cs3 , v076
	.byte		N10   , En3 , v064
	.byte	W16
	.byte		N08   , An1 , v008
	.byte		N08   , Cs3 , v052
	.byte		N08   , En3 , v056
	.byte	W08
	.byte		N09   , An1 , v040
	.byte		N09   , Cs3 , v052
	.byte		N09   , En3 , v060
	.byte	W16
	.byte		N08   , An1 , v028
	.byte		N08   , Cs3 , v052
	.byte		N08   , En3 , v056
	.byte	W08
	.byte		N09   , An1 
	.byte		N09   , Cs3 , v072
	.byte		N09   , En3 , v060
	.byte	W16
	.byte		N08   , An1 , v020
	.byte		N08   , Cs3 , v060
	.byte		N08   , En3 , v056
	.byte	W08
	.byte		N09   , An1 , v040
	.byte		N09   , Cs3 , v072
	.byte		N09   , En3 , v052
	.byte	W16
	.byte		N08   , An1 , v016
	.byte		N08   , Cs3 , v060
	.byte		N08   , En3 , v052
	.byte	W08
@ 001   ----------------------------------------
mus_blowin_in_the_wind_4_001:
	.byte		N10   , Dn2 , v040
	.byte		N09   , Fs3 , v076
	.byte		N10   , An3 , v064
	.byte	W16
	.byte		N08   , Dn2 , v008
	.byte		N08   , Fs3 , v052
	.byte		N08   , An3 , v056
	.byte	W08
	.byte		N09   , Dn2 , v040
	.byte		N09   , Fs3 , v052
	.byte		N09   , An3 , v060
	.byte	W16
	.byte		N08   , Dn2 , v028
	.byte		N08   , Fs3 , v052
	.byte		N08   , An3 , v056
	.byte	W08
	.byte		N09   , Dn2 
	.byte		N09   , Fs3 , v072
	.byte		N09   , An3 , v060
	.byte	W16
	.byte		N08   , Dn2 , v020
	.byte		N08   , Fs3 , v060
	.byte		N08   , An3 , v056
	.byte	W08
	.byte		N09   , Dn2 , v040
	.byte		N09   , Fs3 , v072
	.byte		N09   , An3 , v052
	.byte	W16
	.byte		N08   , Dn2 , v016
	.byte		N08   , Fs3 , v060
	.byte		N08   , An3 , v052
	.byte	W08
	.byte	PEND
@ 002   ----------------------------------------
mus_blowin_in_the_wind_4_002:
	.byte		N10   , An1 , v040
	.byte		N09   , Cs3 , v076
	.byte		N10   , En3 , v064
	.byte	W16
	.byte		N08   , An1 , v008
	.byte		N08   , Cs3 , v052
	.byte		N08   , En3 , v056
	.byte	W08
	.byte		N09   , An1 , v040
	.byte		N09   , Cs3 , v052
	.byte		N09   , En3 , v060
	.byte	W16
	.byte		N08   , An1 , v028
	.byte		N08   , Cs3 , v052
	.byte		N08   , En3 , v056
	.byte	W08
	.byte		N09   , An1 
	.byte		N09   , Cs3 , v072
	.byte		N09   , En3 , v060
	.byte	W16
	.byte		N08   , An1 , v020
	.byte		N08   , Cs3 , v060
	.byte		N08   , En3 , v056
	.byte	W08
	.byte		N09   , An1 , v040
	.byte		N09   , Cs3 , v072
	.byte		N09   , En3 , v052
	.byte	W16
	.byte		N08   , An1 , v016
	.byte		N08   , Cs3 , v060
	.byte		N08   , En3 , v052
	.byte	W08
	.byte	PEND
@ 003   ----------------------------------------
mus_blowin_in_the_wind_4_003:
	.byte		N10   , An1 , v040
	.byte		N09   , Cs3 , v072
	.byte		N10   , En3 , v028
	.byte	W16
	.byte		N08   , An1 
	.byte		N08   , Cs3 , v064
	.byte		N08   , En3 , v048
	.byte	W08
	.byte		N09   , An1 , v036
	.byte		N10   , Cs3 , v076
	.byte		N09   , En3 , v060
	.byte	W16
	.byte		N08   , An1 , v028
	.byte		N08   , Cs3 , v056
	.byte		N08   , En3 
	.byte	W08
	.byte		N10   , An1 , v036
	.byte		N09   , Cs3 , v072
	.byte		N10   , En3 , v060
	.byte	W16
	.byte		N08   , An1 , v016
	.byte		N08   , Cs3 , v084
	.byte		N08   , En3 , v056
	.byte	W08
	.byte		N09   , An1 , v036
	.byte		N08   , Cs3 , v076
	.byte		N08   , En3 , v072
	.byte	W16
	.byte		        An1 , v020
	.byte		N08   , Cs3 , v068
	.byte		N08   , En3 , v060
	.byte	W08
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_001
@ 006   ----------------------------------------
mus_blowin_in_the_wind_4_006:
	.byte		N10   , En1 , v040
	.byte		N09   , Dn3 , v076
	.byte		N10   , Fs3 , v064
	.byte	W16
	.byte		N08   , En1 , v008
	.byte		N08   , Dn3 , v052
	.byte		N08   , Fs3 , v056
	.byte	W08
	.byte		N09   , En1 , v040
	.byte		N09   , Dn3 , v052
	.byte		N09   , Fs3 , v060
	.byte	W16
	.byte		N08   , En1 , v028
	.byte		N08   , Dn3 , v052
	.byte		N08   , Fs3 , v056
	.byte	W08
	.byte		N09   , En1 
	.byte		N09   , Dn3 , v072
	.byte		N09   , Fs3 , v060
	.byte	W16
	.byte		N08   , En1 , v020
	.byte		N08   , Dn3 , v060
	.byte		N08   , Fs3 , v056
	.byte	W08
	.byte		N09   , En1 , v040
	.byte		N09   , Dn3 , v072
	.byte		N09   , Fs3 , v052
	.byte	W16
	.byte		N08   , En1 , v016
	.byte		N08   , Dn3 , v060
	.byte		N08   , Fs3 , v052
	.byte	W08
	.byte	PEND
@ 007   ----------------------------------------
mus_blowin_in_the_wind_4_007:
	.byte		N10   , En1 , v040
	.byte		N09   , Dn3 , v076
	.byte		N10   , En3 , v064
	.byte	W16
	.byte		N08   , En1 , v008
	.byte		N08   , Dn3 , v052
	.byte		N08   , En3 , v056
	.byte	W08
	.byte		N09   , En1 , v040
	.byte		N09   , Dn3 , v052
	.byte		N09   , En3 , v060
	.byte	W16
	.byte		N08   , En1 , v028
	.byte		N08   , Dn3 , v052
	.byte		N08   , En3 , v056
	.byte	W08
	.byte		N09   , En1 
	.byte		N09   , Dn3 , v072
	.byte		N09   , En3 , v060
	.byte	W16
	.byte		N08   , En1 , v020
	.byte		N08   , Dn3 , v060
	.byte		N08   , En3 , v056
	.byte	W08
	.byte		N09   , En1 , v040
	.byte		N09   , Dn3 , v072
	.byte		N09   , En3 , v052
	.byte	W16
	.byte		N08   , En1 , v016
	.byte		N08   , Dn3 , v060
	.byte		N08   , En3 , v052
	.byte	W08
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_002
@ 011   ----------------------------------------
mus_blowin_in_the_wind_4_011:
	.byte		N10   , Fs1 , v040
	.byte		N09   , En3 , v076
	.byte		N10   , Fs3 , v064
	.byte	W16
	.byte		N08   , Fs1 , v008
	.byte		N08   , En3 , v052
	.byte		N08   , Fs3 , v056
	.byte	W08
	.byte		N09   , Fs1 , v040
	.byte		N09   , En3 , v052
	.byte		N09   , Fs3 , v060
	.byte	W16
	.byte		N08   , Fs1 , v028
	.byte		N08   , En3 , v052
	.byte		N08   , Fs3 , v056
	.byte	W08
	.byte		N09   , Fs1 
	.byte		N09   , En3 , v072
	.byte		N09   , Fs3 , v060
	.byte	W16
	.byte		N08   , Fs1 , v020
	.byte		N08   , En3 , v060
	.byte		N08   , Fs3 , v056
	.byte	W08
	.byte		N09   , Fs1 , v040
	.byte		N09   , En3 , v072
	.byte		N09   , Fs3 , v052
	.byte	W16
	.byte		N08   , Fs1 , v016
	.byte		N08   , En3 , v060
	.byte		N08   , Fs3 , v052
	.byte	W08
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_002
@ 013   ----------------------------------------
mus_blowin_in_the_wind_4_013:
	.byte		N10   , Bn1 , v040
	.byte		N09   , Dn3 , v076
	.byte		N10   , Fs3 , v064
	.byte	W16
	.byte		N08   , Bn1 , v008
	.byte		N08   , Dn3 , v052
	.byte		N08   , Fs3 , v056
	.byte	W08
	.byte		N09   , Bn1 , v040
	.byte		N09   , Dn3 , v052
	.byte		N09   , Fs3 , v060
	.byte	W16
	.byte		N08   , Bn1 , v028
	.byte		N08   , Dn3 , v052
	.byte		N08   , Fs3 , v056
	.byte	W08
	.byte		N09   , Bn1 
	.byte		N09   , Dn3 , v072
	.byte		N09   , Fs3 , v060
	.byte	W16
	.byte		N08   , Bn1 , v020
	.byte		N08   , Dn3 , v060
	.byte		N08   , Fs3 , v056
	.byte	W08
	.byte		N09   , Bn1 , v040
	.byte		N09   , Dn3 , v072
	.byte		N09   , Fs3 , v052
	.byte	W16
	.byte		N08   , Bn1 , v016
	.byte		N08   , Dn3 , v060
	.byte		N08   , Fs3 , v052
	.byte	W08
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_007
@ 015   ----------------------------------------
mus_blowin_in_the_wind_4_015:
	.byte		N10   , En1 , v040
	.byte		N09   , Dn3 , v072
	.byte		N10   , En3 , v028
	.byte	W16
	.byte		N08   , En1 
	.byte		N08   , Dn3 , v064
	.byte		N08   , En3 , v048
	.byte	W08
	.byte		N09   , En1 , v036
	.byte		N10   , Dn3 , v076
	.byte		N09   , En3 , v060
	.byte	W16
	.byte		N08   , En1 , v028
	.byte		N08   , Dn3 , v056
	.byte		N08   , En3 
	.byte	W08
	.byte		N10   , En1 , v036
	.byte		N09   , Dn3 , v072
	.byte		N10   , En3 , v060
	.byte	W16
	.byte		N08   , En1 , v016
	.byte		N08   , Dn3 , v084
	.byte		N08   , En3 , v056
	.byte	W08
	.byte		N09   , En1 , v036
	.byte		N08   , Dn3 , v076
	.byte		N08   , En3 , v072
	.byte	W16
	.byte		        En1 , v020
	.byte		N08   , Dn3 , v068
	.byte		N08   , En3 , v060
	.byte	W08
	.byte	PEND
@ 016   ----------------------------------------
mus_blowin_in_the_wind_4_016:
	.byte		N10   , An1 , v048
	.byte		N09   , Cs3 , v084
	.byte		N10   , En3 , v068
	.byte	W16
	.byte		N08   , An1 , v016
	.byte		N08   , Cs3 , v056
	.byte		N08   , En3 , v060
	.byte	W08
	.byte		N09   , An1 , v048
	.byte		N09   , Cs3 , v056
	.byte		N09   , En3 , v064
	.byte	W16
	.byte		N08   , An1 , v032
	.byte		N08   , Cs3 , v060
	.byte		N08   , En3 
	.byte	W08
	.byte		N09   , An1 
	.byte		N09   , Cs3 , v076
	.byte		N09   , En3 , v068
	.byte	W16
	.byte		N08   , An1 , v028
	.byte		N08   , Cs3 , v064
	.byte		N08   , En3 , v060
	.byte	W08
	.byte		N09   , An1 , v048
	.byte		N09   , Cs3 , v076
	.byte		N09   , En3 , v056
	.byte	W16
	.byte		N08   , An1 , v024
	.byte		N08   , Cs3 , v064
	.byte		N08   , En3 , v056
	.byte	W08
	.byte	PEND
@ 017   ----------------------------------------
mus_blowin_in_the_wind_4_017:
	.byte		N10   , Dn2 , v048
	.byte		N09   , Fs3 , v084
	.byte		N10   , An3 , v068
	.byte	W16
	.byte		N08   , Dn2 , v016
	.byte		N08   , Fs3 , v056
	.byte		N08   , An3 , v060
	.byte	W08
	.byte		N09   , Dn2 , v048
	.byte		N09   , Fs3 , v056
	.byte		N09   , An3 , v064
	.byte	W16
	.byte		N08   , Dn2 , v032
	.byte		N08   , Fs3 , v060
	.byte		N08   , An3 
	.byte	W08
	.byte		N09   , Dn2 
	.byte		N09   , Fs3 , v076
	.byte		N09   , An3 , v068
	.byte	W16
	.byte		N08   , Dn2 , v028
	.byte		N08   , Fs3 , v064
	.byte		N08   , An3 , v060
	.byte	W08
	.byte		N09   , Dn2 , v048
	.byte		N09   , Fs3 , v076
	.byte		N09   , An3 , v056
	.byte	W16
	.byte		N08   , Dn2 , v024
	.byte		N08   , Fs3 , v064
	.byte		N08   , An3 , v056
	.byte	W08
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_016
@ 019   ----------------------------------------
mus_blowin_in_the_wind_4_019:
	.byte		N10   , Fs1 , v048
	.byte		N09   , En3 , v084
	.byte		N10   , Fs3 , v068
	.byte	W16
	.byte		N08   , Fs1 , v016
	.byte		N08   , En3 , v056
	.byte		N08   , Fs3 , v060
	.byte	W08
	.byte		N09   , Fs1 , v048
	.byte		N09   , En3 , v056
	.byte		N09   , Fs3 , v064
	.byte	W16
	.byte		N08   , Fs1 , v032
	.byte		N08   , En3 , v060
	.byte		N08   , Fs3 
	.byte	W08
	.byte		N09   , Fs1 
	.byte		N09   , En3 , v076
	.byte		N09   , Fs3 , v068
	.byte	W16
	.byte		N08   , Fs1 , v028
	.byte		N08   , En3 , v064
	.byte		N08   , Fs3 , v060
	.byte	W08
	.byte		N09   , Fs1 , v048
	.byte		N09   , En3 , v076
	.byte		N09   , Fs3 , v056
	.byte	W16
	.byte		N08   , Fs1 , v024
	.byte		N08   , En3 , v064
	.byte		N08   , Fs3 , v056
	.byte	W08
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_016
@ 023   ----------------------------------------
mus_blowin_in_the_wind_4_023:
	.byte		N10   , An1 , v048
	.byte		N09   , Cs3 , v076
	.byte		N10   , En3 , v032
	.byte	W16
	.byte		N08   , An1 
	.byte		N08   , Cs3 , v068
	.byte		N08   , En3 , v052
	.byte	W08
	.byte		N09   , An1 , v040
	.byte		N10   , Cs3 , v080
	.byte		N09   , En3 , v064
	.byte	W16
	.byte		N08   , An1 , v032
	.byte		N08   , Cs3 , v064
	.byte		N08   , En3 , v060
	.byte	W08
	.byte		N10   , An1 , v040
	.byte		N09   , Cs3 , v076
	.byte		N10   , En3 , v064
	.byte	W16
	.byte		N08   , An1 , v020
	.byte		N08   , Cs3 , v088
	.byte		N08   , En3 , v060
	.byte	W08
	.byte		N09   , An1 , v040
	.byte		N08   , Cs3 , v080
	.byte		N08   , En3 , v076
	.byte	W16
	.byte		        An1 , v028
	.byte		N08   , Cs3 , v076
	.byte		N08   , En3 , v064
	.byte	W08
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_017
@ 025   ----------------------------------------
mus_blowin_in_the_wind_4_025:
	.byte		N10   , En1 , v048
	.byte		N09   , Dn3 , v084
	.byte		N10   , En3 , v068
	.byte	W16
	.byte		N08   , En1 , v016
	.byte		N08   , Dn3 , v056
	.byte		N08   , En3 , v060
	.byte	W08
	.byte		N09   , En1 , v048
	.byte		N09   , Dn3 , v056
	.byte		N09   , En3 , v064
	.byte	W16
	.byte		N08   , En1 , v032
	.byte		N08   , Dn3 , v060
	.byte		N08   , En3 
	.byte	W08
	.byte		N09   , En1 
	.byte		N09   , Dn3 , v076
	.byte		N09   , En3 , v068
	.byte	W16
	.byte		N08   , En1 , v028
	.byte		N08   , Dn3 , v064
	.byte		N08   , En3 , v060
	.byte	W08
	.byte		N09   , En1 , v048
	.byte		N09   , Dn3 , v076
	.byte		N09   , En3 , v056
	.byte	W16
	.byte		N08   , En1 , v024
	.byte		N08   , Dn3 , v064
	.byte		N08   , En3 , v056
	.byte	W08
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_016
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_019
@ 028   ----------------------------------------
mus_blowin_in_the_wind_4_028:
	.byte		N10   , Bn1 , v048
	.byte		N09   , Dn3 , v084
	.byte		N10   , Fs3 , v068
	.byte	W16
	.byte		N08   , Bn1 , v016
	.byte		N08   , Dn3 , v056
	.byte		N08   , Fs3 , v060
	.byte	W08
	.byte		N09   , Bn1 , v048
	.byte		N09   , Dn3 , v056
	.byte		N09   , Fs3 , v064
	.byte	W16
	.byte		N08   , Bn1 , v032
	.byte		N08   , Dn3 , v060
	.byte		N08   , Fs3 
	.byte	W08
	.byte		N09   , Bn1 
	.byte		N09   , Dn3 , v076
	.byte		N09   , Fs3 , v068
	.byte	W16
	.byte		N08   , Bn1 , v028
	.byte		N08   , Dn3 , v064
	.byte		N08   , Fs3 , v060
	.byte	W08
	.byte		N09   , Bn1 , v048
	.byte		N09   , Dn3 , v076
	.byte		N09   , Fs3 , v056
	.byte	W16
	.byte		N08   , Bn1 , v024
	.byte		N08   , Dn3 , v064
	.byte		N08   , Fs3 , v056
	.byte	W08
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_016
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_023
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_003
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_002
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_006
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_007
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_002
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_013
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_007
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_015
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_016
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_019
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_017
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_016
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_023
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_017
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_016
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_019
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_028
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_025
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_016
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_4_016
@ 064   ----------------------------------------
	.byte		N06   , An1 , v040
	.byte		N06   , En2 , v064
	.byte		N05   , Cs3 
	.byte	W02
	.byte		N04   , En3 , v068
	.byte	W04
	.byte	W08
	.byte		N03   , Cs3 , v056
	.byte	W01
	.byte		        An1 , v036
	.byte		N03   , En2 , v032
	.byte		N02   , En3 , v056
	.byte	W08
	.byte		N04   , En2 
	.byte		N02   , Cs3 , v068
	.byte	W01
	.byte		N04   , An1 , v048
	.byte		N03   , En3 , v056
	.byte	W14
	.byte		        An1 , v024
	.byte		N03   , En2 , v056
	.byte		N03   , Cs3 , v040
	.byte		N03   , En3 , v064
	.byte	W09
	.byte		N05   , An1 , v032
	.byte		N03   , Cs3 , v076
	.byte	W01
	.byte		N05   , En2 , v068
	.byte		N04   , En3 , v076
	.byte	W14
	.byte		N03   , Cs3 , v048
	.byte	W01
	.byte		        An1 
	.byte		N03   , En2 , v064
	.byte		N03   , En3 , v068
	.byte	W09
	.byte		N04   , En2 , v056
	.byte		N04   , Cs3 , v044
	.byte	W01
	.byte		        An1 , v036
	.byte		N03   , En3 , v072
	.byte	W12
	.byte		N04   , En2 , v048
	.byte	W01
	.byte		        An1 , v040
	.byte		N03   , Cs3 , v064
	.byte		N03   , En3 
	.byte	W07
	.byte	W01
	.byte		N84   , An1 , v064, gtp2
	.byte	W02
@ 065   ----------------------------------------
	.byte		N80   , En2 , v084, gtp3
	.byte	W01
	.byte		        Cs3 , v084, gtp2
	.byte	W01
	.byte	W03
	.byte		N78   , En3 , v076, gtp1
	.byte	W76
	.byte	W15
@ 066   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_blowin_in_the_wind_5:
	.byte	KEYSH , mus_blowin_in_the_wind_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		VOL   , 101*mus_blowin_in_the_wind_mvl/mxv
	.byte		PAN   , c_v+15
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
mus_blowin_in_the_wind_5_016:
	.byte		N05   , Ds3 , v072
	.byte	W16
	.byte		        Ds3 , v060
	.byte	W08
	.byte		        Ds3 , v072
	.byte	W16
	.byte		        Ds3 , v060
	.byte	W08
	.byte		        Fs2 , v072
	.byte		N05   , Dn3 , v080
	.byte	W16
	.byte		        Ds3 , v060
	.byte	W08
	.byte		        Ds3 , v072
	.byte	W16
	.byte		        Ds3 , v060
	.byte	W08
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 023   ----------------------------------------
mus_blowin_in_the_wind_5_023:
	.byte		N05   , Ds3 , v072
	.byte	W16
	.byte		        Ds3 , v060
	.byte	W08
	.byte		        Ds3 , v072
	.byte	W16
	.byte		        Ds3 , v060
	.byte	W08
	.byte		        Fs2 , v080
	.byte		N05   , Dn3 
	.byte	W16
	.byte		        Fs2 , v040
	.byte		N05   , Ds3 , v060
	.byte	W08
	.byte		        Fs2 , v072
	.byte		N05   , Dn3 
	.byte	W08
	.byte		        Dn3 , v052
	.byte	W08
	.byte		        Ds3 , v072
	.byte	W08
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_023
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
	 .word	mus_blowin_in_the_wind_5_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 051   ----------------------------------------
	.byte		N05   , Ds3 , v072
	.byte	W16
	.byte		        Ds3 , v060
	.byte	W08
	.byte		        Ds3 , v072
	.byte	W16
	.byte		        Ds3 , v060
	.byte	W08
	.byte		        Fs2 , v080
	.byte		N05   , Dn3 
	.byte	W16
	.byte		        Fs2 , v040
	.byte		N05   , Ds3 , v060
	.byte	W08
	.byte		        Fs2 , v072
	.byte		N05   , Ds3 
	.byte	W16
	.byte		        Ds3 , v060
	.byte	W08
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_023
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_016
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_blowin_in_the_wind_5_023
@ 064   ----------------------------------------
	.byte		N05   , Ds3 , v072
	.byte	W16
	.byte		        Ds3 , v060
	.byte	W08
	.byte		        Ds3 , v072
	.byte	W16
	.byte		        Ds3 , v060
	.byte	W08
	.byte		        Fs2 , v072
	.byte		N05   , Dn3 , v080
	.byte	W16
	.byte		        Fs2 , v040
	.byte		N05   , Ds3 , v060
	.byte	W08
	.byte		        Fs2 
	.byte		N05   , Ds3 , v072
	.byte	W16
	.byte		        Ds3 , v060
	.byte	W08
@ 065   ----------------------------------------
	.byte		        Fs2 , v072
	.byte		N05   , Ds3 , v052
	.byte	W17
	.byte		        Fs2 , v040
	.byte		N05   , Ds3 , v052
	.byte	W07
	.byte		        Fs2 , v072
	.byte		N05   , Dn3 , v060
	.byte	W17
	.byte		        Ds3 , v052
	.byte	W07
	.byte		        Fs2 , v072
	.byte		N05   , Ds3 , v052
	.byte	W05
	.byte	FINE

@******************************************************@
	.align	2

mus_blowin_in_the_wind:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_blowin_in_the_wind_pri	@ Priority
	.byte	mus_blowin_in_the_wind_rev	@ Reverb.

	.word	mus_blowin_in_the_wind_grp

	.word	mus_blowin_in_the_wind_1
	.word	mus_blowin_in_the_wind_2
	.word	mus_blowin_in_the_wind_3
	.word	mus_blowin_in_the_wind_4
	.word	mus_blowin_in_the_wind_5

	.end
