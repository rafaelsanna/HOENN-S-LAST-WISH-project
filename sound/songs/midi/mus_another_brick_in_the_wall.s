	.include "MPlayDef.s"

	.equ	mus_another_brick_in_the_wall_grp, voicegroup_hlw_classic_rock
	.equ	mus_another_brick_in_the_wall_pri, 0
	.equ	mus_another_brick_in_the_wall_rev, reverb_set+20
	.equ	mus_another_brick_in_the_wall_mvl, 96
	.equ	mus_another_brick_in_the_wall_key, 0
	.equ	mus_another_brick_in_the_wall_tbs, 1
	.equ	mus_another_brick_in_the_wall_exg, 1
	.equ	mus_another_brick_in_the_wall_cmp, 1

	.section .rodata
	.global	mus_another_brick_in_the_wall
	.align	2

@**************** Track 1 (Midi-Chn.2) ****************@

mus_another_brick_in_the_wall_1:
	.byte		VOL   , 127*mus_another_brick_in_the_wall_mvl/mxv
	.byte	KEYSH , mus_another_brick_in_the_wall_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 109*mus_another_brick_in_the_wall_tbs/2
	.byte		VOICE , 33
	.byte		N12   , Cn1 , v100
	.byte	W12
	.byte		TIE   , Dn1 , v104
	.byte	W84
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W48
	.byte	W03
	.byte		EOT   
	.byte	W44
	.byte	W01
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
mus_another_brick_in_the_wall_1_006:
	.byte	W12
	.byte		TIE   , Dn0 , v104
	.byte	W84
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W11
	.byte		EOT   
	.byte	W01
	.byte		N23   , Dn1 
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 011   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Cn1 
	.byte	W12
@ 012   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		        Dn1 , v104
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 013   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Cn1 
	.byte	W12
@ 014   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		        Dn1 , v104
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 015   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Cn1 
	.byte	W12
@ 016   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		        Dn1 , v104
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 017   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Cn1 
	.byte	W12
@ 018   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N92   , Gn0 , v104, gtp3
	.byte	W84
@ 019   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		        Gn0 , v104, gtp3
	.byte	W84
@ 020   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N44   , Gn0 , v100, gtp3
	.byte	W44
	.byte	W03
	.byte	W01
	.byte		        Gn0 , v100, gtp3
	.byte	W36
@ 021   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N23   
	.byte	W23
	.byte	W01
	.byte		N23   
	.byte	W23
	.byte	W01
	.byte		N23   
	.byte	W23
	.byte	W01
	.byte		N23   
	.byte	W12
@ 022   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		        Dn1 , v104
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 023   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Gn0 
	.byte	W12
@ 024   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N80   , Fn0 , v104, gtp3
	.byte	W80
	.byte	W03
	.byte	W01
@ 025   ----------------------------------------
	.byte		N11   , Fn0 , v100
	.byte	W11
	.byte	W01
	.byte		N80   , Cn1 , v100, gtp2
	.byte	W80
	.byte	W02
	.byte	W02
@ 026   ----------------------------------------
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N23   , Dn1 , v104
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 027   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Gn0 
	.byte	W12
@ 028   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N80   , Fn0 , v104, gtp3
	.byte	W80
	.byte	W03
	.byte	W01
@ 029   ----------------------------------------
	.byte		N11   , Fn0 , v100
	.byte	W11
	.byte	W01
	.byte		N80   , Cn1 , v100, gtp2
	.byte	W80
	.byte	W02
	.byte	W02
@ 030   ----------------------------------------
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N12   , Dn1 , v104
	.byte	W12
	.byte	W72
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_1_006
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W11
	.byte		EOT   , Dn0 
	.byte	W01
	.byte		N23   , Dn1 , v104
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 039   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Cn1 
	.byte	W12
@ 040   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		        Dn1 , v104
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 041   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Cn1 
	.byte	W12
@ 042   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		        Dn1 , v104
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 043   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Cn1 
	.byte	W12
@ 044   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		        Dn1 , v104
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 045   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Cn1 
	.byte	W12
@ 046   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N92   , Gn0 , v104, gtp3
	.byte	W84
@ 047   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		        Gn0 , v104, gtp3
	.byte	W84
@ 048   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N44   , Gn0 , v100, gtp3
	.byte	W44
	.byte	W03
	.byte	W01
	.byte		        Gn0 , v100, gtp3
	.byte	W36
@ 049   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N23   
	.byte	W23
	.byte	W01
	.byte		N23   
	.byte	W23
	.byte	W01
	.byte		N23   
	.byte	W23
	.byte	W01
	.byte		N23   
	.byte	W12
@ 050   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		        Dn1 , v104
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 051   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Gn0 
	.byte	W12
@ 052   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N80   , Fn0 , v104, gtp3
	.byte	W80
	.byte	W03
	.byte	W01
@ 053   ----------------------------------------
	.byte		N11   , Fn0 , v100
	.byte	W11
	.byte	W01
	.byte		N80   , Cn1 , v100, gtp2
	.byte	W80
	.byte	W02
	.byte	W02
@ 054   ----------------------------------------
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N23   , Dn1 , v104
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 055   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Gn0 
	.byte	W12
@ 056   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N80   , Fn0 , v104, gtp3
	.byte	W80
	.byte	W03
	.byte	W01
@ 057   ----------------------------------------
	.byte		N11   , Fn0 , v100
	.byte	W11
	.byte	W01
	.byte		N80   , Cn1 , v100, gtp2
	.byte	W80
	.byte	W02
	.byte	W02
@ 058   ----------------------------------------
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N23   , Dn1 , v104
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 059   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Cn1 
	.byte	W12
@ 060   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		        Dn1 , v104
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 061   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Cn1 
	.byte	W12
@ 062   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		        Dn1 , v104
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 063   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 064   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 065   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Cn1 
	.byte	W12
@ 066   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		        Dn1 , v104
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 067   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 068   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 069   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Cn1 
	.byte	W12
@ 070   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		        Dn1 , v104
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 071   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 072   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 073   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Cn1 
	.byte	W12
@ 074   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		        Dn1 , v104
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 075   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 076   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 077   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Cn1 
	.byte	W12
@ 078   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		        Dn1 , v104
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 079   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 080   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 081   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Cn1 
	.byte	W12
@ 082   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		        Dn1 , v104
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 083   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 084   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 085   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Cn1 
	.byte	W12
@ 086   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		        Dn1 , v104
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 087   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 088   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte	W23
	.byte	W13
	.byte		N11   , Cn1 
	.byte	W11
	.byte	W01
	.byte		N08   , Dn1 
	.byte	W08
	.byte	W28
@ 089   ----------------------------------------
	.byte	W12
	.byte		N23   , Dn1 , v100
	.byte	W23
	.byte	W13
	.byte		N09   
	.byte	W09
	.byte	W03
	.byte		N23   , An0 
	.byte	W23
	.byte	W01
	.byte		        Cn1 
	.byte	W12
