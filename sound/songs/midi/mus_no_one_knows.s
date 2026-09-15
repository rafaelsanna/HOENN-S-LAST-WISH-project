	.include "MPlayDef.s"

	.equ	mus_no_one_knows_grp, voicegroup_hlw_rock_metal
	.equ	mus_no_one_knows_pri, 0
	.equ	mus_no_one_knows_rev, reverb_set+12
	.equ	mus_no_one_knows_mvl, 90
	.equ	mus_no_one_knows_key, 0
	.equ	mus_no_one_knows_tbs, 1
	.equ	mus_no_one_knows_exg, 0
	.equ	mus_no_one_knows_cmp, 1

	.section .rodata
	.global	mus_no_one_knows
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_no_one_knows_1:
	.byte	KEYSH , mus_no_one_knows_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 178*mus_no_one_knows_tbs/2
	.byte		VOICE , 29
	.byte		VOL   , 106*mus_no_one_knows_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N24   , Gn2 , v092
	.byte		N24   , Cn3 
	.byte		N24   , Ds3 
	.byte	W48
	.byte		        Gn2 
	.byte		N24   , Cn3 
	.byte		N24   , Ds3 
	.byte	W48
@ 002   ----------------------------------------
	.byte		        Gn2 
	.byte		N24   , Cn3 
	.byte		N24   , Ds3 
	.byte	W48
	.byte		        Gn2 
	.byte		N24   , Cn3 
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
@ 003   ----------------------------------------
mus_no_one_knows_1_003:
	.byte		N24   , Cn3 , v092
	.byte	W24
	.byte		N16   , Gn2 
	.byte		N16   , Cn3 
	.byte		N16   , Fn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N16   , Cn3 
	.byte		N16   , Fn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte		N08   , Ds3 
	.byte	W08
	.byte		N24   , Gn2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
mus_no_one_knows_1_004:
	.byte		N16   , Gn2 , v092
	.byte		N16   , Cn3 
	.byte		N16   , Fn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N16   , Cn3 
	.byte		N16   , Fn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte		N08   , Ds3 
	.byte	W08
	.byte		N24   , Gn2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_003
@ 008   ----------------------------------------
	.byte		N16   , Gn2 , v092
	.byte		N16   , Cn3 
	.byte		N16   , Fn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N16   , Cn3 
	.byte		N16   , Fn3 
	.byte	W48
	.byte		N24   , Cn3 
	.byte	W24
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_003
@ 010   ----------------------------------------
mus_no_one_knows_1_010:
	.byte		N16   , Gn2 , v092
	.byte		N16   , Cn3 
	.byte		N16   , Fn3 
	.byte	W24
	.byte		N72   , As3 
	.byte		N72   , Dn4 
	.byte	W72
	.byte	PEND
@ 011   ----------------------------------------
mus_no_one_knows_1_011:
	.byte		N24   , Cn3 , v092
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Cn3 
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Cn3 
	.byte		N24   , Ds3 
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
mus_no_one_knows_1_012:
	.byte		N24   , Cn3 , v092
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Cn3 
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		N16   , Gn2 
	.byte		N16   , Cn3 
	.byte		N16   , Ds3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte		N08   , Ds3 
	.byte	W08
	.byte	PEND
@ 013   ----------------------------------------
mus_no_one_knows_1_013:
	.byte		N24   , Gn2 , v092
	.byte		N24   , Cn3 
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Cn3 
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Cn3 
	.byte		N24   , Ds3 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_012
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_013
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_012
@ 019   ----------------------------------------
mus_no_one_knows_1_019:
	.byte		N24   , Gn2 , v092
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , Dn3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , Dn3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
mus_no_one_knows_1_020:
	.byte		N24   , Gn2 , v092
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , Dn3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N16   , Gn2 
	.byte		N16   , Bn2 
	.byte		N16   , Dn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , As2 
	.byte		N08   , Ds3 
	.byte	W08
	.byte		N16   , Gn2 
	.byte		N16   , Bn2 
	.byte		N16   , Dn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , As2 
	.byte		N08   , Ds3 
	.byte	W08
	.byte	PEND
