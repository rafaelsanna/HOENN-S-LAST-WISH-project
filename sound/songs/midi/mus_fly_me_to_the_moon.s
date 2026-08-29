	.include "MPlayDef.s"

	.equ	mus_fly_me_to_the_moon_grp, voicegroup_fly_me_to_the_moon
	.equ	mus_fly_me_to_the_moon_pri, 0
	.equ	mus_fly_me_to_the_moon_rev, reverb_set+50
	.equ	mus_fly_me_to_the_moon_mvl, 100
	.equ	mus_fly_me_to_the_moon_key, 0
	.equ	mus_fly_me_to_the_moon_tbs, 1
	.equ	mus_fly_me_to_the_moon_exg, 1
	.equ	mus_fly_me_to_the_moon_cmp, 1

	.section .rodata
	.global	mus_fly_me_to_the_moon
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_fly_me_to_the_moon_1:
	.byte		VOL   , 127*mus_fly_me_to_the_moon_mvl/mxv
	.byte	KEYSH , mus_fly_me_to_the_moon_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 128*mus_fly_me_to_the_moon_tbs/2
	.byte		VOICE , 32
	.byte	W96
mus_fly_me_to_the_moon_1_B1:
@ 001   ----------------------------------------
	.byte		N44   , Dn1 , v044
	.byte	W42
	.byte		N48   , An1 , v036
	.byte	W48
	.byte		N32   , Gn1 , v044, gtp2
	.byte	W06
@ 002   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N10   , Gn1 , v052
	.byte	W07
	.byte		N32   , Dn1 , v040, gtp1
	.byte	W40
	.byte	W01
	.byte		N05   
	.byte	W07
	.byte		N48   , Cn1 , v048
	.byte	W06
@ 003   ----------------------------------------
	.byte	W42
	.byte		        Cn1 , v040
	.byte	W48
	.byte		        Fn1 , v048, gtp1
	.byte	W06
@ 004   ----------------------------------------
	.byte	W42
	.byte		N40   , Cn2 , v052, gtp1
	.byte	W40
	.byte	W01
	.byte		N04   , Fn1 , v048
	.byte	W07
	.byte		N48   , Dn1 
	.byte	W06
@ 005   ----------------------------------------
	.byte	W42
	.byte		N36   , Bn0 , v048, gtp2
	.byte	W40
	.byte	W01
	.byte		N06   , Ds1 
	.byte	W07
	.byte		N48   , En1 , v052
	.byte	W06
@ 006   ----------------------------------------
	.byte	W42
	.byte		N36   , Bn0 , v052, gtp1
	.byte	W40
	.byte	W01
	.byte		N06   , As0 , v048
	.byte	W07
	.byte		N48   , An0 , v040
	.byte	W06
@ 007   ----------------------------------------
	.byte	W42
	.byte		N48   
	.byte	W48
	.byte		        Dn1 , v052
	.byte	W06
@ 008   ----------------------------------------
	.byte	W42
	.byte		N36   , An1 , v052, gtp1
	.byte	W40
	.byte	W01
	.byte		N06   , Ds1 , v048
	.byte	W07
	.byte		N32   , Dn1 , v052, gtp1
	.byte	W06
@ 009   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		N08   , En1 , v048
	.byte	W08
	.byte		        Fn1 , v052
	.byte	W08
	.byte		N12   , Gn1 , v048
	.byte	W17
	.byte		N08   , Gn1 , v040
	.byte	W07
	.byte		N24   , Dn2 , v044
	.byte	W24
	.byte		N48   , En1 , v048, gtp1
	.byte	W06
@ 010   ----------------------------------------
	.byte	W42
	.byte		N40   , Bn1 , v052, gtp1
	.byte	W40
	.byte	W01
	.byte		N04   , En1 , v048
	.byte	W07
	.byte		N44   , An0 , v044, gtp1
	.byte	W06
@ 011   ----------------------------------------
	.byte	W42
	.byte		N24   , En1 , v048, gtp1
	.byte	W24
	.byte		N17   , Ds1 , v040
	.byte	W17
	.byte		N03   , Cs1 , v044
	.byte	W07
	.byte		N48   , Dn1 , v052
	.byte	W06
@ 012   ----------------------------------------
	.byte	W42
	.byte		N36   , An1 , v052, gtp1
	.byte	W40
	.byte	W01
	.byte		N06   , Gs1 , v048
	.byte	W07
	.byte		N44   , Gn1 , v048, gtp3
	.byte	W06
@ 013   ----------------------------------------
	.byte	W42
	.byte		N42   , Dn1 , v048, gtp1
	.byte	W40
	.byte	W01
	.byte		N02   , Gn0 , v036
	.byte	W06
	.byte		N48   , Cn1 , v048, gtp1
	.byte	W07
@ 014   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		N40   , Gn1 , v052, gtp1
	.byte	W42
	.byte		N04   , Cn1 , v048
	.byte	W06
	.byte		N32   , Bn0 , v052, gtp2
	.byte	W07
@ 015   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		N02   , Bn0 , v048
	.byte	W08
	.byte		N40   , En1 , v044, gtp1
	.byte	W42
	.byte		N06   , As0 , v048
	.byte	W06
	.byte		N28   , An0 , v040
	.byte	W07
@ 016   ----------------------------------------
	.byte	W17
	.byte		N24   , Bn0 , v044, gtp2
	.byte	W24
	.byte		N28   , Cn1 , v040
	.byte	W24
	.byte		N24   , En1 
	.byte	W24
	.byte		        Dn1 , v044, gtp1
	.byte	W07
@ 017   ----------------------------------------
	.byte	W17
	.byte		        Dn2 , v036, gtp2
	.byte	W24
	.byte		        An1 , v040
	.byte	W24
	.byte		        Fn1 , v048
	.byte	W24
	.byte		        Gn1 , v040
	.byte	W07
@ 018   ----------------------------------------
	.byte	W17
	.byte		        Dn2 
	.byte	W24
	.byte	W01
	.byte		        Bn1 , v036
	.byte	W24
	.byte		N23   , Gn1 , v048
	.byte	W23
	.byte		N14   , Cn1 , v040
	.byte	W07
@ 019   ----------------------------------------
	.byte	W11
	.byte		N05   , Cn1 , v048
	.byte	W06
	.byte		N24   , Bn0 , v036
	.byte	W24
	.byte		N22   , Cn1 , v052
	.byte	W18
	.byte		N04   , Gn0 , v036
	.byte	W06
	.byte		N17   , Gn1 , v048
	.byte	W18
	.byte		N03   , Gn0 , v036
	.byte	W06
	.byte		N24   , Fn1 , v044, gtp1
	.byte	W07
@ 020   ----------------------------------------
	.byte	W17
	.byte		        Fn2 , v036, gtp2
	.byte	W24
	.byte		        Cn2 , v040
	.byte	W24
	.byte		        An1 , v048
	.byte	W24
	.byte		N12   , Dn1 
	.byte	W07
@ 021   ----------------------------------------
	.byte	W11
	.byte		N06   , Dn1 , v040
	.byte	W06
	.byte		N24   , An1 , v036
	.byte	W24
	.byte		N01   , Bn0 , v040
	.byte	W24
	.byte		N12   , Bn1 , v048
	.byte	W08
	.byte		        Fn1 , v040
	.byte	W08
	.byte		N07   , Bn0 , v048
	.byte	W08
	.byte		N18   , En1 
	.byte	W07
@ 022   ----------------------------------------
	.byte	W11
	.byte		N03   , Bn0 , v036
	.byte	W06
	.byte		N23   , Fs1 , v044
	.byte	W24
	.byte		N15   , Gs1 , v048
	.byte	W18
	.byte		N03   , Bn0 , v036
	.byte	W06
	.byte		N16   , Bn1 , v052
	.byte	W18
	.byte		N02   , Bn0 , v032
	.byte	W06
	.byte		N24   , An1 , v040, gtp3
	.byte	W07
@ 023   ----------------------------------------
	.byte	W17
	.byte		        En1 
	.byte	W24
	.byte		N20   , An0 
	.byte	W24
	.byte		N24   , An0 , v048
	.byte	W24
	.byte		N18   , Dn1 , v052
	.byte	W07
@ 024   ----------------------------------------
	.byte	W11
	.byte		N06   , An0 , v024
	.byte	W06
	.byte		N21   , An1 , v044
	.byte	W24
	.byte		N24   , Fn1 , v048
	.byte	W24
	.byte		N10   , Dn1 
	.byte	W18
	.byte		N06   , An0 , v036
	.byte	W06
	.byte		N18   , Ds1 , v052
	.byte	W07
@ 025   ----------------------------------------
	.byte	W11
	.byte		N06   , An0 , v024
	.byte	W06
	.byte		N21   , An1 , v044
	.byte	W24
	.byte		N24   , Fs1 , v048
	.byte	W24
	.byte		N10   , Ds1 
	.byte	W18
	.byte		N06   , An0 , v036
	.byte	W06
	.byte		N08   , En1 , v052
	.byte	W07
@ 026   ----------------------------------------
	.byte	W11
	.byte		N10   , En1 , v044
	.byte	W06
	.byte		N24   , Fn1 , v040
	.byte	W24
	.byte		N23   , Gn1 , v044
	.byte	W24
	.byte		N24   , As1 , v040
	.byte	W24
	.byte		N18   , An0 , v052
	.byte	W07
@ 027   ----------------------------------------
	.byte	W11
	.byte		N06   , En0 , v024
	.byte	W06
	.byte		N21   , En1 , v044
	.byte	W24
	.byte		N24   , Cs1 , v048
	.byte	W24
	.byte		N10   , An0 
	.byte	W18
	.byte		N06   , En0 , v036
	.byte	W06
	.byte		N28   , Dn1 , v040
	.byte	W07
@ 028   ----------------------------------------
	.byte	W17
	.byte		N24   , En1 , v044, gtp2
	.byte	W24
	.byte		N28   , Fn1 , v040
	.byte	W24
	.byte		N24   , An1 
	.byte	W24
	.byte		N08   , Gn1 , v052
	.byte	W07
@ 029   ----------------------------------------
	.byte	W11
	.byte		N10   , Gn1 , v044
	.byte	W06
	.byte		N24   , An1 , v040
	.byte	W24
	.byte		N23   , Bn1 , v044
	.byte	W24
	.byte		N24   , Dn2 , v040
	.byte	W24
	.byte		N28   , Cn1 
	.byte	W07
@ 030   ----------------------------------------
	.byte	W17
	.byte		N24   , Dn1 , v044, gtp2
	.byte	W24
	.byte		N28   , En1 , v040
	.byte	W24
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N18   , En1 , v048
	.byte	W07
@ 031   ----------------------------------------
	.byte	W11
	.byte		N03   , Bn0 , v036
	.byte	W06
	.byte		N23   , Fs1 , v044
	.byte	W24
	.byte		N15   , Gs1 , v048
	.byte	W18
	.byte		N03   , Bn0 , v036
	.byte	W06
	.byte		N16   , Bn1 , v052
	.byte	W18
	.byte		N02   , Bn0 , v032
	.byte	W13
@ 032   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		N13   , Dn1 , v044
	.byte	W07
@ 033   ----------------------------------------
	.byte	W11
	.byte		N04   , Dn0 , v048
	.byte	W06
	.byte		N21   , En1 , v044
	.byte	W24
	.byte		N22   , Fn1 , v032
	.byte	W24
	.byte		N16   , An1 , v040
	.byte	W18
	.byte		N06   , Dn1 , v044
	.byte	W06
	.byte		N28   , Gn1 , v040
	.byte	W07
@ 034   ----------------------------------------
	.byte	W17
	.byte		N24   , Dn2 , v040, gtp1
	.byte	W24
	.byte		        Gn2 , v044, gtp1
	.byte	W24
	.byte		N18   , Dn2 , v052
	.byte	W17
	.byte		N07   , Cs1 , v036
	.byte	W07
	.byte		N18   , Cn1 , v044
	.byte	W07
@ 035   ----------------------------------------
	.byte	W11
	.byte		N06   , Cn0 , v040
	.byte	W06
	.byte		N23   , Cn1 , v044
	.byte	W24
	.byte		N22   , Cn1 , v052
	.byte	W18
	.byte		N04   , Gn0 , v036
	.byte	W06
	.byte		N17   , Gn1 , v048
	.byte	W18
	.byte		N03   , Gn0 , v036
	.byte	W06
	.byte		N28   , Fn1 , v040
	.byte	W07
@ 036   ----------------------------------------
	.byte	W17
	.byte		N24   , Cn2 , v040, gtp1
	.byte	W24
	.byte		        Fn2 , v044, gtp1
	.byte	W24
	.byte		N18   , Cn2 , v052
	.byte	W17
	.byte		N07   , Ds1 , v036
	.byte	W07
	.byte		N28   , Dn1 , v040
	.byte	W07
@ 037   ----------------------------------------
	.byte	W17
	.byte		N24   , An1 
	.byte	W24
	.byte		N01   , Bn0 
	.byte	W24
	.byte		N12   , Bn1 , v048
	.byte	W08
	.byte		        Fn1 , v040
	.byte	W08
	.byte		N07   , Bn0 , v048
	.byte	W08
	.byte		N28   , En1 , v040
	.byte	W07
@ 038   ----------------------------------------
	.byte	W17
	.byte		N24   , Fs1 , v044, gtp2
	.byte	W24
	.byte		N28   , Gs1 , v040
	.byte	W24
	.byte		N24   , Bn1 
	.byte	W24
	.byte		N22   , An0 , v044
	.byte	W07
