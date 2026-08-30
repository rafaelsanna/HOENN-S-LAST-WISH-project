	.include "MPlayDef.s"

	.equ	mus_umineko_worldend_grp, voicegroup_littleroot_test
	.equ	mus_umineko_worldend_pri, 0
	.equ	mus_umineko_worldend_rev, reverb_set+50
	.equ	mus_umineko_worldend_mvl, 90
	.equ	mus_umineko_worldend_key, 0
	.equ	mus_umineko_worldend_tbs, 1
	.equ	mus_umineko_worldend_exg, 1
	.equ	mus_umineko_worldend_cmp, 1

	.section .rodata
	.global	mus_umineko_worldend
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_umineko_worldend_1:
	.byte	KEYSH , mus_umineko_worldend_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 100*mus_umineko_worldend_tbs/2
	.byte		VOICE , 35
	.byte		VOL   , 127*mus_umineko_worldend_mvl/mxv
	.byte		PAN   , c_v-24
	.byte		N30   , Gs1 , v104
	.byte	W30
	.byte		N28   , Cn2 
	.byte	W36
	.byte		        Cn2 , v104, gtp1
	.byte	W30
@ 002   ----------------------------------------
	.byte		N16   , Dn2 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N36   , Gn2 
	.byte	W36
	.byte		N30   , As1 
	.byte	W30
@ 003   ----------------------------------------
	.byte	W06
	.byte		N30   
	.byte	W30
	.byte		N16   , Gs1 
	.byte	W18
	.byte		N14   , Gn2 
	.byte	W18
	.byte		N30   , Fn2 
	.byte	W24
@ 004   ----------------------------------------
	.byte	W06
	.byte		N16   , Gs1 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N16   , Gs1 
	.byte	W18
	.byte		N12   , As1 
	.byte	W06
@ 005   ----------------------------------------
	.byte	W06
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N30   , Ds2 
	.byte	W30
	.byte		N17   , Gn2 
	.byte	W18
	.byte		N16   , Fn2 
	.byte	W18
	.byte		N30   , Gn2 
	.byte	W18
@ 006   ----------------------------------------
	.byte	W12
	.byte		N18   , Gs1 
	.byte	W18
	.byte		N16   , As1 
	.byte	W18
	.byte		N36   , Gs1 
	.byte	W36
	.byte		N24   , Cn2 , v104, gtp1
	.byte	W12
@ 007   ----------------------------------------
	.byte	W18
	.byte		N32   , Cn2 , v104, gtp1
	.byte	W36
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N18   , Ds2 
	.byte	W18
	.byte		N36   , Gn2 
	.byte	W12
@ 008   ----------------------------------------
	.byte	W24
	.byte		N30   , Ds2 
	.byte	W30
	.byte		N32   , As1 , v104, gtp2
	.byte	W36
	.byte		N16   , Gs1 
	.byte	W06
@ 009   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N36   , Fn2 
	.byte	W36
	.byte		N16   , Gs1 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N18   , As1 
	.byte	W06
@ 010   ----------------------------------------
	.byte	W12
	.byte		N16   , Ds2 
	.byte	W18
	.byte		N15   , Fn2 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N48   
	.byte	W36
@ 011   ----------------------------------------
	.byte	W72
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N17   , As1 
	.byte	W12
@ 012   ----------------------------------------
	.byte	W06
	.byte		N36   , Gs1 
	.byte	W36
	.byte		N24   , Cn2 , v104, gtp1
	.byte	W30
	.byte		N32   , Cn2 , v104, gtp1
	.byte	W24
@ 013   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N17   , Ds2 
	.byte	W18
	.byte		N36   , Gn2 
	.byte	W36
	.byte		N24   , As1 , v104, gtp2
	.byte	W18
@ 014   ----------------------------------------
	.byte	W12
	.byte		N32   , As1 , v104, gtp1
	.byte	W36
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N18   , Gn2 
	.byte	W18
	.byte		N36   , Fn2 
	.byte	W18
@ 015   ----------------------------------------
	.byte	W18
	.byte		N15   , Gs1 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N18   , As1 
	.byte	W18
	.byte		N16   , Ds2 
	.byte	W18
	.byte		N12   , Fn2 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N18   , Gn2 
	.byte	W18
	.byte		N48   , Ds2 
	.byte	W78
@ 017   ----------------------------------------
	.byte	W06
	.byte		N18   , Gn2 
	.byte	W18
	.byte		        Gs1 
	.byte	W18
	.byte		N16   , As1 
	.byte	W18
	.byte		N30   , Gs1 
	.byte	W30
	.byte		        Cn2 
	.byte	W06
@ 018   ----------------------------------------
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		N17   , Dn2 
	.byte	W18
	.byte		N16   , Ds2 
	.byte	W18
@ 019   ----------------------------------------
	.byte		N30   , Gn2 
	.byte	W30
	.byte		N32   , Dn2 , v104, gtp2
	.byte	W36
	.byte		N36   , Fs2 
	.byte	W30
@ 020   ----------------------------------------
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N18   , Cn2 
	.byte	W18
	.byte		N36   , Fn2 
	.byte	W36
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N18   , Gn2 
	.byte	W12
@ 021   ----------------------------------------
	.byte	W06
	.byte		N36   , As1 
	.byte	W36
	.byte		N30   , Gn2 
	.byte	W30
	.byte		N48   , Ds2 
	.byte	W24
@ 022   ----------------------------------------
	.byte	W78
	.byte		N17   
	.byte	W18
@ 023   ----------------------------------------
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N18   , Gn2 
	.byte	W18
	.byte		N17   , Gs1 
	.byte	W18
	.byte		N15   , As1 
	.byte	W18
	.byte		N30   , Cn2 
	.byte	W12
@ 024   ----------------------------------------
	.byte	W18
	.byte		N17   , As1 
	.byte	W18
	.byte		N13   , Gs1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N18   , Gn2 
	.byte	W18
	.byte		        Fn2 
	.byte	W12