@ 021   ----------------------------------------
mus_no_one_knows_1_021:
	.byte		N24   , En2 , v092
	.byte		N24   , Bn2 
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        En2 
	.byte		N24   , Bn2 
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        En2 
	.byte		N24   , Bn2 
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        En2 
	.byte		N24   , Bn2 
	.byte		N24   , Ds3 
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
mus_no_one_knows_1_022:
	.byte		N24   , En2 , v092
	.byte		N24   , Bn2 
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        En2 
	.byte		N24   , Bn2 
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        En2 
	.byte		N24   , Bn2 
	.byte		N24   , Ds3 
	.byte	W24
	.byte		N16   , En2 
	.byte		N16   , Bn2 
	.byte		N16   , Ds3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte		N08   , Ds3 
	.byte	W08
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_003
@ 024   ----------------------------------------
mus_no_one_knows_1_024:
	.byte		N16   , Gn2 , v092
	.byte		N16   , Cn3 
	.byte		N16   , Fn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N16   , Cn3 
	.byte		N16   , Fn3 
	.byte	W16
	.byte		N08   , Cn3 
	.byte	W08
	.byte		        Fn2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        As2 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        As2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_003
@ 026   ----------------------------------------
mus_no_one_knows_1_026:
	.byte		N16   , Gn2 , v092
	.byte		N16   , Cn3 
	.byte		N16   , Fn3 
	.byte	W24
	.byte		N72   , Cn3 
	.byte		N72   , En3 
	.byte	W72
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_012
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_013
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_012
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_013
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_012
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_019
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_020
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_021
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_022
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_024
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_003
@ 042   ----------------------------------------
mus_no_one_knows_1_042:
	.byte		N16   , Gn2 , v092
	.byte		N16   , Cn3 
	.byte		N16   , Fn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N16   , Cn3 
	.byte		N16   , Fn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte		N08   , Ds3 
	.byte	W08
	.byte		N24   , Gn2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N16   , Gn2 
	.byte		N16   , Cn3 
	.byte		N16   , Fn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte		N08   , Ds3 
	.byte	W08
	.byte	PEND
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_019
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_020
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_022
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_003
@ 048   ----------------------------------------
mus_no_one_knows_1_048:
	.byte		N16   , Gn2 , v092
	.byte		N16   , Cn3 
	.byte		N16   , Fn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N16   , Cn3 
	.byte		N16   , Fn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte		N08   , Ds3 
	.byte	W08
	.byte		N16   , Fn3 
	.byte	W16
	.byte		N08   , Cn4 
	.byte	W08
	.byte		N24   , Cn3 
	.byte	W24
	.byte	PEND
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_003
@ 050   ----------------------------------------
mus_no_one_knows_1_050:
	.byte		N16   , Gn2 , v092
	.byte		N16   , Cn3 
	.byte		N16   , Fn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N16   , Cn3 
	.byte		N16   , Fn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte		N08   , Ds3 
	.byte	W08
	.byte		N24   , Gn2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte	PEND
@ 051   ----------------------------------------
mus_no_one_knows_1_051:
	.byte		N24   , Gn2 , v092
	.byte		N24   , Cn3 
	.byte	W24
	.byte		        An2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        As2 
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        An2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte	PEND
@ 052   ----------------------------------------
mus_no_one_knows_1_052:
	.byte		N24   , Fn2 , v092
	.byte		N24   , Cn3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        Cn3 
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Dn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Fn2 
	.byte		N24   , Cn3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte	PEND