@ 039   ----------------------------------------
	.byte	W17
	.byte		N24   , Gs0 , v040
	.byte	W24
	.byte		        An0 , v044, gtp3
	.byte	W24
	.byte		N21   , Cs1 , v040
	.byte	W24
	.byte		N08   , Dn1 , v052
	.byte	W07
@ 040   ----------------------------------------
	.byte	W11
	.byte		N10   , Dn1 , v044
	.byte	W06
	.byte		N24   , En1 , v040
	.byte	W24
	.byte		N23   , Fn1 , v044
	.byte	W24
	.byte		N24   , An1 , v040
	.byte	W24
	.byte		N14   , Dn1 
	.byte	W07
@ 041   ----------------------------------------
	.byte	W11
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N24   , Fs1 , v036
	.byte	W24
	.byte		N22   , Gn1 , v052
	.byte	W18
	.byte		N04   , Dn1 , v036
	.byte	W06
	.byte		N17   , Dn2 , v048
	.byte	W17
	.byte		N03   , Dn1 , v036
	.byte	W07
	.byte		N18   , En1 , v052
	.byte	W07
@ 042   ----------------------------------------
	.byte	W11
	.byte		N06   , Bn0 , v024
	.byte	W06
	.byte		N21   , Bn1 , v044
	.byte	W24
	.byte		N24   , Gn1 , v048
	.byte	W24
	.byte		N10   , En1 
	.byte	W18
	.byte		N06   , Bn0 , v036
	.byte	W06
	.byte		N08   , An0 , v052
	.byte	W07
@ 043   ----------------------------------------
	.byte	W11
	.byte		N10   , An0 , v044
	.byte	W06
	.byte		N24   , Bn0 , v040
	.byte	W24
	.byte		N23   , Cn1 , v044
	.byte	W24
	.byte		N24   , En1 , v040
	.byte	W24
	.byte		N28   , Dn1 
	.byte	W07
@ 044   ----------------------------------------
	.byte	W17
	.byte		N24   , En1 , v044, gtp2
	.byte	W24
	.byte		N28   , Fn1 , v040
	.byte	W24
	.byte		N24   , An1 
	.byte	W24
	.byte		        Gn1 
	.byte	W07
@ 045   ----------------------------------------
	.byte	W17
	.byte		        Dn2 
	.byte	W24
	.byte		        Bn1 , v036
	.byte	W24
	.byte		N23   , Gn1 , v048
	.byte	W24
	.byte		N24   , Cn2 , v044, gtp3
	.byte	W07
@ 046   ----------------------------------------
	.byte	W17
	.byte		        Cn1 , v040, gtp1
	.byte	W24
	.byte		        En1 , v040, gtp1
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		N22   , Bn0 , v052
	.byte	W07
@ 047   ----------------------------------------
	.byte	W10
	.byte		N04   , Fs0 , v036
	.byte	W07
	.byte		N17   , Fs1 , v048
	.byte	W17
	.byte		N03   , Fs0 , v036
	.byte	W07
	.byte		N12   , En1 , v048
	.byte	W18
	.byte		N06   , En1 , v040
	.byte	W06
	.byte		N24   , As1 , v036
	.byte	W24
	.byte		N18   , An0 , v052
	.byte	W07
@ 048   ----------------------------------------
	.byte	W11
	.byte		N06   , En0 , v024
	.byte	W06
	.byte		N21   , En1 , v044
	.byte	W24
	.byte		N24   , Cn1 , v048
	.byte	W24
	.byte		N10   , An0 
	.byte	W18
	.byte		N06   , En0 , v036
	.byte	W06
	.byte		N24   , Dn1 , v044
	.byte	W07
@ 049   ----------------------------------------
	.byte	W17
	.byte		        En1 , v040
	.byte	W24
	.byte		        Fn1 , v036
	.byte	W24
	.byte		N16   , An1 , v048
	.byte	W17
	.byte		N07   , Gs1 , v040
	.byte	W07
	.byte		N28   , Gn1 
	.byte	W07
@ 050   ----------------------------------------
	.byte	W17
	.byte		N24   , An1 , v044, gtp2
	.byte	W24
	.byte		N28   , Bn1 , v040
	.byte	W24
	.byte		N24   , Dn2 
	.byte	W24
	.byte		N18   , Cn1 , v044
	.byte	W07
@ 051   ----------------------------------------
	.byte	W10
	.byte		N06   , Cn0 , v040
	.byte	W07
	.byte		N23   , Cn1 , v044
	.byte	W24
	.byte		N20   , Cn1 , v040
	.byte	W24
	.byte		N24   , Cn1 , v048
	.byte	W24
	.byte		N18   , Fn1 , v052
	.byte	W07
@ 052   ----------------------------------------
	.byte	W11
	.byte		N06   , Cn1 , v024
	.byte	W06
	.byte		N21   , Cn2 , v044
	.byte	W24
	.byte		N24   , An1 , v048
	.byte	W24
	.byte		N10   , Fn1 
	.byte	W17
	.byte		N06   , Cn1 , v036
	.byte	W07
	.byte		N21   , Dn1 , v048
	.byte	W07
@ 053   ----------------------------------------
	.byte	W09
	.byte		N06   , Dn0 , v032
	.byte	W08
	.byte		N24   , Cn1 , v048
	.byte	W24
	.byte		N14   , Bn0 , v040
	.byte	W17
	.byte		N05   , Bn0 , v048
	.byte	W07
	.byte		N24   , Ds1 , v036
	.byte	W24
	.byte		        En1 , v044, gtp1
	.byte	W07
@ 054   ----------------------------------------
	.byte	W17
	.byte		        En2 , v036, gtp2
	.byte	W24
	.byte		        Bn1 , v040
	.byte	W24
	.byte		        Gs1 , v048
	.byte	W24
	.byte		N20   , An0 , v040
	.byte	W07
@ 055   ----------------------------------------
	.byte	W17
	.byte		N24   , An0 , v048
	.byte	W24
	.byte		N22   , An0 , v052
	.byte	W17
	.byte		N04   , En0 , v036
	.byte	W07
	.byte		N17   , En1 , v048
	.byte	W17
	.byte		N03   , En0 , v036
	.byte	W07
	.byte		N13   , Dn1 , v044
	.byte	W07
@ 056   ----------------------------------------
	.byte	W10
	.byte		N04   , Dn0 , v048
	.byte	W07
	.byte		N21   , En1 , v044
	.byte	W24
	.byte		N22   , Fn1 , v032
	.byte	W24
	.byte		N16   , An1 , v040
	.byte	W17
	.byte		N06   , Dn1 , v044
	.byte	W07
	.byte		N18   , Ds1 , v048
	.byte	W07
@ 057   ----------------------------------------
	.byte	W10
	.byte		N03   , An0 , v036
	.byte	W07
	.byte		N23   , Fn1 , v044
	.byte	W24
	.byte		N15   , Fs1 , v048
	.byte	W17
	.byte		N03   , An0 , v036
	.byte	W07
	.byte		N16   , An1 , v052
	.byte	W17
	.byte		N02   , An0 , v032
	.byte	W07
	.byte		N12   , En1 , v048
	.byte	W07
@ 058   ----------------------------------------
	.byte	W10
	.byte		N08   
	.byte	W07
	.byte		N24   , Dn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        As0 , v044
	.byte	W24
	.byte		N28   , An0 , v040
	.byte	W07
@ 059   ----------------------------------------
	.byte	W17
	.byte		N24   , En1 , v040, gtp1
	.byte	W24
	.byte		        An1 , v044, gtp1
	.byte	W24
	.byte		N18   , En1 , v052
	.byte	W16
	.byte		N07   , Ds1 , v036
	.byte	W08
	.byte		N18   , Dn1 , v052
	.byte	W07
@ 060   ----------------------------------------
	.byte	W10
	.byte		N06   , An0 , v024
	.byte	W06
	.byte		N21   , An1 , v044
	.byte	W24
	.byte		N24   , Fn1 , v048
	.byte	W24
	.byte		N10   , Dn1 
	.byte	W18
	.byte		N06   , An0 , v036
	.byte	W06
	.byte		N24   , Gn1 , v040
	.byte	W08
@ 061   ----------------------------------------
	.byte	W16
	.byte		        Dn2 
	.byte	W24
	.byte	W01
	.byte		        Bn1 , v036
	.byte	W24
	.byte		N23   , Gn1 , v048
	.byte	W23
	.byte		N24   , Cn1 , v044, gtp1
	.byte	W08
@ 062   ----------------------------------------
	.byte	W16
	.byte		        Cn2 , v036, gtp2
	.byte	W24
	.byte		        Gn1 , v040
	.byte	W24
	.byte		        En1 , v048
	.byte	W24
	.byte		N12   
	.byte	W08
@ 063   ----------------------------------------
	.byte	W10
	.byte		N08   
	.byte	W06
	.byte		N24   , Dn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        Bn0 , v044
	.byte	W24
	.byte		N48   , As0 , v052, gtp1
	.byte	W08
@ 064   ----------------------------------------
	.byte	W42
	.byte		N42   , Fn1 , v048
	.byte	W44
	.byte	W02
	.byte		N01   , Dn1 , v052
	.byte	W08
	.byte	GOTO
	 .word	mus_fly_me_to_the_moon_1_B1
mus_fly_me_to_the_moon_1_B2:
@ 065   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_fly_me_to_the_moon_2:
	.byte		VOL   , 127*mus_fly_me_to_the_moon_mvl/mxv
	.byte	KEYSH , mus_fly_me_to_the_moon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W88
	.byte	W01
	.byte		N96   , Fn2 , v036
	.byte		N96   , Cn3 
	.byte		N96   , Dn3 
	.byte		N96   , An3 
	.byte	W07
mus_fly_me_to_the_moon_2_B1:
@ 001   ----------------------------------------
	.byte	W90
	.byte		N96   , Fn2 , v036
	.byte		N96   , Bn2 
	.byte		N96   , Dn3 
	.byte		N96   , An3 
	.byte	W06
@ 002   ----------------------------------------
	.byte	W90
	.byte		N48   , En2 
	.byte		N48   , Bn2 
	.byte		N48   , Dn3 
	.byte		N48   , Gn3 
	.byte	W06
@ 003   ----------------------------------------
	.byte	W42
	.byte		        En2 
	.byte		N48   , As2 
	.byte		N48   , Dn3 
	.byte		N48   , An3 
	.byte	W48
	.byte		N96   , En2 
	.byte		N96   , Gn2 
	.byte		N96   , An2 
	.byte		N96   , Cn3 
	.byte	W06
@ 004   ----------------------------------------
	.byte	W90
	.byte		N48   , Fn2 
	.byte		N48   , An2 
	.byte		N48   , Cn3 
	.byte		N48   , En3 
	.byte	W06
@ 005   ----------------------------------------
	.byte	W42
	.byte		N36   , An2 , v036, gtp3
	.byte		N36   , Dn3 , v036, gtp3
	.byte		N36   , Fn3 , v036, gtp3
	.byte		N36   , Bn3 , v036, gtp3
	.byte	W40
	.byte	W01
	.byte		TIE   , Gs2 
	.byte		TIE   , Dn3 
	.byte		TIE   , Fn3 
	.byte		TIE   , Cn4 
	.byte	W13
@ 006   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		EOT   , Gs2 
	.byte		        Dn3 
	.byte		        Fn3 
	.byte		        Cn4 
	.byte	W01
	.byte		N48   , Gn2 
	.byte		N48   , Cn3 
	.byte		N48   , En3 
	.byte		N48   , An3 
	.byte	W06
@ 007   ----------------------------------------
	.byte	W42
	.byte		        Gn2 
	.byte		N48   , Cs3 
	.byte		N48   , Fn3 
	.byte		N48   , As3 
	.byte	W48
	.byte		N96   , Fn2 
	.byte		N96   , Cn3 
	.byte		N96   , Dn3 
	.byte		N96   , An3 
	.byte	W06
@ 008   ----------------------------------------
	.byte	W90
	.byte		N48   , Fn2 
	.byte		N48   , Cn3 
	.byte		N48   , Dn3 
	.byte		N48   , An3 
	.byte	W06
@ 009   ----------------------------------------
	.byte	W42
	.byte		        Fn2 
	.byte		N48   , An2 
	.byte		N48   , Bn2 
	.byte		N48   , En3 
	.byte	W48
	.byte		N96   , Gn2 
	.byte		N96   , Dn3 
	.byte		N96   , En3 
	.byte		N96   , Bn3 
	.byte	W06
@ 010   ----------------------------------------
	.byte	W90
	.byte		        Gn2 
	.byte		N96   , Cn3 
	.byte		N96   , En3 
	.byte		N96   , An3 
	.byte	W06
@ 011   ----------------------------------------
	.byte	W90
	.byte		N84   , Fn2 , v036, gtp3
	.byte		N84   , An2 , v036, gtp3
	.byte		N84   , Cn3 , v036, gtp3
	.byte		N84   , Dn3 , v036, gtp3
	.byte	W06
@ 012   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte		TIE   , Fn2 
	.byte		TIE   , An2 
	.byte		TIE   , Bn2 
	.byte		TIE   , En3 
	.byte	W13
@ 013   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		EOT   , Fn2 
	.byte		        An2 
	.byte		        Bn2 
	.byte		        En3 
	.byte	W01
	.byte		N84   , En2 , v036, gtp3
	.byte		N84   , Bn2 , v036, gtp3
	.byte		N84   , Dn3 , v036, gtp3
	.byte		N84   , Gn3 , v036, gtp3
	.byte	W06
@ 014   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte		N44   , An2 , v036, gtp2
	.byte		N44   , Bn2 , v036, gtp2
	.byte		N44   , Dn3 , v036, gtp2
	.byte		N44   , Fs3 , v036, gtp2
	.byte	W13