@ 025   ----------------------------------------
	.byte	W06
	.byte		N16   , Gn2 
	.byte	W18
	.byte		N24   , Ds2 , v104, gtp3
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N17   , Fn2 
	.byte	W18
	.byte		N36   
	.byte	W06
@ 026   ----------------------------------------
	.byte	W30
	.byte		N15   
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N18   , Cs2 
	.byte	W18
	.byte		N15   , Gn2 
	.byte	W18
@ 027   ----------------------------------------
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N18   , As1 
	.byte	W18
	.byte		N48   , Cn2 
	.byte	W54
	.byte		N17   , Gn2 
	.byte	W12
@ 028   ----------------------------------------
	.byte	W06
	.byte		N30   , As1 
	.byte	W30
	.byte		N32   , Ds2 , v104, gtp3
	.byte	W36
	.byte		N36   , Gs1 
	.byte	W24
@ 029   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N18   , Gs1 
	.byte	W18
	.byte		N32   , Ds2 , v104, gtp1
	.byte	W36
	.byte		N12   , As1 
	.byte	W12
	.byte		N18   , Gs1 
	.byte	W06
@ 030   ----------------------------------------
	.byte	W12
	.byte		        Gn2 
	.byte	W18
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N18   , As1 
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N24   , Cn2 , v104, gtp3
	.byte	W18
@ 031   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N15   , Ds2 
	.byte	W18
	.byte		N30   , Fn2 , v104, gtp1
	.byte	W36
	.byte		N28   , Gn2 
	.byte	W18
@ 032   ----------------------------------------
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N16   , Gs1 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		N48   , Gs1 
	.byte	W24
@ 033   ----------------------------------------
	.byte	W78
	.byte		N30   , Cn2 
	.byte	W18
@ 034   ----------------------------------------
	.byte	W12
	.byte		N48   , As1 
	.byte	W66
	.byte		N06   
	.byte	W06
	.byte		N44   , Fn2 , v104, gtp2
	.byte	W12
@ 035   ----------------------------------------
	.byte	W54
	.byte		N36   , Gs1 
	.byte	W36
	.byte		N24   , Cn2 
	.byte	W06
@ 036   ----------------------------------------
	.byte	W24
	.byte		N30   
	.byte	W30
	.byte		N18   , Dn2 
	.byte	W18
	.byte		N16   , Ds2 
	.byte	W18
	.byte		N30   , Gn2 
	.byte	W06
@ 037   ----------------------------------------
	.byte	W24
	.byte		N32   , As1 
	.byte	W36
	.byte		N30   
	.byte	W30
	.byte		N18   , Gs1 
	.byte	W06
@ 038   ----------------------------------------
	.byte	W12
	.byte		N16   , Gn2 
	.byte	W18
	.byte		N30   , Fn2 
	.byte	W30
	.byte		N17   , Gs1 
	.byte	W18
	.byte		N16   , As1 
	.byte	W18
@ 039   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		        Gs1 
	.byte	W18
	.byte		N16   , As1 
	.byte	W18
	.byte		N30   , Ds2 
	.byte	W30
@ 040   ----------------------------------------
	.byte		N18   , Gn2 
	.byte	W18
	.byte		        Fn2 
	.byte	W18
	.byte		N32   , Gn2 , v104, gtp2
	.byte	W36
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N18   , As1 
	.byte	W12
@ 041   ----------------------------------------
	.byte	W06
	.byte		N36   , Gs1 
	.byte	W36
	.byte		N24   , Cn2 , v104, gtp2
	.byte	W30
	.byte		N32   , Cn2 , v104, gtp3
	.byte	W24
@ 042   ----------------------------------------
	.byte	W12
	.byte		N16   , Dn2 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N36   , Gn2 
	.byte	W36
	.byte		N30   , Ds2 
	.byte	W18
@ 043   ----------------------------------------
	.byte	W12
	.byte		N36   , As1 
	.byte	W36
	.byte		N17   , Gs1 
	.byte	W18
	.byte		N15   , Gn2 
	.byte	W18
	.byte		N30   , Fn2 
	.byte	W12
@ 044   ----------------------------------------
	.byte	W18
	.byte		N18   , Gs1 
	.byte	W18
	.byte		N15   , Gn2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		N18   , Ds2 
	.byte	W18
	.byte		N16   , Fn2 
	.byte	W12
@ 045   ----------------------------------------
	.byte	W06
	.byte		N17   , Ds2 
	.byte	W18
	.byte		N48   
	.byte	W72
@ 046   ----------------------------------------
	.byte	W30
	.byte		N15   , Gn2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		N36   , Gs1 
	.byte	W36
@ 047   ----------------------------------------
	.byte		N24   , Cn2 , v104, gtp3
	.byte	W30
	.byte		N32   , Cn2 , v104, gtp2
	.byte	W36
	.byte		N15   , Dn2 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
@ 048   ----------------------------------------
	.byte		N36   , Gn2 
	.byte	W36
	.byte		N24   , As1 , v104, gtp3
	.byte	W30
	.byte		N32   , As1 , v104, gtp3
	.byte	W30
@ 049   ----------------------------------------
	.byte	W06
	.byte		N16   , Gs1 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N36   , Fn2 
	.byte	W36
	.byte		N16   , Gs1 
	.byte	W18
	.byte		N14   , Gn2 
	.byte	W06
@ 050   ----------------------------------------
	.byte	W12
	.byte		N12   , As1 
	.byte	W12
	.byte		N17   , Ds2 
	.byte	W18
	.byte		N16   , Fn2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N48   , Ds2 
	.byte	W24
@ 051   ----------------------------------------
	.byte	W66
	.byte		N15   , Gn2 
	.byte	W18
	.byte		N12   , Gs1 
	.byte	W12
@ 052   ----------------------------------------
	.byte		N17   , As1 
	.byte	W18
	.byte		N30   , Gs1 
	.byte	W30
	.byte		N32   , Cn2 
	.byte	W36
	.byte		        Cn2 , v104, gtp1
	.byte	W12