@ 090   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		TIE   , Dn1 , v104
	.byte	W84
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W04
	.byte		EOT   
	.byte	W08
	.byte		N11   
	.byte	W11
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_another_brick_in_the_wall_2:
	.byte	KEYSH , mus_another_brick_in_the_wall_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 27
	.byte		VOL   , 60*mus_another_brick_in_the_wall_mvl/mxv
	.byte	W07
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W02
	.byte		N24   , An2 , v092, gtp1
	.byte	W01
	.byte		N19   , Dn3 , v104
	.byte	W02
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N16   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W15
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N06   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N12   , An2 
	.byte	W01
	.byte		N05   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W04
	.byte	W06
	.byte		N13   , An2 
	.byte		N13   , Cn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Fn3 , v108
	.byte	W10
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W05
	.byte		        Fn3 
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N10   , An2 , v092
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N07   , Dn3 , v116
	.byte		N06   , Fn3 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N06   , Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
@ 001   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N23   , An2 , v092
	.byte		N18   , Dn3 , v104
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N16   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W15
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N06   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N08   , An2 
	.byte	W01
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte		N13   , Cn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Fn3 , v108
	.byte	W01
	.byte	W09
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W05
	.byte		        Fn3 
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N10   , An2 , v092
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N07   , Dn3 , v116
	.byte		N06   , Fn3 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N06   , Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
@ 002   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N06   , Fn3 , v120
	.byte	W01
	.byte		        Dn3 , v092
	.byte	W02
	.byte	W03
	.byte	W01
@ 003   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N06   , Fn3 , v120
	.byte	W01
	.byte		        Dn3 , v092
	.byte	W02
	.byte	W03
	.byte	W01
@ 004   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W15
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N12   , Fn3 , v108
	.byte	W01
	.byte	W09
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W06
	.byte	W11
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N09   , An2 , v092
	.byte		N08   , Dn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N06   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W01
	.byte	W04
@ 005   ----------------------------------------
mus_another_brick_in_the_wall_2_005:
	.byte	W10
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N23   , An2 , v092
	.byte		N18   , Dn3 , v104
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N16   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W15
	.byte	PEND
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N06   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N08   , An2 
	.byte	W01
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte		N13   , Cn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Fn3 , v108
	.byte	W01
	.byte	W09
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W05
	.byte	W01
	.byte	W10
	.byte		N10   , An2 , v092
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N07   , Dn3 , v116
	.byte		N06   , Fn3 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N12   , An3 , v096
	.byte	W05
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W02
	.byte	W04
@ 006   ----------------------------------------
mus_another_brick_in_the_wall_2_006:
	.byte	W10
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte	PEND
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N06   , Fn3 , v120
	.byte	W01
	.byte		        Dn3 , v092
	.byte	W02
	.byte	W03
	.byte	W01
@ 007   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N06   , Fn3 , v120
	.byte	W01
	.byte		        Dn3 , v092
	.byte	W02
	.byte	W03
	.byte	W01
@ 008   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W15
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N12   , Fn3 , v108
	.byte	W01
	.byte	W09
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W06
	.byte	W11
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N09   , An2 , v092
	.byte		N08   , Dn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N06   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W01
	.byte	W04
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_2_005
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N06   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N08   , An2 
	.byte	W01
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte		N13   , Cn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Fn3 , v108
	.byte	W01
	.byte	W09
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W06
	.byte	W10
	.byte		N10   , An2 , v092
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N07   , Dn3 , v116
	.byte		N06   , Fn3 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N12   , An3 , v096
	.byte	W05
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W02
	.byte	W04
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_2_006
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N06   , Fn3 , v120
	.byte	W01
	.byte		        Dn3 , v092
	.byte	W02
	.byte	W03
	.byte	W01
@ 011   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N06   , Fn3 , v120
	.byte	W01
	.byte		        Dn3 , v092
	.byte	W02
	.byte	W03
	.byte	W01
@ 012   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W15
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N12   , Fn3 , v108
	.byte	W01
	.byte	W09
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W06
	.byte	W11
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N09   , An2 , v092
	.byte		N08   , Dn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N06   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W01
	.byte	W04
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_2_005
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N06   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N08   , An2 
	.byte	W01
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte		N13   , Cn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Fn3 , v108
	.byte	W01
	.byte	W09
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W05
	.byte	W01
	.byte	W10
	.byte		N10   , An2 , v092
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N07   , Dn3 , v116
	.byte		N06   , Fn3 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N12   , An3 , v096
	.byte	W05
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W02
	.byte	W04
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_2_006
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N06   , Fn3 , v120
	.byte	W01
	.byte		        Dn3 , v092
	.byte	W02
	.byte	W03
	.byte	W01
@ 015   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N06   , Fn3 , v120
	.byte	W01
	.byte		        Dn3 , v092
	.byte	W02
	.byte	W03
	.byte	W01
@ 016   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W15
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N12   , Fn3 , v108
	.byte	W01
	.byte	W09
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W06
	.byte	W11
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N09   , An2 , v092
	.byte		N08   , Dn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N06   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W01
	.byte	W04
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_2_005
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N06   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N08   , An2 
	.byte	W01
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte		N13   , Cn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Fn3 , v108
	.byte	W01
	.byte	W09
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W06
	.byte	W10
	.byte		N10   , An2 , v092
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N07   , Dn3 , v116
	.byte		N06   , Fn3 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N12   , An3 , v096
	.byte	W05
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W02
	.byte	W04
@ 018   ----------------------------------------
	.byte	W10
	.byte		N01   , Dn2 , v104
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N01   , An2 , v092
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N10   
	.byte		N09   , Gn3 
	.byte		N05   , Bn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W04
	.byte		        c_v+0
	.byte	W01
	.byte		N05   
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N11   , Dn3 
	.byte		N10   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N23   , Dn3 
	.byte		N11   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N05   , Gn3 
	.byte		N06   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N05   , Gn3 
	.byte		N06   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N05   , Gn3 
	.byte		N06   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N05   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N10   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N06   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
@ 019   ----------------------------------------
mus_another_brick_in_the_wall_2_019:
	.byte		N11   , Dn3 , v104
	.byte		N11   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte	PEND
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N10   , Dn3 
	.byte		N09   , Gn3 
	.byte		N05   , Bn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W04
	.byte		        c_v+0
	.byte	W01
	.byte		N06   
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N11   , Dn3 
	.byte		N10   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N23   , Dn3 
	.byte		N11   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N05   , Gn3 
	.byte		N06   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N05   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N05   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N05   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N10   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N06   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_2_019
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   , Bn3 , v104
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N10   , Dn3 
	.byte		N09   , Gn3 
	.byte		N05   , Bn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W04
	.byte		        c_v+0
	.byte	W01
	.byte		N05   
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N11   , Dn3 
	.byte		N10   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N23   , Dn3 
	.byte		N11   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	W01
	.byte		N06   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N05   , Gn3 
	.byte		N06   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N05   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N05   , Gn3 
	.byte		N06   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N05   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N10   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N06   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
@ 021   ----------------------------------------
mus_another_brick_in_the_wall_2_021:
	.byte		BEND  , c_v+0
	.byte		N11   , Dn3 , v104
	.byte		N11   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte	PEND
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N10   , Dn3 
	.byte		N09   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N05   
	.byte	W03
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N11   , Dn3 
	.byte		N10   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N23   , Dn3 
	.byte		N11   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N05   , Gn3 
	.byte		N06   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N05   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N05   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N05   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Dn3 
	.byte		N10   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N06   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
@ 022   ----------------------------------------
mus_another_brick_in_the_wall_2_022:
	.byte		N11   , Dn3 , v104
	.byte		N11   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	PEND
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N23   , An2 , v092
	.byte		N11   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W09
	.byte	W07
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N01   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W11
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W06
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N07   , Fn3 , v116
	.byte		N06   , An3 
	.byte		N05   , Dn4 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W04
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		N08   , En3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N07   , Gn3 
	.byte		N07   , Cn4 
	.byte	W05