@ 015   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		        Gs2 , v036, gtp2
	.byte		N44   , Dn3 , v036, gtp2
	.byte		N44   , Gn3 , v036, gtp2
	.byte		N44   , Cn4 , v036, gtp2
	.byte	W48
	.byte		TIE   , Gn2 
	.byte		TIE   , An2 
	.byte		TIE   , Cn3 
	.byte		TIE   , En3 
	.byte	W13
@ 016   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		EOT   , Gn2 
	.byte		        An2 
	.byte		        Cn3 
	.byte		        En3 
	.byte	W07
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W42
	.byte		N36   , En2 , v036, gtp3
	.byte		N36   , As2 , v036, gtp3
	.byte		N36   , Dn3 , v036, gtp3
	.byte		N36   , An3 , v036, gtp3
	.byte	W54
@ 020   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N44   , En2 , v036, gtp1
	.byte		N44   , An2 , v036, gtp1
	.byte		N44   , Cn3 , v036, gtp1
	.byte		N44   , Gn3 , v036, gtp1
	.byte	W48
	.byte		N54   , Fn2 
	.byte		N54   , Cn3 
	.byte		N54   , Dn3 
	.byte		N54   , An3 
	.byte	W13
@ 021   ----------------------------------------
	.byte	W42
	.byte		N48   , An2 
	.byte		N48   , Bn2 
	.byte		N48   , Dn3 
	.byte		N48   , Fn3 
	.byte	W48
	.byte		N96   , Gs2 
	.byte		N96   , Dn3 
	.byte		N96   , Fn3 
	.byte		N96   , Bn3 
	.byte	W06
@ 022   ----------------------------------------
	.byte	W90
	.byte		N48   , Gn2 
	.byte		N48   , Cn3 
	.byte		N48   , En3 
	.byte		N48   , An3 
	.byte	W06
@ 023   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		N30   , En2 , v024
	.byte		N30   , Gn2 , v036
	.byte		N30   , An2 , v024
	.byte		N30   , Cs3 , v028
	.byte		N30   , An3 , v032
	.byte		N30   , An4 
	.byte	W30
	.byte	W01
	.byte		N84   , Fn2 , v036, gtp3
	.byte		N84   , An2 , v036, gtp3
	.byte		N84   , Cn3 , v036, gtp3
	.byte		N84   , Dn3 , v036, gtp3
	.byte	W06
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N44   , Gn2 , v036, gtp1
	.byte		N44   , Dn3 , v036, gtp1
	.byte		N44   , En3 , v036, gtp1
	.byte		N44   , As3 , v036, gtp1
	.byte	W60
	.byte	W01
@ 027   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N54   , Gn2 
	.byte		N54   , Cs3 
	.byte		N54   , En3 
	.byte		N54   , Cn4 
	.byte	W60
	.byte	W01
@ 028   ----------------------------------------
	.byte	W90
	.byte		N84   , Fn2 , v036, gtp3
	.byte		N84   , An2 , v036, gtp3
	.byte		N84   , Bn2 , v036, gtp3
	.byte		N84   , En3 , v036, gtp3
	.byte	W06
@ 029   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte		TIE   , En2 
	.byte		TIE   , An2 
	.byte		TIE   , Dn3 
	.byte		TIE   , Gn3 
	.byte	W13
@ 030   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		EOT   , En2 
	.byte		        An2 
	.byte		        Dn3 
	.byte		        Gn3 
	.byte	W07
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N44   , Fn2 , v036, gtp1
	.byte		N44   , An2 , v036, gtp1
	.byte		N44   , Cn3 , v036, gtp1
	.byte		N44   , En3 , v036, gtp1
	.byte	W48
	.byte		TIE   , Fn2 
	.byte		TIE   , An2 
	.byte		TIE   , Bn2 
	.byte		TIE   , En3 
	.byte	W13
@ 034   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		EOT   , Fn2 
	.byte		        An2 
	.byte		        Bn2 
	.byte		        En3 
	.byte	W01
	.byte		N48   , En2 
	.byte		N48   , Bn2 
	.byte		N48   , Dn3 
	.byte		N48   , Gn3 
	.byte	W06
@ 035   ----------------------------------------
	.byte	W42
	.byte		N36   , En2 , v036, gtp3
	.byte		N36   , As2 , v036, gtp3
	.byte		N36   , Dn3 , v036, gtp3
	.byte		N36   , Gn3 , v036, gtp3
	.byte	W40
	.byte	W01
	.byte		N92   , En2 , v036, gtp2
	.byte		N92   , An2 , v036, gtp2
	.byte		N92   , Cn3 , v036, gtp2
	.byte		N92   , Gn3 , v036, gtp2
	.byte	W13
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N44   , Fn2 , v024, gtp2
	.byte		N44   , An2 , v032, gtp2
	.byte		N44   , Bn2 , v020, gtp2
	.byte		N44   , Dn3 , v016, gtp2
	.byte		N22   , An3 , v040
	.byte		N20   , Dn4 , v036
	.byte	W24
	.byte	W01
	.byte		N21   , Fn3 
	.byte		N21   , Bn3 
	.byte	W23
	.byte		N92   , Gs2 , v036, gtp2
	.byte		N92   , Dn3 , v036, gtp2
	.byte		N92   , Fn3 , v036, gtp2
	.byte		N92   , Cn4 , v036, gtp2
	.byte	W13
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W42
	.byte		N36   , Gn2 , v036, gtp3
	.byte		N36   , Cs3 , v036, gtp3
	.byte		N36   , Fn3 , v036, gtp3
	.byte		N36   , As3 , v036, gtp3
	.byte	W40
	.byte	W01
	.byte		TIE   , Fn2 
	.byte		TIE   , An2 
	.byte		TIE   , Cn3 
	.byte		TIE   , Dn3 
	.byte	W13
@ 040   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		EOT   , Fn2 
	.byte		        An2 
	.byte		        Cn3 
	.byte		        Dn3 
	.byte	W01
	.byte		N36   , Fn2 , v036, gtp3
	.byte		N36   , Cn3 , v036, gtp3
	.byte		N36   , Dn3 , v036, gtp3
	.byte		N36   , An3 , v036, gtp3
	.byte	W06
@ 041   ----------------------------------------
	.byte	W90
	.byte		N84   , Gn2 , v036, gtp3
	.byte		N84   , Bn2 , v036, gtp3
	.byte		N84   , Dn3 , v036, gtp3
	.byte		N84   , En3 , v036, gtp3
	.byte	W06
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W18
	.byte		N13   , Gn2 , v028
	.byte		N13   , Cn3 
	.byte		N13   , En3 
	.byte		N13   , An3 
	.byte	W17
	.byte		N07   , Gn2 
	.byte		N07   , Cn3 
	.byte		N07   , En3 
	.byte		N07   , An3 
	.byte	W07
	.byte		N11   , Gn2 , v032
	.byte		N11   , Cn3 
	.byte		N11   , En3 
	.byte		N11   , An3 
	.byte	W17
	.byte		N07   , Gn2 , v036
	.byte		N07   , Cn3 
	.byte		N07   , En3 
	.byte		N07   , An3 
	.byte	W07
	.byte		N11   , Gn2 , v044
	.byte		N11   , Cn3 
	.byte		N11   , En3 
	.byte		N11   , An3 
	.byte	W30
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N54   , Fn2 , v036
	.byte		N54   , An2 
	.byte		N54   , Bn2 
	.byte		N54   , Dn3 
	.byte	W54
	.byte	W01
	.byte		N96   , En2 
	.byte		N96   , Bn2 
	.byte		N96   , Dn3 
	.byte		N96   , Gn3 
	.byte	W06
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N54   , Gs2 
	.byte		N54   , Cn3 
	.byte		N54   , Dn3 
	.byte		N54   , Gn3 
	.byte	W54
	.byte	W01
	.byte		N84   , Gn2 , v036, gtp3
	.byte		N84   , Cn3 , v036, gtp3
	.byte		N84   , En3 , v036, gtp3
	.byte		N84   , An3 , v036, gtp3
	.byte	W06
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte		N92   , Fn2 , v036, gtp2
	.byte		N92   , An2 , v036, gtp2
	.byte		N92   , Bn2 , v036, gtp2
	.byte		N92   , En3 , v036, gtp2
	.byte	W13
@ 050   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte		N54   , En2 
	.byte		N54   , Gn2 
	.byte		N54   , Bn2 
	.byte		N54   , Dn3 
	.byte	W13
@ 051   ----------------------------------------
	.byte	W60
	.byte		N30   , Gn2 , v024
	.byte		N30   , As2 , v036
	.byte		N30   , Dn3 , v024
	.byte		N30   , En3 , v028
	.byte		N30   , Dn4 , v032
	.byte		N30   , Dn5 
	.byte	W30
	.byte		N96   , En2 , v036
	.byte		N96   , An2 
	.byte		N96   , Cn3 
	.byte		N96   , Gn3 
	.byte	W06
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W60
	.byte		N30   , Fn2 , v024
	.byte		N30   , An2 , v036
	.byte		N30   , Bn2 , v024
	.byte		N30   , Dn3 , v028
	.byte		N30   , Bn3 , v032
	.byte		N30   , Bn4 
	.byte	W30
	.byte		N96   , Gs2 , v036
	.byte		N96   , Dn3 
	.byte		N96   , Fn3 
	.byte		N96   , Cn4 
	.byte	W06
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N44   , Gn2 , v036, gtp2
	.byte		N44   , Cs3 , v036, gtp2
	.byte		N44   , Fn3 , v036, gtp2
	.byte		N44   , As3 , v036, gtp2
	.byte	W48
	.byte		N92   , Fn2 , v036, gtp2
	.byte		N92   , Cn3 , v036, gtp2
	.byte		N92   , En3 , v036, gtp2
	.byte		N92   , An3 , v036, gtp2
	.byte	W13
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W90
	.byte		N96   , Gn2 
	.byte		N96   , As2 
	.byte		N96   , Dn3 
	.byte		N96   , En3 
	.byte	W06
@ 058   ----------------------------------------
	.byte	W90
	.byte		N84   , Gn2 , v036, gtp3
	.byte		N84   , As2 , v036, gtp3
	.byte		N84   , Cs3 , v036, gtp3
	.byte		N84   , Fn3 , v036, gtp3
	.byte	W06
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W90
	.byte		N96   , Fn2 
	.byte		N96   , Bn2 
	.byte		N96   , En3 
	.byte		N96   , An3 
	.byte	W06
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W90
	.byte		        Gs2 
	.byte		N96   , Dn3 
	.byte		N96   , Fn3 
	.byte		N96   , Cn4 
	.byte	W06
@ 063   ----------------------------------------
	.byte	W90
	.byte		N01   , Gs2 
	.byte		N01   , Cs3 
	.byte		N01   , Fn3 
	.byte		N01   , As3 
	.byte	W06
@ 064   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_fly_me_to_the_moon_2_B1
mus_fly_me_to_the_moon_2_B2:
@ 065   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_fly_me_to_the_moon_3:
	.byte		VOL   , 127*mus_fly_me_to_the_moon_mvl/mxv
	.byte	KEYSH , mus_fly_me_to_the_moon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte	W04
	.byte		N18   , Cn4 , v076
	.byte	W22
	.byte		N10   , Bn3 , v056
	.byte	W13
	.byte		N14   , An3 , v060
	.byte	W28
	.byte		N07   , Gn3 , v064
	.byte	W24
	.byte		N40   , Fn3 , v064, gtp1
	.byte	W05
mus_fly_me_to_the_moon_3_B1:
@ 001   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		N10   , Gn3 , v072
	.byte	W15
	.byte		N13   , An3 , v068
	.byte	W17
	.byte		N12   , Cn4 , v072
	.byte	W18
	.byte		N42   , Bn3 
	.byte	W13
@ 002   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte		N09   , An3 , v080
	.byte	W13
	.byte		N16   , Gn3 , v064
	.byte	W17
	.byte		N13   , Fn3 
	.byte	W16
	.byte		N88   , En3 , v076
	.byte	W13
@ 003   ----------------------------------------
	.byte	W92
	.byte		N32   , An3 
	.byte	W04
@ 004   ----------------------------------------
	.byte	W36
	.byte	W02
	.byte		N07   , Gn3 , v080
	.byte	W11
	.byte		N17   , Fn3 , v064
	.byte	W17
	.byte		N10   , En3 , v072
	.byte	W18
	.byte		N11   , Dn3 , v064
	.byte	W12
@ 005   ----------------------------------------
	.byte	W10
	.byte		N15   , En3 , v076
	.byte	W23
	.byte		N19   , Fn3 , v080
	.byte	W24
	.byte	W01
	.byte		N24   , An3 , v076, gtp2
	.byte	W32
	.byte	W02
	.byte		N12   , Gs3 , v080
	.byte	W04
@ 006   ----------------------------------------
	.byte	W20
	.byte		N14   , Fn3 
	.byte	W15
	.byte		N15   , En3 , v076
	.byte	W22
	.byte		N19   , Dn3 , v072
	.byte	W24
	.byte	W01
	.byte		N78   , Cn3 , v076
	.byte	W14
@ 007   ----------------------------------------
	.byte	W84
	.byte	W01
	.byte		N07   , Cs3 , v092
	.byte	W09
	.byte		N18   , Dn3 , v068
	.byte	W02
@ 008   ----------------------------------------
	.byte	W13
	.byte		N09   , An3 , v076
	.byte	W21
	.byte		N66   , An3 , v072
	.byte	W60
	.byte	W02
