	.include "MPlayDef.s"

	.equ	mus_the_great_gig_in_the_sky_grp, voicegroup_hlw_classic_rock
	.equ	mus_the_great_gig_in_the_sky_pri, 0
	.equ	mus_the_great_gig_in_the_sky_rev, reverb_set+45
	.equ	mus_the_great_gig_in_the_sky_mvl, 94
	.equ	mus_the_great_gig_in_the_sky_key, 0
	.equ	mus_the_great_gig_in_the_sky_tbs, 1
	.equ	mus_the_great_gig_in_the_sky_exg, 1
	.equ	mus_the_great_gig_in_the_sky_cmp, 1

	.section .rodata
	.global	mus_the_great_gig_in_the_sky
	.align	2

@**************** Track 1 (Midi-Chn.5) ****************@

mus_the_great_gig_in_the_sky_1:
	.byte	KEYSH , mus_the_great_gig_in_the_sky_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 59*mus_the_great_gig_in_the_sky_tbs/2
	.byte		VOICE , 33
	.byte		VOL   , 98*mus_the_great_gig_in_the_sky_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		N92   , As0 , v064, gtp3
	.byte	W02
@ 002   ----------------------------------------
	.byte	W92
	.byte		TIE   , Fn1 
	.byte	W01
	.byte	W03
@ 003   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte		N92   , Dn1 , v064, gtp2
	.byte	W01
@ 004   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		N96   , En1 
	.byte	W03
@ 005   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		N92   , Dn1 , v064, gtp3
	.byte	W03
@ 006   ----------------------------------------
	.byte	W92
	.byte		N72   , En1 , v064, gtp1
	.byte	W04
@ 007   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte	W22
	.byte		TIE   , Fn1 
	.byte	W04
@ 008   ----------------------------------------
	.byte	W92
	.byte		N96   , As0 
	.byte	W01
	.byte		EOT   , Fn1 
	.byte	W03
@ 009   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		N84   , Gn0 
	.byte	W03
@ 010   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte	W12
	.byte		N72   , Cn1 , v064, gtp1
	.byte	W03
@ 011   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte	W23
	.byte		N92   , Fn1 , v064, gtp2
	.byte	W03
@ 012   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		N44   , As1 , v064, gtp3
	.byte	W03
@ 013   ----------------------------------------
	.byte	W44
	.byte		N48   , Ds1 
	.byte	W01
	.byte	W48
	.byte		N96   , As0 
	.byte	W03
@ 014   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		N48   , As1 
	.byte	W48
	.byte		N01   , As0 
	.byte		N24   , As0 , v064, gtp1
	.byte	W03
@ 015   ----------------------------------------
	.byte	W22
	.byte		        Fn0 
	.byte	W24
	.byte		N32   , As0 , v064, gtp3
	.byte	W32
	.byte	W03
	.byte	W06
	.byte	W06
	.byte		N24   , Gn1 , v064, gtp1
	.byte	W03
@ 016   ----------------------------------------
	.byte	W22
	.byte		        Dn1 , v064, gtp2
	.byte	W24
	.byte	W01
	.byte		        Gn1 
	.byte	W01
	.byte	W23
	.byte		N22   , Dn1 
	.byte	W01
	.byte	W21
	.byte	W01
	.byte		N24   , Cn1 
	.byte	W02
@ 017   ----------------------------------------
	.byte	W22
	.byte		        Gn0 , v064, gtp1
	.byte	W01
	.byte	W23
	.byte		        Cn1 
	.byte	W01
	.byte	W23
	.byte		        Gn0 , v064, gtp1
	.byte	W01
	.byte	W24
	.byte		N22   , Gn1 
	.byte	W01
@ 018   ----------------------------------------
	.byte	W21
	.byte		N24   , Dn1 , v064, gtp2
	.byte	W24
	.byte	W02
	.byte		        Gn1 
	.byte	W01
	.byte	W22
	.byte		N22   , Dn1 
	.byte	W01
	.byte	W22
	.byte	W01
	.byte		N24   , Cn1 
	.byte	W02
@ 019   ----------------------------------------
	.byte	W22
	.byte		N23   , Gn0 
	.byte	W01
	.byte	W22
	.byte	W01
	.byte		N24   , Cn1 , v064, gtp1
	.byte	W24
	.byte		N23   , Gn0 
	.byte	W01
	.byte	W23
	.byte		N24   , Gn1 
	.byte	W02
@ 020   ----------------------------------------
	.byte	W22
	.byte		        Dn1 , v064, gtp1
	.byte	W24
	.byte		        Gn1 
	.byte	W01
	.byte	W23
	.byte		N22   , Dn1 
	.byte	W22
	.byte	W02
	.byte		N24   , Cn1 , v064, gtp1
	.byte	W02
@ 021   ----------------------------------------
	.byte	W22
	.byte		        Gn0 
	.byte	W01
	.byte	W23
	.byte		        Cn1 
	.byte	W01
	.byte	W23
	.byte		N16   , Gn0 
	.byte	W01
	.byte	W16
	.byte	W07
	.byte		N09   , Gn1 
	.byte	W02
@ 022   ----------------------------------------
	.byte	W07
	.byte		N10   , As1 
	.byte	W10
	.byte	W01
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W01
	.byte		N06   , As1 
	.byte	W06
	.byte	W01
	.byte		N07   , Cn2 
	.byte	W08
	.byte	W03
	.byte		N08   , Dn2 
	.byte	W08
	.byte	W09
	.byte		N11   
	.byte	W12
	.byte	W01
	.byte		N05   , Cn2 
	.byte	W05
	.byte	W01
	.byte		        As1 
	.byte	W05
	.byte	W01
	.byte		N07   , Gn1 
	.byte	W07
	.byte	W07
@ 023   ----------------------------------------
	.byte	W10
	.byte		N05   , Dn2 
	.byte	W06
	.byte	W01
	.byte		N08   , Cn2 
	.byte	W08
	.byte	W09
	.byte		N05   , Dn2 
	.byte	W05
	.byte	W01
	.byte		N30   , Cn2 
	.byte	W30
	.byte	W24
	.byte	W01
	.byte		N32   , Gn1 , v064, gtp3
	.byte	W01
@ 024   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N11   , Dn1 
	.byte	W11
	.byte		N36   , Gn1 , v064, gtp1
	.byte	W36
	.byte	W01
	.byte		N09   , Dn1 
	.byte	W01
	.byte	W09
	.byte	W01
	.byte		N32   , Cn1 , v064, gtp3
	.byte	W03
@ 025   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N07   , Gn0 
	.byte	W07
	.byte	W01
	.byte		N48   , Cn1 , v064, gtp3
	.byte	W48
	.byte	W03
	.byte		N32   , Gn1 , v064, gtp3
	.byte	W03
@ 026   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte	W01
	.byte		N06   , Dn1 
	.byte	W06
	.byte	W01
	.byte		N52   , Gn1 
	.byte	W52
	.byte	W01
	.byte		N32   , Cn1 , v064, gtp3
	.byte	W02
@ 027   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte	W01
	.byte		N06   , Gn0 
	.byte	W07
	.byte		N48   , Cn1 , v064, gtp2
	.byte	W48
	.byte	W03
	.byte	W02
	.byte		N24   , Gn1 , v064, gtp1
	.byte	W02
@ 028   ----------------------------------------
	.byte	W22
	.byte		N22   , Dn1 
	.byte	W01
	.byte	W22
	.byte		N24   , Gn1 , v064, gtp1
	.byte	W24
	.byte	W01
	.byte		N22   , Dn1 
	.byte	W22
	.byte	W01
	.byte		N24   , Cn1 
	.byte	W03
@ 029   ----------------------------------------
	.byte	W21
	.byte		        Gn0 
	.byte	W24
	.byte	W01
	.byte		        Dn0 
	.byte	W24
	.byte		N19   , Gn0 
	.byte	W19
	.byte	W05
	.byte		N12   , Dn2 
	.byte	W02
@ 030   ----------------------------------------
	.byte	W10
	.byte		N11   , Gn1 
	.byte	W01
	.byte	W11
	.byte		N12   , An1 
	.byte	W12
	.byte		N11   , As1 
	.byte	W12
	.byte		N13   , Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W01
	.byte	W12
	.byte		N11   , Gn1 
	.byte	W01
	.byte	W10
	.byte		N12   , An1 
	.byte	W01
	.byte	W11
	.byte		N11   , As1 
	.byte	W02
@ 031   ----------------------------------------
	.byte	W09
	.byte	W01
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N11   , Fn1 
	.byte	W11
	.byte	W01
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W11
	.byte		N24   , Bn1 , v064, gtp1
	.byte	W01
	.byte	W02
@ 032   ----------------------------------------
	.byte	W22
	.byte		N23   , Fs1 
	.byte	W01
	.byte	W23
	.byte		N24   , Dn1 
	.byte	W24
	.byte		        Bn0 
	.byte	W24
	.byte		        Bn1 , v064, gtp1
	.byte	W02
@ 033   ----------------------------------------
	.byte	W23
	.byte		N23   , Fs1 
	.byte	W01
	.byte	W22
	.byte		N24   , Dn1 , v064, gtp1
	.byte	W24
	.byte	W01
	.byte		N19   , Bn0 
	.byte	W19
	.byte	W04
	.byte		N84   , Bn1 , v064, gtp2
	.byte	W02
@ 034   ----------------------------------------
	.byte	W84
	.byte	W10
	.byte		N24   , Fn1 , v064, gtp1
	.byte	W02