@ 053   ----------------------------------------
mus_no_one_knows_1_053:
	.byte		N16   , Gn2 , v092
	.byte		N16   , Dn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte		N08   , Dn3 
	.byte	W08
	.byte		N16   , Gn2 
	.byte		N16   , Dn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte		N08   , Dn3 
	.byte	W08
	.byte		N16   , Gn2 
	.byte		N16   , Dn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte		N08   , Dn3 
	.byte	W08
	.byte		N16   , Gn2 
	.byte		N16   , Dn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte		N08   , Dn3 
	.byte	W08
	.byte	PEND
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_053
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_051
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_052
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_053
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_053
@ 059   ----------------------------------------
mus_no_one_knows_1_059:
	.byte		N24   , As2 , v092
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        An2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte		        Fs2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte	PEND
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_051
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_053
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_053
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_051
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_052
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_053
@ 066   ----------------------------------------
	.byte		N16   , Gn2 , v092
	.byte		N16   , Dn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte		N08   , Dn3 
	.byte	W08
	.byte		N16   , Gn2 
	.byte		N16   , Dn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte		N08   , Dn3 
	.byte	W08
	.byte		N16   , Gn2 
	.byte		N16   , Dn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte		N08   , Dn3 
	.byte	W08
	.byte		N24   , Cs3 
	.byte	W24
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_003
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_004
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_003
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_026
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_011
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_012
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_013
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_012
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_013
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_012
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_013
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_012
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_019
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_020
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_021
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_022
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_003
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_024
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_003
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_010
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_011
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_012
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_013
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_012
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_013
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_012
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_013
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_012
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_019
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_020
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_021
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_022
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_003
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_024
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_003
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_042
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_019
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_020
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_021
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_022
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_003
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_048
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_003
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_050
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_051
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_052
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_053
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_053
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_051
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_052
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_053
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_053
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_059
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_051
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_053
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_053
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_051
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_052
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_053
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_053
@ 127   ----------------------------------------
mus_no_one_knows_1_127:
	.byte		N16   , Gn2 , v092
	.byte		N16   , Cn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte		N16   , Gn2 
	.byte		N16   , Cn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte		N16   , Gn2 
	.byte		N16   , Cn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte		N16   , Gn2 
	.byte		N16   , Cn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte	PEND
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_127
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_127
@ 130   ----------------------------------------
mus_no_one_knows_1_130:
	.byte		N16   , Gn2 , v092
	.byte		N16   , Dn3 
	.byte	W16
	.byte		        Gs2 
	.byte		N16   , Ds3 
	.byte	W16
	.byte		        Fs2 
	.byte		N16   , Bn2 
	.byte	W16
	.byte		        Gn2 
	.byte		N16   , Dn3 
	.byte	W16
	.byte		        Fn2 
	.byte		N16   , Cn3 
	.byte	W16
	.byte		        Gn2 
	.byte		N16   , Dn3 
	.byte	W16
	.byte	PEND
@ 131   ----------------------------------------
	.byte		        Gn2 
	.byte		N16   , Cn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte		N16   , Gs2 
	.byte		N16   , Cs3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte		N16   , As2 
	.byte		N16   , Ds3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
	.byte		N16   , Gs2 
	.byte		N16   , Cs3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte	W08
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_127
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_127
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_130
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_130
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_130
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_130
@ 138   ----------------------------------------
	.byte		N24   , Gn2 , v092
	.byte		N24   , Cn3 
	.byte	W96
@ 139   ----------------------------------------
	.byte	W96
@ 140   ----------------------------------------
	.byte	W96
@ 141   ----------------------------------------
	.byte	W96
@ 142   ----------------------------------------
	.byte		N08   
	.byte	W08
	.byte		        Dn3 
	.byte	W08
	.byte		        Cn3 
	.byte		N08   , Dn3 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Ds3 
	.byte	W08
	.byte		        Cn3 
	.byte		N08   , Ds3 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Fn3 
	.byte	W08
	.byte		        Cn3 
	.byte		N08   , Fn3 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		        Cn3 
	.byte		N08   , Gn3 
	.byte	W08
@ 143   ----------------------------------------
	.byte		N48   , Cn3 
	.byte		N48   , Gn3 
	.byte	W64
	.byte		N08   , Cn4 
	.byte	W08
	.byte		N16   , Cn3 
	.byte		N16   , Cn4 
	.byte	W16
	.byte		N08   , As3 
	.byte	W08