@ 009   ----------------------------------------
	.byte	W20
	.byte		N32   , Cn4 , v080, gtp1
	.byte	W36
	.byte	W02
	.byte		N30   , Bn3 , v076, gtp1
	.byte	W32
	.byte	W03
	.byte		TIE   , Gn3 , v072
	.byte	W03
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W56
	.byte	W02
	.byte		EOT   
	.byte	W24
	.byte	W02
	.byte		N04   , Cn3 
	.byte	W09
	.byte		N12   , Cn3 , v068
	.byte	W03
@ 012   ----------------------------------------
	.byte	W13
	.byte		N09   , Fn3 , v072
	.byte	W24
	.byte		N92   , Fn3 , v080, gtp3
	.byte	W56
	.byte	W03
@ 013   ----------------------------------------
	.byte	W44
	.byte		N09   , An3 , v076
	.byte	W23
	.byte		N12   , Gn3 
	.byte	W24
	.byte	W01
	.byte		N32   , Fn3 , v076, gtp1
	.byte	W04
@ 014   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		TIE   , En3 , v080
	.byte	W60
	.byte	W02
@ 015   ----------------------------------------
	.byte	W68
	.byte		EOT   
	.byte	W24
	.byte	W01
	.byte		N14   , Cn4 
	.byte	W03
@ 016   ----------------------------------------
	.byte	W19
	.byte		N07   , Bn3 , v060
	.byte	W14
	.byte		N10   , An3 , v076
	.byte	W28
	.byte	W01
	.byte		N08   , Gn3 
	.byte	W24
	.byte		N42   , Fn3 , v076, gtp1
	.byte	W10
@ 017   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte		N05   , Gn3 
	.byte	W10
	.byte		N11   , An3 , v060
	.byte	W17
	.byte		N23   , Cn4 
	.byte	W28
	.byte	W01
	.byte		N11   , Bn3 , v080
	.byte	W03
@ 018   ----------------------------------------
	.byte	W19
	.byte		N09   , An3 , v064
	.byte	W14
	.byte		N11   , Gn3 , v080
	.byte	W28
	.byte		N10   , Fn3 , v072
	.byte	W24
	.byte	W01
	.byte		N92   , En3 , v080, gtp2
	.byte	W10
@ 019   ----------------------------------------
	.byte	W92
	.byte		N12   , An3 , v076
	.byte	W04
@ 020   ----------------------------------------
	.byte	W20
	.byte		N09   , Gn3 , v072
	.byte	W15
	.byte		N10   , Fn3 
	.byte	W24
	.byte	W03
	.byte		N08   , En3 , v084
	.byte	W19
	.byte		N11   , Dn3 , v068
	.byte	W15
@ 021   ----------------------------------------
	.byte	W14
	.byte		N07   , En3 , v084
	.byte	W19
	.byte		N13   , Fn3 , v080
	.byte	W24
	.byte	W01
	.byte		N17   , An3 , v072
	.byte	W24
	.byte		N15   , Gs3 , v084
	.byte	W14
@ 022   ----------------------------------------
	.byte	W11
	.byte		N30   , Fn3 , v068
	.byte	W32
	.byte	W01
	.byte		N13   , En3 , v060
	.byte	W24
	.byte	W01
	.byte		N14   , Dn3 , v076
	.byte	W24
	.byte		N68   , Cn3 , v064, gtp1
	.byte	W03
@ 023   ----------------------------------------
	.byte	W84
	.byte		N06   , Cs3 , v084
	.byte	W10
	.byte		N17   , Dn3 , v064
	.byte	W02
@ 024   ----------------------------------------
	.byte	W12
	.byte		N08   , An3 , v068
	.byte	W24
	.byte	W02
	.byte		TIE   , An3 , v072
	.byte	W56
	.byte	W02
@ 025   ----------------------------------------
	.byte	W36
	.byte	W03
	.byte		EOT   
	.byte	W04
	.byte		N12   , Cn4 , v080
	.byte	W24
	.byte		N14   , Bn3 , v076
	.byte	W15
	.byte		TIE   , En4 
	.byte	W14
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W24
	.byte	W02
	.byte		N04   
	.byte	W10
	.byte		N12   , En4 , v072
	.byte	W03
@ 028   ----------------------------------------
	.byte	W14
	.byte		N09   , Cn4 , v076
	.byte	W24
	.byte		TIE   
	.byte	W56
	.byte	W02
@ 029   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte		N13   , Dn4 , v080
	.byte	W24
	.byte		N10   , Gn3 , v048
	.byte	W11
	.byte		TIE   , Cn4 , v080
	.byte	W04
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W78
	.byte		EOT   
	.byte	W18
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
	.byte	W92
	.byte	W02
	.byte		N18   , Cn4 , v076
	.byte	W02
@ 064   ----------------------------------------
	.byte	W20
	.byte		N10   , Bn3 , v056
	.byte	W14
	.byte		N14   , An3 , v060
	.byte	W28
	.byte		N07   , Gn3 , v064
	.byte	W23
	.byte		N01   , Fn3 
	.byte	W11
	.byte	GOTO
	 .word	mus_fly_me_to_the_moon_3_B1
mus_fly_me_to_the_moon_3_B2:
@ 065   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_fly_me_to_the_moon_4:
	.byte		VOL   , 127*mus_fly_me_to_the_moon_mvl/mxv
	.byte	KEYSH , mus_fly_me_to_the_moon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 61
	.byte	W96
mus_fly_me_to_the_moon_4_B1:
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
	.byte	W42
	.byte		N32   , Fn3 , v127, gtp1
	.byte	W36
	.byte	W03
	.byte		N07   , Cs3 
	.byte	W11
	.byte		N11   , En3 , v112
	.byte	W04
@ 033   ----------------------------------------
	.byte	W10
	.byte		N09   , Fn3 , v120
	.byte	W10
	.byte		N11   , En3 , v104
	.byte	W13
	.byte		N09   , Cn3 , v120
	.byte	W11
	.byte		N10   , An2 , v080
	.byte	W13
	.byte		N09   , Fn2 , v127
	.byte	W11
	.byte		N13   , En2 , v088
	.byte	W14
	.byte		N06   , Dn2 , v064
	.byte	W09
	.byte		N15   , Gn2 , v120
	.byte	W05
@ 034   ----------------------------------------
	.byte	W11
	.byte		N06   , Fn2 , v048
	.byte	W08
	.byte		N12   , As2 , v127
	.byte	W15
	.byte		N10   , Gs2 
	.byte	W10
	.byte		        Ds2 , v104
	.byte	W13
	.byte		N13   , Bn1 
	.byte	W10
	.byte		N09   , As1 , v092
	.byte	W14
	.byte		N10   , Gs1 , v104
	.byte	W09
	.byte		N12   , Dn2 , v127
	.byte	W06
@ 035   ----------------------------------------
	.byte	W10
	.byte		N07   , Bn1 , v088
	.byte	W08
	.byte		N05   , Cn2 
	.byte	W07
	.byte		N10   , En2 , v068
	.byte	W09
	.byte		N04   , Gn2 , v120
	.byte	W15
	.byte		N08   , As2 , v080
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W05
	.byte		N11   , En2 , v084
	.byte	W07
	.byte		N15   , Dn2 , v104
	.byte	W16
	.byte		N10   , Gn2 , v127
	.byte	W13
@ 036   ----------------------------------------
	.byte	W12
	.byte		        En2 , v124
	.byte	W23
	.byte		        Dn2 , v120
	.byte	W12
	.byte		N11   , Cn2 , v056
	.byte	W12
	.byte		N07   , Dn2 , v100
	.byte	W09
	.byte		N13   , En2 , v096
	.byte	W15
	.byte		N06   , Gn2 , v120
	.byte	W09
	.byte		N11   , An2 , v108
	.byte	W04
@ 037   ----------------------------------------
	.byte	W10
	.byte		N10   , Fn2 , v116
	.byte	W10
	.byte		N15   , Dn2 , v084
	.byte	W14
	.byte		N06   , Cn2 , v072
	.byte	W10
	.byte		N10   , Bn1 , v096
	.byte	W14
	.byte		        Dn2 , v108
	.byte	W09
	.byte		N12   , En2 , v120
	.byte	W15
	.byte		N10   , Fn2 , v127
	.byte	W09
	.byte		N12   , Gs2 , v116
	.byte	W05
@ 038   ----------------------------------------
	.byte	W09
	.byte		N06   , An2 , v092
	.byte	W03
	.byte		N11   , Gs2 , v100
	.byte	W07
	.byte		N14   , Fs2 , v092
	.byte	W16
	.byte		N09   , Fn2 , v127
	.byte	W09
	.byte		N14   , En2 , v092
	.byte	W14
	.byte		N08   , Gs2 , v127
	.byte	W11
	.byte		        Cn3 , v108
	.byte	W13
	.byte		N09   , En3 , v127
	.byte	W10
	.byte		N12   , An3 , v104
	.byte	W04
@ 039   ----------------------------------------
	.byte	W11
	.byte		N07   , Gs3 , v108
	.byte	W11
	.byte		N10   , Gn3 , v088
	.byte	W14
	.byte		N08   , Fs3 , v108
	.byte	W10
	.byte		N11   , Fn3 , v084
	.byte	W14
	.byte		N08   , Cs3 , v068
	.byte	W08
	.byte		N14   , En3 , v084
	.byte	W28
@ 040   ----------------------------------------
	.byte	W56
	.byte	W02
	.byte		N08   , Dn3 , v060
	.byte	W09
	.byte		N14   , Fn3 , v072
	.byte	W15
	.byte		N09   , Gs3 , v120
	.byte	W12
	.byte		N07   , Fn3 , v056
	.byte	W02
@ 041   ----------------------------------------
	.byte	W09
	.byte		N10   , Fs3 , v100
	.byte	W12
	.byte		        Gn3 , v104
	.byte	W14
	.byte		        Bn2 , v076
	.byte	W11
	.byte		N13   , Dn3 , v068
	.byte	W13
	.byte		N10   , Fn3 , v120
	.byte	W11
	.byte		N07   , Dn3 , v056
	.byte	W14
	.byte		N09   , Ds3 , v100
	.byte	W07
	.byte		N07   , Cn3 , v127
	.byte	W05
@ 042   ----------------------------------------
	.byte	W08
	.byte		        As2 , v116
	.byte	W11
	.byte		N12   , Bn2 , v120
	.byte	W14
	.byte		N09   , Gn2 , v127
	.byte	W10
	.byte		N16   , Fs2 , v088
	.byte	W16
	.byte		N06   , En2 , v068
	.byte	W07
	.byte		N15   , Gs2 , v120
	.byte	W17
	.byte		N07   , Fs2 , v072
	.byte	W08
	.byte		N13   , Gn2 , v127
	.byte	W05
@ 043   ----------------------------------------
	.byte	W11
	.byte		N07   , En2 , v104
	.byte	W08
	.byte		N14   , Cn2 
	.byte	W14
	.byte		N09   , Bn1 , v096
	.byte	W60
	.byte	W03
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W42
	.byte		N10   , En2 , v127
	.byte	W14
	.byte		N07   , Fn2 
	.byte	W11
	.byte		N08   , Gn2 , v120
	.byte	W13
	.byte		N09   , An2 , v127
	.byte	W11
	.byte		N10   , Bn2 , v120
	.byte	W05
@ 046   ----------------------------------------
	.byte	W08
	.byte		N08   , Cn3 , v127
	.byte	W11
	.byte		N10   , Cs3 , v120
	.byte	W13
	.byte		N09   , Dn3 
	.byte	W11
	.byte		N10   , Cn3 
	.byte	W48
	.byte	W01
	.byte		N14   , Bn2 , v092
	.byte	W04
@ 047   ----------------------------------------
	.byte	W12
	.byte		N08   , En3 , v112
	.byte	W09
	.byte		N20   , Dn3 , v096
	.byte	W16
	.byte		N10   , Gs3 , v112
	.byte	W56
	.byte	W03
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N08   , Fn3 , v127
	.byte	W10
	.byte		N18   , En3 , v076
	.byte	W15
	.byte		N07   , Dn3 , v060
	.byte	W07
	.byte		N16   , Gn3 , v112
	.byte	W17
	.byte		N05   , Fn3 , v064
	.byte	W07
	.byte		N17   , An3 , v120
	.byte	W05
@ 050   ----------------------------------------
	.byte	W20
	.byte		N44   , An3 , v120, gtp3
	.byte	W76
@ 051   ----------------------------------------
	.byte	W42
	.byte	W01
	.byte		N08   , Gn3 , v068
	.byte	W07
	.byte		N07   , An3 , v076
	.byte	W07
	.byte		        As3 , v108
	.byte	W09
	.byte		N12   , Cn4 , v120
	.byte	W15
	.byte		N10   , Dn4 , v112
	.byte	W12
	.byte		        Cn4 , v104
	.byte	W03
@ 052   ----------------------------------------
	.byte	W21
	.byte		        An3 , v084
	.byte	W14
	.byte		N08   , Fn3 , v100
	.byte	W09
	.byte		N15   , En3 , v072
	.byte	W16
	.byte		N06   , Dn3 , v040
	.byte	W22
	.byte		N09   , En3 , v076
	.byte	W11
	.byte		N12   , Fn3 , v072
	.byte	W03
@ 053   ----------------------------------------
	.byte	W11
	.byte		N08   , Gn3 , v104
	.byte	W07
	.byte		N14   , An3 , v092
	.byte	W16
	.byte		N07   , Cn4 , v100
	.byte	W10
	.byte		N13   , An3 , v088
	.byte	W14
	.byte		N09   , Dn3 , v072
	.byte	W09
	.byte		N07   , Fn3 , v100
	.byte	W06
	.byte		N08   , An3 , v080
	.byte	W07
	.byte		N04   , Cs4 , v116
	.byte	W13
	.byte		N11   , Dn4 , v104
	.byte	W03