@ 035   ----------------------------------------
	.byte	W23
	.byte		N23   , Dn1 
	.byte	W23
	.byte		N24   , An0 
	.byte	W24
	.byte		N22   , Dn1 
	.byte	W23
	.byte		N36   , As0 , v064, gtp3
	.byte	W03
@ 036   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte	W56
	.byte		N24   , Fn1 , v064, gtp1
	.byte	W03
@ 037   ----------------------------------------
	.byte	W22
	.byte		        Cn1 , v064, gtp1
	.byte	W01
	.byte	W24
	.byte		        Fn1 , v064, gtp1
	.byte	W23
	.byte		N17   , Cn1 
	.byte	W02
	.byte	W15
	.byte	W07
	.byte		N23   , Gn1 
	.byte	W02
@ 038   ----------------------------------------
	.byte	W21
	.byte		        Dn1 
	.byte	W24
	.byte	W01
	.byte		N24   , Gn1 , v064, gtp1
	.byte	W24
	.byte		N19   , Dn1 
	.byte	W01
	.byte	W19
	.byte	W05
	.byte		N23   , Cn1 
	.byte	W01
@ 039   ----------------------------------------
	.byte	W22
	.byte		N22   , Gn0 
	.byte	W01
	.byte	W22
	.byte	W01
	.byte		N24   , Cn1 , v064, gtp1
	.byte	W24
	.byte		N12   , Gn0 
	.byte	W01
	.byte	W12
	.byte	W11
	.byte		N22   , Gn1 
	.byte	W02
@ 040   ----------------------------------------
	.byte	W21
	.byte		N24   , Dn1 
	.byte	W24
	.byte		N01   
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N22   , Dn1 
	.byte	W22
	.byte	W03
	.byte		N24   , Cn1 
	.byte	W02
@ 041   ----------------------------------------
	.byte	W22
	.byte		        Gn0 
	.byte	W24
	.byte		N23   , Cn1 
	.byte	W23
	.byte		N15   , Gn0 
	.byte	W15
	.byte	W09
	.byte		N24   , Fn1 , v064, gtp2
	.byte	W03
@ 042   ----------------------------------------
	.byte	W22
	.byte		        Cn1 
	.byte	W01
	.byte	W22
	.byte		N23   , Fn0 
	.byte	W01
	.byte	W22
	.byte	W01
	.byte		N24   , Cn1 
	.byte	W24
	.byte		        As1 
	.byte	W03
@ 043   ----------------------------------------
	.byte	W21
	.byte		        Fn1 , v064, gtp1
	.byte	W24
	.byte	W01
	.byte		        As0 , v064, gtp1
	.byte	W24
	.byte	W01
	.byte		N18   , Fn1 
	.byte	W18
	.byte	W05
	.byte		N24   , Gn1 , v064, gtp1
	.byte	W02
@ 044   ----------------------------------------
	.byte	W23
	.byte		N23   , Dn1 
	.byte	W23
	.byte		        Gn0 
	.byte	W23
	.byte	W01
	.byte		        Dn1 
	.byte	W23
	.byte	W01
	.byte		        Cn1 
	.byte	W02
@ 045   ----------------------------------------
	.byte	W21
	.byte		N24   , Gn0 
	.byte	W01
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		N17   , Gn0 
	.byte	W18
	.byte	W06
	.byte		N24   , Fn1 
	.byte	W02
@ 046   ----------------------------------------
	.byte	W22
	.byte		N23   , Cn1 
	.byte	W01
	.byte	W23
	.byte		        Fn0 
	.byte	W23
	.byte	W01
	.byte		N20   , Cn1 
	.byte	W20
	.byte	W03
	.byte		N24   , As0 
	.byte	W03
@ 047   ----------------------------------------
	.byte	W21
	.byte		        Fn0 
	.byte	W01
	.byte	W24
	.byte		        Ds1 , v064, gtp2
	.byte	W24
	.byte	W01
	.byte		N22   , As0 
	.byte	W01
	.byte	W21
	.byte		N23   , As1 
	.byte	W03
@ 048   ----------------------------------------
	.byte	W20
	.byte	W01
	.byte		N24   , Fn1 , v064, gtp1
	.byte	W24
	.byte	W01
	.byte		        As0 , v064, gtp1
	.byte	W01
	.byte	W22
	.byte		        Fn1 
	.byte	W02
	.byte	W23
	.byte		N23   , As1 
	.byte	W02
@ 049   ----------------------------------------
	.byte	W21
	.byte	W01
	.byte		N24   , Fn1 , v064, gtp1
	.byte	W24
	.byte	W01
	.byte		        As0 
	.byte	W24
	.byte		N16   , Fn1 
	.byte	W16
	.byte	W05
	.byte		N36   , Gn1 , v064, gtp2
	.byte	W04
@ 050   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N12   , Dn1 
	.byte	W01
	.byte	W11
	.byte		N24   , Gn1 , v064, gtp3
	.byte	W24
	.byte	W01
	.byte		N14   , Dn1 
	.byte		N02   , En1 
	.byte	W02
	.byte	W09
	.byte		N11   , Gn1 
	.byte	W03
	.byte	W09
	.byte	W01
	.byte		N36   , En1 
	.byte	W01
@ 051   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N12   , Gn0 
	.byte	W12
	.byte		N23   , En1 
	.byte	W01
	.byte	W22
	.byte		N24   , Cn1 
	.byte	W24
	.byte		N36   , Gn1 , v064, gtp1
	.byte	W02
@ 052   ----------------------------------------
mus_the_great_gig_in_the_sky_1_052:
	.byte	W32
	.byte	W02
	.byte		N12   , Dn1 , v064
	.byte	W02
	.byte	PEND
	.byte	W11
	.byte		N24   , Gn1 , v064, gtp1
	.byte	W23
	.byte		N12   , Dn1 
	.byte	W02
	.byte	W10
	.byte		N13   , Gn1 
	.byte	W12
	.byte		N36   , En1 
	.byte	W01
	.byte	W01
@ 053   ----------------------------------------
mus_the_great_gig_in_the_sky_1_053:
	.byte	W32
	.byte	W02
	.byte		N12   , Gn0 , v064
	.byte	W01
	.byte	PEND
	.byte	W11
	.byte		N24   , En1 , v064, gtp1
	.byte	W24
	.byte		        Cn1 , v064, gtp1
	.byte	W01
	.byte	W24
	.byte		N36   , Gn1 , v064, gtp1
	.byte	W01
@ 054   ----------------------------------------
mus_the_great_gig_in_the_sky_1_054:
	.byte	W32
	.byte	W03
	.byte		N11   , Dn1 , v064
	.byte	W01
	.byte	PEND
	.byte	W11
	.byte		N24   , Gn1 , v064, gtp1
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W01
	.byte	W10
	.byte		N13   , Gn1 
	.byte	W13
	.byte		N36   , En1 
	.byte	W01
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_gig_in_the_sky_1_053
	.byte	W11
	.byte		N24   , En1 , v064, gtp1
	.byte	W24
	.byte	W01
	.byte		        Cn1 , v064, gtp1
	.byte	W01
	.byte	W23
	.byte		N36   , Gn1 
	.byte	W01
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_gig_in_the_sky_1_052
	.byte	W10
	.byte		N24   , Gn1 , v064, gtp1
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W01
	.byte	W11
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N36   , Cn1 
	.byte	W02
@ 057   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N12   , Gn0 
	.byte	W12
	.byte		N23   , Cn1 
	.byte	W01
	.byte	W22
	.byte	W02
	.byte		N22   
	.byte	W22
	.byte	W02
	.byte		N36   , Gn1 , v064, gtp1
	.byte	W01
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_gig_in_the_sky_1_054
	.byte	W11
	.byte		N24   , Gn1 , v064, gtp2
	.byte	W24
	.byte		N12   , Dn1 
	.byte	W02
	.byte	W10
	.byte		N10   , Gn1 
	.byte	W01
	.byte	W10
	.byte		N36   , En1 , v064, gtp1
	.byte	W02
@ 059   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   , Gn0 
	.byte	W01
	.byte	W11
	.byte		N24   , En1 
	.byte	W23
	.byte		        Cn1 , v064, gtp1
	.byte	W01
	.byte	W23
	.byte		N36   , Gn1 , v064, gtp1
	.byte	W01
	.byte	W01
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_gig_in_the_sky_1_052
	.byte	W10
	.byte		N24   , Gn1 , v064, gtp2
	.byte	W01
	.byte	W24
	.byte		N13   , Dn1 
	.byte	W02
	.byte	W10
	.byte		N10   , Gn1 
	.byte	W01
	.byte	W10
	.byte		N36   , Cn1 
	.byte	W02
@ 061   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N12   , Gn0 
	.byte	W11
	.byte		N44   , Cn1 , v064, gtp3
	.byte	W01
	.byte	W44
	.byte	W03
	.byte		N36   , Gn1 , v064, gtp1
	.byte	W02
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_the_great_gig_in_the_sky_1_054
	.byte	W10
	.byte		N28   , Gn1 , v064
	.byte	W24
	.byte	W01
	.byte		N13   , Dn1 
	.byte	W03
	.byte	W09
	.byte		N12   , Gn1 
	.byte	W01
	.byte	W11
	.byte		N36   , Cn1 
	.byte	W01
@ 063   ----------------------------------------
	.byte	W36
	.byte		N11   , Gn0 
	.byte	W11
	.byte		N44   , Cn1 , v064, gtp3
	.byte	W44
	.byte	W03
	.byte		N78   , Gn1 , v064, gtp1
	.byte	W02