@ 023   ----------------------------------------
	.byte	W02
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N24   , Fn3 , v116, gtp1
	.byte		N18   , Dn4 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N18   , An3 
	.byte	W17
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N06   , Dn4 , v068
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N03   , An3 , v116
	.byte	W03
	.byte	W02
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N01   
	.byte		N01   , Dn4 , v104
	.byte	W01
	.byte	W09
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N06   , En3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N05   , Cn4 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N03   , Gn3 
	.byte	W03
	.byte	W01
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N05   , En3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W04
	.byte	W02
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N10   , Dn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N05   , Gn3 
	.byte		N04   , Bn3 
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N05   
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N04   , Gn3 , v056
	.byte	W03
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N06   , Dn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N05   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
@ 024   ----------------------------------------
mus_another_brick_in_the_wall_2_024:
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N11   , Cn3 , v116
	.byte		N11   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N10   , An3 
	.byte	W10
	.byte	PEND
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N12   , Cn3 , v108
	.byte		N10   , Fn3 
	.byte		N08   , Cn4 
	.byte	W08
	.byte	W02
	.byte	W02
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N09   , Cn3 
	.byte		N09   , Fn3 
	.byte		N08   , Cn4 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W07
	.byte	W01
	.byte	W14
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N10   , Cn3 
	.byte		N10   , Fn3 
	.byte		N07   , Cn4 
	.byte	W07
	.byte	W03
	.byte	W13
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N09   , Cn3 
	.byte		N08   , Fn3 
	.byte		N07   , Cn4 
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W03
@ 025   ----------------------------------------
	.byte	W11
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N08   , Cn3 
	.byte		N09   , En3 
	.byte		N07   , Cn4 
	.byte	W07
	.byte	W01
	.byte	W01
	.byte	W07
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N11   , Cn3 , v096
	.byte		N12   , En3 
	.byte		N05   , Cn4 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W04
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Cn3 , v096
	.byte		N01   , Cn4 , v100
	.byte		N01   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N11   , Cn3 , v096
	.byte		N12   , En3 
	.byte		N05   , Cn4 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N01   
	.byte		N01   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Cn3 , v096
	.byte		N12   , En3 
	.byte		N05   , Cn4 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Cn3 , v096
	.byte		N12   , En3 
	.byte		N05   , Cn4 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N05   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
@ 026   ----------------------------------------
mus_another_brick_in_the_wall_2_026:
	.byte		N11   , Cn3 , v096
	.byte		N11   , En3 
	.byte		N05   , Cn4 , v100
	.byte	W05
	.byte	PEND
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		TIE   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N06   , Fn3 , v120
	.byte	W01
	.byte		        Dn3 , v092
	.byte	W02
	.byte	W03
	.byte	W01
@ 027   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W06
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N06   , Fn3 , v120
	.byte	W01
	.byte		        Dn3 , v092
	.byte	W02
	.byte	W03
	.byte	W01
@ 028   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte	W05
	.byte		EOT   , Cn4 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N10   , Cn3 , v108
	.byte		N10   , Fn3 
	.byte		N23   , Cn4 
	.byte	W10
	.byte	W13
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N09   , Cn3 
	.byte		N09   , Fn3 
	.byte		N23   , Cn4 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W08
	.byte	W14
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N10   , Cn3 
	.byte		N10   , Fn3 
	.byte		N23   , Cn4 
	.byte	W10
	.byte	W13
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N09   , Cn3 
	.byte		N08   , Fn3 
	.byte		N23   , Cn4 
	.byte	W08
	.byte	W01
	.byte	W03
@ 029   ----------------------------------------
	.byte	W11
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N08   , Cn3 
	.byte		N09   , En3 
	.byte		N23   , Cn4 
	.byte	W08
	.byte	W01
	.byte	W07
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N11   , Cn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N11   , En3 
	.byte		N05   , Cn4 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W04
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N11   , Cn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , En3 
	.byte		N01   , Cn4 
	.byte		N01   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Cn3 , v104
	.byte		N12   , En3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N05   , Cn4 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N01   
	.byte		N01   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		N12   , Cn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N12   , En3 
	.byte	W01
	.byte		N05   , Cn4 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N10   , Cn3 
	.byte		N12   , En3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N05   , Cn4 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N05   
	.byte	W03
	.byte	W02
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N09   , Cn3 
	.byte		N09   , En3 
	.byte	W01
@ 030   ----------------------------------------
	.byte		N05   , Cn4 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		TIE   
	.byte	W02
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N08   , Dn2 
	.byte		N09   , An2 , v092
	.byte		N09   , Dn3 , v104
	.byte	W08
	.byte	W01
	.byte	W72
	.byte	W03
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W13
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W18
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_2_006
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N06   , Fn3 , v120
	.byte	W01
	.byte		        Dn3 , v092
	.byte	W02
	.byte	W03
	.byte	W01
@ 035   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N06   , Fn3 , v120
	.byte	W01
	.byte		        Dn3 , v092
	.byte	W02
	.byte	W03
	.byte	W01
@ 036   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W15
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N12   , Fn3 , v108
	.byte	W01
	.byte	W09
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W06
	.byte	W11
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N09   , An2 , v092
	.byte		N08   , Dn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N06   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W01
	.byte	W04
@ 037   ----------------------------------------
mus_another_brick_in_the_wall_2_037:
	.byte	W10
	.byte		N28   , Dn2 , v104
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N23   , An2 , v092
	.byte		N18   , Dn3 , v104
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N16   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W15
	.byte	PEND
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N06   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N08   , An2 
	.byte	W01
	.byte		N13   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W02
	.byte	W04
	.byte	W04
	.byte		N13   , An2 
	.byte		N13   , Cn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Fn3 , v108
	.byte	W10
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W06
	.byte	W10
	.byte		N10   , An2 , v092
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N24   , Dn3 , v116
	.byte		N06   , Fn3 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N12   , An3 , v096
	.byte	W05
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W02
	.byte	W04
@ 038   ----------------------------------------
	.byte	W10
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N06   , Fn3 , v120
	.byte	W01
	.byte		        Dn3 , v092
	.byte	W02
	.byte	W03
	.byte	W01
@ 039   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N06   , Fn3 , v120
	.byte	W01
	.byte		        Dn3 , v092
	.byte	W02
	.byte	W03
	.byte	W01
@ 040   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W15
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N12   , Fn3 , v108
	.byte	W01
	.byte	W09
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W06
	.byte	W11
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N09   , An2 , v092
	.byte		N08   , Dn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N06   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W01
	.byte	W04
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_2_037
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N06   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N08   , An2 
	.byte	W01
	.byte		N13   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W02
	.byte	W04
	.byte	W04
	.byte		N13   , An2 
	.byte		N13   , Cn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Fn3 , v108
	.byte	W10
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W05
	.byte	W01
	.byte	W10
	.byte		N10   , An2 , v092
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N07   , Dn3 , v116
	.byte		N06   , Fn3 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N12   , An3 , v096
	.byte	W05
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W02
	.byte	W04
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_2_006
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N06   , Fn3 , v120
	.byte	W01
	.byte		        Dn3 , v092
	.byte	W02
	.byte	W03
	.byte	W01