@ 054   ----------------------------------------
	.byte	W10
	.byte		N08   , Bn3 , v096
	.byte	W10
	.byte		N09   , Gs3 , v092
	.byte	W15
	.byte		        Gn3 , v108
	.byte	W10
	.byte		N17   , Fs3 , v084
	.byte	W48
	.byte	W03
@ 055   ----------------------------------------
	.byte	W80
	.byte		N08   , Cn4 , v104
	.byte	W03
	.byte		N11   , As3 , v108
	.byte	W07
	.byte		N12   , An3 , v112
	.byte	W06
@ 056   ----------------------------------------
	.byte	W08
	.byte		N09   , Gn3 , v104
	.byte	W11
	.byte		N11   , Fn3 , v092
	.byte	W14
	.byte		N10   , En3 , v120
	.byte	W10
	.byte		N11   , Dn3 , v080
	.byte	W12
	.byte		N09   , En3 , v116
	.byte	W12
	.byte		N12   , Fn3 , v100
	.byte	W13
	.byte		N09   , Gn3 , v108
	.byte	W11
	.byte		N08   , Fn3 , v127
	.byte	W05
@ 057   ----------------------------------------
	.byte	W09
	.byte		N06   , Ds3 
	.byte	W11
	.byte		N07   , Bn2 , v108
	.byte	W11
	.byte		N10   , An2 , v096
	.byte	W12
	.byte		N07   , Gs2 , v108
	.byte	W13
	.byte		N08   , Fs2 , v127
	.byte	W11
	.byte		N09   , Fn2 , v096
	.byte	W13
	.byte		N08   , Ds2 , v120
	.byte	W13
	.byte		N20   , An2 , v088
	.byte	W03
@ 058   ----------------------------------------
	.byte	W66
	.byte		N12   , Gn3 , v127
	.byte	W16
	.byte		N07   , An3 
	.byte	W10
	.byte		N11   , Fn3 , v116
	.byte	W04
@ 059   ----------------------------------------
	.byte	W11
	.byte		        Cs3 , v112
	.byte	W08
	.byte		        Cn3 , v096
	.byte	W16
	.byte		N08   , As2 , v120
	.byte	W09
	.byte		N11   , An2 , v092
	.byte	W15
	.byte		N08   , Gn2 , v124
	.byte	W09
	.byte		N17   , En2 , v072
	.byte	W15
	.byte		N07   , Gn2 , v127
	.byte	W07
	.byte		N24   , Fn2 , v088, gtp3
	.byte	W06
@ 060   ----------------------------------------
	.byte	W22
	.byte		N18   , En2 , v100
	.byte	W16
	.byte		N30   , Fn2 , v096
	.byte	W56
	.byte	W02
@ 061   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N06   , An2 , v127
	.byte	W09
	.byte		N07   , Gs2 , v088
	.byte	W10
	.byte		N08   , Gs2 , v076
	.byte	W07
	.byte		N05   , Fs2 , v100
	.byte	W07
	.byte		N12   , Gn2 , v120
	.byte	W16
	.byte		N10   , Fn2 , v108
	.byte	W10
	.byte		N12   , Dn2 , v048
	.byte	W03
@ 062   ----------------------------------------
	.byte	W11
	.byte		N08   , Ds2 , v100
	.byte	W08
	.byte		N68   , En2 , v080, gtp1
	.byte	W76
	.byte	W01
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_fly_me_to_the_moon_4_B1
mus_fly_me_to_the_moon_4_B2:
@ 065   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_fly_me_to_the_moon_5:
	.byte		VOL   , 127*mus_fly_me_to_the_moon_mvl/mxv
	.byte	KEYSH , mus_fly_me_to_the_moon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 40
	.byte	W96
mus_fly_me_to_the_moon_5_B1:
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
	.byte	W90
	.byte		N92   , Cn3 , v020, gtp3
	.byte		N92   , Gn3 , v020, gtp3
	.byte	W06
@ 016   ----------------------------------------
	.byte	W90
	.byte		        Fn3 , v020, gtp3
	.byte		N92   , Cn4 , v020, gtp3
	.byte	W06
@ 017   ----------------------------------------
	.byte	W90
	.byte		        Fn3 , v020, gtp3
	.byte		N92   , Bn3 , v020, gtp3
	.byte	W06
@ 018   ----------------------------------------
	.byte	W90
	.byte		N44   , Bn3 , v020, gtp3
	.byte	W01
	.byte		        En3 , v020, gtp3
	.byte	W05
@ 019   ----------------------------------------
	.byte	W42
	.byte		        As3 , v020, gtp3
	.byte	W01
	.byte		        En3 , v020, gtp3
	.byte	W44
	.byte	W03
	.byte		N92   , An3 , v020, gtp3
	.byte	W01
	.byte		        En3 , v020, gtp3
	.byte	W05
@ 020   ----------------------------------------
	.byte	W90
	.byte	W01
	.byte		N44   , Fn3 , v020, gtp3
	.byte		N44   , Cn4 , v020, gtp3
	.byte	W05
@ 021   ----------------------------------------
	.byte	W42
	.byte	W01
	.byte		        Dn3 , v020, gtp3
	.byte		N44   , An3 , v020, gtp3
	.byte	W48
	.byte		N92   , Dn3 , v020, gtp3
	.byte		N92   , Gs3 , v020, gtp3
	.byte	W05
@ 022   ----------------------------------------
	.byte	W90
	.byte	W01
	.byte		N44   , Cn3 , v020, gtp3
	.byte		N44   , Gn3 , v020, gtp3
	.byte	W05
@ 023   ----------------------------------------
	.byte	W42
	.byte	W01
	.byte		        Cs3 , v020, gtp3
	.byte		N44   , Gn3 , v020, gtp3
	.byte	W48
	.byte		N92   , Fn3 , v020, gtp3
	.byte		N92   , Cn4 , v020, gtp3
	.byte	W05
@ 024   ----------------------------------------
	.byte	W90
	.byte	W01
	.byte		        Cn3 , v020, gtp3
	.byte		N92   , Fs3 , v020, gtp3
	.byte	W05
@ 025   ----------------------------------------
	.byte	W90
	.byte	W01
	.byte		        Dn3 , v020, gtp3
	.byte		N92   , Gn3 , v020, gtp3
	.byte	W05
@ 026   ----------------------------------------
	.byte	W90
	.byte	W01
	.byte		        Cs3 , v020, gtp3
	.byte		N92   , Gn3 , v020, gtp3
	.byte	W05
@ 027   ----------------------------------------
	.byte	W90
	.byte	W01
	.byte		        Fn3 , v020, gtp3
	.byte		N92   , Cn4 , v020, gtp3
	.byte	W05
@ 028   ----------------------------------------
	.byte	W90
	.byte	W01
	.byte		        Fn3 , v020, gtp3
	.byte		N92   , Bn3 , v020, gtp3
	.byte	W05
@ 029   ----------------------------------------
	.byte	W90
	.byte	W01
	.byte		        En3 , v020, gtp3
	.byte		N92   , An3 , v020, gtp3
	.byte	W05
@ 030   ----------------------------------------
	.byte	W90
	.byte	W01
	.byte		        Dn3 , v020, gtp3
	.byte		N92   , Gs3 , v020, gtp3
	.byte	W05
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W90
	.byte	W01
	.byte		        Cn4 , v020, gtp3
	.byte	W01
	.byte		        Fn3 , v020, gtp3
	.byte	W04
@ 033   ----------------------------------------
	.byte	W90
	.byte	W01
	.byte		        Bn3 , v020, gtp3
	.byte	W01
	.byte		        Fn3 , v020, gtp3
	.byte	W04
@ 034   ----------------------------------------
	.byte	W90
	.byte	W01
	.byte		N44   , Bn3 , v020, gtp3
	.byte	W01
	.byte		        En3 , v020, gtp3
	.byte	W04
@ 035   ----------------------------------------
	.byte	W44
	.byte		        En3 , v020, gtp3
	.byte		N44   , As3 , v020, gtp3
	.byte	W48
	.byte		N92   , En3 , v020, gtp3
	.byte		N92   , An3 , v020, gtp3
	.byte	W04
@ 036   ----------------------------------------
mus_fly_me_to_the_moon_5_036:
	.byte	W92
	.byte		N44   , Fn3 , v020, gtp3
	.byte		N44   , Cn4 , v020, gtp3
	.byte	W04
	.byte	PEND
@ 037   ----------------------------------------
	.byte	W44
	.byte		        Dn3 , v020, gtp3
	.byte		N44   , An3 , v020, gtp3
	.byte	W48
	.byte		N92   , Dn3 , v020, gtp3
	.byte		N92   , Gs3 , v020, gtp3
	.byte	W04
@ 038   ----------------------------------------
	.byte	W92
	.byte		N44   , Cn3 , v020, gtp3
	.byte		N44   , Gn3 , v020, gtp3
	.byte	W04
@ 039   ----------------------------------------
	.byte	W44
	.byte		        Cs3 , v020, gtp3
	.byte		N44   , Gn3 , v020, gtp3
	.byte	W48
	.byte		N92   , Fn3 , v020, gtp3
	.byte		N92   , Cn4 , v020, gtp3
	.byte	W04
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_fly_me_to_the_moon_5_036
@ 041   ----------------------------------------
	.byte	W44
	.byte		N44   , Fn3 , v020, gtp3
	.byte		N44   , Bn3 , v020, gtp3
	.byte	W48
	.byte		N92   , Dn3 , v020, gtp3
	.byte		N92   , Gn3 , v020, gtp3
	.byte	W04
@ 042   ----------------------------------------
	.byte	W92
	.byte		        Cn3 , v020, gtp3
	.byte		N92   , Gn3 , v020, gtp3
	.byte	W04
@ 043   ----------------------------------------
	.byte	W92
	.byte		        Fn3 , v020, gtp3
	.byte		N92   , Cn4 , v020, gtp3
	.byte	W04
@ 044   ----------------------------------------
	.byte	W92
	.byte		        Bn3 , v020, gtp3
	.byte	W01
	.byte		        Fn3 , v020, gtp3
	.byte	W03
@ 045   ----------------------------------------
	.byte	W92
	.byte		        Bn3 , v020, gtp3
	.byte	W01
	.byte		        En3 , v020, gtp3
	.byte	W03
@ 046   ----------------------------------------
	.byte	W92
	.byte		N44   , An3 , v020, gtp3
	.byte	W01
	.byte		        Dn3 , v020, gtp3
	.byte	W03
@ 047   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		        Dn3 , v020, gtp3
	.byte		N44   , Gs3 , v020, gtp3
	.byte	W48
	.byte		N92   , Cn3 , v020, gtp3
	.byte		N92   , Gn3 , v020, gtp3
	.byte	W03
@ 048   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		        Fn3 , v020, gtp3
	.byte		N92   , Cn4 , v020, gtp3
	.byte	W03
@ 049   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		        Fn3 , v020, gtp3
	.byte		N92   , Bn3 , v020, gtp3
	.byte	W03
@ 050   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		N44   , En3 , v020, gtp3
	.byte		N44   , Bn3 , v020, gtp3
	.byte	W03
@ 051   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		        En3 , v020, gtp3
	.byte		N44   , As3 , v020, gtp3
	.byte	W48
	.byte		N92   , En3 , v020, gtp3
	.byte		N92   , An3 , v020, gtp3
	.byte	W03
@ 052   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		N44   , Fn3 , v020, gtp3
	.byte		N44   , Cn4 , v020, gtp3
	.byte	W03
@ 053   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		        Dn3 , v020, gtp3
	.byte		N44   , An3 , v020, gtp3
	.byte	W48
	.byte		N92   , Dn3 , v020, gtp3
	.byte		N92   , Gs3 , v020, gtp3
	.byte	W03
@ 054   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		N44   , Cn3 , v020, gtp3
	.byte		N44   , Gn3 , v020, gtp3
	.byte	W03
@ 055   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		        Cs3 , v020, gtp3
	.byte		N44   , Gn3 , v020, gtp3
	.byte	W48
	.byte		N92   , Fn3 , v020, gtp3
	.byte		N92   , Cn4 , v020, gtp3
	.byte	W03
@ 056   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		        Fs3 , v020, gtp3
	.byte	W01
	.byte		        Cn3 , v020, gtp3
	.byte	W02
@ 057   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		        Gn3 , v020, gtp3
	.byte	W01
	.byte		        Dn3 , v020, gtp3
	.byte	W02
@ 058   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		        Gn3 , v020, gtp3
	.byte	W01
	.byte		        Cs3 , v020, gtp3
	.byte	W02
@ 059   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		        Fn3 , v020, gtp3
	.byte		N92   , Cn4 , v020, gtp3
	.byte	W02
@ 060   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		        Fn3 , v020, gtp3
	.byte		N92   , Bn3 , v020, gtp3
	.byte	W02
@ 061   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		        En3 , v020, gtp3
	.byte		N92   , An3 , v020, gtp3
	.byte	W02
@ 062   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		        Dn3 , v020, gtp3
	.byte		N92   , Gs3 , v020, gtp3
	.byte	W02
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_fly_me_to_the_moon_5_B1
mus_fly_me_to_the_moon_5_B2:
@ 065   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_fly_me_to_the_moon_6:
	.byte		VOL   , 127*mus_fly_me_to_the_moon_mvl/mxv
	.byte	KEYSH , mus_fly_me_to_the_moon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 42
	.byte	W96
mus_fly_me_to_the_moon_6_B1:
@ 001   ----------------------------------------
mus_fly_me_to_the_moon_6_001:
	.byte	W18
	.byte		N06   , Fn2 , v028
	.byte		N06   , Cn3 , v044
	.byte	W48
	.byte		N07   , Fn2 , v032
	.byte		N06   , Cn3 , v040
	.byte	W30
	.byte	PEND