@ 064   ----------------------------------------
	.byte	W78
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_the_great_gig_in_the_sky_2:
	.byte		VOL   , 127*mus_the_great_gig_in_the_sky_mvl/mxv
	.byte	KEYSH , mus_the_great_gig_in_the_sky_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		N14   , Dn3 , v064
	.byte		N13   , Fs3 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W01
	.byte	W01
	.byte	W09
	.byte		N13   , Dn3 
	.byte	W01
	.byte		        Fs3 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W01
	.byte	W10
	.byte		N13   , Dn3 
	.byte		N13   , Fs3 
	.byte	W01
	.byte	W11
	.byte		N12   , Bn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		        Dn3 
	.byte		N12   , Fs3 
	.byte	W01
	.byte	W11
	.byte		N11   , Bn2 
	.byte	W01
	.byte	W11
	.byte		N14   , Fn3 
	.byte		N14   , An3 
	.byte	W01
@ 001   ----------------------------------------
	.byte	W11
	.byte		N12   , Dn3 
	.byte	W02
	.byte	W09
	.byte		N14   , Fn3 
	.byte		N15   , An3 
	.byte	W01
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W02
	.byte	W10
	.byte		N13   , Fn3 
	.byte		N13   , An3 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W01
	.byte	W11
	.byte		N11   , Fn3 
	.byte		N11   , An3 
	.byte	W11
	.byte	W01
	.byte		N09   , Dn3 
	.byte	W09
	.byte	W02
	.byte		N14   
	.byte		N14   , Fn3 
	.byte	W02
@ 002   ----------------------------------------
	.byte	W10
	.byte		N13   , As2 
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		        Dn3 
	.byte		N14   , Fn3 
	.byte	W01
	.byte	W11
	.byte		N12   , As2 
	.byte	W01
	.byte	W01
	.byte	W09
	.byte		N23   , Dn4 
	.byte	W01
	.byte		N13   , Dn3 
	.byte		N14   , Fn3 
	.byte	W12
	.byte		N12   , As2 
	.byte	W01
	.byte	W01
	.byte	W08
	.byte		        Cn4 
	.byte	W01
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N12   , Fn3 
	.byte	W11
	.byte		        As2 
	.byte		N12   , As3 
	.byte	W01
	.byte	W10
	.byte		N15   , An3 
	.byte	W01
	.byte		N14   
	.byte	W01
	.byte		        Fn3 
	.byte	W02
@ 003   ----------------------------------------
	.byte	W09
	.byte		N13   , Cn3 
	.byte	W03
	.byte	W10
	.byte		N14   , Fn3 
	.byte		N14   , An3 
	.byte	W01
	.byte	W11
	.byte		N13   , Cn3 
	.byte	W02
	.byte	W01
	.byte	W10
	.byte		        Fn3 
	.byte		N13   , An3 
	.byte	W11
	.byte		        Cn3 
	.byte	W02
	.byte	W01
	.byte	W10
	.byte		N12   , Fn3 
	.byte		N13   , An3 
	.byte	W01
	.byte	W10
	.byte		N12   , Cn3 
	.byte	W01
	.byte	W02
	.byte	W10
	.byte		N14   , Gn3 
	.byte		N15   , As3 
	.byte	W01
@ 004   ----------------------------------------
	.byte	W11
	.byte		N13   , Dn3 
	.byte	W02
	.byte		N01   , Gn3 
	.byte	W02
	.byte	W08
	.byte		N14   
	.byte		N15   , As3 
	.byte	W01
	.byte	W11
	.byte		N13   , Dn3 
	.byte	W03
	.byte	W01
	.byte	W08
	.byte		        As3 
	.byte	W01
	.byte		        Gn3 
	.byte	W01
	.byte	W09
	.byte		N12   , Dn3 
	.byte	W03
	.byte	W09
	.byte		N13   , Gn3 
	.byte		N13   , As3 
	.byte	W01
	.byte	W11
	.byte		N10   , Dn3 
	.byte	W01
	.byte	W09
	.byte	W01
	.byte		N13   , En3 
	.byte	W01
	.byte		        Gn3 
	.byte	W02
@ 005   ----------------------------------------
	.byte	W10
	.byte		N12   , Cn3 
	.byte	W01
	.byte	W10
	.byte		N14   , En3 
	.byte		N14   , Gn3 
	.byte	W01
	.byte	W11
	.byte		N12   , Cn3 
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		N14   , En3 
	.byte		N14   , Gn3 
	.byte	W01
	.byte	W11
	.byte		N12   , Cn3 
	.byte	W03
	.byte	W10
	.byte		        En3 
	.byte		N12   , Gn3 
	.byte	W11
	.byte		        Cn3 
	.byte	W01
	.byte	W11
	.byte		N14   , Gn3 
	.byte		N15   , As3 
	.byte	W01
	.byte	W02
@ 006   ----------------------------------------
	.byte	W09
	.byte		N14   , Dn3 
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		        Gn3 
	.byte		N14   , As3 
	.byte	W03
	.byte	W09
	.byte		N13   , Dn3 
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		        Gn3 
	.byte		N14   , As3 
	.byte	W02
	.byte	W10
	.byte		N12   , Dn3 
	.byte	W02
	.byte	W10
	.byte		        Gn3 
	.byte		N12   , As3 
	.byte	W01
	.byte	W11
	.byte		N10   , Dn3 
	.byte	W01
	.byte	W10
	.byte	W01
	.byte		N12   , En3 
	.byte		N13   , Gn3 
	.byte	W03
@ 007   ----------------------------------------
	.byte	W08
	.byte		N12   , Cn3 
	.byte	W02
	.byte	W10
	.byte		        En3 
	.byte	W01
	.byte		N13   , Gn3 
	.byte	W11
	.byte		N12   , Cn3 
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        En3 
	.byte		N12   , Gn3 
	.byte	W11
	.byte		        Cn3 
	.byte	W01
	.byte	W11
	.byte		        En3 
	.byte	W01
	.byte		N13   , Gn3 
	.byte	W11
	.byte		N08   , Cn3 
	.byte	W01
	.byte	W01
	.byte	W07
	.byte	W03
	.byte		N13   , An2 
	.byte	W01
	.byte		N14   , Cn3 
	.byte	W03
@ 008   ----------------------------------------
	.byte	W09
	.byte		N12   , Fn2 
	.byte	W01
	.byte	W01
	.byte	W09
	.byte		N13   , An2 
	.byte	W01
	.byte		        Cn3 
	.byte	W12
	.byte		N12   , Fn2 
	.byte	W01
	.byte	W11
	.byte		        An2 
	.byte		N13   , Cn3 
	.byte	W12
	.byte		N12   , Fn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N13   , An2 
	.byte	W01
	.byte		        Cn3 
	.byte	W12
	.byte		N12   , Fn2 
	.byte	W01
	.byte	W11
	.byte		N14   , As2 
	.byte		N14   , Dn3 
	.byte	W02
@ 009   ----------------------------------------
	.byte	W09
	.byte		        Fn2 
	.byte	W03
	.byte	W01
	.byte	W08
	.byte		        As2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W10
	.byte		N13   , Fn2 
	.byte	W03
	.byte	W10
	.byte		N14   , As2 
	.byte		N13   , Dn3 
	.byte	W01
	.byte	W11
	.byte		N12   , Fn2 
	.byte	W02
	.byte	W10
	.byte		N14   , As2 
	.byte		N13   , Dn3 
	.byte	W11
	.byte		N12   , Fn2 
	.byte	W03
	.byte	W10
	.byte		N13   , As2 
	.byte		N13   , Dn3 
	.byte	W02
@ 010   ----------------------------------------
	.byte	W10
	.byte		N14   , Gn2 
	.byte	W02
	.byte	W10
	.byte		N15   , As2 
	.byte		N14   , Dn3 
	.byte	W02
	.byte	W10
	.byte		N13   , Gn2 
	.byte	W03
	.byte	W09
	.byte		N16   , As2 
	.byte		N15   , Dn3 
	.byte	W01
	.byte	W11
	.byte		N13   , Gn2 
	.byte	W04
	.byte	W08
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W01
	.byte	W10
	.byte		N13   , Gn2 
	.byte	W01
	.byte	W11
	.byte		N14   , Cn3 
	.byte		N15   , En3 
	.byte	W01
	.byte	W02
@ 011   ----------------------------------------
	.byte	W09
	.byte		N14   , Gn2 
	.byte	W03
	.byte	W01
	.byte	W08
	.byte		N15   , Cn3 
	.byte		N17   , En3 
	.byte	W02
	.byte	W11
	.byte		N13   , Gn2 
	.byte	W02
	.byte	W02
	.byte	W08
	.byte		        Cn3 
	.byte		N14   , En3 
	.byte	W01
	.byte	W11
	.byte		N12   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N13   , Cn3 
	.byte		N13   , En3 
	.byte	W12
	.byte		N10   , Gn2 
	.byte	W01
	.byte	W10
	.byte	W01
	.byte		N14   , An2 
	.byte		N14   , Cn3 
	.byte	W02
@ 012   ----------------------------------------
	.byte	W10
	.byte		N13   , Fn2 
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		        An2 
	.byte		N14   , Cn3 
	.byte	W02
	.byte	W10
	.byte		N12   , Fn2 
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		N13   , An2 
	.byte		N14   , Cn3 
	.byte	W01
	.byte	W11
	.byte		N12   , Fn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N11   , An2 
	.byte		N12   , Cn3 
	.byte	W11
	.byte	W01
	.byte		        Fn2 
	.byte	W12
	.byte		N16   , As2 
	.byte		N15   , Dn3 
	.byte	W02