@ 053   ----------------------------------------
	.byte	W24
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N18   , Ds2 
	.byte	W18
	.byte		N30   , Gn2 
	.byte	W30
	.byte		N36   , Dn2 
	.byte	W12
@ 054   ----------------------------------------
	.byte	W24
	.byte		        Fs2 
	.byte	W36
	.byte		N15   , Dn2 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N36   , Fn2 
	.byte	W06
@ 055   ----------------------------------------
	.byte	W30
	.byte		N16   , Gs1 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N36   , As1 
	.byte	W36
@ 056   ----------------------------------------
	.byte		N30   , Gn2 
	.byte	W30
	.byte		N48   , Ds2 
	.byte	W66
@ 057   ----------------------------------------
	.byte	W36
	.byte		N18   
	.byte	W18
	.byte		N17   , Gn2 
	.byte	W18
	.byte		N18   , Cs2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W06
@ 058   ----------------------------------------
	.byte	W06
	.byte		N18   , Gs1 
	.byte	W18
	.byte		N17   , As1 
	.byte	W18
	.byte		N30   , Cn2 
	.byte	W30
	.byte		N18   , As1 
	.byte	W18
	.byte		N15   , Gs1 
	.byte	W06
@ 059   ----------------------------------------
	.byte	W12
	.byte		N18   , Cn2 
	.byte	W18
	.byte		N15   , Gn2 
	.byte	W18
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N18   , Gn2 
	.byte	W18
	.byte		N28   , Ds2 , v104, gtp1
	.byte	W18
@ 060   ----------------------------------------
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N18   , Fn2 
	.byte	W18
	.byte		N36   
	.byte	W36
	.byte		N16   
	.byte	W12
@ 061   ----------------------------------------
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N18   , Cs2 
	.byte	W18
	.byte		N17   , Gn2 
	.byte	W18
	.byte		N15   , Gs1 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		N48   , Cn2 
	.byte	W12
@ 062   ----------------------------------------
	.byte	W48
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N32   , As1 , v104, gtp1
	.byte	W36
@ 063   ----------------------------------------
	.byte		N30   , Ds2 
	.byte	W30
	.byte		N36   , Gs1 
	.byte	W36
	.byte		N16   , Gn2 
	.byte	W18
	.byte		N12   , Gs1 
	.byte	W12
@ 064   ----------------------------------------
	.byte		N32   , Ds2 , v104, gtp2
	.byte	W36
	.byte		N15   , As1 
	.byte	W18
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , As1 
	.byte	W12
	.byte		N14   , Fn2 
	.byte	W12
@ 065   ----------------------------------------
	.byte	W06
	.byte		N12   , As1 
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N28   , Cn2 
	.byte	W30
	.byte		N15   , Dn2 
	.byte	W18
	.byte		N11   , Ds2 
	.byte	W12
@ 066   ----------------------------------------
	.byte		N32   , Fn2 , v104, gtp1
	.byte	W36
	.byte		N30   , Gn2 
	.byte	W30
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 067   ----------------------------------------
	.byte		N18   , Gs1 
	.byte	W18
	.byte		N15   , As1 
	.byte	W18
	.byte		N48   , Gs1 
	.byte	W60
@ 068   ----------------------------------------
	.byte	W36
	.byte		N32   , Cn2 
	.byte	W36
	.byte		N48   , As1 
	.byte	W24
@ 069   ----------------------------------------
	.byte	W42
	.byte		N44   , As1 , v104, gtp3
	.byte	W54
@ 070   ----------------------------------------
	.byte		VOL   , 127*mus_umineko_worldend_mvl/mxv
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_umineko_worldend_2:
	.byte	KEYSH , mus_umineko_worldend_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 96*mus_umineko_worldend_mvl/mxv
	.byte		PAN   , c_v-12
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W36
	.byte		N16   , Gs4 , v064
	.byte	W16
	.byte		        Gn4 
	.byte	W17
	.byte		N64   , Fn3 , v064, gtp1
	.byte	W24
	.byte	W03
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W09
	.byte		N84   , Ds3 , v064, gtp2
	.byte	W84
	.byte	W03
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		N64   , Fn3 , v064, gtp1
	.byte	W68
	.byte	W02
@ 009   ----------------------------------------
	.byte	W60
	.byte	W02
	.byte		N68   , Ds3 , v064, gtp3
	.byte	W32
	.byte	W02
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		N66   , Fn3 
	.byte	W17
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W18
	.byte		N92   , Ds3 , v064, gtp1
	.byte	W78
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W72
	.byte	W01
	.byte		N90   , Ds3 , v064, gtp1
	.byte	W23
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W15
	.byte		TIE   , Cs3 
	.byte	W80
	.byte	W01
@ 023   ----------------------------------------
	.byte	W48
	.byte	W02
	.byte		EOT   
	.byte	W01
	.byte		TIE   , Cn3 
	.byte	W44
	.byte	W01
@ 024   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		EOT   
	.byte	W07
@ 025   ----------------------------------------
	.byte	W76
	.byte	W01
	.byte		N16   , Gn4 
	.byte	W19
@ 026   ----------------------------------------
	.byte	W13
	.byte		N17   , As4 
	.byte	W80
	.byte	W03
@ 027   ----------------------------------------
	.byte	W07
	.byte		N30   , As3 
	.byte	W64
	.byte	W01
	.byte		N66   , Gs3 , v064, gtp1
	.byte	W24
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W12
	.byte		N17   , Gn3 , v056
	.byte	W64
	.byte		N28   , Ds4 
	.byte	W20
@ 030   ----------------------------------------
	.byte	W42
	.byte		N30   , Ds4 , v064
	.byte	W54
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W14
	.byte		N60   , Fn4 , v064, gtp3
	.byte	W66
	.byte		N48   , Dn4 , v064, gtp1
	.byte	W16
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W92
	.byte		N16   , Gs4 
	.byte	W04