@ 002   ----------------------------------------
mus_fly_me_to_the_moon_6_002:
	.byte	W18
	.byte		N06   , Fn2 , v028
	.byte		N06   , Bn2 , v044
	.byte	W48
	.byte		N07   , Fn2 , v032
	.byte		N06   , Bn2 , v040
	.byte	W30
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W18
	.byte		N05   
	.byte	W48
	.byte		        As2 
	.byte	W30
@ 004   ----------------------------------------
	.byte	W18
	.byte		N06   , En2 , v028
	.byte		N06   , An2 , v044
	.byte	W48
	.byte		N07   , En2 , v032
	.byte		N06   , An2 , v040
	.byte	W30
@ 005   ----------------------------------------
	.byte	W18
	.byte		        Fn2 , v028
	.byte		N06   , Cn3 , v044
	.byte	W48
	.byte		        Dn2 , v028
	.byte		N06   , An2 , v044
	.byte	W30
@ 006   ----------------------------------------
	.byte	W18
	.byte		        Dn2 , v028
	.byte		N06   , Gs2 , v044
	.byte	W48
	.byte		N07   , Dn2 , v032
	.byte		N06   , Gs2 , v040
	.byte	W30
@ 007   ----------------------------------------
	.byte	W18
	.byte		        Cn2 , v028
	.byte		N06   , Gn2 , v044
	.byte	W48
	.byte		        Cs2 , v028
	.byte		N06   , Gn2 , v044
	.byte	W30
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_fly_me_to_the_moon_6_001
@ 009   ----------------------------------------
	.byte	W18
	.byte		N06   , Fn2 , v028
	.byte		N06   , Cn3 , v044
	.byte	W48
	.byte		        Fn2 , v028
	.byte		N06   , Bn2 , v044
	.byte	W30
@ 010   ----------------------------------------
	.byte	W18
	.byte		        Dn2 , v028
	.byte		N06   , Gn2 , v044
	.byte	W48
	.byte		N07   , Dn2 , v032
	.byte		N06   , Gn2 , v040
	.byte	W30
@ 011   ----------------------------------------
	.byte	W18
	.byte		N05   
	.byte	W24
	.byte		N04   , Cn2 , v008
	.byte		N05   , Gn2 , v036
	.byte	W24
	.byte		        Cn2 , v044
	.byte		N05   , Gn2 , v052
	.byte	W30
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_fly_me_to_the_moon_6_001
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_fly_me_to_the_moon_6_002
@ 014   ----------------------------------------
	.byte	W18
	.byte		N06   , En2 , v028
	.byte		N06   , Bn2 , v044
	.byte	W48
	.byte		N07   , En2 , v032
	.byte		N06   , Bn2 , v040
	.byte	W30
@ 015   ----------------------------------------
	.byte	W18
	.byte		N05   , An2 
	.byte	W48
	.byte		N06   , Dn2 , v028
	.byte		N06   , Gs2 , v044
	.byte	W24
	.byte		N24   , Cn2 , v024
	.byte		N23   , Gn2 , v028
	.byte	W06
@ 016   ----------------------------------------
	.byte	W18
	.byte		N08   , Cn2 , v036
	.byte		N08   , Gn2 , v048
	.byte	W24
	.byte		N22   , Cn2 , v016
	.byte		N22   , Gn2 
	.byte	W24
	.byte		N09   , Cn2 , v032
	.byte		N09   , Gn2 , v052
	.byte	W24
	.byte		N24   , Fn2 , v024
	.byte		N23   , Cn3 , v028
	.byte	W06
@ 017   ----------------------------------------
	.byte	W18
	.byte		N08   , Fn2 , v036
	.byte		N08   , Cn3 , v048
	.byte	W24
	.byte		N22   , Fn2 , v016
	.byte		N22   , Cn3 
	.byte	W24
	.byte		N09   , Fn2 , v032
	.byte		N09   , Cn3 , v052
	.byte	W24
	.byte		N21   , Fn2 , v028
	.byte		N20   , Bn2 , v036
	.byte	W06
@ 018   ----------------------------------------
	.byte	W18
	.byte		N02   , Fn2 , v024
	.byte		N04   , Bn2 , v036
	.byte	W24
	.byte		N21   , Fn2 , v016
	.byte		N21   , Bn2 , v024
	.byte	W24
	.byte		N04   , Fn2 , v016
	.byte		N04   , Bn2 , v036
	.byte	W24
	.byte		N20   , En2 , v024
	.byte		N19   , Bn2 , v028
	.byte	W06
@ 019   ----------------------------------------
	.byte	W18
	.byte		N04   , En2 , v036
	.byte		N04   , Bn2 , v048
	.byte	W24
	.byte		N20   , En2 , v024
	.byte		N19   , As2 , v028
	.byte	W24
	.byte		N04   , En2 , v036
	.byte		N04   , As2 , v048
	.byte	W24
	.byte		N21   , En2 , v028
	.byte		N20   , An2 , v036
	.byte	W06
@ 020   ----------------------------------------
	.byte	W18
	.byte		N02   , En2 , v024
	.byte		N04   , An2 , v036
	.byte	W24
	.byte		N21   , En2 , v016
	.byte		N21   , An2 , v024
	.byte	W24
	.byte		N04   , En2 , v016
	.byte		N04   , An2 , v036
	.byte	W24
	.byte		N13   , Fn2 , v024
	.byte		N11   , Cn3 , v032
	.byte	W06
@ 021   ----------------------------------------
	.byte	W18
	.byte		N07   , Fn2 
	.byte		N06   , Cn3 , v048
	.byte	W24
	.byte		N23   , Dn2 , v032
	.byte		N22   , An2 , v040
	.byte	W24
	.byte		N04   , Dn2 , v028
	.byte		N06   , An2 , v036
	.byte	W24
	.byte		N21   , Dn2 , v028
	.byte		N20   , Gs2 , v036
	.byte	W06
@ 022   ----------------------------------------
	.byte	W18
	.byte		N02   , Dn2 , v024
	.byte		N04   , Gs2 , v036
	.byte	W24
	.byte		N21   , Dn2 , v016
	.byte		N21   , Gs2 , v024
	.byte	W24
	.byte		N04   , Dn2 , v016
	.byte		N04   , Gs2 , v036
	.byte	W24
	.byte		N20   , Cn2 , v024
	.byte		N19   , Gn2 , v028
	.byte	W06
@ 023   ----------------------------------------
	.byte	W18
	.byte		N04   , Cn2 , v036
	.byte		N04   , Gn2 , v048
	.byte	W24
	.byte		N23   , Cs2 , v032
	.byte		N22   , Gn2 , v040
	.byte	W24
	.byte		N04   , Cs2 , v028
	.byte		N06   , Gn2 , v036
	.byte	W24
	.byte		N21   , Fn2 , v028
	.byte		N20   , Cn3 , v036
	.byte	W06
@ 024   ----------------------------------------
	.byte	W18
	.byte		N02   , Fn2 , v024
	.byte		N04   , Cn3 , v036
	.byte	W24
	.byte		N21   , Fn2 , v016
	.byte		N21   , Cn3 , v024
	.byte	W24
	.byte		N04   , Fn2 , v016
	.byte		N04   , Cn3 , v036
	.byte	W24
	.byte		N24   , Cn2 , v024
	.byte		N23   , Fs2 , v028
	.byte	W06
@ 025   ----------------------------------------
	.byte	W18
	.byte		N08   , Cn2 , v036
	.byte		N08   , Fs2 , v048
	.byte	W24
	.byte		N22   , Cn2 , v016
	.byte		N22   , Fs2 
	.byte	W24
	.byte		N09   , Cn2 , v032
	.byte		N09   , Fs2 , v052
	.byte	W24
	.byte		N13   , Dn2 , v024
	.byte		N11   , Gn2 , v032
	.byte	W06
@ 026   ----------------------------------------
	.byte	W18
	.byte		N07   , Dn2 
	.byte		N06   , Gn2 , v048
	.byte	W24
	.byte		N09   , Gn2 , v020
	.byte	W24
	.byte		N07   , Dn2 , v040
	.byte		N06   , Gn2 , v048
	.byte	W24
	.byte		N24   , Cs2 , v024
	.byte		N23   , Gn2 , v028
	.byte	W06
@ 027   ----------------------------------------
	.byte	W18
	.byte		N08   , Cs2 , v036
	.byte		N08   , Gn2 , v048
	.byte	W24
	.byte		N22   , Cs2 , v016
	.byte		N22   , Gn2 
	.byte	W24
	.byte		N09   , Cs2 , v032
	.byte		N09   , Gn2 , v052
	.byte	W30
@ 028   ----------------------------------------
mus_fly_me_to_the_moon_6_028:
	.byte	W18
	.byte		N05   , Fn2 , v028
	.byte		N05   , Cn3 , v044
	.byte	W48
	.byte		N07   , Fn2 , v032
	.byte		N06   , Cn3 , v040
	.byte	W24
	.byte		N24   , Fn2 , v024
	.byte		N23   , Bn2 , v028
	.byte	W06
	.byte	PEND
@ 029   ----------------------------------------
	.byte	W18
	.byte		N08   , Fn2 , v036
	.byte		N08   , Bn2 , v048
	.byte	W24
	.byte		N22   , Fn2 , v016
	.byte		N22   , Bn2 
	.byte	W24
	.byte		N09   , Fn2 , v032
	.byte		N09   , Bn2 , v052
	.byte	W30
@ 030   ----------------------------------------
	.byte	W18
	.byte		N05   , En2 , v028
	.byte		N05   , An2 , v044
	.byte	W48
	.byte		N07   , En2 , v032
	.byte		N06   , An2 , v040
	.byte	W30
@ 031   ----------------------------------------
	.byte	W18
	.byte		N05   , Dn2 , v028
	.byte		N05   , Gs2 , v044
	.byte	W48
	.byte		N07   , Dn2 , v032
	.byte		N06   , Gs2 , v040
	.byte	W30
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_fly_me_to_the_moon_6_028
@ 034   ----------------------------------------
	.byte	W18
	.byte		N08   , Fn2 , v036
	.byte		N08   , Bn2 , v048
	.byte	W24
	.byte		N22   , Fn2 , v016
	.byte		N22   , Bn2 
	.byte	W24
	.byte		N09   , Fn2 , v032
	.byte		N09   , Bn2 , v052
	.byte	W24
	.byte		N13   , En2 , v024
	.byte		N11   , Bn2 , v032
	.byte	W06
@ 035   ----------------------------------------
	.byte	W18
	.byte		N07   , En2 
	.byte		N06   , Bn2 , v048
	.byte	W24
	.byte		N23   , En2 , v032
	.byte		N22   , As2 , v040
	.byte	W24
	.byte		N04   , En2 , v028
	.byte		N06   , As2 , v036
	.byte	W24
	.byte		N13   , En2 , v024
	.byte		N11   , An2 , v032
	.byte	W06
@ 036   ----------------------------------------
	.byte	W18
	.byte		N07   , En2 
	.byte		N06   , An2 , v048
	.byte	W24
	.byte		N09   , An2 , v020
	.byte	W24
	.byte		N07   , En2 , v040
	.byte		N06   , An2 , v048
	.byte	W23
	.byte		N13   , Fn2 , v024
	.byte		N11   , Cn3 , v032
	.byte	W07
@ 037   ----------------------------------------
	.byte	W17
	.byte		N07   , Fn2 
	.byte		N06   , Cn3 , v048
	.byte	W24
	.byte		N13   , Dn2 , v024
	.byte		N11   , An2 , v032
	.byte	W24
	.byte		N07   , Dn2 
	.byte		N06   , An2 , v048
	.byte	W24
	.byte		N21   , Dn2 , v028
	.byte		N20   , Gs2 , v036
	.byte	W07
@ 038   ----------------------------------------
	.byte	W17
	.byte		N02   , Dn2 , v024
	.byte		N04   , Gs2 , v036
	.byte	W24
	.byte		N21   , Dn2 , v016
	.byte		N21   , Gs2 , v024
	.byte	W24
	.byte		N04   , Dn2 , v016
	.byte		N04   , Gs2 , v036
	.byte	W24
	.byte		N20   , Cn2 , v024
	.byte		N19   , Gn2 , v028
	.byte	W07
@ 039   ----------------------------------------
	.byte	W17
	.byte		N04   , Cn2 , v036
	.byte		N04   , Gn2 , v048
	.byte	W24
	.byte		N20   , Cs2 , v024
	.byte		N19   , Gn2 , v028
	.byte	W24
	.byte		N04   , Cs2 , v036
	.byte		N04   , Gn2 , v048
	.byte	W24
	.byte		N21   , Fn2 , v028
	.byte		N20   , Cn3 , v036
	.byte	W07
@ 040   ----------------------------------------
	.byte	W17
	.byte		N02   , Fn2 , v024
	.byte		N04   , Cn3 , v036
	.byte	W24
	.byte		N21   , Fn2 , v016
	.byte		N21   , Cn3 , v024
	.byte	W24
	.byte		N04   , Fn2 , v016
	.byte		N04   , Cn3 , v036
	.byte	W24
	.byte		N20   , Fn2 , v024
	.byte		N19   , Cn3 , v028
	.byte	W07
@ 041   ----------------------------------------
	.byte	W17
	.byte		N04   , Fn2 , v036
	.byte		N04   , Cn3 , v048
	.byte	W24
	.byte		N13   , Fn2 , v024
	.byte		N11   , Bn2 , v032
	.byte	W24
	.byte		N07   , Fn2 
	.byte		N06   , Bn2 , v048
	.byte	W24
	.byte		N21   , Dn2 , v028
	.byte		N20   , Gn2 , v036
	.byte	W07