@ 013   ----------------------------------------
	.byte	W09
	.byte		N13   , Fn2 
	.byte	W04
	.byte	W01
	.byte	W07
	.byte		        As2 
	.byte		N12   , Dn3 
	.byte	W01
	.byte	W11
	.byte		N11   , Fn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N14   , Gn2 
	.byte		N14   , As2 
	.byte	W12
	.byte		N13   , Ds2 
	.byte	W03
	.byte	W10
	.byte		        Gn2 
	.byte		N13   , As2 
	.byte	W11
	.byte		N12   , Ds2 
	.byte	W02
	.byte	W11
	.byte		N14   , As2 
	.byte		N13   , Dn3 
	.byte	W02
@ 014   ----------------------------------------
	.byte	W10
	.byte		N11   , As3 
	.byte	W02
	.byte	W09
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N13   , Fn4 
	.byte	W13
	.byte		N11   , As4 
	.byte	W12
	.byte		N10   , Fn4 
	.byte	W10
	.byte	W01
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N08   , Fn4 
	.byte	W08
	.byte	W04
	.byte		N84   , As2 , v064, gtp2
	.byte		N84   , Dn3 , v064, gtp2
	.byte		N84   , Fn3 , v064, gtp3
	.byte	W03
@ 015   ----------------------------------------
	.byte	W10
	.byte		N12   , As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W01
	.byte	W11
	.byte		N11   , Fn4 
	.byte	W01
	.byte	W10
	.byte		        As4 
	.byte	W11
	.byte	W01
	.byte		        Fn4 
	.byte	W11
	.byte	W01
	.byte		        Dn4 
	.byte	W11
	.byte	W01
	.byte		N06   , Fn4 
	.byte	W02
	.byte	W01
	.byte	W03
	.byte	W09
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
	.byte	W09
	.byte		N13   , As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W02
	.byte	W11
	.byte		N12   , Fn4 
	.byte	W11
	.byte		N13   , As4 
	.byte	W01
	.byte	W11
	.byte		N12   , Fn4 
	.byte	W01
	.byte	W12
	.byte		        Dn4 
	.byte	W11
	.byte		N11   , Fn4 
	.byte	W01
	.byte	W11
	.byte		N12   , As1 
	.byte	W03
@ 049   ----------------------------------------
	.byte	W09
	.byte		N02   , As2 
	.byte	W01
	.byte		N01   , Dn3 
	.byte		N01   , Fn3 
	.byte		N12   , As3 
	.byte	W01
	.byte	W11
	.byte		        As1 
	.byte		N13   , Dn4 
	.byte	W01
	.byte	W11
	.byte		N01   , As2 
	.byte		N01   , Fn3 
	.byte		N12   , Fn4 
	.byte	W01
	.byte	W01
	.byte	W09
	.byte		N13   , As4 
	.byte	W01
	.byte		N11   , As1 
	.byte	W11
	.byte		N01   , As2 
	.byte		N13   , Fn4 
	.byte	W01
	.byte		N01   , Dn3 
	.byte		N01   , Fn3 
	.byte	W01
	.byte	W09
	.byte		N12   , As1 
	.byte	W02
	.byte		N13   , Dn4 
	.byte	W11
	.byte		N02   , As2 
	.byte		N01   , Dn3 
	.byte		N02   , Fn3 
	.byte	W01
	.byte		N06   , Fn4 
	.byte	W01
	.byte	W06
	.byte	W04
	.byte		N13   , As2 
	.byte	W01
	.byte		N12   , Dn3 
	.byte	W02
@ 050   ----------------------------------------
	.byte	W10
	.byte		N05   , Gn2 
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N13   , As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N07   , Gn2 
	.byte	W01
	.byte	W06
	.byte	W05
	.byte		N12   , As2 
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N11   , As2 
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N13   , Cn3 
	.byte		N13   , En3 
	.byte	W02
@ 051   ----------------------------------------
	.byte	W10
	.byte		N12   , Gn2 
	.byte	W01
	.byte	W11
	.byte		N13   , Cn3 
	.byte		N14   , En3 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W09
	.byte		N13   , En3 
	.byte	W01
	.byte		N12   , Cn3 
	.byte	W11
	.byte		        Gn2 
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		N11   , Cn3 
	.byte		N11   , En3 
	.byte	W11
	.byte	W01
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N15   , As2 
	.byte		N13   , Dn3 
	.byte	W02
@ 052   ----------------------------------------
	.byte	W09
	.byte		        Gn2 
	.byte	W03
	.byte	W01
	.byte	W09
	.byte		        As2 
	.byte		N12   , Dn3 
	.byte	W13
	.byte		        Gn2 
	.byte	W11
	.byte		        As2 
	.byte	W01
	.byte		N11   , Dn3 
	.byte	W11
	.byte		N12   , Gn2 
	.byte	W01
	.byte	W11
	.byte		N10   , As2 
	.byte		N10   , Dn3 
	.byte	W10
	.byte	W02
	.byte		N11   , Gn2 
	.byte	W11
	.byte		N13   , En3 
	.byte		N13   , Gn3 
	.byte	W03
@ 053   ----------------------------------------
	.byte	W09
	.byte		N14   , Cn2 
	.byte	W02
	.byte	W10
	.byte		        En3 
	.byte	W01
	.byte		        Gn3 
	.byte	W01
	.byte	W11
	.byte		N13   , Cn2 
	.byte	W02
	.byte	W10
	.byte		N14   , Gn3 
	.byte	W01
	.byte		N13   , En3 
	.byte	W01
	.byte	W11
	.byte		        Cn2 
	.byte	W01
	.byte	W11
	.byte		N10   , En3 
	.byte		N10   , Gn3 
	.byte	W01
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		N13   , Cn2 
	.byte	W12
	.byte		N14   , As2 
	.byte		N14   , Dn3 
	.byte	W01
@ 054   ----------------------------------------
	.byte	W11
	.byte		N13   , Gn2 
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W01
	.byte	W10
	.byte		        Gn2 
	.byte	W02
	.byte	W10
	.byte		N13   , As2 
	.byte	W01
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W01
	.byte	W11
	.byte		N12   , As2 
	.byte		N11   , Dn3 
	.byte	W11
	.byte	W01
	.byte		        Gn2 
	.byte	W11
	.byte		N13   , En3 
	.byte	W01
	.byte		N12   , Cn3 
	.byte	W01
@ 055   ----------------------------------------
	.byte	W10
	.byte		N13   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		N12   , Cn3 
	.byte		N13   , En3 
	.byte	W12
	.byte		        Gn2 
	.byte	W01
	.byte	W11
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W01
	.byte	W11
	.byte		N11   , Gn2 
	.byte	W01
	.byte	W10
	.byte	W01
	.byte		N10   , Cn3 
	.byte		N11   , En3 
	.byte	W11
	.byte	W01
	.byte		        Gn2 
	.byte	W11
	.byte		N13   , As2 
	.byte		N13   , Dn3 
	.byte	W02
@ 056   ----------------------------------------
	.byte	W10
	.byte		N12   , Gn2 
	.byte	W02
	.byte	W11
	.byte		        As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W11
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W01
	.byte	W10
	.byte		N10   , As2 
	.byte	W01
	.byte		N11   , Dn3 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		        Gn2 
	.byte	W11
	.byte	W01
	.byte		N14   , En3 
	.byte		N14   , Gn3 
	.byte	W02
@ 057   ----------------------------------------
	.byte	W10
	.byte		N13   , Cn2 
	.byte	W02
	.byte	W10
	.byte		        En3 
	.byte		N14   , Gn3 
	.byte	W01
	.byte	W11
	.byte		N13   , Cn2 
	.byte	W02
	.byte	W10
	.byte		        Gn3 
	.byte	W01
	.byte		N12   , En3 
	.byte	W01
	.byte	W10
	.byte		N13   , Cn2 
	.byte	W01
	.byte	W12
	.byte		N11   , En3 
	.byte		N10   , Gn3 
	.byte	W01
	.byte	W10
	.byte		N12   , Cn2 
	.byte	W13
	.byte		N14   , As2 
	.byte		N13   , Dn3 
	.byte	W01
@ 058   ----------------------------------------
	.byte	W11
	.byte		N12   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N14   , As2 
	.byte		N13   , Dn3 
	.byte	W01
	.byte	W11
	.byte		N12   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N13   , As2 
	.byte		N12   , Dn3 
	.byte	W01
	.byte	W10
	.byte		        Gn2 
	.byte	W02
	.byte	W10
	.byte		N11   , As2 
	.byte	W01
	.byte		        Dn3 
	.byte	W11
	.byte		        Gn2 
	.byte	W11
	.byte	W01
	.byte		N13   , Cn3 
	.byte		N14   , En3 
	.byte	W02
@ 059   ----------------------------------------
	.byte	W10
	.byte		N13   , Cn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N14   , Cn3 
	.byte		N14   , En3 
	.byte	W01
	.byte	W11
	.byte		N13   , Cn2 
	.byte	W02
	.byte	W10
	.byte		        Cn3 
	.byte		N14   , En3 
	.byte	W02
	.byte	W10
	.byte		N13   , Cn2 
	.byte	W02
	.byte	W11
	.byte		N11   , Cn3 
	.byte		N10   , En3 
	.byte	W01
	.byte	W10
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N14   , As2 
	.byte		N13   , Dn3 
	.byte	W01
	.byte	W01