@ 043   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N06   , Fn3 , v120
	.byte	W01
	.byte		        Dn3 , v092
	.byte	W02
	.byte	W03
	.byte	W01
@ 044   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W15
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N12   , Fn3 , v108
	.byte	W01
	.byte	W09
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W06
	.byte	W11
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N09   , An2 , v092
	.byte		N08   , Dn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N06   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W01
	.byte	W04
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_2_037
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N06   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N08   , An2 
	.byte	W01
	.byte		N13   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W02
	.byte	W04
	.byte	W04
	.byte		N13   , An2 
	.byte		N13   , Cn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Fn3 , v108
	.byte	W10
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte	W06
	.byte	W10
	.byte		N10   , An2 , v092
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N07   , Dn3 , v116
	.byte		N06   , Fn3 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N12   , An3 , v096
	.byte	W05
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W02
	.byte	W04
@ 046   ----------------------------------------
	.byte	W10
	.byte		N01   , Dn2 , v104
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N01   , An2 , v092
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N10   
	.byte		N09   , Gn3 
	.byte		N05   , Bn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W04
	.byte		        c_v+0
	.byte	W01
	.byte		N06   
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N11   , Dn3 
	.byte		N10   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N23   , Dn3 
	.byte		N11   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N05   , Gn3 
	.byte		N06   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N05   , Gn3 
	.byte		N06   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N05   , Gn3 
	.byte		N06   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N05   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N10   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_2_019
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   , Bn3 , v104
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N10   , Dn3 
	.byte		N09   , Gn3 
	.byte		N05   , Bn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W04
	.byte		        c_v+0
	.byte	W01
	.byte		N05   
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N11   , Dn3 
	.byte		N10   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N23   , Dn3 
	.byte		N11   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N05   , Gn3 
	.byte		N06   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N05   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N05   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N05   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N10   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N06   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_2_019
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   , Bn3 , v104
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N10   , Dn3 
	.byte		N09   , Gn3 
	.byte		N05   , Bn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W04
	.byte		        c_v+0
	.byte	W01
	.byte		N05   
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N11   , Dn3 
	.byte		N10   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N23   , Dn3 
	.byte		N11   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N05   , Gn3 
	.byte		N06   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N05   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N05   , Gn3 
	.byte		N06   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N05   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N10   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N06   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_2_021
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N05   , Bn3 , v104
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N10   , Dn3 
	.byte		N09   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N05   
	.byte	W03
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N11   , Dn3 
	.byte		N10   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N23   , Dn3 
	.byte		N11   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N05   , Gn3 
	.byte		N06   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N05   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte		N05   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N05   , Gn3 
	.byte		N05   , Bn3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Dn3 
	.byte		N10   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N06   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_2_022
	.byte	W01
	.byte		N05   , Bn3 , v104
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N23   , An2 , v092
	.byte		N11   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W09
	.byte	W07
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N01   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W11
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W06
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N07   , Fn3 , v116
	.byte		N06   , An3 
	.byte		N05   , Dn4 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W04
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		N08   , En3 
	.byte	W01
	.byte		EOT   , Cn4 
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N07   , Gn3 
	.byte		N52   , Cn4 , v116, gtp1
	.byte	W05
@ 051   ----------------------------------------
	.byte	W02
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N24   , Fn3 , v116, gtp1
	.byte		N18   , Dn4 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N18   , An3 
	.byte	W17
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N06   , Dn4 , v068
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N03   , An3 , v116
	.byte	W03
	.byte	W02
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N01   
	.byte		N01   , Dn4 , v104
	.byte	W01
	.byte	W09
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N06   , En3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N12   , Cn4 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N03   , Gn3 
	.byte	W03
	.byte	W01
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N05   , En3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N06   , Gn3 
	.byte		N44   , Cn4 , v116, gtp3
	.byte	W04
	.byte	W02
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N10   , Dn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N05   , Gn3 
	.byte		N04   , Bn3 
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N05   
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N04   , Gn3 , v056
	.byte	W03
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N06   , Dn3 , v116
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N05   , Gn3 
	.byte		N05   , Bn3 
	.byte	W05
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_2_024
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Cn3 , v108
	.byte		N10   , Fn3 
	.byte		N23   , Cn4 
	.byte	W10
	.byte	W01
	.byte	W12
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N09   , Cn3 
	.byte		N09   , Fn3 
	.byte		N23   , Cn4 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W08
	.byte	W14
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N10   , Cn3 
	.byte		N10   , Fn3 
	.byte		N23   , Cn4 
	.byte	W10
	.byte	W13
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N09   , Cn3 
	.byte		N08   , Fn3 
	.byte		N23   , Cn4 
	.byte	W08
	.byte	W01
	.byte	W03
@ 053   ----------------------------------------
	.byte	W11
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N08   , Cn3 
	.byte		N09   , En3 
	.byte		N23   , Cn4 
	.byte	W08
	.byte	W01
	.byte	W07
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N11   , Cn3 , v096
	.byte		N12   , En3 
	.byte		N05   , Cn4 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W04
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Cn3 , v096
	.byte		N12   , En3 
	.byte		N05   , Cn4 , v100
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N11   , Cn3 , v096
	.byte		N12   , En3 
	.byte		N05   , Cn4 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Cn3 , v096
	.byte		N12   , En3 
	.byte		N05   , Cn4 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Cn3 , v096
	.byte		N12   , En3 
	.byte		N05   , Cn4 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N05   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
@ 054   ----------------------------------------
	.byte		N08   , Cn3 , v096
	.byte		N09   , En3 
	.byte		N05   , Cn4 , v100
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		TIE   
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N06   , Fn3 , v120
	.byte	W01
	.byte		        Dn3 , v092
	.byte	W02
	.byte	W03
	.byte	W01
@ 055   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N06   , Fn3 , v120
	.byte	W01
	.byte		        Dn3 , v092
	.byte	W02
	.byte	W03
	.byte	W01
@ 056   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte	W05
	.byte		EOT   , Cn4 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N10   , Cn3 , v108
	.byte		N10   , Fn3 
	.byte		N23   , Cn4 
	.byte	W10
	.byte	W13
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		N09   , Cn3 
	.byte		N09   , Fn3 
	.byte		N23   , Cn4 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W08
	.byte	W14
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N10   , Cn3 
	.byte		N10   , Fn3 
	.byte		N23   , Cn4 
	.byte	W10
	.byte	W13
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N09   , Cn3 
	.byte		N08   , Fn3 
	.byte		N23   , Cn4 
	.byte	W08
	.byte	W01
	.byte	W03
@ 057   ----------------------------------------
	.byte	W11
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N08   , Cn3 
	.byte		N09   , En3 
	.byte		N23   , Cn4 
	.byte	W08
	.byte	W01
	.byte	W07
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N11   , Cn3 , v096
	.byte		N12   , En3 
	.byte		N05   , Cn4 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W04
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Cn3 , v096
	.byte		N01   , Cn4 , v100
	.byte		N01   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N05   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N12   , Cn3 , v096
	.byte		N12   , En3 
	.byte		N05   , Cn4 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		N01   
	.byte		N01   
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Cn3 , v096
	.byte		N12   , En3 
	.byte		N05   , Cn4 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Cn3 , v096
	.byte		N11   , En3 
	.byte		N05   , Cn4 , v100
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N05   
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_2_026
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		TIE   , Cn4 , v100
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		TIE   , Dn2 , v104
	.byte		TIE   , An2 , v092
	.byte		TIE   , Dn3 , v104
	.byte	W84
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
	.byte	W92
	.byte		EOT   , Dn2 
	.byte		        An2 
	.byte		        Dn3 
	.byte		        Cn4 
	.byte	FINE