@ 042   ----------------------------------------
	.byte	W17
	.byte		N02   , Dn2 , v024
	.byte		N04   , Gn2 , v036
	.byte	W24
	.byte		N21   , Dn2 , v016
	.byte		N21   , Gn2 , v024
	.byte	W24
	.byte		N04   , Dn2 , v016
	.byte		N04   , Gn2 , v036
	.byte	W24
	.byte		N24   , Cn2 , v024
	.byte		N23   , Gn2 , v028
	.byte	W07
@ 043   ----------------------------------------
	.byte	W17
	.byte		N08   , Cn2 , v036
	.byte		N08   , Gn2 , v048
	.byte	W24
	.byte		N22   , Cn2 , v016
	.byte		N22   , Gn2 
	.byte	W24
	.byte		N09   , Cn2 , v032
	.byte		N09   , Gn2 , v052
	.byte	W24
	.byte		N21   , Fn2 , v028
	.byte		N20   , Cn3 , v036
	.byte	W07
@ 044   ----------------------------------------
	.byte	W17
	.byte		N02   , Fn2 , v024
	.byte		N04   , Cn3 , v036
	.byte	W24
	.byte		N21   , Fn2 , v016
	.byte		N21   , Cn3 , v024
	.byte	W24
	.byte		N04   , Fn2 , v016
	.byte		N04   , Cn3 , v036
	.byte	W24
	.byte		N24   , Fn2 , v024
	.byte		N23   , Bn2 , v028
	.byte	W07
@ 045   ----------------------------------------
	.byte	W17
	.byte		N08   , Fn2 , v036
	.byte		N08   , Bn2 , v048
	.byte	W24
	.byte		N22   , Fn2 , v016
	.byte		N22   , Bn2 
	.byte	W24
	.byte		N09   , Fn2 , v032
	.byte		N09   , Bn2 , v052
	.byte	W24
	.byte		N21   , En2 , v028
	.byte		N20   , Bn2 , v036
	.byte	W07
@ 046   ----------------------------------------
	.byte	W17
	.byte		N02   , En2 , v024
	.byte		N04   , Bn2 , v036
	.byte	W24
	.byte		N21   , En2 , v016
	.byte		N21   , Bn2 , v024
	.byte	W24
	.byte		N04   , En2 , v016
	.byte		N04   , Bn2 , v036
	.byte	W24
	.byte		N23   , Dn2 , v032
	.byte		N22   , An2 , v040
	.byte	W07
@ 047   ----------------------------------------
	.byte	W17
	.byte		N04   , Dn2 , v028
	.byte		N06   , An2 , v036
	.byte	W24
	.byte		N13   , Dn2 , v024
	.byte		N11   , Gs2 , v032
	.byte	W24
	.byte		N07   , Dn2 
	.byte		N06   , Gs2 , v048
	.byte	W24
	.byte		N21   , Cn2 , v028
	.byte		N20   , Gn2 , v036
	.byte	W07
@ 048   ----------------------------------------
	.byte	W17
	.byte		N02   , Cn2 , v024
	.byte		N04   , Gn2 , v036
	.byte	W24
	.byte		N21   , Cn2 , v016
	.byte		N21   , Gn2 , v024
	.byte	W24
	.byte		N04   , Cn2 , v016
	.byte		N04   , Gn2 , v036
	.byte	W24
	.byte		N13   , Fn2 , v024
	.byte		N11   , Cn3 , v032
	.byte	W07
@ 049   ----------------------------------------
	.byte	W17
	.byte		N07   , Fn2 
	.byte		N06   , Cn3 , v048
	.byte	W24
	.byte		N09   , Cn3 , v020
	.byte	W24
	.byte		N07   , Fn2 , v040
	.byte		N06   , Cn3 , v048
	.byte	W24
	.byte		N13   , Fn2 , v024
	.byte		N11   , Bn2 , v032
	.byte	W07
@ 050   ----------------------------------------
	.byte	W17
	.byte		N07   , Fn2 
	.byte		N06   , Bn2 , v048
	.byte	W24
	.byte		N09   , Bn2 , v020
	.byte	W24
	.byte		N07   , Fn2 , v040
	.byte		N06   , Bn2 , v048
	.byte	W24
	.byte		N13   , En2 , v024
	.byte		N11   , Bn2 , v032
	.byte	W07
@ 051   ----------------------------------------
	.byte	W17
	.byte		N07   , En2 
	.byte		N06   , Bn2 , v048
	.byte	W24
	.byte		N23   , En2 , v032
	.byte		N22   , As2 , v040
	.byte	W24
	.byte		N04   , En2 , v028
	.byte		N06   , As2 , v036
	.byte	W24
	.byte		N13   , En2 , v024
	.byte		N11   , An2 , v032
	.byte	W07
@ 052   ----------------------------------------
	.byte	W17
	.byte		N07   , En2 
	.byte		N06   , An2 , v048
	.byte	W24
	.byte		N09   , An2 , v020
	.byte	W24
	.byte		N07   , En2 , v040
	.byte		N06   , An2 , v048
	.byte	W24
	.byte		N23   , Fn2 , v032
	.byte		N22   , Cn3 , v040
	.byte	W07
@ 053   ----------------------------------------
	.byte	W17
	.byte		N04   , Fn2 , v028
	.byte		N06   , Cn3 , v036
	.byte	W24
	.byte		N13   , Dn2 , v024
	.byte		N11   , An2 , v032
	.byte	W24
	.byte		N07   , Dn2 
	.byte		N06   , An2 , v048
	.byte	W24
	.byte		N13   , Dn2 , v024
	.byte		N11   , Gs2 , v032
	.byte	W07
@ 054   ----------------------------------------
	.byte	W17
	.byte		N07   , Dn2 
	.byte		N06   , Gs2 , v048
	.byte	W24
	.byte		N09   , Gs2 , v020
	.byte	W24
	.byte		N07   , Dn2 , v040
	.byte		N06   , Gs2 , v048
	.byte	W24
	.byte		N13   , Cn2 , v024
	.byte		N11   , Gn2 , v032
	.byte	W07
@ 055   ----------------------------------------
	.byte	W17
	.byte		N07   , Cn2 
	.byte		N06   , Gn2 , v048
	.byte	W24
	.byte		N20   , Cs2 , v024
	.byte		N19   , Gn2 , v028
	.byte	W24
	.byte		N04   , Cs2 , v036
	.byte		N04   , Gn2 , v048
	.byte	W24
	.byte		N13   , Fn2 , v024
	.byte		N11   , Cn3 , v032
	.byte	W07
@ 056   ----------------------------------------
	.byte	W17
	.byte		N07   , Fn2 
	.byte		N06   , Cn3 , v048
	.byte	W24
	.byte		N09   , Cn3 , v020
	.byte	W24
	.byte		N07   , Fn2 , v040
	.byte		N06   , Cn3 , v048
	.byte	W24
	.byte		N13   , Cn2 , v024
	.byte		N11   , Fs2 , v032
	.byte	W07
@ 057   ----------------------------------------
	.byte	W17
	.byte		N07   , Cn2 
	.byte		N06   , Fs2 , v048
	.byte	W24
	.byte		N09   , Fs2 , v020
	.byte	W24
	.byte		N07   , Cn2 , v040
	.byte		N06   , Fs2 , v048
	.byte	W24
	.byte		N21   , Dn2 , v028
	.byte		N20   , Gn2 , v036
	.byte	W07
@ 058   ----------------------------------------
	.byte	W17
	.byte		N02   , Dn2 , v024
	.byte		N04   , Gn2 , v036
	.byte	W24
	.byte		N21   , Dn2 , v016
	.byte		N21   , Gn2 , v024
	.byte	W24
	.byte		N04   , Dn2 , v016
	.byte		N04   , Gn2 , v036
	.byte	W24
	.byte		N13   , Cs2 , v024
	.byte		N11   , Gn2 , v032
	.byte	W07
@ 059   ----------------------------------------
	.byte	W17
	.byte		N07   , Cs2 
	.byte		N06   , Gn2 , v048
	.byte	W24
	.byte		N09   , Gn2 , v020
	.byte	W24
	.byte		N07   , Cs2 , v040
	.byte		N06   , Gn2 , v048
	.byte	W24
	.byte		N13   , Fn2 , v024
	.byte		N11   , Cn3 , v032
	.byte	W07
@ 060   ----------------------------------------
	.byte	W17
	.byte		N07   , Fn2 
	.byte		N06   , Cn3 , v048
	.byte	W24
	.byte		N09   , Cn3 , v020
	.byte	W24
	.byte		N07   , Fn2 , v040
	.byte		N06   , Cn3 , v048
	.byte	W30
	.byte	W01
@ 061   ----------------------------------------
	.byte	W17
	.byte		N05   , Fn2 , v028
	.byte		N05   , Bn2 , v044
	.byte	W48
	.byte		N07   , Fn2 , v032
	.byte		N06   , Bn2 , v040
	.byte	W30
	.byte	W01
@ 062   ----------------------------------------
	.byte	W17
	.byte		N05   , En2 , v028
	.byte		N05   , An2 , v044
	.byte	W48
	.byte		N07   , En2 , v032
	.byte		N06   , An2 , v040
	.byte	W24
	.byte		N24   , Dn2 , v024
	.byte		N23   , Gs2 , v028
	.byte	W07
@ 063   ----------------------------------------
	.byte	W17
	.byte		N08   , Dn2 , v036
	.byte		N08   , Gs2 , v048
	.byte	W24
	.byte		N22   , Dn2 , v016
	.byte		N22   , Gs2 
	.byte	W24
	.byte		N09   , Dn2 , v032
	.byte		N09   , Gs2 , v052
	.byte	W30
	.byte	W01
@ 064   ----------------------------------------
	.byte	W17
	.byte		N06   , Cs2 , v028
	.byte		N06   , Gs2 , v044
	.byte	W48
	.byte		N07   , Cs2 , v032
	.byte		N06   , Gs2 , v040
	.byte	W30
	.byte	W01
	.byte	GOTO
	 .word	mus_fly_me_to_the_moon_6_B1
mus_fly_me_to_the_moon_6_B2:
@ 065   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.10) ****************@

mus_fly_me_to_the_moon_7:
	.byte		VOL   , 127*mus_fly_me_to_the_moon_mvl/mxv
	.byte	KEYSH , mus_fly_me_to_the_moon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 118
	.byte		N05   , Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v032
	.byte	W17
	.byte		        Fs1 , v016
	.byte	W07
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W24
	.byte		        Cs1 
	.byte		N05   , Fs1 , v032
	.byte	W17
	.byte		        Fs1 , v016
	.byte	W07
mus_fly_me_to_the_moon_7_B1:
@ 001   ----------------------------------------
	.byte		N05   , Bn0 , v020
	.byte		N05   , Fs1 , v024
	.byte	W18
	.byte		        Cs1 
	.byte		N05   , Fs1 , v032
	.byte	W17
	.byte		        Fs1 , v016
	.byte	W07
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W24
	.byte		        Cs1 
	.byte		N05   , Fs1 , v032
	.byte	W17
	.byte		        Fs1 , v016
	.byte	W07
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v024
	.byte	W06
@ 002   ----------------------------------------
	.byte	W18
	.byte		        Cs1 
	.byte		N05   , Fs1 , v028
	.byte	W17
	.byte		        Fs1 , v016
	.byte	W07
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W24
	.byte		        Cs1 
	.byte		N05   , Fs1 
	.byte	W17
	.byte		        Fs1 , v016
	.byte	W07
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v024
	.byte	W06
@ 003   ----------------------------------------
mus_fly_me_to_the_moon_7_003:
	.byte	W18
	.byte		N05   , Cs1 , v024
	.byte		N05   , Fs1 , v032
	.byte	W18
	.byte		        Fs1 , v016
	.byte	W06
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W24
	.byte		        Cs1 
	.byte		N05   , Fs1 , v032
	.byte	W18
	.byte		        Fs1 , v016
	.byte	W06
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v024
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W18
	.byte		        Cs1 
	.byte		N05   , Fs1 , v028
	.byte	W18
	.byte		        Fs1 , v016
	.byte	W06
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W24
	.byte		        Cs1 
	.byte		N05   , Fs1 
	.byte	W18
	.byte		        Fs1 , v016
	.byte	W06
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W06
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_fly_me_to_the_moon_7_003
@ 006   ----------------------------------------
	.byte	W18
	.byte		N05   , Cs1 , v024
	.byte		N05   , Fs1 , v028
	.byte	W18
	.byte		        Fs1 , v016
	.byte	W06
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W24
	.byte		        Cs1 
	.byte		N05   , Fs1 
	.byte	W18
	.byte		        Fs1 , v016
	.byte	W06
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v024
	.byte	W06
@ 007   ----------------------------------------
	.byte	W18
	.byte		        Cs1 , v028
	.byte		N05   , Fs1 , v024
	.byte	W18
	.byte		        Fs1 , v016
	.byte	W06
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W24
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W18
	.byte		        Fs1 , v016
	.byte	W07
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v024
	.byte	W05
@ 008   ----------------------------------------
	.byte	W19
	.byte		        Cs1 , v028
	.byte		N05   , Fs1 , v024
	.byte	W17
	.byte		        Fs1 , v016
	.byte	W07
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W24
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W17
	.byte		        Fs1 , v016
	.byte	W07
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W05
@ 009   ----------------------------------------
	.byte	W19
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v032
	.byte	W17
	.byte		        Fs1 , v016
	.byte	W07
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W24
	.byte		        Cs1 
	.byte		N05   , Fs1 , v032
	.byte	W17
	.byte		        Fs1 , v016
	.byte	W07
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W05
@ 010   ----------------------------------------
	.byte	W19
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v032
	.byte	W17
	.byte		        Fs1 , v016
	.byte	W07
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W24
	.byte		        Cs1 
	.byte		N05   , Fs1 , v032
	.byte	W17
	.byte		        Fs1 , v016
	.byte	W07
	.byte		        Bn0 , v020
	.byte		N05   , As1 
	.byte	W05