@ 144   ----------------------------------------
	.byte		N16   , Cn3 
	.byte		N16   , As3 
	.byte	W16
	.byte		N08   , Dn4 
	.byte	W08
	.byte		N16   , Cn3 
	.byte		N16   , Dn4 
	.byte	W16
	.byte		N08   , As3 
	.byte	W08
	.byte		N24   , Cn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		N16   , Cn3 
	.byte		N16   , Cn4 
	.byte	W16
	.byte		N08   , As3 
	.byte	W08
@ 145   ----------------------------------------
	.byte		N16   , Cn3 
	.byte		N16   , Ds3 
	.byte	W16
	.byte		N08   , Gn3 
	.byte	W56
	.byte		N08   
	.byte	W08
	.byte		        Fn3 
	.byte	W08
	.byte		        Ds3 
	.byte	W08
@ 146   ----------------------------------------
	.byte		N48   , Fn3 
	.byte	W48
	.byte		N08   
	.byte	W08
	.byte		        Ds3 
	.byte	W08
	.byte		        Dn3 
	.byte	W08
	.byte		N24   , Ds3 
	.byte	W24
@ 147   ----------------------------------------
	.byte	W24
	.byte		N08   
	.byte	W08
	.byte		        Dn3 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		N48   , Dn3 
	.byte	W48
@ 148   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N48   , Gn3 
	.byte	W48
@ 149   ----------------------------------------
mus_no_one_knows_1_149:
	.byte		N16   , Cn3 , v092
	.byte	W16
	.byte		        Ds3 
	.byte	W16
	.byte		        Gn3 
	.byte	W64
	.byte	PEND
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_149
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_149
@ 152   ----------------------------------------
mus_no_one_knows_1_152:
	.byte		N08   , Dn4 , v092
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		        Ds3 
	.byte	W08
	.byte		        Dn4 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		        Ds3 
	.byte	W08
	.byte	PEND
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_152
@ 154   ----------------------------------------
	.byte		N24   , Cn4 , v092
	.byte	W96
@ 155   ----------------------------------------
	.byte	W96
@ 156   ----------------------------------------
	.byte	W96
@ 157   ----------------------------------------
	.byte	W96
@ 158   ----------------------------------------
	.byte	W96
@ 159   ----------------------------------------
	.byte	W96
@ 160   ----------------------------------------
	.byte	W96
@ 161   ----------------------------------------
	.byte	W48
	.byte		        En4 
	.byte		N24   , Gn4 
	.byte		N24   , Bn4 
	.byte	W21
	.byte		N03   , Fn2 
	.byte	W03
	.byte		N24   , Cn3 
	.byte	W24
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_011
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_012
@ 164   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_013
@ 165   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_012
@ 166   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_019
@ 167   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_020
@ 168   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_021
@ 169   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_022
@ 170   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_003
@ 171   ----------------------------------------
	.byte		N16   , Gn2 , v092
	.byte		N16   , Cn3 
	.byte		N16   , Fn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N16   , Cn3 
	.byte		N16   , Fn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , Cn3 
	.byte		N08   , Ds3 
	.byte	W08
	.byte		N24   , Gn2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte		        As3 
	.byte		N24   , Dn4 
	.byte		N24   , Gn4 
	.byte	W24
@ 172   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_003
@ 173   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_042
@ 174   ----------------------------------------
	.byte		N24   , Gn2 , v092
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W24
@ 175   ----------------------------------------
	.byte		        Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N16   , Gn2 
	.byte		N16   , Bn2 
	.byte		N16   , Dn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , As2 
	.byte		N08   , Ds3 
	.byte	W08
	.byte		N16   , Gn2 
	.byte		N16   , Bn2 
	.byte		N16   , Dn3 
	.byte	W16
	.byte		N08   , Gn2 
	.byte		N08   , As2 
	.byte		N08   , Ds3 
	.byte	W08
@ 176   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_021
@ 177   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_021
@ 178   ----------------------------------------
mus_no_one_knows_1_178:
	.byte		N24   , Gn2 , v092
	.byte		N24   , Cn3 
	.byte		N24   , Ds3 
	.byte	W48
	.byte		        Gn2 
	.byte		N24   , Cn3 
	.byte		N24   , Ds3 
	.byte	W48
	.byte	PEND