@**************** Track 3 (Midi-Chn.4) ****************@

mus_another_brick_in_the_wall_3:
	.byte	KEYSH , mus_another_brick_in_the_wall_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 28
	.byte		VOL   , 70*mus_another_brick_in_the_wall_mvl/mxv
	.byte	W07
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W02
	.byte		N24   , An2 , v092, gtp1
	.byte	W01
	.byte		N19   , Dn3 , v104
	.byte	W02
	.byte		N16   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W15
	.byte	W01
	.byte		N06   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		N11   , An2 
	.byte	W01
	.byte		N05   , Dn3 , v108
	.byte	W01
	.byte		N09   , Fn3 , v092
	.byte	W04
	.byte	W05
	.byte	W01
	.byte		N13   , An2 
	.byte		N13   , Cn3 , v116
	.byte	W02
	.byte		N11   , Fn3 , v108
	.byte	W11
	.byte		N13   , An2 , v092
	.byte		N06   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N06   , Fn3 , v116
	.byte	W01
	.byte		        Dn3 , v096
	.byte	W05
	.byte	W01
	.byte		N01   , Dn3 , v004
	.byte	W05
	.byte		        Fn3 
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N10   , An2 , v092
	.byte	W01
	.byte		N06   , Dn3 , v116
	.byte		N06   , Fn3 , v100
	.byte	W01
	.byte		N11   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		        Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W01
	.byte	W01
@ 001   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N18   , Dn3 , v104
	.byte	W01
	.byte		N16   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W15
	.byte	W01
	.byte		N06   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		N07   , An2 
	.byte	W01
	.byte		N13   , Dn3 , v108
	.byte	W01
	.byte		N09   , Fn3 , v092
	.byte	W02
	.byte	W03
	.byte	W04
	.byte	W01
	.byte		N13   , An2 
	.byte		N13   , Cn3 , v116
	.byte	W02
	.byte		N11   , Fn3 , v108
	.byte	W11
	.byte		N13   , An2 , v092
	.byte		N06   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N06   , Fn3 , v116
	.byte	W01
	.byte		        Dn3 , v096
	.byte	W05
	.byte	W01
	.byte		N01   , Dn3 , v004
	.byte	W05
	.byte		        Fn3 
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N10   , An2 , v092
	.byte	W01
	.byte		N06   , Dn3 , v116
	.byte		N06   , Fn3 , v100
	.byte	W01
	.byte		N11   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		        Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W01
	.byte	W01
@ 002   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W06
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		N06   , Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
@ 003   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W06
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		N06   , Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
@ 004   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W06
	.byte	W06
	.byte	W11
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N06   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W06
	.byte	W02
	.byte	W04
@ 005   ----------------------------------------
mus_another_brick_in_the_wall_3_005:
	.byte	W10
	.byte		N28   , Dn2 , v104
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N18   , Dn3 , v104
	.byte	W01
	.byte		N16   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W15
	.byte	PEND
	.byte	W01
	.byte		N06   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		N07   , An2 
	.byte	W01
	.byte		N13   , Dn3 , v108
	.byte	W01
	.byte		N09   , Fn3 , v092
	.byte	W02
	.byte	W03
	.byte	W04
	.byte	W01
	.byte		N13   , An2 
	.byte		N13   , Cn3 , v116
	.byte	W02
	.byte		N11   , Fn3 , v108
	.byte	W11
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W06
	.byte	W05
	.byte	W01
	.byte	W10
	.byte		N10   , An2 , v092
	.byte	W01
	.byte		N07   , Dn3 , v116
	.byte		N06   , Fn3 , v100
	.byte	W01
	.byte		N11   , An3 , v096
	.byte	W05
	.byte	W01
	.byte	W02
	.byte	W03
	.byte	W01
@ 006   ----------------------------------------
mus_another_brick_in_the_wall_3_006:
	.byte	W10
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte	PEND
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W06
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		N06   , Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
@ 007   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W06
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		N06   , Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
@ 008   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W06
	.byte	W06
	.byte	W11
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N06   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W06
	.byte	W02
	.byte	W04
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_3_005
	.byte	W01
	.byte		N06   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		N07   , An2 
	.byte	W01
	.byte		N13   , Dn3 , v108
	.byte	W01
	.byte		N09   , Fn3 , v092
	.byte	W02
	.byte	W03
	.byte	W04
	.byte	W01
	.byte		N13   , An2 
	.byte		N13   , Cn3 , v116
	.byte	W02
	.byte		N11   , Fn3 , v108
	.byte	W11
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W06
	.byte	W05
	.byte	W01
	.byte	W10
	.byte		N10   , An2 , v092
	.byte	W01
	.byte		N07   , Dn3 , v116
	.byte		N06   , Fn3 , v100
	.byte	W01
	.byte		N11   , An3 , v096
	.byte	W05
	.byte	W01
	.byte	W02
	.byte	W03
	.byte	W01
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_3_006
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W06
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		N06   , Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
@ 011   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W06
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		N06   , Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
@ 012   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W06
	.byte	W06
	.byte	W11
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N06   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W06
	.byte	W02
	.byte	W04
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_3_005
	.byte	W01
	.byte		N06   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		N07   , An2 
	.byte	W01
	.byte		N13   , Dn3 , v108
	.byte	W01
	.byte		N09   , Fn3 , v092
	.byte	W02
	.byte	W03
	.byte	W04
	.byte	W01
	.byte		N13   , An2 
	.byte		N13   , Cn3 , v116
	.byte	W02
	.byte		N11   , Fn3 , v108
	.byte	W11
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W06
	.byte	W05
	.byte	W01
	.byte	W10
	.byte		N10   , An2 , v092
	.byte	W01
	.byte		N07   , Dn3 , v116
	.byte		N06   , Fn3 , v100
	.byte	W01
	.byte		N11   , An3 , v096
	.byte	W05
	.byte	W01
	.byte	W02
	.byte	W03
	.byte	W01
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_3_006
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W06
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		N06   , Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
@ 015   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W06
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		N06   , Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
@ 016   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W06
	.byte	W06
	.byte	W11
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N06   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W06
	.byte	W02
	.byte	W04
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_3_005
	.byte	W01
	.byte		N06   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		N07   , An2 
	.byte	W01
	.byte		N13   , Dn3 , v108
	.byte	W01
	.byte		N09   , Fn3 , v092
	.byte	W02
	.byte	W03
	.byte	W04
	.byte	W01
	.byte		N13   , An2 
	.byte		N13   , Cn3 , v116
	.byte	W02
	.byte		N11   , Fn3 , v108
	.byte	W11
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W06
	.byte	W05
	.byte	W01
	.byte	W10
	.byte		N10   , An2 , v092
	.byte	W01
	.byte		N07   , Dn3 , v116
	.byte		N06   , Fn3 , v100
	.byte	W01
	.byte		N11   , An3 , v096
	.byte	W05
	.byte	W01
	.byte	W02
	.byte	W03
	.byte	W01