@ 011   ----------------------------------------
	.byte	W19
	.byte		        Cs1 , v028
	.byte		N05   , Fs1 , v024
	.byte	W17
	.byte		        Fs1 , v016
	.byte	W07
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W24
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W17
	.byte		        Fs1 , v016
	.byte	W07
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v024
	.byte	W05
@ 012   ----------------------------------------
mus_fly_me_to_the_moon_7_012:
	.byte	W19
	.byte		N05   , Cs1 , v024
	.byte		N05   , Fs1 , v032
	.byte	W18
	.byte		        Fs1 , v016
	.byte	W06
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W24
	.byte		        Cs1 
	.byte		N05   , Fs1 , v032
	.byte	W18
	.byte		        Fs1 , v016
	.byte	W06
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v024
	.byte	W05
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_fly_me_to_the_moon_7_012
@ 014   ----------------------------------------
	.byte	W19
	.byte		N05   , Cs1 , v024
	.byte		N05   , Fs1 , v032
	.byte	W18
	.byte		        Fs1 , v016
	.byte	W06
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W24
	.byte		        Cs1 
	.byte		N05   , Fs1 , v032
	.byte	W18
	.byte		        Fs1 , v016
	.byte	W06
	.byte		        Dn1 
	.byte		N05   , Fs1 , v024
	.byte	W05
@ 015   ----------------------------------------
	.byte	W12
	.byte		        Bn0 
	.byte	W07
	.byte		        Fs1 , v028
	.byte	W17
	.byte		        Dn1 , v016
	.byte	W08
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v024
	.byte	W16
	.byte		        Dn1 , v012
	.byte	W08
	.byte		        Dn1 , v016
	.byte		N05   , Fs1 , v036
	.byte	W08
	.byte		        Dn1 , v008
	.byte	W08
	.byte		        Dn1 , v016
	.byte	W08
	.byte		N05   
	.byte	W04
@ 016   ----------------------------------------
	.byte	W20
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v024
	.byte	W24
	.byte		        Cs1 
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Ds2 , v028
	.byte	W04
@ 017   ----------------------------------------
	.byte	W20
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Ds2 , v032
	.byte	W24
	.byte		        Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Ds2 , v028
	.byte	W04
@ 018   ----------------------------------------
	.byte	W20
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W06
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W06
	.byte		N05   
	.byte	W04
@ 019   ----------------------------------------
	.byte	W20
	.byte		        Cs1 
	.byte		N05   , Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W06
	.byte		N05   
	.byte	W04
@ 020   ----------------------------------------
	.byte	W14
	.byte		        Dn1 , v020
	.byte	W06
	.byte		        Cs1 
	.byte		N05   , Fs1 , v032
	.byte		N05   , Ds2 
	.byte	W18
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v024
	.byte	W06
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W06
	.byte		        Ds2 , v028
	.byte	W04
@ 021   ----------------------------------------
	.byte	W20
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W06
	.byte		        Ds2 , v032
	.byte	W24
	.byte		        Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W06
	.byte		        Ds2 , v028
	.byte	W04
@ 022   ----------------------------------------
	.byte	W20
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Ds2 , v028
	.byte	W03
@ 023   ----------------------------------------
	.byte	W14
	.byte		        Dn1 , v020
	.byte	W07
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Bn0 , v024
	.byte		N05   , Ds2 
	.byte	W07
	.byte		        Ds2 , v028
	.byte	W17
	.byte		        Dn1 , v020
	.byte	W07
	.byte		        Cs1 , v028
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v024
	.byte	W07
	.byte		N05   
	.byte	W03
@ 024   ----------------------------------------
	.byte	W21
	.byte		        Cs1 
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 
	.byte	W07
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 
	.byte	W07
	.byte		        Ds2 , v028
	.byte	W03
@ 025   ----------------------------------------
	.byte	W21
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Ds2 , v032
	.byte	W24
	.byte		        Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		N05   
	.byte	W03
@ 026   ----------------------------------------
	.byte	W21
	.byte		        Cs1 
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        Ds2 , v024
	.byte	W03
@ 027   ----------------------------------------
	.byte	W21
	.byte		        Cs1 
	.byte		N05   , Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W06
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W06
	.byte		N05   
	.byte	W03
@ 028   ----------------------------------------
	.byte	W21
	.byte		        Cs1 
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        Ds2 , v028
	.byte	W03
@ 029   ----------------------------------------
	.byte	W21
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Ds2 , v032
	.byte	W24
	.byte		        Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Ds2 , v028
	.byte	W02
@ 030   ----------------------------------------
	.byte	W22
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Bn0 , v032
	.byte	W02
@ 031   ----------------------------------------
	.byte	W15
	.byte		        Dn1 , v024
	.byte	W07
	.byte		        Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Dn1 , v020
	.byte		N05   , Ds2 , v028
	.byte	W07
	.byte		        Dn1 
	.byte		N05   , Ds2 
	.byte	W17
	.byte		        Bn0 
	.byte		N05   , Dn1 , v016
	.byte	W07
	.byte		        Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W08
	.byte		        Dn1 , v016
	.byte	W09
	.byte		        Dn1 , v020
	.byte		N05   , Ds2 , v028
	.byte	W07
	.byte		        Cs2 , v016
	.byte	W02
@ 032   ----------------------------------------
	.byte	W22
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Dn1 , v012
	.byte		N05   , Ds2 , v024
	.byte	W07
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v024
	.byte	W24
	.byte		        Cs1 
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Ds2 , v028
	.byte	W02
@ 033   ----------------------------------------
	.byte	W22
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W06
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W06
	.byte		N05   
	.byte	W02
@ 034   ----------------------------------------
	.byte	W22
	.byte		        Cs1 
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        Ds2 , v028
	.byte	W02
@ 035   ----------------------------------------
	.byte	W22
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v028
	.byte		N05   , Ds2 , v036
	.byte	W18
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v024
	.byte	W06
	.byte		        Ds2 , v028
	.byte	W18
	.byte		        Dn1 , v020
	.byte	W06
	.byte		        Cs1 , v028
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v024
	.byte	W07
	.byte		        Ds2 , v028
	.byte	W01
@ 036   ----------------------------------------
mus_fly_me_to_the_moon_7_036:
	.byte	W23
	.byte		N05   , Cs1 , v024
	.byte		N05   , Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Ds2 , v028
	.byte	W01
	.byte	PEND
@ 037   ----------------------------------------
	.byte	W23
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Ds2 , v032
	.byte	W24
	.byte		        Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Ds2 , v028
	.byte	W01
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_fly_me_to_the_moon_7_036
@ 039   ----------------------------------------
	.byte	W23
	.byte		N05   , Cs1 , v024
	.byte		N05   , Fs1 
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Ds2 , v032
	.byte	W24
	.byte		        Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		N05   
	.byte	W01
@ 040   ----------------------------------------
mus_fly_me_to_the_moon_7_040:
	.byte	W23
	.byte		N05   , Cs1 , v020
	.byte		N05   , Fs1 , v032
	.byte		N05   , Ds2 
	.byte	W18
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v024
	.byte	W06
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W06
	.byte		        Ds2 , v028
	.byte	W01
	.byte	PEND
@ 041   ----------------------------------------
	.byte	W23
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Dn1 , v012
	.byte		N05   , Ds2 , v024
	.byte	W06
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W06
	.byte		N05   
	.byte	W01
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_fly_me_to_the_moon_7_040
@ 043   ----------------------------------------
	.byte	W23
	.byte		N05   , Cs1 , v024
	.byte		N05   , Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Dn1 , v012
	.byte		N05   , Ds2 , v024
	.byte	W06
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W07
@ 044   ----------------------------------------
mus_fly_me_to_the_moon_7_044:
	.byte		N05   , Ds2 , v024
	.byte	W24
	.byte		        Cs1 , v020
	.byte		N05   , Fs1 , v032
	.byte		N05   , Ds2 
	.byte	W17
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v024
	.byte	W07
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte	PEND
@ 045   ----------------------------------------
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_fly_me_to_the_moon_7_044
@ 047   ----------------------------------------
	.byte		N05   , Bn0 , v024
	.byte		N05   , Ds2 
	.byte	W24
	.byte		        Cs1 , v020
	.byte		N05   , Fs1 , v032
	.byte		N05   , Ds2 
	.byte	W18
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v024
	.byte	W06
	.byte		        Ds2 , v028
	.byte	W18
	.byte		        Dn1 , v020
	.byte	W06
	.byte		        Cs1 , v036
	.byte		N05   , Fs1 
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Dn1 , v024
	.byte		N05   , Ds2 
	.byte	W06
@ 048   ----------------------------------------
	.byte		N05   
	.byte	W24
	.byte		        Cs1 
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 
	.byte	W06
@ 049   ----------------------------------------
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v024
	.byte	W06
	.byte		        Ds2 , v032
	.byte	W24
	.byte		        Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W06
@ 050   ----------------------------------------
	.byte		N05   
	.byte	W24
	.byte		        Cs1 , v020
	.byte		N05   , Fs1 , v032
	.byte		N05   , Ds2 
	.byte	W18
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v024
	.byte	W06
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W06
@ 051   ----------------------------------------
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Bn0 , v024
	.byte		N05   , Ds2 
	.byte	W07
	.byte		        Ds2 , v028
	.byte	W17
	.byte		        Dn1 , v020
	.byte	W07
	.byte		        Cs1 , v028
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v024
	.byte	W06
@ 052   ----------------------------------------
mus_fly_me_to_the_moon_7_052:
	.byte	W01
	.byte		N05   , Ds2 , v024
	.byte	W24
	.byte		        Cs1 
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 
	.byte	W07
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 
	.byte	W06
	.byte	PEND
@ 053   ----------------------------------------
	.byte	W01
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W06
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_fly_me_to_the_moon_7_052
@ 055   ----------------------------------------
	.byte	W01
	.byte		N05   , Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W06
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W05
@ 056   ----------------------------------------
	.byte	W01
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Dn1 , v012
	.byte		N05   , Ds2 , v024
	.byte	W06
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W05
@ 057   ----------------------------------------
	.byte	W01
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W06
	.byte		        Ds2 , v032
	.byte	W24
	.byte		        Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W05
@ 058   ----------------------------------------
	.byte	W01
	.byte		N05   
	.byte	W24
	.byte		        Cs1 , v020
	.byte		N05   , Fs1 , v032
	.byte		N05   , Ds2 
	.byte	W18
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v024
	.byte	W06
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W05
@ 059   ----------------------------------------
	.byte	W02
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W05
@ 060   ----------------------------------------
	.byte	W02
	.byte		N05   
	.byte	W24
	.byte		        Cs1 , v020
	.byte		N05   , Fs1 , v032
	.byte		N05   , Ds2 
	.byte	W17
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v024
	.byte	W07
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W05
@ 061   ----------------------------------------
	.byte	W02
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W07
	.byte		        Ds2 , v032
	.byte	W24
	.byte		        Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Ds2 , v024
	.byte	W05
@ 062   ----------------------------------------
	.byte	W02
	.byte		        Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Dn1 , v012
	.byte		N05   , Ds2 , v024
	.byte	W06
	.byte		        Dn1 , v016
	.byte		N05   , Ds2 , v028
	.byte	W24
	.byte		        Cs1 , v024
	.byte		N05   , Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W18
	.byte		        Ds2 , v024
	.byte	W04
@ 063   ----------------------------------------
	.byte	W02
	.byte		        Bn0 , v032
	.byte	W17
	.byte		        Dn1 , v024
	.byte	W07
	.byte		        Fs1 , v028
	.byte		N05   , Ds2 , v032
	.byte	W17
	.byte		        Dn1 , v020
	.byte		N05   , Ds2 , v028
	.byte	W07
	.byte		        Dn1 
	.byte		N05   , Ds2 
	.byte	W17
	.byte		        Bn0 
	.byte		N05   , Dn1 , v016
	.byte	W07
	.byte		        Fs1 , v036
	.byte		N05   , Ds2 , v032
	.byte	W08
	.byte		        Dn1 , v016
	.byte	W09
	.byte		        Dn1 , v020
	.byte		N05   , Ds2 , v028
	.byte	W05
@ 064   ----------------------------------------
	.byte	W02
	.byte		        Bn0 , v020
	.byte		N05   , Dn1 , v016
	.byte		N05   , Fs1 , v024
	.byte	W24
	.byte		        Cs1 , v028
	.byte		N05   , Fs1 
	.byte	W18
	.byte		        Fs1 , v016
	.byte	W06
	.byte		        Bn0 , v020
	.byte		N05   , Fs1 , v028
	.byte	W24
	.byte		        Cs1 
	.byte		N05   , Fs1 , v032
	.byte	W22
	.byte	GOTO
	 .word	mus_fly_me_to_the_moon_7_B1
mus_fly_me_to_the_moon_7_B2:
@ 065   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_fly_me_to_the_moon:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_fly_me_to_the_moon_pri	@ Priority
	.byte	mus_fly_me_to_the_moon_rev	@ Reverb.

	.word	mus_fly_me_to_the_moon_grp

	.word	mus_fly_me_to_the_moon_1
	.word	mus_fly_me_to_the_moon_2
	.word	mus_fly_me_to_the_moon_3
	.word	mus_fly_me_to_the_moon_4
	.word	mus_fly_me_to_the_moon_5
	.word	mus_fly_me_to_the_moon_6
	.word	mus_fly_me_to_the_moon_7

	.end