@ 037   ----------------------------------------
	.byte	W12
	.byte		        Gn4 
	.byte	W16
	.byte		N64   , Fn3 , v064, gtp1
	.byte	W68
@ 038   ----------------------------------------
	.byte	W64
	.byte		N84   , Ds3 , v064, gtp2
	.byte	W32
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		N64   , Fn3 , v064, gtp1
	.byte	W15
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W21
	.byte		N68   , Ds3 , v064, gtp3
	.byte	W72
	.byte	W03
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W36
	.byte	W02
	.byte		N66   , Fn3 
	.byte	W56
	.byte	W02
@ 049   ----------------------------------------
	.byte	W72
	.byte	W02
	.byte		N92   , Ds3 , v064, gtp1
	.byte	W22
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
	.byte	W32
	.byte		N90   , Ds3 , v064, gtp1
	.byte	W64
@ 056   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		TIE   , Cs3 
	.byte	W24
	.byte	W01
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W11
	.byte		EOT   
	.byte		TIE   , Cn3 
	.byte	W84
	.byte	W01
@ 059   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		EOT   
	.byte	W44
	.byte	W03
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W60
	.byte	W02
	.byte		N30   , As3 
	.byte	W32
	.byte	W02
@ 062   ----------------------------------------
	.byte	W32
	.byte		N66   , Gs3 , v064, gtp1
	.byte	W64
@ 063   ----------------------------------------
	.byte	W68
	.byte		N18   , Gn3 , v056
	.byte	W28
@ 064   ----------------------------------------
	.byte	W36
	.byte		N28   , Cn5 
	.byte	W30
	.byte		N15   , Dn5 , v064
	.byte	W16
	.byte		N13   , Ds5 
	.byte	W14
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N88   , Cn5 
	.byte	W60
	.byte	W02
@ 067   ----------------------------------------
	.byte	W36
	.byte		N32   
	.byte	W32
	.byte	W01
	.byte		N64   , Ds5 
	.byte	W24
	.byte	W03
@ 068   ----------------------------------------
	.byte	W40
	.byte		N48   , Fn5 
	.byte	W56
@ 069   ----------------------------------------
	.byte		VOL   , 96*mus_umineko_worldend_mvl/mxv
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_umineko_worldend_3:
	.byte	KEYSH , mus_umineko_worldend_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 96*mus_umineko_worldend_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		TIE   , Gs3 , v068
	.byte	W96
@ 001   ----------------------------------------
	.byte	W18
	.byte		EOT   
	.byte	W14
	.byte		TIE   , Gn3 
	.byte	W64
@ 002   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		EOT   
	.byte	W24
	.byte	W02
@ 003   ----------------------------------------
	.byte	W36
	.byte	W03
	.byte		N64   , As3 , v068, gtp1
	.byte	W56
	.byte	W01
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		TIE   , Gs3 
	.byte	W48
	.byte	W01
@ 006   ----------------------------------------
	.byte	W84
	.byte		EOT   
	.byte		TIE   , Gn3 
	.byte	W12
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		EOT   
	.byte	W66
	.byte	W01
	.byte		N66   , As3 , v068, gtp1
	.byte	W04
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W06
	.byte		TIE   , Gs3 
	.byte	W90
@ 012   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		TIE   , Gn3 
	.byte	W54
@ 013   ----------------------------------------
	.byte	W78
	.byte		EOT   
	.byte	W18
@ 014   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		N64   , As3 , v068, gtp1
	.byte	W44
	.byte	W03
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W56
	.byte	W02
	.byte		TIE   , Gs3 
	.byte	W36
	.byte	W02
@ 017   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte		N66   , Gn3 
	.byte	W02
@ 018   ----------------------------------------
	.byte	W64
	.byte		N68   , Fs3 
	.byte	W32
@ 019   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte		N64   , Fn3 , v068, gtp1
	.byte	W56
	.byte	W03
@ 020   ----------------------------------------
	.byte	W06
	.byte		N66   , As3 
	.byte	W90
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W90
	.byte		        Fn3 
	.byte	W06
@ 025   ----------------------------------------
	.byte	W60
	.byte	W01
	.byte		N16   , Gs4 
	.byte	W32
	.byte		N16   
	.byte	W03
@ 026   ----------------------------------------
	.byte	W30
	.byte		N48   , Gn4 , v068, gtp2
	.byte	W54
	.byte	W01
	.byte		N16   
	.byte	W11
@ 027   ----------------------------------------
	.byte	W06
	.byte		N30   , Gs4 , v068, gtp1
	.byte	W32
	.byte		N32   , As4 , v068, gtp1
	.byte	W32
	.byte	W02
	.byte		        Cn5 , v068, gtp2
	.byte	W24
@ 028   ----------------------------------------
	.byte	W10
	.byte		N16   , Gn4 
	.byte	W17
	.byte		        Gs4 
	.byte	W48
	.byte	W01
	.byte		        As4 , v064
	.byte	W16
	.byte		        Gs4 , v060
	.byte	W04
@ 029   ----------------------------------------
	.byte	W12
	.byte		N17   , Gn4 
	.byte	W32
	.byte		N17   
	.byte	W32
	.byte		N28   , Cn5 , v060, gtp1
	.byte	W20
@ 030   ----------------------------------------
	.byte	W11
	.byte		N15   , Dn5 , v068
	.byte	W15
	.byte		N13   , Ds5 
	.byte	W68
	.byte	W02
@ 031   ----------------------------------------
	.byte	W72
	.byte	W02
	.byte		N84   , Cn5 , v068, gtp3
	.byte	W22
@ 032   ----------------------------------------
	.byte	W76
	.byte	W01
	.byte		N32   
	.byte	W19
@ 033   ----------------------------------------
	.byte	W13
	.byte		N64   , Ds5 
	.byte	W66
	.byte	W01
	.byte		N48   , Fn5 , v068, gtp1
	.byte	W16
@ 034   ----------------------------------------
	.byte	W54
	.byte	W01
	.byte		N28   , Cn5 , v068, gtp1
	.byte	W32
	.byte	W01
	.byte		N24   , Cn5 , v068, gtp2
	.byte	W08