@ 179   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_1_178
@ 180   ----------------------------------------
	.byte		N24   , Gn2 , v092
	.byte		N24   , Cn3 
	.byte		N24   , Ds3 
	.byte	W24
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_no_one_knows_2:
	.byte	KEYSH , mus_no_one_knows_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 102*mus_no_one_knows_mvl/mxv
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
	.byte		N72   , Cn3 , v096
	.byte		N72   , Gn3 
	.byte	W96
@ 071   ----------------------------------------
	.byte		        Dn3 
	.byte		N72   , Fn3 
	.byte	W96
@ 072   ----------------------------------------
	.byte		N96   , Cn3 
	.byte		N96   , Ds3 
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte		N72   , Cn3 
	.byte		N72   , Gn3 
	.byte	W96
@ 075   ----------------------------------------
	.byte		        Dn3 
	.byte		N72   , Fn3 
	.byte	W96
@ 076   ----------------------------------------
	.byte		N96   , Cn3 
	.byte		N96   , Ds3 
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte		        En2 
	.byte		N96   , Dn3 
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
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	W96
@ 107   ----------------------------------------
	.byte	W96
@ 108   ----------------------------------------
	.byte	W96
@ 109   ----------------------------------------
	.byte	W96
@ 110   ----------------------------------------
	.byte	W96
@ 111   ----------------------------------------
	.byte	W96
@ 112   ----------------------------------------
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte	W96
@ 115   ----------------------------------------
	.byte	W96
@ 116   ----------------------------------------
	.byte	W96
@ 117   ----------------------------------------
	.byte	W96
@ 118   ----------------------------------------
	.byte	W96
@ 119   ----------------------------------------
	.byte	W96
@ 120   ----------------------------------------
	.byte	W96
@ 121   ----------------------------------------
	.byte	W96
@ 122   ----------------------------------------
	.byte	W96
@ 123   ----------------------------------------
	.byte	W96
@ 124   ----------------------------------------
	.byte	W96
@ 125   ----------------------------------------
	.byte	W96
@ 126   ----------------------------------------
	.byte	W96
@ 127   ----------------------------------------
	.byte	W96
@ 128   ----------------------------------------
	.byte	W96
@ 129   ----------------------------------------
	.byte	W96
@ 130   ----------------------------------------
	.byte	W24
	.byte		N16   , Cn2 
	.byte		N16   , Cn3 
	.byte	W24
	.byte		        Cn2 
	.byte		N16   , Cn3 
	.byte	W24
	.byte		        Cn2 
	.byte		N16   , Cn3 
	.byte	W16
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_no_one_knows_3:
	.byte	KEYSH , mus_no_one_knows_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 100*mus_no_one_knows_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N24   , Cn1 , v084
	.byte	W48
	.byte		N24   
	.byte	W48