@ 060   ----------------------------------------
	.byte	W10
	.byte		        Gn2 
	.byte	W02
	.byte	W10
	.byte		        As2 
	.byte		N13   , Dn3 
	.byte	W01
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W01
	.byte	W10
	.byte		        As2 
	.byte		N13   , Dn3 
	.byte	W01
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W01
	.byte	W10
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W01
	.byte	W11
	.byte		        Gn2 
	.byte	W01
	.byte	W11
	.byte		N13   , Cn3 
	.byte	W01
	.byte		        En3 
	.byte	W01
@ 061   ----------------------------------------
	.byte	W10
	.byte		N12   , Gn2 
	.byte	W02
	.byte	W10
	.byte		N14   , En3 
	.byte	W01
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W01
	.byte	W10
	.byte		N14   , En3 
	.byte	W01
	.byte		N12   , Cn3 
	.byte	W11
	.byte		        Gn2 
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		N11   , Cn3 
	.byte		N11   , En3 
	.byte	W11
	.byte		        Gn2 
	.byte	W01
	.byte	W11
	.byte		N15   , As2 
	.byte		N15   , Dn3 
	.byte	W02
@ 062   ----------------------------------------
	.byte	W10
	.byte		N12   , Gn2 
	.byte	W03
	.byte	W09
	.byte		N14   , As2 
	.byte	W01
	.byte		N12   , Dn3 
	.byte	W11
	.byte		        Gn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		        As2 
	.byte		N13   , Dn3 
	.byte	W01
	.byte	W11
	.byte		N12   , Gn2 
	.byte	W01
	.byte	W12
	.byte		        As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N13   , Cn3 
	.byte		N14   , En3 
	.byte	W01
@ 063   ----------------------------------------
	.byte	W11
	.byte		N12   , Gn2 
	.byte	W02
	.byte	W10
	.byte		N13   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W01
	.byte	W10
	.byte		N14   , En3 
	.byte	W01
	.byte		N12   , Cn3 
	.byte	W11
	.byte		        Gn2 
	.byte	W01
	.byte	W02
	.byte	W10
	.byte		N11   , Cn3 
	.byte		N11   , En3 
	.byte	W11
	.byte	W01
	.byte		TIE   , Gn2 
	.byte	W11
	.byte		N92   , As2 , v064, gtp3
	.byte	W01
	.byte		        Dn3 , v064, gtp2
	.byte	W01
@ 064   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		EOT   , Gn2 
	.byte	FINE

@**************** Track 3 (Midi-Chn.6) ****************@

mus_the_great_gig_in_the_sky_3:
	.byte		VOL   , 127*mus_the_great_gig_in_the_sky_mvl/mxv
	.byte	KEYSH , mus_the_great_gig_in_the_sky_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 22
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte		N10   , Cn3 , v127
	.byte	W10
	.byte		TIE   , Dn3 
	.byte	W03
@ 004   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		N92   , En3 , v127, gtp3
	.byte	W02
	.byte		EOT   , Dn3 
@ 005   ----------------------------------------
	.byte	W01
	.byte	W90
	.byte		TIE   , Fn3 
	.byte	W02
	.byte	W03
@ 006   ----------------------------------------
	.byte	W92
	.byte		EOT   
	.byte		N68   , En3 , v127, gtp2
	.byte	W04
@ 007   ----------------------------------------
	.byte	W66
	.byte	W24
	.byte	W01
	.byte		N72   , Cn4 , v127, gtp3
	.byte	W05
@ 008   ----------------------------------------
	.byte	W68
	.byte		N06   , As3 
	.byte	W02
	.byte	W04
	.byte		N05   , An3 
	.byte	W01
	.byte	W04
	.byte	W02
	.byte		N15   , Gn3 
	.byte	W13
	.byte		N92   , Dn4 , v127, gtp1
	.byte	W02
@ 009   ----------------------------------------
	.byte	W90
	.byte	W01
	.byte		TIE   
	.byte	W05
@ 010   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		EOT   
	.byte		N72   , En4 
	.byte	W01
	.byte	W02
@ 011   ----------------------------------------
	.byte	W68
	.byte		N06   , Dn4 
	.byte	W01
	.byte	W05
	.byte		        En4 
	.byte	W01
	.byte	W06
	.byte		N13   , Dn4 
	.byte	W13
	.byte		N92   , Cn4 
	.byte	W02
@ 012   ----------------------------------------
	.byte	W88
	.byte		N52   , Fn3 , v127, gtp1
	.byte	W03
	.byte	W05
@ 013   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		N48   , Gn3 
	.byte	W48
	.byte	W01
	.byte		TIE   , Fn3 
	.byte	W02
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W68
	.byte		EOT   
	.byte	W28
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
	.byte	W92
	.byte	W02
	.byte		N36   , Dn4 , v127, gtp1
	.byte	W02
@ 024   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N06   , As3 
	.byte	W01
	.byte	W05
	.byte		N52   , Dn4 , v127, gtp1
	.byte	W01
	.byte	W52
	.byte		N92   , Cn4 , v127, gtp3
	.byte	W01
	.byte	W02
@ 025   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		N24   , Gn3 , v127, gtp2
	.byte	W03
@ 026   ----------------------------------------
	.byte	W22
	.byte		N06   , Dn3 
	.byte	W01
	.byte	W05
	.byte		N16   , Gn3 
	.byte	W16
	.byte		N07   , As3 
	.byte	W01
	.byte	W07
	.byte		N09   , Cn4 
	.byte	W10
	.byte	W01
	.byte		N19   , Dn4 
	.byte	W18
	.byte		N07   , Gn4 
	.byte	W01
	.byte	W07
	.byte		N84   , En4 , v127, gtp2
	.byte	W07
@ 027   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte	W17
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
	.byte	W88
	.byte		N04   , Gn2 
	.byte	W04
	.byte	W02
	.byte		N06   , Dn2 
	.byte	W02
@ 050   ----------------------------------------
	.byte	W05
	.byte		N09   , Gn2 
	.byte	W09
	.byte	W01
	.byte		        As2 
	.byte	W10
	.byte	W04
	.byte		        Cn3 
	.byte	W09
	.byte	W03
	.byte		N42   , Dn3 
	.byte	W40
	.byte	W01
	.byte		N12   , Fn3 
	.byte	W01
	.byte	W10
	.byte		N84   , En3 , v127, gtp2
	.byte	W01
	.byte	W02
@ 051   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte	W10
	.byte		N08   , Gn3 
	.byte	W03
@ 052   ----------------------------------------
	.byte	W05
	.byte	W01
	.byte		N09   , As3 
	.byte	W09
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W04
	.byte		N09   , As3 
	.byte	W02
	.byte	W07
	.byte		N10   , Cn4 
	.byte	W01
	.byte	W09
	.byte	W01
	.byte		N44   , Dn4 
	.byte	W42
	.byte		N11   , Fn4 
	.byte	W02
	.byte	W08
	.byte		N84   , En4 
	.byte	W01
	.byte	W02
@ 053   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte	FINE

@**************** Track 4 (Midi-Chn.3) ****************@

mus_the_great_gig_in_the_sky_4:
	.byte		VOL   , 127*mus_the_great_gig_in_the_sky_mvl/mxv
	.byte	KEYSH , mus_the_great_gig_in_the_sky_key+0
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
	.byte	W92
	.byte	W01
	.byte		N14   , As2 , v064
	.byte		N13   , Fn3 
	.byte	W03
@ 016   ----------------------------------------
	.byte	W09
	.byte		N14   , Gn2 
	.byte	W02
	.byte	W01
	.byte	W10
	.byte		        As2 
	.byte		N14   , Dn3 
	.byte		N12   , Fn3 
	.byte	W02
	.byte	W10
	.byte		N14   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N13   , As2 
	.byte		N13   , Fn3 
	.byte	W02
	.byte	W11
	.byte		N12   , Gn2 
	.byte	W01
	.byte	W11
	.byte		N11   , As2 
	.byte		N11   , Dn3 
	.byte		N10   , Fn3 
	.byte	W01
	.byte	W10
	.byte		N13   , Gn2 
	.byte	W13
	.byte		N15   , Cn3 
	.byte		N14   , Gn3 
	.byte	W01
@ 017   ----------------------------------------
	.byte	W11
	.byte		N13   , Gn2 
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		N15   , Cn3 
	.byte		N13   , Gn3 
	.byte	W02
	.byte	W10
	.byte		        Gn2 
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		N14   , Cn3 
	.byte		N13   , En3 
	.byte	W01
	.byte		N12   , Gn3 
	.byte	W01
	.byte	W10
	.byte		N13   , Gn2 
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N12   , Cn3 
	.byte	W01
	.byte		N11   , En3 
	.byte		N11   , Gn3 
	.byte	W01
	.byte	W10
	.byte	W01
	.byte		N12   , Gn2 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N16   , As2 
	.byte		N14   , Dn3 
	.byte		N13   , Fn3 
	.byte	W01
	.byte	W10
	.byte		N15   , Gn2 
	.byte	W03
	.byte	W01
	.byte	W01
	.byte	W08
	.byte		N14   , As2 
	.byte	W01
	.byte		N13   , Dn3 
	.byte		N11   , Fn3 
	.byte	W01
	.byte	W10
	.byte		N13   , Gn2 
	.byte	W02
	.byte	W09
	.byte		N14   , As2 
	.byte	W01
	.byte		N12   , Dn3 
	.byte		N11   , Fn3 
	.byte	W01
	.byte	W10
	.byte		N13   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte		N11   , Fn3 
	.byte	W01
	.byte	W10
	.byte	W01
	.byte		N13   , Gn2 
	.byte	W12
	.byte		N14   , Cn3 
	.byte		N13   , Gn3 
	.byte	W01