@ 035   ----------------------------------------
	.byte	W24
	.byte		N30   , Cn5 , v068, gtp1
	.byte	W30
	.byte	W01
	.byte		N17   , Dn5 
	.byte	W17
	.byte		N16   , Ds5 
	.byte	W24
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
	.byte	W11
	.byte		N17   , Dn5 
	.byte	W17
	.byte		N15   , Ds5 
	.byte	W48
	.byte	W02
	.byte		N32   
	.byte	W18
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		N16   , Dn5 
	.byte	W17
	.byte		N15   , Ds5 
	.byte	W14
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
	.byte	W21
	.byte		N16   , Dn5 
	.byte	W17
	.byte		        Ds5 
	.byte	W48
	.byte	W01
	.byte		N32   , Dn5 , v068, gtp1
	.byte	W09
@ 053   ----------------------------------------
	.byte	W24
	.byte		N28   , Ds5 
	.byte	W36
	.byte		N15   , Dn5 
	.byte	W36
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		N32   , Cn5 , v068, gtp1
	.byte	W54
	.byte	W01
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W20
	.byte		N66   , Cs4 
	.byte	W66
	.byte		N48   , Cn4 , v068, gtp2
	.byte	W10
@ 061   ----------------------------------------
	.byte	W60
	.byte	W02
	.byte		N30   , Ds4 , v068, gtp1
	.byte	W32
	.byte		N32   , Ds4 , v068, gtp1
	.byte	W02
@ 062   ----------------------------------------
	.byte	W32
	.byte		N66   , Cn4 
	.byte	W64
@ 063   ----------------------------------------
	.byte	W03
	.byte		N30   , Ds4 , v068, gtp1
	.byte	W66
	.byte		N17   , As3 , v060
	.byte	W24
	.byte	W03
@ 064   ----------------------------------------
	.byte	W04
	.byte		N15   , As3 , v064
	.byte	W32
	.byte		N28   , Cn4 , v060
	.byte	W60
@ 065   ----------------------------------------
	.byte	W01
	.byte		N30   , Fn3 , v068, gtp1
	.byte	W64
	.byte	W01
	.byte		N60   , Gn3 , v068, gtp2
	.byte	W30
@ 066   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N88   , Gs3 
	.byte	W60
	.byte	W02
@ 067   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		N60   , As3 , v068, gtp3
	.byte	W24
	.byte	W02
@ 068   ----------------------------------------
	.byte	W40
	.byte		N48   , As3 , v068, gtp1
	.byte	W56
@ 069   ----------------------------------------
	.byte		VOL   , 96*mus_umineko_worldend_mvl/mxv
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_umineko_worldend_4:
	.byte	KEYSH , mus_umineko_worldend_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 96*mus_umineko_worldend_mvl/mxv
	.byte		PAN   , c_v+12
	.byte		N28   , Cn5 , v068, gtp1
	.byte	W32
	.byte		N24   , Cn5 , v068, gtp2
	.byte	W32
	.byte		N30   , Cn5 , v068, gtp1
	.byte	W30
	.byte	W01
	.byte		N16   , Dn5 
	.byte	W01
@ 001   ----------------------------------------
	.byte	W16
	.byte		        Ds5 
	.byte	W16
	.byte		N28   , As4 
	.byte	W32
	.byte	W02
	.byte		        As4 , v068, gtp1
	.byte	W30
@ 002   ----------------------------------------
	.byte	W05
	.byte		N32   , As4 , v068, gtp1
	.byte	W64
	.byte		N28   , Gs4 
	.byte	W24
	.byte	W03
@ 003   ----------------------------------------
	.byte	W05
	.byte		N16   
	.byte	W17
	.byte		        As4 
	.byte	W16
	.byte		        Cn5 
	.byte	W17
	.byte		        As4 
	.byte	W16
	.byte		        Gs4 
	.byte	W17
	.byte		        As4 
	.byte	W08
@ 004   ----------------------------------------
	.byte	W08
	.byte		N32   , Gs4 , v068, gtp3
	.byte	W32
	.byte	W03
	.byte		N16   , Gn4 
	.byte	W16
	.byte		N17   , Fn4 
	.byte	W17
	.byte		N32   , Gn4 , v068, gtp1
	.byte	W20
@ 005   ----------------------------------------
	.byte	W14
	.byte		N16   , Gs4 
	.byte	W16
	.byte		        As4 
	.byte	W16
	.byte		N24   , Cn5 , v068, gtp3
	.byte	W32
	.byte	W03
	.byte		        Cn5 , v068, gtp3
	.byte	W15
@ 006   ----------------------------------------
	.byte	W18
	.byte		N32   
	.byte	W32
	.byte	W01
	.byte		N17   , Dn5 
	.byte	W17
	.byte		N15   , Ds5 
	.byte	W16
	.byte		N32   , As4 , v068, gtp2
	.byte	W12
@ 007   ----------------------------------------
	.byte	W22
	.byte		        Ds5 , v068, gtp1
	.byte	W32
	.byte	W01
	.byte		        As4 , v068, gtp1
	.byte	W32
	.byte	W01
	.byte		N17   , Gs4 
	.byte	W08
@ 008   ----------------------------------------
	.byte	W10
	.byte		N15   , Gn4 
	.byte	W16
	.byte		N28   , Gs4 
	.byte	W32
	.byte	W01
	.byte		N17   
	.byte	W17
	.byte		N15   , Gn4 
	.byte	W16
	.byte		N17   , Fn4 
	.byte	W04
@ 009   ----------------------------------------
	.byte	W13
	.byte		N15   , Ds4 
	.byte	W15
	.byte		N16   , Fn4 
	.byte	W17
	.byte		N18   , Ds4 
	.byte	W48
	.byte	W03
@ 010   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		N16   , Gn4 
	.byte	W16
	.byte		N15   , As4 
	.byte	W10