@ 001   ----------------------------------------
	.byte		N24   
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 002   ----------------------------------------
mus_no_one_knows_3_002:
	.byte		N24   , Cn1 , v084
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 008   ----------------------------------------
mus_no_one_knows_3_008:
	.byte		N24   , Cn1 , v084
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N16   
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte	PEND
@ 009   ----------------------------------------
mus_no_one_knows_3_009:
	.byte		N24   , Fn1 , v084
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        As0 
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 011   ----------------------------------------
mus_no_one_knows_3_011:
	.byte		N24   , Cn1 , v084
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N16   , Fn1 
	.byte	W16
	.byte		N08   , Ds1 
	.byte	W08
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_011
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_009
@ 018   ----------------------------------------
mus_no_one_knows_3_018:
	.byte		N24   , Gn1 , v084
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 020   ----------------------------------------
mus_no_one_knows_3_020:
	.byte		N24   , Bn0 , v084
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 021   ----------------------------------------
mus_no_one_knows_3_021:
	.byte		N24   , Bn0 , v084
	.byte	W24
	.byte		        As0 
	.byte	W24
	.byte		        Bn0 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_011
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_011
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_008
@ 033   ----------------------------------------
mus_no_one_knows_3_033:
	.byte		N24   , Gn1 , v084
	.byte	W24
	.byte		        Fn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte	PEND
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_020
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_021
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 041   ----------------------------------------
mus_no_one_knows_3_041:
	.byte		N24   , Gn1 , v084
	.byte	W24
	.byte		        Fn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_020
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 050   ----------------------------------------
mus_no_one_knows_3_050:
	.byte		N24   , Cn1 , v084
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte	PEND
@ 051   ----------------------------------------
mus_no_one_knows_3_051:
	.byte		N24   , Fn1 , v084
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		        Fn1 
	.byte	W24
	.byte	PEND
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_050
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_051
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 058   ----------------------------------------
mus_no_one_knows_3_058:
	.byte		N24   , Cn2 , v084
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        As1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 059   ----------------------------------------
mus_no_one_knows_3_059:
	.byte		N16   , Cn2 , v084
	.byte	W16
	.byte		N08   , As1 
	.byte	W08
	.byte		N16   , Gn1 
	.byte	W16
	.byte		N08   , Fn1 
	.byte	W08
	.byte		N16   , Gn1 
	.byte	W16
	.byte		N08   , Fn1 
	.byte	W08
	.byte		N24   , Ds1 
	.byte	W24
	.byte	PEND
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 062   ----------------------------------------
	.byte		N08   , Cn2 , v084
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
@ 063   ----------------------------------------
	.byte		        Ds2 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 065   ----------------------------------------
	.byte		N24   , Gn1 , v084
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Cs1 
	.byte	W24
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_008
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_009
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_011
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_011
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_011
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_008
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_009
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_020
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_021
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_008
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_009
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_011
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_011
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_011
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_008
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_033
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_020
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_021
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_041
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_020
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_021
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_050
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_051
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_050
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_051
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_058
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_059
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 122   ----------------------------------------
	.byte		N03   , As1 , v084
	.byte	W03
	.byte		N44   , Cn2 
	.byte	W44
	.byte	W01
	.byte		N48   , As1 
	.byte	W48
@ 123   ----------------------------------------
	.byte		N03   , Fn1 
	.byte	W03
	.byte		N44   , Gn1 
	.byte	W44
	.byte	W01
	.byte		N48   , Fn1 
	.byte	W48
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 126   ----------------------------------------
mus_no_one_knows_3_126:
	.byte		N16   , Cn1 , v084
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		N16   
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		N16   
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		N16   
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte	PEND
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_126
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_126
@ 129   ----------------------------------------
mus_no_one_knows_3_129:
	.byte		N16   , Gn1 , v084
	.byte	W16
	.byte		        Gs1 
	.byte	W16
	.byte		        Bn0 
	.byte	W16
	.byte		        Gn1 
	.byte	W16
	.byte		        Fn1 
	.byte	W16
	.byte		        Gn1 
	.byte	W16
	.byte	PEND
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_126
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_126
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_126
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_129
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_129
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_129
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_129
@ 137   ----------------------------------------
mus_no_one_knows_3_137:
	.byte		N08   , As1 , v084
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N16   
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		N16   
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		N16   
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte	PEND
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_137
@ 139   ----------------------------------------
mus_no_one_knows_3_139:
	.byte		N08   , As1 , v084
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N16   
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N16   
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte	PEND
@ 140   ----------------------------------------
	.byte		        As1 
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N16   , Fn1 
	.byte		N16   , Cn2 
	.byte	W16
	.byte		N08   , Fn1 
	.byte		N08   , Cn2 
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		        Gn1 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N16   
	.byte	W16
	.byte		N08   
	.byte	W08
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_137
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_137
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_139
@ 144   ----------------------------------------
mus_no_one_knows_3_144:
	.byte		N08   , As1 , v084
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		        Gn1 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte	PEND
@ 145   ----------------------------------------
	.byte		N16   , Cn2 
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		N16   
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		N16   
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		N16   
	.byte	W16
	.byte		N08   
	.byte	W08
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_137
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_139
@ 148   ----------------------------------------
	.byte		N08   , As1 , v084
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		        Gn1 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		N08   
	.byte	W08
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_137
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_137
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_144
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_144
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_011
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 164   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_009
@ 165   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 166   ----------------------------------------
	.byte		N24   , Gn1 , v084
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Fn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
@ 167   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_020
@ 168   ----------------------------------------
	.byte		N24   , Cn2 , v084
	.byte	W24
	.byte		        As1 
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		        Fn1 
	.byte	W24