@ 018   ----------------------------------------
	.byte	W10
	.byte		N01   , Dn2 , v104
	.byte	W01
	.byte		        An2 , v092
	.byte		N01   , Dn3 , v104
	.byte	W84
	.byte	W01
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_3_006
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W06
	.byte	W06
	.byte	W24
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_3_006
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W06
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		N06   , Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
@ 027   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N01   , Fn3 , v116
	.byte		N01   
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W06
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		N06   , Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
@ 028   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W19
	.byte	W04
	.byte	W05
	.byte	W56
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
	.byte	W96
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_3_006
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W06
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		N06   , Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
@ 035   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W06
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		N06   , Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
@ 036   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W06
	.byte	W06
	.byte	W11
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N06   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W06
	.byte	W02
	.byte	W04
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_3_005
	.byte	W01
	.byte		N06   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		N07   , An2 
	.byte	W01
	.byte		N13   , Dn3 , v108
	.byte	W01
	.byte		N09   , Fn3 , v092
	.byte	W02
	.byte	W03
	.byte	W04
	.byte	W01
	.byte		N13   , An2 
	.byte		N13   , Cn3 , v116
	.byte	W02
	.byte		N11   , Fn3 , v108
	.byte	W11
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W06
	.byte	W05
	.byte	W01
	.byte	W10
	.byte		N10   , An2 , v092
	.byte	W01
	.byte		N07   , Dn3 , v116
	.byte		N06   , Fn3 , v100
	.byte	W01
	.byte		N11   , An3 , v096
	.byte	W05
	.byte	W01
	.byte	W02
	.byte	W03
	.byte	W01
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_3_006
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W06
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		N06   , Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
@ 039   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W06
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		N06   , Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
@ 040   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W06
	.byte	W06
	.byte	W11
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N06   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W06
	.byte	W02
	.byte	W04
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_3_005
	.byte	W01
	.byte		N06   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		N07   , An2 
	.byte	W01
	.byte		N13   , Dn3 , v108
	.byte	W01
	.byte		N09   , Fn3 , v092
	.byte	W02
	.byte	W03
	.byte	W04
	.byte	W01
	.byte		N13   , An2 
	.byte		N13   , Cn3 , v116
	.byte	W02
	.byte		N11   , Fn3 , v108
	.byte	W11
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W06
	.byte	W05
	.byte	W01
	.byte	W10
	.byte		N10   , An2 , v092
	.byte	W01
	.byte		N07   , Dn3 , v116
	.byte		N06   , Fn3 , v100
	.byte	W01
	.byte		N11   , An3 , v096
	.byte	W05
	.byte	W01
	.byte	W02
	.byte	W03
	.byte	W01
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_3_006
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W06
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		N06   , Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
@ 043   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W06
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		N06   , Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
@ 044   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W06
	.byte	W06
	.byte	W11
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N06   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W06
	.byte	W02
	.byte	W04
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_3_005
	.byte	W01
	.byte		N06   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte		N07   , An2 
	.byte	W01
	.byte		N13   , Dn3 , v108
	.byte	W01
	.byte		N09   , Fn3 , v092
	.byte	W02
	.byte	W03
	.byte	W04
	.byte	W01
	.byte		N13   , An2 
	.byte		N13   , Cn3 , v116
	.byte	W02
	.byte		N11   , Fn3 , v108
	.byte	W11
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N11   , Fn3 , v096
	.byte	W06
	.byte	W05
	.byte	W01
	.byte	W10
	.byte		N10   , An2 , v092
	.byte	W01
	.byte		N07   , Dn3 , v116
	.byte		N06   , Fn3 , v100
	.byte	W01
	.byte		N11   , An3 , v096
	.byte	W05
	.byte	W01
	.byte	W02
	.byte	W03
	.byte	W01
@ 046   ----------------------------------------
	.byte	W10
	.byte		N01   , Dn2 , v104
	.byte	W01
	.byte		        An2 , v092
	.byte		N01   , Dn3 , v104
	.byte	W84
	.byte	W01
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_3_006
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N12   , Fn3 , v096
	.byte	W06
	.byte	W06
	.byte	W24
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_3_006
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W06
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		N06   , Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
@ 055   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W01
	.byte		N17   , Fn3 , v096
	.byte	W01
	.byte		N22   , An3 
	.byte	W16
	.byte		N07   , Fn3 , v108
	.byte	W01
	.byte		N05   , Dn3 , v100
	.byte	W04
	.byte	W01
	.byte		N07   , An2 
	.byte		N14   , Dn3 , v108
	.byte	W01
	.byte		N10   , Fn3 , v092
	.byte	W03
	.byte	W03
	.byte	W04
	.byte		N13   , An2 
	.byte	W01
	.byte		N12   , Cn3 , v116
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W01
	.byte	W10
	.byte		N13   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W05
	.byte		N07   , Fn3 , v116
	.byte	W01
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		N01   , Dn3 , v004
	.byte	W06
	.byte		N01   
	.byte		N01   , Fn3 
	.byte	W05
	.byte		N09   , An2 , v092
	.byte		N07   , Dn3 , v116
	.byte	W01
	.byte		N05   , Fn3 , v100
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		N05   , Fn3 , v120
	.byte	W01
	.byte		N06   , Dn3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
@ 056   ----------------------------------------
	.byte		N01   , Dn3 , v004
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01   
	.byte	W04
	.byte		N28   , Dn2 , v104, gtp1
	.byte	W01
	.byte		N23   , An2 , v092
	.byte		N19   , Dn3 , v104
	.byte	W19
	.byte	W04
	.byte	W05
	.byte	FINE

@**************** Track 4 (Midi-Chn.5) ****************@

mus_another_brick_in_the_wall_4:
	.byte	KEYSH , mus_another_brick_in_the_wall_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 30
	.byte		VOL   , 70*mus_another_brick_in_the_wall_mvl/mxv
	.byte	W28
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte	W04
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Dn3 , v100
	.byte	W01
	.byte	W05
@ 001   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte	W04
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Dn3 , v100
	.byte	W01
	.byte	W05
@ 002   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte	W04
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Dn3 , v100
	.byte	W01
	.byte	W05
@ 003   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte	W04
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Dn3 , v100
	.byte	W01
	.byte	W05
@ 004   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
	.byte		N01   , Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
@ 005   ----------------------------------------
	.byte		N01   , Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
	.byte		N01   , Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
@ 006   ----------------------------------------
	.byte		N01   , Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte	W04
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Dn3 , v100
	.byte	W01
	.byte	W05
@ 007   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte	W04
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Dn3 , v100
	.byte	W01
	.byte	W05
@ 008   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
	.byte		N01   , Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
@ 009   ----------------------------------------
	.byte		N01   , Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
	.byte		N01   , Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
@ 010   ----------------------------------------
	.byte		N01   , Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte	W04
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Dn3 , v100
	.byte	W01
	.byte	W05
@ 011   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte	W04
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Dn3 , v100
	.byte	W01
	.byte	W05
@ 012   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
	.byte		N01   , Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
@ 013   ----------------------------------------
	.byte		N01   , Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
	.byte		N01   , Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
@ 014   ----------------------------------------
	.byte		N01   , Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte	W04
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Dn3 , v100
	.byte	W01
	.byte	W05
@ 015   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte	W04
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Dn3 , v100
	.byte	W01
	.byte	W05
@ 016   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
	.byte		N01   , Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W11
