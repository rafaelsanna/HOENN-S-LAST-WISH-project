	.include "MPlayDef.s"

	.equ	mus_irreplaceable_beyonce_grp, voicegroup_littleroot_test
	.equ	mus_irreplaceable_beyonce_pri, 0
	.equ	mus_irreplaceable_beyonce_rev, reverb_set+12
	.equ	mus_irreplaceable_beyonce_mvl, 82
	.equ	mus_irreplaceable_beyonce_key, 0
	.equ	mus_irreplaceable_beyonce_tbs, 1
	.equ	mus_irreplaceable_beyonce_exg, 1
	.equ	mus_irreplaceable_beyonce_cmp, 1

	.section .rodata
	.global	mus_irreplaceable_beyonce
	.align	2

@**************** Track 1 (Midi-Chn.2) ****************@

mus_irreplaceable_beyonce_1:
	.byte	KEYSH , mus_irreplaceable_beyonce_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 88*mus_irreplaceable_beyonce_tbs/2
	.byte		VOICE , 33
	.byte		VOL   , 127*mus_irreplaceable_beyonce_mvl/mxv
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
	.byte		N96   , As1 , v100
	.byte	W96
@ 018   ----------------------------------------
	.byte		        Fn1 
	.byte	W96
@ 019   ----------------------------------------
mus_irreplaceable_beyonce_1_019:
	.byte		N88   , Cn1 , v100, gtp1
	.byte	W88
	.byte	W01
	.byte	PEND
	.byte	W01
	.byte		N05   , Dn1 
	.byte	W05
	.byte	W01
@ 020   ----------------------------------------
mus_irreplaceable_beyonce_1_020:
	.byte		N92   , Ds1 , v100, gtp3
	.byte	W92
	.byte	W03
	.byte	PEND
	.byte	W01
@ 021   ----------------------------------------
	.byte		N96   , As1 
	.byte	W96
@ 022   ----------------------------------------
	.byte		        Fn1 
	.byte	W96
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_1_019
	.byte	W01
	.byte		N05   , Dn1 , v100
	.byte	W05
	.byte	W01
@ 024   ----------------------------------------
	.byte		TIE   , Ds1 
	.byte	W96
@ 025   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
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
	.byte		N96   , As1 
	.byte	W96
@ 039   ----------------------------------------
	.byte		        Fn1 
	.byte	W96
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_1_019
	.byte	W01
	.byte		N05   , Dn1 , v100
	.byte	W05
	.byte	W01
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_1_020
	.byte	W01
@ 042   ----------------------------------------
	.byte		N96   , As1 , v100
	.byte	W96
@ 043   ----------------------------------------
	.byte		        Fn1 
	.byte	W96
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_1_019
	.byte	W01
	.byte		N05   , Dn1 , v100
	.byte	W05
	.byte	W01
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_1_020
	.byte	W01
@ 046   ----------------------------------------
mus_irreplaceable_beyonce_1_046:
	.byte		N92   , Fn0 , v100, gtp3
	.byte	W92
	.byte	W03
	.byte	PEND
	.byte	W01
@ 047   ----------------------------------------
mus_irreplaceable_beyonce_1_047:
	.byte		N92   , Fn1 , v100, gtp3
	.byte	W92
	.byte	W03
	.byte	PEND
	.byte	W01
@ 048   ----------------------------------------
	.byte		N68   , Ds1 , v100, gtp2
	.byte	W68
	.byte	W02
	.byte	W02
	.byte		N23   
	.byte	W23
	.byte	W01
@ 049   ----------------------------------------
	.byte		N68   , Fn1 , v100, gtp3
	.byte	W68
	.byte	W03
	.byte	W01
	.byte		N23   , Cn1 
	.byte	W23
	.byte	W01
@ 050   ----------------------------------------
	.byte		N44   , As0 , v100, gtp3
	.byte	W44
	.byte	W03
	.byte	W01
	.byte		        An0 , v100, gtp3
	.byte	W44
	.byte	W03
	.byte	W01
@ 051   ----------------------------------------
	.byte		        Gn0 , v100, gtp3
	.byte	W44
	.byte	W03
	.byte	W01
	.byte		        Fn0 , v100, gtp3
	.byte	W44
	.byte	W03
	.byte	W01
@ 052   ----------------------------------------
	.byte		N68   , Cn1 , v100, gtp3
	.byte	W68
	.byte	W03
	.byte	W01
	.byte		N23   , Dn1 
	.byte	W23
	.byte	W01
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_1_020
	.byte	W01
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_1_047
	.byte	W01
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_1_046
	.byte	W01
@ 056   ----------------------------------------
	.byte		N92   , As0 , v100, gtp3
	.byte	W28
	.byte	W01
	.byte	W06
	.byte	W05
	.byte	W06
	.byte	W07
	.byte	W06
	.byte	W05
	.byte	W06
	.byte	W07
	.byte	W06
	.byte	W05
	.byte	W07
	.byte	W01
@ 057   ----------------------------------------
	.byte	W36
	.byte	W02
	.byte	W56
	.byte	W02
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
	.byte	W12
	.byte		N10   , Ds1 , v052
	.byte	W10
	.byte	W02
	.byte		N09   , Ds1 , v056
	.byte	W09
	.byte	W03
	.byte		        Ds1 , v076
	.byte	W09
	.byte	W03
	.byte		        Ds1 , v084
	.byte	W09
	.byte	W03
	.byte		        Ds1 , v100
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N10   
	.byte	W10
	.byte	W02
@ 065   ----------------------------------------
	.byte		N56   , As0 
	.byte	W56
	.byte	W04
	.byte		N28   
	.byte	W28
	.byte	W02
	.byte		N04   , Fn0 , v092
	.byte	W04
	.byte	W02
@ 066   ----------------------------------------
	.byte		N05   , Fn0 , v100
	.byte	W05
	.byte	W07
	.byte		N40   , Fn0 , v100, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
	.byte		N32   , Fn0 , v100, gtp3
	.byte	W32
	.byte	W03
	.byte	W01
@ 067   ----------------------------------------
mus_irreplaceable_beyonce_1_067:
	.byte		N52   , Cn1 , v100, gtp1
	.byte	W52
	.byte	W01
	.byte	PEND
	.byte	W07
	.byte		N28   
	.byte	W28
	.byte	W02
	.byte		N05   , Dn1 
	.byte	W05
	.byte	W01
@ 068   ----------------------------------------
	.byte		        Ds1 
	.byte	W05
	.byte	W07
	.byte		N40   , Ds1 , v100, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
	.byte		N11   
	.byte	W11
	.byte	W07
	.byte		N17   , Ds0 
	.byte	W17
	.byte	W01
@ 069   ----------------------------------------
	.byte		N56   , As0 
	.byte	W56
	.byte	W04
	.byte		N28   
	.byte	W28
	.byte	W02
	.byte		N04   , Fn0 , v096
	.byte	W04
	.byte	W02
@ 070   ----------------------------------------
	.byte		N05   , Fn0 , v100
	.byte	W05
	.byte	W07
	.byte		N40   , Fn0 , v100, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
	.byte		N32   , Fn0 , v100, gtp3
	.byte	W32
	.byte	W03
	.byte	W01
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_1_067
	.byte	W07
	.byte		N23   , Cn1 , v100
	.byte	W23
	.byte	W07
	.byte		N05   , Dn1 
	.byte	W05
	.byte	W01
@ 072   ----------------------------------------
	.byte		        Ds1 
	.byte	W05
	.byte	W07
	.byte		N40   , Ds1 , v100, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
	.byte		N11   
	.byte	W11
	.byte	W07
	.byte		N17   
	.byte	W06
	.byte		BEND  , c_v+15
	.byte	W01
	.byte		        c_v+37
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+62
	.byte	W09
	.byte	W01
@ 073   ----------------------------------------
	.byte		        c_v+0
	.byte		N56   , As0 
	.byte	W56
	.byte	W04
	.byte		N28   
	.byte	W28
	.byte	W02
	.byte		N04   , Fn0 , v096
	.byte	W04
	.byte	W02
@ 074   ----------------------------------------
	.byte		N05   , Fn0 , v100
	.byte	W05
	.byte	W07
	.byte		N40   , Fn0 , v100, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
	.byte		N32   , Fn0 , v100, gtp3
	.byte	W32
	.byte	W03
	.byte	W01
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_1_067
	.byte	W07
	.byte		N22   , Cn1 , v100
	.byte	W22
	.byte	W08
	.byte		N05   , Dn1 
	.byte	W05
	.byte	W01
@ 076   ----------------------------------------
	.byte		        Ds1 
	.byte	W05
	.byte	W07
	.byte		N40   , Ds1 , v100, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
	.byte		N11   
	.byte	W11
	.byte	W07
	.byte		N17   , Ds0 
	.byte	W17
	.byte	W01
@ 077   ----------------------------------------
	.byte		N56   , As0 
	.byte	W56
	.byte	W04
	.byte		N28   
	.byte	W28
	.byte	W02
	.byte		N04   , Fn0 , v096
	.byte	W04
	.byte	W02
@ 078   ----------------------------------------
	.byte		N05   , Fn0 , v100
	.byte	W05
	.byte	W07
	.byte		N40   , Fn0 , v100, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
	.byte		N32   , Fn0 , v100, gtp3
	.byte	W32
	.byte	W03
	.byte	W01
@ 079   ----------------------------------------
	.byte		N52   , Ds0 , v100, gtp1
	.byte	W52
	.byte	W01
	.byte	W07
	.byte		N28   
	.byte	W28
	.byte	W08
@ 080   ----------------------------------------
	.byte		N52   , Fn0 , v100, gtp1
	.byte	W52
	.byte	W01
	.byte	W07
	.byte		N23   
	.byte	W23
	.byte	W07
	.byte		N04   
	.byte	W04
	.byte	W02
@ 081   ----------------------------------------
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N40   , Fn0 , v100, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
	.byte		N16   
	.byte	W16
	.byte	W02
	.byte		N16   
	.byte	W16
	.byte	W02
@ 082   ----------------------------------------
	.byte		TIE   , As0 , v084
	.byte	W48
	.byte	W03
	.byte	W06
	.byte	W05
	.byte	W06
	.byte	W05
	.byte	W06
	.byte	W05
	.byte	W06
	.byte	W06
@ 083   ----------------------------------------
	.byte	W01
	.byte	W06
	.byte	W05
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W05
	.byte	W06
	.byte	W06
	.byte	W05
	.byte	W06
	.byte	W05
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte		EOT   
	.byte	W03
@ 084   ----------------------------------------
	.byte	W03
	.byte	W05
	.byte	W84
	.byte	W04
@ 085   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte	FINE

@**************** Track 2 (Midi-Chn.4) ****************@

mus_irreplaceable_beyonce_2:
	.byte	KEYSH , mus_irreplaceable_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte		VOL   , 115*mus_irreplaceable_beyonce_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N03   , Fn3 , v100
	.byte	W03
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N08   
	.byte	W08
	.byte	W16
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W36
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W17
@ 004   ----------------------------------------
	.byte	W60
	.byte		N32   
	.byte	W32
	.byte	W04
@ 005   ----------------------------------------
	.byte	W36
	.byte		N03   
	.byte	W03
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N08   
	.byte	W08
	.byte	W16
@ 006   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N08   
	.byte	W09
	.byte	W03
	.byte		N03   , Dn3 
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W02
	.byte		N09   , Fn3 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		        Gn3 
	.byte	W04
	.byte	W02
	.byte		N07   , Fn3 
	.byte	W07
	.byte	W16
	.byte		N08   , Ds3 
	.byte	W01
@ 007   ----------------------------------------
	.byte	W08
	.byte	W04
	.byte		N04   , Dn3 
	.byte	W04
	.byte	W02
	.byte		N09   , Cn3 
	.byte	W09
	.byte	W03
	.byte		N05   , As2 
	.byte	W05
	.byte	W13
	.byte		N07   , Ds3 
	.byte	W07
	.byte	W05
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W07
	.byte		        Cn3 
	.byte	W05
	.byte	W07
	.byte		N04   , As2 
	.byte	W04
	.byte	W07
	.byte		        Ds3 
	.byte	W01
@ 008   ----------------------------------------
	.byte	W03
	.byte	W03
	.byte		N07   , Dn3 
	.byte	W07
	.byte	W05
	.byte		N09   , Cn3 
	.byte	W10
	.byte	W02
	.byte		N05   , As2 
	.byte	W06
	.byte	W12
	.byte		N04   , Ds3 
	.byte	W04
	.byte	W08
	.byte		        Fn3 
	.byte	W05
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	W19
@ 009   ----------------------------------------
	.byte	W11
	.byte		N06   , As3 
	.byte	W06
	.byte	W06
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W05
	.byte		N07   
	.byte	W08
	.byte	W04
	.byte		        Fn3 
	.byte	W08
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte	W02
	.byte		N05   
	.byte	W06
	.byte	W06
@ 010   ----------------------------------------
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		        Gn3 
	.byte	W05
	.byte	W01
	.byte		N07   , An3 
	.byte	W07
	.byte	W05
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W02
	.byte		N05   , An3 
	.byte	W05
	.byte	W07
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W02
	.byte		N07   , An3 
	.byte	W07
	.byte	W04
	.byte		N08   
	.byte	W09
	.byte	W03
	.byte		N05   , Gn3 
	.byte	W06
	.byte	W07
@ 011   ----------------------------------------
	.byte	W12
	.byte		N03   , As3 
	.byte	W03
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N04   , Fn3 
	.byte	W04
	.byte	W01
	.byte		        Gn3 
	.byte	W05
	.byte	W01
	.byte		        Fn3 
	.byte	W05
	.byte	W01
	.byte		N05   , Gn3 
	.byte	W06
	.byte	W06
	.byte		N06   , As3 
	.byte	W06
	.byte	W07
	.byte		N10   , Gn3 
	.byte	W11
	.byte	W07
	.byte		N04   , Fn3 
	.byte	W05
	.byte		        Gn3 
	.byte	W01
@ 012   ----------------------------------------
	.byte	W03
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N04   , As3 
	.byte	W04
	.byte	W02
	.byte		N05   , Gn3 
	.byte	W06
	.byte	W06
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W03
	.byte		N04   
	.byte	W05
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W07
	.byte	W05
	.byte		N04   , As3 
	.byte	W05
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W02
	.byte		N10   , Gn3 
	.byte	W11
	.byte	W14
@ 013   ----------------------------------------
	.byte		N04   
	.byte	W04
	.byte	W08
	.byte		N05   
	.byte	W06
	.byte	W06
	.byte		N05   
	.byte	W05
	.byte	W06
	.byte		N04   
	.byte	W04
	.byte	W03
	.byte		N05   
	.byte	W05
	.byte	W06
	.byte		N16   , Fn3 
	.byte	W16
	.byte	W03
	.byte		N05   , Ds3 
	.byte	W05
	.byte	W01
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte	W08
@ 014   ----------------------------------------
	.byte		N10   , Fn3 
	.byte	W10
	.byte	W02
	.byte		N07   , Dn3 
	.byte	W08
	.byte	W04
	.byte		N06   , Fn3 
	.byte	W06
	.byte	W01
	.byte		N07   , Dn3 
	.byte	W07
	.byte	W03
	.byte		N15   , Gn3 
	.byte	W16
	.byte	W15
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W01
	.byte		N03   , Fn3 
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
@ 015   ----------------------------------------
	.byte	W11
	.byte		N03   , Gn3 
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W01
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte	W03
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N03   
	.byte	W03
	.byte	W02
	.byte		N10   
	.byte	W10
	.byte	W03
	.byte		N03   , Fn3 
	.byte	W04
	.byte	W02
	.byte		N10   
	.byte	W10
	.byte	W02
	.byte		N07   , Dn3 
	.byte	W08
	.byte	W04
	.byte		N44   , Fn3 
	.byte	W06
@ 016   ----------------------------------------
	.byte	W36
	.byte	W02
	.byte	W04
	.byte		N02   , Dn3 
	.byte	W02
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte	W05
	.byte		N08   , Ds3 
	.byte	W09
	.byte	W03
	.byte		N06   , Gn3 
	.byte	W07
	.byte	W06
	.byte		N18   , Fn3 
	.byte	W12
@ 017   ----------------------------------------
	.byte	W06
	.byte	W02
	.byte	W01
	.byte		MOD   , 10
	.byte	W03
	.byte		N08   , As3 
	.byte	W08
	.byte	W04
	.byte		N06   , Fn3 
	.byte	W07
	.byte	W05
	.byte		N09   , Dn3 
	.byte	W09
	.byte	W03
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N09   
	.byte	W01
	.byte		BEND  , c_v-43
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte	W03
	.byte		N13   , Fn3 
	.byte	W13
	.byte	W05
	.byte		N08   , As3 
	.byte	W08
	.byte	W04
@ 018   ----------------------------------------
	.byte		N06   , Fn3 
	.byte	W07
	.byte	W05
	.byte		N09   , Dn3 
	.byte	W09
	.byte	W03
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N09   
	.byte	W02
	.byte		BEND  , c_v-43
	.byte		        c_v+1
	.byte	W07
	.byte	W03
	.byte		N13   , Fn3 
	.byte	W13
	.byte	W17
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 019   ----------------------------------------
	.byte		N10   , Dn4 
	.byte	W11
	.byte		N05   , Ds4 
	.byte	W05
	.byte	W02
	.byte		N06   , Dn4 
	.byte	W07
	.byte	W10
	.byte		N05   , Cn4 
	.byte	W06
	.byte	W01
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N05   , As3 
	.byte	W05
	.byte	W01
	.byte		N07   , Cn4 
	.byte	W07
	.byte	W10
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N05   
	.byte	W06
	.byte	W07
@ 020   ----------------------------------------
	.byte		N10   , Dn4 
	.byte	W10
	.byte	W01
	.byte		N05   , Ds4 
	.byte	W05
	.byte	W02
	.byte		N06   , Dn4 
	.byte	W07
	.byte	W10
	.byte		N05   , Cn4 
	.byte	W06
	.byte	W01
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N05   , As3 
	.byte	W05
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W07
	.byte	W10
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N11   
	.byte	W03
	.byte		BEND  , c_v-59
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-12
	.byte		        c_v+0
	.byte	W07
	.byte	W01
	.byte		N18   , Fn3 
	.byte	W12
@ 021   ----------------------------------------
	.byte	W06
	.byte	W06
	.byte		N08   , As3 
	.byte	W08
	.byte	W04
	.byte		N06   , Fn3 
	.byte	W07
	.byte	W05
	.byte		N09   , Dn3 
	.byte	W09
	.byte	W03
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N09   
	.byte	W02
	.byte		BEND  , c_v-43
	.byte		        c_v+1
	.byte	W07
	.byte	W03
	.byte		N13   , Fn3 
	.byte	W13
	.byte	W05
	.byte		N08   , As3 
	.byte	W08
	.byte	W04
@ 022   ----------------------------------------
	.byte		N06   , Fn3 
	.byte	W07
	.byte	W05
	.byte		N09   , Dn3 
	.byte	W09
	.byte	W03
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N09   
	.byte	W02
	.byte		BEND  , c_v-43
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte	W03
	.byte		N13   , Fn3 
	.byte	W13
	.byte	W17
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 023   ----------------------------------------
	.byte		N10   , Dn4 
	.byte	W11
	.byte		N05   , Ds4 
	.byte	W05
	.byte	W02
	.byte		N06   , Dn4 
	.byte	W07
	.byte	W10
	.byte		N05   , Cn4 
	.byte	W06
	.byte	W01
	.byte		N04   , As3 
	.byte	W04
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N07   , Cn4 
	.byte	W07
	.byte	W05
	.byte		N02   , Fn3 
	.byte	W03
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   
	.byte	W08
	.byte	W03
	.byte		N09   , Fs3 
	.byte	W01
@ 024   ----------------------------------------
	.byte	W09
	.byte	W03
	.byte		N08   
	.byte	W09
	.byte	W03
	.byte		N10   , As3 
	.byte	W10
	.byte	W02
	.byte		N08   
	.byte	W08
	.byte	W04
	.byte		N09   , Cn4 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N07   , Dn4 
	.byte	W07
	.byte	W04
	.byte		N03   , Cn4 
	.byte	W04
	.byte	W02
	.byte		N07   , Dn4 
	.byte	W07
@ 025   ----------------------------------------
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v-14
	.byte	W01
	.byte		N36   , Cn4 , v100, gtp1
	.byte	W06
	.byte		BEND  , c_v-12
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W30
	.byte	W05
	.byte		N09   , Fn3 
	.byte	W10
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W01
	.byte		N09   , An3 
	.byte	W10
	.byte	W02
	.byte		N04   , As3 
	.byte	W05
	.byte	W01
	.byte		N20   
	.byte	W12
@ 026   ----------------------------------------
	.byte	W05
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-13
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-64
	.byte	W01
	.byte	W04
	.byte		        c_v+0
	.byte	W12
	.byte	W06
	.byte		N02   , Fn3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N03   
	.byte	W03
	.byte	W02
	.byte		BEND  , c_v-33
	.byte	W01
	.byte		N05   , As3 
	.byte	W02
	.byte		BEND  , c_v-13
	.byte		        c_v+0
	.byte	W03
	.byte	W07
	.byte		N16   , Fn3 
	.byte	W17
	.byte	W07
@ 027   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W02
	.byte		N06   
	.byte	W07
	.byte	W06
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W06
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W08
	.byte		N03   , Dn3 
	.byte	W04
	.byte	W02
	.byte		N02   , Fn3 
	.byte	W02
	.byte	W03
	.byte		N04   
	.byte	W05
	.byte	W02
	.byte		N07   , Dn3 
	.byte	W07
	.byte	W05
	.byte		N21   , Fn3 
	.byte	W15
	.byte		BEND  , c_v-3
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte	W02
	.byte		        c_v+1
	.byte	W01
@ 028   ----------------------------------------
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N04   , Ds3 
	.byte	W04
	.byte	W02
	.byte		        Dn3 
	.byte	W05
	.byte	W06
	.byte		N05   , Cn3 
	.byte	W06
	.byte	W01
	.byte		N04   , As2 
	.byte	W04
	.byte	W08
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N09   , Dn3 
	.byte	W09
	.byte	W02
	.byte		N04   , Cn3 
	.byte	W05
	.byte	W02
	.byte		N03   , As2 
	.byte	W03
	.byte	W03
	.byte		N08   
	.byte	W08
	.byte	W10
@ 029   ----------------------------------------
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W02
	.byte		N05   
	.byte	W06
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		N07   , Dn3 
	.byte	W07
	.byte	W11
	.byte		N03   , As2 
	.byte	W03
	.byte	W02
	.byte		N05   
	.byte	W06
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		N03   , Fn3 
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W02
	.byte		N09   , Gn3 
	.byte	W09
	.byte	W01
	.byte		BEND  , c_v+62
	.byte	W02
	.byte		N36   , Fn3 , v100, gtp3
	.byte	W06
	.byte		BEND  , c_v+43
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+0
	.byte	W11
@ 030   ----------------------------------------
	.byte	W22
	.byte	W08
	.byte		N04   
	.byte	W05
	.byte	W01
	.byte		N10   , Gn3 
	.byte	W10
	.byte	W02
	.byte		N04   , As3 
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N08   , Gn3 
	.byte	W09
	.byte	W02
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		N21   , Cn4 
	.byte	W03
	.byte		BEND  , c_v-23
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v+1
	.byte	W17
	.byte	W03
@ 031   ----------------------------------------
	.byte		N05   , Fn3 
	.byte	W05
	.byte		        Gn3 
	.byte	W06
	.byte	W01
	.byte		N04   , An3 
	.byte	W05
	.byte		N05   , Gn3 
	.byte	W06
	.byte	W01
	.byte		N09   , An3 
	.byte	W09
	.byte	W03
	.byte		N05   
	.byte	W05
	.byte		        Gn3 
	.byte	W05
	.byte	W01
	.byte		N09   , An3 
	.byte	W09
	.byte	W04
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte		N06   , An3 
	.byte	W07
	.byte	W06
	.byte		N32   , As3 , v100, gtp3
	.byte	W02
	.byte		BEND  , c_v+19
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+44
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+60
	.byte		        c_v+63
	.byte	W08
@ 032   ----------------------------------------
	.byte		        c_v+53
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+1
	.byte	W23
	.byte	W12
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte	W05
	.byte		        As3 
	.byte	W07
	.byte	W04
	.byte		N11   
	.byte	W12
	.byte	W01
	.byte		N13   , Fn3 
	.byte	W12
@ 033   ----------------------------------------
	.byte	W02
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N05   , Gn3 
	.byte	W06
	.byte	W01
	.byte		        As3 
	.byte	W05
	.byte	W07
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W02
	.byte		        As3 
	.byte	W04
	.byte	W02
	.byte		N03   , Gn3 
	.byte	W03
	.byte	W02
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N08   , Cn4 
	.byte	W01
	.byte		BEND  , c_v-46
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v+0
	.byte	W06
	.byte	W04
	.byte		N08   , Gn3 
	.byte	W08
	.byte	W04
	.byte		N20   , Cn4 
	.byte	W17
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-13
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-40
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v+0
	.byte	W01
@ 034   ----------------------------------------
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W08
	.byte		N05   
	.byte	W06
	.byte	W06
	.byte		N05   
	.byte	W05
	.byte	W06
	.byte		N04   
	.byte	W04
	.byte	W03
	.byte		N05   
	.byte	W05
	.byte	W06
	.byte		N16   , Fn3 
	.byte	W16
	.byte	W03
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W01
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte	W08
@ 035   ----------------------------------------
	.byte		N10   , Fn3 
	.byte	W10
	.byte	W02
	.byte		N07   , As3 
	.byte	W08
	.byte	W04
	.byte		N06   , Fn3 
	.byte	W06
	.byte	W03
	.byte		N07   , As3 
	.byte	W07
	.byte	W04
	.byte		N15   , Gn3 
	.byte	W16
	.byte	W12
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W01
	.byte		N03   , Fn3 
	.byte	W04
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
@ 036   ----------------------------------------
	.byte	W11
	.byte		N03   , Gn3 
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W01
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte	W03
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N03   
	.byte	W03
	.byte	W02
	.byte		BEND  , c_v-32
	.byte		N10   , As3 
	.byte	W02
	.byte		BEND  , c_v-24
	.byte		        c_v-14
	.byte		        c_v+1
	.byte	W08
	.byte	W03
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N10   , Cn4 
	.byte	W10
	.byte	W01
	.byte		N07   , Dn4 
	.byte	W08
	.byte	W04
	.byte		BEND  , c_v-33
	.byte	W01
	.byte		N10   
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v+1
	.byte	W04
@ 037   ----------------------------------------
	.byte	W05
	.byte	W01
	.byte		N04   , Cn4 
	.byte	W04
	.byte	W01
	.byte		N05   , As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N13   , Fn3 
	.byte	W13
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte	W03
	.byte		N06   , As3 
	.byte	W06
	.byte	W05
	.byte		N08   
	.byte	W09
	.byte	W03
	.byte		BEND  , c_v-33
	.byte		N05   , Gn3 
	.byte	W02
	.byte		BEND  , c_v-24
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v+0
	.byte	W03
	.byte	W07
	.byte		N18   , Fn3 
	.byte	W12
@ 038   ----------------------------------------
	.byte	W06
	.byte	W03
	.byte	W03
	.byte		N08   , As3 
	.byte	W08
	.byte	W04
	.byte		N06   , Fn3 
	.byte	W07
	.byte	W05
	.byte		N09   , Dn3 
	.byte	W09
	.byte	W03
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N09   
	.byte	W02
	.byte		BEND  , c_v-43
	.byte		        c_v+1
	.byte	W07
	.byte	W03
	.byte		N13   , Fn3 
	.byte	W13
	.byte	W05
	.byte		N08   , As3 
	.byte	W08
	.byte	W04
@ 039   ----------------------------------------
	.byte		N06   , Fn3 
	.byte	W07
	.byte	W05
	.byte		N09   , Dn3 
	.byte	W09
	.byte	W03
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N09   
	.byte	W02
	.byte		BEND  , c_v-43
	.byte		        c_v+0
	.byte	W07
	.byte	W03
	.byte		N13   , Fn3 
	.byte	W13
	.byte	W17
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 040   ----------------------------------------
	.byte		N10   , Dn4 
	.byte	W11
	.byte		N05   , Ds4 
	.byte	W05
	.byte	W02
	.byte		N06   , Dn4 
	.byte	W07
	.byte	W10
	.byte		N05   , Cn4 
	.byte	W06
	.byte	W01
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N05   , As3 
	.byte	W05
	.byte	W01
	.byte		N07   , Cn4 
	.byte	W07
	.byte	W10
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N05   
	.byte	W06
	.byte	W07
@ 041   ----------------------------------------
	.byte		N10   , Dn4 
	.byte	W10
	.byte	W01
	.byte		N05   , Ds4 
	.byte	W05
	.byte	W02
	.byte		N06   , Dn4 
	.byte	W07
	.byte	W10
	.byte		N05   , Cn4 
	.byte	W06
	.byte	W01
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N05   , As3 
	.byte	W05
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W07
	.byte	W10
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N11   
	.byte	W03
	.byte		BEND  , c_v-59
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-12
	.byte		        c_v+1
	.byte	W07
	.byte	W01
	.byte		N18   , Fn3 
	.byte	W12
@ 042   ----------------------------------------
	.byte	W06
	.byte	W06
	.byte		N08   , As3 
	.byte	W08
	.byte	W04
	.byte		N06   , Fn3 
	.byte	W07
	.byte	W05
	.byte		N09   , Dn3 
	.byte	W09
	.byte	W03
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N09   
	.byte	W02
	.byte		BEND  , c_v-43
	.byte		        c_v+0
	.byte	W07
	.byte	W03
	.byte		N13   , Fn3 
	.byte	W13
	.byte	W05
	.byte		N08   , As3 
	.byte	W08
	.byte	W04
@ 043   ----------------------------------------
	.byte		N06   , Fn3 
	.byte	W07
	.byte	W05
	.byte		N09   , Dn3 
	.byte	W09
	.byte	W03
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N09   
	.byte	W02
	.byte		BEND  , c_v-43
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte	W03
	.byte		N13   , Fn3 
	.byte	W13
	.byte	W17
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 044   ----------------------------------------
	.byte		N10   , Dn4 
	.byte	W11
	.byte		N05   , Ds4 
	.byte	W05
	.byte	W02
	.byte		N06   , Dn4 
	.byte	W07
	.byte	W10
	.byte		N05   , Cn4 
	.byte	W06
	.byte	W01
	.byte		N04   , As3 
	.byte	W04
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N07   , Cn4 
	.byte	W07
	.byte	W05
	.byte		N02   , Fn3 
	.byte	W03
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   
	.byte	W08
	.byte	W03
	.byte		N09   , Fs3 
	.byte	W01
@ 045   ----------------------------------------
	.byte	W09
	.byte	W03
	.byte		N08   
	.byte	W09
	.byte	W03
	.byte		N10   , As3 
	.byte	W10
	.byte	W02
	.byte		N08   
	.byte	W08
	.byte	W04
	.byte		N09   , Cn4 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N07   , Dn4 
	.byte	W07
	.byte	W04
	.byte		N03   , Cn4 
	.byte	W04
	.byte	W02
	.byte		N08   , Dn4 
	.byte	W07
@ 046   ----------------------------------------
	.byte	W02
	.byte	W04
	.byte		N60   , Cn4 
	.byte	W60
	.byte	W01
	.byte	W23
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W01
@ 047   ----------------------------------------
	.byte		N10   , Ds4 
	.byte	W10
	.byte	W01
	.byte		N07   , Dn4 
	.byte	W08
	.byte		N10   , Cn4 
	.byte	W10
	.byte		N07   , Dn4 
	.byte	W08
	.byte	W01
	.byte		N20   
	.byte	W15
	.byte		BEND  , c_v+0
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+25
	.byte	W03
	.byte		        c_v+16
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte	W01
	.byte		N42   , Cn4 , v100, gtp1
	.byte	W12
	.byte		BEND  , c_v-6
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-64
	.byte	W23
@ 048   ----------------------------------------
	.byte	W08
	.byte	W07
	.byte		        c_v+0
	.byte	W03
	.byte	W24
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W02
	.byte		N06   , As3 
	.byte	W07
	.byte	W05
	.byte		N08   , Gn3 
	.byte	W09
	.byte	W03
	.byte		N07   , As3 
	.byte	W07
	.byte	W05
	.byte		N06   , Gn3 
	.byte	W06
	.byte	W06
@ 049   ----------------------------------------
	.byte		N10   , Cn4 
	.byte	W10
	.byte	W02
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W02
	.byte		N24   
	.byte	W05
	.byte		BEND  , c_v-1
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-38
	.byte		        c_v-48
	.byte		        c_v-55
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W18
	.byte	W01
	.byte		        c_v+1
	.byte	W04
	.byte		N04   , As3 
	.byte	W05
	.byte	W01
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W01
	.byte		N10   , Dn4 
	.byte	W10
	.byte	W02
	.byte		        Cn4 
	.byte	W10
	.byte	W01
	.byte		N09   , As3 
	.byte	W10
	.byte	W03
@ 050   ----------------------------------------
	.byte		N16   , An3 
	.byte	W16
	.byte	W01
	.byte		N24   , As3 
	.byte	W24
	.byte	W01
	.byte	W05
	.byte		N05   , An3 
	.byte	W05
	.byte	W01
	.byte		N07   , As3 
	.byte	W08
	.byte	W04
	.byte		N05   , Gn3 
	.byte	W05
	.byte	W02
	.byte		N10   , As3 
	.byte	W11
	.byte		N04   , Cn4 
	.byte	W05
	.byte	W01
	.byte		N23   , Dn4 
	.byte	W07
@ 051   ----------------------------------------
	.byte	W13
	.byte		BEND  , c_v-8
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-23
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-42
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-59
	.byte		        c_v-64
	.byte	W01
	.byte	W03
	.byte		        c_v+0
	.byte	W16
	.byte		N04   , As3 
	.byte	W04
	.byte	W02
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W01
	.byte		N10   , Dn4 
	.byte	W11
	.byte	W01
	.byte		        Cn4 
	.byte	W05
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v-29
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-64
	.byte	W03
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N10   
	.byte	W05
	.byte		BEND  , c_v-1
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-56
	.byte		        c_v-64
	.byte	W04
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte		N10   , As3 
	.byte	W05
	.byte		BEND  , c_v-1
	.byte		        c_v-31
	.byte	W05
	.byte	W01
	.byte		        c_v+0
	.byte	W01
@ 052   ----------------------------------------
	.byte		N16   , Gn3 
	.byte	W16
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N16   
	.byte	W01
	.byte		BEND  , c_v-49
	.byte	W01
	.byte		        c_v-34
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-10
	.byte		        c_v+1
	.byte	W14
	.byte		N05   , Fn3 
	.byte	W06
	.byte		N04   , En3 
	.byte	W05
	.byte	W02
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W01
	.byte		N18   , Cn3 
	.byte	W18
	.byte	W24
@ 053   ----------------------------------------
	.byte		N09   , Ds3 
	.byte	W09
	.byte	W02
	.byte		N09   
	.byte	W10
	.byte	W02
	.byte		N11   , Gn3 
	.byte	W12
	.byte	W01
	.byte		N05   , Fn3 
	.byte	W05
	.byte	W01
	.byte		N10   , Gn3 
	.byte	W10
	.byte	W01
	.byte		        An3 
	.byte	W11
	.byte	W02
	.byte		N24   , As3 , v100, gtp1
	.byte	W24
	.byte	W01
	.byte	W05
@ 054   ----------------------------------------
	.byte		N10   , Fn3 
	.byte	W11
	.byte		N04   , Gn3 
	.byte	W05
	.byte	W02
	.byte		N09   , An3 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W10
	.byte	W02
	.byte		N05   , Gn3 
	.byte	W05
	.byte		N11   , An3 
	.byte	W12
	.byte	W01
	.byte		N04   , As3 
	.byte	W05
	.byte	W01
	.byte		N20   , Cn4 
	.byte	W21
	.byte	W03
	.byte		N03   , As3 
	.byte	W03
	.byte	W03
@ 055   ----------------------------------------
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N10   , Dn4 
	.byte	W10
	.byte	W02
	.byte		N09   , Cn4 
	.byte	W09
	.byte	W03
	.byte		N03   , As3 
	.byte	W03
	.byte	W03
	.byte		N10   
	.byte	W11
	.byte	W01
	.byte		N11   , Dn4 
	.byte	W11
	.byte	W01
	.byte		N17   , Cn4 
	.byte	W11
	.byte		BEND  , c_v+9
	.byte	W01
	.byte		        c_v+23
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+58
	.byte		        c_v+62
	.byte	W02
	.byte		        c_v+63
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N17   , As3 
	.byte	W13
@ 056   ----------------------------------------
	.byte	W05
	.byte	W22
	.byte	W09
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N08   
	.byte	W08
	.byte	W16
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W36
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W17
@ 059   ----------------------------------------
	.byte	W60
	.byte		N32   
	.byte	W32
	.byte	W04
@ 060   ----------------------------------------
	.byte	W36
	.byte		N03   
	.byte	W03
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N08   
	.byte	W08
	.byte	W16
@ 061   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N08   
	.byte	W09
	.byte	W03
	.byte		N03   , Dn3 
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W02
	.byte		N09   , Fn3 
	.byte	W09
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		        Gn3 
	.byte	W04
	.byte	W02
	.byte		N07   , Fn3 
	.byte	W07
	.byte	W17
@ 062   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N07   
	.byte	W08
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte	W02
	.byte		N08   
	.byte	W09
	.byte	W04
	.byte		N10   
	.byte	W10
	.byte	W02
@ 063   ----------------------------------------
	.byte		N09   , Fs3 
	.byte	W09
	.byte	W03
	.byte		N10   
	.byte	W10
	.byte	W02
	.byte		N09   , As3 
	.byte	W10
	.byte	W02
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		        Cn4 
	.byte	W09
	.byte	W03
	.byte		N07   
	.byte	W07
	.byte	W04
	.byte		N09   , Dn4 
	.byte	W10
	.byte	W03
	.byte		N03   , Cn4 
	.byte	W03
	.byte	W03
	.byte		N06   , Dn4 
	.byte	W06
@ 064   ----------------------------------------
	.byte	W06
	.byte		N28   , Cn4 , v100, gtp1
	.byte	W28
	.byte	W01
	.byte	W09
	.byte	W04
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte	W01
	.byte		N04   
	.byte	W05
	.byte	W02
	.byte		N08   , An3 
	.byte	W08
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte	W01
	.byte		N15   , As3 
	.byte	W12
@ 065   ----------------------------------------
	.byte	W03
	.byte	W03
	.byte	W06
	.byte		N08   
	.byte	W08
	.byte	W04
	.byte		N06   , Fn3 
	.byte	W07
	.byte	W05
	.byte		N09   , Dn3 
	.byte	W09
	.byte	W03
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N09   
	.byte	W02
	.byte		BEND  , c_v-43
	.byte		        c_v+1
	.byte	W07
	.byte	W03
	.byte		N13   , Fn3 
	.byte	W13
	.byte	W05
	.byte		N08   , As3 
	.byte	W08
	.byte	W04
@ 066   ----------------------------------------
	.byte		N06   , Fn3 
	.byte	W07
	.byte	W05
	.byte		N09   , Dn3 
	.byte	W09
	.byte	W03
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N09   
	.byte	W02
	.byte		BEND  , c_v-43
	.byte		        c_v+0
	.byte	W07
	.byte	W03
	.byte		N13   , Fn3 
	.byte	W13
	.byte	W17
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 067   ----------------------------------------
	.byte		N10   , Dn4 
	.byte	W11
	.byte		N05   , Ds4 
	.byte	W05
	.byte	W02
	.byte		N06   , Dn4 
	.byte	W07
	.byte	W10
	.byte		N05   , Cn4 
	.byte	W06
	.byte	W01
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N05   , As3 
	.byte	W05
	.byte	W01
	.byte		N07   , Cn4 
	.byte	W07
	.byte	W10
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N05   
	.byte	W06
	.byte	W07
@ 068   ----------------------------------------
	.byte		N10   , Dn4 
	.byte	W10
	.byte	W01
	.byte		N05   , Ds4 
	.byte	W05
	.byte	W02
	.byte		N06   , Dn4 
	.byte	W07
	.byte	W10
	.byte		N05   , Cn4 
	.byte	W06
	.byte	W01
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N05   , As3 
	.byte	W05
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W07
	.byte	W10
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N17   , Dn4 
	.byte	W03
	.byte		BEND  , c_v-59
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-11
	.byte		        c_v+0
	.byte	W13
	.byte	W01
	.byte		N15   
	.byte	W06
@ 069   ----------------------------------------
	.byte	W09
	.byte	W03
	.byte		N08   , As3 
	.byte	W08
	.byte	W04
	.byte		N06   , Fn3 
	.byte	W07
	.byte	W05
	.byte		N09   , Dn3 
	.byte	W09
	.byte	W03
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N09   
	.byte	W01
	.byte		BEND  , c_v-43
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte	W03
	.byte		N13   , Fn3 
	.byte	W13
	.byte	W05
	.byte		N08   , As3 
	.byte	W08
	.byte	W04
@ 070   ----------------------------------------
	.byte		N06   , Fn3 
	.byte	W07
	.byte	W05
	.byte		N09   , Dn3 
	.byte	W09
	.byte	W03
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N09   
	.byte	W01
	.byte		BEND  , c_v-43
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte	W03
	.byte		N13   , Fn3 
	.byte	W13
	.byte	W17
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 071   ----------------------------------------
	.byte		N10   , Dn4 
	.byte	W11
	.byte		N05   , Ds4 
	.byte	W05
	.byte	W02
	.byte		N06   , Dn4 
	.byte	W07
	.byte	W10
	.byte		N05   , Cn4 
	.byte	W06
	.byte	W01
	.byte		N04   , As3 
	.byte	W04
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N07   , Cn4 
	.byte	W07
	.byte	W05
	.byte		N02   , Fn3 
	.byte	W03
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N08   
	.byte	W08
	.byte	W03
	.byte		N09   , Fs3 
	.byte	W01
@ 072   ----------------------------------------
	.byte	W09
	.byte	W03
	.byte		N08   
	.byte	W09
	.byte	W03
	.byte		N10   , As3 
	.byte	W10
	.byte	W02
	.byte		N08   
	.byte	W08
	.byte	W04
	.byte		N09   , Cn4 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N07   , Dn4 
	.byte	W07
	.byte	W04
	.byte		N03   , Cn4 
	.byte	W04
	.byte	W02
	.byte		N10   , Dn4 
	.byte	W07
@ 073   ----------------------------------------
	.byte	W04
	.byte	W02
	.byte		N04   , Cn4 
	.byte	W05
	.byte	W01
	.byte		N06   , As3 
	.byte	W07
	.byte	W05
	.byte		        Fn3 
	.byte	W07
	.byte	W05
	.byte		        Dn3 
	.byte	W07
	.byte	W05
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N09   
	.byte	W03
	.byte		BEND  , c_v-59
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-15
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+1
	.byte	W04
	.byte	W02
	.byte		N13   , Fn3 
	.byte	W14
	.byte	W04
	.byte		N06   , As3 
	.byte	W07
	.byte	W05
@ 074   ----------------------------------------
	.byte		        Fn3 
	.byte	W07
	.byte	W05
	.byte		        Dn3 
	.byte	W07
	.byte	W05
	.byte		N04   , Gn3 
	.byte	W05
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N09   
	.byte	W03
	.byte		BEND  , c_v-59
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-15
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W04
	.byte	W02
	.byte		N13   , Fn3 
	.byte	W14
	.byte	W16
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 075   ----------------------------------------
	.byte		N10   , Dn4 
	.byte	W11
	.byte		N05   , Ds4 
	.byte	W05
	.byte	W02
	.byte		N06   , Dn4 
	.byte	W07
	.byte	W10
	.byte		N05   , Cn4 
	.byte	W06
	.byte	W01
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N05   , As3 
	.byte	W05
	.byte	W01
	.byte		N07   , Cn4 
	.byte	W07
	.byte	W10
	.byte		N04   , Fn3 
	.byte	W05
	.byte	W02
	.byte		N03   
	.byte	W04
	.byte	W01
	.byte		N06   
	.byte	W07
	.byte	W06
@ 076   ----------------------------------------
	.byte		N10   , Dn4 
	.byte	W10
	.byte	W01
	.byte		N05   , Ds4 
	.byte	W05
	.byte	W02
	.byte		N06   , Dn4 
	.byte	W07
	.byte	W10
	.byte		N05   , Cn4 
	.byte	W06
	.byte	W01
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N05   , As3 
	.byte	W05
	.byte	W01
	.byte		N07   , Gn3 
	.byte	W07
	.byte	W10
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N11   
	.byte	W03
	.byte		BEND  , c_v-59
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-12
	.byte		        c_v+1
	.byte	W08
	.byte		N16   , Fn3 
	.byte	W12
@ 077   ----------------------------------------
	.byte	W05
	.byte	W07
	.byte		N08   , As3 
	.byte	W08
	.byte	W04
	.byte		N06   , Fn3 
	.byte	W07
	.byte	W05
	.byte		N09   , Dn3 
	.byte	W09
	.byte	W03
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N09   
	.byte	W02
	.byte		BEND  , c_v-43
	.byte		        c_v+0
	.byte	W07
	.byte	W03
	.byte		N13   , Fn3 
	.byte	W13
	.byte	W05
	.byte		N08   , As3 
	.byte	W08
	.byte	W04
@ 078   ----------------------------------------
	.byte		N06   , Fn3 
	.byte	W07
	.byte	W05
	.byte		N09   , Dn3 
	.byte	W09
	.byte	W03
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N09   
	.byte	W02
	.byte		BEND  , c_v-43
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte	W03
	.byte		N13   , Fn3 
	.byte	W13
	.byte	W17
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W02
@ 079   ----------------------------------------
	.byte		N10   , Dn4 
	.byte	W11
	.byte		N05   , Ds4 
	.byte	W05
	.byte	W02
	.byte		N06   , Dn4 
	.byte	W07
	.byte	W10
	.byte		N05   , Cn4 
	.byte	W06
	.byte	W01
	.byte		N04   , As3 
	.byte	W04
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N07   , Cn4 
	.byte	W07
	.byte	W04
	.byte		N02   , As3 
	.byte	W03
	.byte	W03
	.byte		N09   
	.byte	W10
	.byte	W02
	.byte		N08   
	.byte	W09
	.byte	W04
@ 080   ----------------------------------------
	.byte		N09   
	.byte	W10
	.byte	W02
	.byte		N08   , Fn3 
	.byte	W09
	.byte	W03
	.byte		N10   , As3 
	.byte	W10
	.byte	W02
	.byte		N08   
	.byte	W08
	.byte	W04
	.byte		N09   , Cn4 
	.byte	W09
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N07   , Dn4 
	.byte	W07
	.byte	W04
	.byte		N03   , Cn4 
	.byte	W04
	.byte	W02
	.byte		N07   , Dn4 
	.byte	W07
@ 081   ----------------------------------------
	.byte	W01
	.byte	W05
	.byte		N28   , Cn4 , v100, gtp1
	.byte	W28
	.byte	W01
	.byte	W07
	.byte		N05   , Fn3 
	.byte	W05
	.byte	W01
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N10   , Dn4 
	.byte	W11
	.byte	W01
	.byte		        Cn4 
	.byte	W10
	.byte	W02
	.byte		        As3 
	.byte	W10
	.byte	W02
@ 082   ----------------------------------------
	.byte		N09   , Fn3 
	.byte	W09
	.byte	W01
	.byte		N04   , Gn3 
	.byte	W04
	.byte	W01
	.byte		        Fn3 
	.byte	W04
	.byte	W01
	.byte		        Gn3 
	.byte	W04
	.byte	W01
	.byte		N40   , Fn3 
	.byte	W40
	.byte	W01
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		N12   , Dn3 
	.byte	W11
	.byte	W01
@ 083   ----------------------------------------
	.byte		N05   , Cn3 
	.byte	W05
	.byte	W01
	.byte		N17   , Dn3 
	.byte	W17
	.byte	W01
	.byte		N05   , Cn3 
	.byte	W05
	.byte	W01
	.byte		N44   , As2 , v100, gtp3
	.byte	W15
	.byte	W08
	.byte	W08
	.byte	W08
	.byte	W05
	.byte	W03
	.byte	W19
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte	FINE

@**************** Track 3 (Midi-Chn.5) ****************@

mus_irreplaceable_beyonce_3:
	.byte	KEYSH , mus_irreplaceable_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte		VOL   , 114*mus_irreplaceable_beyonce_mvl/mxv
	.byte		PAN   , c_v+0
mus_irreplaceable_beyonce_3_L8:
	.byte	MEMACC, mem_set, 0x00, 0
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
	.byte	W60
	.byte		N11   , As3 , v004
	.byte	W11
	.byte	W01
	.byte		N17   , Gn3 
	.byte	W17
	.byte	W07
@ 012   ----------------------------------------
	.byte	W48
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N05   , As3 
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N17   , Gn3 
	.byte	W17
	.byte	W07
@ 013   ----------------------------------------
	.byte	W72
	.byte		N05   , Ds3 
	.byte	W05
	.byte	W01
	.byte		        Fn3 
	.byte	W06
	.byte		N09   , Dn3 
	.byte	W09
	.byte	W03
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W12
	.byte		N11   , As3 
	.byte	W11
	.byte	W01
	.byte		        Fn3 
	.byte	W11
	.byte	W01
	.byte		        Dn3 
	.byte	W11
	.byte	W01
	.byte		N05   , Gn3 
	.byte	W05
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N17   , Fn3 
	.byte	W17
	.byte	W01
	.byte		N11   , As3 
	.byte	W11
	.byte	W01
@ 018   ----------------------------------------
	.byte		        Fn3 
	.byte	W11
	.byte	W01
	.byte		        Dn3 
	.byte	W11
	.byte	W01
	.byte		N05   , Gn3 
	.byte	W05
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N28   , Fn3 , v004, gtp1
	.byte	W28
	.byte	W01
	.byte	W24
	.byte	W01
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
mus_irreplaceable_beyonce_3_021:
	.byte	W12
	.byte		N11   , Dn3 , v004
	.byte		N11   , As3 
	.byte		N11   , Dn4 
	.byte	W11
	.byte	PEND
	.byte	W01
	.byte		        As2 
	.byte		N11   , Fn3 
	.byte		N11   , As3 
	.byte	W11
	.byte	W01
	.byte		        Fn2 
	.byte		N11   , Dn3 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W01
	.byte		N05   , Cn3 
	.byte		N05   , Gn3 
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W01
	.byte		N11   , Cn3 
	.byte		N11   , Gn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W01
	.byte		N17   , As2 
	.byte		N17   , Fn3 
	.byte		N17   , As3 
	.byte	W17
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N11   , As3 
	.byte		N11   , Dn4 
	.byte	W11
	.byte	W01
@ 022   ----------------------------------------
mus_irreplaceable_beyonce_3_022:
	.byte		N11   , As2 , v004
	.byte		N11   , Fn3 
	.byte		N11   , As3 
	.byte	W11
	.byte	PEND
	.byte	W01
	.byte		        Fn2 
	.byte		N11   , Dn3 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W01
	.byte		N05   , Cn3 
	.byte		N05   , Gn3 
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W01
	.byte		N11   , Cn3 
	.byte		N11   , Gn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W01
	.byte		N28   , An2 , v004, gtp1
	.byte		N28   , Fn3 , v004, gtp1
	.byte		N28   , An3 , v004, gtp1
	.byte	W28
	.byte	W01
	.byte	W24
	.byte	W01
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W60
	.byte		N05   , As3 
	.byte	W05
	.byte	W07
	.byte		N17   , Fn3 
	.byte	W17
	.byte	W07
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N05   , Ds3 
	.byte	W05
	.byte	W01
	.byte		N11   , Dn3 
	.byte	W11
	.byte	W01
	.byte		N05   , Cn3 
	.byte	W05
	.byte	W01
	.byte		N11   , As2 
	.byte	W11
	.byte	W48
	.byte	W01
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W06
	.byte		N05   , Fn3 
	.byte	W05
	.byte	W01
	.byte		        Gn3 
	.byte	W05
	.byte	W01
	.byte		N11   , As3 
	.byte	W11
	.byte	W66
	.byte	W01
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W72
	.byte		N05   , Dn3 
	.byte		N05   , Fn3 
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W12
	.byte		        As3 
	.byte	W11
	.byte	W01
	.byte		        Fn3 
	.byte	W11
	.byte	W01
	.byte		        Dn3 
	.byte	W11
	.byte	W01
	.byte		N05   , Gn3 
	.byte	W05
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N17   , Fn3 
	.byte	W17
	.byte	W01
	.byte		N11   , As3 
	.byte	W11
	.byte	W01
@ 039   ----------------------------------------
	.byte		        Fn3 
	.byte	W11
	.byte	W01
	.byte		        Dn3 
	.byte	W11
	.byte	W01
	.byte		N05   , Gn3 
	.byte	W05
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N28   , Fn3 , v004, gtp1
	.byte	W28
	.byte	W01
	.byte	W24
	.byte	W01
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_3_021
	.byte	W01
	.byte		N11   , As2 , v004
	.byte		N11   , Fn3 
	.byte		N11   , As3 
	.byte	W11
	.byte	W01
	.byte		        Fn2 
	.byte		N11   , Dn3 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W01
	.byte		N05   , Cn3 
	.byte		N05   , Gn3 
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W01
	.byte		N11   , Cn3 
	.byte		N11   , Gn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W01
	.byte		N17   , As2 
	.byte		N17   , Fn3 
	.byte		N17   , As3 
	.byte	W17
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N11   , As3 
	.byte		N11   , Dn4 
	.byte	W11
	.byte	W01
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_3_022
	.byte	W01
	.byte		N11   , Fn2 , v004
	.byte		N11   , Dn3 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W01
	.byte		N05   , Cn3 
	.byte		N05   , Gn3 
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W01
	.byte		N11   , Cn3 
	.byte		N11   , Gn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W01
	.byte		N28   , An2 , v004, gtp1
	.byte		N28   , Fn3 , v004, gtp1
	.byte		N28   , An3 , v004, gtp1
	.byte	W28
	.byte	W01
	.byte	W24
	.byte	W01
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte		N11   , Ds3 
	.byte		N11   , Fs3 
	.byte	W11
	.byte	W01
	.byte		        Ds3 
	.byte		N11   , Fs3 
	.byte	W11
	.byte	W01
	.byte		        Fn3 
	.byte		N11   , Gs3 
	.byte		N11   , As3 
	.byte	W11
	.byte	W01
	.byte		        Fn3 
	.byte		N11   , Gs3 
	.byte		N11   , As3 
	.byte	W11
	.byte	W01
	.byte		        Ds3 
	.byte		N11   , Gs3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W01
	.byte		        Ds3 
	.byte		N11   , Gs3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W01
	.byte		        Fn3 
	.byte		N11   , An3 
	.byte		N11   , Dn4 
	.byte	W11
	.byte	W01
	.byte		N08   , Ds3 
	.byte		N05   , Gn3 
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W01
	.byte		N11   , Fn3 
	.byte		N11   , An3 
	.byte		N11   , Dn4 
	.byte	W02
	.byte	W04
@ 046   ----------------------------------------
	.byte	W05
	.byte	W01
	.byte		N64   , Fn3 , v004, gtp1
	.byte		N64   , An3 , v004, gtp1
	.byte		N64   , Cn4 , v004, gtp1
	.byte	W64
	.byte	W01
	.byte	W24
	.byte	W01
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte		N17   , Cn3 
	.byte		N17   , Fn3 
	.byte		N17   , An3 
	.byte	W17
	.byte	W01
	.byte		N32   , Dn3 , v004, gtp3
	.byte		N32   , Fn3 , v004, gtp3
	.byte		N32   , As3 , v004, gtp3
	.byte	W32
	.byte	W03
	.byte	W42
	.byte	W01
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W24
	.byte		N11   , Cn3 
	.byte	W11
	.byte	W01
	.byte		N05   , Dn3 
	.byte	W05
	.byte	W01
	.byte		N11   , Cn3 
	.byte		N11   , Ds3 
	.byte	W11
	.byte	W01
	.byte		        As2 
	.byte		N11   , Dn3 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W01
	.byte		N17   , Cn3 
	.byte		N17   , Ds3 
	.byte		N17   , Gn3 
	.byte	W17
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N11   , Fn3 
	.byte		N11   , An3 
	.byte	W11
	.byte	W01
@ 054   ----------------------------------------
	.byte	W18
	.byte		        Dn3 
	.byte		N11   , Fn3 
	.byte		N11   , An3 
	.byte	W11
	.byte	W01
	.byte		        Dn3 
	.byte		N11   , Fn3 
	.byte		N11   , An3 
	.byte	W11
	.byte	W01
	.byte		N05   , Cn3 
	.byte		N05   , Ds3 
	.byte		N05   , Gn3 
	.byte	W05
	.byte	W01
	.byte		N11   , Cn3 
	.byte		N11   , Fn3 
	.byte		N11   , An3 
	.byte	W11
	.byte	W01
	.byte		N05   , As2 
	.byte		N05   , Gn3 
	.byte		N05   , As3 
	.byte	W05
	.byte	W01
	.byte		N28   , Cn3 , v004, gtp1
	.byte		N28   , Fn3 , v004, gtp1
	.byte		N28   , An3 , v004, gtp1
	.byte		N28   , Cn4 , v004, gtp1
	.byte	W28
	.byte	W01
	.byte	W01
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W36
	.byte		N05   , Fn3 
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N17   
	.byte	W17
	.byte	W07
@ 059   ----------------------------------------
	.byte	W60
	.byte		N32   , Fn3 , v004, gtp2
	.byte		N32   , As3 , v004, gtp2
	.byte	W32
	.byte	W02
	.byte	W02
@ 060   ----------------------------------------
	.byte	W36
	.byte		N05   , Fn3 
	.byte		N05   , As3 
	.byte	W05
	.byte	W01
	.byte		        Fn3 
	.byte		N05   , As3 
	.byte	W05
	.byte	W01
	.byte		N11   , Fn3 
	.byte		N11   , As3 
	.byte	W11
	.byte	W01
	.byte		N05   , Fn3 
	.byte		N05   , As3 
	.byte	W05
	.byte	W01
	.byte		        Fn3 
	.byte		N05   , As3 
	.byte	W05
	.byte	W01
	.byte		N17   , Fn3 
	.byte		N17   , As3 
	.byte	W17
	.byte	W07
@ 061   ----------------------------------------
	.byte		N05   , Fn3 
	.byte		N05   , An3 
	.byte	W05
	.byte	W01
	.byte		        Fn3 
	.byte		N05   , An3 
	.byte	W05
	.byte	W01
	.byte		        Fn3 
	.byte		N05   , An3 
	.byte	W05
	.byte	W01
	.byte		        Fn3 
	.byte		N05   , An3 
	.byte	W05
	.byte	W01
	.byte		N11   , Fn3 
	.byte		N11   , An3 
	.byte	W11
	.byte	W01
	.byte		N05   , Dn3 
	.byte		N05   , An3 
	.byte	W05
	.byte	W01
	.byte		        Dn3 
	.byte		N05   , An3 
	.byte	W05
	.byte	W01
	.byte		N11   , Fn3 
	.byte		N11   , An3 
	.byte	W11
	.byte	W01
	.byte		N05   , Fn3 
	.byte		N05   , An3 
	.byte	W05
	.byte	W01
	.byte		        Gn3 
	.byte		N05   , An3 
	.byte	W05
	.byte	W01
	.byte		N23   , Fn3 
	.byte		N22   , An3 
	.byte	W22
	.byte	W01
	.byte	W01
@ 062   ----------------------------------------
	.byte	W36
	.byte		N05   , Fn3 
	.byte		N05   , As3 
	.byte		N05   , Dn4 
	.byte	W05
	.byte	W01
	.byte		        Fn3 
	.byte		N05   , As3 
	.byte		N05   , Dn4 
	.byte	W05
	.byte	W01
	.byte		N11   , Fn3 
	.byte		N11   , As3 
	.byte		N11   , Dn4 
	.byte	W11
	.byte	W01
	.byte		N05   , Fn3 
	.byte		N05   , As3 
	.byte		N05   , Dn4 
	.byte	W05
	.byte	W01
	.byte		        Fn3 
	.byte		N05   , As3 
	.byte		N05   , Dn4 
	.byte	W05
	.byte	W01
	.byte		N11   , Fn3 
	.byte		N11   , As3 
	.byte		N11   , Dn4 
	.byte	W11
	.byte	W13
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W12
	.byte		        As3 
	.byte	W11
	.byte	W01
	.byte		        Fn3 
	.byte	W11
	.byte	W01
	.byte		        Dn3 
	.byte	W11
	.byte	W01
	.byte		N05   , Gn3 
	.byte	W05
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N17   , Fn3 
	.byte	W17
	.byte	W01
	.byte		N11   , As3 
	.byte	W11
	.byte	W01
@ 066   ----------------------------------------
	.byte		        Fn3 
	.byte	W11
	.byte	W01
	.byte		        Dn3 
	.byte	W11
	.byte	W01
	.byte		N05   , Gn3 
	.byte	W05
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N28   , Fn3 , v004, gtp1
	.byte	W28
	.byte	W01
	.byte	W24
	.byte	W01
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_3_021
	.byte	W01
	.byte		N11   , As2 , v004
	.byte		N11   , Fn3 
	.byte		N11   , As3 
	.byte	W11
	.byte	W01
	.byte		        Fn2 
	.byte		N11   , Dn3 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W01
	.byte		N05   , Cn3 
	.byte		N05   , Gn3 
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W01
	.byte		N11   , Cn3 
	.byte		N11   , Gn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W01
	.byte		N17   , As2 
	.byte		N17   , Fn3 
	.byte		N17   , As3 
	.byte	W17
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N11   , As3 
	.byte		N11   , Dn4 
	.byte	W11
	.byte	W01
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_3_022
	.byte	W01
	.byte		N11   , Fn2 , v004
	.byte		N11   , Dn3 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W01
	.byte		N05   , Cn3 
	.byte		N05   , Gn3 
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W01
	.byte		N11   , Cn3 
	.byte		N11   , Gn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W01
	.byte		N28   , An2 , v004, gtp1
	.byte		N28   , Fn3 , v004, gtp1
	.byte		N28   , An3 , v004, gtp1
	.byte	W28
	.byte	W01
	.byte	W24
	.byte	W01
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W12
	.byte		N11   , As3 
	.byte	W11
	.byte	W01
	.byte		        Fn3 
	.byte	W11
	.byte	W01
	.byte		        Dn3 
	.byte	W11
	.byte	W01
	.byte		N05   , Gn3 
	.byte	W05
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N17   , Fn3 
	.byte	W17
	.byte	W01
	.byte		N11   , As3 
	.byte	W11
	.byte	W01
@ 074   ----------------------------------------
	.byte		        Fn3 
	.byte	W11
	.byte	W01
	.byte		        Dn3 
	.byte	W11
	.byte	W01
	.byte		N05   , Gn3 
	.byte	W05
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N28   , Fn3 , v004, gtp1
	.byte	W18
	.byte		N05   , As3 
	.byte	W05
	.byte	W06
	.byte	W01
	.byte		N17   , Fn3 
	.byte	W17
	.byte	W07
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_3_021
	.byte	W01
	.byte		N11   , As2 , v004
	.byte		N11   , Fn3 
	.byte		N11   , As3 
	.byte	W11
	.byte	W01
	.byte		        Fn2 
	.byte		N11   , Dn3 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W01
	.byte		N05   , Cn3 
	.byte		N05   , Gn3 
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W01
	.byte		N11   , Cn3 
	.byte		N11   , Gn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W01
	.byte		N17   , As2 
	.byte		N17   , Fn3 
	.byte		N17   , As3 
	.byte	W17
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N11   , As3 
	.byte		N11   , Dn4 
	.byte	W11
	.byte	W01
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_3_022
	.byte	W01
	.byte		N11   , Fn2 , v004
	.byte		N11   , Dn3 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W01
	.byte		N05   , Cn3 
	.byte		N05   , Gn3 
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W01
	.byte		N11   , Cn3 
	.byte		N11   , Gn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W01
	.byte		N28   , An2 , v004, gtp1
	.byte		N28   , Fn3 , v004, gtp1
	.byte		N28   , An3 , v004, gtp1
	.byte	W28
	.byte	W01
	.byte	W24
	.byte	W01
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W42
	.byte		N06   , As2 
	.byte	W06
	.byte		N11   , Gn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W01
	.byte		        Fn3 
	.byte		N11   , As3 
	.byte	W11
	.byte	W01
	.byte		        Ds3 
	.byte		N11   , Gn3 
	.byte	W11
	.byte		N10   , Dn3 
	.byte	W01
	.byte		N11   , Fn3 
	.byte	W10
	.byte	W01
	.byte	W01
@ 082   ----------------------------------------
	.byte		N09   , As2 
	.byte	W09
	.byte	W01
	.byte		N04   , Cn3 
	.byte	W04
	.byte	W01
	.byte		        As2 
	.byte	W04
	.byte	W01
	.byte		        Cn3 
	.byte	W04
	.byte	W01
	.byte		N40   , As2 
	.byte	W40
	.byte	W01
	.byte		N05   , Fn2 
	.byte	W05
	.byte	W01
	.byte		        Ds2 
	.byte	W05
	.byte	W01
	.byte		        Dn2 
	.byte	W05
	.byte	W01
	.byte		N11   , Fn2 
	.byte	W11
	.byte	W01
@ 083   ----------------------------------------
	.byte		N05   , Ds2 
	.byte	W05
	.byte	W01
	.byte		N17   , Fn2 
	.byte	W17
	.byte	W01
	.byte		N05   , Ds2 
	.byte	W05
	.byte	W01
	.byte		N64   , Dn2 , v004, gtp1
	.byte	W64
	.byte	W01
	.byte	W01
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte	FINE

@**************** Track 4 (Midi-Chn.6) ****************@

mus_irreplaceable_beyonce_4:
	.byte	KEYSH , mus_irreplaceable_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte		VOL   , 127*mus_irreplaceable_beyonce_mvl/mxv
	.byte		PAN   , c_v-4
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
	.byte	W48
	.byte		N06   , As2 , v100
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W11
	.byte		        Dn3 
	.byte	W11
	.byte		N06   , Fn3 
	.byte	W07
	.byte	W01
	.byte		N52   , Gn3 , v100, gtp1
	.byte	W11
	.byte		BEND  , c_v-24
	.byte	W01
@ 048   ----------------------------------------
	.byte		N44   , Dn3 , v092, gtp3
	.byte	W03
	.byte		BEND  , c_v-6
	.byte		        c_v+1
	.byte	W36
	.byte	W02
	.byte	W06
	.byte	W01
	.byte		N11   , Gn3 , v100
	.byte	W11
	.byte	W01
	.byte		N05   , Fn3 
	.byte	W05
	.byte	W01
	.byte		N11   , Gn3 
	.byte	W11
	.byte	W01
	.byte		N05   , Fn3 
	.byte	W05
	.byte		N11   , As3 
	.byte	W01
	.byte		N68   , Fn3 
	.byte	W11
	.byte		N56   , Cn3 , v100, gtp2
	.byte	W01
@ 049   ----------------------------------------
	.byte		        An3 , v100, gtp3
	.byte	W32
	.byte	W01
	.byte	W03
	.byte	W02
	.byte	W02
	.byte	W02
	.byte	W03
	.byte	W02
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W02
	.byte	W05
	.byte	W32
@ 050   ----------------------------------------
	.byte		N17   , Fn3 
	.byte		N15   , An3 
	.byte	W15
	.byte	W02
	.byte	W01
	.byte		N24   , Dn3 , v100, gtp3
	.byte		N24   , As3 , v100, gtp2
	.byte	W24
	.byte	W02
	.byte	W02
	.byte	W48
	.byte	W02
@ 051   ----------------------------------------
	.byte		N14   , Dn3 
	.byte		N14   , Gn3 
	.byte	W14
	.byte	W04
	.byte		N11   , As2 
	.byte		N11   , Dn3 
	.byte		N12   , Gn3 
	.byte	W11
	.byte	W01
	.byte		N05   , Cn3 
	.byte		N06   , Fn3 
	.byte	W05
	.byte	W01
	.byte		N07   , As2 
	.byte		N05   , Dn3 , v096
	.byte	W05
	.byte	W01
	.byte		        Cn3 , v100
	.byte		N06   , Fn3 
	.byte	W01
	.byte	W04
	.byte	W01
	.byte		N28   , As2 , v100, gtp1
	.byte		N23   , Dn3 
	.byte	W24
	.byte	W05
	.byte	W19
@ 052   ----------------------------------------
	.byte	W24
	.byte		N11   , Cn3 
	.byte		N11   , Gn3 , v096
	.byte	W11
	.byte	W01
	.byte		N13   , Gn2 
	.byte		N11   , Dn3 , v100
	.byte	W01
	.byte		N10   , Fn3 , v096
	.byte	W10
	.byte	W01
	.byte		N15   , Cn3 , v100
	.byte		N16   , En3 
	.byte	W01
	.byte		N15   , Gn3 , v096
	.byte	W14
	.byte	W01
	.byte	W02
	.byte		N18   , Cn3 , v100
	.byte		N20   , Gn3 
	.byte	W01
	.byte		        En3 
	.byte	W17
	.byte	W02
	.byte	W01
	.byte	W09
@ 053   ----------------------------------------
	.byte	W24
	.byte		N15   , Cn3 
	.byte		N15   , Ds3 
	.byte	W15
	.byte	W02
	.byte		N13   , Dn3 
	.byte	W01
	.byte		N12   , As2 , v092
	.byte	W12
	.byte		N10   , Cn3 
	.byte		N09   , Ds3 , v100
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N17   , Cn3 
	.byte		N17   , Ds3 
	.byte	W17
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W01
@ 054   ----------------------------------------
	.byte	W18
	.byte		N07   , Dn3 , v096
	.byte	W07
	.byte	W05
	.byte		N10   , Dn3 , v100
	.byte	W10
	.byte	W01
	.byte		N05   , Cn3 , v092
	.byte	W06
	.byte	W01
	.byte		N07   , Dn3 , v096
	.byte	W06
	.byte		N05   , Cn3 , v100
	.byte	W01
	.byte	W04
	.byte		        Ds3 , v096
	.byte	W01
	.byte		N07   , As2 , v092
	.byte	W05
	.byte		N40   , Fn3 , v092, gtp1
	.byte	W01
	.byte		N10   , Cn3 
	.byte	W02
	.byte	W09
	.byte	W01
	.byte		N06   , As2 , v100
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gn2 , v096
	.byte	W06
@ 055   ----------------------------------------
	.byte		N11   , Fn2 
	.byte	W11
	.byte	W84
	.byte	W01
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
	.byte	W92
	.byte	W01
	.byte	FINE

@**************** Track 5 (Midi-Chn.7) ****************@

mus_irreplaceable_beyonce_5:
	.byte	KEYSH , mus_irreplaceable_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte		VOL   , 127*mus_irreplaceable_beyonce_mvl/mxv
	.byte		PAN   , c_v+16
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
	.byte		N92   , As1 , v076, gtp1
	.byte		N68   , As2 , v084, gtp3
	.byte	W68
	.byte	W03
	.byte		N23   , Cn3 , v088
	.byte	W22
	.byte	W01
	.byte	W01
	.byte		N68   , An2 , v088, gtp3
	.byte	W01
@ 018   ----------------------------------------
	.byte		N92   , Fn1 , v072, gtp3
	.byte	W68
	.byte	W03
	.byte		N23   , Fn2 , v076
	.byte	W23
	.byte		N72   , Gn2 , v088
	.byte	W01
	.byte	W01
@ 019   ----------------------------------------
	.byte		N68   , Cn2 , v072, gtp2
	.byte	W68
	.byte	W03
	.byte		N23   , An2 , v080
	.byte	W01
	.byte		        Dn2 , v064
	.byte	W23
	.byte		N72   , As2 , v084
	.byte	W01
@ 020   ----------------------------------------
	.byte		N92   , Ds2 , v068, gtp3
	.byte	W68
	.byte	W03
	.byte	W01
	.byte		N23   , Cn3 , v080
	.byte	W23
	.byte		N72   , Dn3 , v088
	.byte	W01
@ 021   ----------------------------------------
	.byte		N92   , As1 , v068, gtp3
	.byte	W72
	.byte		N23   , As2 , v084
	.byte	W23
	.byte		N92   , Fn2 , v088, gtp3
	.byte	W01
@ 022   ----------------------------------------
	.byte		N72   , Cn3 , v092
	.byte	W72
	.byte		N23   , As2 , v088
	.byte	W23
	.byte	W01
@ 023   ----------------------------------------
	.byte		N80   , Cn2 , v068, gtp3
	.byte	W01
	.byte		        Gn2 , v084, gtp1
	.byte	W80
	.byte	W02
	.byte	W01
	.byte		N11   , Dn2 , v068
	.byte	W11
	.byte	W01
@ 024   ----------------------------------------
	.byte		N68   , Ds2 , v088, gtp3
	.byte	W68
	.byte	W03
	.byte	W01
	.byte		N23   , Fn2 , v092
	.byte	W23
	.byte	W01
@ 025   ----------------------------------------
	.byte		        Fs2 , v088
	.byte	W23
	.byte	W01
	.byte		        Gs2 
	.byte	W23
	.byte	W01
	.byte		        As2 
	.byte	W23
	.byte	W01
	.byte		        Cn3 
	.byte	W23
	.byte	W01
@ 026   ----------------------------------------
	.byte		N92   , As2 , v088, gtp3
	.byte	W18
	.byte	W06
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W06
	.byte	W05
	.byte	W05
	.byte	W04
	.byte	W05
	.byte	W05
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W05
	.byte	W09
	.byte	W01
@ 027   ----------------------------------------
	.byte	W60
	.byte	W36
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
	.byte	W68
	.byte	W03
	.byte		N11   , Gn2 , v084
	.byte	W12
	.byte		N12   , An2 , v080
	.byte	W13
@ 034   ----------------------------------------
	.byte		N68   , As2 , v080, gtp2
	.byte	W68
	.byte	W03
	.byte		N24   , An2 
	.byte	W24
	.byte	W01
@ 035   ----------------------------------------
	.byte		N60   , Fn2 , v080, gtp1
	.byte	W32
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W02
	.byte	W03
	.byte	W08
	.byte	W01
	.byte		N24   , Dn2 , v076
	.byte	W24
	.byte	W01
@ 036   ----------------------------------------
	.byte		N44   , Gn2 , v084, gtp2
	.byte	W44
	.byte	W03
	.byte		N48   , An2 , v080
	.byte	W01
	.byte		TIE   , Fn2 , v092
	.byte	W48
@ 037   ----------------------------------------
	.byte		N92   , As2 , v064, gtp2
	.byte	W92
	.byte	W02
	.byte		EOT   , Fn2 
	.byte	W02
@ 038   ----------------------------------------
	.byte		N96   , As1 , v076
	.byte	W01
	.byte		N68   , As2 , v072, gtp3
	.byte	W68
	.byte	W02
	.byte		N24   , Dn3 , v084
	.byte	W01
	.byte	W23
	.byte	W01
@ 039   ----------------------------------------
	.byte		N68   , Cn3 , v084, gtp1
	.byte	W01
	.byte		N92   , Fn2 , v076, gtp2
	.byte	W68
	.byte	W01
	.byte	W02
	.byte		N24   , An2 , v084
	.byte	W23
	.byte	W01
@ 040   ----------------------------------------
	.byte		N72   , Cn2 , v084, gtp1
	.byte		N68   , Gn2 , v084, gtp3
	.byte	W72
	.byte	W01
	.byte		N24   , Dn2 , v088
	.byte		N24   , An2 , v092
	.byte	W23
@ 041   ----------------------------------------
	.byte	W01
	.byte		N92   , Ds2 , v068, gtp3
	.byte		N68   , As2 , v076, gtp3
	.byte	W68
	.byte	W02
	.byte		N23   , Cn3 , v092
	.byte	W01
	.byte	W23
	.byte		TIE   , Fn2 , v076
	.byte	W01
@ 042   ----------------------------------------
mus_irreplaceable_beyonce_5_042:
	.byte		N68   , Dn3 , v084, gtp1
	.byte	W68
	.byte	W02
	.byte	PEND
	.byte	W01
	.byte		N24   , As2 , v096, gtp1
	.byte	W24
	.byte	W01
@ 043   ----------------------------------------
	.byte	W01
	.byte		N68   , Cn3 , v080
	.byte	W68
	.byte		EOT   , Fn2 
	.byte	W01
	.byte		N24   , Ds2 , v068, gtp2
	.byte		N24   , An2 , v072, gtp2
	.byte	W24
	.byte	W02
@ 044   ----------------------------------------
	.byte		N68   , Cn2 , v072, gtp2
	.byte	W01
	.byte		        Gn2 , v080, gtp2
	.byte	W68
	.byte	W02
	.byte		N24   , Dn2 , v084, gtp1
	.byte	W01
	.byte		        An2 
	.byte	W24
@ 045   ----------------------------------------
	.byte		N92   , Ds2 , v064, gtp3
	.byte		N92   , Ds3 , v052, gtp3
	.byte	W01
	.byte		        As2 , v068, gtp2
	.byte	W92
	.byte	W02
	.byte	W01
@ 046   ----------------------------------------
	.byte		TIE   , Fn2 , v060
	.byte		TIE   , Cn3 , v068
	.byte		N72   , Fn3 , v064
	.byte	W72
	.byte		N24   , Gn3 , v068
	.byte	W24
@ 047   ----------------------------------------
	.byte		N48   , An3 , v072, gtp1
	.byte	W48
	.byte	W01
	.byte		N44   , As3 , v068, gtp1
	.byte	W01
	.byte	W44
	.byte	W01
	.byte		EOT   , Fn2 
	.byte		        Cn3 
	.byte	W01
@ 048   ----------------------------------------
	.byte		N92   , As3 , v060, gtp3
	.byte		N92   , Dn4 , v052, gtp3
	.byte		N92   , As4 , v060, gtp3
	.byte	W92
	.byte	W03
	.byte	W01
@ 049   ----------------------------------------
	.byte		N96   , Cn3 , v076
	.byte		N68   , Fn3 , v060, gtp2
	.byte		N68   , An3 , v072, gtp3
	.byte	W68
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N24   , An2 , v068
	.byte		TIE   , Fn3 , v072
	.byte	W24
@ 050   ----------------------------------------
	.byte		N44   , As2 , v072, gtp2
	.byte		N44   , Dn3 , v068, gtp2
	.byte	W44
	.byte	W02
	.byte	W01
	.byte		N48   , An2 , v080
	.byte		N48   , Cn3 , v072, gtp1
	.byte	W48
	.byte		EOT   , Fn3 
	.byte		N44   , Gn2 , v076, gtp3
	.byte	W01
@ 051   ----------------------------------------
	.byte		        As2 , v076, gtp3
	.byte		N44   , Dn3 , v060, gtp3
	.byte	W44
	.byte	W03
	.byte	W01
	.byte		        Fn2 , v092, gtp3
	.byte		N44   , An2 , v068, gtp3
	.byte		N44   , Cn3 , v068, gtp2
	.byte	W44
	.byte	W02
	.byte	W01
	.byte	W01
@ 052   ----------------------------------------
	.byte		N68   , Cn2 , v072, gtp3
	.byte		N68   , Gn2 , v072, gtp3
	.byte		N68   , Cn3 , v064, gtp3
	.byte	W68
	.byte	W03
	.byte	W01
	.byte		N23   , Dn2 , v068
	.byte		N23   , An2 , v072
	.byte		N23   , Dn3 , v060
	.byte	W23
	.byte	W01
@ 053   ----------------------------------------
	.byte		N92   , Ds2 , v072, gtp3
	.byte		N92   , Cn3 , v064, gtp3
	.byte		N92   , Ds3 , v064, gtp3
	.byte	W92
	.byte	W03
	.byte	W01
@ 054   ----------------------------------------
	.byte		TIE   , Fn2 , v072
	.byte		TIE   , Cn3 , v060
	.byte		TIE   , Fn3 , v064
	.byte	W40
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
@ 055   ----------------------------------------
	.byte	W07
	.byte	W08
	.byte	W06
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W06
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W12
	.byte		EOT   , Fn2 
	.byte		        Cn3 
	.byte		        Fn3 
	.byte	W01
@ 056   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte	W13
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N72   , As1 , v080, gtp2
	.byte	W01
@ 060   ----------------------------------------
	.byte	W06
	.byte	W03
	.byte	W04
	.byte	W03
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W22
	.byte		N24   , An1 , v080, gtp1
	.byte	W03
	.byte	W23
@ 061   ----------------------------------------
	.byte	W01
	.byte		N92   , Fn1 , v092, gtp2
	.byte	W92
	.byte	W03
@ 062   ----------------------------------------
	.byte	W01
	.byte		N68   , Cn1 , v092, gtp2
	.byte	W68
	.byte	W02
	.byte		N24   , Dn1 
	.byte	W24
	.byte		N92   , Ds1 , v088
	.byte	W01
@ 063   ----------------------------------------
	.byte	W72
	.byte		N24   , Fn2 , v088, gtp1
	.byte	W19
	.byte	W04
	.byte		N44   , Ds1 , v092, gtp2
	.byte	W01
@ 064   ----------------------------------------
	.byte	W01
	.byte		N24   , Fs2 , v088, gtp1
	.byte	W01
	.byte	W23
	.byte		        Gs2 , v088, gtp1
	.byte	W01
	.byte	W19
	.byte	W04
	.byte		N18   , Ds1 
	.byte		N24   , As2 
	.byte	W01
	.byte	W17
	.byte	W05
	.byte		N22   , Ds1 
	.byte	W01
	.byte		N20   , Cn3 , v092
	.byte	W21
	.byte	W02
@ 065   ----------------------------------------
	.byte		N96   , As1 , v076
	.byte		N68   , Dn3 , v068, gtp3
	.byte	W68
	.byte	W03
	.byte		N24   , Fn3 , v084
	.byte	W24
	.byte	W01
@ 066   ----------------------------------------
	.byte		N68   , Cn3 , v088, gtp1
	.byte	W01
	.byte		N92   , Fn2 , v076, gtp2
	.byte	W68
	.byte	W01
	.byte	W02
	.byte		N24   , An2 , v084
	.byte	W23
	.byte	W01
@ 067   ----------------------------------------
	.byte		N72   , Cn2 , v084, gtp1
	.byte		N68   , As2 , v080, gtp3
	.byte	W72
	.byte	W01
	.byte		N24   , Dn2 , v088
	.byte		N22   , An2 , v092
	.byte	W22
	.byte	W01
@ 068   ----------------------------------------
	.byte	W01
	.byte		N92   , Ds2 , v068, gtp3
	.byte		N68   , As2 , v080, gtp3
	.byte	W68
	.byte	W02
	.byte		N23   , Cn3 , v088
	.byte	W01
	.byte	W23
	.byte		TIE   , Fn2 , v076
	.byte	W01
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_5_042
	.byte	W01
	.byte		N24   , Fn3 , v092, gtp1
	.byte	W24
	.byte	W01
@ 070   ----------------------------------------
	.byte	W01
	.byte		N68   , Cn3 , v084
	.byte	W68
	.byte		EOT   , Fn2 
	.byte	W01
	.byte		N24   , Ds2 , v064, gtp2
	.byte		N24   , An2 , v072, gtp2
	.byte	W24
	.byte	W02
@ 071   ----------------------------------------
	.byte		N80   , Cn2 , v072, gtp1
	.byte		N92   , As2 , v064, gtp2
	.byte	W01
	.byte	W80
	.byte	W03
	.byte		N10   , Dn2 , v072
	.byte	W10
	.byte	W01
	.byte		N78   , Ds2 , v064
	.byte	W01
@ 072   ----------------------------------------
	.byte	W01
	.byte		N68   , As2 , v072
	.byte	W68
	.byte	W02
	.byte		N24   , Cn3 , v068
	.byte	W07
	.byte	W01
	.byte		N15   , Fn2 
	.byte	W16
	.byte	W01
@ 073   ----------------------------------------
mus_irreplaceable_beyonce_5_073:
	.byte		N68   , Dn3 , v088, gtp1
	.byte	W01
	.byte		TIE   , Fn2 , v076
	.byte	W68
	.byte	W01
	.byte	PEND
	.byte	W01
	.byte		N24   , Fn3 , v088, gtp1
	.byte	W24
	.byte	W01
@ 074   ----------------------------------------
	.byte	W01
	.byte		N68   , Cn3 , v084
	.byte	W68
	.byte	W01
	.byte		N24   , An2 , v072, gtp2
	.byte	W24
	.byte	W01
	.byte		EOT   , Fn2 
	.byte	W01
@ 075   ----------------------------------------
	.byte		N80   , Cn2 , v072, gtp1
	.byte		N92   , As2 , v068, gtp2
	.byte	W01
	.byte	W80
	.byte	W03
	.byte		N10   , Dn2 , v072
	.byte	W10
	.byte	W01
	.byte		N78   , Ds2 , v068
	.byte	W01
@ 076   ----------------------------------------
	.byte	W01
	.byte		N68   , As2 
	.byte	W68
	.byte	W02
	.byte		N24   , Cn3 , v072
	.byte	W07
	.byte	W01
	.byte		N15   , Fn2 , v076
	.byte	W16
	.byte	W01
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_5_073
	.byte	W01
	.byte		N24   , Fn3 , v088, gtp1
	.byte	W24
	.byte	W01
@ 078   ----------------------------------------
	.byte	W01
	.byte		N68   , Cn3 , v080
	.byte	W68
	.byte	W01
	.byte		N24   , An2 , v076, gtp2
	.byte	W24
	.byte	W01
	.byte		EOT   , Fn2 
	.byte	W01
@ 079   ----------------------------------------
	.byte		N92   , Ds2 , v072, gtp1
	.byte		N92   , As2 , v068, gtp2
	.byte	W01
	.byte	W92
	.byte	W01
	.byte	W01
	.byte		TIE   , Fn2 
	.byte	W01
@ 080   ----------------------------------------
	.byte		        Cn3 
	.byte	W96
@ 081   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		EOT   , Fn2 
	.byte	W01
	.byte	W01
@ 082   ----------------------------------------
	.byte	W03
	.byte		TIE   , As1 , v064
	.byte		TIE   , As2 , v068
	.byte	W54
	.byte	W03
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
@ 083   ----------------------------------------
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W02
	.byte	W03
	.byte	W04
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W04
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W04
	.byte	W05
	.byte	W03
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W03
	.byte	W03
	.byte	W05
	.byte	W04
	.byte	W04
	.byte	W03
	.byte	W04
	.byte	W01
@ 084   ----------------------------------------
	.byte	W03
	.byte	W02
	.byte		EOT   , As1 
	.byte	W01
	.byte	W06
	.byte		        As2 
	.byte	W01
	.byte	W78
	.byte	W01
	.byte	W04
@ 085   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte	FINE

@**************** Track 6 (Midi-Chn.8) ****************@

mus_irreplaceable_beyonce_6:
	.byte	KEYSH , mus_irreplaceable_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte		VOL   , 126*mus_irreplaceable_beyonce_mvl/mxv
	.byte		PAN   , c_v-24
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
	.byte	W01
	.byte		N92   , As1 , v068, gtp1
	.byte	W92
	.byte	W02
	.byte	W01
@ 018   ----------------------------------------
	.byte		        Fn1 , v064, gtp3
	.byte	W92
	.byte	W03
	.byte	W01
@ 019   ----------------------------------------
	.byte		N68   , Cn2 , v068, gtp2
	.byte	W68
	.byte	W03
	.byte	W02
	.byte		N23   , Dn2 , v060
	.byte	W23
@ 020   ----------------------------------------
	.byte	W01
	.byte		N92   , Ds2 , v060, gtp3
	.byte	W92
	.byte	W03
@ 021   ----------------------------------------
	.byte		        As1 , v060, gtp3
	.byte	W92
	.byte	W03
	.byte	W01
@ 022   ----------------------------------------
	.byte		        Fn1 , v076, gtp3
	.byte	W96
@ 023   ----------------------------------------
	.byte		N80   , Cn2 , v060, gtp3
	.byte	W80
	.byte	W03
	.byte		N11   , Dn2 , v056
	.byte	W12
	.byte	W01
@ 024   ----------------------------------------
	.byte		N68   , Ds2 , v072, gtp3
	.byte	W72
	.byte		N23   , Fn2 , v084
	.byte	W23
	.byte	W01
@ 025   ----------------------------------------
	.byte		        Fs2 , v076
	.byte	W23
	.byte	W01
	.byte		        Gs2 
	.byte	W23
	.byte	W01
	.byte		        As2 
	.byte	W23
	.byte	W01
	.byte		        Cn3 
	.byte	W23
	.byte	W01
@ 026   ----------------------------------------
	.byte		N92   , As2 , v076, gtp3
	.byte	W18
	.byte	W06
	.byte	W05
	.byte	W05
	.byte	W05
	.byte	W06
	.byte	W05
	.byte	W05
	.byte	W04
	.byte	W05
	.byte	W05
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W05
	.byte	W09
	.byte	W01
@ 027   ----------------------------------------
	.byte	W60
	.byte	W36
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
	.byte	W72
	.byte		N11   , Gn2 , v072
	.byte	W11
	.byte	W01
	.byte		N12   , An2 , v068
	.byte	W12
@ 034   ----------------------------------------
	.byte	W01
	.byte		N68   , As2 , v072, gtp2
	.byte	W68
	.byte	W03
	.byte		N23   , An2 , v068
	.byte	W23
	.byte	W01
@ 035   ----------------------------------------
	.byte		N66   , Fn2 , v072
	.byte	W32
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W02
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N24   , Dn2 , v064
	.byte	W24
	.byte	W01
@ 036   ----------------------------------------
	.byte		N44   , Gn2 , v072, gtp2
	.byte	W44
	.byte	W03
	.byte	W01
	.byte		TIE   , Fn2 , v080
	.byte	W48
@ 037   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte	W02
@ 038   ----------------------------------------
	.byte	W01
	.byte		N92   , As1 , v076, gtp1
	.byte	W92
	.byte	W01
	.byte	W02
@ 039   ----------------------------------------
	.byte		        Fn1 , v076, gtp2
	.byte	W92
	.byte	W02
	.byte	W02
@ 040   ----------------------------------------
	.byte		N80   , Cn2 , v084, gtp1
	.byte	W80
	.byte	W02
	.byte	W01
	.byte		N10   , Dn2 
	.byte	W11
	.byte	W02
@ 041   ----------------------------------------
	.byte		N92   , Ds2 , v072, gtp3
	.byte	W02
	.byte		        Cn3 , v044
	.byte	W92
	.byte	W01
	.byte	W01
@ 042   ----------------------------------------
	.byte		        As1 , v072, gtp2
	.byte	W92
	.byte	W03
	.byte	W01
@ 043   ----------------------------------------
	.byte		        Fn1 , v072, gtp2
	.byte	W92
	.byte	W02
	.byte	W02
@ 044   ----------------------------------------
	.byte		N68   , Cn2 , v072, gtp2
	.byte	W68
	.byte	W03
	.byte	W01
	.byte		N23   , Dn2 
	.byte	W24
@ 045   ----------------------------------------
	.byte		N92   , Ds2 , v060, gtp3
	.byte	W96
@ 046   ----------------------------------------
	.byte	W01
	.byte		TIE   , Fn2 , v068
	.byte	W92
	.byte	W03
@ 047   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 048   ----------------------------------------
	.byte		N92   , Ds2 , v064, gtp3
	.byte	W01
	.byte	W92
	.byte	W03
@ 049   ----------------------------------------
	.byte		N68   , Fn2 , v064, gtp3
	.byte	W68
	.byte	W03
	.byte		N24   , Cn2 , v068
	.byte	W24
	.byte	W01
@ 050   ----------------------------------------
	.byte		N44   , As1 , v068, gtp3
	.byte	W44
	.byte	W03
	.byte		N48   , An1 , v072
	.byte	W48
	.byte		N44   , Gn1 , v072, gtp3
	.byte	W01
@ 051   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte	W01
	.byte		        Fn1 , v088, gtp3
	.byte	W48
@ 052   ----------------------------------------
	.byte	W01
	.byte		N68   , Cn2 , v072, gtp3
	.byte	W72
	.byte		N23   , Dn2 
	.byte	W23
@ 053   ----------------------------------------
	.byte	W01
	.byte		N92   , Ds2 , v068, gtp3
	.byte	W92
	.byte	W03
@ 054   ----------------------------------------
	.byte	W01
	.byte		TIE   , Fn2 
	.byte	W36
	.byte	W03
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
@ 055   ----------------------------------------
	.byte	W07
	.byte	W08
	.byte	W06
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W06
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W07
	.byte	W13
	.byte		EOT   
@ 056   ----------------------------------------
	.byte	W01
	.byte	W80
	.byte	W02
	.byte	W13
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W92
	.byte	W04
@ 060   ----------------------------------------
	.byte		N68   , As1 , v076, gtp2
	.byte	W06
	.byte	W03
	.byte	W04
	.byte	W03
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W23
	.byte		N23   , An1 , v080
	.byte	W24
	.byte	W01
@ 061   ----------------------------------------
	.byte		N92   , Fn1 , v080, gtp2
	.byte	W92
	.byte	W02
	.byte	W02
@ 062   ----------------------------------------
	.byte		N68   , Cn1 , v084, gtp2
	.byte	W68
	.byte	W02
	.byte	W02
	.byte		N24   , Dn1 , v076
	.byte	W24
@ 063   ----------------------------------------
	.byte	W01
	.byte		N92   , Ds1 , v080
	.byte	W68
	.byte	W03
	.byte		N24   , Fn2 , v088
	.byte	W22
	.byte	W02
@ 064   ----------------------------------------
	.byte		N44   , Ds1 , v080, gtp2
	.byte		N24   , Fs2 , v088
	.byte	W24
	.byte		        Gs2 
	.byte	W23
	.byte	W01
	.byte		N21   , Ds1 , v080
	.byte		N24   , As2 , v088
	.byte	W22
	.byte	W02
	.byte		N22   , Ds1 , v080
	.byte		N23   , Cn3 , v092
	.byte	W23
	.byte	W01
@ 065   ----------------------------------------
	.byte		N96   , As1 , v072
	.byte		N68   , As2 , v048, gtp3
	.byte	W72
	.byte	W23
	.byte		N92   , Fn1 , v072, gtp2
	.byte	W01
@ 066   ----------------------------------------
	.byte	W01
	.byte	W92
	.byte	W01
	.byte	W02
@ 067   ----------------------------------------
	.byte		N72   , Cn2 
	.byte	W72
	.byte		N24   , Dn2 , v076
	.byte	W01
	.byte	W23
@ 068   ----------------------------------------
	.byte	W01
	.byte		N92   , Ds2 , v068, gtp3
	.byte	W92
	.byte	W03
@ 069   ----------------------------------------
mus_irreplaceable_beyonce_6_069:
	.byte		N96   , As1 , v072
	.byte	W92
	.byte	W03
	.byte		N92   , Fn1 , v068, gtp2
	.byte	W01
	.byte	PEND
@ 070   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte	W02
	.byte		N80   , Cn2 , v072, gtp2
	.byte	W01
@ 071   ----------------------------------------
mus_irreplaceable_beyonce_6_071:
	.byte	W80
	.byte	W01
	.byte		N11   , Dn2 , v076
	.byte	W01
	.byte	PEND
	.byte	W11
	.byte	W03
@ 072   ----------------------------------------
	.byte		N92   , Ds2 , v068, gtp3
	.byte	W96
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_6_069
@ 074   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte	W02
	.byte		N80   , Cn2 , v068, gtp2
	.byte	W01
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_6_071
	.byte	W11
	.byte	W03
@ 076   ----------------------------------------
	.byte		N92   , Ds2 , v068, gtp3
	.byte	W96
@ 077   ----------------------------------------
	.byte		N96   , As1 , v072
	.byte	W96
@ 078   ----------------------------------------
	.byte		N92   , Fn1 , v072, gtp3
	.byte	W92
	.byte	W03
	.byte	W01
@ 079   ----------------------------------------
	.byte		        Ds1 , v068, gtp3
	.byte	W92
	.byte	W03
	.byte		TIE   , Fn1 
	.byte	W01
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W92
	.byte		EOT   
	.byte	W01
	.byte	W02
	.byte		TIE   , As1 
	.byte	W01
@ 082   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte	W03
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
@ 083   ----------------------------------------
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W02
	.byte	W03
	.byte	W04
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W04
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W04
	.byte	W05
	.byte	W03
	.byte	W04
	.byte	W04
	.byte	W04
	.byte	W03
	.byte	W03
	.byte	W05
	.byte	W04
	.byte	W04
	.byte	W03
	.byte	W04
	.byte	W01
@ 084   ----------------------------------------
	.byte	W03
	.byte	W15
	.byte		EOT   
	.byte	W01
	.byte	W72
	.byte	W01
	.byte	W04
@ 085   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte	FINE

@**************** Track 7 (Midi-Chn.9) ****************@

mus_irreplaceable_beyonce_7:
	.byte	KEYSH , mus_irreplaceable_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte		VOL   , 109*mus_irreplaceable_beyonce_mvl/mxv
	.byte		PAN   , c_v-39
	.byte	W92
	.byte		N11   , As1 , v072
	.byte	W01
	.byte		N13   , Fn2 , v080
	.byte	W01
	.byte		N23   , As2 , v076
	.byte	W01
	.byte		N21   , Dn3 
	.byte	W01
@ 001   ----------------------------------------
	.byte		N23   , Fn3 , v084
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N11   , As1 , v044
	.byte		N10   , Fn2 , v048
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v088
	.byte		N16   , As2 , v084
	.byte		N15   , Dn3 
	.byte		N15   , Fn3 , v088
	.byte	W01
	.byte		        As1 , v084
	.byte	W08
	.byte	W03
	.byte		N04   , Fn2 , v060
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Fn2 , v080
	.byte		N09   , As2 
	.byte		N09   , Dn3 , v076
	.byte		N09   , Fn3 , v092
	.byte	W01
	.byte		N10   , As1 , v084
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Fn2 , v052
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 , v060
	.byte		N15   , Fn3 , v088
	.byte	W01
	.byte		        As1 , v064
	.byte	W04
	.byte	W01
	.byte		N11   , Fn2 , v068
	.byte	W09
	.byte	W02
	.byte		N09   , Fn3 , v092
	.byte	W01
	.byte		N10   , Fn2 , v088
	.byte		N10   , As2 
	.byte		N10   , Dn3 , v076
	.byte	W01
	.byte		N08   , As1 , v080
	.byte	W08
	.byte	W01
	.byte	W02
	.byte		N03   , Fn1 , v056
	.byte		N04   , Fn2 
	.byte		N04   , An2 , v028
	.byte		N04   , Cn3 , v052
	.byte		N02   , Fn3 , v072
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N03   , Fn1 , v076
	.byte		N04   , Fn2 , v064
	.byte		N05   , An2 
	.byte		N05   , Cn3 , v060
	.byte		N04   , Fn3 , v080
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N20   , Fn2 
	.byte	W01
@ 002   ----------------------------------------
	.byte		N10   , Fn1 , v088
	.byte		N10   , An2 , v068
	.byte		N20   , Cn3 , v096
	.byte		N20   , Fn3 , v092
	.byte	W10
	.byte	W01
	.byte		N11   , Fn1 , v056
	.byte	W01
	.byte		N10   , An2 
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Fn1 , v088
	.byte		N16   , Fn2 
	.byte		N17   , An2 , v068
	.byte		N15   , Cn3 , v100
	.byte		N16   , Fn3 , v088
	.byte	W10
	.byte	W02
	.byte		        Fn1 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v088
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v084
	.byte	W01
	.byte		N09   , Fn3 
	.byte	W07
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N15   , Fn2 , v080
	.byte		N15   , An2 , v060
	.byte		N15   , Cn3 , v084
	.byte		N14   , Fn3 , v088
	.byte	W01
	.byte		N15   , Fn1 , v084
	.byte	W14
	.byte	W01
	.byte	W01
	.byte		N11   , Fn3 , v092
	.byte	W01
	.byte		N10   , Fn1 , v080
	.byte		N10   , Fn2 , v092
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v084
	.byte	W10
	.byte	W01
	.byte		N04   , As2 , v052
	.byte	W01
	.byte		N03   , Cn2 , v060
	.byte		N04   , Gn2 , v052
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 , v060
	.byte	W04
	.byte	W01
	.byte		N05   , As2 , v056
	.byte	W01
	.byte		N04   , Cn2 , v088
	.byte		N03   , Gn2 , v056
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 , v064
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
@ 003   ----------------------------------------
	.byte		N22   , Cn2 , v088
	.byte		N21   , Gn2 , v068
	.byte		N21   , Cn3 , v084
	.byte		N22   , Fn3 , v092
	.byte	W01
	.byte		N21   , As2 , v072
	.byte	W20
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v080
	.byte	W01
	.byte		N15   , Cn2 , v088
	.byte		N16   , As2 , v080
	.byte		N15   , Cn3 , v084
	.byte		N16   , Fn3 , v092
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Cn2 , v068
	.byte		N08   , Gn2 , v064
	.byte		N11   , As2 
	.byte		N09   , Cn3 , v084
	.byte		N10   , Fn3 , v092
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v060
	.byte	W01
	.byte		        Cn2 , v064
	.byte		N15   , As2 , v060
	.byte		N15   , Cn3 , v076
	.byte		N15   , Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N10   , Cn2 , v076
	.byte		N12   , Gn2 , v068
	.byte		N10   , Fn3 , v088
	.byte	W01
	.byte		N09   , As2 , v068
	.byte		N09   , Cn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Ds2 , v060
	.byte		N04   , As2 , v032
	.byte		N04   , Cn3 
	.byte		N04   , Ds3 , v060
	.byte		N04   , Fn3 , v076
	.byte	W04
	.byte	W01
	.byte		        As2 , v032
	.byte	W01
	.byte		N05   , Ds2 , v060
	.byte		N04   , Cn3 , v032
	.byte		N04   , Ds3 , v060
	.byte		N05   , Fn3 , v072
	.byte	W04
	.byte	W01
	.byte	W01
@ 004   ----------------------------------------
	.byte		N21   , Ds2 , v092
	.byte		N21   , As2 , v076
	.byte		N20   , Cn3 , v084
	.byte		N22   , Ds3 , v080
	.byte		N21   , Fn3 , v092
	.byte	W21
	.byte	W01
	.byte	W01
	.byte		N16   , Ds3 , v064
	.byte		N16   , Fn3 , v092
	.byte	W01
	.byte		        Ds2 , v088
	.byte		N16   , As2 
	.byte		N17   , Cn3 , v080
	.byte	W16
	.byte	W01
	.byte	W01
	.byte		N10   , Ds2 , v068
	.byte		N09   , As2 , v072
	.byte		N09   , Cn3 , v068
	.byte		N10   , Ds3 , v064
	.byte		N10   , Fn3 , v092
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N16   , Ds2 , v072
	.byte		N15   , As2 
	.byte		N16   , Cn3 
	.byte		N15   , Ds3 , v064
	.byte		N15   , Fn3 , v088
	.byte	W15
	.byte	W02
	.byte	W01
	.byte		N12   , Ds2 , v084
	.byte		N08   , As2 , v080
	.byte		N10   , Cn3 , v084
	.byte		N11   , Ds3 , v072
	.byte		N09   , Fn3 , v100
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N01   , As1 , v032
	.byte		N01   , Fn2 , v040
	.byte		N02   , As2 , v032
	.byte		N02   , Dn3 , v036
	.byte		N01   , Fn3 , v056
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As1 , v064
	.byte		N03   , Fn2 , v076
	.byte		N03   , As2 , v084
	.byte		N03   , Dn3 , v044
	.byte		N03   , Fn3 , v068
	.byte	W03
	.byte	W01
	.byte	W02
@ 005   ----------------------------------------
	.byte		N09   , As1 
	.byte		N10   , Fn2 , v088
	.byte		N23   , As2 , v076
	.byte		N21   , Dn3 , v084
	.byte		N23   , Fn3 , v092
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N11   , As1 , v048
	.byte		N08   , Fn2 , v052
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fn2 , v088
	.byte		N16   , As2 , v084
	.byte		N15   , Dn3 , v088
	.byte		N15   , Fn3 , v092
	.byte	W01
	.byte		        As1 , v084
	.byte	W08
	.byte	W03
	.byte		N05   , Fn2 , v060
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N07   , Fn2 , v084
	.byte		N09   , As2 
	.byte		N09   , Dn3 
	.byte		N09   , Fn3 , v088
	.byte	W01
	.byte		N10   , As1 , v084
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N03   , Fn2 , v052
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 , v072
	.byte		N15   , Fn3 , v088
	.byte	W01
	.byte		        As1 , v064
	.byte	W02
	.byte	W03
	.byte		N11   , Fn2 , v068
	.byte	W09
	.byte	W02
	.byte		N09   , Fn3 , v092
	.byte	W01
	.byte		N08   , Fn2 , v088
	.byte		N10   , As2 
	.byte		N10   , Dn3 
	.byte	W01
	.byte		        As1 , v080
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Fn1 , v060
	.byte		N04   , Fn2 , v056
	.byte		N04   , As2 , v028
	.byte		N04   , Dn3 , v060
	.byte		N04   , Fn3 , v076
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		        Fn1 , v080
	.byte		N05   , Fn2 , v060
	.byte		N05   , As2 
	.byte		N05   , Dn3 , v068
	.byte		N04   , Fn3 , v080
	.byte	W04
	.byte	W01
	.byte		N01   , Fn2 , v092
	.byte		N20   , Cn3 , v096
	.byte	W01
@ 006   ----------------------------------------
mus_irreplaceable_beyonce_7_006:
	.byte		N10   , Fn1 , v088
	.byte		N10   , An2 , v068
	.byte		N20   , Fn3 , v092
	.byte	W10
	.byte	PEND
	.byte	W01
	.byte		N11   , Fn1 , v056
	.byte	W01
	.byte		N10   , An2 
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Fn1 , v084
	.byte		N16   , Fn2 , v088
	.byte		N17   , An2 , v068
	.byte		N15   , Cn3 , v100
	.byte		N16   , Fn3 , v088
	.byte	W10
	.byte	W02
	.byte		        Fn1 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v084
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v084
	.byte	W01
	.byte		N09   , Fn3 
	.byte	W07
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N15   , Fn2 , v080
	.byte		N15   , An2 , v060
	.byte		N15   , Cn3 , v080
	.byte		N14   , Fn3 , v092
	.byte	W01
	.byte		N15   , Fn1 , v084
	.byte	W14
	.byte	W01
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W01
	.byte		N10   , Fn1 , v080
	.byte		N10   , Fn2 , v092
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v084
	.byte	W10
	.byte	W01
	.byte		N04   , As2 , v048
	.byte	W01
	.byte		N03   , Cn2 , v064
	.byte		N04   , Gn2 , v048
	.byte		N04   , Cn3 , v052
	.byte		N04   , Fn3 , v064
	.byte	W04
	.byte	W01
	.byte		N05   , As2 , v056
	.byte	W01
	.byte		N04   , Cn2 , v084
	.byte		N03   , Gn2 , v060
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 , v064
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
@ 007   ----------------------------------------
mus_irreplaceable_beyonce_7_007:
	.byte		N22   , Cn2 , v088
	.byte		N21   , Gn2 , v068
	.byte		N21   , Cn3 , v084
	.byte		N22   , Fn3 , v096
	.byte	W01
	.byte		N21   , As2 , v072
	.byte	W20
	.byte	PEND
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v080
	.byte	W01
	.byte		N15   , Cn2 , v088
	.byte		N16   , As2 , v080
	.byte		N15   , Cn3 , v088
	.byte		N16   , Fn3 , v092
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Cn2 , v064
	.byte		N08   , Gn2 
	.byte		N11   , As2 
	.byte		N09   , Cn3 , v084
	.byte		N10   , Fn3 , v088
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v060
	.byte	W01
	.byte		        Cn2 , v064
	.byte		N15   , As2 , v060
	.byte		N15   , Cn3 , v080
	.byte		N15   , Fn3 , v084
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N10   , Cn2 , v076
	.byte		N15   , Gn2 , v068
	.byte		N09   , Cn3 , v084
	.byte		N10   , Fn3 , v088
	.byte	W01
	.byte		N09   , As2 , v068
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N05   , Ds2 , v060
	.byte		N04   , As2 , v032
	.byte		N04   , Cn3 
	.byte		N04   , Ds3 , v060
	.byte		N04   , Fn3 , v072
	.byte	W02
	.byte	W02
	.byte	W01
	.byte		N06   , Gn2 , v032
	.byte		N04   , As2 
	.byte	W01
	.byte		N05   , Ds2 , v060
	.byte		N04   , Cn3 , v032
	.byte		N04   , Ds3 , v064
	.byte		N05   , Fn3 , v072
	.byte	W04
	.byte	W01
	.byte		N23   , As2 
	.byte	W01
@ 008   ----------------------------------------
	.byte		        Ds2 , v092
	.byte		N22   , Cn3 , v084
	.byte		N22   , Ds3 , v080
	.byte		N21   , Fn3 , v088
	.byte	W21
	.byte	W01
	.byte	W01
	.byte		N11   , Ds3 , v064
	.byte		N11   , Fn3 , v092
	.byte	W01
	.byte		N10   , Ds2 , v088
	.byte		N11   , As2 
	.byte		N11   , Cn3 , v084
	.byte	W11
	.byte	W01
	.byte		N04   , Fn1 , v068
	.byte		N04   , Fn2 , v072
	.byte		N05   , An2 , v048
	.byte		N05   , Cn3 , v068
	.byte		N05   , Fn3 , v092
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		        Fn1 , v068
	.byte		N05   , Fn2 , v076
	.byte		N05   , An2 , v044
	.byte		N05   , Cn3 , v068
	.byte		N04   , Fn3 , v092
	.byte	W05
	.byte		N05   , Fn2 , v072
	.byte	W01
	.byte		N04   , Fn1 , v068
	.byte		N04   , An2 , v056
	.byte		N05   , Cn3 , v068
	.byte		N04   , Fn3 , v092
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N11   , Fn1 , v076
	.byte		N04   , Fn2 , v072
	.byte		N05   , An2 , v048
	.byte		N04   , Cn3 , v072
	.byte		N04   , Fn3 , v088
	.byte	W04
	.byte	W01
	.byte		N11   , Fn2 , v072
	.byte	W01
	.byte		        An2 , v060
	.byte		N11   , Cn3 , v072
	.byte		N11   , Fn3 , v088
	.byte	W05
	.byte	W01
	.byte		N04   , Fn1 , v068
	.byte	W04
	.byte	W01
	.byte		N10   , Fn1 , v084
	.byte	W01
	.byte		        Fn2 , v080
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 , v084
	.byte		N10   , Fn3 , v100
	.byte	W10
	.byte	W01
	.byte		N02   , As1 , v040
	.byte	W01
	.byte		N05   , Fn2 , v048
	.byte		N04   , As2 
	.byte		N04   , Dn3 
	.byte		N02   , Fn3 , v044
	.byte	W02
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N04   , As1 , v068
	.byte		N04   , Fn2 , v080
	.byte		N05   , As2 , v048
	.byte		N05   , Dn3 , v072
	.byte		N04   , Fn3 , v080
	.byte	W04
	.byte	W01
	.byte		N11   , As1 , v072
	.byte		N10   , Fn2 , v048
	.byte		N23   , As2 , v072
	.byte	W01
@ 009   ----------------------------------------
mus_irreplaceable_beyonce_7_009:
	.byte		N23   , Dn3 , v084
	.byte		N23   , Fn3 , v092
	.byte	W09
	.byte	PEND
	.byte	W02
	.byte	W01
	.byte		N11   , As1 , v044
	.byte		N10   , Fn2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v088
	.byte		N16   , As2 , v084
	.byte		N15   , Dn3 
	.byte		N15   , Fn3 , v088
	.byte	W01
	.byte		        As1 , v084
	.byte	W08
	.byte	W03
	.byte		N04   , Fn2 , v060
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Fn2 , v080
	.byte		N09   , As2 
	.byte		N09   , Dn3 , v076
	.byte		N09   , Fn3 , v092
	.byte	W01
	.byte		N10   , As1 , v084
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Fn2 , v052
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 
	.byte		N15   , Fn3 , v088
	.byte	W01
	.byte		        As1 , v068
	.byte	W04
	.byte	W01
	.byte		N11   , Fn2 
	.byte	W09
	.byte	W02
	.byte		N09   , Fn3 , v092
	.byte	W01
	.byte		N10   , Fn2 , v088
	.byte		N10   , As2 
	.byte		N10   , Dn3 , v080
	.byte	W01
	.byte		        As1 
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Fn1 , v056
	.byte		N04   , Fn2 
	.byte		N03   , An2 , v028
	.byte		N04   , Cn3 , v052
	.byte		N04   , Fn3 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Fn1 
	.byte		N05   , Fn2 , v064
	.byte		N02   , An2 
	.byte		N05   , Cn3 , v060
	.byte		N04   , Fn3 , v080
	.byte	W02
	.byte	W02
	.byte	W01
	.byte	W01
@ 010   ----------------------------------------
mus_irreplaceable_beyonce_7_010:
	.byte		N10   , Fn1 , v088
	.byte		N20   , Fn2 , v092
	.byte		N10   , An2 , v068
	.byte		N20   , Cn3 , v096
	.byte		N20   , Fn3 
	.byte	W10
	.byte	PEND
	.byte	W01
	.byte		N11   , Fn1 , v056
	.byte	W01
	.byte		N10   , An2 
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Fn1 , v088
	.byte		N16   , Fn2 
	.byte		N17   , An2 , v068
	.byte		N15   , Cn3 , v100
	.byte		N16   , Fn3 , v088
	.byte	W10
	.byte	W02
	.byte		        Fn1 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v084
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v084
	.byte		N09   , Fn3 
	.byte	W08
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N15   , Fn2 , v080
	.byte		N15   , An2 , v060
	.byte		N15   , Cn3 , v084
	.byte		N14   , Fn3 , v088
	.byte	W01
	.byte		N15   , Fn1 , v084
	.byte	W14
	.byte	W01
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W01
	.byte		N10   , Fn1 , v084
	.byte		N10   , Fn2 , v092
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v080
	.byte	W10
	.byte	W01
	.byte		N04   , As2 , v052
	.byte	W01
	.byte		N03   , Cn2 , v060
	.byte		N04   , Gn2 , v052
	.byte		N04   , Cn3 , v048
	.byte		N04   , Fn3 , v060
	.byte	W04
	.byte	W01
	.byte		N05   , As2 
	.byte	W01
	.byte		N04   , Cn2 , v084
	.byte		N03   , Gn2 , v060
	.byte		N04   , Cn3 , v056
	.byte		N03   , Fn3 , v068
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
@ 011   ----------------------------------------
	.byte		N22   , Cn2 , v088
	.byte		N21   , Gn2 , v068
	.byte		N21   , Cn3 , v088
	.byte		N22   , Fn3 , v096
	.byte	W01
	.byte		N21   , As2 , v068
	.byte	W20
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v080
	.byte	W01
	.byte		N15   , Cn2 , v088
	.byte		N16   , As2 , v080
	.byte		N15   , Cn3 , v084
	.byte		N16   , Fn3 , v092
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Cn2 , v068
	.byte		N08   , Gn2 , v064
	.byte		N11   , As2 
	.byte		N09   , Cn3 , v084
	.byte		N10   , Fn3 , v088
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v060
	.byte	W01
	.byte		        Cn2 , v068
	.byte		N15   , As2 , v060
	.byte		N15   , Cn3 , v080
	.byte	W01
	.byte		        Fn3 , v088
	.byte	W14
	.byte	W02
	.byte		N10   , Cn2 , v080
	.byte		N12   , Gn2 , v068
	.byte		N10   , Fn3 , v088
	.byte	W01
	.byte		N09   , As2 , v068
	.byte		N09   , Cn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Ds2 , v060
	.byte		N03   , As2 , v032
	.byte		N04   , Cn3 
	.byte		N01   , Ds3 , v060
	.byte		N04   , Fn3 , v072
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        As2 , v032
	.byte	W01
	.byte		N05   , Ds2 , v060
	.byte		N04   , Cn3 , v032
	.byte		N04   , Ds3 , v060
	.byte		N05   , Fn3 , v072
	.byte	W04
	.byte	W01
	.byte	W01
@ 012   ----------------------------------------
	.byte		N21   , Ds2 , v088
	.byte		N21   , As2 , v076
	.byte		N20   , Cn3 , v084
	.byte		N22   , Ds3 , v080
	.byte		N21   , Fn3 , v100
	.byte	W21
	.byte	W01
	.byte	W01
	.byte		N56   , Ds3 , v064, gtp2
	.byte		N10   , Fn3 , v092
	.byte	W01
	.byte		N09   , Ds2 , v088
	.byte		N12   , As2 
	.byte		N11   , Cn3 , v080
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N05   , Fn2 , v060
	.byte		N05   , Cn3 
	.byte		N05   , Fn3 
	.byte	W05
	.byte	W01
	.byte		N10   , Fn2 , v068
	.byte		N09   , Cn3 , v064
	.byte		N10   , Fn3 , v092
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N04   , Fn2 , v076
	.byte		N04   , Cn3 , v072
	.byte		N05   , Fn3 , v088
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N04   , Fn2 , v072
	.byte		N05   , Cn3 
	.byte		N05   , Fn3 , v088
	.byte	W05
	.byte	W01
	.byte		N04   , Fn2 , v052
	.byte		N04   , Cn3 , v048
	.byte		N05   , Fn3 , v064
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v084
	.byte		N10   , Cn3 
	.byte		N09   , Fn3 , v100
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N04   , Dn3 , v036
	.byte	W01
	.byte		N01   , Ds2 , v028
	.byte		N01   , As2 , v036
	.byte		N02   , Fn3 , v060
	.byte		N01   , Gn3 
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N04   , Dn3 , v044
	.byte	W01
	.byte		        Ds2 , v056
	.byte		N04   , As2 , v080
	.byte		N04   , Fn3 , v068
	.byte		N03   , Gn3 , v072
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N11   , Ds2 , v056
	.byte	W01
@ 013   ----------------------------------------
mus_irreplaceable_beyonce_7_013:
	.byte		N10   , As2 , v084
	.byte		N23   , Dn3 
	.byte		N23   , Fn3 
	.byte		N23   , Gn3 , v064
	.byte	W10
	.byte	PEND
	.byte	W01
	.byte		N11   , As2 , v044
	.byte	W01
	.byte		        Ds2 , v056
	.byte	W11
	.byte	W01
	.byte		N16   , As2 , v084
	.byte		N15   , Dn3 , v080
	.byte		N15   , Fn3 , v088
	.byte		N15   , Gn3 , v072
	.byte	W01
	.byte		        Ds2 , v092
	.byte	W14
	.byte	W01
	.byte	W02
	.byte		N10   
	.byte		N09   , As2 , v080
	.byte		N09   , Dn3 , v076
	.byte		N09   , Fn3 , v092
	.byte		N09   , Gn3 , v068
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N15   , Ds2 , v076
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 , v060
	.byte		N15   , Fn3 , v088
	.byte		N15   , Gn3 , v068
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N09   , Fn3 , v092
	.byte		N09   , Gn3 , v068
	.byte	W01
	.byte		N10   , Ds2 , v092
	.byte		N10   , As2 , v088
	.byte		N10   , Dn3 , v076
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N04   , Gn1 , v064
	.byte		N10   , Fn2 , v076
	.byte		N04   , As2 , v052
	.byte		N04   , Cn3 , v048
	.byte		N02   , Fn3 , v072
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		N04   , Gn1 , v076
	.byte		N05   , As2 , v060
	.byte		N05   , Cn3 
	.byte		N04   , Fn3 , v080
	.byte	W04
	.byte	W01
	.byte	W01
@ 014   ----------------------------------------
mus_irreplaceable_beyonce_7_014:
	.byte		N10   , Gn1 , v096
	.byte		N20   , Fn2 , v072
	.byte		N10   , As2 , v068
	.byte		N20   , Cn3 , v096
	.byte		N20   , Fn3 , v092
	.byte	W10
	.byte	PEND
	.byte	W01
	.byte		N11   , Gn1 , v064
	.byte	W01
	.byte		N10   , As2 , v056
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N16   , Fn2 , v084
	.byte	W01
	.byte		N10   , Gn1 , v092
	.byte		N17   , As2 , v068
	.byte		N15   , Cn3 , v100
	.byte		N16   , Fn3 , v088
	.byte	W10
	.byte	W02
	.byte		        Gn1 , v080
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 
	.byte	W01
	.byte		N10   , As2 , v064
	.byte		N10   , Cn3 , v084
	.byte		N09   , Fn3 , v088
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N15   , Fn2 , v072
	.byte	W01
	.byte		        Gn1 , v092
	.byte		N15   , As2 , v064
	.byte		N15   , Cn3 , v084
	.byte		N14   , Fn3 , v088
	.byte	W15
	.byte	W02
	.byte		N10   , Fn2 , v084
	.byte		N11   , Fn3 , v092
	.byte	W01
	.byte		N10   , Gn1 , v088
	.byte		N10   , As2 , v064
	.byte		N10   , Cn3 , v084
	.byte	W10
	.byte	W01
	.byte		N03   , As2 , v048
	.byte		N02   , Dn3 , v052
	.byte	W01
	.byte		N03   , Ds2 , v064
	.byte		N04   , Gn2 , v044
	.byte		N03   , Fn3 , v060
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , As2 
	.byte		N04   , Dn3 , v056
	.byte	W01
	.byte		        Ds2 , v068
	.byte		N03   , Gn2 , v052
	.byte		N04   , Fn3 , v064
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N11   , Ds2 , v060
	.byte	W01
@ 015   ----------------------------------------
mus_irreplaceable_beyonce_7_015:
	.byte		N10   , Gn2 , v068
	.byte		N10   , As2 , v084
	.byte		N23   , Dn3 
	.byte		N23   , Fn3 
	.byte	W10
	.byte	PEND
	.byte	W01
	.byte		N11   , Gn2 , v028
	.byte		N11   , As2 , v044
	.byte	W01
	.byte		        Ds2 , v052
	.byte	W11
	.byte	W01
	.byte		N15   , Ds2 , v092
	.byte		N16   , Gn2 , v068
	.byte		N16   , As2 , v084
	.byte		N15   , Dn3 
	.byte		N17   , Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N02   , Dn2 , v076
	.byte		N01   , Fn2 , v048
	.byte		N02   , An2 , v064
	.byte		N02   , Cn3 , v060
	.byte	W02
	.byte	W03
	.byte		N10   , Fn2 , v048
	.byte		N11   , An2 , v064
	.byte		N11   , Cn3 , v060
	.byte	W01
	.byte		N10   , Dn2 , v076
	.byte		N21   , Fn3 , v088
	.byte	W10
	.byte	W01
	.byte		N11   , An2 , v064
	.byte		N11   , Cn3 
	.byte	W01
	.byte		N10   , Dn2 , v076
	.byte		N21   , Fn2 , v080
	.byte	W09
	.byte	W02
	.byte		N12   , Fn3 , v088
	.byte	W01
	.byte		N11   , An2 , v064
	.byte		N11   , Cn3 
	.byte	W01
	.byte		N10   , Dn2 , v072
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N01   , Cn2 , v036
	.byte		N02   , Gn2 , v032
	.byte		N01   , As2 
	.byte		N02   , Ds3 , v036
	.byte		N01   , Fn3 , v060
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N05   , Gn2 , v084
	.byte	W01
	.byte		N03   , Cn2 , v080
	.byte		N04   , As2 , v084
	.byte		N03   , Ds3 , v044
	.byte		N03   , Fn3 , v072
	.byte	W03
	.byte	W02
	.byte		N11   , Cn2 , v084
	.byte	W01
@ 016   ----------------------------------------
mus_irreplaceable_beyonce_7_016:
	.byte		N10   , Gn2 , v076
	.byte		N21   , As2 
	.byte		N20   , Ds3 , v084
	.byte		N21   , Fn3 , v092
	.byte	W10
	.byte	PEND
	.byte	W01
	.byte		N10   , Gn2 , v064
	.byte	W01
	.byte		        Cn2 , v068
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N16   , Fn3 , v092
	.byte	W01
	.byte		N09   , Cn2 , v080
	.byte		N11   , Gn2 , v088
	.byte		N16   , As2 
	.byte		N17   , Ds3 , v080
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		N05   , Ds2 , v060
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Fn2 , v084
	.byte		N09   , As2 
	.byte		N09   , Cn3 , v088
	.byte		N09   , Fn3 , v084
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N16   , Fn2 , v072
	.byte		N16   , As2 
	.byte		N04   , Cn3 , v076
	.byte		N04   , Fn3 , v088
	.byte	W05
	.byte	W01
	.byte		N09   , Fn1 , v076
	.byte		N03   , Cn3 
	.byte		N04   , Fn3 , v080
	.byte	W04
	.byte	W01
	.byte		N05   , Cn3 , v076
	.byte	W01
	.byte		N04   , Fn3 
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N12   , Fn1 
	.byte		N08   , Fn2 
	.byte		N08   , As2 , v080
	.byte		N10   , Cn3 , v088
	.byte		N09   , Fn3 , v100
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N01   , As1 , v032
	.byte		N01   , Fn2 , v040
	.byte		N02   , As2 , v032
	.byte		N02   , Dn3 , v036
	.byte		N01   , Fn3 , v056
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As1 , v064
	.byte		N03   , Fn2 , v076
	.byte		N04   , As2 , v084
	.byte		N03   , Dn3 , v044
	.byte		N03   , Fn3 , v068
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N09   , As1 , v072
	.byte	W01
@ 017   ----------------------------------------
	.byte		N10   , Fn2 , v088
	.byte		N23   , As2 , v076
	.byte		N21   , Dn3 , v084
	.byte		N21   , Fn3 , v092
	.byte	W08
	.byte	W02
	.byte	W02
	.byte		N11   , As1 , v048
	.byte		N08   , Fn2 , v052
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fn2 , v088
	.byte		N16   , As2 , v084
	.byte		N15   , Dn3 , v088
	.byte		N15   , Fn3 , v092
	.byte	W01
	.byte		        As1 , v084
	.byte	W08
	.byte	W03
	.byte		N05   , Fn2 , v060
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N07   , Fn2 , v084
	.byte		N09   , As2 
	.byte		N09   , Dn3 
	.byte		N09   , Fn3 , v088
	.byte	W01
	.byte		N10   , As1 , v084
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N03   , Fn2 , v052
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 , v068
	.byte		N15   , Fn3 , v088
	.byte	W01
	.byte		        As1 , v064
	.byte	W02
	.byte	W03
	.byte		N11   , Fn2 , v068
	.byte	W09
	.byte	W02
	.byte		N09   , Fn3 , v092
	.byte	W01
	.byte		N08   , Fn2 , v088
	.byte		N10   , As2 
	.byte		N10   , Dn3 
	.byte	W01
	.byte		        As1 , v080
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Fn1 , v060
	.byte		N04   , Fn2 , v056
	.byte		N04   , As2 , v028
	.byte		N04   , Dn3 , v060
	.byte		N04   , Fn3 , v076
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		        Fn1 
	.byte		N03   , Fn2 , v060
	.byte		N05   , As2 
	.byte		N05   , Dn3 , v068
	.byte		N04   , Fn3 , v080
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N20   , Fn2 , v092
	.byte		N20   , Cn3 , v096
	.byte	W01
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_006
	.byte	W01
	.byte		N11   , Fn1 , v056
	.byte	W01
	.byte		N10   , An2 
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Fn1 , v084
	.byte		N16   , Fn2 , v088
	.byte		N17   , An2 , v068
	.byte		N15   , Cn3 , v100
	.byte		N16   , Fn3 , v088
	.byte	W10
	.byte	W02
	.byte		        Fn1 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v084
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v084
	.byte	W01
	.byte		N09   , Fn3 
	.byte	W07
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N15   , Fn2 , v080
	.byte		N15   , An2 , v060
	.byte		N15   , Cn3 , v080
	.byte		N14   , Fn3 , v092
	.byte	W01
	.byte		N15   , Fn1 , v084
	.byte	W14
	.byte	W01
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W01
	.byte		N10   , Fn1 , v080
	.byte		N10   , Fn2 , v092
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v084
	.byte	W10
	.byte	W01
	.byte		N04   , As2 , v048
	.byte	W01
	.byte		N03   , Cn2 , v064
	.byte		N04   , Gn2 , v052
	.byte		N04   , Cn3 , v048
	.byte		N04   , Fn3 , v064
	.byte	W04
	.byte	W01
	.byte		N05   , As2 , v056
	.byte	W01
	.byte		N04   , Cn2 , v084
	.byte		N03   , Gn2 , v060
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 , v064
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_007
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v080
	.byte	W01
	.byte		N15   , Cn2 , v088
	.byte		N16   , As2 , v080
	.byte		N15   , Cn3 , v088
	.byte		N16   , Fn3 , v092
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Cn2 , v064
	.byte		N08   , Gn2 
	.byte		N11   , As2 
	.byte		N09   , Cn3 , v084
	.byte		N10   , Fn3 , v088
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v060
	.byte	W01
	.byte		        Cn2 , v064
	.byte		N15   , As2 , v060
	.byte		N15   , Cn3 , v080
	.byte		N15   , Fn3 , v084
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N10   , Cn2 , v076
	.byte		N15   , Gn2 , v068
	.byte		N09   , Cn3 , v084
	.byte		N10   , Fn3 , v088
	.byte	W01
	.byte		N09   , As2 , v068
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N05   , Ds2 , v060
	.byte		N04   , As2 , v032
	.byte		N04   , Cn3 
	.byte		N04   , Ds3 , v056
	.byte		N04   , Fn3 , v076
	.byte	W02
	.byte	W02
	.byte	W01
	.byte		N06   , Gn2 , v032
	.byte		N04   , As2 
	.byte	W01
	.byte		N05   , Ds2 , v060
	.byte		N04   , Cn3 , v032
	.byte		N04   , Ds3 , v064
	.byte		N05   , Fn3 , v072
	.byte	W04
	.byte	W01
	.byte		N23   , As2 
	.byte	W01
@ 020   ----------------------------------------
mus_irreplaceable_beyonce_7_020:
	.byte		N10   , Ds2 , v088
	.byte		N10   , Cn3 , v092
	.byte		N22   , Ds3 , v076
	.byte		N21   , Fn3 , v088
	.byte	W10
	.byte	PEND
	.byte	W01
	.byte		N10   , Cn3 , v056
	.byte	W01
	.byte		        Ds2 , v064
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N11   , Ds3 
	.byte		N11   , Fn3 , v092
	.byte	W01
	.byte		N10   , Ds2 , v088
	.byte		N11   , As2 
	.byte		N11   , Cn3 
	.byte	W10
	.byte	W01
	.byte		N05   , Ds3 , v076
	.byte	W01
	.byte		N04   , Ds2 
	.byte		N05   , As2 , v048
	.byte		N05   , Cn3 , v072
	.byte		N05   , Fn3 , v092
	.byte	W05
	.byte	W01
	.byte		N11   , Ds2 , v072
	.byte		N11   , As2 , v056
	.byte		N11   , Cn3 , v080
	.byte		N11   , Ds3 
	.byte		N11   , Fn3 , v088
	.byte	W11
	.byte	W01
	.byte		N04   , Ds2 , v072
	.byte		N05   , As2 , v048
	.byte		N04   , Cn3 , v080
	.byte		N04   , Ds3 
	.byte		N04   , Fn3 , v088
	.byte	W04
	.byte	W01
	.byte		N11   , Ds2 , v072
	.byte		N11   , Ds3 , v080
	.byte	W01
	.byte		        As2 , v060
	.byte		N11   , Cn3 , v080
	.byte		N11   , Fn3 , v088
	.byte	W11
	.byte	W01
	.byte		N10   , Ds2 , v076
	.byte		N10   , As2 , v060
	.byte		N10   , Cn3 , v092
	.byte		N10   , Ds3 
	.byte		N10   , Fn3 , v100
	.byte	W10
	.byte	W01
	.byte		N02   , As1 , v036
	.byte	W01
	.byte		N05   , Fn2 , v048
	.byte		N04   , As2 
	.byte		N04   , Dn3 , v044
	.byte		N02   , Fn3 , v048
	.byte	W02
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N04   , As1 , v068
	.byte		N04   , Fn2 , v076
	.byte		N05   , As2 , v048
	.byte		N05   , Dn3 , v072
	.byte		N04   , Fn3 , v080
	.byte	W04
	.byte	W01
	.byte		N11   , As1 , v072
	.byte		N10   , Fn2 , v044
	.byte		N23   , As2 , v072
	.byte	W01
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_009
	.byte	W02
	.byte	W01
	.byte		N11   , As1 , v044
	.byte		N10   , Fn2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v088
	.byte		N16   , As2 , v084
	.byte		N15   , Dn3 , v080
	.byte		N15   , Fn3 , v088
	.byte	W01
	.byte		        As1 , v084
	.byte	W08
	.byte	W03
	.byte		N04   , Fn2 , v060
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Fn2 , v080
	.byte		N09   , As2 
	.byte		N09   , Dn3 , v076
	.byte		N09   , Fn3 , v088
	.byte	W01
	.byte		N10   , As1 , v084
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Fn2 , v052
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 , v060
	.byte		N15   , Fn3 , v088
	.byte	W01
	.byte		        As1 , v068
	.byte	W04
	.byte	W01
	.byte		N11   , Fn2 
	.byte	W09
	.byte	W02
	.byte		N09   , Fn3 , v088
	.byte	W01
	.byte		N10   , Fn2 
	.byte		N10   , As2 
	.byte		N10   , Dn3 , v080
	.byte	W01
	.byte		        As1 , v084
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Fn1 , v060
	.byte		N04   , Fn2 , v056
	.byte		N03   , An2 , v028
	.byte		N04   , Cn3 , v048
	.byte		N04   , Fn3 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Fn1 , v080
	.byte		N05   , Fn2 , v060
	.byte		N02   , An2 
	.byte		N05   , Cn3 
	.byte		N04   , Fn3 , v080
	.byte	W02
	.byte	W02
	.byte	W01
	.byte	W01
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_010
	.byte	W01
	.byte		N11   , Fn1 , v056
	.byte	W01
	.byte		N10   , An2 
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Fn1 , v084
	.byte		N16   , Fn2 , v092
	.byte		N17   , An2 , v068
	.byte		N15   , Cn3 , v100
	.byte		N16   , Fn3 , v088
	.byte	W10
	.byte	W02
	.byte		        Fn1 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v084
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 , v084
	.byte		N09   , Fn3 
	.byte	W08
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N15   , Fn2 , v080
	.byte		N15   , An2 , v064
	.byte		N15   , Cn3 , v080
	.byte		N14   , Fn3 , v088
	.byte	W01
	.byte		N15   , Fn1 , v084
	.byte	W14
	.byte	W01
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W01
	.byte		N10   , Fn1 , v080
	.byte		N10   , Fn2 , v092
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v080
	.byte	W10
	.byte	W01
	.byte		N04   , As2 , v048
	.byte	W01
	.byte		N03   , Cn2 , v060
	.byte		N04   , Gn2 , v052
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 , v060
	.byte	W04
	.byte	W01
	.byte		N05   , As2 , v056
	.byte	W01
	.byte		N04   , Cn2 , v088
	.byte		N03   , Gn2 , v060
	.byte		N04   , Cn3 , v056
	.byte		N03   , Fn3 , v068
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
@ 023   ----------------------------------------
	.byte		N22   , Cn2 , v088
	.byte		N21   , Gn2 , v072
	.byte		N21   , Cn3 , v088
	.byte		N22   , Fn3 , v096
	.byte	W01
	.byte		N21   , As2 , v068
	.byte	W20
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v080
	.byte	W01
	.byte		N15   , Cn2 , v088
	.byte		N16   , As2 , v080
	.byte		N15   , Cn3 , v084
	.byte		N16   , Fn3 , v092
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Cn2 , v064
	.byte		N08   , Gn2 
	.byte		N11   , As2 
	.byte		N09   , Cn3 , v084
	.byte		N10   , Fn3 , v092
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v060
	.byte	W01
	.byte		        Cn2 , v064
	.byte		N15   , As2 , v060
	.byte		N15   , Cn3 , v076
	.byte	W01
	.byte		        Fn3 , v088
	.byte	W14
	.byte	W02
	.byte		N10   , Cn2 , v080
	.byte		N12   , Gn2 , v068
	.byte		N10   , Fn3 , v088
	.byte	W01
	.byte		N09   , As2 , v068
	.byte		N09   , Cn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Dn2 , v060
	.byte		N03   , As2 , v032
	.byte		N04   , Cs3 
	.byte		N04   , Fn3 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		        As2 , v032
	.byte	W01
	.byte		N05   , Ds2 , v028
	.byte		N04   , Cs3 , v032
	.byte		N05   , Fn3 , v072
	.byte	W04
	.byte	W01
	.byte	W01
@ 024   ----------------------------------------
mus_irreplaceable_beyonce_7_024:
	.byte		N21   , Ds2 , v072
	.byte		N22   , As2 , v076
	.byte		N20   , Cs3 , v084
	.byte		N21   , Fn3 , v092
	.byte		N08   , As3 , v060
	.byte	W09
	.byte	PEND
	.byte	W03
	.byte		N07   , As3 , v056
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Fn3 , v080
	.byte		N15   , As3 , v060
	.byte	W01
	.byte		N09   , Ds2 , v068
	.byte		N10   , As2 , v088
	.byte		N11   , Cs3 , v084
	.byte	W10
	.byte	W01
	.byte		N04   , Ds2 , v040
	.byte	W01
	.byte		        As2 , v060
	.byte		N05   , Cs3 
	.byte		N05   , Fn3 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N12   , As3 , v056
	.byte	W01
	.byte		N10   , Ds2 , v052
	.byte		N09   , As2 , v064
	.byte		N09   , Cs3 
	.byte		N10   , Fn3 , v080
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N09   , Ds2 , v056
	.byte		N04   , As2 , v072
	.byte		N04   , Cs3 
	.byte		N05   , Fn3 , v076
	.byte	W04
	.byte	W01
	.byte		N11   , As3 , v060
	.byte	W01
	.byte		N05   , As2 , v072
	.byte		N05   , Cs3 
	.byte		N05   , Fn3 , v076
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		N04   , Ds2 , v032
	.byte		N04   , Cs3 , v048
	.byte		N05   , Fn3 , v052
	.byte	W01
	.byte		N04   , As2 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N08   , Ds2 , v064
	.byte		N10   , As2 , v084
	.byte		N10   , Cs3 
	.byte		N09   , Fn3 , v088
	.byte		N08   , As3 , v068
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N04   , Ds2 , v020
	.byte	W01
	.byte		N05   , As2 , v036
	.byte		N05   , Cs3 
	.byte		N04   , Fn3 , v060
	.byte		N03   , As3 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N04   , Ds2 , v060
	.byte		N05   , Cs3 , v044
	.byte	W01
	.byte		N04   , As2 
	.byte		N05   , Fn3 , v068
	.byte		N12   , As3 , v064
	.byte	W04
	.byte	W01
	.byte	W01
@ 025   ----------------------------------------
	.byte		N21   , Ds2 , v072
	.byte		N22   , As2 
	.byte		N20   , Cs3 , v084
	.byte		N21   , Fn3 , v092
	.byte	W06
	.byte	W06
	.byte		N07   , As3 , v060
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Fn3 , v080
	.byte		N15   , As3 , v060
	.byte	W01
	.byte		N09   , Ds2 , v072
	.byte		N10   , As2 , v088
	.byte		N11   , Cs3 , v084
	.byte	W10
	.byte	W01
	.byte		N04   , Ds2 , v040
	.byte	W01
	.byte		        As2 , v060
	.byte		N05   , Cs3 
	.byte		N05   , Fn3 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N12   , As3 , v056
	.byte	W01
	.byte		N10   , Ds2 , v048
	.byte		N09   , As2 , v064
	.byte		N09   , Cs3 
	.byte		N10   , Fn3 , v080
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N09   , Ds2 , v056
	.byte		N04   , As2 , v072
	.byte		N04   , Cs3 
	.byte		N05   , Fn3 , v076
	.byte	W04
	.byte	W01
	.byte		N11   , As3 , v060
	.byte	W01
	.byte		N05   , As2 , v072
	.byte		N05   , Cs3 
	.byte		N05   , Fn3 , v076
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		N04   , Ds2 , v032
	.byte		N04   , Cs3 , v048
	.byte		N05   , Fn3 , v052
	.byte	W01
	.byte		N04   , As2 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N08   , Ds2 , v068
	.byte		N10   , As2 , v084
	.byte		N10   , Cs3 
	.byte		N09   , Fn3 , v088
	.byte		N08   , As3 , v064
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N04   , As1 , v020
	.byte		N03   , Fn2 , v036
	.byte		N05   , Dn3 
	.byte		N04   , Fn3 , v060
	.byte	W04
	.byte	W01
	.byte		N05   , Dn3 , v044
	.byte	W01
	.byte		N04   , As1 , v060
	.byte		N05   , Fn2 , v044
	.byte		N05   , As2 
	.byte		N05   , Fn3 , v072
	.byte	W05
	.byte	W01
@ 026   ----------------------------------------
	.byte		N09   , As1 , v068
	.byte		N10   , Fn2 , v084
	.byte		N23   , As2 , v076
	.byte		N21   , Dn3 , v084
	.byte		N23   , Fn3 , v092
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N11   , As1 , v048
	.byte		N08   , Fn2 , v056
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fn2 , v088
	.byte		N16   , As2 , v084
	.byte		N15   , Dn3 , v092
	.byte		N15   , Fn3 
	.byte	W01
	.byte		        As1 , v084
	.byte	W08
	.byte	W03
	.byte		N05   , Fn2 , v060
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N07   , Fn2 , v080
	.byte		N09   , As2 , v084
	.byte		N09   , Dn3 
	.byte		N09   , Fn3 , v092
	.byte	W01
	.byte		N10   , As1 , v084
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N03   , Fn2 , v052
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 , v068
	.byte		N15   , Fn3 , v088
	.byte	W01
	.byte		        As1 , v068
	.byte	W02
	.byte	W03
	.byte		N11   , Fn2 
	.byte	W09
	.byte	W02
	.byte		N09   , Fn3 , v092
	.byte	W01
	.byte		N08   , Fn2 , v088
	.byte		N10   , As2 
	.byte		N10   , Dn3 , v084
	.byte	W01
	.byte		        As1 , v080
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Fn1 , v060
	.byte		N04   , Fn2 , v056
	.byte		N04   , As2 , v028
	.byte		N04   , Dn3 , v056
	.byte		N04   , Fn3 , v076
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		        Fn1 
	.byte		N05   , Fn2 , v064
	.byte		N05   , As2 , v060
	.byte		N05   , Dn3 , v068
	.byte		N04   , Fn3 , v080
	.byte	W04
	.byte	W01
	.byte		N01   , Fn2 , v092
	.byte		N20   , Cn3 , v096
	.byte	W01
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_006
	.byte	W01
	.byte		N11   , Fn1 , v056
	.byte	W01
	.byte		N10   , An2 
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Fn1 , v084
	.byte		N16   , Fn2 , v088
	.byte		N17   , An2 , v068
	.byte		N15   , Cn3 , v100
	.byte		N16   , Fn3 , v088
	.byte	W10
	.byte	W02
	.byte		        Fn1 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v084
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v084
	.byte	W01
	.byte		N09   , Fn3 , v088
	.byte	W07
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N15   , Fn2 , v080
	.byte		N15   , An2 , v064
	.byte		N15   , Cn3 , v080
	.byte		N14   , Fn3 , v092
	.byte	W01
	.byte		N15   , Fn1 , v084
	.byte	W14
	.byte	W01
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W01
	.byte		N10   , Fn1 , v080
	.byte		N10   , Fn2 , v092
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v084
	.byte	W10
	.byte	W01
	.byte		N04   , As2 , v052
	.byte	W01
	.byte		N03   , Cn2 , v060
	.byte		N04   , Gn2 , v048
	.byte		N04   , Cn3 , v052
	.byte		N04   , Fn3 , v064
	.byte	W04
	.byte	W01
	.byte		N05   , As2 , v056
	.byte	W01
	.byte		N04   , Cn2 , v088
	.byte		N03   , Gn2 , v060
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 , v064
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
@ 028   ----------------------------------------
mus_irreplaceable_beyonce_7_028:
	.byte		N22   , Cn2 , v088
	.byte		N21   , Gn2 , v072
	.byte		N21   , Cn3 , v088
	.byte		N22   , Fn3 , v092
	.byte	W01
	.byte		N21   , As2 , v068
	.byte	W20
	.byte	PEND
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v080
	.byte	W01
	.byte		N15   , Cn2 , v088
	.byte		N16   , As2 , v080
	.byte		N15   , Cn3 , v084
	.byte		N16   , Fn3 , v092
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Cn2 , v064
	.byte		N08   , Gn2 
	.byte		N11   , As2 
	.byte		N09   , Cn3 , v084
	.byte		N10   , Fn3 , v092
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v060
	.byte	W01
	.byte		        Cn2 , v064
	.byte		N15   , As2 , v060
	.byte		N15   , Cn3 , v076
	.byte		N15   , Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N10   , Cn2 , v076
	.byte		N15   , Gn2 , v068
	.byte		N09   , Cn3 , v084
	.byte		N10   , Fn3 , v088
	.byte	W01
	.byte		N09   , As2 , v068
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N05   , Ds2 , v060
	.byte		N04   , As2 , v032
	.byte		N04   , Cn3 
	.byte		N04   , Ds3 , v060
	.byte		N04   , Fn3 , v072
	.byte	W02
	.byte	W02
	.byte	W01
	.byte		N06   , Gn2 , v032
	.byte		N04   , As2 
	.byte	W01
	.byte		N05   , Ds2 , v060
	.byte		N04   , Cn3 , v032
	.byte		N04   , Ds3 , v064
	.byte		N05   , Fn3 , v072
	.byte	W04
	.byte	W01
	.byte		N23   , As2 , v076
	.byte	W01
@ 029   ----------------------------------------
	.byte		        Ds2 , v088
	.byte		N22   , Cn3 , v084
	.byte		N22   , Ds3 , v080
	.byte		N21   , Fn3 , v088
	.byte	W21
	.byte	W01
	.byte	W01
	.byte		N11   , Ds3 , v064
	.byte		N11   , Fn3 , v092
	.byte	W01
	.byte		N10   , Ds2 , v088
	.byte		N11   , As2 
	.byte		N11   , Cn3 , v084
	.byte	W11
	.byte	W01
	.byte		N04   , Ds2 , v068
	.byte		N05   , As2 , v048
	.byte		N04   , Cn3 , v072
	.byte		N05   , Ds3 , v064
	.byte		N05   , Fn3 , v092
	.byte	W04
	.byte	W01
	.byte		        Ds2 , v068
	.byte		N05   , As2 , v048
	.byte		N05   , Cn3 , v072
	.byte	W01
	.byte		        Ds3 , v064
	.byte		N04   , Fn3 , v092
	.byte	W04
	.byte	W01
	.byte		        As2 , v056
	.byte		N05   , Cn3 , v068
	.byte	W01
	.byte		N04   , Ds2 
	.byte		N05   , Ds3 
	.byte		N04   , Fn3 , v092
	.byte	W04
	.byte	W01
	.byte		N11   , Ds2 , v072
	.byte		N05   , As2 , v048
	.byte		N04   , Cn3 , v068
	.byte	W01
	.byte		        Ds3 , v072
	.byte		N04   , Fn3 , v088
	.byte	W04
	.byte	W01
	.byte		N11   , As2 , v056
	.byte		N11   , Cn3 , v068
	.byte	W01
	.byte		        Ds3 , v072
	.byte		N11   , Fn3 , v088
	.byte	W04
	.byte	W02
	.byte		N04   , Ds2 , v068
	.byte	W04
	.byte	W01
	.byte		N10   , Ds2 , v084
	.byte		N10   , As2 , v060
	.byte		N10   , Cn3 , v072
	.byte	W01
	.byte		        Ds3 , v084
	.byte		N10   , Fn3 , v100
	.byte	W10
	.byte	W01
	.byte		N02   , As1 , v036
	.byte	W01
	.byte		N05   , Fn2 , v048
	.byte		N04   , As2 
	.byte		N04   , Dn3 , v044
	.byte		N02   , Fn3 , v048
	.byte	W02
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N04   , As1 , v068
	.byte		N04   , Fn2 , v080
	.byte		N05   , As2 , v048
	.byte		N05   , Dn3 , v072
	.byte		N04   , Fn3 , v080
	.byte	W04
	.byte	W01
	.byte		N11   , As1 , v072
	.byte		N10   , Fn2 , v048
	.byte		N23   , As2 , v072
	.byte	W01
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_009
	.byte	W02
	.byte	W01
	.byte		N11   , As1 , v048
	.byte		N10   , Fn2 , v044
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v088
	.byte		N16   , As2 , v084
	.byte		N15   , Dn3 , v080
	.byte		N15   , Fn3 , v092
	.byte	W01
	.byte		        As1 , v084
	.byte	W08
	.byte	W03
	.byte		N04   , Fn2 , v060
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Fn2 , v080
	.byte		N09   , As2 
	.byte		N09   , Dn3 , v076
	.byte		N09   , Fn3 , v092
	.byte	W01
	.byte		N10   , As1 , v084
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Fn2 , v052
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 
	.byte		N15   , Fn3 , v088
	.byte	W01
	.byte		        As1 , v068
	.byte	W04
	.byte	W01
	.byte		N11   , Fn2 
	.byte	W09
	.byte	W02
	.byte		N09   , Fn3 , v088
	.byte	W01
	.byte		N10   , Fn2 
	.byte		N10   , As2 
	.byte		N10   , Dn3 , v076
	.byte	W01
	.byte		        As1 , v084
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Fn1 , v056
	.byte		N04   , Fn2 
	.byte		N03   , An2 , v028
	.byte		N04   , Cn3 , v052
	.byte		N04   , Fn3 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Fn1 
	.byte		N04   , Fn2 , v060
	.byte		N04   , An2 , v064
	.byte		N05   , Cn3 , v060
	.byte		N04   , Fn3 , v080
	.byte	W04
	.byte	W01
	.byte		N20   , Fn2 , v092
	.byte	W01
@ 031   ----------------------------------------
	.byte		N10   , Fn1 , v088
	.byte		N10   , An2 , v068
	.byte		N20   , Cn3 , v096
	.byte		N20   , Fn3 
	.byte	W10
	.byte	W01
	.byte		N11   , Fn1 , v056
	.byte	W01
	.byte		N10   , An2 
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Fn1 , v084
	.byte		N16   , Fn2 , v088
	.byte		N17   , An2 , v068
	.byte		N15   , Cn3 , v100
	.byte		N16   , Fn3 , v088
	.byte	W10
	.byte	W02
	.byte		        Fn1 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v084
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v084
	.byte		N09   , Fn3 
	.byte	W08
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N15   , Fn2 , v080
	.byte		N15   , An2 , v060
	.byte		N15   , Cn3 , v084
	.byte		N14   , Fn3 , v088
	.byte	W01
	.byte		N15   , Fn1 , v084
	.byte	W14
	.byte	W01
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W01
	.byte		N07   , Fn1 , v084
	.byte		N10   , Fn2 , v092
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v080
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N04   , As2 , v048
	.byte	W01
	.byte		N03   , Cn2 , v060
	.byte		N04   , Gn2 , v048
	.byte		N04   , Cn3 , v052
	.byte		N04   , Fn3 , v064
	.byte	W04
	.byte	W01
	.byte		N05   , As2 , v060
	.byte	W01
	.byte		N04   , Cn2 , v088
	.byte		N03   , Gn2 , v056
	.byte		N04   , Cn3 , v060
	.byte		N03   , Fn3 , v068
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N22   , Cn2 , v080
	.byte		N21   , Gn2 , v068
	.byte	W01
@ 032   ----------------------------------------
	.byte		N22   , As2 , v072
	.byte		N21   , Cn3 , v088
	.byte		N22   , Fn3 , v096
	.byte	W21
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v080
	.byte	W01
	.byte		N15   , Cn2 , v088
	.byte		N16   , As2 , v080
	.byte		N15   , Cn3 , v088
	.byte		N16   , Fn3 , v092
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Cn2 , v064
	.byte		N08   , Gn2 
	.byte		N11   , As2 
	.byte		N09   , Cn3 , v084
	.byte		N10   , Fn3 , v092
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v060
	.byte	W01
	.byte		        Cn2 , v064
	.byte		N15   , As2 , v060
	.byte		N15   , Cn3 , v076
	.byte	W01
	.byte		        Fn3 , v088
	.byte	W14
	.byte	W02
	.byte		N10   , Cn2 , v076
	.byte		N12   , Gn2 , v068
	.byte		N10   , Fn3 , v088
	.byte	W01
	.byte		N09   , As2 , v068
	.byte		N09   , Cn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Ds2 , v060
	.byte		N03   , As2 , v032
	.byte		N04   , Cn3 
	.byte		N01   , Ds3 , v056
	.byte		N04   , Fn3 , v076
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        As2 , v032
	.byte	W01
	.byte		N05   , Ds2 , v060
	.byte		N04   , Cn3 , v032
	.byte		N04   , Ds3 , v060
	.byte		N04   , Fn3 , v072
	.byte	W04
	.byte	W01
	.byte		N21   , As2 , v068
	.byte	W01
@ 033   ----------------------------------------
	.byte		        Ds2 , v088
	.byte		N20   , Cn3 , v084
	.byte		N21   , Ds3 , v076
	.byte		N21   , Fn3 , v100
	.byte	W20
	.byte	W01
	.byte	W02
	.byte		N56   , Ds3 , v068, gtp2
	.byte		N10   , Fn3 , v092
	.byte	W01
	.byte		N09   , Ds2 , v084
	.byte		N12   , As2 , v088
	.byte		N11   , Cn3 , v080
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N03   , Fn2 , v060
	.byte		N05   , Cn3 
	.byte		N05   , Fn3 
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		N10   , Fn2 , v072
	.byte		N09   , Cn3 , v068
	.byte		N10   , Fn3 , v092
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N04   , Fn2 , v072
	.byte		N04   , Cn3 
	.byte		N05   , Fn3 , v088
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N04   , Fn2 , v072
	.byte		N05   , Cn3 
	.byte		N05   , Fn3 , v088
	.byte	W05
	.byte	W01
	.byte		N04   , Fn2 , v048
	.byte		N04   , Cn3 
	.byte		N05   , Fn3 , v064
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v084
	.byte		N10   , Cn3 
	.byte		N09   , Fn3 , v100
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N04   , Ds2 , v028
	.byte		N04   , As2 , v040
	.byte		N04   , Dn3 , v036
	.byte		N03   , Fn3 , v056
	.byte		N03   , Gn3 
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N04   , Dn3 , v044
	.byte	W01
	.byte		N05   , Ds2 , v052
	.byte		N04   , As2 , v080
	.byte		N04   , Fn3 , v072
	.byte		N03   , Gn3 
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_013
	.byte	W01
	.byte		N11   , As2 , v040
	.byte	W01
	.byte		        Ds2 , v056
	.byte	W11
	.byte	W01
	.byte		N16   , As2 , v084
	.byte		N15   , Dn3 
	.byte		N15   , Fn3 , v088
	.byte		N15   , Gn3 , v068
	.byte	W01
	.byte		        Ds2 , v092
	.byte	W14
	.byte	W01
	.byte	W02
	.byte		N10   
	.byte		N09   , As2 , v084
	.byte		N09   , Dn3 , v076
	.byte		N09   , Fn3 , v092
	.byte		N09   , Gn3 , v068
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N15   , Ds2 , v072
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 , v060
	.byte		N15   , Fn3 , v088
	.byte		N15   , Gn3 , v068
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N09   , Fn3 , v092
	.byte		N09   , Gn3 , v068
	.byte	W01
	.byte		N10   , Ds2 , v092
	.byte		N10   , As2 , v088
	.byte		N10   , Dn3 , v076
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N04   , Gn1 , v068
	.byte		N10   , Fn2 , v072
	.byte		N04   , As2 , v052
	.byte		N04   , Cn3 , v048
	.byte		N02   , Fn3 , v076
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		N04   , Gn1 
	.byte		N05   , As2 , v060
	.byte		N05   , Cn3 
	.byte		N04   , Fn3 , v080
	.byte	W04
	.byte	W01
	.byte	W01
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_014
	.byte	W01
	.byte		N11   , Gn1 , v060
	.byte	W01
	.byte		N10   , As2 , v056
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N16   , Fn2 , v084
	.byte	W01
	.byte		N10   , Gn1 , v092
	.byte		N17   , As2 , v068
	.byte		N15   , Cn3 , v100
	.byte		N16   , Fn3 , v088
	.byte	W10
	.byte	W02
	.byte		        Gn1 , v084
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v080
	.byte	W01
	.byte		N10   , As2 , v060
	.byte		N10   , Cn3 , v084
	.byte		N09   , Fn3 
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N15   , Fn2 , v072
	.byte	W01
	.byte		        Gn1 , v092
	.byte		N15   , As2 , v064
	.byte		N15   , Cn3 , v084
	.byte		N14   , Fn3 , v088
	.byte	W15
	.byte	W02
	.byte		N10   , Fn2 , v084
	.byte		N11   , Fn3 , v096
	.byte	W01
	.byte		N10   , Gn1 , v088
	.byte		N10   , As2 , v064
	.byte		N10   , Cn3 , v080
	.byte	W10
	.byte	W01
	.byte		N03   , As2 , v052
	.byte		N02   , Dn3 , v048
	.byte	W01
	.byte		N03   , Ds2 , v060
	.byte		N04   , Gn2 , v040
	.byte		N03   , Fn3 , v060
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , As2 , v056
	.byte		N04   , Dn3 , v060
	.byte	W01
	.byte		        Ds2 , v068
	.byte		N03   , Gn2 , v052
	.byte		N04   , Fn3 , v064
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N11   , Ds2 , v060
	.byte	W01
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_015
	.byte	W01
	.byte		N11   , Gn2 , v028
	.byte		N11   , As2 , v044
	.byte	W01
	.byte		        Ds2 , v052
	.byte	W11
	.byte	W01
	.byte		N15   , Ds2 , v092
	.byte		N16   , Gn2 , v068
	.byte		N16   , As2 , v084
	.byte		N15   , Dn3 
	.byte		N17   , Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N02   , Dn2 , v076
	.byte		N01   , Fn2 , v048
	.byte		N02   , An2 , v068
	.byte		N02   , Cn3 , v060
	.byte	W02
	.byte	W03
	.byte		N10   , Fn2 , v048
	.byte		N11   , An2 , v064
	.byte		N11   , Cn3 , v060
	.byte	W01
	.byte		N10   , Dn2 , v076
	.byte		N21   , Fn3 , v088
	.byte	W10
	.byte	W01
	.byte		N11   , An2 , v064
	.byte		N11   , Cn3 , v060
	.byte	W01
	.byte		N10   , Dn2 , v072
	.byte		N21   , Fn2 , v084
	.byte	W09
	.byte	W02
	.byte		N12   , Fn3 , v088
	.byte	W01
	.byte		N11   , An2 , v064
	.byte		N11   , Cn3 , v060
	.byte	W01
	.byte		N10   , Dn2 , v076
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N01   , Cn2 , v036
	.byte		N02   , Gn2 , v032
	.byte		N01   , As2 
	.byte		N02   , Ds3 , v036
	.byte		N01   , Fn3 , v060
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N05   , Gn2 , v084
	.byte	W01
	.byte		N03   , Cn2 , v076
	.byte		N04   , As2 , v084
	.byte		N03   , Ds3 , v044
	.byte		N03   , Fn3 , v072
	.byte	W03
	.byte	W02
	.byte		N11   , Cn2 , v084
	.byte	W01
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_016
	.byte	W01
	.byte		N10   , Gn2 , v068
	.byte	W01
	.byte		        Cn2 
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N16   , Fn3 , v092
	.byte	W01
	.byte		N09   , Cn2 , v080
	.byte		N11   , Gn2 , v088
	.byte		N16   , As2 
	.byte		N17   , Ds3 , v084
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		N05   , Ds2 , v060
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Fn2 , v084
	.byte		N09   , As2 
	.byte		N09   , Cn3 , v088
	.byte		N09   , Fn3 , v084
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N16   , Fn2 , v072
	.byte		N16   , As2 
	.byte		N04   , Cn3 , v076
	.byte		N04   , Fn3 , v088
	.byte	W05
	.byte	W01
	.byte		N09   , Fn1 , v076
	.byte		N03   , Cn3 
	.byte		N04   , Fn3 , v080
	.byte	W04
	.byte	W01
	.byte		N05   , Cn3 , v076
	.byte	W01
	.byte		N04   , Fn3 
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N12   , Fn1 
	.byte		N08   , Fn2 , v080
	.byte		N08   , As2 
	.byte		N10   , Cn3 , v088
	.byte		N09   , Fn3 , v100
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N01   , As1 , v036
	.byte		N01   , Fn2 
	.byte		N02   , As2 , v032
	.byte		N02   , Ds3 , v036
	.byte		N01   , Fn3 , v056
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As1 , v064
	.byte		N03   , Fn2 , v076
	.byte		N04   , As2 , v084
	.byte		N03   , Ds3 , v044
	.byte		N03   , Fn3 , v072
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N09   , As1 , v068
	.byte	W01
@ 038   ----------------------------------------
	.byte		N10   , Fn2 , v084
	.byte		N23   , As2 , v076
	.byte		N21   , Dn3 , v084
	.byte		N21   , Fn3 , v092
	.byte	W08
	.byte	W02
	.byte	W02
	.byte		N11   , As1 , v048
	.byte		N08   , Fn2 , v056
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fn2 , v088
	.byte		N16   , As2 , v084
	.byte		N15   , Dn3 , v092
	.byte		N15   , Fn3 
	.byte	W01
	.byte		        As1 , v084
	.byte	W08
	.byte	W03
	.byte		N05   , Fn2 , v060
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N07   , Fn2 , v080
	.byte		N09   , As2 , v084
	.byte		N09   , Dn3 
	.byte		N09   , Fn3 , v092
	.byte	W01
	.byte		N10   , As1 , v084
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N03   , Fn2 , v052
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 , v068
	.byte		N15   , Fn3 , v088
	.byte	W01
	.byte		        As1 , v068
	.byte	W02
	.byte	W03
	.byte		N11   , Fn2 
	.byte	W09
	.byte	W02
	.byte		N09   , Fn3 , v092
	.byte	W01
	.byte		N08   , Fn2 , v088
	.byte		N10   , As2 
	.byte		N10   , Dn3 , v084
	.byte	W01
	.byte		        As1 , v080
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Fn1 , v060
	.byte		N04   , Fn2 , v056
	.byte		N10   , An2 , v028
	.byte		N04   , Cn3 , v056
	.byte		N04   , Fn3 , v076
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		        Fn1 , v080
	.byte		N03   , Fn2 , v060
	.byte		N04   , An2 
	.byte		N02   , Cn3 , v068
	.byte		N04   , Fn3 , v080
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N20   , Fn2 , v092
	.byte		N20   , Cn3 , v096
	.byte	W01
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_006
	.byte	W01
	.byte		N11   , Fn1 , v056
	.byte	W01
	.byte		N10   , An2 
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Fn1 , v084
	.byte		N16   , Fn2 , v088
	.byte		N17   , An2 , v068
	.byte		N15   , Cn3 , v100
	.byte		N16   , Fn3 , v088
	.byte	W10
	.byte	W02
	.byte		        Fn1 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v084
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v084
	.byte	W01
	.byte		N09   , Fn3 , v088
	.byte	W07
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N15   , Fn2 , v080
	.byte		N15   , An2 , v064
	.byte		N15   , Cn3 , v080
	.byte		N14   , Fn3 , v092
	.byte	W01
	.byte		N15   , Fn1 , v084
	.byte	W14
	.byte	W01
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W01
	.byte		N10   , Fn1 , v080
	.byte		N10   , Fn2 , v092
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v080
	.byte	W10
	.byte	W01
	.byte		N04   , As2 , v052
	.byte	W01
	.byte		N03   , Cn2 , v060
	.byte		N04   , Gn2 , v052
	.byte		N04   , Cn3 , v048
	.byte		N04   , Fn3 , v064
	.byte	W04
	.byte	W01
	.byte		N05   , As2 , v056
	.byte	W01
	.byte		N04   , Cn2 , v088
	.byte		N03   , Gn2 , v060
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 , v064
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_028
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v080
	.byte	W01
	.byte		N15   , Cn2 , v088
	.byte		N16   , As2 , v080
	.byte		N15   , Cn3 , v084
	.byte		N16   , Fn3 , v092
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Cn2 , v064
	.byte		N08   , Gn2 
	.byte		N11   , As2 
	.byte		N09   , Cn3 , v084
	.byte		N10   , Fn3 , v092
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v060
	.byte	W01
	.byte		        Cn2 , v064
	.byte		N15   , As2 , v060
	.byte		N15   , Cn3 , v076
	.byte		N15   , Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N10   , Cn2 , v076
	.byte		N15   , Gn2 , v068
	.byte		N09   , Cn3 , v084
	.byte		N10   , Fn3 , v088
	.byte	W01
	.byte		N09   , As2 , v068
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N05   , Ds2 , v060
	.byte		N04   , As2 , v032
	.byte		N04   , Cn3 
	.byte		N04   , Ds3 , v056
	.byte		N04   , Fn3 , v076
	.byte	W02
	.byte	W02
	.byte	W01
	.byte		N06   , Gn2 , v032
	.byte		N04   , As2 
	.byte	W01
	.byte		N05   , Ds2 , v060
	.byte		N04   , Cn3 , v032
	.byte		N04   , Ds3 , v064
	.byte		N05   , Fn3 , v072
	.byte	W04
	.byte	W01
	.byte		N23   , As2 , v076
	.byte	W01
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_020
	.byte	W01
	.byte		N10   , Cn3 , v056
	.byte	W01
	.byte		        Ds2 , v064
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N11   , Ds3 , v068
	.byte		N11   , Fn3 , v088
	.byte	W01
	.byte		N10   , Ds2 
	.byte		N11   , As2 
	.byte		N11   , Cn3 
	.byte	W10
	.byte	W01
	.byte		N05   , Ds3 , v072
	.byte	W01
	.byte		N04   , Ds2 , v076
	.byte		N05   , As2 , v048
	.byte		N05   , Cn3 , v072
	.byte		N05   , Fn3 , v092
	.byte	W05
	.byte	W01
	.byte		N11   , Ds2 , v072
	.byte		N11   , As2 , v056
	.byte		N11   , Cn3 , v076
	.byte		N11   , Ds3 , v080
	.byte		N11   , Fn3 , v088
	.byte	W11
	.byte	W01
	.byte		N04   , Ds2 , v072
	.byte		N05   , As2 , v048
	.byte		N04   , Cn3 , v076
	.byte		N04   , Ds3 , v080
	.byte		N04   , Fn3 , v088
	.byte	W04
	.byte	W01
	.byte		N11   , Ds2 , v072
	.byte		N11   , Ds3 , v080
	.byte	W01
	.byte		        As2 , v060
	.byte		N11   , Cn3 , v076
	.byte		N11   , Fn3 , v088
	.byte	W11
	.byte	W01
	.byte		N10   , Ds2 , v076
	.byte		N10   , As2 , v060
	.byte		N10   , Cn3 , v092
	.byte		N10   , Ds3 
	.byte		N10   , Fn3 , v100
	.byte	W10
	.byte	W01
	.byte		N02   , As1 , v036
	.byte	W01
	.byte		N05   , Fn2 , v048
	.byte		N04   , As2 , v052
	.byte		N04   , Dn3 , v044
	.byte		N02   , Fn3 
	.byte	W02
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N04   , As1 , v068
	.byte		N04   , Fn2 , v080
	.byte		N05   , As2 , v048
	.byte		N05   , Dn3 , v076
	.byte		N04   , Fn3 , v080
	.byte	W04
	.byte	W01
	.byte		N11   , As1 , v072
	.byte		N10   , Fn2 , v044
	.byte		N23   , As2 , v072
	.byte	W01
@ 042   ----------------------------------------
mus_irreplaceable_beyonce_7_042:
	.byte		N23   , Dn3 , v088
	.byte		N23   , Fn3 , v092
	.byte	W09
	.byte	PEND
	.byte	W02
	.byte	W01
	.byte		N11   , As1 , v044
	.byte		N10   , Fn2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v088
	.byte		N16   , As2 , v084
	.byte		N15   , Dn3 
	.byte		N15   , Fn3 , v088
	.byte	W01
	.byte		        As1 , v084
	.byte	W08
	.byte	W03
	.byte		N04   , Fn2 , v060
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Fn2 , v084
	.byte		N09   , As2 , v080
	.byte		N09   , Dn3 , v076
	.byte		N09   , Fn3 , v088
	.byte	W01
	.byte		N10   , As1 , v084
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Fn2 , v052
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 
	.byte		N15   , Fn3 , v088
	.byte	W01
	.byte		        As1 , v068
	.byte	W04
	.byte	W01
	.byte		N11   , Fn2 
	.byte	W09
	.byte	W02
	.byte		N09   , Fn3 , v092
	.byte	W01
	.byte		N10   , Fn2 , v088
	.byte		N10   , As2 
	.byte		N10   , Dn3 , v080
	.byte	W01
	.byte		        As1 
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Fn1 , v060
	.byte		N04   , Fn2 , v056
	.byte		N03   , An2 , v028
	.byte		N04   , Cn3 , v048
	.byte		N04   , Fn3 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Fn1 
	.byte		N05   , Fn2 , v064
	.byte		N02   , An2 
	.byte		N05   , Cn3 , v060
	.byte		N04   , Fn3 , v080
	.byte	W02
	.byte	W02
	.byte	W01
	.byte	W01
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_010
	.byte	W01
	.byte		N11   , Fn1 , v056
	.byte	W01
	.byte		N10   , An2 
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Fn1 , v084
	.byte		N16   , Fn2 , v092
	.byte		N17   , An2 , v068
	.byte		N15   , Cn3 , v100
	.byte		N16   , Fn3 , v088
	.byte	W10
	.byte	W02
	.byte		        Fn1 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v084
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v084
	.byte		N09   , Fn3 
	.byte	W08
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N15   , Fn2 , v080
	.byte		N15   , An2 , v064
	.byte		N15   , Cn3 , v080
	.byte		N14   , Fn3 , v088
	.byte	W01
	.byte		N15   , Fn1 , v084
	.byte	W14
	.byte	W01
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W01
	.byte		N10   , Fn1 , v080
	.byte		N10   , Fn2 , v092
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v080
	.byte	W10
	.byte	W01
	.byte		N04   , As2 , v052
	.byte	W01
	.byte		N03   , Cn2 , v064
	.byte		N04   , Gn2 , v048
	.byte		N04   , Cn3 , v052
	.byte		N04   , Fn3 , v060
	.byte	W04
	.byte	W01
	.byte		N05   , As2 
	.byte	W01
	.byte		N04   , Cn2 , v084
	.byte		N03   , Gn2 , v060
	.byte		N04   , Cn3 , v056
	.byte		N03   , Fn3 , v068
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
@ 044   ----------------------------------------
	.byte		N22   , Cn2 , v088
	.byte		N21   , Gn2 , v072
	.byte		N21   , Cn3 , v084
	.byte		N22   , Fn3 , v096
	.byte	W01
	.byte		N21   , As2 , v068
	.byte	W20
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v080
	.byte	W01
	.byte		N15   , Cn2 , v088
	.byte		N16   , As2 , v080
	.byte		N15   , Cn3 , v088
	.byte		N16   , Fn3 , v092
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Cn2 , v068
	.byte		N08   , Gn2 , v064
	.byte		N11   , As2 
	.byte		N09   , Cn3 , v084
	.byte		N10   , Fn3 , v092
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v060
	.byte	W01
	.byte		        Cn2 , v068
	.byte		N15   , As2 , v060
	.byte		N15   , Cn3 , v080
	.byte	W01
	.byte		        Fn3 , v084
	.byte	W14
	.byte	W02
	.byte		N10   , Cn2 , v080
	.byte		N12   , Gn2 , v068
	.byte		N10   , Fn3 , v088
	.byte	W01
	.byte		N09   , As2 , v068
	.byte		N09   , Cn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Dn2 , v060
	.byte		N03   , As2 , v032
	.byte		N04   , Cs3 
	.byte		N04   , Fn3 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		        As2 , v032
	.byte	W01
	.byte		N05   , Ds2 , v028
	.byte		N04   , Cs3 , v032
	.byte		N05   , Fn3 , v072
	.byte	W04
	.byte	W01
	.byte	W01
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_024
	.byte	W03
	.byte		N07   , As3 , v060
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Fn3 , v080
	.byte		N15   , As3 , v056
	.byte	W01
	.byte		N09   , Ds2 , v068
	.byte		N10   , As2 , v088
	.byte		N11   , Cs3 , v080
	.byte	W10
	.byte	W01
	.byte		N04   , Ds2 , v040
	.byte	W01
	.byte		        As2 , v060
	.byte		N05   , Cs3 
	.byte		N05   , Fn3 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N12   , As3 , v056
	.byte	W01
	.byte		N10   , Ds2 , v048
	.byte		N09   , As2 , v064
	.byte		N09   , Cs3 , v068
	.byte		N10   , Fn3 , v080
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N09   , Ds2 , v056
	.byte		N04   , As2 , v072
	.byte		N04   , Cs3 
	.byte		N05   , Fn3 , v076
	.byte	W04
	.byte	W01
	.byte		N11   , As3 , v060
	.byte	W01
	.byte		N05   , As2 , v072
	.byte		N05   , Cs3 
	.byte		N05   , Fn3 , v076
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		N04   , Ds2 , v032
	.byte		N04   , Cs3 , v048
	.byte		N05   , Fn3 , v052
	.byte	W01
	.byte		N04   , As2 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N08   , Ds2 , v068
	.byte		N10   , As2 , v084
	.byte		N10   , Cs3 
	.byte		N09   , Fn3 , v088
	.byte		N08   , As3 , v068
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N04   , Fn2 , v020
	.byte	W01
	.byte		N05   , An2 , v036
	.byte		N05   , Cn3 
	.byte		N04   , Fn3 , v056
	.byte		N03   , An3 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N04   , Fn2 , v060
	.byte		N05   , Cn3 , v044
	.byte	W01
	.byte		N04   , An2 
	.byte		N05   , Fn3 , v068
	.byte		N03   , An3 , v060
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
@ 046   ----------------------------------------
	.byte		N09   , Fn2 , v072
	.byte		N22   , An2 , v076
	.byte		N10   , Cn3 , v084
	.byte		N21   , Fn3 , v092
	.byte		N08   , An3 , v052
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N07   , Cn3 , v060
	.byte	W01
	.byte		        Fn2 , v048
	.byte		N07   , An3 , v056
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Fn3 , v080
	.byte		N15   , An3 , v056
	.byte	W01
	.byte		N09   , Fn2 , v072
	.byte		N10   , An2 , v088
	.byte		N11   , Cn3 , v084
	.byte	W10
	.byte	W01
	.byte		N04   , Fn2 , v040
	.byte	W01
	.byte		        An2 , v060
	.byte		N05   , Cn3 
	.byte		N05   , Fn3 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N12   , An3 , v056
	.byte	W01
	.byte		N10   , Fn2 , v048
	.byte		N09   , An2 , v064
	.byte		N09   , Cn3 , v068
	.byte		N10   , Fn3 , v080
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N09   , Fn2 , v056
	.byte		N04   , An2 , v072
	.byte		N04   , Cn3 
	.byte		N05   , Fn3 , v076
	.byte	W04
	.byte	W01
	.byte		N11   , An3 , v060
	.byte	W01
	.byte		N05   , An2 , v072
	.byte		N05   , Cn3 
	.byte		N05   , Fn3 , v076
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		N04   , Fn2 , v032
	.byte		N04   , Cn3 , v048
	.byte		N05   , Fn3 , v052
	.byte	W01
	.byte		N04   , An2 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v064
	.byte		N10   , An2 , v084
	.byte		N10   , Cn3 
	.byte		N09   , Fn3 , v088
	.byte		N10   , An3 , v064
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N04   , Fn2 , v020
	.byte		N03   , An2 , v036
	.byte		N03   , Cn3 , v040
	.byte		N05   , Fn3 , v036
	.byte		N04   , An3 , v056
	.byte	W04
	.byte	W01
	.byte		N05   , Fn3 , v044
	.byte	W01
	.byte		N04   , Fn2 , v060
	.byte		N05   , An2 , v044
	.byte		N05   , Cn3 
	.byte		N05   , An3 , v072
	.byte	W05
	.byte	W01
@ 047   ----------------------------------------
	.byte		N09   , Fn2 
	.byte		N22   , An2 
	.byte		N10   , Cn3 , v084
	.byte		N21   , Fn3 , v092
	.byte		N08   , An3 , v052
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N07   , Cn3 , v060
	.byte	W01
	.byte		        Fn2 , v048
	.byte		N07   , An3 , v060
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Fn3 , v080
	.byte		N15   , An3 , v056
	.byte	W01
	.byte		N09   , Fn2 , v072
	.byte		N10   , An2 , v088
	.byte		N11   , Cn3 , v080
	.byte	W10
	.byte	W01
	.byte		N04   , Fn2 , v040
	.byte	W01
	.byte		        An2 , v060
	.byte		N05   , Cn3 
	.byte		N05   , Fn3 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N12   , An3 , v056
	.byte	W01
	.byte		N10   , Fn2 , v052
	.byte		N09   , An2 , v068
	.byte		N09   , Cn3 , v064
	.byte		N10   , Fn3 , v080
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N09   , Fn2 , v056
	.byte		N04   , An2 , v072
	.byte		N04   , Cn3 
	.byte		N05   , Fn3 , v076
	.byte	W04
	.byte	W01
	.byte		N11   , An3 , v060
	.byte	W01
	.byte		N05   , An2 , v072
	.byte		N05   , Cn3 
	.byte		N05   , Fn3 , v076
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		N04   , Fn2 , v032
	.byte		N04   , Cn3 , v048
	.byte		N05   , Fn3 , v052
	.byte	W01
	.byte		N04   , An2 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v064
	.byte		N10   , An2 , v084
	.byte		N10   , Cn3 
	.byte		N09   , Fn3 , v088
	.byte		N10   , An3 , v068
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N04   , Ds2 , v020
	.byte		N03   , As2 , v036
	.byte		N03   , Dn3 , v040
	.byte		N05   , Fn3 , v036
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		        As2 , v044
	.byte		N05   , Dn3 
	.byte		N05   , Fn3 
	.byte	W01
	.byte		N04   , Ds2 , v060
	.byte	W04
	.byte	W01
	.byte	W01
@ 048   ----------------------------------------
	.byte		N22   , Ds2 , v072
	.byte		N10   , As2 , v084
	.byte		N21   , Dn3 , v092
	.byte		N08   , Fn3 , v072
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N07   , As2 , v060
	.byte	W01
	.byte		        Fn3 , v076
	.byte	W07
	.byte	W02
	.byte	W01
	.byte		N10   , Dn3 , v080
	.byte	W01
	.byte		        Ds2 , v088
	.byte		N11   , As2 , v084
	.byte		N15   , Fn3 , v076
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N04   , As2 , v060
	.byte		N05   , Dn3 , v048
	.byte	W01
	.byte		N04   , Ds2 , v060
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N09   , As2 , v068
	.byte		N10   , Dn3 , v080
	.byte		N12   , Fn3 , v076
	.byte	W01
	.byte		N09   , Ds2 , v068
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N05   , Dn3 , v076
	.byte	W01
	.byte		N04   , Ds2 , v072
	.byte		N04   , As2 
	.byte	W04
	.byte	W01
	.byte		N05   , Dn3 , v076
	.byte		N11   , Fn3 , v080
	.byte	W01
	.byte		N05   , Ds2 , v072
	.byte		N05   , As2 
	.byte	W04
	.byte	W01
	.byte		        Dn3 , v052
	.byte	W01
	.byte		N04   , As2 , v048
	.byte	W01
	.byte		        Ds2 
	.byte	W03
	.byte	W01
	.byte		N09   , Dn3 , v088
	.byte	W01
	.byte		N10   , Ds2 , v084
	.byte		N10   , As2 
	.byte		N10   , Fn3 
	.byte	W08
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N03   , Fn2 , v036
	.byte		N03   , An2 , v040
	.byte		N05   , Cn3 , v036
	.byte		N04   , Fn3 , v076
	.byte	W04
	.byte	W01
	.byte		N05   , An2 , v044
	.byte		N05   , Cn3 
	.byte	W01
	.byte		        Fn2 
	.byte		N05   , Fn3 , v088
	.byte	W05
	.byte	W01
@ 049   ----------------------------------------
	.byte		N22   , Fn2 , v076
	.byte		N10   , An2 , v084
	.byte		N21   , Cn3 , v092
	.byte		N08   , Fn3 , v064
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N07   , An2 , v060
	.byte	W01
	.byte		        Fn3 , v076
	.byte	W07
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N10   , Fn2 , v088
	.byte		N11   , An2 , v080
	.byte		N10   , Cn3 
	.byte		N15   , Fn3 , v072
	.byte	W11
	.byte	W01
	.byte		N04   , An2 , v060
	.byte	W01
	.byte		        Fn2 
	.byte		N04   , Cn3 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N09   , An2 , v068
	.byte		N12   , Fn3 , v072
	.byte	W01
	.byte		N09   , Fn2 , v064
	.byte		N10   , Cn3 , v080
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N05   , Cn3 , v076
	.byte	W01
	.byte		N04   , Fn2 , v072
	.byte		N04   , An2 
	.byte	W04
	.byte	W01
	.byte		N05   , Cn3 , v076
	.byte		N11   , Fn3 
	.byte	W01
	.byte		N05   , Fn2 , v072
	.byte		N05   , An2 
	.byte	W05
	.byte	W01
	.byte		N04   , An2 , v048
	.byte		N05   , Cn3 , v052
	.byte	W01
	.byte		N04   , Fn2 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N10   , Fn2 , v084
	.byte		N10   , An2 
	.byte		N09   , Cn3 , v088
	.byte		N10   , Fn3 , v080
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N03   , Fn2 , v036
	.byte	W01
	.byte		        As2 , v048
	.byte		N05   , Dn3 , v044
	.byte		N05   , Fn3 , v056
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		        Fn2 , v044
	.byte		N05   , Dn3 , v052
	.byte		N05   , Fn3 , v064
	.byte	W01
	.byte		        As2 , v044
	.byte	W05
	.byte	W01
@ 050   ----------------------------------------
	.byte		N22   , Fn2 , v072
	.byte		N01   , As2 , v084
	.byte		N21   , Dn3 , v092
	.byte		N08   , Fn3 , v068
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N07   , As2 , v056
	.byte	W01
	.byte		        Fn3 , v076
	.byte	W07
	.byte	W02
	.byte	W01
	.byte		N10   , Dn3 , v080
	.byte	W01
	.byte		        Fn2 , v088
	.byte		N11   , As2 , v080
	.byte		N15   , Fn3 , v076
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N04   , As2 , v060
	.byte		N05   , Dn3 , v032
	.byte	W01
	.byte		N04   , Fn2 , v052
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N05   , As2 , v064
	.byte		N05   , Fn3 , v068
	.byte	W01
	.byte		N04   , Fn2 , v064
	.byte		N03   , Cn3 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v064
	.byte		N09   , An2 , v072
	.byte		N08   , Cn3 , v076
	.byte		N07   , Fn3 , v080
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N05   , Cn3 , v076
	.byte		N11   , Fn3 
	.byte	W01
	.byte		N05   , Fn2 , v072
	.byte		N05   , An2 
	.byte	W04
	.byte	W01
	.byte		        Cn3 , v052
	.byte	W01
	.byte		N04   , An2 , v048
	.byte	W01
	.byte		        Fn2 
	.byte	W03
	.byte	W01
	.byte		N09   , Cn3 , v088
	.byte	W01
	.byte		N10   , Fn2 , v084
	.byte		N10   , An2 
	.byte		N10   , Fn3 
	.byte	W08
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N03   , Fn2 , v036
	.byte		N03   , An2 , v040
	.byte		N05   , Cn3 , v036
	.byte		N04   , Fn3 , v072
	.byte	W04
	.byte	W01
	.byte		N05   , An2 , v044
	.byte		N05   , Cn3 
	.byte	W01
	.byte		        Fn2 
	.byte		N05   , Fn3 , v088
	.byte	W05
	.byte	W01
@ 051   ----------------------------------------
	.byte		N22   , Gn2 , v076
	.byte		N10   , As2 , v084
	.byte		N21   , Dn3 , v092
	.byte		N08   , Fn3 , v064
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N07   , As2 , v060
	.byte	W01
	.byte		        Fn3 , v072
	.byte	W07
	.byte	W02
	.byte	W02
	.byte		N11   , As2 , v080
	.byte		N10   , Dn3 
	.byte		N15   , Fn3 , v072
	.byte	W01
	.byte		N10   , Gn2 , v088
	.byte	W10
	.byte	W01
	.byte		N04   , As2 , v060
	.byte	W01
	.byte		        Gn2 
	.byte		N04   , Dn3 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N09   , As2 , v064
	.byte		N07   , Fn3 , v072
	.byte	W01
	.byte		N09   , Gn2 , v068
	.byte		N10   , Dn3 , v080
	.byte	W07
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N05   , Cn3 , v076
	.byte		N05   , Fn3 , v084
	.byte	W01
	.byte		N04   , Fn2 , v072
	.byte		N04   , An2 
	.byte	W04
	.byte	W01
	.byte		N05   , Cn3 , v076
	.byte		N11   , Fn3 , v072
	.byte	W01
	.byte		N05   , Fn2 
	.byte		N05   , An2 
	.byte	W05
	.byte	W01
	.byte		N04   , An2 , v048
	.byte		N05   , Cn3 , v052
	.byte	W01
	.byte		N04   , Fn2 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N10   , Fn2 , v084
	.byte		N10   , An2 
	.byte		N09   , Cn3 , v088
	.byte		N10   , Fn3 , v080
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N03   , Cn2 , v048
	.byte		N03   , Gn2 , v052
	.byte		N05   , Cn3 , v048
	.byte		N05   , Fn3 , v064
	.byte	W04
	.byte	W01
	.byte		        Cn3 
	.byte		N05   , Fn3 , v076
	.byte	W01
	.byte		N04   , Cn2 , v064
	.byte		N05   , Gn2 
	.byte	W04
	.byte	W01
	.byte	W01
@ 052   ----------------------------------------
	.byte		N22   , Cn2 , v072
	.byte		N01   , Gn2 , v084
	.byte		N21   , Cn3 , v092
	.byte		N08   , Fn3 , v064
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N07   , Gn2 , v060
	.byte	W01
	.byte		        Fn3 , v072
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Cn2 , v088
	.byte		N11   , Gn2 , v080
	.byte		N10   , Cn3 
	.byte	W01
	.byte		N15   , Fn3 , v072
	.byte	W10
	.byte	W01
	.byte		N04   , Gn2 , v060
	.byte		N05   , Cn3 , v032
	.byte	W01
	.byte		N04   , Cn2 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N10   , Gn2 , v064
	.byte		N09   , Cn3 , v076
	.byte	W01
	.byte		N04   , Cn2 , v064
	.byte		N09   , Fn3 
	.byte	W05
	.byte	W01
	.byte		N08   , Cn2 , v060
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N05   , Fn3 , v064
	.byte	W01
	.byte		N09   , Gn2 , v072
	.byte		N09   , Cn3 , v076
	.byte	W03
	.byte	W01
	.byte	W02
	.byte		N05   , Cn2 , v072
	.byte		N09   , Fn3 , v076
	.byte	W03
	.byte	W02
	.byte		N05   , Cn3 , v052
	.byte	W01
	.byte		N04   , Gn2 , v048
	.byte	W01
	.byte		        Cn2 , v044
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N10   , Fn3 , v080
	.byte	W01
	.byte		        Dn2 , v084
	.byte		N10   , As2 
	.byte		N09   , Dn3 , v088
	.byte	W10
	.byte	W01
	.byte		N03   , Ds2 , v032
	.byte		N05   , Dn3 , v036
	.byte	W01
	.byte		N03   , As2 , v040
	.byte		N04   , Fn3 , v072
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N05   , Ds2 , v040
	.byte		N05   , As2 , v044
	.byte	W01
	.byte		        Dn3 
	.byte		N05   , Fn3 , v084
	.byte	W05
	.byte	W01
@ 053   ----------------------------------------
	.byte		N22   , Ds2 , v072
	.byte		N10   , As2 , v084
	.byte		N21   , Dn3 , v076
	.byte		N08   , Fn3 , v080
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N07   , As2 , v060
	.byte	W01
	.byte		        Fn3 , v072
	.byte	W07
	.byte	W02
	.byte	W02
	.byte		N11   , As2 , v084
	.byte		N15   , Fn3 , v072
	.byte	W01
	.byte		N10   , Ds2 , v088
	.byte		N10   , Dn3 , v064
	.byte	W10
	.byte	W01
	.byte		N04   , As2 , v060
	.byte	W01
	.byte		        Ds2 
	.byte		N04   , Dn3 , v032
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N09   , As2 , v064
	.byte		N12   , Fn3 , v072
	.byte	W01
	.byte		N09   , Ds2 , v064
	.byte		N10   , Dn3 , v068
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N04   , Ds2 , v072
	.byte		N04   , As2 
	.byte		N05   , Dn3 , v060
	.byte	W04
	.byte	W01
	.byte		N11   , Fn3 , v072
	.byte	W01
	.byte		N05   , Ds2 
	.byte		N05   , As2 
	.byte		N05   , Dn3 , v060
	.byte	W05
	.byte	W01
	.byte		N04   , As2 , v048
	.byte		N05   , Dn3 , v040
	.byte	W01
	.byte		N04   , Ds2 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N10   , Ds2 , v084
	.byte		N10   , As2 
	.byte		N09   , Dn3 , v072
	.byte		N08   , Fn3 , v076
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N03   , Fn2 , v036
	.byte	W01
	.byte		N05   , As2 , v024
	.byte		N03   , Cn3 , v048
	.byte		N05   , Fn3 , v056
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		        Fn2 , v044
	.byte		N05   , As2 , v048
	.byte		N03   , Fn3 , v064
	.byte	W01
	.byte		N05   , Cn3 , v044
	.byte	W03
	.byte	W02
	.byte		N01   , Cn3 , v076
	.byte		N08   , Fn3 , v080
	.byte	W01
@ 054   ----------------------------------------
	.byte		N22   , Fn2 , v076
	.byte		N10   , As2 , v068
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N07   , As2 , v040
	.byte		N07   , Fn3 , v072
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W02
	.byte	W01
	.byte		N10   , Fn2 , v088
	.byte		N11   , As2 , v064
	.byte		N10   , Cn3 , v068
	.byte		N15   , Fn3 , v072
	.byte	W11
	.byte	W01
	.byte		N04   , As2 , v044
	.byte	W01
	.byte		        Fn2 , v060
	.byte		N04   , Cn3 , v032
	.byte	W02
	.byte	W02
	.byte	W01
	.byte		N09   , As2 , v048
	.byte		N12   , Fn3 , v072
	.byte	W01
	.byte		N09   , Fn2 , v068
	.byte		N10   , Cn3 
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N04   , As2 , v052
	.byte		N05   , Cn3 , v064
	.byte	W01
	.byte		N04   , Fn2 , v072
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N05   , As2 , v052
	.byte		N05   , Cn3 , v060
	.byte		N11   , Fn3 , v072
	.byte	W01
	.byte		N05   , Fn2 
	.byte	W05
	.byte	W01
	.byte		N04   , Fn2 , v048
	.byte		N04   , As2 , v028
	.byte		N05   , Cn3 , v040
	.byte	W04
	.byte	W01
	.byte		N10   , As2 , v068
	.byte	W01
	.byte		        Fn2 , v084
	.byte		N09   , Cn3 , v072
	.byte		N08   , Fn3 , v080
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N03   , Fn2 , v036
	.byte		N05   , As2 , v004
	.byte		N03   , Cn3 , v044
	.byte		N05   , Fn3 , v060
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		        Fn2 , v044
	.byte		N05   , As2 
	.byte		N03   , Fn3 , v064
	.byte	W01
	.byte		N05   , Cn3 , v044
	.byte	W02
	.byte	W02
	.byte	W01
	.byte	W01
@ 055   ----------------------------------------
	.byte		N22   , Fn2 , v072
	.byte		N10   , As2 , v068
	.byte		N21   , Cn3 , v076
	.byte		N08   , Fn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N07   , As2 , v040
	.byte	W01
	.byte		        Fn3 , v072
	.byte	W07
	.byte	W02
	.byte	W02
	.byte		N11   , As2 , v064
	.byte		N15   , Fn3 , v072
	.byte	W01
	.byte		N10   , Fn2 , v088
	.byte		N10   , Cn3 , v064
	.byte	W10
	.byte	W01
	.byte		N04   , As2 , v040
	.byte	W01
	.byte		        Fn2 , v060
	.byte		N04   , Cn3 , v032
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N09   , As2 , v048
	.byte		N12   , Fn3 , v072
	.byte	W01
	.byte		N09   , Fn2 , v068
	.byte		N10   , Cn3 , v064
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N04   , Fn2 , v072
	.byte		N04   , As2 , v052
	.byte		N05   , Cn3 , v064
	.byte	W04
	.byte	W01
	.byte		N11   , Fn3 , v072
	.byte	W01
	.byte		N05   , Fn2 
	.byte		N05   , As2 , v056
	.byte		N05   , Cn3 , v060
	.byte	W05
	.byte	W01
	.byte		N04   , As2 , v028
	.byte		N05   , Cn3 , v040
	.byte	W01
	.byte		N04   , Fn2 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N10   , Fn2 , v084
	.byte		N10   , As2 , v064
	.byte		N09   , Cn3 , v072
	.byte		N08   , Fn3 , v076
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N03   , Fn2 , v036
	.byte	W01
	.byte		N05   , As2 , v004
	.byte		N03   , Cn3 , v048
	.byte		N05   , Fn3 , v060
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		        Fn2 , v044
	.byte		N05   , As2 
	.byte	W01
	.byte		N02   , Cn3 
	.byte	W01
	.byte		TIE   , Fn3 , v068
	.byte	W02
	.byte		N96   , Dn3 , v072
	.byte	W02
	.byte	W01
@ 056   ----------------------------------------
	.byte		N90   , As2 , v084, gtp1
	.byte	W01
	.byte		N84   , As1 , v088, gtp3
	.byte		N88   , Fn2 , v068
	.byte	W88
	.byte	W02
	.byte	W02
	.byte		EOT   , Fn3 
	.byte		N90   , Fn2 , v064
	.byte	W01
	.byte	W01
	.byte		N84   , Fn1 , v076, gtp2
	.byte		N88   , An2 , v064
	.byte	W01
@ 057   ----------------------------------------
	.byte	W01
	.byte		N84   , Cn3 , v088, gtp1
	.byte	W02
	.byte		N80   , Fn3 , v080, gtp1
	.byte	W80
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W04
	.byte		N84   , Cn2 , v072, gtp2
	.byte	W02
	.byte		N88   , Gn2 , v072, gtp1
	.byte	W02
@ 058   ----------------------------------------
mus_irreplaceable_beyonce_7_058:
	.byte	W01
	.byte		N84   , As2 , v076, gtp3
	.byte		N88   , Ds3 , v076, gtp1
	.byte	W02
	.byte		N84   , Fn3 , v072, gtp3
	.byte	W78
	.byte	W01
	.byte	PEND
	.byte	W06
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N80   , Ds2 , v068, gtp1
	.byte	W02
	.byte		        Fs2 , v068, gtp2
	.byte	W02
	.byte		N78   , As2 , v076, gtp1
	.byte	W01
@ 059   ----------------------------------------
	.byte		N88   , Ds3 , v080, gtp1
	.byte	W02
	.byte		N84   , Fs3 , v076
	.byte	W72
	.byte	W03
	.byte	W02
	.byte	W01
	.byte	W04
	.byte		N08   , Fn2 , v060
	.byte	W01
	.byte		N09   , As2 , v056
	.byte	W01
	.byte	W03
	.byte	W03
	.byte	W01
	.byte		N84   , As1 , v072, gtp3
	.byte	W01
	.byte	W01
	.byte		N88   , Fn2 , v068
	.byte	W01
@ 060   ----------------------------------------
	.byte	W01
	.byte		N90   , As2 , v080, gtp1
	.byte	W01
	.byte		N88   , Dn3 , v072, gtp1
	.byte		N84   , Fn3 , v068, gtp2
	.byte	W80
	.byte	W02
	.byte	W03
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		N90   , Fn2 , v064
	.byte	W02
	.byte		N84   , Fn1 , v076, gtp2
	.byte		N88   , An2 , v064
	.byte	W01
@ 061   ----------------------------------------
	.byte	W01
	.byte		N84   , Cn3 , v084, gtp1
	.byte	W02
	.byte		N80   , Fn3 , v080, gtp1
	.byte	W80
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W04
	.byte		N84   , Cn2 , v072, gtp2
	.byte	W02
	.byte		N88   , Gn2 , v072, gtp1
	.byte	W02
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_058
	.byte	W06
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N80   , Ds2 , v064, gtp1
	.byte	W02
	.byte		        Fs2 , v072, gtp2
	.byte	W02
	.byte		N78   , As2 , v076, gtp1
	.byte	W01
@ 063   ----------------------------------------
	.byte		N80   , Ds3 , v076, gtp1
	.byte	W02
	.byte		N84   , Fs3 , v076, gtp3
	.byte	W72
	.byte	W03
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N10   , Fs2 , v040
	.byte	W01
	.byte		N09   , As2 , v036
	.byte		N09   , Ds3 , v040
	.byte	W04
	.byte	W05
	.byte	W01
	.byte	W01
@ 064   ----------------------------------------
	.byte	W01
	.byte		        Fs2 
	.byte		N06   , As2 , v048
	.byte		N07   , Ds3 , v044
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N09   , Fs2 , v040
	.byte		N09   , As2 
	.byte		N08   , Ds3 , v016
	.byte	W09
	.byte	W03
	.byte		N11   , Fs2 , v056
	.byte		N08   , As2 , v052
	.byte		N09   , Ds3 , v028
	.byte		N09   , Fs3 , v020
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N10   , Ds3 , v032
	.byte		N10   , Fs3 , v024
	.byte	W01
	.byte		        Fs2 , v060
	.byte		N08   , As2 
	.byte	W08
	.byte	W01
	.byte	W02
	.byte	W01
	.byte		        Fs2 , v072
	.byte		N09   , As2 , v068
	.byte		N10   , Ds3 , v056
	.byte		N10   , Fs3 , v052
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N09   , Fs2 , v084
	.byte		N08   , As2 , v068
	.byte		N09   , Ds3 
	.byte		N09   , Fs3 , v064
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N08   , Fs2 , v080
	.byte		N11   , As2 , v068
	.byte		N08   , Ds3 , v064
	.byte		N08   , Fs3 , v056
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		N10   , Fs2 , v088
	.byte		N11   , As2 , v084
	.byte		N11   , Ds3 
	.byte		N11   , Fs3 
	.byte	W11
	.byte	W01
@ 065   ----------------------------------------
	.byte		N10   , Fn2 
	.byte		N23   , As2 , v076
	.byte		N21   , Dn3 , v084
	.byte		N21   , Fn3 , v092
	.byte	W10
	.byte	W02
	.byte		N11   , As1 , v048
	.byte		N08   , Fn2 , v056
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fn2 , v088
	.byte		N16   , As2 , v084
	.byte		N15   , Dn3 , v092
	.byte		N15   , Fn3 
	.byte	W01
	.byte		        As1 , v084
	.byte	W08
	.byte	W03
	.byte		N05   , Fn2 , v060
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N07   , Fn2 , v084
	.byte		N09   , As2 
	.byte		N09   , Dn3 
	.byte		N09   , Fn3 , v088
	.byte	W01
	.byte		N10   , As1 , v084
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N03   , Fn2 , v052
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 , v072
	.byte		N15   , Fn3 , v088
	.byte	W01
	.byte		        As1 , v064
	.byte	W02
	.byte	W03
	.byte		N11   , Fn2 , v068
	.byte	W09
	.byte	W02
	.byte		N09   , Fn3 , v088
	.byte	W01
	.byte		N08   , Fn2 
	.byte		N10   , As2 
	.byte		N10   , Dn3 
	.byte	W01
	.byte		        As1 , v084
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Fn1 , v060
	.byte		N04   , Fn2 , v056
	.byte		N10   , An2 , v028
	.byte		N04   , Cn3 , v056
	.byte		N04   , Fn3 , v076
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		        Fn1 
	.byte		N03   , Fn2 , v064
	.byte		N04   , An2 , v060
	.byte		N02   , Cn3 , v068
	.byte		N04   , Fn3 , v080
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N20   , Fn2 , v092
	.byte		N20   , Cn3 , v096
	.byte	W01
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_006
	.byte	W01
	.byte		N11   , Fn1 , v060
	.byte	W01
	.byte		N10   , An2 , v056
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Fn1 , v084
	.byte		N16   , Fn2 , v092
	.byte		N17   , An2 , v068
	.byte		N15   , Cn3 , v100
	.byte		N16   , Fn3 , v088
	.byte	W10
	.byte	W02
	.byte		        Fn1 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v088
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 , v084
	.byte	W01
	.byte		N09   , Fn3 , v088
	.byte	W07
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N15   , Fn2 , v080
	.byte		N15   , An2 , v060
	.byte		N15   , Cn3 , v080
	.byte		N14   , Fn3 , v092
	.byte	W01
	.byte		N15   , Fn1 , v084
	.byte	W14
	.byte	W01
	.byte	W01
	.byte		N11   , Fn3 , v092
	.byte	W01
	.byte		N10   , Fn1 , v080
	.byte		N10   , Fn2 , v092
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v080
	.byte	W10
	.byte	W01
	.byte		N04   , As2 , v052
	.byte	W01
	.byte		N03   , Cn2 , v064
	.byte		N04   , Gn2 , v048
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 , v064
	.byte	W04
	.byte	W01
	.byte		N05   , As2 , v056
	.byte	W01
	.byte		N04   , Cn2 , v088
	.byte		N03   , Gn2 , v056
	.byte		N04   , Cn3 , v060
	.byte		N04   , Fn3 , v064
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_007
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v080
	.byte	W01
	.byte		N15   , Cn2 , v088
	.byte		N16   , As2 , v080
	.byte		N15   , Cn3 , v084
	.byte		N16   , Fn3 , v096
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Cn2 , v068
	.byte		N08   , Gn2 , v064
	.byte		N11   , As2 
	.byte		N09   , Cn3 , v084
	.byte		N10   , Fn3 , v088
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v060
	.byte	W01
	.byte		        Cn2 , v068
	.byte		N15   , As2 , v060
	.byte		N15   , Cn3 , v080
	.byte		N15   , Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N10   , Cn2 , v076
	.byte		N15   , Gn2 , v068
	.byte		N09   , Cn3 , v084
	.byte		N10   , Fn3 , v088
	.byte	W01
	.byte		N09   , As2 , v068
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N05   , Ds2 , v060
	.byte		N04   , As2 , v032
	.byte		N04   , Cn3 
	.byte		N04   , Ds3 , v056
	.byte		N04   , Fn3 , v076
	.byte	W02
	.byte	W02
	.byte	W01
	.byte		N06   , Gn2 , v032
	.byte		N04   , As2 
	.byte	W01
	.byte		N05   , Ds2 , v060
	.byte		N04   , Cn3 , v032
	.byte		N04   , Ds3 , v060
	.byte		N05   , Fn3 , v072
	.byte	W04
	.byte	W01
	.byte		N23   , As2 
	.byte	W01
@ 068   ----------------------------------------
mus_irreplaceable_beyonce_7_068:
	.byte		N10   , Ds2 , v088
	.byte		N10   , Cn3 , v092
	.byte		N22   , Ds3 , v080
	.byte		N21   , Fn3 , v088
	.byte	W10
	.byte	PEND
	.byte	W01
	.byte		N10   , Cn3 , v056
	.byte	W01
	.byte		        Ds2 , v064
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N11   , Ds3 , v068
	.byte		N11   , Fn3 , v088
	.byte	W01
	.byte		N10   , Ds2 
	.byte		N11   , As2 
	.byte		N11   , Cn3 
	.byte	W10
	.byte	W01
	.byte		N05   , Ds3 , v072
	.byte	W01
	.byte		N04   , Ds2 , v076
	.byte		N05   , As2 , v048
	.byte		N05   , Cn3 , v072
	.byte		N05   , Fn3 , v092
	.byte	W05
	.byte	W01
	.byte		N11   , Ds2 , v072
	.byte		N11   , As2 , v056
	.byte		N11   , Cn3 , v080
	.byte		N11   , Ds3 
	.byte		N11   , Fn3 , v088
	.byte	W11
	.byte	W01
	.byte		N04   , Ds2 , v072
	.byte		N05   , As2 , v048
	.byte		N04   , Cn3 , v080
	.byte		N04   , Ds3 
	.byte		N04   , Fn3 , v088
	.byte	W04
	.byte	W01
	.byte		N11   , Ds2 , v072
	.byte		N11   , Ds3 , v080
	.byte	W01
	.byte		        As2 , v056
	.byte		N11   , Cn3 , v080
	.byte		N11   , Fn3 , v088
	.byte	W11
	.byte	W01
	.byte		N10   , Ds2 , v076
	.byte		N10   , As2 , v060
	.byte		N10   , Cn3 , v092
	.byte		N10   , Ds3 
	.byte		N10   , Fn3 , v100
	.byte	W10
	.byte	W01
	.byte		N02   , As1 , v040
	.byte	W01
	.byte		N05   , Fn2 , v048
	.byte		N04   , As2 
	.byte		N04   , Dn3 , v044
	.byte		N02   , Fn3 
	.byte	W02
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N04   , As1 , v068
	.byte		N04   , Fn2 , v080
	.byte		N05   , As2 , v052
	.byte		N05   , Dn3 , v076
	.byte		N04   , Fn3 , v080
	.byte	W04
	.byte	W01
	.byte		N11   , As1 , v072
	.byte		N10   , Fn2 , v048
	.byte		N23   , As2 , v076
	.byte	W01
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_009
	.byte	W02
	.byte	W01
	.byte		N11   , As1 , v048
	.byte		N10   , Fn2 , v044
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v088
	.byte		N16   , As2 , v084
	.byte		N15   , Dn3 , v080
	.byte		N15   , Fn3 , v092
	.byte	W01
	.byte		        As1 , v084
	.byte	W08
	.byte	W03
	.byte		N04   , Fn2 , v060
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Fn2 , v084
	.byte		N09   , As2 , v080
	.byte		N09   , Dn3 , v076
	.byte		N09   , Fn3 , v088
	.byte	W01
	.byte		N10   , As1 , v084
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Fn2 , v052
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 
	.byte		N15   , Fn3 , v088
	.byte	W01
	.byte		        As1 , v064
	.byte	W04
	.byte	W01
	.byte		N11   , Fn2 , v068
	.byte	W09
	.byte	W02
	.byte		N09   , Fn3 , v092
	.byte	W01
	.byte		N10   , Fn2 , v088
	.byte		N10   , As2 
	.byte		N10   , Dn3 , v080
	.byte	W01
	.byte		        As1 , v084
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Fn1 , v060
	.byte		N04   , Fn2 , v056
	.byte		N03   , An2 , v028
	.byte		N04   , Cn3 , v048
	.byte		N04   , Fn3 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Fn1 
	.byte		N05   , Fn2 , v060
	.byte		N02   , An2 , v064
	.byte		N05   , Cn3 , v060
	.byte		N04   , Fn3 , v080
	.byte	W02
	.byte	W02
	.byte	W01
	.byte	W01
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_010
	.byte	W01
	.byte		N11   , Fn1 , v060
	.byte	W01
	.byte		N10   , An2 , v056
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Fn1 , v088
	.byte		N16   , Fn2 , v092
	.byte		N17   , An2 , v068
	.byte		N15   , Cn3 , v100
	.byte		N16   , Fn3 , v088
	.byte	W10
	.byte	W02
	.byte		        Fn1 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v088
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v084
	.byte		N09   , Fn3 , v088
	.byte	W08
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N15   , Fn2 , v080
	.byte		N15   , An2 , v060
	.byte		N15   , Cn3 , v084
	.byte		N14   , Fn3 , v088
	.byte	W01
	.byte		N15   , Fn1 , v084
	.byte	W14
	.byte	W01
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W01
	.byte		N10   , Fn1 , v080
	.byte		N10   , Fn2 , v092
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v080
	.byte	W10
	.byte	W01
	.byte		N04   , As2 , v048
	.byte	W01
	.byte		N03   , Cn2 , v064
	.byte		N04   , Gn2 , v048
	.byte		N04   , Cn3 , v052
	.byte		N04   , Fn3 , v064
	.byte	W04
	.byte	W01
	.byte		N05   , As2 , v056
	.byte	W01
	.byte		N04   , Cn2 , v084
	.byte		N03   , Gn2 , v060
	.byte		N04   , Cn3 , v056
	.byte		N03   , Fn3 , v068
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
@ 071   ----------------------------------------
	.byte		N22   , Cn2 , v088
	.byte		N21   , Gn2 , v068
	.byte		N21   , Cn3 , v084
	.byte		N22   , Fn3 , v096
	.byte	W01
	.byte		N21   , As2 , v068
	.byte	W20
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v080
	.byte	W01
	.byte		N15   , Cn2 , v088
	.byte		N16   , As2 , v080
	.byte		N15   , Cn3 , v084
	.byte		N16   , Fn3 , v092
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Cn2 , v064
	.byte		N08   , Gn2 
	.byte		N11   , As2 
	.byte		N09   , Cn3 , v084
	.byte		N10   , Fn3 , v088
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v060
	.byte	W01
	.byte		        Cn2 , v064
	.byte		N15   , As2 , v060
	.byte		N15   , Cn3 , v076
	.byte	W01
	.byte		        Fn3 , v088
	.byte	W14
	.byte	W02
	.byte		N10   , Cn2 , v080
	.byte		N12   , Gn2 , v068
	.byte		N10   , Fn3 , v088
	.byte	W01
	.byte		N09   , As2 , v068
	.byte		N09   , Cn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Dn2 , v060
	.byte		N03   , As2 , v032
	.byte		N04   , Cs3 
	.byte		N04   , Fn3 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		        As2 , v032
	.byte	W01
	.byte		N05   , Ds2 , v028
	.byte		N04   , Cs3 , v032
	.byte		N05   , Fn3 , v072
	.byte	W04
	.byte	W01
	.byte	W01
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_024
	.byte	W03
	.byte		N07   , As3 , v060
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Fn3 , v080
	.byte		N15   , As3 , v060
	.byte	W01
	.byte		N09   , Ds2 , v072
	.byte		N10   , As2 , v088
	.byte		N11   , Cs3 , v080
	.byte	W10
	.byte	W01
	.byte		N04   , Ds2 , v044
	.byte	W01
	.byte		        As2 , v060
	.byte		N05   , Cs3 
	.byte		N05   , Fn3 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N12   , As3 , v060
	.byte	W01
	.byte		N10   , Ds2 , v048
	.byte		N09   , As2 , v068
	.byte		N09   , Cs3 , v064
	.byte		N10   , Fn3 , v080
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N09   , Ds2 , v056
	.byte		N04   , As2 , v072
	.byte		N04   , Cs3 
	.byte		N05   , Fn3 , v076
	.byte	W04
	.byte	W01
	.byte		N11   , As3 , v060
	.byte	W01
	.byte		N05   , As2 , v072
	.byte		N05   , Cs3 
	.byte		N05   , Fn3 , v076
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		N04   , Ds2 , v032
	.byte		N04   , Cs3 , v048
	.byte		N05   , Fn3 , v052
	.byte	W01
	.byte		N04   , As2 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N08   , Ds2 , v068
	.byte		N10   , As2 , v084
	.byte		N10   , Cs3 
	.byte		N09   , Fn3 , v088
	.byte		N08   , As3 , v068
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N04   , Fn2 , v020
	.byte	W01
	.byte		N05   , An2 , v036
	.byte		N05   , Cn3 
	.byte		N04   , Fn3 , v056
	.byte		N03   , An3 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N04   , Fn2 , v060
	.byte		N05   , Cn3 , v044
	.byte	W01
	.byte		N04   , An2 
	.byte		N05   , Fn3 , v072
	.byte		N03   , An3 , v060
	.byte	W03
	.byte	W01
	.byte		N11   , As1 , v048
	.byte	W01
	.byte	W01
@ 073   ----------------------------------------
	.byte		N10   , Fn2 , v084
	.byte		N23   , As2 , v076
	.byte		N21   , Dn3 , v084
	.byte		N21   , Fn3 , v092
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N11   , As1 , v048
	.byte		N08   , Fn2 , v056
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fn2 , v088
	.byte		N16   , As2 , v084
	.byte		N15   , Dn3 , v092
	.byte		N15   , Fn3 
	.byte	W01
	.byte		        As1 , v084
	.byte	W08
	.byte	W03
	.byte		N05   , Fn2 , v060
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N07   , Fn2 , v080
	.byte		N09   , As2 
	.byte		N09   , Dn3 , v084
	.byte		N09   , Fn3 , v092
	.byte	W01
	.byte		N10   , As1 , v084
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N03   , Fn2 , v052
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 , v068
	.byte		N15   , Fn3 , v088
	.byte	W01
	.byte		        As1 , v068
	.byte	W02
	.byte	W03
	.byte		N11   , Fn2 
	.byte	W09
	.byte	W02
	.byte		N09   , Fn3 , v092
	.byte	W01
	.byte		N08   , Fn2 , v088
	.byte		N10   , As2 
	.byte		N10   , Dn3 , v084
	.byte	W01
	.byte		        As1 , v080
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Fn1 , v060
	.byte		N04   , Fn2 , v056
	.byte		N10   , An2 , v028
	.byte		N04   , Cn3 , v056
	.byte		N04   , Fn3 , v076
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		        Fn1 
	.byte		N03   , Fn2 , v060
	.byte		N04   , An2 , v064
	.byte		N02   , Cn3 , v068
	.byte		N04   , Fn3 , v080
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N20   , Fn2 , v092
	.byte		N20   , Cn3 , v096
	.byte	W01
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_006
	.byte	W01
	.byte		N11   , Fn1 , v056
	.byte	W01
	.byte		N10   , An2 
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Fn1 , v084
	.byte		N16   , Fn2 , v088
	.byte		N17   , An2 , v068
	.byte		N15   , Cn3 , v100
	.byte		N16   , Fn3 , v088
	.byte	W10
	.byte	W02
	.byte		        Fn1 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v084
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v084
	.byte	W01
	.byte		N09   , Fn3 , v088
	.byte	W07
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N15   , Fn2 , v080
	.byte		N15   , An2 , v064
	.byte		N15   , Cn3 , v080
	.byte		N14   , Fn3 , v092
	.byte	W01
	.byte		N15   , Fn1 , v084
	.byte	W14
	.byte	W01
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W01
	.byte		N10   , Fn1 , v080
	.byte		N10   , Fn2 , v092
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v080
	.byte	W10
	.byte	W01
	.byte		N04   , As2 , v052
	.byte	W01
	.byte		N03   , Cn2 , v060
	.byte		N04   , Gn2 , v048
	.byte		N04   , Cn3 , v052
	.byte		N04   , Fn3 , v064
	.byte	W04
	.byte	W01
	.byte		N05   , As2 , v056
	.byte	W01
	.byte		N04   , Cn2 , v088
	.byte		N03   , Gn2 , v060
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 , v064
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_028
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v080
	.byte	W01
	.byte		N15   , Cn2 , v088
	.byte		N16   , As2 , v080
	.byte		N15   , Cn3 , v084
	.byte		N16   , Fn3 , v092
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Cn2 , v064
	.byte		N08   , Gn2 
	.byte		N11   , As2 
	.byte		N09   , Cn3 , v084
	.byte		N10   , Fn3 , v092
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v060
	.byte	W01
	.byte		        Cn2 , v064
	.byte		N15   , As2 , v060
	.byte		N15   , Cn3 , v076
	.byte		N15   , Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N10   , Cn2 , v076
	.byte		N15   , Gn2 , v068
	.byte		N09   , Cn3 , v084
	.byte		N10   , Fn3 , v088
	.byte	W01
	.byte		N09   , As2 , v068
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N05   , Ds2 , v060
	.byte		N04   , As2 , v032
	.byte		N04   , Cn3 
	.byte		N04   , Ds3 , v056
	.byte		N04   , Fn3 , v076
	.byte	W02
	.byte	W02
	.byte	W01
	.byte		N06   , Gn2 , v032
	.byte		N04   , As2 
	.byte	W01
	.byte		N05   , Ds2 , v060
	.byte		N04   , Cn3 , v032
	.byte		N04   , Ds3 , v064
	.byte		N05   , Fn3 , v072
	.byte	W04
	.byte	W01
	.byte		N23   , As2 , v076
	.byte	W01
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_068
	.byte	W01
	.byte		N10   , Cn3 , v056
	.byte	W01
	.byte		        Ds2 , v064
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N11   , Ds3 
	.byte		N11   , Fn3 , v092
	.byte	W01
	.byte		N10   , Ds2 , v088
	.byte		N11   , As2 
	.byte		N11   , Cn3 
	.byte	W10
	.byte	W01
	.byte		N05   , Ds3 , v072
	.byte	W01
	.byte		N04   , Ds2 , v076
	.byte		N05   , As2 , v048
	.byte		N05   , Cn3 , v072
	.byte		N05   , Fn3 , v092
	.byte	W05
	.byte	W01
	.byte		N11   , Ds2 , v072
	.byte		N11   , As2 , v056
	.byte		N11   , Cn3 , v076
	.byte		N11   , Ds3 , v080
	.byte		N11   , Fn3 , v088
	.byte	W11
	.byte	W01
	.byte		N04   , Ds2 , v072
	.byte		N05   , As2 , v048
	.byte		N04   , Cn3 , v076
	.byte		N04   , Ds3 , v080
	.byte		N04   , Fn3 , v088
	.byte	W04
	.byte	W01
	.byte		N11   , Ds2 , v072
	.byte		N11   , Ds3 , v080
	.byte	W01
	.byte		        As2 , v060
	.byte		N11   , Cn3 , v076
	.byte		N11   , Fn3 , v088
	.byte	W11
	.byte	W01
	.byte		N10   , Ds2 , v076
	.byte		N10   , As2 , v060
	.byte		N10   , Cn3 , v092
	.byte		N10   , Ds3 
	.byte		N10   , Fn3 , v100
	.byte	W10
	.byte	W01
	.byte		N02   , As1 , v036
	.byte	W01
	.byte		N05   , Fn2 , v048
	.byte		N04   , As2 , v052
	.byte		N04   , Dn3 , v044
	.byte		N02   , Fn3 
	.byte	W02
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N04   , As1 , v068
	.byte		N04   , Fn2 , v080
	.byte		N05   , As2 , v048
	.byte		N05   , Dn3 , v072
	.byte		N04   , Fn3 , v080
	.byte	W04
	.byte	W01
	.byte		N11   , As1 , v072
	.byte		N10   , Fn2 , v044
	.byte		N23   , As2 , v072
	.byte	W01
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_042
	.byte	W02
	.byte	W01
	.byte		N11   , As1 , v044
	.byte		N10   , Fn2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v088
	.byte		N16   , As2 , v084
	.byte		N15   , Dn3 
	.byte		N15   , Fn3 , v088
	.byte	W01
	.byte		        As1 , v084
	.byte	W08
	.byte	W03
	.byte		N04   , Fn2 , v060
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Fn2 , v084
	.byte		N09   , As2 , v080
	.byte		N09   , Dn3 , v076
	.byte		N09   , Fn3 , v088
	.byte	W01
	.byte		N10   , As1 , v084
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Fn2 , v052
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 
	.byte		N15   , Fn3 , v088
	.byte	W01
	.byte		        As1 , v068
	.byte	W04
	.byte	W01
	.byte		N11   , Fn2 
	.byte	W09
	.byte	W02
	.byte		N09   , Fn3 , v092
	.byte	W01
	.byte		N10   , Fn2 , v088
	.byte		N10   , As2 
	.byte		N10   , Dn3 , v080
	.byte	W01
	.byte		        As1 
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Fn1 , v060
	.byte		N04   , Fn2 , v056
	.byte		N03   , An2 , v028
	.byte		N04   , Cn3 , v048
	.byte		N04   , Fn3 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Fn1 
	.byte		N05   , Fn2 , v064
	.byte		N02   , An2 
	.byte		N05   , Cn3 , v060
	.byte		N04   , Fn3 , v080
	.byte	W02
	.byte	W02
	.byte	W01
	.byte	W01
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_7_010
	.byte	W01
	.byte		N11   , Fn1 , v056
	.byte	W01
	.byte		N10   , An2 
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Fn1 , v084
	.byte		N16   , Fn2 , v092
	.byte		N17   , An2 , v068
	.byte		N15   , Cn3 , v100
	.byte		N16   , Fn3 , v088
	.byte	W10
	.byte	W02
	.byte		        Fn1 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v084
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v084
	.byte		N09   , Fn3 
	.byte	W08
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N15   , Fn2 , v080
	.byte		N15   , An2 , v064
	.byte		N15   , Cn3 , v080
	.byte		N14   , Fn3 , v088
	.byte	W01
	.byte		N15   , Fn1 , v084
	.byte	W14
	.byte	W01
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W01
	.byte		N10   , Fn1 , v080
	.byte		N10   , Fn2 , v092
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v080
	.byte	W10
	.byte	W01
	.byte		N04   , As2 , v052
	.byte	W01
	.byte		N03   , Ds2 , v064
	.byte		N04   , Gn2 , v048
	.byte		N04   , Ds3 
	.byte		N04   , Fn3 , v060
	.byte	W04
	.byte	W01
	.byte		N05   , As2 
	.byte	W01
	.byte		N04   , Ds2 , v084
	.byte		N03   , Gn2 , v052
	.byte		N04   , Ds3 , v060
	.byte		N03   , Fn3 , v068
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
@ 079   ----------------------------------------
	.byte		N22   , Ds2 , v088
	.byte		N21   , Gn2 , v064
	.byte		N21   , Ds3 , v088
	.byte		N22   , Fn3 , v096
	.byte	W01
	.byte		N21   , As2 , v068
	.byte	W20
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v076
	.byte	W01
	.byte		N15   , Ds2 , v088
	.byte		N16   , As2 , v080
	.byte		N15   , Ds3 , v084
	.byte		N16   , Fn3 , v092
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Ds2 , v068
	.byte		N08   , Gn2 , v060
	.byte		N11   , As2 , v064
	.byte		N09   , Ds3 , v084
	.byte		N10   , Fn3 , v092
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v056
	.byte	W01
	.byte		        Ds2 , v068
	.byte		N15   , As2 , v060
	.byte		N15   , Ds3 , v080
	.byte	W01
	.byte		        Fn3 , v084
	.byte	W14
	.byte	W02
	.byte		N10   , Ds2 , v080
	.byte		N12   , Gn2 , v064
	.byte		N10   , Fn3 , v088
	.byte	W01
	.byte		N09   , As2 , v068
	.byte		N09   , Ds3 , v084
	.byte	W09
	.byte	W01
	.byte		N05   , Fn2 , v060
	.byte	W01
	.byte	W01
	.byte		N03   , As2 , v032
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 , v076
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		        As2 , v032
	.byte	W01
	.byte		N05   , Fn2 , v028
	.byte		N04   , Cn3 , v032
	.byte		N05   , Fn3 , v072
	.byte	W04
	.byte	W01
	.byte	W01
@ 080   ----------------------------------------
	.byte		N21   , Fn2 
	.byte		N22   , As2 , v076
	.byte		N20   , Cn3 , v084
	.byte		N21   , Fn3 , v092
	.byte	W21
	.byte	W01
	.byte	W01
	.byte		N10   , Fn3 , v080
	.byte	W01
	.byte		N09   , Fn2 , v068
	.byte		N10   , As2 , v088
	.byte		N11   , Cn3 , v080
	.byte	W10
	.byte	W01
	.byte		N04   , Fn2 , v044
	.byte	W01
	.byte		        As2 , v060
	.byte		N05   , Cn3 
	.byte		N05   , Fn3 , v048
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N10   , Fn2 , v052
	.byte		N09   , As2 , v064
	.byte		N09   , Cn3 , v068
	.byte		N10   , Fn3 , v080
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N09   , Fn2 , v056
	.byte		N04   , As2 , v072
	.byte		N04   , Cn3 
	.byte		N05   , Fn3 , v076
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		        As2 , v072
	.byte		N05   , Cn3 
	.byte		N05   , Fn3 , v076
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		N04   , Fn2 , v032
	.byte		N04   , Cn3 , v048
	.byte		N05   , Fn3 , v052
	.byte	W01
	.byte		N04   , As2 , v048
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N08   , Fn2 , v068
	.byte		N10   , As2 , v084
	.byte		N10   , Cn3 
	.byte		N09   , Fn3 , v088
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N04   , Fn2 , v020
	.byte	W01
	.byte		N05   , As2 , v036
	.byte		N05   , Cn3 
	.byte		N04   , Fn3 , v056
	.byte	W03
	.byte	W02
	.byte		        Fn2 , v060
	.byte		N05   , Cn3 , v044
	.byte	W01
	.byte		N04   , As2 
	.byte		N05   , Fn3 , v068
	.byte	W04
	.byte	W01
	.byte		N21   , Fn2 , v072
	.byte		N22   , As2 
	.byte		N20   , Cn3 , v084
	.byte	W01
@ 081   ----------------------------------------
	.byte		N21   , Fn3 , v092
	.byte	W20
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N09   , Fn2 , v068
	.byte		N10   , As2 , v088
	.byte		N11   , Cn3 , v080
	.byte		N10   , Fn3 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N04   , Fn2 , v044
	.byte		N04   , As2 , v060
	.byte		N05   , Cn3 
	.byte		N05   , Fn3 , v048
	.byte	W05
	.byte	W01
	.byte		N10   , Fn2 
	.byte		N09   , Cn3 , v068
	.byte		N10   , Fn3 , v080
	.byte	W01
	.byte		N09   , As2 , v064
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N04   , Cn3 , v072
	.byte		N05   , Fn3 , v076
	.byte	W01
	.byte		N09   , Fn2 , v056
	.byte		N04   , As2 , v072
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N05   , Cn3 
	.byte		N05   , Fn3 , v076
	.byte	W01
	.byte		        As2 , v072
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N04   , Fn2 , v032
	.byte		N04   , As2 , v048
	.byte		N04   , Cn3 
	.byte		N05   , Fn3 , v052
	.byte	W04
	.byte	W01
	.byte		N08   , Fn2 , v064
	.byte		N10   , Cn3 , v084
	.byte		N17   , Fn3 , v088
	.byte	W01
	.byte		N10   , As2 , v084
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N08   , Fn2 , v020
	.byte		N08   , As2 , v036
	.byte		N08   , Cn3 
	.byte	W06
	.byte	W02
	.byte	W01
	.byte	W02
	.byte		TIE   , Fn2 , v064
	.byte	W01
	.byte		        As1 , v080
	.byte		TIE   , As2 , v084
	.byte	W01
@ 082   ----------------------------------------
	.byte	W01
	.byte		        Cn3 
	.byte	W01
	.byte		        Fn3 , v088
	.byte	W92
	.byte	W02
@ 083   ----------------------------------------
	.byte	W84
	.byte		EOT   
	.byte	W01
	.byte		EOT   , Cn3 
	.byte	W02
	.byte		        As2 
	.byte	W01
	.byte	W03
	.byte		        Fn2 
	.byte	W01
	.byte	W03
	.byte		        As1 
	.byte	W01
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte	FINE

@**************** Track 8 (Midi-Chn.10) ****************@

mus_irreplaceable_beyonce_8:
	.byte	KEYSH , mus_irreplaceable_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_irreplaceable_beyonce_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N01   , Cs1 , v040
	.byte	W01
	.byte	W23
	.byte		N01   
	.byte	W01
	.byte	W23
	.byte		N01   
	.byte	W01
	.byte	W23
	.byte		        Cs1 , v044
	.byte	W01
	.byte	W23
@ 001   ----------------------------------------
	.byte		        Cn1 , v100
	.byte	W01
	.byte	W23
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte	W01
	.byte	W17
	.byte		        Dn1 , v088
	.byte	W01
	.byte	W11
	.byte		N01   
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte	W01
	.byte	W11
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte	W01
	.byte	W17
	.byte		        Cn1 
	.byte	W01
	.byte	W05
@ 002   ----------------------------------------
	.byte		N01   
	.byte	W01
	.byte	W11
	.byte		N01   
	.byte	W01
	.byte	W11
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte	W01
	.byte	W17
	.byte		        Dn1 , v080
	.byte	W01
	.byte	W11
	.byte		        Dn1 , v088
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte	W01
	.byte	W11
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte	W01
	.byte	W23
@ 003   ----------------------------------------
	.byte		        Cn1 
	.byte	W01
	.byte	W23
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte	W01
	.byte	W17
	.byte		        Dn1 , v088
	.byte	W01
	.byte	W11
	.byte		        Dn1 , v092
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte	W01
	.byte	W11
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte	W01
	.byte	W17
	.byte		        Cn1 
	.byte	W01
	.byte	W05
@ 004   ----------------------------------------
	.byte		N01   
	.byte	W01
	.byte	W11
	.byte		N01   
	.byte	W01
	.byte	W11
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte	W01
	.byte	W11
	.byte		        Dn1 , v080
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte	W01
	.byte	W11
	.byte		        Dn1 , v088
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Ds1 , v100
	.byte	W01
	.byte	W05
	.byte		        Cn1 
	.byte	W01
	.byte	W17
@ 005   ----------------------------------------
mus_irreplaceable_beyonce_8_005:
	.byte		N01   , Cn1 , v100
	.byte		N01   , Fs1 , v084
	.byte	W01
	.byte	PEND
	.byte	W05
	.byte		        Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Gs1 
	.byte	W01
	.byte	W05
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Gs1 
	.byte	W01
	.byte	W05
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        As1 
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Gs1 
	.byte	W01
	.byte	W05
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        As1 
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v068
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Gs1 
	.byte	W01
	.byte	W05
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        As1 
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v068
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        As1 
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        As1 
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Gs1 
	.byte	W01
	.byte	W05
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v076
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v076
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Gs1 
	.byte	W01
	.byte	W05
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        As1 
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        As1 
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Gs1 
	.byte	W01
	.byte	W05
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v076
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v076
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
@ 056   ----------------------------------------
	.byte		        Cn1 , v100
	.byte	W01
	.byte	W23
	.byte		        Ds1 
	.byte	W01
	.byte	W32
	.byte	W03
	.byte		        Cn1 
	.byte	W01
	.byte	W11
	.byte		        Ds1 
	.byte	W01
	.byte	W17
	.byte		        Cn1 
	.byte	W01
	.byte	W05
@ 057   ----------------------------------------
	.byte		N01   
	.byte	W01
	.byte	W11
	.byte		N01   
	.byte	W01
	.byte	W11
	.byte		        Ds1 
	.byte	W01
	.byte	W32
	.byte	W03
	.byte		        Cn1 
	.byte	W01
	.byte	W11
	.byte		        Ds1 
	.byte	W01
	.byte	W23
@ 058   ----------------------------------------
	.byte		        Cn1 
	.byte	W01
	.byte	W23
	.byte		        Ds1 
	.byte	W01
	.byte	W32
	.byte	W03
	.byte		        Cn1 
	.byte	W01
	.byte	W11
	.byte		        Ds1 
	.byte	W01
	.byte	W23
@ 059   ----------------------------------------
	.byte		        Cn1 
	.byte	W01
	.byte	W23
	.byte		        Ds1 
	.byte	W01
	.byte	W32
	.byte	W03
	.byte		        Cn1 
	.byte	W01
	.byte	W11
	.byte		        Ds1 
	.byte	W01
	.byte	W23
@ 060   ----------------------------------------
	.byte		        Cn1 
	.byte	W01
	.byte	W23
	.byte		        Ds1 
	.byte	W01
	.byte	W32
	.byte	W03
	.byte		        Cn1 
	.byte	W01
	.byte	W11
	.byte		        Ds1 
	.byte	W01
	.byte	W17
	.byte		        Cn1 
	.byte	W01
	.byte	W05
@ 061   ----------------------------------------
	.byte		N01   
	.byte	W01
	.byte	W11
	.byte		N01   
	.byte	W01
	.byte	W11
	.byte		        Ds1 
	.byte	W01
	.byte	W32
	.byte	W03
	.byte		        Cn1 
	.byte	W01
	.byte	W11
	.byte		        Ds1 
	.byte	W01
	.byte	W23
@ 062   ----------------------------------------
	.byte		        Cn1 
	.byte	W01
	.byte	W23
	.byte		        Ds1 
	.byte	W01
	.byte	W32
	.byte	W03
	.byte		        Cn1 
	.byte	W01
	.byte	W11
	.byte		        Ds1 
	.byte	W01
	.byte	W23
@ 063   ----------------------------------------
	.byte		        Cn1 
	.byte	W01
	.byte	W23
	.byte		        Ds1 
	.byte	W01
	.byte	W32
	.byte	W03
	.byte		        Cn1 
	.byte	W01
	.byte	W11
	.byte		        Ds1 
	.byte	W01
	.byte	W23
@ 064   ----------------------------------------
	.byte		        Cn1 
	.byte	W01
	.byte	W11
	.byte		N01   
	.byte	W01
	.byte	W11
	.byte		N01   
	.byte	W01
	.byte	W11
	.byte		N01   
	.byte	W01
	.byte	W11
	.byte		N01   
	.byte	W01
	.byte	W11
	.byte		N01   
	.byte	W01
	.byte	W11
	.byte		N01   
	.byte	W01
	.byte	W11
	.byte		N01   
	.byte	W01
	.byte	W11
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Gs1 
	.byte	W01
	.byte	W05
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v076
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v076
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        As1 
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        As1 
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Gs1 
	.byte	W01
	.byte	W05
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        As1 
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v080
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Gs1 
	.byte	W01
	.byte	W05
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fs1 
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v056
	.byte	W01
	.byte	W05
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v064
	.byte	W01
	.byte	W05
	.byte		        As1 
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_8_005
	.byte	W05
	.byte		N01   , Gs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v060
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v076
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v088
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v092
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , As1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v076
	.byte		N01   , Gs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v084
	.byte		N01   , Ds1 , v100
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N01   , Gs1 , v052
	.byte	W01
	.byte	W05
	.byte		        As1 , v056
	.byte	W01
	.byte	W05
	.byte		        Gs1 
	.byte	W01
	.byte	W05
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte	FINE

@**************** Track 9 (Midi-Chn.12) ****************@

mus_irreplaceable_beyonce_9:
	.byte	KEYSH , mus_irreplaceable_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte		VOL   , 99*mus_irreplaceable_beyonce_mvl/mxv
	.byte		PAN   , c_v+46
	.byte	W92
	.byte	W02
	.byte		N23   , As2 , v068
	.byte	W01
	.byte		N21   , Dn3 
	.byte	W01
@ 001   ----------------------------------------
	.byte		N23   , Fn3 , v076
	.byte	W21
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N16   , As2 
	.byte		N15   , Dn3 
	.byte	W01
	.byte		        Fn3 , v084
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N09   , As2 , v072
	.byte		N09   , Dn3 , v068
	.byte	W01
	.byte		        Fn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N15   , As2 , v060
	.byte		N14   , Dn3 , v056
	.byte		N15   , Fn3 , v080
	.byte	W15
	.byte	W01
	.byte	W02
	.byte		N10   , As2 , v084
	.byte		N10   , Dn3 , v072
	.byte		N09   , Fn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N04   , An2 , v020
	.byte		N04   , Cn3 , v044
	.byte		N04   , Fn3 , v068
	.byte	W05
	.byte	W01
	.byte		N05   , An2 , v052
	.byte		N05   , Cn3 
	.byte		N04   , Fn3 , v072
	.byte	W05
	.byte	W01
@ 002   ----------------------------------------
	.byte		N10   , An2 , v060
	.byte		N20   , Cn3 , v092
	.byte	W01
	.byte		        Fn3 , v088
	.byte	W09
	.byte	W02
	.byte		N10   , An2 , v048
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N17   , An2 , v060
	.byte		N15   , Cn3 , v092
	.byte		N16   , Fn3 , v084
	.byte	W16
	.byte	W01
	.byte	W01
	.byte		N10   , An2 , v056
	.byte		N10   , Cn3 , v076
	.byte	W01
	.byte		N09   , Fn3 , v080
	.byte	W10
	.byte	W01
	.byte		N15   , An2 , v056
	.byte		N15   , Cn3 , v076
	.byte	W01
	.byte		N14   , Fn3 , v084
	.byte	W14
	.byte	W03
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 , v072
	.byte		N11   , Fn3 , v088
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N04   , Gn2 , v044
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 , v052
	.byte	W05
	.byte	W01
	.byte		N03   , Gn2 
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 , v056
	.byte	W03
	.byte	W02
	.byte	W01
@ 003   ----------------------------------------
	.byte		N21   , Gn2 , v060
	.byte		N21   , Cn3 , v080
	.byte		N22   , Fn3 , v084
	.byte	W21
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v072
	.byte		N16   , Cn3 , v080
	.byte	W01
	.byte		        Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N08   , Gn2 , v056
	.byte		N09   , Cn3 , v076
	.byte	W01
	.byte		N10   , Fn3 , v084
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N16   , Gn2 , v052
	.byte		N15   , Cn3 , v072
	.byte		N15   , Fn3 , v080
	.byte	W16
	.byte	W02
	.byte		N12   , Gn2 , v060
	.byte		N09   , Cn3 , v076
	.byte		N10   , Fn3 , v084
	.byte	W10
	.byte	W02
	.byte		N04   , As2 , v024
	.byte		N04   , Ds3 , v048
	.byte		N04   , Fn3 , v068
	.byte	W05
	.byte	W01
	.byte		        As2 , v024
	.byte		N04   , Ds3 , v056
	.byte		N05   , Fn3 , v064
	.byte	W04
	.byte	W01
	.byte	W01
@ 004   ----------------------------------------
	.byte		N21   , As2 , v068
	.byte		N22   , Ds3 
	.byte		N21   , Fn3 , v088
	.byte	W21
	.byte	W02
	.byte	W01
	.byte		N16   , As2 , v084
	.byte		N16   , Ds3 , v060
	.byte		N16   , Fn3 , v084
	.byte	W17
	.byte	W01
	.byte		N09   , As2 , v068
	.byte		N10   , Ds3 , v060
	.byte		N10   , Fn3 , v084
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N15   , As2 , v068
	.byte		N15   , Ds3 , v056
	.byte		N15   , Fn3 , v084
	.byte	W15
	.byte	W03
	.byte		N08   , As2 , v072
	.byte		N11   , Ds3 , v064
	.byte		N09   , Fn3 , v092
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		N02   , As2 , v024
	.byte		N02   , Dn3 , v028
	.byte		N01   , Fn3 , v052
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N03   , As2 , v076
	.byte		N03   , Dn3 , v036
	.byte		N03   , Fn3 , v064
	.byte	W03
	.byte	W01
	.byte	W02
@ 005   ----------------------------------------
mus_irreplaceable_beyonce_9_005:
	.byte		N23   , As2 , v068
	.byte		N21   , Dn3 , v076
	.byte		N23   , Fn3 , v084
	.byte	W22
	.byte	PEND
	.byte	W01
	.byte	W01
	.byte		N16   , As2 , v076
	.byte		N15   , Dn3 , v084
	.byte	W01
	.byte		        Fn3 
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N09   , As2 , v072
	.byte		N09   , Dn3 , v076
	.byte	W01
	.byte		        Fn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N15   , As2 , v056
	.byte		N14   , Dn3 , v060
	.byte		N15   , Fn3 , v084
	.byte	W15
	.byte	W01
	.byte	W02
	.byte		N10   , As2 
	.byte		N10   , Dn3 , v080
	.byte		N09   , Fn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N04   , As2 , v020
	.byte		N04   , Dn3 , v052
	.byte		N04   , Fn3 , v064
	.byte	W05
	.byte	W01
	.byte		N05   , As2 , v052
	.byte		N05   , Dn3 , v060
	.byte		N04   , Fn3 , v072
	.byte	W05
	.byte	W01
@ 006   ----------------------------------------
mus_irreplaceable_beyonce_9_006:
	.byte		N10   , An2 , v060
	.byte		N20   , Cn3 , v088
	.byte	W01
	.byte		        Fn3 , v084
	.byte	W09
	.byte	PEND
	.byte	W02
	.byte		N10   , An2 , v048
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N17   , An2 , v060
	.byte		N15   , Cn3 , v092
	.byte		N16   , Fn3 , v084
	.byte	W16
	.byte	W01
	.byte	W01
	.byte		N10   , An2 , v056
	.byte		N10   , Cn3 , v076
	.byte	W01
	.byte		N09   , Fn3 , v080
	.byte	W10
	.byte	W01
	.byte		N15   , An2 , v056
	.byte		N15   , Cn3 , v076
	.byte	W01
	.byte		N14   , Fn3 , v084
	.byte	W14
	.byte	W03
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 , v072
	.byte		N11   , Fn3 , v088
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N04   , Gn2 , v040
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 , v056
	.byte	W05
	.byte	W01
	.byte		N03   , Gn2 , v052
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 , v060
	.byte	W03
	.byte	W02
	.byte	W01
@ 007   ----------------------------------------
mus_irreplaceable_beyonce_9_007:
	.byte		N21   , Gn2 , v060
	.byte		N21   , Cn3 , v080
	.byte		N22   , Fn3 , v088
	.byte	W21
	.byte	PEND
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v072
	.byte		N16   , Cn3 , v080
	.byte	W01
	.byte		        Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N08   , Gn2 , v056
	.byte		N09   , Cn3 , v076
	.byte	W01
	.byte		N10   , Fn3 , v084
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N16   , Gn2 , v052
	.byte		N15   , Cn3 , v072
	.byte		N15   , Fn3 , v080
	.byte	W16
	.byte	W02
	.byte		        Gn2 , v060
	.byte		N09   , Cn3 , v076
	.byte		N10   , Fn3 , v084
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N04   , As2 , v024
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 , v064
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		        As2 , v024
	.byte		N04   , Cn3 
	.byte		N05   , Fn3 , v064
	.byte	W04
	.byte	W01
	.byte		N23   , As2 , v068
	.byte	W01
@ 008   ----------------------------------------
	.byte		N22   , Cn3 , v076
	.byte		N21   , Fn3 , v084
	.byte	W21
	.byte	W02
	.byte	W01
	.byte		N11   , As2 
	.byte		N11   , Cn3 , v072
	.byte		N11   , Fn3 , v080
	.byte	W11
	.byte	W01
	.byte		N05   , An2 , v040
	.byte		N05   , Cn3 , v056
	.byte		N05   , Fn3 , v088
	.byte	W05
	.byte	W01
	.byte		        An2 , v040
	.byte		N05   , Cn3 , v056
	.byte		N04   , Fn3 , v088
	.byte	W05
	.byte	W01
	.byte		        An2 , v048
	.byte		N05   , Cn3 , v056
	.byte		N04   , Fn3 , v084
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N05   , An2 , v044
	.byte		N04   , Cn3 , v064
	.byte		N04   , Fn3 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , An2 , v048
	.byte		N11   , Cn3 , v064
	.byte		N11   , Fn3 , v080
	.byte	W11
	.byte	W01
	.byte		N10   , An2 , v048
	.byte		N10   , Cn3 , v076
	.byte		N10   , Fn3 , v092
	.byte	W11
	.byte	W01
	.byte		N04   , As2 , v044
	.byte		N04   , Dn3 , v040
	.byte		N02   , Fn3 
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		N05   , As2 , v044
	.byte		N05   , Dn3 , v064
	.byte		N04   , Fn3 , v076
	.byte	W04
	.byte	W01
	.byte	W01
@ 009   ----------------------------------------
	.byte		N23   , As2 , v068
	.byte		N23   , Dn3 , v076
	.byte		N23   , Fn3 , v084
	.byte	W23
	.byte	W01
	.byte		N16   , As2 , v076
	.byte		N15   , Dn3 
	.byte	W01
	.byte		        Fn3 , v084
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N09   , As2 , v076
	.byte		N09   , Dn3 , v068
	.byte	W01
	.byte		        Fn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N15   , As2 , v060
	.byte		N14   , Dn3 , v052
	.byte		N15   , Fn3 , v084
	.byte	W15
	.byte	W01
	.byte	W02
	.byte		N10   , As2 
	.byte		N10   , Dn3 , v072
	.byte		N09   , Fn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N04   , An2 , v020
	.byte		N04   , Cn3 , v044
	.byte		N04   , Fn3 , v068
	.byte	W05
	.byte	W01
	.byte		N05   , Cn3 , v052
	.byte		N04   , Fn3 , v072
	.byte	W01
	.byte		N05   , An2 , v056
	.byte	W04
	.byte	W01
@ 010   ----------------------------------------
	.byte		N01   , An2 , v060
	.byte		N20   , Cn3 , v092
	.byte	W01
	.byte		        Fn3 
	.byte	W09
	.byte	W02
	.byte		N10   , An2 , v048
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N17   , An2 , v060
	.byte		N15   , Cn3 , v092
	.byte		N16   , Fn3 , v084
	.byte	W16
	.byte	W01
	.byte	W01
	.byte		N10   , An2 , v056
	.byte		N10   , Cn3 , v076
	.byte	W01
	.byte		N09   , Fn3 , v080
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N15   , An2 , v056
	.byte		N15   , Cn3 , v072
	.byte	W01
	.byte		N14   , Fn3 , v080
	.byte	W14
	.byte	W03
	.byte		N10   , An2 , v056
	.byte		N10   , Cn3 , v076
	.byte		N11   , Fn3 , v088
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N04   , Gn2 , v040
	.byte		N04   , As2 , v044
	.byte		N04   , Fn3 , v056
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N03   , Gn2 , v052
	.byte		N05   , As2 
	.byte		N03   , Fn3 , v060
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
@ 011   ----------------------------------------
mus_irreplaceable_beyonce_9_011:
	.byte		N21   , Gn2 , v060
	.byte		N22   , Fn3 , v088
	.byte	W01
	.byte		        As2 , v064
	.byte	W20
	.byte	PEND
	.byte	W02
	.byte	W01
	.byte		N16   , Gn2 , v072
	.byte		N16   , As2 
	.byte	W01
	.byte		        Fn3 , v084
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N08   , Gn2 , v056
	.byte		N11   , As2 
	.byte	W01
	.byte		N10   , Fn3 , v084
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N16   , Gn2 , v052
	.byte		N15   , As2 
	.byte	W01
	.byte		        Fn3 , v080
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N12   , Gn2 , v060
	.byte		N09   , As2 
	.byte		N10   , Fn3 , v080
	.byte	W10
	.byte	W02
	.byte		N04   , As2 , v024
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 , v064
	.byte	W05
	.byte	W01
	.byte		        As2 , v024
	.byte		N04   , Cn3 
	.byte		N05   , Fn3 , v064
	.byte	W04
	.byte	W01
	.byte	W01
@ 012   ----------------------------------------
mus_irreplaceable_beyonce_9_012:
	.byte		N21   , As2 , v068
	.byte		N20   , Cn3 , v076
	.byte		N21   , Fn3 , v088
	.byte	W21
	.byte	PEND
	.byte	W03
	.byte		N16   , As2 , v080
	.byte		N17   , Cn3 , v076
	.byte		N16   , Fn3 , v088
	.byte	W17
	.byte	W01
	.byte		N09   , As2 , v068
	.byte		N09   , Cn3 , v056
	.byte		N10   , Fn3 , v088
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N15   , As2 , v064
	.byte		N16   , Cn3 
	.byte		N15   , Fn3 , v084
	.byte	W15
	.byte	W02
	.byte	W01
	.byte		N08   , As2 , v072
	.byte		N10   , Cn3 , v076
	.byte		N09   , Fn3 , v092
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		N02   , As2 , v024
	.byte		N02   , Dn3 , v028
	.byte		N01   , Fn3 , v048
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N03   , As2 , v076
	.byte		N03   , Dn3 , v036
	.byte		N03   , Fn3 , v064
	.byte	W03
	.byte	W01
	.byte	W02
@ 013   ----------------------------------------
mus_irreplaceable_beyonce_9_013:
	.byte		N10   , As2 , v084
	.byte		N23   , Dn3 , v080
	.byte		N23   , Fn3 
	.byte	W10
	.byte	PEND
	.byte	W01
	.byte		N11   , As2 , v040
	.byte	W12
	.byte	W01
	.byte		N16   , As2 , v080
	.byte		N15   , Dn3 
	.byte		N15   , Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W02
	.byte		N09   , As2 , v080
	.byte		N09   , Dn3 , v072
	.byte		N09   , Fn3 , v088
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N15   , As2 , v060
	.byte		N14   , Dn3 , v056
	.byte		N15   , Fn3 , v088
	.byte	W14
	.byte	W01
	.byte	W02
	.byte		N09   
	.byte	W01
	.byte		N10   , As2 
	.byte		N10   , Dn3 , v076
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N04   , Cn3 , v048
	.byte		N04   , Fn3 , v068
	.byte	W01
	.byte		        As2 , v024
	.byte	W04
	.byte	W01
	.byte		        Fn3 , v076
	.byte	W01
	.byte		N05   , As2 , v056
	.byte		N05   , Cn3 
	.byte	W04
	.byte	W01
	.byte	W01
@ 014   ----------------------------------------
mus_irreplaceable_beyonce_9_014:
	.byte		N10   , As2 , v064
	.byte		N20   , Cn3 , v092
	.byte		N20   , Fn3 
	.byte	W10
	.byte	PEND
	.byte	W02
	.byte		N10   , As2 , v052
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N17   , As2 , v064
	.byte		N15   , Cn3 , v096
	.byte		N15   , Fn3 , v084
	.byte	W16
	.byte	W01
	.byte	W01
	.byte		N10   , As2 , v060
	.byte		N10   , Cn3 , v080
	.byte	W01
	.byte		N09   , Fn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N15   , As2 , v060
	.byte		N15   , Cn3 , v076
	.byte		N14   , Fn3 , v088
	.byte	W15
	.byte	W02
	.byte		N11   , Fn3 , v092
	.byte	W01
	.byte		N10   , As2 , v064
	.byte		N10   , Cn3 , v076
	.byte	W10
	.byte	W01
	.byte		N04   , As2 , v048
	.byte		N04   , Fn3 , v056
	.byte	W01
	.byte		        Dn3 , v044
	.byte	W04
	.byte	W01
	.byte		N05   , As2 , v056
	.byte		N04   , Fn3 , v060
	.byte	W01
	.byte		        Dn3 , v056
	.byte	W04
	.byte	W02
@ 015   ----------------------------------------
	.byte		N10   , As2 , v084
	.byte		N23   , Dn3 , v080
	.byte		N23   , Fn3 , v084
	.byte	W10
	.byte	W01
	.byte		N11   , As2 , v040
	.byte	W12
	.byte	W01
	.byte		N16   , As2 , v080
	.byte		N15   , Dn3 
	.byte		N17   , Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N02   , Cn3 , v056
	.byte	W01
	.byte		        An2 , v060
	.byte	W02
	.byte	W03
	.byte		N11   
	.byte		N11   , Cn3 
	.byte		N21   , Fn3 , v088
	.byte	W11
	.byte	W01
	.byte		N11   , An2 , v064
	.byte		N11   , Cn3 , v060
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N12   , Fn3 , v084
	.byte	W01
	.byte		N11   , An2 , v060
	.byte		N11   , Cn3 
	.byte	W11
	.byte	W01
	.byte		N01   , As2 , v028
	.byte		N02   , Ds3 , v032
	.byte		N01   , Fn3 , v056
	.byte	W01
	.byte	W01
	.byte	W04
	.byte		N04   , As2 , v080
	.byte		N03   , Ds3 , v040
	.byte		N03   , Fn3 , v064
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N21   , As2 , v072
	.byte	W01
@ 016   ----------------------------------------
mus_irreplaceable_beyonce_9_016:
	.byte		N20   , Ds3 , v080
	.byte		N21   , Fn3 , v092
	.byte	W20
	.byte	PEND
	.byte	W01
	.byte	W02
	.byte		N16   , As2 , v088
	.byte		N17   , Ds3 , v076
	.byte		N16   , Fn3 , v088
	.byte	W17
	.byte	W02
	.byte		N09   , As2 , v080
	.byte		N09   , Cn3 , v088
	.byte		N09   , Fn3 , v080
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N16   , As2 , v068
	.byte	W01
	.byte		N04   , Cn3 , v072
	.byte		N04   , Fn3 , v088
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N03   , Cn3 , v072
	.byte		N04   , Fn3 
	.byte	W04
	.byte	W01
	.byte		N05   , Cn3 , v076
	.byte	W01
	.byte		N04   , Fn3 , v072
	.byte	W04
	.byte	W01
	.byte		N09   , Fn3 , v096
	.byte	W01
	.byte		N08   , As2 , v076
	.byte		N10   , Cn3 , v088
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N02   , As2 , v028
	.byte		N02   , Ds3 , v032
	.byte		N01   , Fn3 , v056
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As2 , v080
	.byte		N03   , Ds3 , v040
	.byte		N03   , Fn3 , v064
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N23   , As2 , v072
	.byte	W01
@ 017   ----------------------------------------
mus_irreplaceable_beyonce_9_017:
	.byte		N21   , Dn3 , v080
	.byte		N21   , Fn3 , v088
	.byte	W21
	.byte	PEND
	.byte	W02
	.byte	W01
	.byte		N16   , As2 , v080
	.byte		N15   , Dn3 , v088
	.byte		N15   , Fn3 
	.byte	W15
	.byte	W01
	.byte	W02
	.byte		N09   , As2 , v076
	.byte		N09   , Dn3 , v080
	.byte		N09   , Fn3 , v088
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 
	.byte		N15   , Fn3 , v088
	.byte	W14
	.byte	W01
	.byte	W02
	.byte		N09   
	.byte	W01
	.byte		N10   , As2 
	.byte		N10   , Dn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N04   , As2 , v024
	.byte		N04   , Dn3 , v056
	.byte		N04   , Fn3 , v068
	.byte	W05
	.byte	W01
	.byte		N05   , As2 , v056
	.byte		N05   , Dn3 , v064
	.byte		N04   , Fn3 , v076
	.byte	W05
	.byte	W01
	.byte		N20   , Cn3 , v092
	.byte	W01
@ 018   ----------------------------------------
mus_irreplaceable_beyonce_9_018:
	.byte		N10   , An2 , v064
	.byte		N20   , Fn3 , v092
	.byte	W10
	.byte	PEND
	.byte	W02
	.byte		N10   , An2 , v052
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N17   , An2 , v064
	.byte	W01
	.byte		N15   , Cn3 , v096
	.byte		N15   , Fn3 , v084
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 , v080
	.byte	W01
	.byte		N09   , Fn3 , v084
	.byte	W09
	.byte	W02
	.byte		N15   , An2 , v060
	.byte		N15   , Cn3 , v080
	.byte		N14   , Fn3 , v088
	.byte	W15
	.byte	W02
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 , v076
	.byte		N11   , Fn3 , v092
	.byte	W11
	.byte	W01
	.byte		N04   , As2 , v044
	.byte		N04   , Fn3 , v060
	.byte	W01
	.byte		        Cn3 , v044
	.byte	W04
	.byte	W01
	.byte		N05   , As2 , v056
	.byte		N04   , Fn3 , v064
	.byte	W01
	.byte		        Cn3 , v056
	.byte	W04
	.byte	W01
	.byte		N22   , Fn3 , v092
	.byte	W01
@ 019   ----------------------------------------
mus_irreplaceable_beyonce_9_019:
	.byte		N21   , As2 , v068
	.byte		N21   , Cn3 , v084
	.byte	W21
	.byte	PEND
	.byte	W01
	.byte	W01
	.byte		N16   , As2 , v076
	.byte	W01
	.byte		        Cn3 , v084
	.byte		N16   , Fn3 , v092
	.byte	W16
	.byte	W02
	.byte		N11   , As2 , v060
	.byte		N09   , Cn3 , v080
	.byte		N10   , Fn3 , v088
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N15   , As2 , v056
	.byte		N15   , Cn3 , v072
	.byte		N15   , Fn3 , v084
	.byte	W15
	.byte	W02
	.byte		N09   , As2 , v064
	.byte		N09   , Cn3 , v080
	.byte		N10   , Fn3 , v084
	.byte	W10
	.byte	W02
	.byte		N04   , As2 , v028
	.byte	W01
	.byte		        Cn3 
	.byte		N04   , Ds3 , v052
	.byte		N04   , Fn3 , v072
	.byte	W04
	.byte	W01
	.byte		        As2 , v028
	.byte		N04   , Cn3 
	.byte	W01
	.byte		        Ds3 , v060
	.byte		N05   , Fn3 , v068
	.byte	W04
	.byte	W01
	.byte		N23   , As2 , v072
	.byte		N22   , Cn3 , v080
	.byte	W01
@ 020   ----------------------------------------
	.byte		        Ds3 , v072
	.byte	W22
	.byte	W01
	.byte		N11   , As2 , v088
	.byte		N11   , Cn3 , v076
	.byte		N11   , Ds3 , v064
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W01
	.byte		        As2 , v044
	.byte		N05   , Ds3 , v092
	.byte	W05
	.byte	W01
	.byte		        As2 , v040
	.byte		N10   , Cn3 , v064
	.byte		N09   , Ds3 , v092
	.byte	W05
	.byte	W01
	.byte		N04   , As2 , v052
	.byte	W03
	.byte	W01
	.byte	W02
	.byte		N05   , As2 , v044
	.byte		N04   , Cn3 , v068
	.byte		N04   , Ds3 , v084
	.byte	W04
	.byte	W01
	.byte		N11   , Cn3 , v068
	.byte	W01
	.byte		        As2 , v056
	.byte		N04   , Ds3 , v088
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte		N10   , Ds3 , v096
	.byte	W01
	.byte		N04   , As2 , v052
	.byte		N10   , Cn3 , v080
	.byte	W04
	.byte	W02
	.byte		N05   , As2 , v048
	.byte	W04
	.byte	W01
	.byte		N04   
	.byte	W01
	.byte		        Dn3 , v044
	.byte		N02   , Fn3 
	.byte	W02
	.byte	W02
	.byte	W01
	.byte		N05   , As2 , v048
	.byte	W01
	.byte		        Dn3 , v072
	.byte		N04   , Fn3 , v076
	.byte	W04
	.byte	W01
	.byte		N23   , As2 , v068
	.byte		N23   , Dn3 , v080
	.byte	W01
@ 021   ----------------------------------------
	.byte		        Fn3 , v088
	.byte	W22
	.byte	W01
	.byte	W01
	.byte		N16   , As2 , v080
	.byte		N15   , Dn3 
	.byte		N15   , Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W02
	.byte		N09   , As2 , v076
	.byte		N09   , Dn3 , v072
	.byte		N09   , Fn3 , v088
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 , v056
	.byte		N15   , Fn3 , v084
	.byte	W14
	.byte	W01
	.byte	W02
	.byte		N09   , Fn3 , v088
	.byte	W01
	.byte		N10   , As2 , v084
	.byte		N10   , Dn3 , v076
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N03   , An2 , v024
	.byte		N04   , Cn3 , v048
	.byte		N04   , Fn3 , v068
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N02   , An2 , v056
	.byte		N05   , Cn3 
	.byte		N04   , Fn3 , v076
	.byte	W03
	.byte	W02
	.byte	W01
	.byte	W01
@ 022   ----------------------------------------
mus_irreplaceable_beyonce_9_022:
	.byte		N10   , An2 , v064
	.byte		N20   , Cn3 , v092
	.byte		N20   , Fn3 , v096
	.byte	W10
	.byte	PEND
	.byte	W02
	.byte		N10   , An2 , v052
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N17   , An2 , v064
	.byte	W01
	.byte		N15   , Cn3 , v096
	.byte		N15   , Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 , v080
	.byte		N09   , Fn3 , v084
	.byte	W10
	.byte	W02
	.byte		N15   , An2 , v060
	.byte		N15   , Cn3 , v076
	.byte		N14   , Fn3 , v088
	.byte	W15
	.byte	W02
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v076
	.byte		N11   , Fn3 , v092
	.byte	W11
	.byte	W01
	.byte		N04   , As2 , v044
	.byte		N04   , Fn3 , v060
	.byte	W01
	.byte		        Cn3 , v048
	.byte	W04
	.byte	W01
	.byte		N05   , As2 , v056
	.byte		N03   , Fn3 , v064
	.byte	W01
	.byte		N04   , Cn3 , v056
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N22   , Fn3 , v092
	.byte	W01
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_9_019
	.byte	W01
	.byte	W01
	.byte		N16   , As2 , v076
	.byte	W01
	.byte		        Cn3 , v084
	.byte		N16   , Fn3 , v088
	.byte	W16
	.byte	W02
	.byte		N11   , As2 , v060
	.byte		N09   , Cn3 , v080
	.byte		N10   , Fn3 , v088
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N15   , As2 , v056
	.byte		N15   , Cn3 , v076
	.byte	W01
	.byte		        Fn3 , v084
	.byte	W14
	.byte	W01
	.byte	W01
	.byte		N09   , As2 , v064
	.byte		N10   , Fn3 , v088
	.byte	W01
	.byte		N09   , Cn3 , v080
	.byte	W09
	.byte	W03
	.byte		N03   , Gs2 , v028
	.byte		N04   , Cn3 , v040
	.byte	W04
	.byte	W01
	.byte		        As2 , v028
	.byte		N04   , Cs3 
	.byte	W01
	.byte		N03   , Fs3 , v064
	.byte	W03
	.byte	W01
	.byte	W02
@ 024   ----------------------------------------
mus_irreplaceable_beyonce_9_024:
	.byte		N09   , As2 , v072
	.byte		N20   , Cs3 , v080
	.byte		N21   , Fs3 , v096
	.byte	W09
	.byte	PEND
	.byte	W02
	.byte		N09   , As2 , v060
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N11   , Cs3 , v076
	.byte		N10   , Fs3 , v084
	.byte	W01
	.byte		        As2 , v088
	.byte	W10
	.byte	W01
	.byte		N05   , As2 , v056
	.byte		N05   , Cs3 
	.byte		N05   , Fs3 , v052
	.byte	W05
	.byte	W02
	.byte		N09   , As2 , v060
	.byte		N09   , Cs3 
	.byte		N10   , Fs3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N05   , Fs3 , v080
	.byte	W01
	.byte		N04   , As2 , v068
	.byte		N04   , Cs3 
	.byte	W04
	.byte	W01
	.byte		N05   , Fs3 , v080
	.byte	W01
	.byte		        As2 , v068
	.byte		N05   , Cs3 
	.byte	W05
	.byte	W01
	.byte		N04   , As2 , v044
	.byte		N04   , Cs3 
	.byte		N05   , Fs3 , v056
	.byte	W04
	.byte	W01
	.byte		N09   , Fs3 , v092
	.byte	W01
	.byte		N10   , As2 , v080
	.byte		N10   , Cs3 
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N04   , As2 , v032
	.byte		N04   , Cs3 
	.byte		N03   , Fs3 , v048
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N05   , As2 , v040
	.byte		N04   , Cs3 
	.byte		N05   , Fs3 , v060
	.byte	W05
	.byte	W01
@ 025   ----------------------------------------
	.byte		N09   , As2 , v072
	.byte		N04   , Cs3 , v080
	.byte		N04   , Fs3 , v096
	.byte	W04
	.byte	W01
	.byte		N10   , Cs3 , v040
	.byte	W01
	.byte		N05   , Fs3 , v056
	.byte	W03
	.byte	W02
	.byte		N09   , As2 , v064
	.byte	W01
	.byte		N10   , Fs3 
	.byte	W04
	.byte	W01
	.byte		N04   , Cs3 , v040
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N11   , Cs3 , v076
	.byte		N10   , Fs3 , v084
	.byte	W01
	.byte		        As2 
	.byte	W10
	.byte	W01
	.byte		N05   , As2 , v056
	.byte		N05   , Cs3 
	.byte		N05   , Fs3 , v052
	.byte	W05
	.byte	W02
	.byte		N09   , As2 , v060
	.byte		N09   , Cs3 , v064
	.byte		N10   , Fs3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N05   , Fs3 , v080
	.byte	W01
	.byte		N04   , As2 , v068
	.byte		N04   , Cs3 
	.byte	W04
	.byte	W01
	.byte		N05   , Fs3 , v080
	.byte	W01
	.byte		        As2 , v068
	.byte		N05   , Cs3 
	.byte	W05
	.byte	W01
	.byte		N04   , As2 , v044
	.byte		N04   , Cs3 
	.byte		N05   , Fs3 , v056
	.byte	W04
	.byte	W01
	.byte		N11   , Fs3 , v092
	.byte	W01
	.byte		N10   , As2 , v080
	.byte		N10   , Cs3 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N04   , As2 , v032
	.byte		N04   , Dn3 
	.byte		N03   , Fn3 , v052
	.byte	W04
	.byte	W01
	.byte		N04   , Dn3 , v040
	.byte	W01
	.byte		N05   , As2 
	.byte		N03   , Fn3 , v060
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_9_005
	.byte	W01
	.byte	W01
	.byte		N16   , As2 , v076
	.byte		N15   , Dn3 , v084
	.byte	W01
	.byte		        Fn3 
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N09   , As2 , v072
	.byte		N09   , Dn3 , v076
	.byte	W01
	.byte		        Fn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N15   , As2 , v056
	.byte		N14   , Dn3 , v060
	.byte		N15   , Fn3 , v084
	.byte	W15
	.byte	W01
	.byte	W02
	.byte		N10   , As2 , v080
	.byte		N10   , Dn3 
	.byte		N09   , Fn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N04   , As2 , v020
	.byte		N04   , Dn3 , v052
	.byte		N04   , Fn3 , v068
	.byte	W05
	.byte	W01
	.byte		N05   , As2 , v052
	.byte		N05   , Dn3 , v060
	.byte		N04   , Fn3 , v072
	.byte	W05
	.byte	W01
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_9_006
	.byte	W02
	.byte		N10   , An2 , v048
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N17   , An2 , v060
	.byte		N15   , Cn3 , v092
	.byte		N16   , Fn3 , v084
	.byte	W16
	.byte	W01
	.byte	W01
	.byte		N10   , An2 , v056
	.byte		N10   , Cn3 , v076
	.byte	W01
	.byte		N09   , Fn3 , v080
	.byte	W10
	.byte	W01
	.byte		N15   , An2 , v056
	.byte		N15   , Cn3 , v072
	.byte	W01
	.byte		N14   , Fn3 , v084
	.byte	W14
	.byte	W03
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 , v076
	.byte		N11   , Fn3 , v088
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N04   , Gn2 , v040
	.byte		N04   , Cn3 , v044
	.byte		N04   , Fn3 , v056
	.byte	W05
	.byte	W01
	.byte		N03   , Gn2 , v052
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 , v056
	.byte	W03
	.byte	W02
	.byte	W01
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_9_007
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N16   , Gn2 , v072
	.byte		N16   , Cn3 , v080
	.byte	W01
	.byte		        Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N08   , Gn2 , v056
	.byte		N09   , Cn3 , v076
	.byte	W01
	.byte		N10   , Fn3 , v084
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N16   , Gn2 , v052
	.byte		N15   , Cn3 , v068
	.byte		N15   , Fn3 , v080
	.byte	W16
	.byte	W02
	.byte		N11   , Gn2 , v060
	.byte		N09   , Cn3 , v076
	.byte		N10   , Fn3 , v080
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N04   , As2 , v024
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 , v064
	.byte	W05
	.byte	W01
	.byte		        As2 , v024
	.byte		N04   , Cn3 
	.byte		N05   , Fn3 , v064
	.byte	W04
	.byte	W01
	.byte		N23   , As2 , v068
	.byte	W01
@ 029   ----------------------------------------
	.byte		N22   , Cn3 , v076
	.byte		N21   , Fn3 , v080
	.byte	W21
	.byte	W02
	.byte	W01
	.byte		N11   , As2 , v084
	.byte		N11   , Cn3 , v076
	.byte		N11   , Fn3 , v080
	.byte	W11
	.byte	W01
	.byte		N05   , As2 , v040
	.byte		N05   , Cn3 , v056
	.byte		N05   , Fn3 , v084
	.byte	W05
	.byte	W01
	.byte		        As2 , v040
	.byte		N05   , Cn3 , v056
	.byte		N04   , Fn3 , v084
	.byte	W05
	.byte	W01
	.byte		        As2 , v048
	.byte		N05   , Cn3 , v060
	.byte		N04   , Fn3 , v088
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N05   , As2 , v044
	.byte		N04   , Cn3 , v064
	.byte		N04   , Fn3 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , As2 , v048
	.byte		N11   , Cn3 , v064
	.byte		N11   , Fn3 , v084
	.byte	W11
	.byte	W01
	.byte		N10   , As2 , v052
	.byte		N10   , Cn3 , v076
	.byte		N10   , Fn3 , v092
	.byte	W11
	.byte	W01
	.byte		N04   , As2 , v044
	.byte		N04   , Dn3 , v040
	.byte		N02   , Fn3 
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		N05   , As2 , v044
	.byte		N05   , Dn3 , v064
	.byte		N04   , Fn3 , v072
	.byte	W04
	.byte	W01
	.byte	W01
@ 030   ----------------------------------------
	.byte		N23   , As2 , v064
	.byte		N23   , Dn3 , v080
	.byte		N23   , Fn3 , v084
	.byte	W23
	.byte	W01
	.byte		N16   , As2 , v076
	.byte		N15   , Dn3 
	.byte	W01
	.byte		        Fn3 , v084
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N09   , As2 , v072
	.byte		N09   , Dn3 , v068
	.byte	W01
	.byte		        Fn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N15   , As2 , v056
	.byte		N14   , Dn3 
	.byte		N15   , Fn3 , v080
	.byte	W15
	.byte	W01
	.byte	W02
	.byte		N10   , As2 
	.byte		N10   , Dn3 , v072
	.byte		N09   , Fn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N04   , An2 , v020
	.byte	W01
	.byte		        Cn3 , v044
	.byte		N04   , Fn3 , v068
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N05   , An2 , v056
	.byte		N05   , Cn3 , v052
	.byte		N04   , Fn3 , v072
	.byte	W05
	.byte	W01
@ 031   ----------------------------------------
	.byte		N10   , An2 , v060
	.byte		N20   , Cn3 , v088
	.byte	W01
	.byte		        Fn3 
	.byte	W09
	.byte	W02
	.byte		N10   , An2 , v048
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N17   , An2 , v060
	.byte		N15   , Cn3 , v092
	.byte		N16   , Fn3 , v084
	.byte	W16
	.byte	W01
	.byte	W01
	.byte		N10   , An2 , v056
	.byte		N10   , Cn3 , v076
	.byte	W01
	.byte		N09   , Fn3 , v080
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N15   , An2 , v056
	.byte		N15   , Cn3 , v076
	.byte	W01
	.byte		N14   , Fn3 , v080
	.byte	W14
	.byte	W03
	.byte		N10   , An2 , v056
	.byte		N10   , Cn3 , v076
	.byte		N11   , Fn3 , v088
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N04   , Gn2 , v044
	.byte		N04   , As2 
	.byte		N04   , Fn3 , v052
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N03   , Gn2 
	.byte		N05   , As2 
	.byte		N03   , Fn3 , v064
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W01
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_9_011
	.byte	W02
	.byte	W01
	.byte		N16   , Gn2 , v072
	.byte		N16   , As2 
	.byte	W01
	.byte		        Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N08   , Gn2 , v056
	.byte		N11   , As2 
	.byte	W01
	.byte		N10   , Fn3 , v084
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N16   , Gn2 , v052
	.byte		N15   , As2 
	.byte		N15   , Fn3 , v080
	.byte	W16
	.byte	W02
	.byte		N12   , Gn2 , v060
	.byte		N09   , As2 
	.byte		N10   , Fn3 , v080
	.byte	W10
	.byte	W02
	.byte		N04   , As2 , v024
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 , v068
	.byte	W05
	.byte	W01
	.byte		        As2 , v024
	.byte		N04   , Cn3 
	.byte		N05   , Fn3 , v064
	.byte	W04
	.byte	W01
	.byte	W01
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_9_012
	.byte	W03
	.byte		N16   , As2 , v084
	.byte		N17   , Cn3 , v076
	.byte		N16   , Fn3 , v084
	.byte	W17
	.byte	W01
	.byte		N09   , As2 , v068
	.byte		N09   , Cn3 , v060
	.byte		N10   , Fn3 , v084
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N15   , As2 , v068
	.byte		N16   , Cn3 , v064
	.byte		N15   , Fn3 , v080
	.byte	W15
	.byte	W02
	.byte	W01
	.byte		N08   , As2 , v072
	.byte		N10   , Cn3 , v076
	.byte		N09   , Fn3 , v092
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		N02   , As2 , v024
	.byte		N02   , Dn3 , v028
	.byte		N01   , Fn3 , v052
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N03   , Dn3 , v036
	.byte		N03   , Fn3 , v060
	.byte	W01
	.byte		        As2 , v076
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N10   , As2 , v080
	.byte	W01
@ 034   ----------------------------------------
	.byte		N23   , Dn3 , v084
	.byte		N23   , Fn3 , v080
	.byte	W10
	.byte	W01
	.byte		N11   , As2 , v040
	.byte	W12
	.byte	W01
	.byte		N16   , As2 , v080
	.byte		N15   , Dn3 
	.byte		N15   , Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W02
	.byte		N09   , As2 , v080
	.byte		N09   , Dn3 , v072
	.byte		N09   , Fn3 , v088
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N15   , As2 , v060
	.byte		N14   , Dn3 , v056
	.byte		N15   , Fn3 , v088
	.byte	W14
	.byte	W01
	.byte	W02
	.byte		N09   
	.byte	W01
	.byte		N10   , As2 , v084
	.byte		N10   , Dn3 , v076
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N04   , Cn3 , v048
	.byte		N04   , Fn3 , v072
	.byte	W01
	.byte		        As2 , v024
	.byte	W04
	.byte	W01
	.byte		        Fn3 , v076
	.byte	W01
	.byte		N05   , As2 , v056
	.byte		N05   , Cn3 
	.byte	W04
	.byte	W01
	.byte	W01
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_9_014
	.byte	W02
	.byte		N10   , As2 , v052
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N17   , As2 , v064
	.byte		N15   , Cn3 , v096
	.byte		N15   , Fn3 , v088
	.byte	W16
	.byte	W01
	.byte	W01
	.byte		N10   , As2 , v060
	.byte		N10   , Cn3 , v080
	.byte	W01
	.byte		N09   , Fn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N15   , As2 , v060
	.byte		N15   , Cn3 , v076
	.byte		N14   , Fn3 , v088
	.byte	W15
	.byte	W02
	.byte		N11   , Fn3 , v092
	.byte	W01
	.byte		N10   , As2 , v064
	.byte		N10   , Cn3 , v080
	.byte	W10
	.byte	W01
	.byte		N04   , As2 , v048
	.byte		N04   , Fn3 , v060
	.byte	W01
	.byte		        Dn3 , v044
	.byte	W04
	.byte	W01
	.byte		N05   , As2 , v056
	.byte		N04   , Fn3 , v064
	.byte	W01
	.byte		        Dn3 , v056
	.byte	W04
	.byte	W02
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_9_013
	.byte	W01
	.byte		N11   , As2 , v040
	.byte	W12
	.byte	W01
	.byte		N16   , As2 , v080
	.byte		N15   , Dn3 
	.byte		N17   , Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N02   , Cn3 , v056
	.byte	W01
	.byte		        An2 , v060
	.byte	W02
	.byte	W03
	.byte		N11   , An2 , v064
	.byte		N11   , Cn3 , v060
	.byte		N21   , Fn3 , v084
	.byte	W11
	.byte	W01
	.byte		N11   , An2 , v060
	.byte		N11   , Cn3 , v056
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N12   , Fn3 , v088
	.byte	W01
	.byte		N11   , An2 , v060
	.byte		N11   , Cn3 , v056
	.byte	W11
	.byte	W01
	.byte		N01   , As2 , v028
	.byte		N02   , Ds3 , v032
	.byte		N01   , Fn3 , v056
	.byte	W01
	.byte	W01
	.byte	W04
	.byte		N04   , As2 , v080
	.byte		N03   , Ds3 , v040
	.byte		N03   , Fn3 , v064
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N21   , As2 , v072
	.byte	W01
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_9_016
	.byte	W01
	.byte	W02
	.byte		N16   , As2 , v088
	.byte		N17   , Ds3 , v076
	.byte		N16   , Fn3 , v088
	.byte	W17
	.byte	W02
	.byte		N09   , As2 , v080
	.byte		N09   , Cn3 , v084
	.byte		N09   , Fn3 , v080
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N16   , As2 , v068
	.byte	W01
	.byte		N04   , Cn3 , v076
	.byte		N04   , Fn3 , v088
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N03   , Cn3 , v072
	.byte		N04   , Fn3 
	.byte	W04
	.byte	W01
	.byte		N05   , Cn3 , v076
	.byte	W01
	.byte		N04   , Fn3 , v072
	.byte	W04
	.byte	W01
	.byte		N09   , Fn3 , v096
	.byte	W01
	.byte		N08   , As2 , v076
	.byte		N10   , Cn3 , v084
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N02   , As2 , v028
	.byte		N02   , Dn3 , v032
	.byte		N01   , Fn3 , v056
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As2 , v080
	.byte		N03   , Dn3 , v040
	.byte		N03   , Fn3 , v068
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N23   , As2 , v072
	.byte	W01
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_9_017
	.byte	W02
	.byte	W01
	.byte		N16   , As2 , v080
	.byte		N15   , Dn3 , v088
	.byte		N15   , Fn3 
	.byte	W15
	.byte	W01
	.byte	W02
	.byte		N09   , As2 , v080
	.byte		N09   , Dn3 
	.byte		N09   , Fn3 , v088
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N15   , As2 , v060
	.byte		N14   , Dn3 , v068
	.byte		N15   , Fn3 , v088
	.byte	W14
	.byte	W01
	.byte	W02
	.byte		N09   
	.byte	W01
	.byte		N10   , As2 , v084
	.byte		N10   , Dn3 
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N04   , As2 , v024
	.byte		N04   , Dn3 , v056
	.byte		N04   , Fn3 , v068
	.byte	W05
	.byte	W01
	.byte		N05   , As2 , v060
	.byte		N05   , Dn3 , v064
	.byte		N04   , Fn3 , v076
	.byte	W05
	.byte	W01
	.byte		N20   , Cn3 , v092
	.byte	W01
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_9_018
	.byte	W02
	.byte		N10   , An2 , v052
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N17   , An2 , v064
	.byte	W01
	.byte		N15   , Cn3 , v096
	.byte		N15   , Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 , v080
	.byte	W01
	.byte		N09   , Fn3 , v084
	.byte	W09
	.byte	W02
	.byte		N15   , An2 , v060
	.byte		N15   , Cn3 , v076
	.byte		N14   , Fn3 , v088
	.byte	W15
	.byte	W02
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 , v080
	.byte		N11   , Fn3 , v092
	.byte	W11
	.byte	W01
	.byte		N04   , As2 , v044
	.byte		N04   , Fn3 , v060
	.byte	W01
	.byte		        Cn3 , v044
	.byte	W04
	.byte	W01
	.byte		N05   , As2 , v056
	.byte		N04   , Fn3 , v060
	.byte	W01
	.byte		        Cn3 , v056
	.byte	W04
	.byte	W01
	.byte		N22   , Fn3 , v092
	.byte	W01
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_9_019
	.byte	W01
	.byte	W01
	.byte		N16   , As2 , v076
	.byte	W01
	.byte		        Cn3 , v084
	.byte		N16   , Fn3 , v092
	.byte	W16
	.byte	W02
	.byte		N11   , As2 , v060
	.byte		N09   , Cn3 , v080
	.byte		N10   , Fn3 , v088
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N15   , As2 , v056
	.byte		N15   , Cn3 , v072
	.byte		N15   , Fn3 , v084
	.byte	W15
	.byte	W02
	.byte		N09   , As2 , v064
	.byte		N09   , Cn3 , v080
	.byte		N10   , Fn3 , v088
	.byte	W10
	.byte	W02
	.byte		N04   , As2 , v028
	.byte	W01
	.byte		        Cn3 
	.byte		N04   , Ds3 , v052
	.byte		N04   , Fn3 , v068
	.byte	W04
	.byte	W01
	.byte		        As2 , v028
	.byte		N04   , Cn3 
	.byte	W01
	.byte		        Ds3 , v060
	.byte		N05   , Fn3 , v068
	.byte	W04
	.byte	W01
	.byte		N23   , As2 , v072
	.byte		N22   , Cn3 , v080
	.byte	W01
@ 041   ----------------------------------------
	.byte		        Ds3 , v076
	.byte	W22
	.byte	W01
	.byte		N11   , As2 , v084
	.byte		N11   , Cn3 , v080
	.byte		N11   , Ds3 , v064
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W01
	.byte		        As2 , v044
	.byte		N05   , Ds3 , v088
	.byte	W05
	.byte	W01
	.byte		        As2 , v044
	.byte		N10   , Cn3 , v060
	.byte		N09   , Ds3 , v088
	.byte	W05
	.byte	W01
	.byte		N04   , As2 , v052
	.byte	W03
	.byte	W01
	.byte	W02
	.byte		N05   , As2 , v044
	.byte		N04   , Cn3 , v068
	.byte		N04   , Ds3 , v084
	.byte	W04
	.byte	W01
	.byte		N11   , Cn3 , v068
	.byte	W01
	.byte		        As2 , v052
	.byte		N04   , Ds3 , v088
	.byte	W04
	.byte	W02
	.byte		        Ds3 , v084
	.byte	W05
	.byte		N10   , Ds3 , v096
	.byte	W01
	.byte		N04   , As2 , v056
	.byte		N10   , Cn3 , v080
	.byte	W04
	.byte	W02
	.byte		N05   , As2 , v044
	.byte	W04
	.byte	W01
	.byte		N04   , As2 , v048
	.byte	W01
	.byte		        Dn3 , v044
	.byte		N02   , Fn3 
	.byte	W02
	.byte	W02
	.byte	W01
	.byte		N05   , As2 , v048
	.byte	W01
	.byte		        Dn3 , v072
	.byte		N04   , Fn3 , v080
	.byte	W04
	.byte	W01
	.byte		N23   , As2 , v068
	.byte		N23   , Dn3 , v080
	.byte	W01
@ 042   ----------------------------------------
	.byte		        Fn3 , v088
	.byte	W22
	.byte	W01
	.byte	W01
	.byte		N16   , As2 , v080
	.byte		N15   , Dn3 
	.byte		N15   , Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W02
	.byte		N09   , As2 , v080
	.byte		N09   , Dn3 , v072
	.byte		N09   , Fn3 , v088
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 , v056
	.byte		N15   , Fn3 , v084
	.byte	W14
	.byte	W01
	.byte	W02
	.byte		N09   , Fn3 , v088
	.byte	W01
	.byte		N10   , As2 
	.byte		N10   , Dn3 , v076
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N04   , Cn3 , v048
	.byte		N04   , Fn3 , v068
	.byte	W01
	.byte		N03   , An2 , v024
	.byte	W04
	.byte	W01
	.byte		N02   , An2 , v060
	.byte		N05   , Cn3 , v056
	.byte		N04   , Fn3 , v076
	.byte	W03
	.byte	W02
	.byte	W01
	.byte	W01
@ 043   ----------------------------------------
	.byte		N10   , An2 , v064
	.byte		N20   , Cn3 , v096
	.byte		N20   , Fn3 , v092
	.byte	W10
	.byte	W02
	.byte		N10   , An2 , v052
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N17   , An2 , v064
	.byte	W01
	.byte		N15   , Cn3 , v096
	.byte		N15   , Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 , v080
	.byte		N09   , Fn3 , v084
	.byte	W10
	.byte	W02
	.byte		N15   , An2 , v060
	.byte		N15   , Cn3 , v080
	.byte		N14   , Fn3 , v088
	.byte	W15
	.byte	W02
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 , v080
	.byte		N11   , Fn3 , v092
	.byte	W11
	.byte	W01
	.byte		N01   , As2 , v048
	.byte		N04   , Fn3 , v056
	.byte	W01
	.byte		        Cn3 , v044
	.byte	W01
	.byte	W03
	.byte	W01
	.byte		N01   , As2 , v056
	.byte		N03   , Fn3 , v068
	.byte	W01
	.byte		N04   , Cn3 , v056
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N22   , Fn3 , v096
	.byte	W01
@ 044   ----------------------------------------
	.byte		N21   , As2 , v064
	.byte		N21   , Cn3 , v084
	.byte	W21
	.byte	W01
	.byte	W01
	.byte		N16   , As2 , v076
	.byte	W01
	.byte		        Cn3 , v084
	.byte		N16   , Fn3 , v092
	.byte	W16
	.byte	W02
	.byte		N11   , As2 , v060
	.byte		N09   , Cn3 , v080
	.byte		N10   , Fn3 , v088
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N15   , As2 , v056
	.byte		N15   , Cn3 , v072
	.byte	W01
	.byte		        Fn3 , v084
	.byte	W14
	.byte	W01
	.byte	W01
	.byte		N09   , As2 , v064
	.byte		N10   , Fn3 , v088
	.byte	W01
	.byte		N09   , Cn3 , v080
	.byte	W09
	.byte	W03
	.byte		N03   , Gs2 , v028
	.byte		N04   , Cn3 , v040
	.byte	W04
	.byte	W01
	.byte		        As2 , v028
	.byte		N04   , Cs3 
	.byte	W01
	.byte		N03   , Fs3 , v064
	.byte	W03
	.byte	W01
	.byte	W02
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_9_024
	.byte	W02
	.byte		N09   , As2 , v064
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N11   , Cs3 , v080
	.byte		N10   , Fs3 , v084
	.byte	W01
	.byte		        As2 , v088
	.byte	W10
	.byte	W01
	.byte		N05   , As2 , v056
	.byte		N05   , Cs3 
	.byte		N05   , Fs3 , v052
	.byte	W05
	.byte	W02
	.byte		N09   , As2 , v064
	.byte		N09   , Cs3 , v060
	.byte		N10   , Fs3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N05   , Fs3 , v080
	.byte	W01
	.byte		N04   , As2 , v068
	.byte		N04   , Cs3 
	.byte	W04
	.byte	W01
	.byte		N05   , Fs3 , v080
	.byte	W01
	.byte		        As2 , v068
	.byte		N05   , Cs3 
	.byte	W05
	.byte	W01
	.byte		N04   , As2 , v044
	.byte		N04   , Cs3 
	.byte		N05   , Fs3 , v056
	.byte	W04
	.byte	W01
	.byte		N09   , Fs3 , v092
	.byte	W01
	.byte		N10   , As2 , v080
	.byte		N10   , Cs3 
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N04   , As2 , v032
	.byte		N04   , Cs3 
	.byte		N03   , Fs3 , v052
	.byte	W04
	.byte	W01
	.byte		N05   , An2 , v040
	.byte		N05   , Fn3 , v060
	.byte	W01
	.byte		N04   , Cn3 , v040
	.byte	W05
	.byte		N09   , An2 , v072
	.byte		N04   , Fn3 , v096
	.byte	W01
@ 046   ----------------------------------------
	.byte		        Cn3 , v080
	.byte	W04
	.byte	W01
	.byte		N10   , Cn3 , v040
	.byte		N05   , Fn3 , v056
	.byte	W04
	.byte	W02
	.byte		N09   , An2 , v060
	.byte		N10   , Fn3 
	.byte	W05
	.byte	W01
	.byte		N04   , Cn3 , v040
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N10   , An2 , v084
	.byte		N11   , Cn3 , v080
	.byte		N10   , Fn3 , v084
	.byte	W10
	.byte	W02
	.byte		N04   , An2 , v056
	.byte		N05   , Cn3 
	.byte		N04   , Fn3 , v052
	.byte	W05
	.byte	W01
	.byte		N09   , An2 , v060
	.byte		N10   , Fn3 , v084
	.byte	W01
	.byte		N09   , Cn3 , v060
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N04   , An2 , v068
	.byte		N05   , Fn3 , v080
	.byte	W01
	.byte		N04   , Cn3 , v068
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N05   , An2 
	.byte		N05   , Fn3 , v080
	.byte	W01
	.byte		        Cn3 , v068
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N04   , An2 , v044
	.byte		N04   , Cn3 
	.byte		N05   , Fn3 , v056
	.byte	W04
	.byte	W01
	.byte		N10   , An2 , v080
	.byte		N11   , Fn3 , v092
	.byte	W01
	.byte		N10   , Cn3 , v080
	.byte	W10
	.byte	W02
	.byte		N04   , An2 , v032
	.byte		N04   , Cn3 
	.byte		N03   , Fn3 , v048
	.byte	W04
	.byte	W01
	.byte		N05   , An2 , v040
	.byte		N04   , Cn3 
	.byte	W01
	.byte		N03   , Fn3 , v064
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N09   , An2 , v072
	.byte		N04   , Fn3 , v096
	.byte	W01
@ 047   ----------------------------------------
	.byte		        Cn3 , v080
	.byte	W04
	.byte	W01
	.byte		N10   , Cn3 , v040
	.byte		N05   , Fn3 , v056
	.byte	W04
	.byte	W02
	.byte		N09   , An2 , v064
	.byte		N10   , Fn3 
	.byte	W05
	.byte	W01
	.byte		N04   , Cn3 , v040
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N10   , An2 , v084
	.byte		N11   , Cn3 , v080
	.byte		N10   , Fn3 , v084
	.byte	W10
	.byte	W02
	.byte		N04   , An2 , v056
	.byte		N05   , Cn3 
	.byte		N04   , Fn3 , v052
	.byte	W05
	.byte	W01
	.byte		N09   , An2 , v060
	.byte		N10   , Fn3 , v084
	.byte	W01
	.byte		N09   , Cn3 , v064
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N04   , An2 , v068
	.byte		N05   , Fn3 , v080
	.byte	W01
	.byte		N04   , Cn3 , v068
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N05   , An2 
	.byte		N05   , Fn3 , v080
	.byte	W01
	.byte		        Cn3 , v068
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N04   , An2 , v044
	.byte		N04   , Cn3 
	.byte		N05   , Fn3 , v056
	.byte	W04
	.byte	W01
	.byte		N10   , An2 , v080
	.byte		N11   , Fn3 , v092
	.byte	W01
	.byte		N10   , Cn3 , v080
	.byte	W10
	.byte	W02
	.byte		N04   , An2 , v032
	.byte		N04   , Cn3 
	.byte		N03   , Fn3 , v048
	.byte	W04
	.byte	W01
	.byte		N05   , An2 , v040
	.byte		N04   , Cn3 
	.byte	W01
	.byte		N03   , Fn3 , v060
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N10   , As2 , v076
	.byte		N21   , Dn3 , v084
	.byte	W01
@ 048   ----------------------------------------
	.byte		N08   , Gn2 , v056
	.byte	W08
	.byte	W01
	.byte	W02
	.byte		N07   , As2 , v052
	.byte	W01
	.byte		        Gn2 , v064
	.byte	W07
	.byte	W02
	.byte	W01
	.byte		N10   , Dn3 , v076
	.byte	W01
	.byte		N15   , Gn2 , v064
	.byte		N11   , As2 , v072
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N05   , As2 , v052
	.byte		N04   , Dn3 , v040
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N12   , Gn2 , v064
	.byte		N09   , As2 , v060
	.byte		N10   , Dn3 , v072
	.byte	W10
	.byte	W02
	.byte		N04   , As2 , v064
	.byte		N05   , Dn3 , v072
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N11   , Gn2 , v068
	.byte		N05   , As2 , v064
	.byte		N05   , Dn3 , v068
	.byte	W05
	.byte	W01
	.byte		        Dn3 , v048
	.byte	W01
	.byte		N04   , As2 , v040
	.byte	W04
	.byte	W01
	.byte		N09   , Dn3 , v080
	.byte	W01
	.byte		N10   , Gn2 , v072
	.byte		N10   , As2 , v076
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N05   , Cn3 , v028
	.byte	W01
	.byte		N03   , Fn2 
	.byte		N03   , An2 , v032
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N05   , Fn2 , v036
	.byte		N05   , An2 
	.byte		N03   , Cn3 
	.byte	W04
	.byte	W02
	.byte		N22   , Fn2 , v068
	.byte		N10   , An2 , v076
	.byte	W01
@ 049   ----------------------------------------
	.byte		N21   , Cn3 , v084
	.byte	W09
	.byte	W02
	.byte		N07   , An2 , v052
	.byte	W08
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N10   , Fn2 , v084
	.byte		N11   , An2 , v072
	.byte		N10   , Cn3 
	.byte	W11
	.byte	W01
	.byte		N05   , An2 , v052
	.byte		N05   , Cn3 , v040
	.byte	W01
	.byte		        Fn2 , v052
	.byte	W04
	.byte	W01
	.byte		N09   , An2 , v056
	.byte		N10   , Cn3 , v072
	.byte	W01
	.byte		N09   , Fn2 , v056
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N04   , An2 , v064
	.byte		N05   , Cn3 , v072
	.byte	W01
	.byte		N04   , Fn2 , v064
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N05   , An2 
	.byte		N05   , Cn3 , v072
	.byte	W01
	.byte		        Fn2 , v064
	.byte	W05
	.byte		        Cn3 , v048
	.byte	W01
	.byte		N04   , Fn2 , v040
	.byte		N04   , An2 
	.byte	W04
	.byte	W01
	.byte		N09   , Cn3 , v080
	.byte	W01
	.byte		N10   , Fn2 , v076
	.byte		N10   , An2 
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N03   , Fn2 , v028
	.byte	W01
	.byte		        As2 , v040
	.byte		N05   , Dn3 , v052
	.byte	W03
	.byte	W02
	.byte		        Fn2 , v036
	.byte		N05   , As2 
	.byte		N05   , Dn3 , v060
	.byte	W06
	.byte		N22   , Fn2 , v068
	.byte		N10   , As2 , v076
	.byte	W01
@ 050   ----------------------------------------
	.byte		N21   , Dn3 , v100
	.byte	W09
	.byte	W02
	.byte		N07   , As2 , v052
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N10   , Dn3 , v088
	.byte	W01
	.byte		        Fn2 , v080
	.byte		N11   , As2 , v076
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N05   , As2 , v052
	.byte		N05   , Dn3 , v040
	.byte	W01
	.byte		        Fn2 , v044
	.byte	W04
	.byte	W01
	.byte		        As2 , v056
	.byte	W01
	.byte		N04   , Fn2 , v060
	.byte		N03   , Cn3 , v084
	.byte	W03
	.byte	W02
	.byte		N09   , An2 , v064
	.byte	W01
	.byte		N08   , Fn2 , v056
	.byte		N08   , Cn3 , v084
	.byte	W08
	.byte	W01
	.byte	W02
	.byte		N05   , An2 , v064
	.byte		N05   , Cn3 , v088
	.byte	W01
	.byte		        Fn2 , v064
	.byte	W04
	.byte	W01
	.byte		        Cn3 , v060
	.byte	W01
	.byte		N04   , Fn2 , v040
	.byte		N04   , An2 
	.byte	W04
	.byte	W01
	.byte		N09   , Cn3 , v100
	.byte	W01
	.byte		N10   , Fn2 , v076
	.byte		N10   , An2 
	.byte	W08
	.byte	W02
	.byte	W02
	.byte		N03   , Fn2 , v028
	.byte		N03   , An2 , v032
	.byte		N05   , Cn3 , v044
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		        Fn2 , v036
	.byte		N05   , An2 
	.byte		N05   , Cn3 , v052
	.byte	W06
	.byte		N10   , As2 , v076
	.byte	W01
@ 051   ----------------------------------------
	.byte		N22   , Gn2 , v068
	.byte		N16   , Dn3 , v084
	.byte	W09
	.byte	W03
	.byte		N07   , As2 , v052
	.byte	W04
	.byte	W04
	.byte	W02
	.byte	W01
	.byte		N11   , As2 , v076
	.byte		N10   , Dn3 
	.byte	W01
	.byte		        Gn2 , v084
	.byte	W10
	.byte	W01
	.byte		N05   , As2 , v052
	.byte		N05   , Dn3 , v040
	.byte	W01
	.byte		        Gn2 , v052
	.byte	W04
	.byte	W01
	.byte		N09   , As2 , v060
	.byte		N10   , Dn3 , v076
	.byte	W01
	.byte		N09   , Gn2 , v060
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N04   , An2 , v064
	.byte		N05   , Cn3 , v072
	.byte	W01
	.byte		N04   , Fn2 , v064
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N05   , An2 
	.byte		N05   , Cn3 , v072
	.byte	W01
	.byte		        Fn2 , v064
	.byte	W05
	.byte		        Cn3 , v048
	.byte	W01
	.byte		N04   , Fn2 , v040
	.byte		N04   , An2 
	.byte	W04
	.byte	W01
	.byte		N09   , Cn3 , v080
	.byte	W01
	.byte		N10   , Fn2 , v076
	.byte		N10   , An2 
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N05   , Cn3 , v052
	.byte	W01
	.byte		N03   , Gn2 
	.byte		N03   , En3 , v068
	.byte	W04
	.byte	W01
	.byte		N05   , Cn3 , v064
	.byte	W01
	.byte		        Gn2 
	.byte		N04   , En3 , v080
	.byte	W04
	.byte	W01
	.byte		N01   , Gn2 , v084
	.byte		N21   , Cn3 , v092
	.byte		N22   , En3 
	.byte	W01
@ 052   ----------------------------------------
	.byte	W09
	.byte	W02
	.byte		N07   , Gn2 , v056
	.byte	W08
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N11   , Gn2 , v080
	.byte		N10   , Cn3 
	.byte		N10   , En3 , v100
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N05   , Gn2 , v060
	.byte		N05   , Cn3 , v032
	.byte	W01
	.byte		        En3 , v072
	.byte	W04
	.byte	W01
	.byte		N10   , Gn2 , v064
	.byte		N09   , Cn3 , v076
	.byte	W01
	.byte		N04   , En3 , v080
	.byte	W05
	.byte	W01
	.byte		N08   
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N09   , Gn2 , v072
	.byte	W01
	.byte		        Cn3 , v076
	.byte	W03
	.byte	W02
	.byte		N05   , En3 , v088
	.byte	W04
	.byte	W02
	.byte		N04   , Gn2 , v048
	.byte		N05   , Cn3 , v052
	.byte	W01
	.byte		N04   , En3 , v064
	.byte	W03
	.byte	W01
	.byte	W02
	.byte		N10   , As2 , v076
	.byte		N09   , Dn3 , v072
	.byte		N10   , Fn3 
	.byte	W10
	.byte	W01
	.byte		N05   , Dn3 , v024
	.byte	W01
	.byte		N03   , As2 , v032
	.byte		N03   , Fn3 
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N05   , As2 , v036
	.byte		N05   , Fn3 
	.byte	W01
	.byte		        Dn3 , v032
	.byte	W05
	.byte	W01
@ 053   ----------------------------------------
	.byte		N22   , Gn2 , v060
	.byte		N10   , As2 , v076
	.byte		N21   , Ds3 , v072
	.byte	W10
	.byte	W01
	.byte		N07   , As2 , v052
	.byte	W08
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N11   , As2 , v072
	.byte	W01
	.byte		N10   , Gn2 , v076
	.byte		N10   , Ds3 , v060
	.byte	W10
	.byte	W01
	.byte		N05   , As2 , v052
	.byte	W01
	.byte		        Gn2 , v044
	.byte		N05   , Ds3 , v024
	.byte	W04
	.byte	W01
	.byte		N09   , As2 , v056
	.byte	W01
	.byte		        Gn2 , v052
	.byte		N10   , Ds3 , v056
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N04   , As2 , v064
	.byte	W01
	.byte		        Gn2 , v056
	.byte		N05   , Ds3 
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		        As2 , v064
	.byte	W01
	.byte		        Gn2 , v056
	.byte		N05   , Ds3 
	.byte	W05
	.byte	W01
	.byte		N04   , Gn2 , v032
	.byte		N04   , As2 , v040
	.byte		N05   , Ds3 , v032
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N10   , Gn2 , v068
	.byte		N10   , As2 , v076
	.byte		N09   , Ds3 , v068
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N03   , Fn2 , v028
	.byte	W01
	.byte		        An2 , v040
	.byte		N03   , Cn3 
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N05   , Fn2 , v036
	.byte	W01
	.byte		        An2 
	.byte		N04   , Cn3 
	.byte	W05
	.byte	W01
@ 054   ----------------------------------------
	.byte		N22   , Fn2 , v068
	.byte		N01   , An2 , v072
	.byte		N21   , Cn3 
	.byte	W21
	.byte	W01
	.byte	W01
	.byte		N10   , Fn2 , v080
	.byte		N10   , An2 , v056
	.byte		N10   , Cn3 
	.byte	W11
	.byte	W01
	.byte		N05   , An2 , v024
	.byte		N05   , Cn3 
	.byte	W01
	.byte		        Fn2 , v052
	.byte	W04
	.byte	W01
	.byte		N10   , An2 , v056
	.byte		N10   , Cn3 
	.byte	W01
	.byte		N09   , Fn2 , v060
	.byte	W10
	.byte	W01
	.byte		N04   , Fn2 , v064
	.byte		N05   , An2 , v052
	.byte		N05   , Cn3 
	.byte	W04
	.byte	W02
	.byte		        Fn2 , v064
	.byte		N05   , An2 , v056
	.byte		N05   , Cn3 , v052
	.byte	W06
	.byte		        An2 , v032
	.byte		N05   , Cn3 
	.byte	W01
	.byte		N04   , Fn2 , v040
	.byte	W04
	.byte	W01
	.byte		N09   , An2 , v064
	.byte		N09   , Cn3 , v068
	.byte	W01
	.byte		N10   , Fn2 , v076
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N03   , Fn2 , v028
	.byte		N03   , An2 , v040
	.byte		N03   , Cn3 
	.byte	W04
	.byte	W01
	.byte		N05   , Fn2 , v036
	.byte	W01
	.byte		        An2 
	.byte		N05   , Cn3 
	.byte	W05
	.byte	W01
	.byte	W01
@ 055   ----------------------------------------
	.byte		N22   , Fn2 , v068
	.byte		N21   , An2 
	.byte		N21   , Cn3 
	.byte	W21
	.byte	W01
	.byte	W02
	.byte		N10   , Fn2 , v080
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 
	.byte	W10
	.byte	W02
	.byte		N05   , Fn2 , v052
	.byte		N05   , An2 , v024
	.byte		N05   , Cn3 
	.byte	W05
	.byte	W01
	.byte		N09   , Fn2 , v060
	.byte		N10   , An2 , v056
	.byte		N10   , Cn3 , v060
	.byte	W10
	.byte	W02
	.byte		N04   , Fn2 , v064
	.byte		N05   , An2 , v052
	.byte		N05   , Cn3 , v056
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		        Fn2 , v064
	.byte		N05   , An2 , v056
	.byte		N05   , Cn3 , v052
	.byte	W05
	.byte	W01
	.byte		N04   , Fn2 , v040
	.byte		N05   , An2 , v032
	.byte		N05   , Cn3 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N10   , Fn2 , v076
	.byte		N09   , An2 , v068
	.byte		N09   , Cn3 
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N03   , Fn2 , v028
	.byte	W01
	.byte		        An2 , v040
	.byte		N03   , Cn3 
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		        Fn2 , v036
	.byte	W01
	.byte		N02   , An2 
	.byte		N02   , Cn3 
	.byte	W03
	.byte		N92   , Dn3 , v056, gtp1
	.byte	W02
	.byte		        Fn2 , v056, gtp1
	.byte		N92   , As2 , v064, gtp2
	.byte	W01
@ 056   ----------------------------------------
	.byte	W90
	.byte	W01
	.byte	W02
	.byte	W01
	.byte		N90   , Fn2 , v036
	.byte	W01
	.byte		N88   , An2 , v052
	.byte	W01
@ 057   ----------------------------------------
	.byte	W02
	.byte		N84   , Cn3 , v076, gtp1
	.byte	W01
	.byte		N80   , Fn3 , v068, gtp1
	.byte	W80
	.byte	W02
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W06
	.byte		N88   , Gn2 , v060, gtp1
	.byte	W01
@ 058   ----------------------------------------
	.byte	W01
	.byte		        Cn3 , v056, gtp1
	.byte	W02
	.byte		N84   , Fn3 , v060, gtp3
	.byte	W84
	.byte	W02
	.byte	W02
	.byte	W03
	.byte		N80   , Fs2 , v060, gtp2
	.byte	W01
	.byte		N78   , As2 , v060, gtp1
	.byte	W01
@ 059   ----------------------------------------
	.byte		N88   , Ds3 , v060, gtp1
	.byte	W02
	.byte		N84   , Fn3 , v072
	.byte	W76
	.byte	W01
	.byte	W02
	.byte	W02
	.byte		N08   , Fn2 , v048
	.byte	W02
	.byte		N09   , As2 
	.byte	W01
	.byte	W04
	.byte	W02
	.byte	W02
	.byte	W02
@ 060   ----------------------------------------
	.byte		N88   , Fn2 , v052
	.byte	W01
	.byte		N90   , As2 , v072, gtp1
	.byte	W01
	.byte		N88   , Dn3 , v060, gtp1
	.byte		N84   , Fn3 , v060, gtp2
	.byte	W84
	.byte	W02
	.byte	W01
	.byte	W03
	.byte	W02
	.byte		N90   , Fn2 , v056
	.byte	W02
@ 061   ----------------------------------------
	.byte		N88   , An2 , v052
	.byte	W02
	.byte		N84   , Cn3 , v072, gtp1
	.byte	W01
	.byte		N80   , Fn3 , v072, gtp1
	.byte	W80
	.byte	W02
	.byte	W02
	.byte	W02
	.byte	W05
	.byte		N88   , Gn2 , v060, gtp1
	.byte	W02
@ 062   ----------------------------------------
	.byte		N84   , As2 , v068, gtp3
	.byte	W02
	.byte		N88   , Ds3 , v068, gtp1
	.byte	W02
	.byte		N84   , Fn3 , v064, gtp3
	.byte	W84
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N80   , Fs2 , v060, gtp2
	.byte	W02
	.byte		N78   , As2 , v064, gtp1
	.byte	W01
@ 063   ----------------------------------------
	.byte	W01
	.byte		N80   , Ds3 , v068, gtp1
	.byte	W01
	.byte		N84   , Fn3 , v068, gtp3
	.byte	W76
	.byte	W01
	.byte	W01
	.byte	W02
	.byte	W02
	.byte		N10   , Ds2 , v032
	.byte		N09   , As2 , v028
	.byte		N09   , Ds3 
	.byte	W05
	.byte	W04
	.byte	W02
	.byte		        Ds2 
	.byte	W01
@ 064   ----------------------------------------
	.byte		N06   , As2 , v036
	.byte		N07   , Ds3 , v032
	.byte	W07
	.byte	W01
	.byte	W03
	.byte		N09   , Ds2 
	.byte	W01
	.byte		        As2 
	.byte		N08   , Ds3 , v004
	.byte	W08
	.byte	W01
	.byte	W02
	.byte		N11   , Ds2 , v044
	.byte	W01
	.byte		N08   , As2 , v040
	.byte		N09   , Ds3 , v016
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , Ds2 , v052
	.byte		N10   , Ds3 , v020
	.byte	W01
	.byte		N08   , As2 , v048
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Ds2 , v064
	.byte	W01
	.byte		N09   , As2 , v056
	.byte		N10   , Ds3 , v048
	.byte	W08
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N09   , Ds2 , v076
	.byte	W01
	.byte		N08   , As2 , v060
	.byte		N09   , Ds3 
	.byte	W09
	.byte	W02
	.byte		N08   , Ds2 , v072
	.byte	W01
	.byte		N11   , As2 , v056
	.byte		N08   , Ds3 , v052
	.byte	W08
	.byte	W01
	.byte	W02
	.byte		N10   , Ds2 , v080
	.byte	W01
	.byte		N11   , As2 , v072
	.byte		N11   , Ds3 , v076
	.byte	W10
	.byte	W01
@ 065   ----------------------------------------
	.byte		N21   , Dn3 , v080
	.byte		N21   , Fn3 , v088
	.byte	W01
	.byte	W20
	.byte	W03
	.byte		N16   , As2 , v080
	.byte		N15   , Dn3 , v088
	.byte		N15   , Fn3 
	.byte	W15
	.byte	W01
	.byte	W02
	.byte		N09   , As2 , v080
	.byte		N09   , Dn3 
	.byte		N09   , Fn3 , v088
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 
	.byte		N15   , Fn3 , v084
	.byte	W14
	.byte	W01
	.byte	W02
	.byte		N09   , Fn3 , v088
	.byte	W01
	.byte		N10   , As2 , v084
	.byte		N10   , Dn3 
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N04   , As2 , v024
	.byte		N04   , Dn3 , v056
	.byte		N04   , Fn3 , v072
	.byte	W05
	.byte	W01
	.byte		N05   , As2 , v056
	.byte		N05   , Dn3 , v064
	.byte		N04   , Fn3 , v076
	.byte	W05
	.byte	W01
	.byte		N20   , Cn3 , v096
	.byte	W01
@ 066   ----------------------------------------
mus_irreplaceable_beyonce_9_066:
	.byte		N10   , An2 , v064
	.byte		N20   , Fn3 , v088
	.byte	W10
	.byte	PEND
	.byte	W02
	.byte		N10   , An2 , v052
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N17   , An2 , v064
	.byte	W01
	.byte		N15   , Cn3 , v096
	.byte		N15   , Fn3 , v084
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 , v080
	.byte	W01
	.byte		N09   , Fn3 , v084
	.byte	W09
	.byte	W02
	.byte		N15   , An2 , v060
	.byte		N15   , Cn3 , v080
	.byte		N14   , Fn3 , v088
	.byte	W15
	.byte	W02
	.byte		N10   , An2 , v064
	.byte		N10   , Cn3 , v076
	.byte		N11   , Fn3 , v092
	.byte	W11
	.byte	W01
	.byte		N04   , As2 , v044
	.byte		N04   , Fn3 , v060
	.byte	W01
	.byte		        Cn3 , v048
	.byte	W04
	.byte	W01
	.byte		N05   , As2 , v056
	.byte		N04   , Fn3 , v060
	.byte	W01
	.byte		        Cn3 , v056
	.byte	W04
	.byte	W01
	.byte		N22   , Fn3 , v092
	.byte	W01
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_9_019
	.byte	W01
	.byte	W01
	.byte		N16   , As2 , v076
	.byte	W01
	.byte		        Cn3 , v084
	.byte		N16   , Fn3 , v092
	.byte	W16
	.byte	W02
	.byte		N11   , As2 , v060
	.byte		N09   , Cn3 , v080
	.byte		N10   , Fn3 , v088
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N15   , As2 , v056
	.byte		N15   , Cn3 , v072
	.byte		N15   , Fn3 , v084
	.byte	W15
	.byte	W02
	.byte		N09   , As2 , v064
	.byte		N09   , Cn3 , v080
	.byte		N10   , Fn3 , v088
	.byte	W10
	.byte	W02
	.byte		N04   , As2 , v028
	.byte	W01
	.byte		        Cn3 
	.byte		N04   , Ds3 , v052
	.byte		N04   , Fn3 , v072
	.byte	W04
	.byte	W01
	.byte		        As2 , v028
	.byte		N04   , Cn3 
	.byte	W01
	.byte		        Ds3 , v056
	.byte		N05   , Fn3 , v068
	.byte	W04
	.byte	W01
	.byte		N23   , As2 , v072
	.byte		N22   , Cn3 , v080
	.byte	W01
@ 068   ----------------------------------------
	.byte		        Ds3 , v076
	.byte	W22
	.byte	W01
	.byte		N11   , As2 , v088
	.byte		N11   , Cn3 , v076
	.byte		N11   , Ds3 , v064
	.byte	W12
	.byte		N05   , Cn3 , v060
	.byte	W01
	.byte		        As2 , v044
	.byte		N05   , Ds3 , v088
	.byte	W05
	.byte	W01
	.byte		        As2 , v044
	.byte		N10   , Cn3 , v060
	.byte		N09   , Ds3 , v092
	.byte	W05
	.byte	W01
	.byte		N04   , As2 , v052
	.byte	W03
	.byte	W01
	.byte	W02
	.byte		N05   , As2 , v044
	.byte		N04   , Cn3 , v068
	.byte		N04   , Ds3 , v088
	.byte	W04
	.byte	W01
	.byte		N11   , Cn3 , v068
	.byte	W01
	.byte		        As2 , v056
	.byte		N04   , Ds3 , v084
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte		N10   , Ds3 , v096
	.byte	W01
	.byte		N04   , As2 , v052
	.byte		N10   , Cn3 , v080
	.byte	W04
	.byte	W02
	.byte		N05   , As2 , v048
	.byte	W04
	.byte	W01
	.byte		N04   
	.byte	W01
	.byte		        Dn3 , v044
	.byte		N02   , Fn3 
	.byte	W02
	.byte	W02
	.byte	W01
	.byte		N05   , As2 , v048
	.byte	W01
	.byte		        Dn3 , v068
	.byte		N04   , Fn3 , v080
	.byte	W04
	.byte	W01
	.byte		N23   , As2 , v072
	.byte		N23   , Dn3 , v080
	.byte	W01
@ 069   ----------------------------------------
	.byte		        Fn3 , v088
	.byte	W22
	.byte	W01
	.byte	W01
	.byte		N16   , As2 , v080
	.byte		N15   , Dn3 
	.byte		N15   , Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W02
	.byte		N09   , As2 , v080
	.byte		N09   , Dn3 , v072
	.byte		N09   , Fn3 , v088
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 , v056
	.byte		N15   , Fn3 , v088
	.byte	W14
	.byte	W01
	.byte	W02
	.byte		N09   
	.byte	W01
	.byte		N10   , As2 
	.byte		N10   , Dn3 , v076
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N04   , Cn3 , v048
	.byte		N04   , Fn3 , v072
	.byte	W01
	.byte		N03   , An2 , v024
	.byte	W04
	.byte	W01
	.byte		N02   , An2 , v060
	.byte		N05   , Cn3 , v056
	.byte		N04   , Fn3 , v076
	.byte	W03
	.byte	W02
	.byte	W01
	.byte	W01
@ 070   ----------------------------------------
	.byte		N10   , An2 , v064
	.byte		N20   , Cn3 , v096
	.byte		N20   , Fn3 
	.byte	W10
	.byte	W02
	.byte		N10   , An2 , v052
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N17   , An2 , v064
	.byte	W01
	.byte		N15   , Cn3 , v096
	.byte		N15   , Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 , v080
	.byte		N09   , Fn3 , v084
	.byte	W10
	.byte	W02
	.byte		N15   , An2 , v060
	.byte		N15   , Cn3 , v076
	.byte		N14   , Fn3 , v084
	.byte	W15
	.byte	W02
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 , v080
	.byte		N11   , Fn3 , v092
	.byte	W11
	.byte	W01
	.byte		N01   , As2 , v048
	.byte		N04   , Fn3 , v060
	.byte	W01
	.byte		        Cn3 , v044
	.byte	W01
	.byte	W03
	.byte	W01
	.byte		N01   , As2 , v056
	.byte		N03   , Fn3 , v064
	.byte	W01
	.byte		N04   , Cn3 , v056
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N22   , Fn3 , v092
	.byte	W01
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_9_019
	.byte	W01
	.byte	W01
	.byte		N16   , As2 , v076
	.byte	W01
	.byte		        Cn3 , v084
	.byte		N16   , Fn3 , v088
	.byte	W16
	.byte	W02
	.byte		N11   , As2 , v060
	.byte		N09   , Cn3 , v080
	.byte		N10   , Fn3 , v088
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N15   , As2 , v056
	.byte		N15   , Cn3 , v076
	.byte	W01
	.byte		        Fn3 , v084
	.byte	W14
	.byte	W01
	.byte	W01
	.byte		N09   , As2 , v064
	.byte		N10   , Fn3 , v088
	.byte	W01
	.byte		N09   , Cn3 , v080
	.byte	W09
	.byte	W03
	.byte		N03   , Gs2 , v028
	.byte		N04   , Cn3 , v040
	.byte	W04
	.byte	W01
	.byte		        As2 , v028
	.byte		N04   , Cs3 
	.byte	W01
	.byte		N03   , Fs3 , v064
	.byte	W03
	.byte	W01
	.byte	W02
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_9_024
	.byte	W02
	.byte		N09   , As2 , v064
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N11   , Cs3 , v080
	.byte		N10   , Fs3 , v084
	.byte	W01
	.byte		        As2 , v088
	.byte	W10
	.byte	W01
	.byte		N05   , As2 , v056
	.byte		N05   , Cs3 
	.byte		N05   , Fs3 , v052
	.byte	W05
	.byte	W02
	.byte		N09   , As2 , v064
	.byte		N09   , Cs3 
	.byte		N10   , Fs3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N05   , Fs3 , v080
	.byte	W01
	.byte		N04   , As2 , v068
	.byte		N04   , Cs3 
	.byte	W04
	.byte	W01
	.byte		N05   , Fs3 , v080
	.byte	W01
	.byte		        As2 , v068
	.byte		N05   , Cs3 
	.byte	W05
	.byte	W01
	.byte		N04   , As2 , v044
	.byte		N04   , Cs3 
	.byte		N05   , Fs3 , v056
	.byte	W04
	.byte	W01
	.byte		N09   , Fs3 , v092
	.byte	W01
	.byte		N10   , As2 , v080
	.byte		N10   , Cs3 
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N03   , Fn3 , v052
	.byte	W01
	.byte		N04   , As2 , v032
	.byte	W01
	.byte		        Dn3 
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N05   , As2 , v040
	.byte		N05   , Fn3 , v060
	.byte	W01
	.byte		N04   , Dn3 , v040
	.byte	W05
	.byte	W01
@ 073   ----------------------------------------
	.byte		N08   , As2 , v072
	.byte		N21   , Dn3 , v080
	.byte		N17   , Fn3 , v096
	.byte	W08
	.byte	W03
	.byte		N06   , As2 , v040
	.byte	W07
	.byte	W03
	.byte	W03
	.byte		N16   , As2 , v080
	.byte		N15   , Dn3 , v088
	.byte		N15   , Fn3 
	.byte	W15
	.byte	W01
	.byte	W02
	.byte		N09   , As2 , v076
	.byte		N09   , Dn3 , v080
	.byte		N09   , Fn3 , v088
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N15   , As2 , v060
	.byte		N14   , Dn3 , v064
	.byte		N15   , Fn3 , v088
	.byte	W14
	.byte	W01
	.byte	W02
	.byte		N09   
	.byte	W01
	.byte		N10   , As2 , v084
	.byte		N10   , Dn3 
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N04   , As2 , v024
	.byte		N04   , Dn3 , v056
	.byte		N04   , Fn3 , v072
	.byte	W05
	.byte	W01
	.byte		N05   , As2 , v060
	.byte		N05   , Dn3 , v064
	.byte		N04   , Fn3 , v076
	.byte	W05
	.byte	W01
	.byte		N20   , Cn3 , v092
	.byte	W01
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_9_066
	.byte	W02
	.byte		N10   , An2 , v052
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N17   , An2 , v064
	.byte	W01
	.byte		N15   , Cn3 , v096
	.byte		N15   , Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 , v080
	.byte	W01
	.byte		N09   , Fn3 , v084
	.byte	W09
	.byte	W02
	.byte		N15   , An2 , v060
	.byte		N15   , Cn3 , v080
	.byte		N14   , Fn3 , v088
	.byte	W15
	.byte	W02
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 , v080
	.byte		N11   , Fn3 , v092
	.byte	W11
	.byte	W01
	.byte		N04   , As2 , v048
	.byte		N04   , Fn3 , v060
	.byte	W01
	.byte		        Cn3 , v048
	.byte	W04
	.byte	W01
	.byte		N05   , As2 , v056
	.byte		N04   , Fn3 , v060
	.byte	W01
	.byte		        Cn3 , v056
	.byte	W04
	.byte	W01
	.byte		N22   , Fn3 , v092
	.byte	W01
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_9_019
	.byte	W01
	.byte	W01
	.byte		N16   , As2 , v076
	.byte	W01
	.byte		        Cn3 , v084
	.byte		N16   , Fn3 , v092
	.byte	W16
	.byte	W02
	.byte		N11   , As2 , v060
	.byte		N09   , Cn3 , v080
	.byte		N10   , Fn3 , v088
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N15   , As2 , v056
	.byte		N15   , Cn3 , v076
	.byte		N15   , Fn3 , v084
	.byte	W15
	.byte	W02
	.byte		N09   , As2 , v064
	.byte		N09   , Cn3 , v080
	.byte	W01
	.byte		N10   , Fn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N04   , As2 , v028
	.byte	W01
	.byte		        Cn3 
	.byte		N04   , Ds3 , v056
	.byte	W04
	.byte	W01
	.byte		        As2 , v028
	.byte		N04   , Cn3 
	.byte	W01
	.byte		        Ds3 , v056
	.byte	W04
	.byte	W01
	.byte		N11   , As2 , v072
	.byte		N09   , Cn3 , v080
	.byte	W01
@ 076   ----------------------------------------
	.byte		N22   , Ds3 , v072
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N09   , As2 
	.byte		N09   , Cn3 , v080
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N11   , As2 , v084
	.byte		N11   , Cn3 , v076
	.byte		N11   , Ds3 , v064
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W01
	.byte		        As2 , v044
	.byte		N05   , Ds3 , v088
	.byte	W05
	.byte	W01
	.byte		        As2 , v044
	.byte		N10   , Cn3 , v060
	.byte		N09   , Ds3 , v092
	.byte	W05
	.byte	W01
	.byte		N04   , As2 , v052
	.byte	W03
	.byte	W01
	.byte	W02
	.byte		N05   , As2 , v044
	.byte		N04   , Cn3 , v068
	.byte		N04   , Ds3 , v084
	.byte	W04
	.byte	W01
	.byte		N11   , Cn3 , v068
	.byte	W01
	.byte		        As2 , v056
	.byte		N04   , Ds3 , v084
	.byte	W04
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte		N10   , Ds3 , v096
	.byte	W01
	.byte		N04   , As2 , v056
	.byte		N10   , Cn3 , v080
	.byte	W04
	.byte	W02
	.byte		N05   , As2 , v044
	.byte	W04
	.byte	W01
	.byte		N04   , As2 , v048
	.byte	W01
	.byte		        Dn3 , v044
	.byte		N02   , Fn3 
	.byte	W02
	.byte	W02
	.byte	W01
	.byte		N05   , As2 , v048
	.byte	W01
	.byte		        Dn3 , v072
	.byte		N04   , Fn3 , v076
	.byte	W04
	.byte	W01
	.byte		N23   , As2 , v068
	.byte		N23   , Dn3 , v084
	.byte	W01
@ 077   ----------------------------------------
	.byte		        Fn3 , v088
	.byte	W22
	.byte	W01
	.byte	W01
	.byte		N16   , As2 , v080
	.byte		N15   , Dn3 
	.byte		N15   , Fn3 , v088
	.byte	W15
	.byte	W01
	.byte	W02
	.byte		N09   , As2 , v076
	.byte		N09   , Dn3 , v072
	.byte		N09   , Fn3 , v088
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N15   , As2 , v064
	.byte		N14   , Dn3 , v060
	.byte		N15   , Fn3 , v084
	.byte	W14
	.byte	W01
	.byte	W02
	.byte		N09   , Fn3 , v088
	.byte	W01
	.byte		N10   , As2 
	.byte		N10   , Dn3 , v076
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N04   , Cn3 , v048
	.byte		N04   , Fn3 , v072
	.byte	W01
	.byte		N03   , An2 , v024
	.byte	W04
	.byte	W01
	.byte		N02   , An2 , v056
	.byte		N05   , Cn3 
	.byte		N04   , Fn3 , v076
	.byte	W03
	.byte	W02
	.byte	W01
	.byte	W01
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_9_022
	.byte	W02
	.byte		N10   , An2 , v052
	.byte	W08
	.byte	W02
	.byte	W01
	.byte		N17   , An2 , v064
	.byte	W01
	.byte		N15   , Cn3 , v096
	.byte		N15   , Fn3 , v084
	.byte	W15
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 , v080
	.byte		N09   , Fn3 , v084
	.byte	W10
	.byte	W02
	.byte		N15   , An2 , v060
	.byte		N15   , Cn3 , v076
	.byte		N14   , Fn3 , v088
	.byte	W15
	.byte	W02
	.byte		N10   , An2 , v060
	.byte		N10   , Cn3 , v076
	.byte		N11   , Fn3 , v092
	.byte	W11
	.byte	W01
	.byte		N04   , Fn3 , v060
	.byte	W01
	.byte		N01   , As2 , v044
	.byte		N04   , Dn3 , v048
	.byte	W02
	.byte	W02
	.byte	W01
	.byte		N03   , Fn3 , v064
	.byte	W01
	.byte		N01   , As2 , v056
	.byte		N01   , Dn3 
	.byte	W01
	.byte	W02
	.byte	W02
	.byte		N22   , Fn3 , v096
	.byte	W01
@ 079   ----------------------------------------
	.byte		N21   , As2 , v068
	.byte		N21   , Dn3 , v064
	.byte	W21
	.byte	W01
	.byte	W01
	.byte		N16   , As2 , v076
	.byte	W01
	.byte		        Dn3 , v068
	.byte		N16   , Fn3 , v092
	.byte	W16
	.byte	W02
	.byte		N11   , As2 , v060
	.byte		N09   , Dn3 
	.byte		N10   , Fn3 , v088
	.byte	W09
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N15   , As2 , v056
	.byte		N15   , Dn3 
	.byte		N15   , Fn3 , v084
	.byte	W15
	.byte	W01
	.byte	W01
	.byte		N09   , As2 , v064
	.byte		N10   , Fn3 , v084
	.byte	W01
	.byte		N09   , Dn3 , v060
	.byte	W09
	.byte	W03
	.byte		N03   , Fn2 , v028
	.byte		N04   , Cn3 , v044
	.byte	W04
	.byte	W01
	.byte		        Fn2 , v028
	.byte		N04   , Cn3 
	.byte	W01
	.byte		N03   , Fn3 , v064
	.byte	W03
	.byte	W01
	.byte	W02
@ 080   ----------------------------------------
	.byte		N09   , Fn2 , v072
	.byte		N08   , Cn3 , v080
	.byte		N21   , Fn3 , v096
	.byte	W08
	.byte	W01
	.byte	W01
	.byte		N08   , Cn3 , v068
	.byte	W01
	.byte		N09   , Fn2 , v064
	.byte	W07
	.byte	W03
	.byte	W02
	.byte		N11   , Cn3 , v080
	.byte		N10   , Fn3 , v084
	.byte	W01
	.byte		        Fn2 , v088
	.byte	W10
	.byte	W01
	.byte		N05   , Fn2 , v056
	.byte		N05   , Cn3 
	.byte		N05   , Fn3 , v052
	.byte	W05
	.byte	W02
	.byte		N09   , Fn2 , v064
	.byte		N09   , Cn3 , v060
	.byte		N10   , Fn3 , v084
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N05   , Fn3 , v080
	.byte	W01
	.byte		N04   , Fn2 , v068
	.byte		N04   , Cn3 
	.byte	W04
	.byte	W01
	.byte		N05   , Fn3 , v080
	.byte	W01
	.byte		        Fn2 , v068
	.byte		N05   , Cn3 
	.byte	W05
	.byte	W01
	.byte		N04   , Fn2 , v044
	.byte		N04   , Cn3 
	.byte		N03   , Fn3 , v056
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N09   , Fn3 , v092
	.byte	W01
	.byte		N10   , Fn2 , v080
	.byte		N10   , Cn3 
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N04   , Fn2 , v032
	.byte		N04   , Cn3 
	.byte		N03   , Fn3 , v052
	.byte	W04
	.byte	W01
	.byte		N05   , Fn3 , v060
	.byte	W01
	.byte		        Fn2 , v040
	.byte		N04   , Cn3 
	.byte	W05
	.byte	W01
@ 081   ----------------------------------------
	.byte		N08   , Cn3 , v080
	.byte	W01
	.byte		N09   , Fn2 , v072
	.byte		N21   , Fn3 , v096
	.byte	W07
	.byte	W02
	.byte	W01
	.byte		N08   , Cn3 , v068
	.byte	W01
	.byte		N09   , Fn2 , v064
	.byte	W07
	.byte	W03
	.byte	W02
	.byte		N10   , Fn2 , v088
	.byte		N11   , Cn3 , v076
	.byte		N10   , Fn3 , v084
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N05   , Fn2 , v056
	.byte		N05   , Cn3 
	.byte		N05   , Fn3 , v052
	.byte	W05
	.byte	W01
	.byte		N09   , Fn2 , v060
	.byte		N09   , Cn3 , v064
	.byte		N10   , Fn3 , v084
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N04   , Fn2 , v068
	.byte		N04   , Cn3 
	.byte		N05   , Fn3 , v080
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		        Fn2 , v068
	.byte		N05   , Cn3 
	.byte		N05   , Fn3 , v080
	.byte	W05
	.byte	W01
	.byte	W01
	.byte		N04   , Fn2 , v044
	.byte		N04   , Cn3 
	.byte		N03   , Fn3 , v056
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N10   , Fn2 , v080
	.byte		N14   , Cn3 
	.byte		N09   , Fn3 , v092
	.byte	W10
	.byte	W01
	.byte	W02
	.byte		N04   , Fn2 , v032
	.byte		N03   , Fn3 , v044
	.byte	W02
	.byte	W02
	.byte	W04
	.byte		TIE   , As2 , v084
	.byte	W02
	.byte		        Dn3 , v096
	.byte	W01
@ 082   ----------------------------------------
	.byte	W01
	.byte		        Fn3 , v100
	.byte	W92
	.byte	W03
@ 083   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte	W03
	.byte		        Dn3 
	.byte	W03
@ 084   ----------------------------------------
	.byte	W04
	.byte		        As2 
	.byte	W92
@ 085   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte	FINE

@**************** Track 10 (Midi-Chn.13) ****************@

mus_irreplaceable_beyonce_10:
	.byte	KEYSH , mus_irreplaceable_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte		VOL   , 126*mus_irreplaceable_beyonce_mvl/mxv
	.byte		PAN   , c_v-19
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W84
	.byte		N10   , As2 , v044
	.byte	W10
	.byte	W02
@ 003   ----------------------------------------
	.byte	W84
	.byte		N10   
	.byte	W10
	.byte	W02
@ 004   ----------------------------------------
	.byte	W84
	.byte		N02   , As2 , v052
	.byte	W02
	.byte	W10
@ 005   ----------------------------------------
	.byte	W90
	.byte		N04   
	.byte	W05
	.byte	W01
@ 006   ----------------------------------------
	.byte	W84
	.byte		N10   , As2 , v048
	.byte	W10
	.byte	W02
@ 007   ----------------------------------------
	.byte	W84
	.byte		N04   , Fs2 , v044
	.byte	W04
	.byte	W08
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
mus_irreplaceable_beyonce_10_009:
	.byte	W84
	.byte	W01
	.byte		N04   , Fs2 , v032
	.byte	W04
	.byte	PEND
	.byte	W07
@ 010   ----------------------------------------
	.byte	W84
	.byte		N10   , As2 , v052
	.byte	W10
	.byte	W02
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W42
	.byte		N04   , Fs2 , v040
	.byte	W05
	.byte	W36
	.byte	W01
	.byte		        Ds2 , v036
	.byte	W04
	.byte	W08
@ 013   ----------------------------------------
mus_irreplaceable_beyonce_10_013:
	.byte	W80
	.byte	W03
	.byte		N05   , Cn2 , v044
	.byte	W05
	.byte	PEND
	.byte	W08
@ 014   ----------------------------------------
	.byte	W84
	.byte		N06   , As2 
	.byte	W06
	.byte	W06
@ 015   ----------------------------------------
	.byte	W84
	.byte		N10   
	.byte	W10
	.byte	W02
@ 016   ----------------------------------------
	.byte	W84
	.byte		N02   , As2 , v052
	.byte	W02
	.byte	W10
@ 017   ----------------------------------------
	.byte	W90
	.byte		N04   , As2 , v048
	.byte	W05
	.byte	W01
@ 018   ----------------------------------------
	.byte	W84
	.byte		N10   
	.byte	W10
	.byte	W02
@ 019   ----------------------------------------
	.byte	W84
	.byte		N08   , Fs2 , v040
	.byte	W08
	.byte	W04
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W84
	.byte		N04   , Fs2 , v032
	.byte	W04
	.byte	W08
@ 022   ----------------------------------------
	.byte	W84
	.byte		N10   , As2 , v056
	.byte	W10
	.byte	W02
@ 023   ----------------------------------------
	.byte	W84
	.byte		        Gn2 , v052
	.byte	W10
	.byte	W02
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W90
	.byte		N04   , As2 , v048
	.byte	W05
	.byte	W01
@ 027   ----------------------------------------
	.byte	W84
	.byte		N10   
	.byte	W10
	.byte	W02
@ 028   ----------------------------------------
	.byte	W84
	.byte		N04   , Fs2 , v040
	.byte	W04
	.byte	W08
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_10_009
	.byte	W07
@ 031   ----------------------------------------
	.byte	W84
	.byte		N10   , As2 , v052
	.byte	W10
	.byte	W02
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W42
	.byte		N04   , Fs2 , v040
	.byte	W05
	.byte	W36
	.byte	W01
	.byte		        Ds2 
	.byte	W04
	.byte	W08
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_10_013
	.byte	W08
@ 035   ----------------------------------------
	.byte	W84
	.byte		N06   , As2 , v044
	.byte	W06
	.byte	W06
@ 036   ----------------------------------------
	.byte	W84
	.byte		N10   
	.byte	W10
	.byte	W02
@ 037   ----------------------------------------
	.byte	W84
	.byte		N02   , As2 , v052
	.byte	W02
	.byte	W10
@ 038   ----------------------------------------
	.byte	W90
	.byte		N04   , As2 , v048
	.byte	W05
	.byte	W01
@ 039   ----------------------------------------
	.byte	W84
	.byte		N10   
	.byte	W10
	.byte	W02
@ 040   ----------------------------------------
	.byte	W84
	.byte		N08   , Fs2 , v040
	.byte	W08
	.byte	W04
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W84
	.byte		N04   , Fs2 , v032
	.byte	W04
	.byte	W08
@ 043   ----------------------------------------
	.byte	W84
	.byte		N10   , As2 , v056
	.byte	W10
	.byte	W02
@ 044   ----------------------------------------
	.byte	W84
	.byte		        Gn2 , v052
	.byte	W10
	.byte	W02
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W90
	.byte		N04   , As2 
	.byte	W05
	.byte	W01
@ 049   ----------------------------------------
	.byte	W84
	.byte		N10   , As2 , v048
	.byte	W10
	.byte	W02
@ 050   ----------------------------------------
	.byte	W84
	.byte		N04   , Fs2 , v040
	.byte	W04
	.byte	W08
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_10_009
	.byte	W07
@ 053   ----------------------------------------
	.byte	W84
	.byte		N10   , As2 , v052
	.byte	W10
	.byte	W02
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte		N06   , An2 , v048
	.byte	W06
	.byte	W07
@ 057   ----------------------------------------
	.byte	W72
	.byte		PAN   , c_v+21
	.byte	W09
	.byte		N14   , Gn2 , v052
	.byte	W14
	.byte	W01
@ 058   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		N04   , Gn2 , v048
	.byte	W05
	.byte	W10
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		N14   , Gn2 , v056
	.byte	W14
	.byte	W03
@ 062   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		N04   , Gn2 , v040
	.byte	W05
	.byte	W10
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W90
	.byte		        As2 , v052
	.byte	W05
	.byte	W01
@ 066   ----------------------------------------
	.byte	W84
	.byte		N10   , As2 , v048
	.byte	W10
	.byte	W02
@ 067   ----------------------------------------
	.byte	W84
	.byte		N08   , Fs2 , v044
	.byte	W08
	.byte	W04
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W84
	.byte		N04   , Fs2 , v032
	.byte	W04
	.byte	W08
@ 070   ----------------------------------------
	.byte	W84
	.byte		N10   , As2 , v056
	.byte	W10
	.byte	W02
@ 071   ----------------------------------------
	.byte	W84
	.byte		        Gn2 , v052
	.byte	W10
	.byte	W02
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		PAN   , c_v-24
	.byte	W09
	.byte		N04   , As2 , v048
	.byte	W05
	.byte	W01
@ 074   ----------------------------------------
	.byte	W84
	.byte		N10   , As2 , v056
	.byte	W10
	.byte	W02
@ 075   ----------------------------------------
	.byte	W84
	.byte		N08   , Fs2 , v040
	.byte	W08
	.byte	W04
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W84
	.byte		N04   , Fs2 , v044
	.byte	W04
	.byte	W08
@ 078   ----------------------------------------
	.byte	W84
	.byte		N10   , As2 , v060
	.byte	W10
	.byte	W02
@ 079   ----------------------------------------
	.byte	W84
	.byte		        Gn2 , v052
	.byte	W10
	.byte	W02
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W78
	.byte		N11   , An2 , v048
	.byte	W11
	.byte	W07
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte	FINE

@**************** Track 11 (Midi-Chn.14) ****************@

mus_irreplaceable_beyonce_11:
	.byte	KEYSH , mus_irreplaceable_beyonce_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte		VOL   , 127*mus_irreplaceable_beyonce_mvl/mxv
	.byte		PAN   , c_v-14
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
mus_irreplaceable_beyonce_11_017:
	.byte		N96   , As1 , v044
	.byte	W01
	.byte		TIE   , Cn3 , v036
	.byte		N92   , Dn3 , v036, gtp2
	.byte		TIE   , Fn3 , v040
	.byte	W92
	.byte	W02
	.byte	PEND
	.byte	W01
@ 018   ----------------------------------------
mus_irreplaceable_beyonce_11_018:
	.byte		N96   , Fn1 , v052
	.byte		N92   , An2 , v040, gtp2
	.byte	W92
	.byte	W02
	.byte	PEND
	.byte	W02
@ 019   ----------------------------------------
	.byte		N80   , Cn1 , v048, gtp3
	.byte		TIE   , As2 , v036
	.byte	W80
	.byte	W03
	.byte	W01
	.byte		N11   , Dn1 , v044
	.byte	W11
	.byte	W01
@ 020   ----------------------------------------
mus_irreplaceable_beyonce_11_020:
	.byte		N92   , Ds1 , v048, gtp3
	.byte	W92
	.byte	W03
	.byte	PEND
	.byte		EOT   , As2 
	.byte		        Cn3 
	.byte		        Fn3 
	.byte	W01
@ 021   ----------------------------------------
	.byte		N96   , As1 , v044
	.byte		TIE   , Cn3 , v036
	.byte		N92   , Dn3 , v040, gtp2
	.byte		TIE   , Fn3 
	.byte	W92
	.byte	W02
	.byte	W02
@ 022   ----------------------------------------
	.byte		N96   , Fn1 , v056
	.byte		N92   , An2 , v040, gtp2
	.byte	W92
	.byte	W02
	.byte	W02
@ 023   ----------------------------------------
	.byte		N80   , Cn1 , v056, gtp3
	.byte		TIE   , As2 , v036
	.byte	W80
	.byte	W03
	.byte	W01
	.byte		N11   , Cs1 , v048
	.byte	W11
	.byte		EOT   , Cn3 
	.byte	W01
@ 024   ----------------------------------------
	.byte		TIE   , Ds1 , v052
	.byte		TIE   , Cs3 , v040
	.byte	W96
@ 025   ----------------------------------------
	.byte	W76
	.byte	W01
	.byte		EOT   , Ds1 
	.byte		        As2 
	.byte		        Fn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W13
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
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_11_017
	.byte	W01
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_11_018
	.byte	W02
@ 040   ----------------------------------------
	.byte		N88   , Cn1 , v048, gtp1
	.byte		TIE   , As2 , v040
	.byte	W88
	.byte	W01
	.byte	W01
	.byte		N05   , Dn1 , v044
	.byte	W05
	.byte	W01
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_11_020
	.byte		EOT   , As2 
	.byte		        Cn3 
	.byte		        Fn3 
	.byte	W01
@ 042   ----------------------------------------
	.byte		N96   , As1 , v048
	.byte		TIE   , Cn3 , v040
	.byte		N92   , Dn3 , v040, gtp2
	.byte		TIE   , Fn3 
	.byte	W92
	.byte	W02
	.byte	W02
@ 043   ----------------------------------------
mus_irreplaceable_beyonce_11_043:
	.byte		N96   , Fn1 , v052
	.byte		N92   , An2 , v036, gtp2
	.byte	W92
	.byte	W02
	.byte	PEND
	.byte	W02
@ 044   ----------------------------------------
	.byte		N88   , Cn1 , v056, gtp1
	.byte		TIE   , As2 , v040
	.byte	W88
	.byte	W01
	.byte	W01
	.byte		N05   , Cs1 , v044
	.byte	W05
	.byte		EOT   , Cn3 
	.byte	W01
@ 045   ----------------------------------------
	.byte		N96   , Ds1 , v052
	.byte		N92   , Cs3 , v036, gtp3
	.byte	W92
	.byte	W03
	.byte		EOT   , As2 
	.byte	W01
@ 046   ----------------------------------------
	.byte		TIE   , Fn1 , v052
	.byte		TIE   , An2 , v036
	.byte		TIE   , Cn3 
	.byte	W96
@ 047   ----------------------------------------
	.byte	W92
	.byte		EOT   , An2 
	.byte	W01
	.byte	W01
	.byte		        Fn3 
	.byte	W01
	.byte		        Fn1 
	.byte		        Cn3 
	.byte	W01
@ 048   ----------------------------------------
	.byte		N92   , Ds1 , v052, gtp3
	.byte		N96   , Ds2 , v064
	.byte	W01
	.byte		N92   , As2 , v052, gtp3
	.byte	W92
	.byte	W02
	.byte	W01
@ 049   ----------------------------------------
	.byte		N68   , Fn1 , v052, gtp3
	.byte		N96   , Fn2 , v064
	.byte		N92   , Cn3 , v056, gtp3
	.byte	W68
	.byte	W03
	.byte	W01
	.byte		N23   , Cn2 , v048
	.byte	W23
	.byte	W01
@ 050   ----------------------------------------
	.byte		N44   , As1 , v052, gtp3
	.byte		N44   , Dn3 , v060, gtp3
	.byte	W02
	.byte		TIE   , Fn2 , v052
	.byte	W44
	.byte	W01
	.byte	W01
	.byte		N44   , An1 , v052, gtp3
	.byte		N44   , Cn3 , v064, gtp3
	.byte	W44
	.byte	W03
	.byte		        As2 , v064, gtp2
	.byte	W01
@ 051   ----------------------------------------
	.byte		        Gn1 , v052, gtp3
	.byte	W44
	.byte	W02
	.byte		N48   , An2 , v060, gtp1
	.byte	W01
	.byte	W01
	.byte		N44   , Fn1 , v052, gtp3
	.byte	W44
	.byte	W03
	.byte		EOT   , Fn2 
	.byte	W01
@ 052   ----------------------------------------
	.byte		N68   , Cn1 , v052, gtp3
	.byte		N68   , En2 , v048, gtp3
	.byte		N72   , Gn2 , v052, gtp1
	.byte	W68
	.byte	W03
	.byte	W01
	.byte		N23   , Dn1 
	.byte		N23   , Dn2 , v056
	.byte		N24   , An2 , v060, gtp1
	.byte	W01
	.byte	W22
	.byte	W01
@ 053   ----------------------------------------
	.byte		N92   , Ds1 , v052, gtp3
	.byte		N92   , Ds2 , v056, gtp3
	.byte		N92   , As2 , v056, gtp2
	.byte	W01
	.byte	W92
	.byte	W02
	.byte	W01
@ 054   ----------------------------------------
	.byte		TIE   , Fn1 , v052
	.byte		TIE   , Fn2 , v064
	.byte		TIE   , An2 , v056
	.byte	W96
@ 055   ----------------------------------------
	.byte	W01
	.byte	W08
	.byte	W09
	.byte	W08
	.byte	W08
	.byte	W08
	.byte	W09
	.byte	W08
	.byte	W08
	.byte	W08
	.byte	W09
	.byte	W09
	.byte		EOT   
	.byte	W02
	.byte		EOT   , Fn1 
	.byte		        Fn2 
	.byte	W01
@ 056   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte	W01
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte		N68   , As1 , v036, gtp3
	.byte	W68
	.byte	W03
	.byte	W01
	.byte		N23   , An1 , v064
	.byte	W23
	.byte	W01
@ 061   ----------------------------------------
	.byte		N96   , Fn1 , v068
	.byte	W96
@ 062   ----------------------------------------
	.byte		N68   , Cn1 , v068, gtp3
	.byte	W68
	.byte	W03
	.byte	W01
	.byte		N23   , Dn1 , v076
	.byte	W23
	.byte	W01
@ 063   ----------------------------------------
	.byte		TIE   , Ds1 , v064
	.byte	W96
@ 064   ----------------------------------------
	.byte	W19
	.byte		EOT   
	.byte	W04
	.byte		N09   
	.byte	W10
	.byte	W02
	.byte		N11   , Ds1 , v076
	.byte	W12
	.byte	W01
	.byte		N10   , Ds1 , v080
	.byte	W10
	.byte	W02
	.byte		N09   , Ds1 , v096
	.byte	W09
	.byte	W03
	.byte		        Ds1 , v092
	.byte	W09
	.byte	W03
	.byte		N10   , Ds1 , v096
	.byte	W11
	.byte	W01
@ 065   ----------------------------------------
mus_irreplaceable_beyonce_11_065:
	.byte		N96   , As1 , v040
	.byte	W01
	.byte		TIE   , Cn3 
	.byte		N92   , Dn3 , v036, gtp2
	.byte		TIE   , Fn3 , v040
	.byte	W92
	.byte	W02
	.byte	PEND
	.byte	W01
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_11_018
	.byte	W02
@ 067   ----------------------------------------
	.byte		N80   , Cn1 , v048
	.byte		TIE   , As2 , v036
	.byte	W80
	.byte	W04
	.byte		N11   , Dn1 , v048
	.byte	W11
	.byte	W01
@ 068   ----------------------------------------
	.byte		N92   , Ds1 , v052, gtp3
	.byte	W92
	.byte		EOT   , Fn3 
	.byte	W03
	.byte		        As2 
	.byte		        Cn3 
	.byte	W01
@ 069   ----------------------------------------
	.byte		N96   , As1 , v044
	.byte		TIE   , Cn3 , v040
	.byte		N92   , Dn3 , v040, gtp2
	.byte		TIE   , Fn3 
	.byte	W92
	.byte	W02
	.byte	W02
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_11_043
	.byte	W02
@ 071   ----------------------------------------
	.byte		N88   , Cn1 , v056, gtp1
	.byte		TIE   , As2 , v036
	.byte	W88
	.byte	W01
	.byte	W01
	.byte		N05   , Cs1 , v044
	.byte	W05
	.byte		EOT   , Cn3 
	.byte	W01
@ 072   ----------------------------------------
	.byte		N96   , Ds1 , v052
	.byte		N92   , Cs3 , v040, gtp3
	.byte	W92
	.byte	W02
	.byte		EOT   , Fn3 
	.byte	W01
	.byte		        As2 
	.byte	W01
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_11_065
	.byte	W01
@ 074   ----------------------------------------
	.byte		N96   , Fn1 , v048
	.byte		N92   , An2 , v036, gtp2
	.byte	W92
	.byte	W02
	.byte	W02
@ 075   ----------------------------------------
	.byte		N72   , Cn1 , v048, gtp1
	.byte		TIE   , As2 , v040
	.byte	W72
	.byte	W01
	.byte		N21   , Dn1 , v044
	.byte	W22
	.byte	W01
@ 076   ----------------------------------------
	.byte		N92   , Ds1 , v048, gtp3
	.byte	W92
	.byte	W01
	.byte		EOT   , Fn3 
	.byte	W02
	.byte		        As2 
	.byte		        Cn3 
	.byte	W01
@ 077   ----------------------------------------
	.byte		N96   , As1 
	.byte		TIE   , Cn3 , v036
	.byte		N92   , Dn3 , v040, gtp2
	.byte		TIE   , Fn3 
	.byte	W92
	.byte	W02
	.byte	W02
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_irreplaceable_beyonce_11_018
	.byte	W01
	.byte		EOT   , Cn3 
	.byte	W01
@ 079   ----------------------------------------
	.byte		N92   , Ds1 , v056, gtp1
	.byte		N96   , Gn2 , v040
	.byte		N92   , As2 , v040, gtp3
	.byte	W92
	.byte	W01
	.byte	W02
	.byte	W01
@ 080   ----------------------------------------
	.byte		TIE   , Fn1 , v052
	.byte		TIE   , Fn2 , v040
	.byte		TIE   , Cn3 
	.byte	W96
@ 081   ----------------------------------------
	.byte	W90
	.byte	W01
	.byte		EOT   , Fn1 
	.byte	W01
	.byte		        Fn3 
	.byte	W02
	.byte		        Fn2 
	.byte	W02
	.byte		        Cn3 
@ 082   ----------------------------------------
	.byte		TIE   , As0 , v052
	.byte		TIE   , Fn2 , v032
	.byte	W01
	.byte		        As1 , v036
	.byte		TIE   , As2 , v032
	.byte	W48
	.byte	W02
	.byte	W06
	.byte	W05
	.byte	W06
	.byte	W05
	.byte	W06
	.byte	W05
	.byte	W06
	.byte	W06
@ 083   ----------------------------------------
	.byte	W01
	.byte	W06
	.byte	W05
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W05
	.byte	W06
	.byte	W06
	.byte	W05
	.byte	W06
	.byte	W05
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W03
	.byte		EOT   , As0 
	.byte	W03
	.byte	W01
	.byte		        As2 
	.byte	W01
	.byte		        Fn2 
	.byte	W01
	.byte		        As1 
@ 084   ----------------------------------------
	.byte	W03
	.byte	W05
	.byte	W84
	.byte	W04
@ 085   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte	FINE

@******************************************************@
	.align	2

mus_irreplaceable_beyonce:
	.byte	11	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_irreplaceable_beyonce_pri	@ Priority
	.byte	mus_irreplaceable_beyonce_rev	@ Reverb.

	.word	mus_irreplaceable_beyonce_grp

	.word	mus_irreplaceable_beyonce_1
	.word	mus_irreplaceable_beyonce_2
	.word	mus_irreplaceable_beyonce_3
	.word	mus_irreplaceable_beyonce_4
	.word	mus_irreplaceable_beyonce_5
	.word	mus_irreplaceable_beyonce_6
	.word	mus_irreplaceable_beyonce_7
	.word	mus_irreplaceable_beyonce_8
	.word	mus_irreplaceable_beyonce_9
	.word	mus_irreplaceable_beyonce_10
	.word	mus_irreplaceable_beyonce_11

	.end