@ 169   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 170   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 171   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_002
@ 172   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_041
@ 173   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 174   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_018
@ 175   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_020
@ 176   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_021
@ 177   ----------------------------------------
mus_no_one_knows_3_177:
	.byte		N24   , Cn1 , v084
	.byte	W48
	.byte		N24   
	.byte	W48
	.byte	PEND
@ 178   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_3_177
@ 179   ----------------------------------------
	.byte		N24   , Cn1 , v084
	.byte	W24
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_no_one_knows_4:
	.byte	KEYSH , mus_no_one_knows_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 114*mus_no_one_knows_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Cn1 , v080
	.byte	W24
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W24
@ 001   ----------------------------------------
mus_no_one_knows_4_001:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 003   ----------------------------------------
mus_no_one_knows_4_003:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W16
	.byte		        Cn1 , v080
	.byte	W08
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 009   ----------------------------------------
mus_no_one_knows_4_009:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W16
	.byte		N02   
	.byte	W08
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 019   ----------------------------------------
mus_no_one_knows_4_019:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W16
	.byte		        En1 , v076
	.byte	W08
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 021   ----------------------------------------
mus_no_one_knows_4_021:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W16
	.byte		        En1 , v076
	.byte	W08
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_021
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_009
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_019
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_021
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_021
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_019
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_021
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 050   ----------------------------------------
mus_no_one_knows_4_050:
	.byte		N02   , Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W16
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W16
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte	PEND
@ 051   ----------------------------------------
mus_no_one_knows_4_051:
	.byte		N02   , Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W16
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte	PEND
@ 052   ----------------------------------------
mus_no_one_knows_4_052:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W16
	.byte		        Cn1 , v080
	.byte	W08
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W16
	.byte		        Cn1 , v080
	.byte	W08
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte	PEND
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_052
@ 054   ----------------------------------------
mus_no_one_knows_4_054:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte	PEND
@ 055   ----------------------------------------
mus_no_one_knows_4_055:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W16
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W08
	.byte	PEND
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_052
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_052
@ 058   ----------------------------------------
mus_no_one_knows_4_058:
	.byte		N02   , En1 , v076
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte	PEND
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_058
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_052
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_052
@ 062   ----------------------------------------
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
@ 063   ----------------------------------------
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		        Cn1 , v080
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_052
@ 065   ----------------------------------------
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W16
	.byte		        Cn1 , v080
	.byte	W08
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W16
	.byte		        En1 , v076
	.byte	W08
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W24
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_003
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_009
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_009
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_019
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_021
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_021
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_009
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_009
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_019
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_021
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_021
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_009
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_019
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_021
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_021
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_050
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_051
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_052
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_052
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_054
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_055
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_052
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_052
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_058
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_058
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_052
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_052
@ 122   ----------------------------------------
	.byte		N02   , Cn1 , v080
	.byte	W24
	.byte		        En1 , v084
	.byte	W16
	.byte		        Cn1 , v080
	.byte	W24
	.byte		        En1 , v076
	.byte	W08
	.byte		        Cn1 , v080
	.byte	W16
	.byte		N02   
	.byte	W08