@ 011   ----------------------------------------
	.byte	W05
	.byte		N28   , Cn5 , v068, gtp1
	.byte	W32
	.byte	W02
	.byte		N24   , Cn5 , v068, gtp3
	.byte	W32
	.byte	W01
	.byte		N32   , Cn5 , v068, gtp1
	.byte	W24
@ 012   ----------------------------------------
	.byte	W09
	.byte		N17   , Dn5 
	.byte	W17
	.byte		N15   , Ds5 
	.byte	W16
	.byte		N28   , As4 
	.byte	W32
	.byte	W01
	.byte		N28   
	.byte	W21
@ 013   ----------------------------------------
	.byte	W12
	.byte		N32   , As4 , v068, gtp1
	.byte	W32
	.byte	W02
	.byte		N16   , Gs4 
	.byte	W16
	.byte		        Gn4 
	.byte	W16
	.byte		N22   , Gs4 
	.byte	W18
@ 014   ----------------------------------------
	.byte	W16
	.byte		N17   
	.byte	W17
	.byte		N16   , Gn4 
	.byte	W16
	.byte		N17   , Fn4 
	.byte	W17
	.byte		N16   , Ds4 
	.byte	W16
	.byte		        Fn4 
	.byte	W14
@ 015   ----------------------------------------
	.byte	W02
	.byte		N24   , Gn4 , v068, gtp3
	.byte	W92
	.byte	W02
@ 016   ----------------------------------------
	.byte	W08
	.byte		N17   
	.byte	W17
	.byte		N16   , Gs4 
	.byte	W17
	.byte		        As4 
	.byte	W16
	.byte		N24   , Cn5 , v068, gtp3
	.byte	W32
	.byte	W01
	.byte		N28   , Cn5 , v068, gtp1
	.byte	W05
@ 017   ----------------------------------------
	.byte	W28
	.byte		N32   , Cn5 , v068, gtp1
	.byte	W32
	.byte	W01
	.byte		N16   , Dn5 
	.byte	W17
	.byte		        Ds5 
	.byte	W16
	.byte		N32   , As4 , v068, gtp1
	.byte	W02
@ 018   ----------------------------------------
	.byte	W30
	.byte	W01
	.byte		        Dn5 , v068, gtp1
	.byte	W32
	.byte	W01
	.byte		N28   , Ds5 , v068, gtp1
	.byte	W32
@ 019   ----------------------------------------
	.byte	W04
	.byte		N15   , Dn5 
	.byte	W16
	.byte		N16   , Cn5 
	.byte	W17
	.byte		N32   , As4 
	.byte	W32
	.byte	W01
	.byte		N16   , Gs4 
	.byte	W16
	.byte		        Gn4 
	.byte	W10
@ 020   ----------------------------------------
	.byte	W06
	.byte		N32   , Fn4 , v068, gtp2
	.byte	W32
	.byte	W02
	.byte		        Gn4 
	.byte	W32
	.byte	W01
	.byte		N84   , Ds4 , v068, gtp3
	.byte	W23
@ 021   ----------------------------------------
	.byte	W76
	.byte	W01
	.byte		N18   
	.byte	W18
	.byte		N16   , Gn4 
	.byte	W01
@ 022   ----------------------------------------
	.byte	W15
	.byte		N17   , Gs4 
	.byte	W17
	.byte		N16   , Gn4 
	.byte	W17
	.byte		        Gs4 
	.byte	W16
	.byte		        As4 
	.byte	W16
	.byte		N32   , Cn5 , v068, gtp1
	.byte	W15
@ 023   ----------------------------------------
	.byte	W19
	.byte		N16   , As4 
	.byte	W16
	.byte		N14   , Gs4 
	.byte	W16
	.byte		N16   
	.byte	W17
	.byte		N17   , Gn4 
	.byte	W17
	.byte		N16   , Fn4 
	.byte	W11
@ 024   ----------------------------------------
	.byte	W06
	.byte		        Gn4 
	.byte	W17
	.byte		N28   , Ds4 
	.byte	W32
	.byte	W02
	.byte		N15   
	.byte	W16
	.byte		N16   , Fn4 
	.byte	W16
	.byte		N32   , Gn4 , v068, gtp3
	.byte	W07
@ 025   ----------------------------------------
	.byte	W28
	.byte		N16   , Fn4 
	.byte	W17
	.byte		N15   , Gn4 
	.byte	W15
	.byte		N66   , Cs4 
	.byte	W36
@ 026   ----------------------------------------
	.byte	W30
	.byte		N48   , Cn4 , v068, gtp2
	.byte	W66
@ 027   ----------------------------------------
	.byte	W06
	.byte		N30   , Ds4 
	.byte	W32
	.byte		N32   , Ds4 , v068, gtp1
	.byte	W32
	.byte	W03
	.byte		N66   , Cn4 
	.byte	W23
@ 028   ----------------------------------------
	.byte	W42
	.byte	W01
	.byte		N30   , Ds4 , v068, gtp1
	.byte	W52
	.byte	W01
@ 029   ----------------------------------------
	.byte	W13
	.byte		N16   , As3 , v060
	.byte	W30
	.byte	W01
	.byte		N15   , As3 , v064
	.byte	W32
	.byte		N28   , Cn4 , v060
	.byte	W20
@ 030   ----------------------------------------
	.byte	W42
	.byte		N30   , Fn3 , v068, gtp1
	.byte	W54
@ 031   ----------------------------------------
	.byte	W11
	.byte		N60   , Gn3 , v068, gtp2
	.byte	W60
	.byte	W03
	.byte		N88   , Gs3 
	.byte	W22
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W14
	.byte		N60   , As3 , v068, gtp3
	.byte	W66
	.byte		N48   
	.byte	W16
@ 034   ----------------------------------------
	.byte	W54
	.byte	W01
	.byte		TIE   , Gs3 
	.byte	W40
	.byte	W01