@ 017   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
	.byte		N01   , Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
@ 018   ----------------------------------------
	.byte		N01   , Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W84
	.byte	W01
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
mus_another_brick_in_the_wall_4_022:
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte	PEND
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W18
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
@ 023   ----------------------------------------
mus_another_brick_in_the_wall_4_023:
	.byte	W11
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W84
	.byte	W01
	.byte	PEND
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_4_022
	.byte		N01   , Dn3 , v108
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte	W04
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Dn3 , v100
	.byte	W01
	.byte	W05
@ 027   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte	W04
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Dn3 , v100
	.byte	W01
	.byte	W05
@ 028   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W84
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
	.byte	W96
@ 034   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W22
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte	W04
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		        Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v100
	.byte	W01
	.byte	W05
@ 035   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W23
	.byte		        Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W22
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte	W04
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		        Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v100
	.byte	W01
	.byte	W05
@ 036   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W23
	.byte		        Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W22
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W10
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		        Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W11
@ 037   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W23
	.byte		        Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W22
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W10
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		        Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W11
@ 038   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W23
	.byte		        Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W22
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte	W04
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		        Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v100
	.byte	W01
	.byte	W05
@ 039   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W23
	.byte		        Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W22
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte	W04
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		        Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v100
	.byte	W01
	.byte	W05
@ 040   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W23
	.byte		        Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W22
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W10
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		        Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W11
@ 041   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W23
	.byte		        Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W22
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W10
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		        Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W11
@ 042   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W23
	.byte		        Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W22
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte	W04
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		        Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v100
	.byte	W01
	.byte	W05
@ 043   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W23
	.byte		        Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W22
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte	W04
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		        Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v100
	.byte	W01
	.byte	W05
@ 044   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W23
	.byte		        Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W22
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W10
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		        Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W11
@ 045   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W23
	.byte		        Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W22
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W10
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		        Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W11
@ 046   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W90
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_4_022
	.byte		N01   , Dn3 , v108
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W18
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_4_023
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_another_brick_in_the_wall_4_022
	.byte		N01   , Dn3 , v108
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte	W04
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Dn3 , v100
	.byte	W01
	.byte	W05
@ 055   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W16
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Fn3 , v108
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N01   , Fn3 , v100
	.byte	W01
	.byte	W10
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , An2 
	.byte		N02   , Dn3 , v108
	.byte	W01
	.byte		N01   , Fn3 , v104
	.byte	W01
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N01   , Dn3 , v104
	.byte	W01
	.byte	W04
	.byte		        Fn3 , v080
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fn3 , v076
	.byte	W01
	.byte		        Dn3 
	.byte	W04
	.byte		N02   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Dn3 , v108
	.byte		N02   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , An3 , v104
	.byte	W01
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N01   , Dn3 , v100
	.byte	W01
	.byte	W05
@ 056   ----------------------------------------
	.byte		        Dn3 , v072
	.byte		N01   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Fn3 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.7) ****************@

mus_another_brick_in_the_wall_5:
	.byte	KEYSH , mus_another_brick_in_the_wall_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 16
	.byte		VOL   , 70*mus_another_brick_in_the_wall_mvl/mxv
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
	.byte	W12
	.byte		TIE   , Dn3 , v072
	.byte		TIE   , Fn4 
	.byte		TIE   , An4 
	.byte	W84
@ 061   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte		EOT   , Dn3 
	.byte		        Fn4 
	.byte		        An4 
	.byte	W01
	.byte		N23   , Cn3 
	.byte		N23   , En4 
	.byte		N23   , Gn4 
	.byte	W12
@ 062   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		TIE   , Dn3 
	.byte		TIE   , Fn4 
	.byte		TIE   , An4 
	.byte	W84
@ 063   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte		EOT   , Dn3 
	.byte		        Fn4 
	.byte		        An4 
	.byte	W01
	.byte		N23   , Cn3 
	.byte		N23   , En4 
	.byte		N23   , Gn4 
	.byte	W12
@ 064   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		TIE   , Dn3 
	.byte		TIE   , Fn4 
	.byte		TIE   , An4 
	.byte	W84
@ 065   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte		EOT   , Dn3 
	.byte		        Fn4 
	.byte		        An4 
	.byte	W01
	.byte		N23   , Cn3 
	.byte		N23   , En4 
	.byte		N23   , Gn4 
	.byte	W12
@ 066   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		TIE   , Dn3 
	.byte		TIE   , Fn4 
	.byte		TIE   , An4 
	.byte	W84
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W11
	.byte		EOT   , Dn3 
	.byte		        Fn4 
	.byte		        An4 
	.byte	W01
	.byte		TIE   , Dn3 
	.byte		TIE   , En4 
	.byte		TIE   , An4 
	.byte	W84
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W11
	.byte		EOT   , Dn3 
	.byte		        En4 
	.byte		        An4 
	.byte	W01
	.byte		TIE   , Dn3 
	.byte		TIE   , Fn4 
	.byte		TIE   , An4 
	.byte	W84
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W11
	.byte		EOT   , Dn3 
	.byte		        Fn4 
	.byte		        An4 
	.byte	W01
	.byte		TIE   , Dn3 
	.byte		TIE   , Gn4 
	.byte		TIE   , An4 
	.byte	W84
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W11
	.byte		EOT   , Dn3 
	.byte		        Gn4 
	.byte		        An4 
	.byte	W01
	.byte		TIE   , Dn3 
	.byte		TIE   , Fn4 
	.byte		TIE   , An4 
	.byte	W84
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W11
	.byte		EOT   , Dn3 
	.byte		        Fn4 
	.byte		        An4 
	.byte	W01
	.byte		TIE   , Dn3 
	.byte		TIE   , Gn4 
	.byte		TIE   , Bn4 
	.byte	W84
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W11
	.byte		EOT   , Dn3 
	.byte		        Gn4 
	.byte		        Bn4 
	.byte	W01
	.byte		TIE   , Dn3 
	.byte		TIE   , Fn4 
	.byte		TIE   , An4 
	.byte	W84
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W11
	.byte		EOT   , Dn3 
	.byte		        Fn4 
	.byte		        An4 
	.byte	W01
	.byte		TIE   , Dn3 
	.byte		TIE   , Gn4 
	.byte		TIE   , Bn4 
	.byte	W84
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W11
	.byte		EOT   , Dn3 
	.byte		        Gn4 
	.byte		        Bn4 
	.byte	W01
	.byte		TIE   , Dn3 
	.byte		TIE   , Fn4 
	.byte		TIE   , An4 
	.byte	W84
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W11
	.byte		EOT   , Dn3 
	.byte		        Fn4 
	.byte		        An4 
	.byte	W01
	.byte		TIE   , Dn3 
	.byte		TIE   , Gn4 
	.byte		TIE   , Cn5 
	.byte	W84
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W11
	.byte		EOT   , Dn3 
	.byte		        Gn4 
	.byte		        Cn5 
	.byte	W01
	.byte		TIE   , Dn3 
	.byte		TIE   , Fn4 
	.byte		TIE   , As4 
	.byte	W84
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W11
	.byte		EOT   , Dn3 
	.byte		        Fn4 
	.byte		        As4 
	.byte	W01
	.byte		TIE   , Dn3 
	.byte		TIE   , Gn4 
	.byte		TIE   , Cn5 
	.byte	W84
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W11
	.byte		EOT   , Dn3 
	.byte		        Gn4 
	.byte		        Cn5 
	.byte	W01
	.byte		TIE   , Dn3 
	.byte		TIE   , Fn4 
	.byte		TIE   , An4 
	.byte	W84
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W23
	.byte		EOT   , Dn3 
	.byte		        Fn4 
	.byte		        An4 
	.byte	FINE