@ 019   ----------------------------------------
	.byte	W11
	.byte		N14   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W09
	.byte		N15   , Cn3 
	.byte		N14   , En3 
	.byte	W01
	.byte		        Gn3 
	.byte	W01
	.byte	W11
	.byte		N13   , Gn2 
	.byte	W02
	.byte	W10
	.byte		N14   , Cn3 
	.byte		N13   , En3 
	.byte		N12   , Gn3 
	.byte	W01
	.byte	W10
	.byte		N13   , Gn2 
	.byte	W02
	.byte	W01
	.byte	W10
	.byte		N12   , Cn3 
	.byte		N11   , En3 
	.byte		N11   , Gn3 
	.byte	W11
	.byte	W01
	.byte		N12   , Gn2 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N15   , As2 
	.byte		N14   , Dn3 
	.byte		N14   , Fn3 
	.byte	W01
	.byte	W11
	.byte		        Gn2 
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W08
	.byte		        As2 
	.byte		N13   , Dn3 
	.byte		N12   , Fn3 
	.byte	W02
	.byte	W10
	.byte		N13   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W09
	.byte		N14   , As2 
	.byte		N13   , Dn3 
	.byte	W01
	.byte		N11   , Fn3 
	.byte	W01
	.byte	W10
	.byte		N13   , Gn2 
	.byte	W02
	.byte	W11
	.byte		N11   , As2 
	.byte		N11   , Dn3 
	.byte		N11   , Fn3 
	.byte	W11
	.byte	W01
	.byte		N13   , Gn2 
	.byte	W11
@ 021   ----------------------------------------
	.byte	W01
	.byte		N14   , Cn3 
	.byte		N13   , En3 
	.byte		N13   , Gn3 
	.byte	W01
	.byte	W11
	.byte		N12   , Gn2 
	.byte	W02
	.byte	W09
	.byte		N14   , Cn3 
	.byte	W01
	.byte		N13   , En3 
	.byte		N13   , Gn3 
	.byte	W11
	.byte		N12   , Gn2 
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		N13   , Cn3 
	.byte		N13   , En3 
	.byte	W01
	.byte		N12   , Gn3 
	.byte	W11
	.byte		        Gn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		        Cn3 
	.byte		N11   , En3 
	.byte		N10   , Gn3 
	.byte	W01
	.byte	W10
	.byte	W01
	.byte		N12   , Gn2 
	.byte	W12
@ 022   ----------------------------------------
	.byte		N14   , As2 
	.byte		N13   , Dn3 
	.byte		N12   , Fn3 
	.byte	W01
	.byte	W11
	.byte		N13   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W08
	.byte		N14   , As2 
	.byte		N13   , Dn3 
	.byte	W01
	.byte		N12   , Fn3 
	.byte	W01
	.byte	W10
	.byte		        Gn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N13   , As2 
	.byte		N13   , Dn3 
	.byte		N12   , Fn3 
	.byte	W01
	.byte	W11
	.byte		N13   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte		N11   , Fn3 
	.byte	W01
	.byte	W10
	.byte		N12   , Gn2 
	.byte	W01
	.byte	W11
	.byte		N14   , Cn3 
	.byte		N13   , En3 
	.byte		N13   , Gn3 
	.byte	W01
	.byte	W01
@ 023   ----------------------------------------
	.byte	W10
	.byte		N12   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W09
	.byte		N15   , Cn3 
	.byte		N14   , En3 
	.byte	W01
	.byte		N13   , Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W01
	.byte	W01
	.byte	W09
	.byte		N14   , Cn3 
	.byte	W01
	.byte		        En3 
	.byte		N13   , Gn3 
	.byte	W01
	.byte	W11
	.byte		        Gn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N12   , Cn3 
	.byte		N11   , En3 
	.byte		N10   , Gn3 
	.byte	W01
	.byte	W10
	.byte	W01
	.byte		N12   , Gn2 
	.byte	W01
	.byte	W11
	.byte		N14   , As2 
	.byte	W01
	.byte		N13   , Dn3 
	.byte		N12   , Fn3 
	.byte	W01
@ 024   ----------------------------------------
	.byte	W10
	.byte		N13   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W08
	.byte		N14   , As2 
	.byte	W01
	.byte		N13   , Dn3 
	.byte		N12   , Fn3 
	.byte	W01
	.byte	W11
	.byte		N13   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W09
	.byte		N14   , As2 
	.byte		N13   , Dn3 
	.byte	W01
	.byte		N12   , Fn3 
	.byte	W01
	.byte	W11
	.byte		        Gn2 
	.byte	W01
	.byte	W01
	.byte	W09
	.byte		N13   , As2 
	.byte		N12   , Dn3 
	.byte	W01
	.byte		N11   , Fn3 
	.byte	W11
	.byte		N13   , Gn2 
	.byte	W01
	.byte	W11
	.byte		N14   , Cn3 
	.byte		N13   , En3 
	.byte	W01
	.byte		N12   , Gn3 
	.byte	W01
	.byte	W01
@ 025   ----------------------------------------
	.byte	W10
	.byte		        Gn2 
	.byte	W01
	.byte	W10
	.byte		N14   , Cn3 
	.byte		N13   , En3 
	.byte	W01
	.byte		        Gn3 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W09
	.byte		N14   , Cn3 
	.byte	W01
	.byte		N13   , En3 
	.byte		N13   , Gn3 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		        Cn3 
	.byte	W01
	.byte		N11   , En3 
	.byte		N10   , Gn3 
	.byte	W10
	.byte	W01
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N14   , As2 
	.byte		N13   , Dn3 
	.byte	W01
	.byte		N12   , Fn3 
	.byte	W01
@ 026   ----------------------------------------
	.byte	W10
	.byte		        Gn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N14   , As2 
	.byte		N13   , Dn3 
	.byte		N13   , Fn3 
	.byte	W01
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W09
	.byte		N13   , As2 
	.byte		N12   , Fn3 
	.byte	W01
	.byte	W11
	.byte		N11   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		        As2 
	.byte		N11   , Dn3 
	.byte		N10   , Fn3 
	.byte	W11
	.byte	W01
	.byte		N11   , Gn2 
	.byte	W11
	.byte		N13   , Cn3 
	.byte		N13   , En3 
	.byte	W01
	.byte		N12   , Gn3 
	.byte	W02
@ 027   ----------------------------------------
	.byte	W09
	.byte		        Gn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N13   , Cn3 
	.byte		N13   , En3 
	.byte		N12   , Gn3 
	.byte	W01
	.byte	W11
	.byte		        Gn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N14   , Cn3 
	.byte		N13   , En3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Cn3 
	.byte		N11   , Gn3 
	.byte	W11
	.byte	W01
	.byte		N12   , Gn2 
	.byte	W11
	.byte		N15   , As2 
	.byte	W01
	.byte		N13   , Dn3 
	.byte		N12   , Fn3 
	.byte	W02
@ 028   ----------------------------------------
	.byte	W10
	.byte		        Gn2 
	.byte	W01
	.byte	W02
	.byte	W08
	.byte		N14   , As2 
	.byte	W01
	.byte		N12   , Dn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W01
	.byte	W10
	.byte		N13   , As2 
	.byte		N12   , Dn3 
	.byte	W01
	.byte		N11   , Fn3 
	.byte	W11
	.byte		N12   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N13   , As2 
	.byte		N12   , Dn3 
	.byte		N11   , Fn3 
	.byte	W12
	.byte		N13   , Gn2 
	.byte	W01
	.byte	W11
	.byte		N14   , Cn3 
	.byte		N13   , En3 
	.byte	W01
	.byte		N12   , Gn3 
	.byte	W02
@ 029   ----------------------------------------
	.byte	W09
	.byte		N13   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W09
	.byte		N15   , Cn3 
	.byte	W01
	.byte		N13   , En3 
	.byte		N13   , Gn3 
	.byte	W01
	.byte	W11
	.byte		N12   , Gn2 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N14   , Cn3 
	.byte		N12   , En3 
	.byte		N12   , Gn3 
	.byte	W01
	.byte	W12
	.byte		        Gn2 
	.byte	W01
	.byte	W10
	.byte		N13   , Cn3 
	.byte		N13   , En3 
	.byte	W01
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N09   , Gn2 
	.byte	W01
	.byte	W08
	.byte	W03
	.byte		N05   , Gn3 
	.byte		N12   , As3 
	.byte	W01
	.byte		        Dn4 
	.byte	W01
@ 030   ----------------------------------------
	.byte	W04
	.byte	W06
	.byte		N13   , Gn3 
	.byte	W01
	.byte	W11
	.byte		N12   , As3 
	.byte	W01
	.byte		N11   , Dn4 
	.byte	W01
	.byte	W10
	.byte		N12   , Gn3 
	.byte	W01
	.byte	W11
	.byte		N13   , An3 
	.byte		N12   , Cn4 
	.byte	W01
	.byte	W12
	.byte		        Fn3 
	.byte	W01
	.byte	W10
	.byte		N11   , An3 
	.byte		N12   , Cn4 
	.byte	W01
	.byte	W11
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte		N11   , As3 
	.byte	W02
@ 031   ----------------------------------------
	.byte	W09
	.byte	W01
	.byte		N12   , Ds3 
	.byte	W01
	.byte	W10
	.byte		        As3 
	.byte	W01
	.byte		        Gn3 
	.byte	W01
	.byte	W10
	.byte	W01
	.byte		N13   , Ds3 
	.byte	W12
	.byte		N12   , Fs3 
	.byte		N06   , An3 
	.byte	W01
	.byte	W06
	.byte	W05
	.byte		N13   , Dn3 
	.byte	W01
	.byte	W11
	.byte		N11   , Fs3 
	.byte		N12   , An3 
	.byte	W01
	.byte	W11
	.byte		N06   , Dn3 
	.byte	W06
	.byte	W06
	.byte		N84   , Bn2 
	.byte		N48   , Fs3 
	.byte	W02