@ 035   ----------------------------------------
	.byte	W72
	.byte	W01
	.byte		EOT   
	.byte	W15
	.byte		TIE   , Gn3 
	.byte	W08
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		EOT   
	.byte	W64
	.byte	W01
	.byte		N64   , As3 , v068, gtp1
	.byte	W02
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W06
	.byte		TIE   , Gs3 
	.byte	W90
@ 041   ----------------------------------------
	.byte	W44
	.byte		EOT   
	.byte		TIE   , Gn3 
	.byte	W52
@ 042   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   
	.byte	W15
@ 043   ----------------------------------------
	.byte	W48
	.byte	W03
	.byte		N66   , As3 , v068, gtp1
	.byte	W44
	.byte	W01
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W60
	.byte	W01
	.byte		TIE   , Gs3 
	.byte	W32
	.byte	W03
@ 046   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 047   ----------------------------------------
	.byte	W02
	.byte		TIE   , Gn3 
	.byte	W92
	.byte	W02
@ 048   ----------------------------------------
	.byte	W36
	.byte	W02
	.byte		EOT   
	.byte	W56
	.byte	W02
@ 049   ----------------------------------------
	.byte	W09
	.byte		N64   , As3 
	.byte	W84
	.byte	W03
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W17
	.byte		TIE   , Gs3 
	.byte	W78
	.byte	W01
@ 052   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		N64   , Gn3 , v068, gtp1
	.byte	W42
@ 053   ----------------------------------------
	.byte	W24
	.byte		N66   , Fs3 , v068, gtp1
	.byte	W68
	.byte		N64   , Fn3 , v068, gtp1
	.byte	W04
@ 054   ----------------------------------------
	.byte	W60
	.byte	W02
	.byte		N66   , As3 
	.byte	W32
	.byte	W02
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		        Fn3 , v068, gtp1
	.byte	W44
	.byte	W03
@ 060   ----------------------------------------
	.byte	W36
	.byte		N16   , Gn4 
	.byte	W48
	.byte	W02
	.byte		N48   , Gn4 , v068, gtp1
	.byte	W10
@ 061   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		N15   
	.byte	W17
	.byte		N30   , Gs4 , v068, gtp1
	.byte	W32
	.byte	W02
@ 062   ----------------------------------------
	.byte	W66
	.byte		N16   , Gn4 
	.byte	W16
	.byte		        Gs4 
	.byte	W14
@ 063   ----------------------------------------
	.byte	W52
	.byte		        Gs4 , v060
	.byte	W16
	.byte		N17   , Gn4 
	.byte	W28
@ 064   ----------------------------------------
	.byte	W04
	.byte		N17   
	.byte	W32
	.byte		N28   , Ds4 
	.byte	W60
@ 065   ----------------------------------------
	.byte	W02
	.byte		N30   , Ds4 , v068, gtp1
	.byte	W92
	.byte	W02
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		N60   , Fn4 , v068, gtp3
	.byte	W24
	.byte	W03
@ 068   ----------------------------------------
	.byte	W40
	.byte		N48   , Dn4 , v068, gtp1
	.byte	W56
@ 069   ----------------------------------------
	.byte		VOL   , 96*mus_umineko_worldend_mvl/mxv
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_umineko_worldend_5:
	.byte	KEYSH , mus_umineko_worldend_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte		VOL   , 80*mus_umineko_worldend_mvl/mxv
	.byte		PAN   , c_v+24
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
	.byte	W28
	.byte		N14   , Fn4 , v048
	.byte	W16
	.byte		N15   , Dn4 , v056
	.byte	W16
	.byte		N17   , As4 
	.byte	W36
@ 030   ----------------------------------------
	.byte	W42
	.byte		N30   , Gn4 , v060, gtp1
	.byte	W32
	.byte	W02
	.byte		N30   
	.byte	W20
@ 031   ----------------------------------------
	.byte	W11
	.byte		N16   , Gs4 
	.byte	W16
	.byte		N15   , Gn4 
	.byte	W16
	.byte		        Gs4 
	.byte	W16
	.byte		N14   , As4 
	.byte	W15
	.byte		N88   , Gn4 
	.byte	W22
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		N48   , Fn4 , v060, gtp1
	.byte	W15
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W88
	.byte		N28   , As4 
	.byte	W08
@ 036   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		N30   
	.byte	W32
	.byte	W02
	.byte		N32   , As4 , v060, gtp1
	.byte	W36
@ 037   ----------------------------------------
	.byte	W28
	.byte		N28   , Gs4 
	.byte	W32
	.byte	W01
	.byte		N16   
	.byte	W17
	.byte		        As4 
	.byte	W16
	.byte		        Cn5 
	.byte	W02
@ 038   ----------------------------------------
	.byte	W14
	.byte		        As4 
	.byte	W17
	.byte		N17   , Gs4 
	.byte	W17
	.byte		N16   , As4 
	.byte	W16
	.byte		N32   , Gs4 , v060, gtp2
	.byte	W32
@ 039   ----------------------------------------
	.byte	W03
	.byte		N16   , Gn4 
	.byte	W16
	.byte		N17   , Fn4 
	.byte	W17
	.byte		N32   , Gn4 , v060, gtp2
	.byte	W32
	.byte	W02
	.byte		N16   , Gs4 
	.byte	W16
	.byte		        As4 
	.byte	W10
@ 040   ----------------------------------------
	.byte	W06
	.byte		N24   , Cn5 , v060, gtp2
	.byte	W32
	.byte	W03
	.byte		        Cn5 , v060, gtp3
	.byte	W32
	.byte	W01
	.byte		N32   
	.byte	W22
@ 041   ----------------------------------------
	.byte	W42
	.byte	W01
	.byte		        As4 , v060, gtp2
	.byte	W52
	.byte	W01
@ 042   ----------------------------------------
	.byte	W14
	.byte		        As4 , v060, gtp1
	.byte	W32
	.byte	W02
	.byte		N17   , Gs4 
	.byte	W17
	.byte		N16   , Gn4 
	.byte	W16
	.byte		N28   , Gs4 , v060, gtp1
	.byte	W15