@ 123   ----------------------------------------
	.byte		        En1 , v084
	.byte	W16
	.byte		        En1 , v076
	.byte	W08
	.byte		        Cn1 , v080
	.byte	W16
	.byte		N02   
	.byte	W08
	.byte		        En1 , v084
	.byte	W16
	.byte		        Cn1 , v080
	.byte	W08
	.byte		        En1 , v076
	.byte	W24
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_052
@ 125   ----------------------------------------
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W16
	.byte		        Cn1 , v080
	.byte	W08
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
@ 126   ----------------------------------------
mus_no_one_knows_4_126:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W16
	.byte		        Cn1 , v080
	.byte	W08
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W08
	.byte		        Cn1 , v080
	.byte	W16
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte	W16
	.byte		        Cn1 , v080
	.byte	W08
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W08
	.byte		        Cn1 , v080
	.byte	W16
	.byte	PEND
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_126
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_126
@ 129   ----------------------------------------
mus_no_one_knows_4_129:
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W16
	.byte		        En1 , v076
	.byte	W16
	.byte		        Cn1 , v080
	.byte	W16
	.byte		        En1 , v076
	.byte	W16
	.byte		N02   
	.byte	W16
	.byte		N02   
	.byte	W16
	.byte	PEND
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_126
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_126
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_126
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_129
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_129
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_129
@ 136   ----------------------------------------
	.byte		N02   , En1 , v076
	.byte	W08
	.byte		        Cn1 , v080
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		        Cn1 , v080
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		        Cn1 , v080
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		        Cn1 , v080
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		        Cn1 , v080
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		        Cn1 , v080
	.byte	W08
@ 137   ----------------------------------------
	.byte		N02   
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W96
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
	.byte	W96
@ 140   ----------------------------------------
	.byte	W96
@ 141   ----------------------------------------
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W16
	.byte		        En1 , v076
	.byte	W08
	.byte		        Cn1 , v080
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W24
@ 142   ----------------------------------------
	.byte		        Cn1 , v080
	.byte	W16
	.byte		        En1 , v076
	.byte	W08
	.byte		        Cn1 , v080
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W24
@ 143   ----------------------------------------
	.byte		        Cn1 , v080
	.byte	W16
	.byte		        En1 , v076
	.byte	W08
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		        Cn1 , v080
	.byte	W16
	.byte		        En1 , v076
	.byte	W08
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
@ 144   ----------------------------------------
	.byte		        Cn1 , v080
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W24
@ 145   ----------------------------------------
mus_no_one_knows_4_145:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W16
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte	PEND
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_145
@ 147   ----------------------------------------
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W16
	.byte		        En1 , v076
	.byte	W08
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W16
	.byte		        En1 , v076
	.byte	W08
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
@ 148   ----------------------------------------
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W24
@ 149   ----------------------------------------
mus_no_one_knows_4_149:
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W08
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte	PEND
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_149
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_058
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_058
@ 153   ----------------------------------------
	.byte		N02   , Fs1 , v056
	.byte	W96
@ 154   ----------------------------------------
	.byte	W96
@ 155   ----------------------------------------
	.byte	W96
@ 156   ----------------------------------------
	.byte	W96
@ 157   ----------------------------------------
	.byte	W96
@ 158   ----------------------------------------
	.byte	W96
@ 159   ----------------------------------------
	.byte	W96
@ 160   ----------------------------------------
	.byte	W64
	.byte		        En1 , v076
	.byte	W08
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W24
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 164   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_009
@ 165   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 166   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_019
@ 167   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 168   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_021
@ 169   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 170   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_021
@ 171   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 172   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_009
@ 173   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 174   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_019
@ 175   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 176   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 177   ----------------------------------------
	.byte	PATT
	 .word	mus_no_one_knows_4_001
@ 178   ----------------------------------------
	.byte		N02   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        En1 , v076
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W24
	.byte		        En1 , v076
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
@ 179   ----------------------------------------
	.byte		        Cn1 , v080
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

mus_no_one_knows:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_no_one_knows_pri	@ Priority
	.byte	mus_no_one_knows_rev	@ Reverb.

	.word	mus_no_one_knows_grp

	.word	mus_no_one_knows_1
	.word	mus_no_one_knows_2
	.word	mus_no_one_knows_3
	.word	mus_no_one_knows_4

	.end