@ 032   ----------------------------------------
	.byte	W10
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N06   , Dn2 
	.byte	W07
	.byte		N72   , Fs2 
	.byte	W12
	.byte		N04   , Dn3 
	.byte	W04
	.byte	W01
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N12   , Bn3 
	.byte	W01
	.byte	W11
	.byte		N05   , Fs3 
	.byte	W01
	.byte	W04
	.byte		        Dn3 
	.byte	W05
	.byte	W01
	.byte		N13   , Bn2 
	.byte	W13
	.byte		N14   , Dn3 
	.byte	W01
	.byte	W12
	.byte		N84   , Bn1 , v064, gtp2
	.byte	W01
	.byte	W01
@ 033   ----------------------------------------
	.byte	W11
	.byte		N12   , Bn2 
	.byte	W05
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W01
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W05
	.byte		N05   , Fs3 
	.byte	W01
	.byte	W04
	.byte		N12   , Bn3 
	.byte	W11
	.byte		N06   , Fs3 
	.byte	W01
	.byte	W05
	.byte		N07   , Dn3 
	.byte	W01
	.byte	W06
	.byte		N13   , Bn2 
	.byte	W13
	.byte		N24   , Dn3 , v064, gtp3
	.byte	W02
	.byte	W10
	.byte		N19   , Bn1 
	.byte		N15   , Dn3 
	.byte		N15   , Fs3 
	.byte	W02
@ 034   ----------------------------------------
	.byte	W10
	.byte		N12   , Bn2 
	.byte	W04
	.byte	W04
	.byte	W04
	.byte		N15   , Dn3 
	.byte		N15   , Fs3 
	.byte	W01
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W03
	.byte	W08
	.byte		N15   , Dn3 
	.byte		N15   , Fs3 
	.byte	W02
	.byte	W11
	.byte		N11   , Bn2 
	.byte	W03
	.byte	W08
	.byte		N13   , Fs3 
	.byte	W01
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N11   , Bn2 
	.byte	W01
	.byte	W10
	.byte		N15   , Fn3 
	.byte		N14   , An3 
	.byte	W02
@ 035   ----------------------------------------
	.byte	W11
	.byte		N12   , Dn3 
	.byte	W02
	.byte	W09
	.byte		N16   , Fn3 
	.byte		N16   , An3 
	.byte	W01
	.byte	W12
	.byte		N13   , Dn3 
	.byte	W03
	.byte	W01
	.byte	W07
	.byte		N14   , An3 
	.byte	W01
	.byte		N13   , Fn3 
	.byte	W01
	.byte	W10
	.byte		N12   , Dn3 
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		N13   , Fn3 
	.byte		N14   , An3 
	.byte	W01
	.byte	W11
	.byte		N12   , Dn3 
	.byte	W02
	.byte	W10
	.byte		N16   , Fn3 
	.byte		N18   , As3 
	.byte	W01
	.byte	W01
@ 036   ----------------------------------------
	.byte	W11
	.byte		N12   , Dn3 
	.byte	W03
	.byte	W02
	.byte	W06
	.byte		N15   , Fn3 
	.byte		N15   , As3 
	.byte	W01
	.byte	W11
	.byte		N12   , Dn3 
	.byte	W03
	.byte	W08
	.byte		N15   , Fn3 
	.byte		N16   , As3 
	.byte	W02
	.byte	W11
	.byte		N13   , Dn3 
	.byte	W02
	.byte	W01
	.byte	W08
	.byte		        Fn3 
	.byte		N14   , As3 
	.byte	W02
	.byte	W11
	.byte		N12   , Dn3 
	.byte	W01
	.byte	W10
	.byte		N15   , Fn3 
	.byte	W01
	.byte		N14   , An3 
	.byte	W02
@ 037   ----------------------------------------
	.byte	W10
	.byte		N13   , Cn3 
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		N15   , Fn3 
	.byte		N14   , An3 
	.byte	W02
	.byte	W11
	.byte		N12   , Cn3 
	.byte	W02
	.byte	W10
	.byte		N13   , Fn3 
	.byte		N13   , An3 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W01
	.byte	W10
	.byte		N13   , Fn3 
	.byte		N13   , An3 
	.byte	W01
	.byte	W11
	.byte		N09   , Cn3 
	.byte	W01
	.byte	W01
	.byte	W08
	.byte	W02
	.byte		N15   , Gn3 
	.byte		N16   , As3 
	.byte	W02
@ 038   ----------------------------------------
	.byte	W11
	.byte		N13   , Dn3 
	.byte	W03
	.byte	W01
	.byte	W07
	.byte		N15   , Gn3 
	.byte		N18   , As3 
	.byte	W02
	.byte	W10
	.byte		N14   , Dn3 
	.byte	W04
	.byte	W03
	.byte	W05
	.byte		        Gn3 
	.byte		N15   , As3 
	.byte	W02
	.byte	W10
	.byte		N12   , Dn3 
	.byte	W03
	.byte	W09
	.byte		        Gn3 
	.byte		N14   , As3 
	.byte	W01
	.byte	W11
	.byte		N12   , Dn3 
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N14   , En3 
	.byte		N14   , Gn3 
	.byte	W02
@ 039   ----------------------------------------
	.byte	W10
	.byte		N13   , Cn3 
	.byte	W03
	.byte	W09
	.byte		N15   , En3 
	.byte		N15   , Gn3 
	.byte	W01
	.byte	W11
	.byte		N12   , Cn3 
	.byte	W03
	.byte	W09
	.byte		N14   , En3 
	.byte		N14   , Gn3 
	.byte	W01
	.byte	W11
	.byte		N12   , Cn3 
	.byte	W02
	.byte	W10
	.byte		        En3 
	.byte		N14   , Gn3 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W02
	.byte	W10
	.byte		N15   , Gn3 
	.byte		N15   , As3 
	.byte	W02
@ 040   ----------------------------------------
	.byte	W10
	.byte		N12   , Dn3 
	.byte	W03
	.byte	W09
	.byte		N14   , Gn3 
	.byte		N14   , As3 
	.byte	W01
	.byte	W11
	.byte		N12   , Dn3 
	.byte	W02
	.byte	W10
	.byte		N14   , Gn3 
	.byte		N14   , As3 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W02
	.byte	W10
	.byte		        Gn3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W01
	.byte	W11
	.byte		N14   , En3 
	.byte		N15   , Gn3 
	.byte	W02
@ 041   ----------------------------------------
	.byte	W10
	.byte		N12   , Cn3 
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		N14   , En3 
	.byte		N14   , Gn3 
	.byte	W01
	.byte	W11
	.byte		N13   , Cn3 
	.byte	W02
	.byte	W09
	.byte		        Gn3 
	.byte	W01
	.byte		N14   , En3 
	.byte	W01
	.byte	W11
	.byte		N12   , Cn3 
	.byte	W01
	.byte	W01
	.byte	W09
	.byte		        Gn3 
	.byte	W01
	.byte		        En3 
	.byte	W11
	.byte		N14   , Cn3 
	.byte	W01
	.byte	W12
	.byte		N16   , An3 
	.byte		N17   , Cn4 
	.byte	W01
	.byte	W01
@ 042   ----------------------------------------
	.byte	W11
	.byte		N13   , Fn3 
	.byte	W03
	.byte	W01
	.byte	W07
	.byte		N16   , Cn4 
	.byte	W01
	.byte		N14   , An3 
	.byte	W01
	.byte	W10
	.byte		N13   , Fn3 
	.byte	W03
	.byte	W01
	.byte	W08
	.byte		N14   , An3 
	.byte		N14   , Cn4 
	.byte	W02
	.byte	W10
	.byte		N12   , Fn3 
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		        An3 
	.byte		N13   , Cn4 
	.byte	W01
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W01
	.byte	W10
	.byte		N15   , As3 
	.byte		N14   , Dn4 
	.byte	W01
	.byte	W01
@ 043   ----------------------------------------
	.byte	W11
	.byte		N13   , Fn3 
	.byte	W02
	.byte	W01
	.byte	W08
	.byte		N14   , As3 
	.byte	W01
	.byte		N13   , Dn4 
	.byte	W01
	.byte	W11
	.byte		N12   , Fn3 
	.byte	W01
	.byte	W01
	.byte	W09
	.byte		N14   , As3 
	.byte		N13   , Dn4 
	.byte	W02
	.byte	W11
	.byte		N12   , Fn3 
	.byte	W01
	.byte	W10
	.byte		        As3 
	.byte	W01
	.byte		N11   , Dn4 
	.byte	W11
	.byte		N12   , Fn3 
	.byte	W01
	.byte	W11
	.byte		N14   , As3 
	.byte		N13   , Dn4 
	.byte	W02
@ 044   ----------------------------------------
	.byte	W10
	.byte		        Gn3 
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		N15   , As3 
	.byte		N14   , Dn4 
	.byte	W02
	.byte	W11
	.byte		N12   , Gn3 
	.byte	W01
	.byte	W01
	.byte	W09
	.byte		N13   , As3 
	.byte	W01
	.byte		        Dn4 
	.byte	W12
	.byte		N11   , Gn3 
	.byte	W01
	.byte	W10
	.byte		N12   , As3 
	.byte		N12   , Dn4 
	.byte	W13
	.byte		        Gn3 
	.byte	W11
	.byte		N15   , Cn4 
	.byte	W01
	.byte		N02   , Dn4 
	.byte		N15   , En4 
	.byte	W01