@ 043   ----------------------------------------
	.byte	W19
	.byte		N17   
	.byte	W17
	.byte		N14   , Gn4 
	.byte	W15
	.byte		N17   , Fn4 
	.byte	W17
	.byte		N15   , Ds4 
	.byte	W16
	.byte		N16   , Fn4 
	.byte	W12
@ 044   ----------------------------------------
	.byte	W04
	.byte		N18   , Ds4 
	.byte	W92
@ 045   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		N16   , Gn4 
	.byte	W17
	.byte		N15   , As4 
	.byte	W15
	.byte		N28   , Cn5 , v060, gtp1
	.byte	W32
	.byte	W02
	.byte		N28   
	.byte	W01
@ 046   ----------------------------------------
	.byte	W32
	.byte		N32   
	.byte	W64
@ 047   ----------------------------------------
	.byte	W01
	.byte		N28   , As4 
	.byte	W32
	.byte	W02
	.byte		N28   
	.byte	W32
	.byte		N32   , As4 , v060, gtp1
	.byte	W28
	.byte	W01
@ 048   ----------------------------------------
	.byte	W05
	.byte		N16   , Gs4 
	.byte	W17
	.byte		        Gn4 
	.byte	W16
	.byte		N22   , Gs4 
	.byte	W32
	.byte	W01
	.byte		N17   
	.byte	W17
	.byte		N16   , Gn4 
	.byte	W08
@ 049   ----------------------------------------
	.byte	W09
	.byte		        Fn4 
	.byte	W16
	.byte		        Ds4 
	.byte	W16
	.byte		        Fn4 
	.byte	W17
	.byte		N24   , Gn4 , v060, gtp3
	.byte	W36
	.byte	W02
@ 050   ----------------------------------------
	.byte	W64
	.byte		N17   
	.byte	W17
	.byte		N16   , Gs4 
	.byte	W15
@ 051   ----------------------------------------
	.byte	W01
	.byte		        As4 
	.byte	W16
	.byte		N24   , Cn5 , v060, gtp3
	.byte	W32
	.byte	W02
	.byte		N28   , Cn5 , v060, gtp1
	.byte	W32
	.byte	W01
	.byte		N32   
	.byte	W12
@ 052   ----------------------------------------
	.byte	W54
	.byte		        As4 , v060, gtp1
	.byte	W42
@ 053   ----------------------------------------
	.byte	W76
	.byte		N16   , Cn5 
	.byte	W16
	.byte		N32   , As4 , v060, gtp1
	.byte	W04
@ 054   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		N16   , Gs4 
	.byte	W17
	.byte		        Gn4 
	.byte	W16
	.byte		N32   , Fn4 , v060, gtp2
	.byte	W32
	.byte	W02
@ 055   ----------------------------------------
	.byte		        Gn4 
	.byte	W32
	.byte		N84   , Ds4 , v060, gtp3
	.byte	W64
@ 056   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte		N17   
	.byte	W18
	.byte		N16   , Gn4 
	.byte	W16
	.byte		        Gs4 
	.byte	W16
	.byte		        Gn4 
	.byte	W09
@ 057   ----------------------------------------
	.byte	W08
	.byte		        Gs4 
	.byte	W17
	.byte		        As4 
	.byte	W48
	.byte	W01
	.byte		N16   
	.byte	W17
	.byte		N14   , Gs4 
	.byte	W05
@ 058   ----------------------------------------
	.byte	W11
	.byte		N16   
	.byte	W17
	.byte		N17   , Gn4 
	.byte	W17
	.byte		N16   , Fn4 
	.byte	W16
	.byte		N17   , Gn4 
	.byte	W17
	.byte		N28   , Ds4 
	.byte	W18
@ 059   ----------------------------------------
	.byte	W16
	.byte		N16   
	.byte	W16
	.byte		        Fn4 
	.byte	W17
	.byte		N32   , Gn4 , v060, gtp3
	.byte	W32
	.byte	W03
	.byte		N16   , Fn4 
	.byte	W12
@ 060   ----------------------------------------
	.byte	W04
	.byte		        Gn4 
	.byte	W16
	.byte		        Gs4 
	.byte	W32
	.byte	W01
	.byte		N16   
	.byte	W16
	.byte		N17   , As4 
	.byte	W24
	.byte	W03
@ 061   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		N32   , As4 , v060, gtp1
	.byte	W02
@ 062   ----------------------------------------
	.byte	W32
	.byte		        Cn5 , v060, gtp2
	.byte	W64
@ 063   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N16   , As4 
	.byte	W48
	.byte	W01
	.byte		N14   , Fn4 , v048
	.byte	W12
@ 064   ----------------------------------------
	.byte	W04
	.byte		N15   , Dn4 , v056
	.byte	W16
	.byte		N17   , As4 
	.byte	W76
@ 065   ----------------------------------------
	.byte	W02
	.byte		N30   , Gn4 , v060, gtp1
	.byte	W32
	.byte	W02
	.byte		N30   
	.byte	W30
	.byte		N16   , Gs4 
	.byte	W17
	.byte		N15   , Gn4 
	.byte	W13
@ 066   ----------------------------------------
	.byte	W02
	.byte		N16   , Gs4 
	.byte	W16
	.byte		N14   , As4 
	.byte	W16
	.byte		N88   , Gn4 
	.byte	W60
	.byte	W02
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W40
	.byte		N48   , Fn4 , v060, gtp1
	.byte	W56
@ 069   ----------------------------------------
	.byte		VOL   , 80*mus_umineko_worldend_mvl/mxv
	.byte	FINE

@******************************************************@
	.align	2

mus_umineko_worldend:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_umineko_worldend_pri	@ Priority
	.byte	mus_umineko_worldend_rev	@ Reverb.

	.word	mus_umineko_worldend_grp

	.word	mus_umineko_worldend_1
	.word	mus_umineko_worldend_2
	.word	mus_umineko_worldend_3
	.word	mus_umineko_worldend_4
	.word	mus_umineko_worldend_5

	.end