@**************** Track 6 (Midi-Chn.10) ****************@

mus_another_brick_in_the_wall_6:
	.byte	KEYSH , mus_another_brick_in_the_wall_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		VOL   , 120*mus_another_brick_in_the_wall_mvl/mxv
	.byte		N05   , Cn1 , v124
	.byte	W05
	.byte	W07
	.byte		N11   
	.byte		N07   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 001   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 002   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 003   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 004   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 005   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 006   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 007   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 008   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 009   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 010   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 011   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 012   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 013   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 014   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 015   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 016   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 017   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 018   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 019   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 020   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 021   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 022   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 023   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 024   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 025   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 026   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 027   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 028   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 029   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 030   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 031   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 032   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 033   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 034   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 035   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 036   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 037   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 038   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 039   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 040   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 041   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 042   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 043   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 044   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 045   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 046   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 047   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 048   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 049   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 050   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 051   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 052   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 053   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 054   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 055   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 056   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 057   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 058   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 059   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N07   , Fs1 , v112
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 060   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N05   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W05
	.byte	W01
	.byte		N05   , Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 061   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		        Cn1 , v124
	.byte		N05   , Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 062   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		N12   , Cn1 , v124
	.byte		N05   , Fs1 , v120
	.byte		N11   , Cs2 , v092
	.byte	W05
	.byte	W01
	.byte		N05   , Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v120
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 063   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		N12   , Cn1 , v124
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		N06   , Fs1 , v080
	.byte	W06
	.byte		N05   , Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
@ 064   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		        Cn1 , v124
	.byte		N05   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W05
	.byte	W01
	.byte		N05   , Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 065   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		        Cn1 , v124
	.byte		N05   , Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 066   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		N12   , Cn1 , v124
	.byte		N05   , Fs1 , v120
	.byte		N11   , Cs2 , v092
	.byte	W05
	.byte	W01
	.byte		N05   , Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v120
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 067   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		        Cn1 , v124
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
@ 068   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		N12   , Cn1 , v124
	.byte		N05   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W05
	.byte	W01
	.byte		N05   , Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 069   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		        Cn1 , v124
	.byte		N05   , Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 070   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		N12   , Cn1 , v124
	.byte		N05   , Fs1 , v120
	.byte		N11   , Cs2 , v092
	.byte	W05
	.byte	W01
	.byte		N05   , Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v120
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 071   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		        Cn1 , v124
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
@ 072   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		N12   , Cn1 , v124
	.byte		N05   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W05
	.byte	W01
	.byte		N05   , Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 073   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		        Cn1 , v124
	.byte		N05   , Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 074   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		N12   , Cn1 , v124
	.byte		N05   , Fs1 , v120
	.byte		N11   , Cs2 , v092
	.byte	W05
	.byte	W01
	.byte		N05   , Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v120
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 075   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		        Cn1 , v124
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
@ 076   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		N12   , Cn1 , v124
	.byte		N05   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W05
	.byte	W01
	.byte		N05   , Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 077   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		        Cn1 , v124
	.byte		N05   , Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 078   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		N12   , Cn1 , v124
	.byte		N05   , Fs1 , v120
	.byte		N11   , Cs2 , v092
	.byte	W05
	.byte	W01
	.byte		N05   , Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v120
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 079   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		        Cn1 , v124
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
@ 080   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		N12   , Cn1 , v124
	.byte		N05   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W05
	.byte	W01
	.byte		N05   , Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 081   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		        Cn1 , v124
	.byte		N05   , Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 082   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		N12   , Cn1 , v124
	.byte		N05   , Fs1 , v120
	.byte		N11   , Cs2 , v092
	.byte	W05
	.byte	W01
	.byte		N05   , Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v120
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 083   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		        Cn1 , v124
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
@ 084   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		N12   , Cn1 , v124
	.byte		N05   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W05
	.byte	W01
	.byte		N05   , Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 085   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		        Cn1 , v124
	.byte		N05   , Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 086   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		N12   , Cn1 , v124
	.byte		N05   , Fs1 , v120
	.byte		N11   , Cs2 , v092
	.byte	W05
	.byte	W01
	.byte		N05   , Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v120
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 087   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		        Cn1 , v124
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
@ 088   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		N12   , Cn1 , v124
	.byte		N05   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W05
	.byte	W01
	.byte		N05   , Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v088
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 089   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		        Cn1 , v124
	.byte		N05   , Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v112
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v076
	.byte	W05
	.byte	W01
	.byte		N11   , Cn1 , v120
	.byte		N05   , Fs1 , v104
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v108
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W05
	.byte	W01
	.byte		N12   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N05   , Fs1 , v116
	.byte	W05
	.byte	W01
	.byte		        Fs1 , v080
	.byte	W05
	.byte	W01
@ 090   ----------------------------------------
	.byte		N11   , As1 , v112
	.byte	W11
	.byte	W01
	.byte		        Cn1 , v124
	.byte		N07   , Fs1 , v112
	.byte		N11   , Cs2 , v092
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte	W09
	.byte	W02
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N11   , En1 , v127
	.byte		N08   , Fs1 
	.byte	W08
	.byte	W03
	.byte	W01
@ 091   ----------------------------------------
	.byte		N09   , As1 , v124
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 
	.byte		N02   , En1 , v127
	.byte		N07   , Fs1 , v112
	.byte	W02
	.byte	W04
	.byte		N02   , En1 , v127
	.byte	W01
	.byte	W01
	.byte	W03
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte	W09
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N02   , En1 , v127
	.byte		N10   , Fs1 
	.byte	W02
	.byte	W04
	.byte		N11   , En1 
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte	W05
	.byte	W01
	.byte		N02   , En1 , v127
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N09   , Fs1 , v116
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte	W01
	.byte		        An1 
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		N09   , Fs1 , v096
	.byte		N05   , Gn1 , v127
	.byte	W05
	.byte	W04
	.byte	W03
	.byte		N11   , Cn1 , v120
	.byte		N02   , En1 , v124
	.byte		N08   , Fs1 , v127
	.byte	W02
	.byte	W04
	.byte		N05   , En1 
	.byte	W02
	.byte	W03
	.byte	W01
@ 092   ----------------------------------------
	.byte		N05   
	.byte		N09   , Fs1 , v124
	.byte	W05
	.byte	W01
	.byte		N05   , En1 , v127
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		N24   , Cn1 , v124
	.byte		N11   , Cs2 , v092
	.byte	W11
	.byte	W13
	.byte	FINE

@******************************************************@
	.align	2

mus_another_brick_in_the_wall:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_another_brick_in_the_wall_pri	@ Priority
	.byte	mus_another_brick_in_the_wall_rev	@ Reverb.

	.word	mus_another_brick_in_the_wall_grp

	.word	mus_another_brick_in_the_wall_1
	.word	mus_another_brick_in_the_wall_2
	.word	mus_another_brick_in_the_wall_3
	.word	mus_another_brick_in_the_wall_4
	.word	mus_another_brick_in_the_wall_5
	.word	mus_another_brick_in_the_wall_6

	.end