@ 045   ----------------------------------------
	.byte	W01
	.byte	W10
	.byte		N13   , Gn3 
	.byte	W03
	.byte	W09
	.byte		N14   , Cn4 
	.byte		N15   , En4 
	.byte	W01
	.byte	W11
	.byte		N12   , Gn3 
	.byte	W02
	.byte	W01
	.byte	W08
	.byte		N15   , Cn4 
	.byte		N16   , En4 
	.byte	W02
	.byte	W11
	.byte		N12   , Gn3 
	.byte	W03
	.byte	W09
	.byte		N13   , Cn4 
	.byte		N13   , En4 
	.byte	W12
	.byte		N07   , Gn3 
	.byte	W01
	.byte	W06
	.byte	W04
	.byte		N17   , An2 
	.byte		N19   , Cn3 
	.byte	W02
@ 046   ----------------------------------------
	.byte	W11
	.byte		N13   , Fn2 
	.byte	W05
	.byte	W01
	.byte	W05
	.byte		N15   , An2 
	.byte		N21   , Cn3 
	.byte	W02
	.byte	W10
	.byte		N13   , Fn2 
	.byte	W04
	.byte	W05
	.byte	W03
	.byte		N16   , An2 
	.byte		N19   , Cn3 
	.byte	W02
	.byte	W10
	.byte		N13   , Fn2 
	.byte	W05
	.byte	W03
	.byte	W03
	.byte		        Cn3 
	.byte	W01
	.byte		N12   , An2 
	.byte	W02
	.byte	W10
	.byte		        Fn2 
	.byte	W01
	.byte	W10
	.byte		N16   , As2 
	.byte		N16   , Dn3 
	.byte	W01
	.byte	W02
@ 047   ----------------------------------------
	.byte	W10
	.byte		N13   , Fn2 
	.byte	W03
	.byte	W01
	.byte	W07
	.byte		        As2 
	.byte		N13   , Dn3 
	.byte	W02
	.byte	W10
	.byte		        Fn2 
	.byte	W02
	.byte	W10
	.byte		N17   , As2 
	.byte		N17   , Ds3 
	.byte	W01
	.byte	W12
	.byte		N13   , Gn2 
	.byte	W04
	.byte	W07
	.byte		N14   , As2 
	.byte		N13   , Ds3 
	.byte	W02
	.byte	W11
	.byte		N12   , Gn2 
	.byte	W01
	.byte	W10
	.byte		N14   , As2 
	.byte		N14   , Dn3 
	.byte	W01
	.byte	W02
@ 048   ----------------------------------------
	.byte	W10
	.byte		N12   , Fn2 
	.byte	W02
	.byte	W09
	.byte		N14   , As2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W12
	.byte		N12   , Fn2 
	.byte	W01
	.byte	W01
	.byte	W09
	.byte		N13   , As2 
	.byte	W01
	.byte		        Dn3 
	.byte	W12
	.byte		N11   , Fn2 
	.byte	W01
	.byte	W09
	.byte		N13   , As2 
	.byte	W01
	.byte		        Dn3 
	.byte	W12
	.byte		N07   , Fn2 
	.byte	W01
	.byte	W06
	.byte	FINE

@**************** Track 5 (Midi-Chn.9) ****************@

mus_the_great_gig_in_the_sky_5:
	.byte	KEYSH , mus_the_great_gig_in_the_sky_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte		VOL   , 75*mus_the_great_gig_in_the_sky_mvl/mxv
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
	.byte	W80
	.byte		N05   , An4 , v116
	.byte	W05
	.byte	W01
	.byte		        Gn4 
	.byte	W05
	.byte	W02
	.byte		N20   , An4 
	.byte	W03
@ 058   ----------------------------------------
	.byte	W16
	.byte		N06   , Gn4 
	.byte	W01
	.byte	W05
	.byte	W08
	.byte		        An4 
	.byte	W05
	.byte		N04   , Gn4 
	.byte	W01
	.byte	W03
	.byte	W02
	.byte		N21   , An4 
	.byte	W22
	.byte		N04   , Gn4 
	.byte	W05
	.byte	W11
	.byte		N03   , An4 
	.byte	W03
	.byte		N04   , Gn4 
	.byte	W04
	.byte	W03
	.byte		N28   , An4 , v116, gtp1
	.byte	W07
@ 059   ----------------------------------------
	.byte	W22
	.byte	W01
	.byte		N05   , Gn4 
	.byte	W05
	.byte	W17
	.byte		N03   , En4 
	.byte	W03
	.byte		N02   , Ds4 
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		        Dn4 
	.byte	W03
	.byte	W01
	.byte		N24   , Cn4 , v116, gtp3
	.byte	W24
	.byte	W03
	.byte	W11
	.byte		N08   , Gn4 
	.byte	W03
@ 060   ----------------------------------------
	.byte	W06
	.byte		N03   , As4 
	.byte	W03
	.byte	W08
	.byte		N02   , Gn4 
	.byte	W03
	.byte	W01
	.byte		N07   , As4 
	.byte	W08
	.byte	W01
	.byte		N05   , Cn5 
	.byte	W05
	.byte	W07
	.byte		N07   , Dn5 
	.byte	W07
	.byte	W09
	.byte		N13   
	.byte	W13
	.byte		N05   , Cn5 
	.byte	W01
	.byte	W04
	.byte		        As4 
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W04
	.byte	W08
	.byte		N72   , Gn5 
	.byte	W02
@ 061   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte	W07
	.byte		N15   , Dn5 
	.byte	W16
	.byte		N36   , Cn5 
	.byte	W02
@ 062   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   , As4 
	.byte	W11
	.byte	W01
	.byte		N36   , Gn4 
	.byte	W32
	.byte	W03
	.byte		N12   , As4 
	.byte	W01
	.byte	W12
	.byte		N84   , Gn4 , v116, gtp2
	.byte	W01
@ 063   ----------------------------------------
	.byte	W84
	.byte	W01
	.byte	FINE

@**************** Track 6 (Midi-Chn.10) ****************@

mus_the_great_gig_in_the_sky_6:
	.byte		VOL   , 127*mus_the_great_gig_in_the_sky_mvl/mxv
	.byte	KEYSH , mus_the_great_gig_in_the_sky_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
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
	.byte	W92
	.byte	W02
	.byte		N56   , Cs2 , v076, gtp3
	.byte	W01
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 016   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W07
	.byte	W02
	.byte		        Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W01
@ 017   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v048
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte		TIE   , Cs2 , v076
	.byte	W01
@ 018   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v048
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 019   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W04
	.byte		EOT   , Cs2 
	.byte	W05
	.byte		N03   , Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W01
@ 020   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 021   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v048
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 022   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 023   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 024   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W01
@ 025   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v048
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 026   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v048
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 027   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W01
@ 028   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 029   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v048
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W08
	.byte		N36   , Cs2 , v076
	.byte	W01
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 030   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W08
	.byte	W01
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W07
	.byte		N36   , Cs2 , v076, gtp1
	.byte	W02
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W08
	.byte	W01
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W08
	.byte		N36   , Cs2 , v076
	.byte	W01
	.byte		N02   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 031   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W08
	.byte		N36   , Cs2 , v076, gtp2
	.byte	W01
	.byte		N02   , Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W01
	.byte	W02
	.byte	W08
	.byte		N84   , Cs2 , v076, gtp2
	.byte	W01
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 032   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W02
	.byte	W01
	.byte	W08
	.byte		N48   , Cs2 , v076
	.byte	W01
	.byte		N02   , Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W01
@ 033   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W08
	.byte	W01
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v048
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 034   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v048
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 035   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W01
@ 036   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 037   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v048
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 038   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 039   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 040   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W01
@ 041   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v048
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 042   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v048
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 043   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W01
@ 044   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 045   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v048
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 046   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 047   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W08
	.byte		TIE   , Cs2 , v076
	.byte	W01
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 048   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W01
@ 049   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		EOT   , Cs2 
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v048
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 050   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v048
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 051   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W01
@ 052   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 053   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v048
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 054   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 055   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 056   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W01
@ 057   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v048
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 058   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v048
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 059   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W01
@ 060   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 061   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N03   , Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v048
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 062   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		N02   , Bn0 , v096
	.byte		N03   , Fs1 
	.byte	W01
@ 063   ----------------------------------------
	.byte	W02
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N02   , Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   , Bn0 , v048
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v096
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 , v048
	.byte	W03
	.byte	W09
	.byte		        Bn0 , v096
	.byte		N03   , Fs1 
	.byte		N68   , As1 , v076, gtp1
	.byte		N54   , Cs2 , v064, gtp1
	.byte	W01
@ 064   ----------------------------------------
	.byte	W02
	.byte	W52
	.byte	W01
	.byte	W14
	.byte	FINE

@******************************************************@
	.align	2

mus_the_great_gig_in_the_sky:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_the_great_gig_in_the_sky_pri	@ Priority
	.byte	mus_the_great_gig_in_the_sky_rev	@ Reverb.

	.word	mus_the_great_gig_in_the_sky_grp

	.word	mus_the_great_gig_in_the_sky_1
	.word	mus_the_great_gig_in_the_sky_2
	.word	mus_the_great_gig_in_the_sky_3
	.word	mus_the_great_gig_in_the_sky_4
	.word	mus_the_great_gig_in_the_sky_5
	.word	mus_the_great_gig_in_the_sky_6

	.end
