	.include "MPlayDef.s"

	.equ	mus_high_hopes_grp, voicegroup_hlw_classic_rock
	.equ	mus_high_hopes_pri, 0
	.equ	mus_high_hopes_rev, reverb_set+40
	.equ	mus_high_hopes_mvl, 96
	.equ	mus_high_hopes_key, 0
	.equ	mus_high_hopes_tbs, 1
	.equ	mus_high_hopes_exg, 1
	.equ	mus_high_hopes_cmp, 1

	.section .rodata
	.global	mus_high_hopes
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_high_hopes_1:
	.byte	KEYSH , mus_high_hopes_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 77*mus_high_hopes_tbs/2
	.byte		VOICE , 30
	.byte		VOL   , 127*mus_high_hopes_mvl/mxv
	.byte		PAN   , c_v+23
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
	.byte	W56
	.byte		BEND  , c_v-64
	.byte	W14
	.byte		N14   , Dn3 , v116
	.byte	W06
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-53
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v+0
	.byte	W03
	.byte		N24   , Fn3 , v127
	.byte	W01
	.byte	W09
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+7
	.byte		        c_v+11
	.byte	W01
@ 094   ----------------------------------------
	.byte		        c_v+13
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+19
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+24
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+33
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+39
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+46
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+52
	.byte		        c_v+54
	.byte	W01
	.byte		        c_v+57
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+63
	.byte	W02
	.byte	W01
	.byte		N48   , As3 , v127, gtp2
	.byte	W18
	.byte		MOD   , 6
	.byte	W01
	.byte		        16
	.byte	W01
	.byte		        21
	.byte		        26
	.byte	W01
	.byte		        36
	.byte	W01
	.byte		        41
	.byte	W02
	.byte		        46
	.byte	W01
	.byte		        51
	.byte	W01
	.byte		        58
	.byte	W01
	.byte		        64
	.byte	W02
	.byte		        71
	.byte	W02
	.byte		        76
	.byte	W11
	.byte		        71
	.byte	W01
	.byte		        66
	.byte	W01
	.byte		        59
	.byte	W01
	.byte		        54
	.byte	W01
	.byte		        46
	.byte	W02
	.byte		        41
	.byte	W02
	.byte		        0
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		N24   , Ds4 , v127, gtp3
	.byte	W11
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-12
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-26
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-35
	.byte	W10
@ 095   ----------------------------------------
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v+0
	.byte	W08
	.byte		N24   , As3 , v120
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+25
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+33
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+37
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+44
	.byte	W02
	.byte		        c_v+47
	.byte	W05
	.byte		        c_v+45
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+41
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+34
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+20
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte	W01
	.byte		N22   
	.byte	W13
	.byte		MOD   , 11
	.byte		        26
	.byte	W01
	.byte		        42
	.byte		        56
	.byte	W01
	.byte		        71
	.byte	W01
	.byte		        78
	.byte		        83
	.byte	W01
	.byte		        88
	.byte	W04
	.byte		        74
	.byte	W01
	.byte		        53
	.byte		        0
	.byte	W06
	.byte		BEND  , c_v-64
	.byte	W07
	.byte		N11   , Gn3 , v127
	.byte	W05
	.byte		BEND  , c_v-59
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-31
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-7
	.byte		        c_v+0
	.byte	W03
	.byte		N05   , Cn4 , v120
	.byte	W01
	.byte	W04
	.byte	W08
	.byte		N04   , As3 , v116
	.byte	W01
@ 096   ----------------------------------------
	.byte	W04
	.byte	W07
	.byte		N32   , Cn4 , v120
	.byte	W20
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-9
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-18
	.byte	W02
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-22
	.byte	W02
	.byte		        c_v-25
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-29
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-32
	.byte	W02
	.byte		        c_v+0
	.byte	W15
	.byte		N28   , Gn3 , v127, gtp1
	.byte	W14
	.byte		BEND  , c_v-3
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-17
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-26
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-31
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-40
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-49
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-58
	.byte		        c_v-64
	.byte	W03
	.byte	W03
	.byte		        c_v-26
	.byte	W04
@ 097   ----------------------------------------
	.byte		        c_v-19
	.byte		N02   , Ds3 , v116
	.byte	W01
	.byte		BEND  , c_v-11
	.byte		        c_v+0
	.byte	W01
	.byte	W03
	.byte		N02   , Cn3 , v108
	.byte	W02
	.byte	W04
	.byte		N32   , Ds3 , v127, gtp1
	.byte	W05
	.byte		BEND  , c_v+2
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+23
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+30
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+37
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+42
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+49
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+63
	.byte	W17
	.byte	W03
	.byte		N05   , Fn3 , v116
	.byte	W05
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		N23   , Ds3 , v120
	.byte	W02
	.byte		BEND  , c_v+3
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+21
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+43
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+57
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+63
	.byte	W02
	.byte		        c_v+63
	.byte	W01
	.byte		        c_v+56
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+38
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+26
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+11
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+0
	.byte	W09
	.byte	W01
	.byte		N17   , Cn3 
	.byte	W10
	.byte		BEND  , c_v-4
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-32
	.byte		        c_v-40
	.byte	W01
@ 098   ----------------------------------------
	.byte		        c_v-48
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-64
	.byte	W03
	.byte	W07
	.byte		N42   , Cn3 , v127
	.byte	W04
	.byte		BEND  , c_v-63
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-51
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-39
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-17
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W24
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+13
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+21
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+34
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+47
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+55
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N05   , Gn3 , v116
	.byte	W06
	.byte	W06
	.byte		N20   , Gn3 , v127
	.byte	W20
	.byte	W04
@ 099   ----------------------------------------
	.byte		N05   , As3 , v120
	.byte	W06
	.byte	W06
	.byte		N21   , As3 , v127
	.byte	W03
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		        c_v+7
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+25
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+39
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+47
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+52
	.byte	W02
	.byte		        c_v+53
	.byte	W03
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+48
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+43
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+34
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+28
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+13
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		N22   , Dn4 , v116
	.byte	W14
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		        c_v+3
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+8
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+12
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+17
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+26
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+40
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+53
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+0
	.byte	W03
	.byte		N21   , Ds4 , v127
	.byte	W16
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		        c_v+6
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+19
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+33
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+49
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N23   , Fn4 
	.byte	W13
@ 100   ----------------------------------------
	.byte	W04
	.byte		BEND  , c_v+1
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+11
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+21
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+34
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+56
	.byte		        c_v+63
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		N44   , Gn4 
	.byte	W32
	.byte	W03
	.byte		MOD   , 2
	.byte		        9
	.byte	W01
	.byte		        17
	.byte		        24
	.byte	W01
	.byte		        32
	.byte		        42
	.byte	W01
	.byte		        48
	.byte		        54
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		MOD   , 59
	.byte		        69
	.byte		BEND  , c_v+3
	.byte		        c_v+6
	.byte	W01
	.byte		MOD   , 79
	.byte		BEND  , c_v+8
	.byte		        c_v+12
	.byte	W01
	.byte		MOD   , 88
	.byte		        95
	.byte		BEND  , c_v+15
	.byte		        c_v+20
	.byte	W01
	.byte		MOD   , 105
	.byte		BEND  , c_v+22
	.byte		        c_v+25
	.byte	W01
	.byte		MOD   , 110
	.byte		BEND  , c_v+32
	.byte		        c_v+41
	.byte	W01
	.byte		MOD   , 118
	.byte		BEND  , c_v+51
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		MOD   , 123
	.byte	W02
	.byte		N21   , Cn5 , v092
	.byte	W01
	.byte		MOD   , 118
	.byte	W03
	.byte		        111
	.byte	W01
	.byte		        106
	.byte	W04
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		MOD   , 101
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		MOD   , 96
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		MOD   , 91
	.byte		BEND  , c_v-10
	.byte		        c_v-12
	.byte	W01
	.byte		MOD   , 84
	.byte		BEND  , c_v-15
	.byte	W01
	.byte		MOD   , 79
	.byte		BEND  , c_v-18
	.byte		        c_v-20
	.byte	W01
	.byte		MOD   , 74
	.byte		BEND  , c_v-22
	.byte		        c_v-25
	.byte	W01
	.byte		MOD   , 68
	.byte		BEND  , c_v-29
	.byte		        c_v-31
	.byte	W01
	.byte		MOD   , 63
	.byte		        58
	.byte		BEND  , c_v-34
	.byte		        c_v-37
	.byte	W01
	.byte		MOD   , 51
	.byte		BEND  , c_v-40
	.byte		        c_v-43
	.byte	W01
	.byte		MOD   , 44
	.byte		BEND  , c_v-45
	.byte		        c_v-47
	.byte	W01
	.byte		MOD   , 39
	.byte		BEND  , c_v-50
	.byte	W01
	.byte		MOD   , 34
	.byte	W01
	.byte		N23   , As4 
	.byte	W01
	.byte		BEND  , c_v-45
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-5
	.byte	W01
	.byte		MOD   , 41
	.byte		BEND  , c_v-2
	.byte		        c_v+0
	.byte	W03
	.byte		MOD   , 46
	.byte	W06
@ 101   ----------------------------------------
	.byte		        51
	.byte	W05
	.byte		BEND  , c_v-2
	.byte		        c_v-10
	.byte	W01
	.byte		MOD   , 42
	.byte		BEND  , c_v-20
	.byte		        c_v-30
	.byte	W01
	.byte		MOD   , 36
	.byte		BEND  , c_v-36
	.byte		        c_v-43
	.byte	W01
	.byte		MOD   , 31
	.byte		BEND  , c_v-48
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-49
	.byte		N23   , Cn5 
	.byte	W01
	.byte		BEND  , c_v-40
	.byte	W01
	.byte		        c_v-31
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-8
	.byte		        c_v+0
	.byte	W06
	.byte		MOD   , 36
	.byte	W07
	.byte		BEND  , c_v-2
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-15
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-21
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-34
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		MOD   , 31
	.byte		N23   , As4 
	.byte	W01
	.byte		BEND  , c_v-7
	.byte		        c_v+0
	.byte	W03
	.byte		MOD   , 36
	.byte	W03
	.byte		        42
	.byte	W03
	.byte		        48
	.byte	W14
	.byte	W01
	.byte		N22   , Gn4 , v108
	.byte	W03
	.byte		MOD   , 53
	.byte	W05
	.byte		BEND  , c_v-3
	.byte	W04
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-11
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-15
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-18
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		MOD   , 48
	.byte		BEND  , c_v-35
	.byte		        c_v-64
	.byte	W01
	.byte		MOD   , 0
	.byte	W11
	.byte		N11   , Gn4 , v120
	.byte	W02
@ 102   ----------------------------------------
	.byte	W01
	.byte		BEND  , c_v-57
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W04
	.byte	W01
	.byte		N48   , Gn4 , v127, gtp2
	.byte	W15
	.byte		MOD   , 4
	.byte	W01
	.byte		        9
	.byte	W01
	.byte		        14
	.byte	W01
	.byte		        19
	.byte	W03
	.byte		        24
	.byte	W02
	.byte		        29
	.byte	W02
	.byte		        34
	.byte	W01
	.byte		        39
	.byte	W01
	.byte		        44
	.byte	W01
	.byte		        51
	.byte	W01
	.byte		        56
	.byte	W02
	.byte		        63
	.byte	W11
	.byte		        58
	.byte	W02
	.byte		        53
	.byte	W01
	.byte		        48
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		MOD   , 41
	.byte		BEND  , c_v-5
	.byte		        c_v-9
	.byte	W01
	.byte		MOD   , 32
	.byte		        27
	.byte		BEND  , c_v-13
	.byte		        c_v-16
	.byte	W01
	.byte		MOD   , 21
	.byte		BEND  , c_v-19
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-30
	.byte	W01
	.byte		MOD   , 12
	.byte		        0
	.byte		BEND  , c_v-31
	.byte	W01
	.byte		        c_v-64
	.byte	W11
	.byte		N10   , Gn3 
	.byte	W02
	.byte		BEND  , c_v-53
	.byte	W01
	.byte		        c_v-34
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N06   , Cn4 , v116
	.byte	W06
	.byte	W06
@ 103   ----------------------------------------
	.byte		        Dn4 , v120
	.byte	W07
	.byte	W05
	.byte		N22   , Ds4 
	.byte	W22
	.byte	W01
	.byte		N21   , Dn4 
	.byte	W10
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-21
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-26
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-31
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-40
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-50
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-64
	.byte	W03
	.byte		N21   , As3 
	.byte	W05
	.byte		BEND  , c_v-61
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-56
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-51
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-42
	.byte		        c_v-39
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-32
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-24
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-15
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-7
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte		N03   , Fn3 , v012
	.byte	W04
	.byte	W09
	.byte		BEND  , c_v-64
	.byte	W07
@ 104   ----------------------------------------
	.byte		N11   , Gn3 , v127
	.byte	W04
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v-61
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-50
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-34
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte	W01
	.byte		N28   , Gn3 , v120
	.byte	W16
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-7
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-20
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-32
	.byte	W02
	.byte	W04
	.byte		        c_v+0
	.byte	W15
	.byte		N11   , Fn3 , v116
	.byte	W05
	.byte		BEND  , c_v-14
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-48
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-37
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v+0
	.byte	W02
	.byte	W01
	.byte		N03   , Cn4 , v108
	.byte	W04
	.byte	W07
	.byte		N14   , As3 , v116
	.byte	W13
@ 105   ----------------------------------------
	.byte	W02
	.byte	W12
	.byte		BEND  , c_v-64
	.byte	W09
	.byte		N11   , Cn3 , v120
	.byte	W06
	.byte		BEND  , c_v-57
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-31
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v+0
	.byte	W03
	.byte		N06   , Gn3 , v100
	.byte	W01
	.byte	W05
	.byte	W07
	.byte		N05   , As3 , v120
	.byte	W06
	.byte	W07
	.byte		N14   , As3 , v127
	.byte	W05
	.byte		BEND  , c_v+1
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+11
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+23
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+33
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+42
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+49
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+57
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+63
	.byte	W02
	.byte		        c_v-64
	.byte	W09
	.byte		N13   , Gn3 , v120
	.byte	W03
	.byte		BEND  , c_v-60
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-45
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v+0
	.byte	W04
	.byte		N06   , As3 
	.byte	W01
@ 106   ----------------------------------------
	.byte	W01
	.byte	W04
	.byte	W06
	.byte		N48   , As3 , v127, gtp1
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+6
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+23
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+35
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+44
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+53
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+63
	.byte	W14
	.byte		MOD   , 1
	.byte		        6
	.byte	W01
	.byte		        11
	.byte	W01
	.byte		        16
	.byte	W01
	.byte		        21
	.byte	W01
	.byte		        31
	.byte	W01
	.byte		        36
	.byte	W01
	.byte		        42
	.byte	W01
	.byte		        48
	.byte	W01
	.byte		        54
	.byte	W02
	.byte		        61
	.byte	W04
	.byte		        54
	.byte	W01
	.byte		        49
	.byte	W01
	.byte		        42
	.byte	W01
	.byte		        36
	.byte	W01
	.byte		        26
	.byte		        21
	.byte	W01
	.byte		        16
	.byte		        11
	.byte	W01
	.byte		        6
	.byte	W01
	.byte		        0
	.byte		BEND  , c_v+62
	.byte	W01
	.byte		        c_v+60
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+53
	.byte		        c_v+0
	.byte	W11
	.byte		N12   , Gn3 , v120
	.byte	W07
	.byte		BEND  , c_v+1
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+10
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+21
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+33
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+44
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+59
	.byte		        c_v+63
	.byte	W01
	.byte		N20   , Fn4 
	.byte	W12
@ 107   ----------------------------------------
	.byte	W09
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		N72   , Gn4 , v116, gtp1
	.byte	W30
	.byte		BEND  , c_v+5
	.byte	W01
	.byte		        c_v+14
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+33
	.byte		        c_v+38
	.byte	W03
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+33
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+21
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+0
	.byte	W03
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-64
	.byte		        c_v-29
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-13
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W24
	.byte	W04
	.byte		N60   , Gn4 , v116, gtp3
	.byte	W03
	.byte		BEND  , c_v+5
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+29
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+33
	.byte	W01
@ 108   ----------------------------------------
	.byte		        c_v+30
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+25
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+14
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+0
	.byte	W03
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-64
	.byte		        c_v-59
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-43
	.byte		        c_v-35
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-21
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W42
	.byte	W01
	.byte		        c_v+2
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+32
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+62
	.byte		        c_v+0
	.byte	W02
	.byte		N21   , Cn5 , v092
	.byte	W18
	.byte		BEND  , c_v+8
	.byte	W01
	.byte		        c_v+21
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+42
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N20   , Dn5 
	.byte	W14
@ 109   ----------------------------------------
	.byte	W04
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v+14
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+35
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		N22   , Ds5 
	.byte	W19
	.byte		BEND  , c_v+3
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+25
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+43
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+52
	.byte		        c_v+0
	.byte	W02
	.byte		N22   , Fn5 
	.byte	W19
	.byte		BEND  , c_v+3
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+25
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+41
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		N19   , Gn5 , v096
	.byte	W18
	.byte		BEND  , c_v+5
	.byte	W01
	.byte		        c_v+17
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+50
	.byte		        c_v+0
	.byte	W03
	.byte		N21   , As5 , v100
	.byte	W14
@ 110   ----------------------------------------
	.byte	W04
	.byte		BEND  , c_v+1
	.byte		        c_v+8
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+42
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N60   , Cn6 , v116, gtp1
	.byte	W36
	.byte		MOD   , 2
	.byte	W01
	.byte		        9
	.byte	W01
	.byte		        14
	.byte	W01
	.byte		        19
	.byte	W02
	.byte		        24
	.byte	W08
	.byte		BEND  , c_v-2
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		MOD   , 19
	.byte	W01
	.byte		BEND  , c_v-25
	.byte		        c_v-28
	.byte	W01
	.byte		MOD   , 14
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v-34
	.byte		        c_v-40
	.byte	W01
	.byte		MOD   , 7
	.byte		BEND  , c_v-44
	.byte		        c_v-48
	.byte	W01
	.byte		MOD   , 1
	.byte		BEND  , c_v-53
	.byte		        c_v-59
	.byte	W01
	.byte		MOD   , 0
	.byte		BEND  , c_v-63
	.byte		        c_v-64
	.byte	W01
	.byte	W07
	.byte		        c_v-64
	.byte	W17
@ 111   ----------------------------------------
	.byte	W22
	.byte		N13   , Fn3 , v120
	.byte	W06
	.byte		BEND  , c_v-57
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-43
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-18
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v+0
	.byte	W03
	.byte	W01
	.byte		N24   , Ds4 , v108
	.byte	W24
	.byte		        Dn4 , v120
	.byte	W09
	.byte		MOD   , 2
	.byte		        9
	.byte	W01
	.byte		        17
	.byte		        24
	.byte	W01
	.byte		        36
	.byte		        42
	.byte	W01
	.byte		        49
	.byte		        58
	.byte	W01
	.byte		        64
	.byte		        69
	.byte	W01
	.byte		        74
	.byte	W01
	.byte		        79
	.byte	W01
	.byte		        84
	.byte	W01
	.byte		        90
	.byte	W05
	.byte		        84
	.byte	W01
	.byte		        79
	.byte	W01
	.byte		        74
	.byte		N18   , As3 , v116
	.byte	W01
	.byte		MOD   , 68
	.byte	W01
	.byte		        61
	.byte	W01
	.byte		        54
	.byte		        49
	.byte	W05
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		MOD   , 44
	.byte		BEND  , c_v-8
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-16
	.byte	W01
@ 112   ----------------------------------------
	.byte		MOD   , 39
	.byte		BEND  , c_v-18
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-30
	.byte	W01
	.byte		MOD   , 34
	.byte		        29
	.byte		BEND  , c_v-34
	.byte		        c_v-41
	.byte	W01
	.byte		MOD   , 19
	.byte		BEND  , c_v-46
	.byte		        c_v-52
	.byte	W01
	.byte		MOD   , 14
	.byte		        6
	.byte		BEND  , c_v-58
	.byte		        c_v-62
	.byte	W01
	.byte		MOD   , 0
	.byte		BEND  , c_v-64
	.byte	W01
	.byte	W01
	.byte		        c_v-64
	.byte	W05
	.byte		        c_v-64
	.byte		N96   , Gn3 , v127
	.byte	W06
	.byte		BEND  , c_v-59
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-39
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-21
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-10
	.byte	W04
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v+0
	.byte	W22
	.byte		MOD   , 1
	.byte	W03
	.byte		        6
	.byte	W06
	.byte		        11
	.byte	W21
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		MOD   , 6
	.byte		BEND  , c_v-15
	.byte		        c_v-22
	.byte	W01
	.byte		MOD   , 1
	.byte		BEND  , c_v-29
	.byte		        c_v-34
	.byte	W01
	.byte		MOD   , 0
	.byte		BEND  , c_v-40
	.byte		        c_v-43
	.byte	W04
@ 113   ----------------------------------------
	.byte		        c_v-40
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-31
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-9
	.byte		        c_v+0
	.byte	W04
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-43
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-56
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-56
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v+0
	.byte		N42   , Fn3 , v104, gtp1
	.byte	W42
	.byte		BEND  , c_v+11
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+43
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+0
	.byte	W03
	.byte		N17   , Fn3 , v120
	.byte	W11
	.byte		BEND  , c_v-29
	.byte	W01
	.byte		        c_v-58
	.byte		        c_v-64
	.byte	W05
	.byte	W07
	.byte		N19   , En3 , v116
	.byte	W11
	.byte		BEND  , c_v-54
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-31
	.byte		        c_v-30
	.byte	W01
@ 114   ----------------------------------------
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-34
	.byte	W04
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte	W01
	.byte		        c_v+0
	.byte	W04
	.byte		N32   , Cn3 
	.byte	W20
	.byte		MOD   , 4
	.byte	W01
	.byte		        11
	.byte		        17
	.byte		        26
	.byte	W01
	.byte		        37
	.byte		        42
	.byte	W01
	.byte		        49
	.byte	W01
	.byte		        56
	.byte		        64
	.byte	W01
	.byte		        71
	.byte		        76
	.byte	W01
	.byte		        86
	.byte		        91
	.byte	W02
	.byte		        98
	.byte		        103
	.byte	W02
	.byte		        108
	.byte	W01
	.byte		        98
	.byte	W01
	.byte		        0
	.byte	W18
	.byte		BEND  , c_v-64
	.byte	W08
	.byte		N11   , Gn3 , v120
	.byte	W04
	.byte		BEND  , c_v-63
	.byte	W01
	.byte		        c_v-51
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-4
	.byte		        c_v+0
	.byte	W05
	.byte		N18   , As3 , v127
	.byte	W14
@ 115   ----------------------------------------
	.byte	W04
	.byte	W07
	.byte		N21   , As3 , v120
	.byte	W03
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		        c_v+31
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+63
	.byte	W10
	.byte		        c_v+63
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+56
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+50
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+38
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+16
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte	W02
	.byte		N24   , Cs4 , v116
	.byte	W02
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		        c_v+17
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+44
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+63
	.byte		        c_v+63
	.byte	W12
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+61
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+54
	.byte	W01
	.byte		        c_v+50
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+37
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+17
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte	W01
	.byte		N18   , Dn4 , v127
	.byte	W10
	.byte		MOD   , 2
	.byte		        14
	.byte	W01
	.byte		        29
	.byte		        44
	.byte	W01
	.byte		        56
	.byte		        71
	.byte	W01
	.byte		        84
	.byte		        101
	.byte	W01
	.byte		        116
	.byte		        127
	.byte	W04
	.byte	W01
	.byte		        0
	.byte	W05
	.byte		N21   , Fn4 
	.byte	W08
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-12
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-18
	.byte	W01
@ 116   ----------------------------------------
	.byte		        c_v-19
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-26
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-47
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-63
	.byte		        c_v-64
	.byte	W03
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v+0
	.byte		N32   , Ds4 , v116, gtp1
	.byte	W22
	.byte		MOD   , 4
	.byte		        9
	.byte	W01
	.byte		        16
	.byte		        21
	.byte	W01
	.byte		        32
	.byte		        41
	.byte	W01
	.byte		        51
	.byte		        61
	.byte	W01
	.byte		        73
	.byte		        81
	.byte	W01
	.byte		        91
	.byte		        96
	.byte	W01
	.byte		        103
	.byte		        110
	.byte	W01
	.byte		        115
	.byte	W01
	.byte		        120
	.byte	W02
	.byte		        110
	.byte		        95
	.byte	W01
	.byte		        78
	.byte		        0
	.byte	W03
	.byte		N56   , Gn4 , v127, gtp1
	.byte	W06
	.byte		BEND  , c_v-8
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-29
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-51
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W03
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-36
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v+0
	.byte	W32
	.byte	W03
@ 117   ----------------------------------------
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+4
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+11
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+21
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+32
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+44
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+39
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N22   , Cn5 , v092
	.byte	W19
	.byte		BEND  , c_v+1
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+10
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+24
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+38
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		N23   , Ds5 
	.byte	W19
	.byte		BEND  , c_v-3
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-20
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-40
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v+0
	.byte	W02
	.byte		N18   , Dn5 
	.byte	W18
	.byte	W05
	.byte		N17   , As4 , v100
	.byte	W10
	.byte		BEND  , c_v-3
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-22
	.byte	W01
@ 118   ----------------------------------------
	.byte		        c_v-28
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-41
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-51
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte	W03
	.byte		        c_v+0
	.byte	W24
	.byte	W03
	.byte		N22   , Gn4 , v127
	.byte	W12
	.byte		BEND  , c_v-3
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-8
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-18
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-34
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-41
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-51
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-63
	.byte		        c_v-64
	.byte	W03
	.byte	W01
	.byte		N16   , Fn4 
	.byte	W17
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W07
	.byte		N24   , Fn4 , v120, gtp1
	.byte	W13
@ 119   ----------------------------------------
	.byte	W01
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-24
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-31
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-62
	.byte		        c_v-64
	.byte	W01
	.byte		N30   , Dn4 , v127, gtp1
	.byte	W32
	.byte	W03
	.byte		N32   , Dn4 , v116, gtp3
	.byte	W06
	.byte		BEND  , c_v-44
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+20
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+20
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+16
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+0
	.byte	W22
	.byte	W02
	.byte		N21   , As3 , v120
	.byte	W03
	.byte		MOD   , 4
	.byte		        12
	.byte	W01
	.byte		        24
	.byte		        41
	.byte	W01
	.byte		        53
	.byte		        69
	.byte	W01
	.byte		        81
	.byte		        98
	.byte	W01
	.byte		        113
	.byte		        120
	.byte	W01
	.byte		        111
	.byte	W01
	.byte		        81
	.byte		        6
	.byte	W01
	.byte		        0
	.byte		BEND  , c_v-1
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-9
	.byte		        c_v-15
	.byte	W01
@ 120   ----------------------------------------
	.byte		        c_v-19
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-53
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-62
	.byte		        c_v-64
	.byte	W04
	.byte	W01
	.byte		N24   , Gn3 , v127
	.byte	W03
	.byte		BEND  , c_v-60
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-45
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-7
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W13
	.byte		MOD   , 4
	.byte	W01
	.byte		        12
	.byte		        21
	.byte	W01
	.byte		        31
	.byte		        39
	.byte	W01
	.byte	W01
	.byte		        0
	.byte	W08
	.byte		BEND  , c_v-64
	.byte	W06
	.byte		N10   , Gn3 , v120
	.byte	W03
	.byte		BEND  , c_v-63
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-39
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-21
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-2
	.byte		        c_v+0
	.byte	W03
	.byte	W01
	.byte		N22   , Cn4 , v116
	.byte	W17
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		        c_v+8
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+23
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+45
	.byte		        c_v+54
	.byte	W01
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+52
	.byte		        c_v+0
	.byte	W02
	.byte		N24   , Dn4 
	.byte	W12
@ 121   ----------------------------------------
	.byte	W12
	.byte		N23   , Ds4 , v120
	.byte	W15
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-8
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-21
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-39
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v+0
	.byte		N16   , Dn4 
	.byte	W16
	.byte	W07
	.byte		N18   , Cn4 , v127
	.byte	W09
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-8
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-12
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-18
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-34
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-42
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-48
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-57
	.byte	W04
	.byte		        c_v-55
	.byte		N24   , As3 , v127, gtp1
	.byte	W01
	.byte		BEND  , c_v-52
	.byte	W01
	.byte		        c_v-50
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-42
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-31
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-18
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W02
@ 122   ----------------------------------------
	.byte	W04
	.byte		        c_v+1
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+8
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+16
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+25
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+36
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+48
	.byte		        c_v+54
	.byte	W01
	.byte		        c_v+60
	.byte		        c_v+63
	.byte	W01
	.byte	W01
	.byte		TIE   
	.byte	W28
	.byte	W01
	.byte		MOD   , 1
	.byte	W02
	.byte		        6
	.byte	W02
	.byte		        11
	.byte	W02
	.byte		        16
	.byte	W01
	.byte		        21
	.byte	W09
	.byte		        26
	.byte	W32
	.byte		        21
	.byte	W07
@ 123   ----------------------------------------
	.byte	W05
	.byte		        16
	.byte	W02
	.byte		        11
	.byte	W08
	.byte		EOT   
	.byte	W01
	.byte		MOD   , 0
	.byte	W07
	.byte		BEND  , c_v+0
	.byte	W13
	.byte		N12   , Gn4 
	.byte	W05
	.byte		BEND  , c_v-2
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-12
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-39
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-53
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-64
	.byte		N24   , Fn4 , v116, gtp3
	.byte	W01
	.byte	W24
	.byte	W03
	.byte		BEND  , c_v-63
	.byte		        c_v+0
	.byte	W08
	.byte		N11   , Fn4 , v127
	.byte	W06
	.byte		BEND  , c_v-2
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-18
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-41
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-58
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-57
	.byte		        c_v-36
	.byte		N44   , Cn4 , v120, gtp1
	.byte	W01
@ 124   ----------------------------------------
	.byte		BEND  , c_v-12
	.byte		        c_v+0
	.byte	W24
	.byte	W02
	.byte		MOD   , 2
	.byte	W09
	.byte		        0
	.byte	W04
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v-5
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-15
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-64
	.byte	W16
	.byte		N17   , As3 
	.byte	W01
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-50
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-24
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W10
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-47
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-64
	.byte	W05
	.byte		        c_v-62
	.byte		        c_v-47
	.byte		N20   , Cn4 
	.byte	W01
	.byte		BEND  , c_v-30
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v+0
	.byte	W12
@ 125   ----------------------------------------
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-8
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-23
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		N84   , Fn3 , v127, gtp1
	.byte	W23
	.byte		BEND  , c_v+4
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+51
	.byte		        c_v+63
	.byte	W10
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+16
	.byte		        c_v+0
	.byte	W42
	.byte	W01
	.byte		        c_v+0
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+3
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+10
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+20
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+35
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+60
	.byte		        c_v+63
	.byte	W01
@ 126   ----------------------------------------
	.byte	W01
	.byte	W01
	.byte		        c_v+0
	.byte	W10
	.byte		N68   , Cn5 
	.byte	W17
	.byte		MOD   , 1
	.byte	W04
	.byte		        6
	.byte	W01
	.byte		        11
	.byte	W01
	.byte		        17
	.byte		        22
	.byte	W01
	.byte		        29
	.byte		        36
	.byte	W01
	.byte		        41
	.byte		        46
	.byte	W01
	.byte		        54
	.byte	W01
	.byte		        59
	.byte	W01
	.byte		        64
	.byte	W03
	.byte		        69
	.byte	W04
	.byte		        76
	.byte	W02
	.byte		        83
	.byte	W01
	.byte		        88
	.byte	W01
	.byte		        95
	.byte	W01
	.byte		        100
	.byte	W01
	.byte		        106
	.byte	W02
	.byte		        111
	.byte	W01
	.byte		        116
	.byte	W07
	.byte		        111
	.byte	W05
	.byte		        106
	.byte	W01
	.byte		        101
	.byte	W01
	.byte		        96
	.byte	W01
	.byte		        90
	.byte	W01
	.byte		        84
	.byte	W02
	.byte		        78
	.byte	W02
	.byte		        73
	.byte	W01
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		        c_v+16
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+37
	.byte		        c_v+48
	.byte	W01
	.byte		MOD   , 68
	.byte		        0
	.byte		BEND  , c_v+59
	.byte		        c_v+0
	.byte	W04
	.byte		N21   , Ds5 , v120
	.byte	W12
@ 127   ----------------------------------------
	.byte	W04
	.byte		BEND  , c_v-2
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-43
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-57
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-49
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N22   , Dn5 , v127
	.byte	W15
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-15
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-23
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-32
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-41
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-51
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-62
	.byte		        c_v-64
	.byte	W01
	.byte	W04
	.byte		        c_v-64
	.byte	W22
	.byte		N23   , As4 
	.byte	W02
	.byte		BEND  , c_v-55
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W19
	.byte	W01
	.byte		N10   , Cn5 , v116
	.byte	W10
	.byte	W01
	.byte		N72   , Gn4 , v127, gtp2
	.byte	W01
@ 128   ----------------------------------------
	.byte	W05
	.byte		BEND  , c_v-9
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-43
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-63
	.byte		        c_v-64
	.byte	W05
	.byte		        c_v-54
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v+0
	.byte	W30
	.byte	W01
	.byte		MOD   , 2
	.byte		        11
	.byte	W01
	.byte		        16
	.byte		        22
	.byte	W01
	.byte		        29
	.byte		        37
	.byte	W01
	.byte		        42
	.byte		        48
	.byte	W01
	.byte		        54
	.byte	W01
	.byte		        61
	.byte		        66
	.byte	W01
	.byte		        71
	.byte	W01
	.byte		        78
	.byte	W02
	.byte		        83
	.byte	W03
	.byte		        90
	.byte	W01
	.byte		        96
	.byte	W02
	.byte		        101
	.byte		        106
	.byte	W01
	.byte		        111
	.byte	W04
	.byte		        116
	.byte	W05
	.byte		        110
	.byte	W01
	.byte		        105
	.byte	W02
	.byte		        100
	.byte	W01
	.byte		        0
	.byte	W09
	.byte		BEND  , c_v-64
	.byte	W03
	.byte		N11   , Cn5 , v116
	.byte	W02
	.byte		BEND  , c_v-54
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v+0
	.byte	W08
@ 129   ----------------------------------------
	.byte		N10   , Ds5 , v108
	.byte	W10
	.byte	W01
	.byte		N24   , Cn5 , v116
	.byte	W17
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v-3
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-12
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-20
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-29
	.byte		        c_v-33
	.byte	W02
	.byte		        c_v-24
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N10   , As4 , v120
	.byte	W11
	.byte		N07   , Cn5 , v092
	.byte	W07
	.byte		BEND  , c_v-64
	.byte	W06
	.byte		N23   , Ds5 , v120
	.byte	W01
	.byte		BEND  , c_v-63
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-31
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-4
	.byte		        c_v+0
	.byte	W20
	.byte		N16   , Dn5 
	.byte	W13
@ 130   ----------------------------------------
	.byte		BEND  , c_v-2
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-32
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-53
	.byte		        c_v-64
	.byte	W01
	.byte	W02
	.byte		        c_v-64
	.byte	W06
	.byte		N52   , Cn5 , v120, gtp1
	.byte	W02
	.byte		BEND  , c_v-61
	.byte	W01
	.byte		        c_v-47
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		MOD   , 1
	.byte		        9
	.byte	W01
	.byte		        16
	.byte		        29
	.byte	W01
	.byte		        41
	.byte		        49
	.byte	W01
	.byte		        59
	.byte		        71
	.byte	W01
	.byte		        81
	.byte		        95
	.byte	W01
	.byte		        101
	.byte		        111
	.byte	W01
	.byte		        118
	.byte		        123
	.byte	W01
	.byte		        127
	.byte	W05
	.byte		VOL   , 125*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte		MOD   , 123
	.byte		VOL   , 124*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		MOD   , 118
	.byte	W01
	.byte		        113
	.byte	W01
	.byte		        108
	.byte	W01
	.byte		VOL   , 123*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		MOD   , 103
	.byte	W03
	.byte		VOL   , 122*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		MOD   , 98
	.byte	W03
	.byte		VOL   , 121*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte		        120*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		MOD   , 93
	.byte		        88
	.byte	W01
	.byte		        79
	.byte		VOL   , 119*mus_high_hopes_mvl/mxv
	.byte		MOD   , 74
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		MOD   , 6
	.byte		BEND  , c_v-64
	.byte	W03
	.byte		VOL   , 118*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		N32   , Cn5 , v120, gtp2
	.byte	W01
	.byte		MOD   , 11
	.byte	W01
	.byte		        17
	.byte	W01
	.byte		        22
	.byte		VOL   , 117*mus_high_hopes_mvl/mxv
	.byte		MOD   , 27
	.byte		BEND  , c_v-62
	.byte		        c_v-51
	.byte	W01
	.byte		MOD   , 37
	.byte		BEND  , c_v-40
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-13
	.byte		        c_v-1
	.byte		        c_v+0
	.byte	W03
	.byte		VOL   , 116*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		MOD   , 42
	.byte	W04
	.byte		VOL   , 115*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		        114*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte		        113*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-8
	.byte		        c_v-12
	.byte	W01
@ 131   ----------------------------------------
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-18
	.byte	W01
	.byte		VOL   , 112*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v-21
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-29
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-37
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-51
	.byte	W01
	.byte		VOL   , 111*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v-56
	.byte		        c_v-59
	.byte	W03
	.byte		        c_v-57
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-43
	.byte		        c_v+0
	.byte	W01
	.byte		N42   , Cn5 , v127, gtp1
	.byte	W01
	.byte		VOL   , 110*mus_high_hopes_mvl/mxv
	.byte		MOD   , 48
	.byte	W01
	.byte		        53
	.byte		        58
	.byte	W01
	.byte		        63
	.byte		        68
	.byte	W01
	.byte		        74
	.byte	W01
	.byte		VOL   , 109*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		MOD   , 69
	.byte	W01
	.byte		VOL   , 108*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		MOD   , 64
	.byte	W03
	.byte		VOL   , 107*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		        106*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte		        105*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		MOD   , 59
	.byte	W03
	.byte		VOL   , 104*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		MOD   , 54
	.byte	W02
	.byte		        49
	.byte	W02
	.byte		VOL   , 103*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		BEND  , c_v-2
	.byte		        c_v-6
	.byte	W01
	.byte		VOL   , 102*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v-12
	.byte		        c_v-17
	.byte	W01
	.byte		MOD   , 44
	.byte		BEND  , c_v-21
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-28
	.byte		        c_v-32
	.byte	W01
	.byte		MOD   , 39
	.byte		BEND  , c_v-37
	.byte		        c_v-42
	.byte	W01
	.byte		MOD   , 32
	.byte		        27
	.byte		VOL   , 101*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v-47
	.byte		        c_v-53
	.byte	W01
	.byte		MOD   , 14
	.byte		BEND  , c_v-60
	.byte		        c_v-64
	.byte	W03
	.byte		N44   , Cn5 , v116
	.byte	W01
	.byte		VOL   , 100*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v-59
	.byte	W01
	.byte		        c_v-47
	.byte		        c_v-35
	.byte	W01
	.byte		MOD   , 31
	.byte		        37
	.byte		BEND  , c_v-22
	.byte		        c_v-9
	.byte	W01
	.byte		MOD   , 42
	.byte		        48
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		MOD   , 53
	.byte	W01
	.byte		        58
	.byte		VOL   , 99*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		MOD   , 64
	.byte	W01
	.byte		VOL   , 98*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		        97*mus_high_hopes_mvl/mxv
	.byte		MOD   , 58
	.byte		BEND  , c_v-3
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-9
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-19
	.byte	W01
	.byte		MOD   , 53
	.byte		BEND  , c_v-22
	.byte		        c_v-25
	.byte	W01
	.byte		MOD   , 48
	.byte		BEND  , c_v-30
	.byte		        c_v-33
	.byte	W01
	.byte		VOL   , 96*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v-38
	.byte		        c_v-43
	.byte	W01
	.byte		MOD   , 42
	.byte		BEND  , c_v-46
	.byte		        c_v-51
	.byte	W01
	.byte		MOD   , 36
	.byte		BEND  , c_v-56
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-54
	.byte		        c_v-46
	.byte	W01
	.byte		MOD   , 41
	.byte		VOL   , 95*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v-35
	.byte		        c_v-25
	.byte	W01
	.byte		MOD   , 46
	.byte		BEND  , c_v-15
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		VOL   , 94*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		MOD   , 51
	.byte	W02
	.byte		VOL   , 93*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-12
	.byte		        c_v-17
	.byte	W01
@ 132   ----------------------------------------
	.byte		        c_v-22
	.byte		        c_v-28
	.byte	W01
	.byte		VOL   , 92*mus_high_hopes_mvl/mxv
	.byte		MOD   , 46
	.byte		BEND  , c_v-32
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-40
	.byte		        c_v-43
	.byte	W01
	.byte		MOD   , 41
	.byte		BEND  , c_v-47
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-56
	.byte		        c_v-60
	.byte	W01
	.byte		MOD   , 34
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		VOL   , 91*mus_high_hopes_mvl/mxv
	.byte		MOD   , 27
	.byte	W01
	.byte		        11
	.byte	W04
	.byte		VOL   , 90*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v-63
	.byte		        c_v-53
	.byte		N36   , Cn5 , v120, gtp1
	.byte	W01
	.byte		MOD   , 19
	.byte		BEND  , c_v-42
	.byte		        c_v-27
	.byte	W01
	.byte		MOD   , 24
	.byte		        31
	.byte		BEND  , c_v-12
	.byte		        c_v+0
	.byte	W01
	.byte		MOD   , 37
	.byte		        42
	.byte		        48
	.byte	W01
	.byte		        53
	.byte		VOL   , 89*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		MOD   , 58
	.byte	W02
	.byte		        63
	.byte	W02
	.byte		VOL   , 88*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		MOD   , 68
	.byte	W02
	.byte		        73
	.byte	W02
	.byte		VOL   , 87*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		MOD   , 78
	.byte	W02
	.byte		VOL   , 86*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		        85*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		MOD   , 71
	.byte	W01
	.byte		        64
	.byte	W01
	.byte		        58
	.byte	W01
	.byte		        51
	.byte	W01
	.byte		        46
	.byte	W01
	.byte		VOL   , 84*mus_high_hopes_mvl/mxv
	.byte		MOD   , 41
	.byte	W01
	.byte		        34
	.byte	W01
	.byte		        27
	.byte	W01
	.byte		        22
	.byte	W01
	.byte		VOL   , 83*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		MOD   , 17
	.byte		N44   , Dn5 , v116, gtp3
	.byte	W01
	.byte		VOL   , 82*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		VOL   , 81*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v+30
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+38
	.byte	W03
	.byte		VOL   , 80*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v+35
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+25
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+3
	.byte		        c_v+0
	.byte	W03
	.byte		VOL   , 79*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte		        78*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte		MOD   , 12
	.byte		VOL   , 77*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		        76*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		MOD   , 6
	.byte	W01
	.byte		        0
	.byte		VOL   , 75*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte		        74*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		        73*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		MOD   , 4
	.byte		N22   , Ds5 
	.byte	W01
@ 133   ----------------------------------------
	.byte	W01
	.byte		VOL   , 72*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		        71*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		MOD   , 11
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		        c_v+23
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+41
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		VOL   , 70*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v+44
	.byte	W01
	.byte		        c_v+32
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		MOD   , 6
	.byte	W02
	.byte		VOL   , 69*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		MOD   , 1
	.byte	W02
	.byte		        0
	.byte	W01
	.byte		VOL   , 68*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte	W01
	.byte		N24   , Fn5 , v104
	.byte	W01
	.byte		VOL   , 67*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte		        66*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		        c_v+14
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+37
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+56
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte		VOL   , 65*mus_high_hopes_mvl/mxv
	.byte		MOD   , 1
	.byte		BEND  , c_v+57
	.byte	W01
	.byte		        c_v+42
	.byte		        c_v+19
	.byte	W01
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		VOL   , 64*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		        63*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		N56   , As5 , v116, gtp1
	.byte	W01
	.byte		VOL   , 62*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		BEND  , c_v+1
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+19
	.byte		        c_v+28
	.byte	W01
	.byte		VOL   , 61*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v+39
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+61
	.byte		        c_v+63
	.byte	W03
	.byte		        c_v+53
	.byte	W01
	.byte		VOL   , 60*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v+37
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+12
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+33
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte		VOL   , 59*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		MOD   , 2
	.byte	W01
	.byte		        7
	.byte	W02
	.byte		        14
	.byte		VOL   , 58*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		MOD   , 21
	.byte	W04
	.byte		VOL   , 57*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+61
	.byte	W01
	.byte		        c_v+58
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+54
	.byte		        c_v+52
	.byte	W01
	.byte		VOL   , 56*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v+50
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+41
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+29
	.byte		        c_v+23
	.byte	W01
	.byte		MOD   , 14
	.byte		BEND  , c_v+14
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+3
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+3
	.byte		        c_v+7
	.byte	W01
	.byte		VOL   , 55*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v+15
	.byte		        c_v+25
	.byte	W01
	.byte		MOD   , 22
	.byte		BEND  , c_v+33
	.byte		        c_v+43
	.byte	W01
	.byte		MOD   , 31
	.byte		        37
	.byte		BEND  , c_v+51
	.byte		        c_v+56
	.byte	W01
	.byte		MOD   , 46
	.byte		BEND  , c_v+59
	.byte		        c_v+61
	.byte	W01
	.byte		VOL   , 54*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v+62
	.byte		        c_v+63
	.byte	W05
	.byte		VOL   , 53*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		BEND  , c_v+63
	.byte	W01
@ 134   ----------------------------------------
	.byte		VOL   , 52*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v+61
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+56
	.byte		        c_v+54
	.byte	W01
	.byte		VOL   , 51*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v+52
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+47
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+39
	.byte		        c_v+34
	.byte	W01
	.byte		MOD   , 41
	.byte		BEND  , c_v+28
	.byte		        c_v+19
	.byte	W01
	.byte		MOD   , 36
	.byte		BEND  , c_v+7
	.byte		        c_v+0
	.byte	W01
	.byte		VOL   , 50*mus_high_hopes_mvl/mxv
	.byte		MOD   , 14
	.byte	W02
	.byte		N90   , As5 , v116, gtp1
	.byte	W02
	.byte		MOD   , 21
	.byte		BEND  , c_v+0
	.byte		        c_v+11
	.byte	W01
	.byte		MOD   , 34
	.byte		        42
	.byte		VOL   , 49*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v+22
	.byte		        c_v+33
	.byte	W01
	.byte		MOD   , 53
	.byte		        59
	.byte		BEND  , c_v+45
	.byte		        c_v+55
	.byte	W01
	.byte		MOD   , 66
	.byte		BEND  , c_v+60
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+63
	.byte	W02
	.byte		VOL   , 48*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		MOD   , 71
	.byte	W01
	.byte		VOL   , 47*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		MOD   , 78
	.byte	W01
	.byte		        83
	.byte		        91
	.byte	W01
	.byte		        96
	.byte		        101
	.byte		VOL   , 46*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		MOD   , 106
	.byte	W02
	.byte		        111
	.byte	W01
	.byte		VOL   , 45*mus_high_hopes_mvl/mxv
	.byte		MOD   , 116
	.byte	W01
	.byte		        121
	.byte	W01
	.byte		        127
	.byte	W23
	.byte		VOL   , 44*mus_high_hopes_mvl/mxv
	.byte	W22
	.byte		        43*mus_high_hopes_mvl/mxv
	.byte	W16
@ 135   ----------------------------------------
	.byte		MOD   , 121
	.byte	W01
	.byte		        116
	.byte	W02
	.byte		        111
	.byte		BEND  , c_v+61
	.byte	W01
	.byte		MOD   , 105
	.byte		BEND  , c_v+59
	.byte		        c_v+57
	.byte	W01
	.byte		MOD   , 100
	.byte		BEND  , c_v+54
	.byte		        c_v+51
	.byte	W01
	.byte		MOD   , 95
	.byte		BEND  , c_v+47
	.byte		        c_v+43
	.byte	W01
	.byte		VOL   , 42*mus_high_hopes_mvl/mxv
	.byte		MOD   , 74
	.byte		BEND  , c_v+21
	.byte	W03
	.byte		MOD   , 69
	.byte		N44   , As5 , v080, gtp3
	.byte	W01
	.byte		BEND  , c_v+26
	.byte		        c_v+33
	.byte	W01
	.byte		MOD   , 74
	.byte		BEND  , c_v+43
	.byte		        c_v+55
	.byte	W01
	.byte		MOD   , 83
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		MOD   , 91
	.byte	W01
	.byte		        98
	.byte		        103
	.byte	W01
	.byte		        110
	.byte	W05
	.byte		        115
	.byte	W08
	.byte		VOL   , 38*mus_high_hopes_mvl/mxv
	.byte	W10
	.byte		MOD   , 110
	.byte	W01
	.byte		        105
	.byte	W03
	.byte		        98
	.byte	W02
	.byte		        93
	.byte	W01
	.byte		        88
	.byte		BEND  , c_v+62
	.byte	W01
	.byte		MOD   , 83
	.byte		BEND  , c_v+60
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+56
	.byte		        c_v+53
	.byte	W01
	.byte		MOD   , 78
	.byte		BEND  , c_v+52
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		VOL   , 35*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v+47
	.byte	W01
	.byte		        c_v+43
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+40
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+36
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+30
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+23
	.byte		        c_v+19
	.byte	W01
	.byte		MOD   , 66
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		N44   , As5 , v096, gtp1
	.byte	W02
	.byte		BEND  , c_v+9
	.byte	W01
	.byte		MOD   , 74
	.byte		BEND  , c_v+26
	.byte		        c_v+43
	.byte	W01
	.byte		MOD   , 86
	.byte		        95
	.byte		BEND  , c_v+57
	.byte		        c_v+63
	.byte	W01
	.byte		MOD   , 105
	.byte		        111
	.byte	W01
	.byte		        118
	.byte	W06
	.byte		BEND  , c_v+63
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+59
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+53
	.byte		        c_v+51
	.byte	W01
	.byte		VOL   , 32*mus_high_hopes_mvl/mxv
	.byte		MOD   , 113
	.byte		BEND  , c_v+49
	.byte	W01
	.byte		        c_v+47
	.byte		        c_v+46
	.byte	W01
	.byte		MOD   , 108
	.byte		BEND  , c_v+43
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+35
	.byte		        c_v+30
	.byte	W01
	.byte		MOD   , 103
	.byte		BEND  , c_v+26
	.byte		        c_v+20
	.byte	W01
	.byte		MOD   , 98
	.byte		BEND  , c_v+14
	.byte		        c_v+8
	.byte	W01
	.byte		MOD   , 93
	.byte		        88
	.byte		BEND  , c_v+2
	.byte		        c_v+0
	.byte	W01
	.byte		MOD   , 81
	.byte	W01
	.byte		        76
	.byte	W01
	.byte		BEND  , c_v+5
	.byte		        c_v+20
	.byte	W01
	.byte		MOD   , 83
	.byte		        95
	.byte		BEND  , c_v+36
	.byte		        c_v+53
	.byte	W01
	.byte		MOD   , 108
	.byte		        118
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		MOD   , 127
	.byte	W08
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		        c_v+61
	.byte		        c_v+60
	.byte	W01
@ 136   ----------------------------------------
	.byte		MOD   , 125
	.byte		VOL   , 28*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v+58
	.byte		        c_v+56
	.byte	W01
	.byte		MOD   , 120
	.byte		BEND  , c_v+53
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+47
	.byte		        c_v+43
	.byte	W01
	.byte		MOD   , 115
	.byte		BEND  , c_v+39
	.byte		        c_v+36
	.byte	W01
	.byte		MOD   , 110
	.byte		BEND  , c_v+33
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+26
	.byte		        c_v+22
	.byte	W01
	.byte		MOD   , 105
	.byte		BEND  , c_v+19
	.byte		        c_v+14
	.byte	W01
	.byte		MOD   , 98
	.byte		BEND  , c_v+9
	.byte		        c_v+3
	.byte	W01
	.byte		MOD   , 91
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		MOD   , 73
	.byte	W02
	.byte		N90   , As5 , v100, gtp1
	.byte	W01
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		MOD   , 78
	.byte		BEND  , c_v+29
	.byte		        c_v+53
	.byte	W01
	.byte		MOD   , 90
	.byte		        101
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		MOD   , 113
	.byte		        127
	.byte	W07
	.byte		VOL   , 19*mus_high_hopes_mvl/mxv
	.byte	W23
	.byte		        18*mus_high_hopes_mvl/mxv
	.byte	W22
	.byte		        15*mus_high_hopes_mvl/mxv
	.byte	W22
	.byte		        13*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+62
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+58
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+53
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+48
	.byte		        c_v+46
	.byte	W01
@ 137   ----------------------------------------
	.byte		        c_v+43
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+38
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+33
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+28
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+21
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+14
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+6
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+0
	.byte	W03
	.byte		MOD   , 120
	.byte	W01
	.byte		N44   , As5 , v096
	.byte	W01
	.byte		MOD   , 127
	.byte		BEND  , c_v+9
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+33
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+51
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+59
	.byte		        c_v+61
	.byte	W01
	.byte		VOL   , 12*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v+62
	.byte	W02
	.byte		        c_v+63
	.byte	W20
	.byte		VOL   , 11*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		BEND  , c_v+62
	.byte	W01
	.byte		        c_v+60
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+56
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+51
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+47
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+38
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+32
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+24
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+14
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+3
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		N44   , As5 , v092, gtp3
	.byte	W01
	.byte		VOL   , 10*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+10
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+34
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+53
	.byte		        c_v+57
	.byte	W02
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+61
	.byte	W04
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+50
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+44
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+40
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+35
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+32
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+23
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+13
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+2
	.byte	W01
	.byte		MOD   , 125
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 9*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		MOD   , 120
	.byte	W01
	.byte		        127
	.byte		BEND  , c_v+11
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+42
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+63
	.byte	W10
	.byte		        c_v+62
	.byte		        c_v+59
	.byte	W01
@ 138   ----------------------------------------
	.byte		        c_v+56
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+49
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+44
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+39
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+33
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+26
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+15
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+5
	.byte		        c_v+1
	.byte	W01
	.byte		VOL   , 8*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	W02
	.byte		N01   , As5 , v080
	.byte	W01
	.byte	W18
	.byte		VOL   , 0*mus_high_hopes_mvl/mxv
	.byte	FINE

@**************** Track 2 (Midi-Chn.9) ****************@

mus_high_hopes_2:
	.byte	KEYSH , mus_high_hopes_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 25
	.byte		VOL   , 127*mus_high_hopes_mvl/mxv
	.byte		PAN   , c_v-29
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
mus_high_hopes_2_018:
	.byte	W12
	.byte		N23   , Cn2 , v127
	.byte		N13   , Gn2 , v088
	.byte	W12
	.byte		N11   , Cn2 , v092
	.byte	W01
	.byte	PEND
	.byte	W10
	.byte	W01
	.byte		        Gs2 , v076
	.byte	W11
	.byte	W13
	.byte		N23   , Gs1 , v127
	.byte		N11   , Fn2 , v092
	.byte	W11
	.byte	W01
	.byte		        Gs1 , v104
	.byte	W11
	.byte	W01
	.byte		N15   , Fn2 , v080
	.byte	W12
@ 019   ----------------------------------------
	.byte	W03
	.byte	W09
	.byte		N68   , Gn1 , v127, gtp3
	.byte	W12
	.byte		N10   , Dn2 , v092
	.byte	W10
	.byte	W02
	.byte		N18   
	.byte	W18
	.byte	W28
	.byte	W01
	.byte	W01
	.byte		N22   , Bn1 , v120
	.byte	W12
@ 020   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		N30   , Cn2 , v127, gtp1
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N06   , As1 
	.byte	W06
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W36
@ 021   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		N84   , Gn1 , v127, gtp1
	.byte		N01   , An1 , v092
	.byte	W84
@ 022   ----------------------------------------
	.byte	W01
	.byte	W92
	.byte	W03
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
mus_high_hopes_2_030:
	.byte	W12
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N11   , Gn2 , v108
	.byte	W11
	.byte	PEND
	.byte	W01
	.byte		        Ds3 , v116
	.byte	W11
	.byte	W01
	.byte		N08   , Gn2 
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N44   , Gn1 , v120, gtp1
	.byte	W12
	.byte		N11   , Dn2 , v116
	.byte	W11
	.byte	W01
	.byte		        As2 
	.byte	W11
	.byte	W01
@ 031   ----------------------------------------
	.byte		N06   , Dn2 
	.byte	W06
	.byte	W03
	.byte	W03
	.byte		N48   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N11   , Ds2 , v108
	.byte	W11
	.byte	W01
	.byte		N12   , Cn3 , v104
	.byte	W12
	.byte		N10   , Ds2 , v108
	.byte	W10
	.byte	W02
	.byte		N44   , As1 , v120, gtp1
	.byte	W01
	.byte	W11
	.byte		N12   , Fn2 , v116
	.byte	W12
	.byte		N11   , Dn3 , v100
	.byte	W11
	.byte	W01
@ 032   ----------------------------------------
	.byte		N09   , Fn2 , v116
	.byte	W09
	.byte	W03
	.byte		N40   , Cn2 , v120
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W11
	.byte	W01
	.byte		        Ds3 
	.byte	W11
	.byte	W01
	.byte		N04   , Gn2 , v127
	.byte	W04
	.byte	W08
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn2 , v108
	.byte	W12
	.byte		N13   , As2 , v116
	.byte	W12
@ 033   ----------------------------------------
	.byte		N05   , Gn2 
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N32   , Fn1 , v127, gtp2
	.byte	W12
	.byte		N10   , Cn2 , v108
	.byte	W10
	.byte	W02
	.byte		N13   , Gn2 , v120
	.byte	W10
	.byte	W02
	.byte		N05   , Gn1 , v127
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N42   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N13   , Ds2 , v072
	.byte	W12
	.byte		N12   , Cn3 , v104
	.byte	W01
	.byte	W11
@ 034   ----------------------------------------
	.byte		N07   , Ds2 , v116
	.byte	W07
	.byte	W05
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N11   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		        Ds3 , v116
	.byte	W11
	.byte	W01
	.byte		N08   , Gn2 
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N44   , Gn1 , v120, gtp1
	.byte	W12
	.byte		N11   , Dn2 , v116
	.byte	W11
	.byte	W01
	.byte		        As2 
	.byte	W11
	.byte	W01
@ 035   ----------------------------------------
	.byte		N06   , Dn2 
	.byte	W06
	.byte	W03
	.byte	W03
	.byte		N48   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N11   , Ds2 , v108
	.byte	W11
	.byte	W01
	.byte		N12   , Cn3 , v104
	.byte	W12
	.byte		N10   , Ds2 , v108
	.byte	W10
	.byte	W02
	.byte		N44   , As1 , v120, gtp1
	.byte	W01
	.byte	W11
	.byte		N12   , Fn2 , v116
	.byte	W12
	.byte		N11   , Dn3 , v100
	.byte	W11
	.byte	W01
@ 036   ----------------------------------------
	.byte		N09   , Fn2 , v116
	.byte	W09
	.byte	W03
	.byte		N40   , Cn2 , v120
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W11
	.byte	W01
	.byte		        Ds3 
	.byte	W11
	.byte	W01
	.byte		N04   , Gn2 , v127
	.byte	W04
	.byte	W08
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn2 , v108
	.byte	W12
	.byte		N13   , As2 , v116
	.byte	W12
@ 037   ----------------------------------------
	.byte		N05   , Gn2 
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N32   , Fn1 , v127, gtp2
	.byte	W12
	.byte		N10   , Cn2 , v108
	.byte	W10
	.byte	W02
	.byte		N13   , Gn2 , v120
	.byte	W10
	.byte	W02
	.byte		N05   , Fn2 , v127
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N36   , Gn1 
	.byte	W12
	.byte		N13   , Dn2 , v072
	.byte	W12
	.byte		N12   , Gn2 , v104
	.byte	W01
	.byte	W11
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
	.byte	PATT
	 .word	mus_high_hopes_2_018
	.byte	W10
	.byte	W01
	.byte		N11   , Gs2 , v076
	.byte	W11
	.byte	W13
	.byte		N23   , Gs1 , v127
	.byte		N11   , Fn2 , v092
	.byte	W11
	.byte	W01
	.byte		        Gs1 , v104
	.byte	W11
	.byte	W01
	.byte		N15   , Fn2 , v080
	.byte	W12
@ 047   ----------------------------------------
	.byte	W03
	.byte	W09
	.byte		N68   , Gn1 , v127, gtp3
	.byte	W12
	.byte		N10   , Dn2 , v092
	.byte	W10
	.byte	W02
	.byte		N18   
	.byte	W18
	.byte	W28
	.byte	W01
	.byte	W01
	.byte		N22   , Bn1 , v120
	.byte	W12
@ 048   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		N30   , Cn2 , v127, gtp1
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N06   , As1 
	.byte	W06
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W36
@ 049   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		N84   , Gn1 
	.byte	W84
@ 050   ----------------------------------------
	.byte	W11
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N32   , Fs2 
	.byte	W32
	.byte	W04
	.byte		N11   
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W05
	.byte	W01
	.byte		N30   
	.byte	W30
	.byte	W06
@ 051   ----------------------------------------
	.byte		N05   , Fs2 , v120
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		N28   , Gn2 , v127
	.byte	W28
	.byte	W04
	.byte		BEND  , c_v-64
	.byte	W04
	.byte		N11   , An2 
	.byte	W06
	.byte		BEND  , c_v-37
	.byte		        c_v+0
	.byte	W05
	.byte	W01
	.byte		N23   , Bn2 
	.byte	W21
	.byte		MOD   , 9
	.byte	W01
	.byte		        21
	.byte	W01
	.byte		        32
	.byte		        41
	.byte	W01
	.byte		        48
	.byte		N21   
	.byte	W01
	.byte		MOD   , 56
	.byte	W03
	.byte		        63
	.byte		        71
	.byte	W01
	.byte		        76
	.byte		        88
	.byte	W01
	.byte		        95
	.byte		        101
	.byte	W01
	.byte		        108
	.byte	W01
	.byte		        115
	.byte	W01
	.byte		        121
	.byte	W01
	.byte		        127
	.byte	W02
@ 052   ----------------------------------------
	.byte	W05
	.byte		        125
	.byte	W01
	.byte		        118
	.byte		        101
	.byte	W01
	.byte		        51
	.byte	W01
	.byte		        0
	.byte	W01
	.byte	W03
	.byte		N66   , An2 
	.byte	W44
	.byte	W01
	.byte		MOD   , 2
	.byte	W01
	.byte		        7
	.byte	W01
	.byte		        12
	.byte	W02
	.byte		        17
	.byte	W01
	.byte		        22
	.byte	W02
	.byte		        29
	.byte	W01
	.byte		        36
	.byte	W05
	.byte		        41
	.byte		PAN   , c_v+31
	.byte	W02
	.byte		N06   
	.byte	W02
	.byte		MOD   , 36
	.byte	W01
	.byte		        31
	.byte	W01
	.byte		        26
	.byte	W02
	.byte		N06   , Bn2 
	.byte	W03
	.byte		MOD   , 31
	.byte	W01
	.byte		        36
	.byte	W01
	.byte		        42
	.byte	W01
	.byte		        48
	.byte		N05   , Cn3 , v120
	.byte	W02
	.byte		MOD   , 32
	.byte		        0
	.byte	W03
	.byte	W01
	.byte		N05   , An2 , v116
	.byte	W05
	.byte	W01
@ 053   ----------------------------------------
	.byte		        Bn2 , v120
	.byte	W05
	.byte	W01
	.byte		        Gn2 , v116
	.byte	W05
	.byte	W01
	.byte		N40   , An2 , v127, gtp1
	.byte	W40
	.byte	W01
	.byte	W19
	.byte		N03   , An2 , v120
	.byte	W03
	.byte	W01
	.byte		N04   , Bn2 , v104
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		N03   , Gn2 
	.byte	W03
	.byte	W01
	.byte		N04   , An2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
@ 054   ----------------------------------------
	.byte		        Fn2 
	.byte	W04
	.byte		N03   , Gn2 
	.byte	W03
	.byte	W01
	.byte		N04   , Fn2 , v116
	.byte	W03
	.byte		PAN   , c_v-29
	.byte	W01
	.byte		N24   , En2 , v127, gtp2
	.byte	W24
	.byte	W02
	.byte	W04
	.byte		BEND  , c_v-64
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W05
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte	W01
	.byte		N24   , Fs2 , v096, gtp1
	.byte	W24
	.byte	W01
	.byte	W11
@ 055   ----------------------------------------
	.byte		N05   , Fs2 , v127
	.byte	W05
	.byte	W01
	.byte		N04   , Gn2 , v120
	.byte	W04
	.byte	W02
	.byte		N24   , Gn2 , v127, gtp1
	.byte	W24
	.byte	W01
	.byte		BEND  , c_v-27
	.byte	W01
	.byte		        c_v-64
	.byte	W10
	.byte		N10   , An2 , v120
	.byte	W06
	.byte		BEND  , c_v-26
	.byte		        c_v+0
	.byte	W04
	.byte	W02
	.byte		N21   , Bn2 , v127
	.byte	W21
	.byte	W03
	.byte		N19   
	.byte	W09
	.byte		MOD   , 4
	.byte	W01
	.byte		        9
	.byte	W01
	.byte		        14
	.byte	W01
@ 056   ----------------------------------------
	.byte		        21
	.byte	W02
	.byte		        27
	.byte	W01
	.byte		        32
	.byte	W02
	.byte		        39
	.byte	W01
	.byte		        48
	.byte	W01
	.byte		        54
	.byte	W02
	.byte		        0
	.byte	W03
	.byte		N32   , Bn2 , v127, gtp1
	.byte	W16
	.byte		MOD   , 7
	.byte	W01
	.byte		        19
	.byte		        27
	.byte	W01
	.byte		        37
	.byte		        46
	.byte	W01
	.byte		        51
	.byte	W01
	.byte		        59
	.byte		        64
	.byte	W01
	.byte		        71
	.byte	W01
	.byte		        78
	.byte	W03
	.byte		        84
	.byte	W02
	.byte		        91
	.byte	W03
	.byte		        86
	.byte	W01
	.byte		        79
	.byte		        68
	.byte	W01
	.byte		        0
	.byte	W01
	.byte	W03
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N48   , An2 
	.byte	W16
	.byte		MOD   , 1
	.byte	W01
	.byte		        6
	.byte	W01
	.byte		        11
	.byte	W02
	.byte		        16
	.byte	W01
	.byte		        22
	.byte	W02
	.byte		        31
	.byte	W01
	.byte		        37
	.byte	W01
	.byte		        42
	.byte	W02
	.byte		        0
	.byte	W09
@ 057   ----------------------------------------
	.byte	W11
	.byte		PAN   , c_v+31
	.byte	W01
	.byte		N08   , An2 , v120
	.byte	W08
	.byte	W01
	.byte		        Cn3 , v116
	.byte	W06
	.byte		        Bn2 , v120
	.byte	W02
	.byte	W04
	.byte		BEND  , c_v+46
	.byte		        c_v+29
	.byte		        c_v+8
	.byte		        c_v+55
	.byte		        c_v+52
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		N17   , Dn3 
	.byte	W17
	.byte	W01
	.byte		N04   , Cn3 , v108
	.byte	W03
	.byte		N03   , Bn2 , v116
	.byte	W01
	.byte	W02
	.byte		N24   , An2 , v120, gtp1
	.byte	W12
	.byte		MOD   , 4
	.byte	W03
	.byte		        11
	.byte		        21
	.byte		        31
	.byte		        39
	.byte		        46
	.byte		        53
	.byte	W03
	.byte		        58
	.byte		        64
	.byte		        69
	.byte		        78
	.byte	W03
	.byte		        84
	.byte		        93
	.byte		        101
	.byte		        111
	.byte		        123
	.byte	W03
	.byte		        127
	.byte		        120
	.byte		        79
	.byte		        0
	.byte	W01
	.byte	W11
@ 058   ----------------------------------------
	.byte	W11
	.byte		PAN   , c_v-29
	.byte	W01
	.byte		N24   , En2 , v127, gtp3
	.byte	W24
	.byte	W03
	.byte		BEND  , c_v-64
	.byte	W09
	.byte		N12   , Fs2 
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W06
	.byte		N28   , Fs2 , v120, gtp1
	.byte	W28
	.byte	W01
	.byte	W07
@ 059   ----------------------------------------
	.byte		N04   , Fs2 , v127
	.byte	W04
	.byte	W02
	.byte		        Gn2 
	.byte	W04
	.byte	W02
	.byte		N24   , Gn2 , v127, gtp3
	.byte	W24
	.byte	W03
	.byte		BEND  , c_v-64
	.byte	W09
	.byte		N12   , An2 , v120
	.byte	W06
	.byte		BEND  , c_v-55
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		N20   , Bn2 , v127
	.byte	W20
	.byte	W04
	.byte		N20   
	.byte	W12
@ 060   ----------------------------------------
	.byte	W08
	.byte	W04
	.byte		N36   , An2 
	.byte	W15
	.byte		MOD   , 2
	.byte	W01
	.byte		        7
	.byte	W01
	.byte		        14
	.byte		        19
	.byte	W01
	.byte		        24
	.byte	W01
	.byte		        31
	.byte		        39
	.byte	W01
	.byte		        49
	.byte	W01
	.byte		        58
	.byte	W01
	.byte		        63
	.byte		        69
	.byte	W01
	.byte		        74
	.byte	W09
	.byte		        68
	.byte		        61
	.byte	W01
	.byte		        54
	.byte		        44
	.byte	W01
	.byte		        31
	.byte	W01
	.byte		        16
	.byte		        1
	.byte		PAN   , c_v+31
	.byte	W01
	.byte		MOD   , 0
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N06   , Cn3 , v116
	.byte	W06
	.byte		N28   , Bn2 , v127, gtp1
	.byte	W28
	.byte	W01
	.byte	W07
@ 061   ----------------------------------------
	.byte		N06   , Gn2 , v120
	.byte	W06
	.byte		        Bn2 , v116
	.byte	W06
	.byte		N30   , An2 , v127
	.byte	W30
	.byte	W06
	.byte		N05   , Gn2 
	.byte	W05
	.byte	W01
	.byte		N04   , An2 , v120
	.byte	W04
	.byte	W02
	.byte		BEND  , c_v+2
	.byte		N32   , An2 , v127, gtp3
	.byte	W06
	.byte		BEND  , c_v+23
	.byte		        c_v+46
	.byte		        c_v+11
	.byte		        c_v+34
	.byte		        c_v+56
	.byte		        c_v+62
	.byte		        c_v+63
	.byte	W28
	.byte	W01
	.byte	W01
@ 062   ----------------------------------------
	.byte		        c_v+0
	.byte	W11
	.byte		PAN   , c_v-29
	.byte	W01
	.byte		N24   , En2 , v127, gtp1
	.byte	W24
	.byte	W01
	.byte	W05
	.byte		BEND  , c_v-64
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W05
	.byte	W01
	.byte		N24   , Fs2 , v120, gtp3
	.byte	W24
	.byte	W03
	.byte	W09
@ 063   ----------------------------------------
	.byte		N05   , Fs2 , v127
	.byte	W05
	.byte	W01
	.byte		N03   , Gn2 , v120
	.byte	W03
	.byte	W03
	.byte		N24   , Gn2 , v127
	.byte	W24
	.byte		BEND  , c_v-34
	.byte		        c_v-55
	.byte		        c_v-8
	.byte	W06
	.byte		        c_v-64
	.byte	W06
	.byte		N11   , An2 , v120
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		        c_v-5
	.byte	W05
	.byte	W01
	.byte		N20   , Bn2 , v127
	.byte	W20
	.byte	W04
	.byte		N19   
	.byte	W12
@ 064   ----------------------------------------
	.byte	W07
	.byte	W05
	.byte		N32   , Bn2 , v127, gtp2
	.byte	W06
	.byte		MOD   , 1
	.byte	W06
	.byte		        7
	.byte		        12
	.byte		        17
	.byte	W06
	.byte		        24
	.byte		        31
	.byte		        37
	.byte		        42
	.byte	W06
	.byte		        48
	.byte		        53
	.byte		        58
	.byte	W06
	.byte		        51
	.byte		        42
	.byte		        27
	.byte		        7
	.byte		        0
	.byte	W04
	.byte	W02
	.byte		N11   , Gn2 
	.byte	W11
	.byte	W01
	.byte		N30   , An2 , v120, gtp1
	.byte	W12
	.byte		MOD   , 4
	.byte		        9
	.byte	W06
	.byte		        17
	.byte		        26
	.byte		        32
	.byte		        39
	.byte		        46
	.byte		        54
	.byte		        59
	.byte	W06
	.byte		        66
	.byte		        58
	.byte		        53
	.byte	W06
	.byte		        46
	.byte		        37
	.byte		        22
	.byte		        0
	.byte	W01
	.byte	W05
@ 065   ----------------------------------------
	.byte	W11
	.byte		PAN   , c_v+31
	.byte	W01
	.byte		N10   , An2 , v127
	.byte	W08
	.byte		N08   , Gn2 , v120
	.byte	W02
	.byte	W06
	.byte		N07   , Fn2 
	.byte	W07
	.byte	W01
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		        Fn2 , v116
	.byte	W08
	.byte		N07   , Dn2 , v120
	.byte	W07
	.byte	W01
	.byte		        En2 
	.byte	W07
	.byte	W01
	.byte		N08   , Cn2 
	.byte	W08
	.byte		N07   , An1 , v127
	.byte	W07
	.byte	W01
	.byte		N19   , Gn1 
	.byte	W12
@ 066   ----------------------------------------
	.byte	W07
	.byte	W04
	.byte		VOL   , 100*mus_high_hopes_mvl/mxv
	.byte		PAN   , c_v-29
	.byte	W84
	.byte	W01
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
	.byte	PATT
	 .word	mus_high_hopes_2_030
	.byte	W01
	.byte		N11   , Ds3 , v116
	.byte	W11
	.byte	W01
	.byte		N08   , Gn2 
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N44   , Gn1 , v120, gtp1
	.byte	W12
	.byte		N11   , Dn2 , v116
	.byte	W11
	.byte	W01
	.byte		        As2 
	.byte	W11
	.byte	W01
@ 079   ----------------------------------------
	.byte		N06   , Dn2 
	.byte	W06
	.byte	W03
	.byte	W03
	.byte		N48   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N11   , Ds2 , v108
	.byte	W11
	.byte	W01
	.byte		N12   , Cn3 , v104
	.byte	W12
	.byte		N10   , Ds2 , v108
	.byte	W10
	.byte	W02
	.byte		N44   , As1 , v120, gtp1
	.byte	W01
	.byte	W11
	.byte		N12   , Fn2 , v116
	.byte	W12
	.byte		N11   , Dn3 , v100
	.byte	W11
	.byte	W01
@ 080   ----------------------------------------
	.byte		N09   , Fn2 , v116
	.byte	W09
	.byte	W03
	.byte		N40   , Cn2 , v120
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W11
	.byte	W01
	.byte		        Ds3 
	.byte	W11
	.byte	W01
	.byte		N04   , Gn2 , v127
	.byte	W04
	.byte	W08
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn2 , v108
	.byte	W12
	.byte		N13   , As2 , v116
	.byte	W12
@ 081   ----------------------------------------
	.byte		N05   , Gn2 
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N32   , Fn1 , v127, gtp2
	.byte	W12
	.byte		N10   , Cn2 , v108
	.byte	W10
	.byte	W02
	.byte		N13   , Gn2 , v120
	.byte	W10
	.byte	W02
	.byte		N05   , Gn1 , v127
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N42   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N13   , Ds2 , v072
	.byte	W12
	.byte		N12   , Cn3 , v104
	.byte	W01
	.byte	W11
@ 082   ----------------------------------------
	.byte		N07   , Ds2 , v116
	.byte	W07
	.byte	W05
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N11   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		        Ds3 , v116
	.byte	W11
	.byte	W01
	.byte		N08   , Gn2 
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N44   , Gn1 , v120, gtp1
	.byte	W12
	.byte		N11   , Dn2 , v116
	.byte	W11
	.byte	W01
	.byte		        As2 
	.byte	W11
	.byte	W01
@ 083   ----------------------------------------
	.byte		N06   , Dn2 
	.byte	W06
	.byte	W03
	.byte	W03
	.byte		N48   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N11   , Ds2 , v108
	.byte	W11
	.byte	W01
	.byte		N12   , Cn3 , v104
	.byte	W12
	.byte		N10   , Ds2 , v108
	.byte	W10
	.byte	W02
	.byte		N44   , As1 , v120, gtp1
	.byte	W01
	.byte	W11
	.byte		N12   , Fn2 , v116
	.byte	W12
	.byte		N11   , Dn3 , v100
	.byte	W11
	.byte	W01
@ 084   ----------------------------------------
	.byte		N09   , Fn2 , v116
	.byte	W09
	.byte	W03
	.byte		N40   , Cn2 , v120
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W11
	.byte	W01
	.byte		        Ds3 
	.byte	W11
	.byte	W01
	.byte		N04   , Gn2 , v127
	.byte	W04
	.byte	W08
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn2 , v108
	.byte	W12
	.byte		N13   , As2 , v116
	.byte	W12
@ 085   ----------------------------------------
	.byte		N05   , Gn2 
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N32   , Fn1 , v127, gtp2
	.byte	W12
	.byte		N10   , Cn2 , v108
	.byte	W10
	.byte	W02
	.byte		N13   , Gn2 , v120
	.byte	W10
	.byte	W02
	.byte		N05   , Gn1 , v127
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N42   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N13   , Ds2 , v072
	.byte	W12
	.byte		N12   , Cn3 , v104
	.byte	W01
	.byte	W11
@ 086   ----------------------------------------
	.byte		N07   , Ds2 , v116
	.byte	W07
	.byte	W05
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N11   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		        Ds3 , v116
	.byte	W11
	.byte	W01
	.byte		N08   , Gn2 
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N44   , Gn1 , v120, gtp1
	.byte	W12
	.byte		N11   , Dn2 , v116
	.byte	W11
	.byte	W01
	.byte		        As2 
	.byte	W11
	.byte	W01
@ 087   ----------------------------------------
	.byte		N06   , Dn2 
	.byte	W06
	.byte	W03
	.byte	W03
	.byte		N48   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N11   , Ds2 , v108
	.byte	W11
	.byte	W01
	.byte		N12   , Cn3 , v104
	.byte	W12
	.byte		N10   , Ds2 , v108
	.byte	W10
	.byte	W02
	.byte		N44   , As1 , v120, gtp1
	.byte	W01
	.byte	W11
	.byte		N12   , Fn2 , v116
	.byte	W12
	.byte		N11   , Dn3 , v100
	.byte	W11
	.byte	W01
@ 088   ----------------------------------------
	.byte		N09   , Fn2 , v116
	.byte	W09
	.byte	W03
	.byte		N40   , Cn2 , v120
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W11
	.byte	W01
	.byte		        Ds3 
	.byte	W11
	.byte	W01
	.byte		N04   , Gn2 , v127
	.byte	W04
	.byte	W08
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn2 , v108
	.byte	W12
	.byte		N13   , As2 , v116
	.byte	W12
@ 089   ----------------------------------------
	.byte		N05   , Gn2 
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N32   , Fn1 , v127, gtp2
	.byte	W12
	.byte		N10   , Cn2 , v108
	.byte	W10
	.byte	W02
	.byte		N13   , Gn2 , v120
	.byte	W10
	.byte	W02
	.byte		N05   , Gn1 , v127
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N42   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N13   , Ds2 , v072
	.byte	W12
	.byte		N12   , Cn3 , v104
	.byte	W01
	.byte	W11
@ 090   ----------------------------------------
	.byte		N07   , Ds2 , v116
	.byte	W07
	.byte	W05
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N11   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		        Ds3 , v116
	.byte	W11
	.byte	W01
	.byte		N08   , Gn2 
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N44   , Gn1 , v120, gtp1
	.byte	W12
	.byte		N11   , Dn2 , v116
	.byte	W11
	.byte	W01
	.byte		        As2 
	.byte	W11
	.byte	W01
@ 091   ----------------------------------------
	.byte		N06   , Dn2 
	.byte	W06
	.byte	W03
	.byte	W03
	.byte		N48   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N11   , Ds2 , v108
	.byte	W11
	.byte	W01
	.byte		N12   , Cn3 , v104
	.byte	W12
	.byte		N10   , Ds2 , v108
	.byte	W10
	.byte	W02
	.byte		N44   , As1 , v120, gtp1
	.byte	W01
	.byte	W11
	.byte		N12   , Fn2 , v116
	.byte	W12
	.byte		N11   , Dn3 , v100
	.byte	W11
	.byte	W01
@ 092   ----------------------------------------
	.byte		N09   , Fn2 , v116
	.byte	W09
	.byte	W03
	.byte		N40   , Cn2 , v120
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W11
	.byte	W01
	.byte		        Ds3 
	.byte	W11
	.byte	W01
	.byte		N04   , Gn2 , v127
	.byte	W04
	.byte	W08
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn2 , v108
	.byte	W12
	.byte		N13   , As2 , v116
	.byte	W12
@ 093   ----------------------------------------
	.byte		N05   , Gn2 
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N32   , Fn1 , v127, gtp2
	.byte	W12
	.byte		N10   , Cn2 , v108
	.byte	W10
	.byte	W02
	.byte		N13   , Gn2 , v120
	.byte	W10
	.byte	W02
	.byte		N05   , Gn1 , v127
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N42   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N13   , Ds2 , v072
	.byte	W12
	.byte		N12   , Cn3 , v104
	.byte	W01
	.byte	W11
@ 094   ----------------------------------------
	.byte		N07   , Ds2 , v116
	.byte	W07
	.byte	W05
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N11   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		        Ds3 , v116
	.byte	W11
	.byte	W01
	.byte		N08   , Gn2 
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N44   , Gn1 , v120, gtp1
	.byte	W12
	.byte		N11   , Dn2 , v116
	.byte	W11
	.byte	W01
	.byte		        As2 
	.byte	W11
	.byte	W01
@ 095   ----------------------------------------
	.byte		N06   , Dn2 
	.byte	W06
	.byte	W03
	.byte	W03
	.byte		N48   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N11   , Ds2 , v108
	.byte	W11
	.byte	W01
	.byte		N12   , Cn3 , v104
	.byte	W12
	.byte		N10   , Ds2 , v108
	.byte	W10
	.byte	W02
	.byte		N44   , As1 , v120, gtp1
	.byte	W01
	.byte	W11
	.byte		N12   , Fn2 , v116
	.byte	W12
	.byte		N11   , Dn3 , v100
	.byte	W11
	.byte	W01
@ 096   ----------------------------------------
	.byte		N09   , Fn2 , v116
	.byte	W09
	.byte	W03
	.byte		N40   , Cn2 , v120
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W11
	.byte	W01
	.byte		        Ds3 
	.byte	W11
	.byte	W01
	.byte		N04   , Gn2 , v127
	.byte	W04
	.byte	W08
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn2 , v108
	.byte	W12
	.byte		N13   , As2 , v116
	.byte	W12
@ 097   ----------------------------------------
	.byte		N05   , Gn2 
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N32   , Fn1 , v127, gtp2
	.byte	W12
	.byte		N10   , Cn2 , v108
	.byte	W10
	.byte	W02
	.byte		N13   , Gn2 , v120
	.byte	W10
	.byte	W02
	.byte		N05   , Gn1 , v127
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N42   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N13   , Ds2 , v072
	.byte	W12
	.byte		N12   , Cn3 , v104
	.byte	W01
	.byte	W11
@ 098   ----------------------------------------
	.byte		N07   , Ds2 , v116
	.byte	W07
	.byte	W05
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N11   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		        Ds3 , v116
	.byte	W11
	.byte	W01
	.byte		N08   , Gn2 
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N44   , Gn1 , v120, gtp1
	.byte	W12
	.byte		N11   , Dn2 , v116
	.byte	W11
	.byte	W01
	.byte		        As2 
	.byte	W11
	.byte	W01
@ 099   ----------------------------------------
	.byte		N06   , Dn2 
	.byte	W06
	.byte	W03
	.byte	W03
	.byte		N48   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N11   , Ds2 , v108
	.byte	W11
	.byte	W01
	.byte		N12   , Cn3 , v104
	.byte	W12
	.byte		N10   , Ds2 , v108
	.byte	W10
	.byte	W02
	.byte		N44   , As1 , v120, gtp1
	.byte	W01
	.byte	W11
	.byte		N12   , Fn2 , v116
	.byte	W12
	.byte		N11   , Dn3 , v100
	.byte	W11
	.byte	W01
@ 100   ----------------------------------------
	.byte		N09   , Fn2 , v116
	.byte	W09
	.byte	W03
	.byte		N40   , Cn2 , v120
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W11
	.byte	W01
	.byte		        Ds3 
	.byte	W11
	.byte	W01
	.byte		N04   , Gn2 , v127
	.byte	W04
	.byte	W08
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn2 , v108
	.byte	W12
	.byte		N13   , As2 , v116
	.byte	W12
@ 101   ----------------------------------------
	.byte		N05   , Gn2 
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N32   , Fn1 , v127, gtp2
	.byte	W12
	.byte		N10   , Cn2 , v108
	.byte	W10
	.byte	W02
	.byte		N13   , Gn2 , v120
	.byte	W10
	.byte	W02
	.byte		N05   , Gn1 , v127
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N42   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N13   , Ds2 , v072
	.byte	W12
	.byte		N12   , Cn3 , v104
	.byte	W01
	.byte	W11
@ 102   ----------------------------------------
	.byte		N07   , Ds2 , v116
	.byte	W07
	.byte	W05
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N11   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		        Ds3 , v116
	.byte	W11
	.byte	W01
	.byte		N08   , Gn2 
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N44   , Gn1 , v120, gtp1
	.byte	W12
	.byte		N11   , Dn2 , v116
	.byte	W11
	.byte	W01
	.byte		        As2 
	.byte	W11
	.byte	W01
@ 103   ----------------------------------------
	.byte		N06   , Dn2 
	.byte	W06
	.byte	W03
	.byte	W03
	.byte		N48   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N11   , Ds2 , v108
	.byte	W11
	.byte	W01
	.byte		N12   , Cn3 , v104
	.byte	W12
	.byte		N10   , Ds2 , v108
	.byte	W10
	.byte	W02
	.byte		N44   , As1 , v120, gtp1
	.byte	W01
	.byte	W11
	.byte		N12   , Fn2 , v116
	.byte	W12
	.byte		N11   , Dn3 , v100
	.byte	W11
	.byte	W01
@ 104   ----------------------------------------
	.byte		N09   , Fn2 , v116
	.byte	W09
	.byte	W03
	.byte		N40   , Cn2 , v120
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W11
	.byte	W01
	.byte		        Ds3 
	.byte	W11
	.byte	W01
	.byte		N04   , Gn2 , v127
	.byte	W04
	.byte	W08
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn2 , v108
	.byte	W12
	.byte		N13   , As2 , v116
	.byte	W12
@ 105   ----------------------------------------
	.byte		N05   , Gn2 
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N32   , Fn1 , v127, gtp2
	.byte	W12
	.byte		N10   , Cn2 , v108
	.byte	W10
	.byte	W02
	.byte		N13   , Gn2 , v120
	.byte	W10
	.byte	W02
	.byte		N05   , Gn1 , v127
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N42   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N13   , Ds2 , v072
	.byte	W12
	.byte		N12   , Cn3 , v104
	.byte	W01
	.byte	W11
@ 106   ----------------------------------------
	.byte		N07   , Ds2 , v116
	.byte	W07
	.byte	W05
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N11   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		        Ds3 , v116
	.byte	W11
	.byte	W01
	.byte		N08   , Gn2 
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N44   , Gn1 , v120, gtp1
	.byte	W12
	.byte		N11   , Dn2 , v116
	.byte	W11
	.byte	W01
	.byte		        As2 
	.byte	W11
	.byte	W01
@ 107   ----------------------------------------
	.byte		N06   , Dn2 
	.byte	W06
	.byte	W03
	.byte	W03
	.byte		N48   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N11   , Ds2 , v108
	.byte	W11
	.byte	W01
	.byte		N12   , Cn3 , v104
	.byte	W12
	.byte		N10   , Ds2 , v108
	.byte	W10
	.byte	W02
	.byte		N44   , As1 , v120, gtp1
	.byte	W01
	.byte	W11
	.byte		N12   , Fn2 , v116
	.byte	W12
	.byte		N11   , Dn3 , v100
	.byte	W11
	.byte	W01
@ 108   ----------------------------------------
	.byte		N09   , Fn2 , v116
	.byte	W09
	.byte	W03
	.byte		N40   , Cn2 , v120
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W11
	.byte	W01
	.byte		        Ds3 
	.byte	W11
	.byte	W01
	.byte		N04   , Gn2 , v127
	.byte	W04
	.byte	W08
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn2 , v108
	.byte	W12
	.byte		N13   , As2 , v116
	.byte	W12
@ 109   ----------------------------------------
	.byte		N05   , Gn2 
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N32   , Fn1 , v127, gtp2
	.byte	W12
	.byte		N10   , Cn2 , v108
	.byte	W10
	.byte	W02
	.byte		N13   , Gn2 , v120
	.byte	W10
	.byte	W02
	.byte		N05   , Gn1 , v127
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N42   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N13   , Ds2 , v072
	.byte	W12
	.byte		N12   , Cn3 , v104
	.byte	W01
	.byte	W11
@ 110   ----------------------------------------
	.byte		N07   , Ds2 , v116
	.byte	W07
	.byte	W05
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N11   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		        Ds3 , v116
	.byte	W11
	.byte	W01
	.byte		N08   , Gn2 
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N44   , Gn1 , v120, gtp1
	.byte	W12
	.byte		N11   , Dn2 , v116
	.byte	W11
	.byte	W01
	.byte		        As2 
	.byte	W11
	.byte	W01
@ 111   ----------------------------------------
	.byte		N06   , Dn2 
	.byte	W06
	.byte	W03
	.byte	W03
	.byte		N48   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N11   , Ds2 , v108
	.byte	W11
	.byte	W01
	.byte		N12   , Cn3 , v104
	.byte	W12
	.byte		N10   , Ds2 , v108
	.byte	W10
	.byte	W02
	.byte		N44   , As1 , v120, gtp1
	.byte	W01
	.byte	W11
	.byte		N12   , Fn2 , v116
	.byte	W12
	.byte		N11   , Dn3 , v100
	.byte	W11
	.byte	W01
@ 112   ----------------------------------------
	.byte		N09   , Fn2 , v116
	.byte	W09
	.byte	W03
	.byte		N40   , Cn2 , v120
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W11
	.byte	W01
	.byte		        Ds3 
	.byte	W11
	.byte	W01
	.byte		N04   , Gn2 , v127
	.byte	W04
	.byte	W08
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn2 , v108
	.byte	W12
	.byte		N13   , As2 , v116
	.byte	W12
@ 113   ----------------------------------------
	.byte		N05   , Gn2 
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N32   , Fn1 , v127, gtp2
	.byte	W12
	.byte		N10   , Cn2 , v108
	.byte	W10
	.byte	W02
	.byte		N13   , Gn2 , v120
	.byte	W10
	.byte	W02
	.byte		N05   , Gn1 , v127
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N42   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N13   , Ds2 , v072
	.byte	W12
	.byte		N12   , Cn3 , v104
	.byte	W01
	.byte	W11
@ 114   ----------------------------------------
	.byte		N07   , Ds2 , v116
	.byte	W07
	.byte	W05
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N11   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		        Ds3 , v116
	.byte	W11
	.byte	W01
	.byte		N08   , Gn2 
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N44   , Gn1 , v120, gtp1
	.byte	W12
	.byte		N11   , Dn2 , v116
	.byte	W11
	.byte	W01
	.byte		        As2 
	.byte	W11
	.byte	W01
@ 115   ----------------------------------------
	.byte		N06   , Dn2 
	.byte	W06
	.byte	W03
	.byte	W03
	.byte		N48   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N11   , Ds2 , v108
	.byte	W11
	.byte	W01
	.byte		N12   , Cn3 , v104
	.byte	W12
	.byte		N10   , Ds2 , v108
	.byte	W10
	.byte	W02
	.byte		N44   , As1 , v120, gtp1
	.byte	W01
	.byte	W11
	.byte		N12   , Fn2 , v116
	.byte	W12
	.byte		N11   , Dn3 , v100
	.byte	W11
	.byte	W01
@ 116   ----------------------------------------
	.byte		N09   , Fn2 , v116
	.byte	W09
	.byte	W03
	.byte		N40   , Cn2 , v120
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W11
	.byte	W01
	.byte		        Ds3 
	.byte	W11
	.byte	W01
	.byte		N04   , Gn2 , v127
	.byte	W04
	.byte	W08
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn2 , v108
	.byte	W12
	.byte		N13   , As2 , v116
	.byte	W12
@ 117   ----------------------------------------
	.byte		N05   , Gn2 
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N32   , Fn1 , v127, gtp2
	.byte	W12
	.byte		N10   , Cn2 , v108
	.byte	W10
	.byte	W02
	.byte		N13   , Gn2 , v120
	.byte	W10
	.byte	W02
	.byte		N05   , Gn1 , v127
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N42   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N13   , Ds2 , v072
	.byte	W12
	.byte		N12   , Cn3 , v104
	.byte	W01
	.byte	W11
@ 118   ----------------------------------------
	.byte		N07   , Ds2 , v116
	.byte	W07
	.byte	W05
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N11   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		        Ds3 , v116
	.byte	W11
	.byte	W01
	.byte		N08   , Gn2 
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N44   , Gn1 , v120, gtp1
	.byte	W12
	.byte		N11   , Dn2 , v116
	.byte	W11
	.byte	W01
	.byte		        As2 
	.byte	W11
	.byte	W01
@ 119   ----------------------------------------
	.byte		N06   , Dn2 
	.byte	W06
	.byte	W03
	.byte	W03
	.byte		N48   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N11   , Ds2 , v108
	.byte	W11
	.byte	W01
	.byte		N12   , Cn3 , v104
	.byte	W12
	.byte		N10   , Ds2 , v108
	.byte	W10
	.byte	W02
	.byte		N44   , As1 , v120, gtp1
	.byte	W01
	.byte	W11
	.byte		N12   , Fn2 , v116
	.byte	W12
	.byte		N11   , Dn3 , v100
	.byte	W11
	.byte	W01
@ 120   ----------------------------------------
	.byte		N09   , Fn2 , v116
	.byte	W09
	.byte	W03
	.byte		N40   , Cn2 , v120
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W11
	.byte	W01
	.byte		        Ds3 
	.byte	W11
	.byte	W01
	.byte		N04   , Gn2 , v127
	.byte	W04
	.byte	W08
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn2 , v108
	.byte	W12
	.byte		N13   , As2 , v116
	.byte	W12
@ 121   ----------------------------------------
	.byte		N05   , Gn2 
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N32   , Fn1 , v127, gtp2
	.byte	W12
	.byte		N10   , Cn2 , v108
	.byte	W10
	.byte	W02
	.byte		N13   , Gn2 , v120
	.byte	W10
	.byte	W02
	.byte		N05   , Gn1 , v127
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N42   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N13   , Ds2 , v072
	.byte	W12
	.byte		N12   , Cn3 , v104
	.byte	W01
	.byte	W11
@ 122   ----------------------------------------
	.byte		N07   , Ds2 , v116
	.byte	W07
	.byte	W05
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N11   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		        Ds3 , v116
	.byte	W11
	.byte	W01
	.byte		N08   , Gn2 
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N44   , Gn1 , v120, gtp1
	.byte	W12
	.byte		N11   , Dn2 , v116
	.byte	W11
	.byte	W01
	.byte		        As2 
	.byte	W11
	.byte	W01
@ 123   ----------------------------------------
	.byte		N06   , Dn2 
	.byte	W06
	.byte	W03
	.byte	W03
	.byte		N48   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N11   , Ds2 , v108
	.byte	W11
	.byte	W01
	.byte		N12   , Cn3 , v104
	.byte	W12
	.byte		N10   , Ds2 , v108
	.byte	W10
	.byte	W02
	.byte		N44   , As1 , v120, gtp1
	.byte	W01
	.byte	W11
	.byte		N12   , Fn2 , v116
	.byte	W12
	.byte		N11   , Dn3 , v100
	.byte	W11
	.byte	W01
@ 124   ----------------------------------------
	.byte		N09   , Fn2 , v116
	.byte	W09
	.byte	W03
	.byte		N40   , Cn2 , v120
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W11
	.byte	W01
	.byte		        Ds3 
	.byte	W11
	.byte	W01
	.byte		N04   , Gn2 , v127
	.byte	W04
	.byte	W08
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn2 , v108
	.byte	W12
	.byte		N13   , As2 , v116
	.byte	W12
@ 125   ----------------------------------------
	.byte		N05   , Gn2 
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N32   , Fn1 , v127, gtp2
	.byte	W12
	.byte		N10   , Cn2 , v108
	.byte	W10
	.byte	W02
	.byte		N13   , Gn2 , v120
	.byte	W10
	.byte	W02
	.byte		N05   , Gn1 , v127
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N42   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N13   , Ds2 , v072
	.byte	W12
	.byte		N12   , Cn3 , v104
	.byte	W01
	.byte	W11
@ 126   ----------------------------------------
	.byte		N07   , Ds2 , v116
	.byte	W07
	.byte	W05
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N11   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		        Ds3 , v116
	.byte	W11
	.byte	W01
	.byte		N08   , Gn2 
	.byte	W08
	.byte	W01
	.byte	W03
	.byte		N44   , Gn1 , v120, gtp1
	.byte	W12
	.byte		N11   , Dn2 , v116
	.byte	W11
	.byte	W01
	.byte		        As2 
	.byte	W11
	.byte	W01
@ 127   ----------------------------------------
	.byte		N06   , Dn2 
	.byte	W06
	.byte	W03
	.byte	W03
	.byte		N48   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N11   , Ds2 , v108
	.byte	W11
	.byte	W01
	.byte		N12   , Cn3 , v104
	.byte	W12
	.byte		N10   , Ds2 , v108
	.byte	W10
	.byte	W02
	.byte		N44   , As1 , v120, gtp1
	.byte	W01
	.byte	W11
	.byte		N12   , Fn2 , v116
	.byte	W12
	.byte		N11   , Dn3 , v100
	.byte	W11
	.byte	W01
@ 128   ----------------------------------------
	.byte		N09   , Fn2 , v116
	.byte	W09
	.byte	W03
	.byte		N40   , Cn2 , v120
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W11
	.byte	W01
	.byte		        Ds3 
	.byte	W11
	.byte	W01
	.byte		N04   , Gn2 , v127
	.byte	W04
	.byte	W08
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn2 , v108
	.byte	W12
	.byte		N13   , As2 , v116
	.byte	W12
@ 129   ----------------------------------------
	.byte		N05   , Gn2 
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N32   , Fn1 , v127, gtp2
	.byte	W12
	.byte		N10   , Cn2 , v108
	.byte	W10
	.byte	W02
	.byte		N13   , Gn2 , v120
	.byte	W10
	.byte	W02
	.byte		N05   , Gn1 , v127
	.byte	W01
	.byte	W04
	.byte	W07
	.byte		N42   , Gs1 , v127, gtp1
	.byte	W12
	.byte		N13   , Ds2 , v072
	.byte	W12
	.byte		N12   , Cn3 , v104
	.byte	W01
	.byte	W11
@ 130   ----------------------------------------
	.byte		N07   , Ds2 , v116
	.byte	W07
	.byte	W05
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W09
	.byte		VOL   , 99*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N11   , Gn2 , v108
	.byte	W04
	.byte		VOL   , 98*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte	W01
	.byte		        97*mus_high_hopes_mvl/mxv
	.byte		N11   , Ds3 , v116
	.byte	W07
	.byte		VOL   , 96*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte	W01
	.byte		N08   , Gn2 
	.byte	W03
	.byte		VOL   , 95*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte	W01
	.byte	W01
	.byte		        94*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		N44   , Gn1 , v120, gtp1
	.byte	W06
	.byte		VOL   , 93*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		N11   , Dn2 , v116
	.byte	W01
	.byte		VOL   , 92*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        91*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W01
	.byte		N11   , As2 
	.byte	W04
	.byte		VOL   , 90*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte	W01
@ 131   ----------------------------------------
	.byte		        89*mus_high_hopes_mvl/mxv
	.byte		N06   , Dn2 
	.byte	W06
	.byte	W01
	.byte		VOL   , 88*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W03
	.byte		N48   , Gs1 , v127, gtp1
	.byte	W04
	.byte		VOL   , 87*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        86*mus_high_hopes_mvl/mxv
	.byte		N11   , Ds2 , v108
	.byte	W07
	.byte		VOL   , 85*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte	W01
	.byte		N12   , Cn3 , v104
	.byte	W03
	.byte		VOL   , 84*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        83*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		N10   , Ds2 , v108
	.byte	W06
	.byte		VOL   , 82*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte	W02
	.byte		N44   , As1 , v120, gtp1
	.byte	W01
	.byte		VOL   , 81*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        80*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N12   , Fn2 , v116
	.byte	W04
	.byte		VOL   , 79*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        78*mus_high_hopes_mvl/mxv
	.byte		N11   , Dn3 , v100
	.byte	W07
	.byte		VOL   , 77*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte	W01
@ 132   ----------------------------------------
	.byte		N09   , Fn2 , v116
	.byte	W03
	.byte		VOL   , 76*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte	W01
	.byte		        75*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		N40   , Cn2 , v120
	.byte	W06
	.byte		VOL   , 74*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		N11   , Gn2 
	.byte	W01
	.byte		VOL   , 73*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        72*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		N11   , Ds3 
	.byte	W06
	.byte		VOL   , 71*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte	W01
	.byte		N04   , Gn2 , v127
	.byte	W01
	.byte		VOL   , 70*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte	W05
	.byte		        69*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N12   , Fn2 
	.byte	W04
	.byte		VOL   , 68*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        67*mus_high_hopes_mvl/mxv
	.byte		N12   , Gn2 , v108
	.byte	W07
	.byte		VOL   , 66*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte		N13   , As2 , v116
	.byte	W03
	.byte		VOL   , 65*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        64*mus_high_hopes_mvl/mxv
	.byte	W02
@ 133   ----------------------------------------
	.byte		N05   , Gn2 
	.byte	W01
	.byte	W04
	.byte	W01
	.byte		VOL   , 63*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		N32   , Fn1 , v127, gtp2
	.byte	W01
	.byte		VOL   , 62*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        61*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N10   , Cn2 , v108
	.byte	W06
	.byte		VOL   , 60*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte	W02
	.byte		N13   , Gn2 , v120
	.byte	W01
	.byte		VOL   , 59*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        58*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W02
	.byte		N05   , Gn1 , v127
	.byte	W01
	.byte	W03
	.byte		VOL   , 57*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W07
	.byte		        56*mus_high_hopes_mvl/mxv
	.byte		N42   , Gs1 , v127, gtp1
	.byte	W07
	.byte		VOL   , 55*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte		N13   , Ds2 , v072
	.byte	W03
	.byte		VOL   , 54*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        53*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		N12   , Cn3 , v104
	.byte	W01
	.byte	W05
	.byte		VOL   , 52*mus_high_hopes_mvl/mxv
	.byte	W06
@ 134   ----------------------------------------
	.byte		N07   , Ds2 , v116
	.byte	W01
	.byte		VOL   , 51*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte	W02
	.byte		        50*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W05
	.byte		VOL   , 49*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        48*mus_high_hopes_mvl/mxv
	.byte		N11   , Gn2 , v108
	.byte	W08
	.byte		VOL   , 47*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte	W01
	.byte		N11   , Ds3 , v116
	.byte	W03
	.byte		VOL   , 46*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte	W01
	.byte		        45*mus_high_hopes_mvl/mxv
	.byte		N08   , Gn2 
	.byte	W08
	.byte		VOL   , 44*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W03
	.byte		N44   , Gn1 , v120, gtp1
	.byte	W03
	.byte		VOL   , 43*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        42*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		N11   , Dn2 , v116
	.byte	W06
	.byte		VOL   , 41*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte	W01
	.byte		N11   , As2 
	.byte	W02
	.byte		VOL   , 40*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        39*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W01
@ 135   ----------------------------------------
	.byte		N06   , Dn2 
	.byte	W05
	.byte		VOL   , 38*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W03
	.byte	W03
	.byte		        37*mus_high_hopes_mvl/mxv
	.byte		N48   , Gs1 , v127, gtp1
	.byte	W08
	.byte		VOL   , 36*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		N11   , Ds2 , v108
	.byte	W03
	.byte		VOL   , 35*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        34*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		N12   , Cn3 , v104
	.byte	W08
	.byte		VOL   , 33*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		N10   , Ds2 , v108
	.byte	W03
	.byte		VOL   , 32*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte	W01
	.byte		        31*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		N44   , As1 , v120, gtp1
	.byte	W01
	.byte	W05
	.byte		VOL   , 30*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		N12   , Fn2 , v116
	.byte	W02
	.byte		VOL   , 29*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        28*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N11   , Dn3 , v100
	.byte	W05
	.byte		VOL   , 27*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte	W01
@ 136   ----------------------------------------
	.byte		        26*mus_high_hopes_mvl/mxv
	.byte		N09   , Fn2 , v116
	.byte	W08
	.byte		VOL   , 25*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W03
	.byte		N40   , Cn2 , v120
	.byte	W03
	.byte		VOL   , 24*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        23*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		N11   , Gn2 
	.byte	W06
	.byte		VOL   , 22*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte	W01
	.byte		N11   , Ds3 
	.byte	W02
	.byte		VOL   , 21*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        20*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W01
	.byte		N04   , Gn2 , v127
	.byte	W04
	.byte	W01
	.byte		VOL   , 19*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		N12   , Fn2 
	.byte	W02
	.byte		VOL   , 18*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        17*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N12   , Gn2 , v108
	.byte	W05
	.byte		VOL   , 16*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        15*mus_high_hopes_mvl/mxv
	.byte		N13   , As2 , v116
	.byte	W08
	.byte		VOL   , 14*mus_high_hopes_mvl/mxv
	.byte	W04
@ 137   ----------------------------------------
	.byte		N05   , Gn2 
	.byte	W01
	.byte	W02
	.byte		VOL   , 13*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W06
	.byte		        12*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		N32   , Fn1 , v127, gtp2
	.byte	W06
	.byte		VOL   , 11*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		N10   , Cn2 , v108
	.byte	W02
	.byte		VOL   , 10*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        9*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W02
	.byte		N13   , Gn2 , v120
	.byte	W05
	.byte		VOL   , 8*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte	W02
	.byte		        7*mus_high_hopes_mvl/mxv
	.byte		N05   , Gn1 , v127
	.byte	W01
	.byte	W04
	.byte	W04
	.byte		VOL   , 6*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N42   , Gs1 , v127, gtp1
	.byte	W05
	.byte		VOL   , 5*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        4*mus_high_hopes_mvl/mxv
	.byte		N13   , Ds2 , v072
	.byte	W08
	.byte		VOL   , 3*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		N12   , Cn3 , v104
	.byte	W01
	.byte	W02
	.byte		VOL   , 2*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        1*mus_high_hopes_mvl/mxv
	.byte	W01
@ 138   ----------------------------------------
	.byte		N07   , Ds2 , v116
	.byte	W06
	.byte		VOL   , 0*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_high_hopes_3:
	.byte	KEYSH , mus_high_hopes_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 14
	.byte		VOL   , 60*mus_high_hopes_mvl/mxv
	.byte		N40   , Cn3 , v108
	.byte		N40   , Cn4 
	.byte	W40
	.byte	W08
	.byte		        Cn3 , v116, gtp1
	.byte		N40   , Cn4 , v116, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 001   ----------------------------------------
	.byte		N36   , Cn3 , v108, gtp2
	.byte		N36   , Cn4 , v108, gtp2
	.byte	W36
	.byte	W02
	.byte	W10
	.byte		        Cn3 , v116, gtp3
	.byte		N36   , Cn4 , v116, gtp3
	.byte	W36
	.byte	W03
	.byte	W09
@ 002   ----------------------------------------
mus_high_hopes_3_002:
	.byte		N40   , Cn3 , v116, gtp1
	.byte		N40   , Cn4 , v116, gtp1
	.byte	W40
	.byte	W01
	.byte	PEND
	.byte	W07
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 003   ----------------------------------------
mus_high_hopes_3_003:
	.byte		N42   , Cn3 , v116, gtp1
	.byte		N42   , Cn4 , v116, gtp1
	.byte	W42
	.byte	W01
	.byte	PEND
	.byte	W05
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_002
	.byte	W07
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_003
	.byte	W05
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_002
	.byte	W07
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_003
	.byte	W05
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_002
	.byte	W07
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_003
	.byte	W05
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_002
	.byte	W07
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_003
	.byte	W05
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_002
	.byte	W07
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_003
	.byte	W05
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_002
	.byte	W07
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_003
	.byte	W05
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_002
	.byte	W07
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_003
	.byte	W05
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 018   ----------------------------------------
mus_high_hopes_3_018:
	.byte	W48
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	PEND
	.byte	W06
@ 019   ----------------------------------------
mus_high_hopes_3_019:
	.byte		N12   , Cn3 , v116
	.byte		N42   , Cn4 , v116, gtp1
	.byte	W12
	.byte	PEND
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		        Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 020   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_002
	.byte	W07
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_003
	.byte	W05
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_002
	.byte	W07
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_003
	.byte	W05
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_002
	.byte	W07
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_003
	.byte	W05
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_002
	.byte	W07
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_003
	.byte	W05
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_018
	.byte	W06
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 032   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 034   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 036   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_002
	.byte	W07
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_003
	.byte	W05
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_002
	.byte	W07
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_003
	.byte	W05
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_002
	.byte	W07
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_003
	.byte	W05
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_002
	.byte	W07
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_003
	.byte	W05
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_018
	.byte	W06
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 048   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
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
	.byte	W48
	.byte		N40   , Cn3 , v116, gtp1
	.byte		N40   , Cn4 , v116, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 067   ----------------------------------------
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
	.byte		        Cn3 , v116, gtp1
	.byte		N42   , Cn4 , v116, gtp1
	.byte	W42
	.byte	W01
	.byte	W05
@ 068   ----------------------------------------
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
	.byte		        Cn3 , v116, gtp1
	.byte		N40   , Cn4 , v116, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 069   ----------------------------------------
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
	.byte		        Cn3 , v116, gtp1
	.byte		N42   , Cn4 , v116, gtp1
	.byte	W42
	.byte	W01
	.byte	W05
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_002
	.byte	W07
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_003
	.byte	W05
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_002
	.byte	W07
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_003
	.byte	W05
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_002
	.byte	W07
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_003
	.byte	W05
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_002
	.byte	W07
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_003
	.byte	W05
	.byte		N40   , Cn3 , v108, gtp1
	.byte		N40   , Cn4 , v108, gtp1
	.byte	W40
	.byte	W01
	.byte	W07
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_018
	.byte	W06
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 080   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 082   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 084   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 086   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 088   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 090   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 092   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 094   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 096   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 098   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 100   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 102   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 104   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 106   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 108   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 110   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 112   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 114   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 116   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 118   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 120   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 122   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 124   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 126   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 128   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 130   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 132   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 134   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 136   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W36
	.byte	W01
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_3_019
	.byte	W30
	.byte	W01
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W42
	.byte	W06
@ 138   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte	W11
	.byte		VOL   , 57*mus_high_hopes_mvl/mxv
	.byte	W24
	.byte	W02
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W02
	.byte		VOL   , 56*mus_high_hopes_mvl/mxv
	.byte	W10
	.byte		        55*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        54*mus_high_hopes_mvl/mxv
	.byte	W10
	.byte		        53*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        52*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W06
@ 139   ----------------------------------------
	.byte		N12   , Cn3 , v116
	.byte		N42   , Cn4 , v116, gtp1
	.byte	W02
	.byte		VOL   , 51*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        50*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W09
	.byte		        49*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        48*mus_high_hopes_mvl/mxv
	.byte	W11
	.byte		        47*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W05
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W02
	.byte		VOL   , 46*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        45*mus_high_hopes_mvl/mxv
	.byte	W10
	.byte		        44*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        43*mus_high_hopes_mvl/mxv
	.byte	W10
	.byte		        42*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W06
@ 140   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W01
	.byte		VOL   , 41*mus_high_hopes_mvl/mxv
	.byte	W10
	.byte		        40*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        37*mus_high_hopes_mvl/mxv
	.byte	W28
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W01
	.byte		VOL   , 36*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        35*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        34*mus_high_hopes_mvl/mxv
	.byte	W10
	.byte		        33*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        32*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte	W06
@ 141   ----------------------------------------
	.byte		N12   , Cn3 , v116
	.byte		N42   , Cn4 , v116, gtp1
	.byte	W01
	.byte		VOL   , 31*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        30*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W08
	.byte		        29*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        28*mus_high_hopes_mvl/mxv
	.byte	W10
	.byte		        27*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte	W05
	.byte		        26*mus_high_hopes_mvl/mxv
	.byte		N42   , Cn3 , v120
	.byte		N42   , Cn4 
	.byte	W10
	.byte		VOL   , 25*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        24*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        23*mus_high_hopes_mvl/mxv
	.byte	W10
	.byte		        22*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte	W05
	.byte		        21*mus_high_hopes_mvl/mxv
	.byte	W01
@ 142   ----------------------------------------
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W09
	.byte		VOL   , 20*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W07
	.byte		        17*mus_high_hopes_mvl/mxv
	.byte	W30
	.byte		        16*mus_high_hopes_mvl/mxv
	.byte		N42   , Cn3 , v127
	.byte		N42   , Cn4 
	.byte	W09
	.byte		VOL   , 15*mus_high_hopes_mvl/mxv
	.byte	W10
	.byte		        14*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        13*mus_high_hopes_mvl/mxv
	.byte	W10
	.byte		        12*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte	W05
	.byte		        11*mus_high_hopes_mvl/mxv
	.byte	W01
@ 143   ----------------------------------------
	.byte		N92   , Cn3 , v116, gtp3
	.byte		N12   , Cn4 
	.byte	W09
	.byte		VOL   , 10*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte	W06
	.byte		        9*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        8*mus_high_hopes_mvl/mxv
	.byte	W10
	.byte		        7*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        6*mus_high_hopes_mvl/mxv
	.byte	W10
	.byte		        5*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        4*mus_high_hopes_mvl/mxv
	.byte	W10
	.byte		        3*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        2*mus_high_hopes_mvl/mxv
	.byte	W11
	.byte		        1*mus_high_hopes_mvl/mxv
	.byte	FINE

@**************** Track 4 (Midi-Chn.5) ****************@

mus_high_hopes_4:
	.byte	KEYSH , mus_high_hopes_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 98*mus_high_hopes_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
mus_high_hopes_4_002:
	.byte	W12
	.byte		N13   , Cn5 , v108
	.byte		N13   , Gn5 , v127
	.byte	W13
	.byte	PEND
	.byte	W11
	.byte		N16   , Cn5 , v108
	.byte		N17   , Gn5 , v104
	.byte	W16
	.byte	W02
	.byte	W06
	.byte		N15   , Ds5 , v092
	.byte		N16   , As5 , v108
	.byte	W15
	.byte	W02
	.byte	W07
	.byte		N12   , Ds5 , v092
	.byte		N12   , As5 , v116
	.byte	W12
@ 003   ----------------------------------------
mus_high_hopes_4_003:
	.byte	W12
	.byte		N14   , Gs4 , v100
	.byte		N14   , Ds5 , v116
	.byte	W14
	.byte	PEND
	.byte	W10
	.byte		N48   , Gs4 , v100, gtp3
	.byte		N48   , Ds5 , v120, gtp2
	.byte	W48
	.byte	W03
	.byte	W09
@ 004   ----------------------------------------
	.byte		VOL   , 100*mus_high_hopes_mvl/mxv
	.byte	W12
	.byte		N13   , Cn5 , v108
	.byte		N13   , Gn5 , v127
	.byte	W05
	.byte		VOL   , 101*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte	W10
	.byte		        102*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		N16   , Cn5 , v108
	.byte		N17   , Gn5 , v104
	.byte	W16
	.byte	W01
	.byte		VOL   , 103*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W06
	.byte		N15   , Ds5 , v092
	.byte		N16   , As5 , v108
	.byte	W11
	.byte		VOL   , 104*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte	W02
	.byte	W07
	.byte		N12   , Ds5 , v092
	.byte		N12   , As5 , v116
	.byte	W04
	.byte		VOL   , 105*mus_high_hopes_mvl/mxv
	.byte	W08
@ 005   ----------------------------------------
	.byte	W10
	.byte		        106*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		N14   , Gs4 , v100
	.byte		N14   , Ds5 , v116
	.byte	W14
	.byte	W01
	.byte		VOL   , 107*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		N48   , Gs4 , v100, gtp3
	.byte		N48   , Ds5 , v120, gtp2
	.byte	W09
	.byte		VOL   , 108*mus_high_hopes_mvl/mxv
	.byte	W18
	.byte		        109*mus_high_hopes_mvl/mxv
	.byte	W17
	.byte		        110*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte	W09
@ 006   ----------------------------------------
	.byte	W02
	.byte		        111*mus_high_hopes_mvl/mxv
	.byte	W10
	.byte		N13   , Cn5 , v108
	.byte		N13   , Gn5 , v127
	.byte	W08
	.byte		VOL   , 112*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte	W11
	.byte		N16   , Cn5 , v108
	.byte		N17   , Gn5 , v104
	.byte	W02
	.byte		VOL   , 113*mus_high_hopes_mvl/mxv
	.byte	W14
	.byte	W02
	.byte	W01
	.byte		        114*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte		N15   , Ds5 , v092
	.byte		N16   , As5 , v108
	.byte	W12
	.byte		VOL   , 115*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte	W02
	.byte	W07
	.byte		N12   , Ds5 , v092
	.byte		N12   , As5 , v116
	.byte	W06
	.byte		VOL   , 116*mus_high_hopes_mvl/mxv
	.byte	W06
@ 007   ----------------------------------------
	.byte	W12
	.byte		        117*mus_high_hopes_mvl/mxv
	.byte		N14   , Gs4 , v100
	.byte		N14   , Ds5 , v116
	.byte	W14
	.byte	W04
	.byte		VOL   , 118*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		N48   , Gs4 , v100, gtp3
	.byte		N48   , Ds5 , v120, gtp2
	.byte	W12
	.byte		VOL   , 119*mus_high_hopes_mvl/mxv
	.byte	W17
	.byte		        120*mus_high_hopes_mvl/mxv
	.byte	W17
	.byte		        121*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte	W09
@ 008   ----------------------------------------
	.byte	W04
	.byte		        122*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		N13   , Cn5 , v108
	.byte		N13   , Gn5 , v127
	.byte	W10
	.byte		VOL   , 123*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte	W11
	.byte		N16   , Cn5 , v108
	.byte		N17   , Gn5 , v104
	.byte	W04
	.byte		VOL   , 124*mus_high_hopes_mvl/mxv
	.byte	W12
	.byte	W02
	.byte	W03
	.byte		        125*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N15   , Ds5 , v092
	.byte		N16   , As5 , v108
	.byte	W15
	.byte		VOL   , 126*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W07
	.byte		N12   , Ds5 , v092
	.byte		N12   , As5 , v116
	.byte	W08
	.byte		VOL   , 127*mus_high_hopes_mvl/mxv
	.byte	W04
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_003
	.byte	W10
	.byte		N48   , Gs4 , v100, gtp3
	.byte		N48   , Ds5 , v120, gtp2
	.byte	W48
	.byte	W03
	.byte	W09
@ 010   ----------------------------------------
	.byte		VOL   , 100*mus_high_hopes_mvl/mxv
	.byte	W12
	.byte		N36   , Cn2 , v127, gtp1
	.byte		N21   , Gn3 , v108
	.byte	W21
	.byte	W03
	.byte		N19   , Cn3 , v116
	.byte		N20   , Gn3 , v108
	.byte	W12
	.byte		N12   , Cn1 , v100
	.byte	W01
	.byte	W06
	.byte	W01
	.byte	W04
	.byte		N36   , Cn2 , v116, gtp1
	.byte		N20   , As3 , v100
	.byte	W20
	.byte	W04
	.byte		N18   , Ds3 
	.byte		N18   , As3 , v104
	.byte	W12
@ 011   ----------------------------------------
	.byte		N11   , Cn1 , v100
	.byte	W01
	.byte	W05
	.byte	W05
	.byte	W01
	.byte		N32   , Cn2 , v116, gtp3
	.byte		N21   , Ds3 , v100
	.byte	W21
	.byte	W03
	.byte		N60   , Gs2 , v104
	.byte		N60   , Ds3 , v108
	.byte	W11
	.byte	W01
	.byte		N48   , Cn2 
	.byte	W48
@ 012   ----------------------------------------
mus_high_hopes_4_012:
	.byte		N24   , Cn2 , v116, gtp1
	.byte	W12
	.byte		N13   , Cn2 , v127
	.byte		N21   , Gn3 , v108
	.byte	W13
	.byte	PEND
	.byte	W08
	.byte	W03
	.byte		N19   , Cn3 , v116
	.byte		N20   , Gn3 , v108
	.byte	W12
	.byte		N12   , Cn1 , v100
	.byte	W07
	.byte	W01
	.byte	W04
	.byte		N36   , Cn2 , v116, gtp1
	.byte		N20   , As3 , v100
	.byte	W20
	.byte	W04
	.byte		N18   , Ds3 
	.byte		N18   , As3 , v104
	.byte	W12
@ 013   ----------------------------------------
	.byte		N11   , Cn1 , v100
	.byte	W01
	.byte	W05
	.byte	W05
	.byte	W01
	.byte		N32   , Cn2 , v116, gtp3
	.byte		N21   , Ds3 , v100
	.byte	W21
	.byte	W03
	.byte		N60   , Gs2 , v104
	.byte		N60   , Ds3 , v108
	.byte	W11
	.byte	W01
	.byte		N48   , Cn2 
	.byte	W48
@ 014   ----------------------------------------
mus_high_hopes_4_014:
	.byte	W12
	.byte		N36   , Cn2 , v127, gtp1
	.byte		N21   , Gn3 , v108
	.byte	W21
	.byte	PEND
	.byte	W03
	.byte		N19   , Cn3 , v116
	.byte		N20   , Gn3 , v108
	.byte	W12
	.byte		N12   , Cn1 , v100
	.byte	W01
	.byte	W06
	.byte	W01
	.byte	W04
	.byte		N36   , Cn2 , v116, gtp1
	.byte		N20   , As3 , v100
	.byte	W20
	.byte	W04
	.byte		N18   , Ds3 
	.byte		N18   , As3 , v104
	.byte	W12
@ 015   ----------------------------------------
	.byte		N11   , Cn1 , v100
	.byte	W01
	.byte	W05
	.byte	W05
	.byte	W01
	.byte		N32   , Cn2 , v116, gtp3
	.byte		N21   , Ds3 , v100
	.byte	W21
	.byte	W03
	.byte		N60   , Gs2 , v104
	.byte		N60   , Ds3 , v108
	.byte	W11
	.byte	W01
	.byte		N48   , Cn2 
	.byte	W48
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_012
	.byte	W08
	.byte	W03
	.byte		N19   , Cn3 , v116
	.byte		N20   , Gn3 , v108
	.byte	W12
	.byte		N12   , Cn1 , v100
	.byte	W07
	.byte	W01
	.byte	W04
	.byte		N36   , Cn2 , v116, gtp1
	.byte		N20   , As3 , v100
	.byte	W20
	.byte	W04
	.byte		N18   , Ds3 
	.byte		N18   , As3 , v104
	.byte	W12
@ 017   ----------------------------------------
	.byte		N11   , Cn1 , v100
	.byte	W01
	.byte	W05
	.byte	W05
	.byte	W01
	.byte		N32   , Cn2 , v116, gtp3
	.byte		N21   , Ds3 , v100
	.byte	W21
	.byte	W03
	.byte		N60   , Gs2 , v104
	.byte		N60   , Ds3 , v108
	.byte	W11
	.byte	W01
	.byte		N48   , Cn2 
	.byte	W48
@ 018   ----------------------------------------
mus_high_hopes_4_018:
	.byte	W12
	.byte		N22   , Gn2 , v096
	.byte		N19   , Ds3 , v056
	.byte	W19
	.byte	PEND
	.byte	W03
	.byte	W02
	.byte		N24   , Gs2 , v096
	.byte		N20   , Ds3 , v108
	.byte	W20
	.byte	W04
	.byte		N19   , Fn2 , v092
	.byte		N19   , Dn3 , v076
	.byte	W19
	.byte	W05
	.byte		N23   , Fn2 , v116
	.byte		N18   , Dn3 
	.byte	W12
@ 019   ----------------------------------------
	.byte	W06
	.byte	W05
	.byte	W01
	.byte		N21   , Gn2 , v092
	.byte		N17   , Cn3 , v088
	.byte	W17
	.byte	W04
	.byte	W03
	.byte		N24   , Dn2 , v116
	.byte		N17   , Cn3 , v120
	.byte	W17
	.byte	W07
	.byte		N01   , Dn2 , v100
	.byte		N17   , Bn2 , v096
	.byte	W17
	.byte	W07
	.byte		N21   , Gn2 , v104
	.byte		N22   , Gn3 , v127
	.byte	W12
@ 020   ----------------------------------------
	.byte	W06
	.byte	W03
	.byte	W01
	.byte	W02
	.byte		N21   , Gn2 , v108
	.byte		N15   , Ds3 , v100
	.byte	W15
	.byte	W06
	.byte	W03
	.byte		N24   , Gs2 
	.byte		N17   , Ds3 , v120
	.byte	W17
	.byte	W07
	.byte		N19   , Fn2 , v104
	.byte		N17   , Dn3 , v076
	.byte	W17
	.byte	W02
	.byte	W05
	.byte		N24   , Fn2 , v127
	.byte		N17   , Dn3 
	.byte	W12
@ 021   ----------------------------------------
	.byte	W05
	.byte	W07
	.byte		N23   , Gn2 , v108
	.byte		N17   , Cn3 , v096
	.byte	W17
	.byte	W06
	.byte	W01
	.byte		N24   , Dn2 , v108
	.byte		N16   , Cn3 
	.byte	W16
	.byte	W08
	.byte		N36   , Fn2 , v127
	.byte		N28   , Bn2 , v116
	.byte	W28
	.byte	W08
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_014
	.byte	W03
	.byte		N19   , Cn3 , v116
	.byte		N20   , Gn3 , v108
	.byte	W12
	.byte		N12   , Cn1 , v116
	.byte	W01
	.byte	W06
	.byte	W01
	.byte	W04
	.byte		N36   , Cn2 , v116, gtp1
	.byte		N20   , As3 , v100
	.byte	W20
	.byte	W04
	.byte		N18   , Ds3 
	.byte		N18   , As3 , v104
	.byte	W12
@ 023   ----------------------------------------
	.byte		N11   , Cn1 , v116
	.byte	W01
	.byte	W05
	.byte	W05
	.byte	W01
	.byte		N32   , Cn2 , v116, gtp3
	.byte		N21   , Ds3 , v100
	.byte	W21
	.byte	W03
	.byte		N60   , Gs2 , v104
	.byte		N60   , Ds3 , v108
	.byte	W11
	.byte	W01
	.byte		N48   , Cn2 
	.byte	W48
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_012
	.byte	W08
	.byte	W03
	.byte		N19   , Cn3 , v116
	.byte		N20   , Gn3 , v108
	.byte	W12
	.byte		N12   , Cn1 , v116
	.byte	W07
	.byte	W01
	.byte	W04
	.byte		N36   , Cn2 , v116, gtp1
	.byte		N20   , As3 , v100
	.byte	W20
	.byte	W04
	.byte		N18   , Ds3 
	.byte		N18   , As3 , v104
	.byte	W12
@ 025   ----------------------------------------
	.byte		N11   , Cn1 , v116
	.byte	W01
	.byte	W05
	.byte	W05
	.byte	W01
	.byte		N32   , Cn2 , v116, gtp3
	.byte		N21   , Ds3 , v100
	.byte	W21
	.byte	W03
	.byte		N60   , Gs2 , v104
	.byte		N60   , Ds3 , v108
	.byte	W11
	.byte	W01
	.byte		N48   , Cn2 
	.byte	W48
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_014
	.byte	W03
	.byte		N19   , Cn3 , v116
	.byte		N20   , Gn3 , v108
	.byte	W12
	.byte		N12   , Cn1 , v116
	.byte	W01
	.byte	W06
	.byte	W01
	.byte	W04
	.byte		N36   , Cn2 , v116, gtp1
	.byte		N20   , As3 , v100
	.byte	W20
	.byte	W04
	.byte		N18   , Ds3 
	.byte		N18   , As3 , v104
	.byte	W12
@ 027   ----------------------------------------
	.byte		N11   , Cn1 , v116
	.byte	W01
	.byte	W05
	.byte	W05
	.byte	W01
	.byte		N32   , Cn2 , v116, gtp3
	.byte		N21   , Ds3 , v100
	.byte	W21
	.byte	W03
	.byte		N60   , Gs2 , v104
	.byte		N60   , Ds3 , v108
	.byte	W11
	.byte	W01
	.byte		N48   , Cn2 
	.byte	W48
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_012
	.byte	W08
	.byte	W03
	.byte		N19   , Cn3 , v116
	.byte		N20   , Gn3 , v108
	.byte	W12
	.byte		N12   , Cn1 , v116
	.byte	W07
	.byte	W01
	.byte	W04
	.byte		N36   , Cn2 , v116, gtp1
	.byte		N20   , As3 , v100
	.byte	W20
	.byte	W04
	.byte		N18   , Ds3 
	.byte		N18   , As3 , v104
	.byte	W12
@ 029   ----------------------------------------
	.byte		N11   , Cn1 , v116
	.byte	W01
	.byte	W05
	.byte	W05
	.byte	W01
	.byte		N32   , Cn2 , v116, gtp3
	.byte		N21   , Ds3 , v100
	.byte	W21
	.byte	W03
	.byte		N60   , Gs2 , v104
	.byte		N60   , Ds3 , v108
	.byte	W11
	.byte	W01
	.byte		N48   , Cn2 
	.byte	W48
@ 030   ----------------------------------------
mus_high_hopes_4_030:
	.byte	W12
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W12
	.byte		N36   , Gn2 , v108, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v116, gtp2
	.byte		N12   , Ds3 
	.byte	W12
	.byte	PEND
	.byte		N13   , Cn3 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Gn1 , v116, gtp3
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N32   , Dn2 , v104, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v108
	.byte		N36   , Dn3 , v116
	.byte	W12
@ 031   ----------------------------------------
	.byte		N12   , Gn2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W12
	.byte		N36   , Ds2 , v120
	.byte	W12
	.byte		N24   , Ds2 , v116
	.byte		N13   , Cn3 , v104
	.byte	W12
	.byte		        Gs2 , v108
	.byte	W01
	.byte	W09
	.byte	W02
	.byte		N44   , As1 , v120, gtp3
	.byte	W01
	.byte	W11
	.byte		N32   , Fn2 , v116, gtp2
	.byte	W12
	.byte		N22   
	.byte		N24   , Dn3 
	.byte	W12
@ 032   ----------------------------------------
	.byte		N12   , As2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N32   , Gn2 , v108, gtp1
	.byte	W12
	.byte		N21   
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N09   , Cn3 , v116
	.byte	W09
	.byte	W03
	.byte		N44   , Ds2 , v116, gtp3
	.byte	W12
	.byte		N12   , Fn2 , v100
	.byte	W12
	.byte		N24   , Gn2 , v108
	.byte		N24   , Ds3 , v104
	.byte	W12
@ 033   ----------------------------------------
	.byte		N12   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W12
	.byte		N32   , Cn2 , v108, gtp3
	.byte	W12
	.byte		N24   , Fn2 , v104, gtp1
	.byte		N24   , Cn3 , v108, gtp1
	.byte	W12
	.byte		N13   , Fn2 , v116
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W01
	.byte	W11
	.byte		N32   , Ds2 , v108, gtp3
	.byte	W12
	.byte		N23   , Ds2 , v092
	.byte		N22   , Cn3 , v108
	.byte	W12
@ 034   ----------------------------------------
	.byte		N11   , Gs2 , v092
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W12
	.byte		N36   , Gn2 , v108, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v116, gtp2
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N13   , Cn3 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Gn1 , v116, gtp3
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N32   , Dn2 , v104, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v108
	.byte		N36   , Dn3 , v116
	.byte	W12
@ 035   ----------------------------------------
	.byte		N12   , Gn2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W12
	.byte		N36   , Ds2 , v120
	.byte	W12
	.byte		N24   , Ds2 , v116
	.byte		N13   , Cn3 , v104
	.byte	W12
	.byte		        Gs2 , v108
	.byte	W01
	.byte	W09
	.byte	W02
	.byte		N44   , As1 , v120, gtp3
	.byte	W01
	.byte	W11
	.byte		N32   , Fn2 , v116, gtp2
	.byte	W12
	.byte		N22   
	.byte		N24   , Dn3 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N12   , As2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N32   , Gn2 , v108, gtp1
	.byte	W12
	.byte		N21   
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N09   , Cn3 , v116
	.byte	W09
	.byte	W03
	.byte		N44   , Ds2 , v116, gtp3
	.byte	W12
	.byte		N12   , Fn2 , v100
	.byte	W12
	.byte		N24   , Gn2 , v108
	.byte		N24   , Ds3 , v104
	.byte	W12
@ 037   ----------------------------------------
	.byte		N12   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W12
	.byte		N32   , Cn2 , v108, gtp3
	.byte	W12
	.byte		N24   , Fn2 , v104, gtp1
	.byte		N24   , Cn3 , v108, gtp1
	.byte	W12
	.byte		N13   , Fn2 , v116
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N36   , Gn1 , v127
	.byte	W01
	.byte	W11
	.byte		N24   , Dn2 , v108
	.byte	W12
	.byte		N12   , Dn2 , v092
	.byte		N12   , As2 , v108
	.byte	W12
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_014
	.byte	W03
	.byte		N19   , Cn3 , v116
	.byte		N20   , Gn3 , v108
	.byte	W12
	.byte		N12   , Cn1 , v116
	.byte	W01
	.byte	W06
	.byte	W01
	.byte	W04
	.byte		N36   , Cn2 , v116, gtp1
	.byte		N20   , As3 , v100
	.byte	W20
	.byte	W04
	.byte		N18   , Ds3 
	.byte		N18   , As3 , v104
	.byte	W12
@ 039   ----------------------------------------
	.byte		N11   , Cn1 , v116
	.byte	W01
	.byte	W05
	.byte	W05
	.byte	W01
	.byte		N32   , Cn2 , v116, gtp3
	.byte		N21   , Ds3 , v100
	.byte	W21
	.byte	W03
	.byte		N60   , Gs2 , v104
	.byte		N60   , Ds3 , v108
	.byte	W11
	.byte	W01
	.byte		N48   , Cn2 
	.byte	W48
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_012
	.byte	W08
	.byte	W03
	.byte		N19   , Cn3 , v116
	.byte		N20   , Gn3 , v108
	.byte	W12
	.byte		N12   , Cn1 , v116
	.byte	W07
	.byte	W01
	.byte	W04
	.byte		N36   , Cn2 , v116, gtp1
	.byte		N20   , As3 , v100
	.byte	W20
	.byte	W04
	.byte		N18   , Ds3 
	.byte		N18   , As3 , v104
	.byte	W12
@ 041   ----------------------------------------
	.byte		N11   , Cn1 , v116
	.byte	W01
	.byte	W05
	.byte	W05
	.byte	W01
	.byte		N32   , Cn2 , v116, gtp3
	.byte		N21   , Ds3 , v100
	.byte	W21
	.byte	W03
	.byte		N60   , Gs2 , v104
	.byte		N60   , Ds3 , v108
	.byte	W11
	.byte	W01
	.byte		N48   , Cn2 
	.byte	W48
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_014
	.byte	W03
	.byte		N19   , Cn3 , v116
	.byte		N20   , Gn3 , v108
	.byte	W12
	.byte		N12   , Cn1 , v116
	.byte	W01
	.byte	W06
	.byte	W01
	.byte	W04
	.byte		N36   , Cn2 , v116, gtp1
	.byte		N20   , As3 , v100
	.byte	W20
	.byte	W04
	.byte		N18   , Ds3 
	.byte		N18   , As3 , v104
	.byte	W12
@ 043   ----------------------------------------
	.byte		N11   , Cn1 , v116
	.byte	W01
	.byte	W05
	.byte	W05
	.byte	W01
	.byte		N32   , Cn2 , v116, gtp3
	.byte		N21   , Ds3 , v100
	.byte	W21
	.byte	W03
	.byte		N60   , Gs2 , v104
	.byte		N60   , Ds3 , v108
	.byte	W11
	.byte	W01
	.byte		N48   , Cn2 
	.byte	W48
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_012
	.byte	W08
	.byte	W03
	.byte		N19   , Cn3 , v116
	.byte		N20   , Gn3 , v108
	.byte	W12
	.byte		N12   , Cn1 , v116
	.byte	W07
	.byte	W01
	.byte	W04
	.byte		N36   , Cn2 , v116, gtp1
	.byte		N20   , As3 , v100
	.byte	W20
	.byte	W04
	.byte		N18   , Ds3 
	.byte		N18   , As3 , v104
	.byte	W12
@ 045   ----------------------------------------
	.byte		N11   , Cn1 , v116
	.byte	W01
	.byte	W05
	.byte	W05
	.byte	W01
	.byte		N32   , Cn2 , v116, gtp3
	.byte		N21   , Ds3 , v100
	.byte	W21
	.byte	W03
	.byte		N60   , Gs2 , v104
	.byte		N60   , Ds3 , v108
	.byte	W11
	.byte	W01
	.byte		N48   , Cn2 
	.byte	W48
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_018
	.byte	W03
	.byte	W02
	.byte		N24   , Gs2 , v100
	.byte		N21   , Ds3 , v108
	.byte	W21
	.byte	W03
	.byte		N19   , Fn2 , v092
	.byte		N21   , Dn3 , v076
	.byte	W19
	.byte	W02
	.byte	W03
	.byte		N23   , Fn2 , v116
	.byte		N22   , Dn3 
	.byte	W12
@ 047   ----------------------------------------
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N21   , Gn2 , v092
	.byte		N19   , Cn3 , v088
	.byte	W19
	.byte	W02
	.byte	W03
	.byte		N24   , Dn2 , v116
	.byte		N23   , Cn3 , v120
	.byte	W23
	.byte	W01
	.byte		N01   , Dn2 , v100
	.byte		N20   , Bn2 , v096
	.byte	W20
	.byte	W04
	.byte		N21   , Gn2 , v104
	.byte		N22   , Gn3 , v127
	.byte	W12
@ 048   ----------------------------------------
	.byte	W09
	.byte	W01
	.byte	W02
	.byte		N21   , Gn2 , v108
	.byte		N20   , Ds3 , v100
	.byte	W20
	.byte	W01
	.byte	W03
	.byte		N24   , Gs2 
	.byte		N22   , Ds3 , v120
	.byte	W22
	.byte	W02
	.byte		N19   , Fn2 , v104
	.byte		N19   , Dn3 , v076
	.byte	W19
	.byte	W05
	.byte		N24   , Fn2 , v127
	.byte		N22   , Dn3 
	.byte	W12
@ 049   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		N23   , Gn2 , v108
	.byte		N21   , Cn3 , v096
	.byte	W21
	.byte	W02
	.byte	W01
	.byte		N24   , Dn2 , v108
	.byte		N22   , Cn3 
	.byte	W22
	.byte	W02
	.byte		N42   , Fn2 , v127
	.byte		N32   , Bn2 , v116
	.byte	W32
	.byte	W04
@ 050   ----------------------------------------
	.byte	W06
	.byte	W90
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
	.byte	W12
	.byte		TIE   , Gn2 , v108
	.byte		N13   , Cn5 
	.byte		N13   , Gn5 , v127
	.byte	W13
	.byte	W11
	.byte		N16   , Cn5 , v108
	.byte		N17   , Gn5 , v104
	.byte	W16
	.byte	W02
	.byte	W06
	.byte		N15   , Ds5 , v092
	.byte		N16   , As5 , v108
	.byte	W15
	.byte	W02
	.byte	W07
	.byte		N12   , Ds5 , v092
	.byte		N12   , As5 , v116
	.byte	W12
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_003
	.byte	W10
	.byte		N48   , Gs4 , v100, gtp3
	.byte		N48   , Ds5 , v120, gtp2
	.byte	W48
	.byte	W03
	.byte	W06
	.byte		EOT   , Gn2 
	.byte	W03
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_002
	.byte	W11
	.byte		N16   , Cn5 , v108
	.byte		N17   , Gn5 , v104
	.byte	W16
	.byte	W02
	.byte	W06
	.byte		N15   , Ds5 , v092
	.byte		N16   , As5 , v108
	.byte	W15
	.byte	W02
	.byte	W07
	.byte		N12   , Ds5 , v092
	.byte		N12   , As5 , v116
	.byte	W12
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_003
	.byte	W10
	.byte		N48   , Gs4 , v100, gtp3
	.byte		N48   , Ds5 , v120, gtp2
	.byte	W48
	.byte	W03
	.byte	W09
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_014
	.byte	W03
	.byte		N19   , Cn3 , v116
	.byte		N20   , Gn3 , v108
	.byte	W12
	.byte		N12   , Cn1 , v100
	.byte	W01
	.byte	W06
	.byte	W01
	.byte	W04
	.byte		N36   , Cn2 , v116, gtp1
	.byte		N20   , As3 , v100
	.byte	W20
	.byte	W04
	.byte		N18   , Ds3 
	.byte		N18   , As3 , v104
	.byte	W12
@ 071   ----------------------------------------
	.byte		N11   , Cn1 , v100
	.byte	W01
	.byte	W05
	.byte	W05
	.byte	W01
	.byte		N32   , Cn2 , v116, gtp3
	.byte		N21   , Ds3 , v100
	.byte	W21
	.byte	W03
	.byte		N60   , Gs2 , v104
	.byte		N60   , Ds3 , v108
	.byte	W11
	.byte	W01
	.byte		N48   , Cn2 
	.byte	W48
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_012
	.byte	W08
	.byte	W03
	.byte		N19   , Cn3 , v116
	.byte		N20   , Gn3 , v108
	.byte	W12
	.byte		N12   , Cn1 , v100
	.byte	W07
	.byte	W01
	.byte	W04
	.byte		N36   , Cn2 , v116, gtp1
	.byte		N20   , As3 , v100
	.byte	W20
	.byte	W04
	.byte		N18   , Ds3 
	.byte		N18   , As3 , v104
	.byte	W12
@ 073   ----------------------------------------
	.byte		N11   , Cn1 , v100
	.byte	W01
	.byte	W05
	.byte	W05
	.byte	W01
	.byte		N32   , Cn2 , v116, gtp3
	.byte		N21   , Ds3 , v100
	.byte	W21
	.byte	W03
	.byte		N60   , Gs2 , v104
	.byte		N60   , Ds3 , v108
	.byte	W11
	.byte	W01
	.byte		N48   , Cn2 
	.byte	W48
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_014
	.byte	W03
	.byte		N19   , Cn3 , v116
	.byte		N20   , Gn3 , v108
	.byte	W12
	.byte		N12   , Cn1 , v100
	.byte	W01
	.byte	W06
	.byte	W01
	.byte	W04
	.byte		N36   , Cn2 , v116, gtp1
	.byte		N20   , As3 , v100
	.byte	W20
	.byte	W04
	.byte		N18   , Ds3 
	.byte		N18   , As3 , v104
	.byte	W12
@ 075   ----------------------------------------
	.byte		N11   , Cn1 , v100
	.byte	W01
	.byte	W05
	.byte	W05
	.byte	W01
	.byte		N32   , Cn2 , v116, gtp3
	.byte		N21   , Ds3 , v100
	.byte	W21
	.byte	W03
	.byte		N60   , Gs2 , v104
	.byte		N60   , Ds3 , v108
	.byte	W11
	.byte	W01
	.byte		N48   , Cn2 
	.byte	W48
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_012
	.byte	W08
	.byte	W03
	.byte		N19   , Cn3 , v116
	.byte		N20   , Gn3 , v108
	.byte	W12
	.byte		N12   , Cn1 , v100
	.byte	W07
	.byte	W01
	.byte	W04
	.byte		N36   , Cn2 , v116, gtp1
	.byte		N20   , As3 , v100
	.byte	W20
	.byte	W04
	.byte		N18   , Ds3 
	.byte		N18   , As3 , v104
	.byte	W12
@ 077   ----------------------------------------
	.byte		N11   , Cn1 , v100
	.byte	W01
	.byte	W05
	.byte	W05
	.byte	W01
	.byte		N32   , Cn2 , v116, gtp3
	.byte		N21   , Ds3 , v100
	.byte	W21
	.byte	W03
	.byte		N60   , Gs2 , v104
	.byte		N60   , Ds3 , v108
	.byte	W11
	.byte	W01
	.byte		N48   , Cn2 
	.byte	W48
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_030
	.byte		N13   , Cn3 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Gn1 , v116, gtp3
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N32   , Dn2 , v104, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v108
	.byte		N36   , Dn3 , v116
	.byte	W12
@ 079   ----------------------------------------
	.byte		N12   , Gn2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W12
	.byte		N36   , Ds2 , v120
	.byte	W12
	.byte		N24   , Ds2 , v116
	.byte		N13   , Cn3 , v104
	.byte	W12
	.byte		        Gs2 , v108
	.byte	W01
	.byte	W09
	.byte	W02
	.byte		N44   , As1 , v120, gtp3
	.byte	W01
	.byte	W11
	.byte		N32   , Fn2 , v116, gtp2
	.byte	W12
	.byte		N22   
	.byte		N24   , Dn3 
	.byte	W12
@ 080   ----------------------------------------
	.byte		N12   , As2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N32   , Gn2 , v108, gtp1
	.byte	W12
	.byte		N21   
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N09   , Cn3 , v116
	.byte	W09
	.byte	W03
	.byte		N44   , Ds2 , v116, gtp3
	.byte	W12
	.byte		N12   , Fn2 , v100
	.byte	W12
	.byte		N24   , Gn2 , v108
	.byte		N24   , Ds3 , v104
	.byte	W12
@ 081   ----------------------------------------
	.byte		N12   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W12
	.byte		N32   , Cn2 , v108, gtp3
	.byte	W12
	.byte		N24   , Fn2 , v104, gtp1
	.byte		N24   , Cn3 , v108, gtp1
	.byte	W12
	.byte		N13   , Fn2 , v116
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W01
	.byte	W11
	.byte		N32   , Ds2 , v108, gtp3
	.byte	W12
	.byte		N23   , Ds2 , v092
	.byte		N22   , Cn3 , v108
	.byte	W12
@ 082   ----------------------------------------
	.byte		N11   , Gs2 , v092
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W12
	.byte		N36   , Gn2 , v108, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v116, gtp2
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N13   , Cn3 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Gn1 , v116, gtp3
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N32   , Dn2 , v104, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v108
	.byte		N36   , Dn3 , v116
	.byte	W12
@ 083   ----------------------------------------
	.byte		N12   , Gn2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W12
	.byte		N36   , Ds2 , v120
	.byte	W12
	.byte		N24   , Ds2 , v116
	.byte		N13   , Cn3 , v104
	.byte	W12
	.byte		        Gs2 , v108
	.byte	W01
	.byte	W09
	.byte	W02
	.byte		N44   , As1 , v120, gtp3
	.byte	W01
	.byte	W11
	.byte		N32   , Fn2 , v116, gtp2
	.byte	W12
	.byte		N22   
	.byte		N24   , Dn3 
	.byte	W12
@ 084   ----------------------------------------
	.byte		N12   , As2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N32   , Gn2 , v108, gtp1
	.byte	W12
	.byte		N21   
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N09   , Cn3 , v116
	.byte	W09
	.byte	W03
	.byte		N44   , Ds2 , v116, gtp3
	.byte	W12
	.byte		N12   , Fn2 , v100
	.byte	W12
	.byte		N24   , Gn2 , v108
	.byte		N24   , Ds3 , v104
	.byte	W12
@ 085   ----------------------------------------
	.byte		N12   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W12
	.byte		N32   , Cn2 , v108, gtp3
	.byte	W12
	.byte		N24   , Fn2 , v104, gtp1
	.byte		N24   , Cn3 , v108, gtp1
	.byte	W12
	.byte		N13   , Fn2 , v116
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W01
	.byte	W11
	.byte		N32   , Ds2 , v108, gtp3
	.byte	W12
	.byte		N23   , Ds2 , v092
	.byte		N22   , Cn3 , v108
	.byte	W12
@ 086   ----------------------------------------
	.byte		N11   , Gs2 , v092
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W12
	.byte		N36   , Gn2 , v108, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v116, gtp2
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N13   , Cn3 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Gn1 , v116, gtp3
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N32   , Dn2 , v104, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v108
	.byte		N36   , Dn3 , v116
	.byte	W12
@ 087   ----------------------------------------
	.byte		N12   , Gn2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W12
	.byte		N36   , Ds2 , v120
	.byte	W12
	.byte		N24   , Ds2 , v116
	.byte		N13   , Cn3 , v104
	.byte	W12
	.byte		        Gs2 , v108
	.byte	W01
	.byte	W09
	.byte	W02
	.byte		N44   , As1 , v120, gtp3
	.byte	W01
	.byte	W11
	.byte		N32   , Fn2 , v116, gtp2
	.byte	W12
	.byte		N22   
	.byte		N24   , Dn3 
	.byte	W12
@ 088   ----------------------------------------
	.byte		N12   , As2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N32   , Gn2 , v108, gtp1
	.byte	W12
	.byte		N21   
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N09   , Cn3 , v116
	.byte	W09
	.byte	W03
	.byte		N44   , Ds2 , v116, gtp3
	.byte	W12
	.byte		N12   , Fn2 , v100
	.byte	W12
	.byte		N24   , Gn2 , v108
	.byte		N24   , Ds3 , v104
	.byte	W12
@ 089   ----------------------------------------
	.byte		N12   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W12
	.byte		N32   , Cn2 , v108, gtp3
	.byte	W12
	.byte		N24   , Fn2 , v104, gtp1
	.byte		N24   , Cn3 , v108, gtp1
	.byte	W12
	.byte		N13   , Fn2 , v116
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W01
	.byte	W11
	.byte		N32   , Ds2 , v108, gtp3
	.byte	W12
	.byte		N23   , Ds2 , v092
	.byte		N22   , Cn3 , v108
	.byte	W12
@ 090   ----------------------------------------
	.byte		N11   , Gs2 , v092
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W12
	.byte		N36   , Gn2 , v108, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v116, gtp2
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N13   , Cn3 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Gn1 , v116, gtp3
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N32   , Dn2 , v104, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v108
	.byte		N36   , Dn3 , v116
	.byte	W12
@ 091   ----------------------------------------
	.byte		N12   , Gn2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W12
	.byte		N36   , Ds2 , v120
	.byte	W12
	.byte		N24   , Ds2 , v116
	.byte		N13   , Cn3 , v104
	.byte	W12
	.byte		        Gs2 , v108
	.byte	W01
	.byte	W09
	.byte	W02
	.byte		N44   , As1 , v120, gtp3
	.byte	W01
	.byte	W11
	.byte		N32   , Fn2 , v116, gtp2
	.byte	W12
	.byte		N22   
	.byte		N24   , Dn3 
	.byte	W12
@ 092   ----------------------------------------
	.byte		N12   , As2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N32   , Gn2 , v108, gtp1
	.byte	W12
	.byte		N21   
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N09   , Cn3 , v116
	.byte	W09
	.byte	W03
	.byte		N44   , Ds2 , v116, gtp3
	.byte	W12
	.byte		N12   , Fn2 , v100
	.byte	W12
	.byte		N24   , Gn2 , v108
	.byte		N24   , Ds3 , v104
	.byte	W12
@ 093   ----------------------------------------
	.byte		N12   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W12
	.byte		N32   , Cn2 , v108, gtp3
	.byte	W12
	.byte		N24   , Fn2 , v104, gtp1
	.byte		N24   , Cn3 , v108, gtp1
	.byte	W12
	.byte		N13   , Fn2 , v116
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W01
	.byte	W11
	.byte		N32   , Ds2 , v108, gtp3
	.byte	W12
	.byte		N23   , Ds2 , v092
	.byte		N22   , Cn3 , v108
	.byte	W12
@ 094   ----------------------------------------
	.byte		N11   , Gs2 , v092
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W12
	.byte		N36   , Gn2 , v108, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v116, gtp2
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N13   , Cn3 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Gn1 , v116, gtp3
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N32   , Dn2 , v104, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v108
	.byte		N36   , Dn3 , v116
	.byte	W12
@ 095   ----------------------------------------
	.byte		N12   , Gn2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W12
	.byte		N36   , Ds2 , v120
	.byte	W12
	.byte		N24   , Ds2 , v116
	.byte		N13   , Cn3 , v104
	.byte	W12
	.byte		        Gs2 , v108
	.byte	W01
	.byte	W09
	.byte	W02
	.byte		N44   , As1 , v120, gtp3
	.byte	W01
	.byte	W11
	.byte		N32   , Fn2 , v116, gtp2
	.byte	W12
	.byte		N22   
	.byte		N24   , Dn3 
	.byte	W12
@ 096   ----------------------------------------
	.byte		N12   , As2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N32   , Gn2 , v108, gtp1
	.byte	W12
	.byte		N21   
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N09   , Cn3 , v116
	.byte	W09
	.byte	W03
	.byte		N44   , Ds2 , v116, gtp3
	.byte	W12
	.byte		N12   , Fn2 , v100
	.byte	W12
	.byte		N24   , Gn2 , v108
	.byte		N24   , Ds3 , v104
	.byte	W12
@ 097   ----------------------------------------
	.byte		N12   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W12
	.byte		N32   , Cn2 , v108, gtp3
	.byte	W12
	.byte		N24   , Fn2 , v104, gtp1
	.byte		N24   , Cn3 , v108, gtp1
	.byte	W12
	.byte		N13   , Fn2 , v116
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W01
	.byte	W11
	.byte		N32   , Ds2 , v108, gtp3
	.byte	W12
	.byte		N23   , Ds2 , v092
	.byte		N22   , Cn3 , v108
	.byte	W12
@ 098   ----------------------------------------
	.byte		N11   , Gs2 , v092
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W12
	.byte		N36   , Gn2 , v108, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v116, gtp2
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N13   , Cn3 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Gn1 , v116, gtp3
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N32   , Dn2 , v104, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v108
	.byte		N36   , Dn3 , v116
	.byte	W12
@ 099   ----------------------------------------
	.byte		N12   , Gn2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W12
	.byte		N36   , Ds2 , v120
	.byte	W12
	.byte		N24   , Ds2 , v116
	.byte		N13   , Cn3 , v104
	.byte	W12
	.byte		        Gs2 , v108
	.byte	W01
	.byte	W09
	.byte	W02
	.byte		N44   , As1 , v120, gtp3
	.byte	W01
	.byte	W11
	.byte		N32   , Fn2 , v116, gtp2
	.byte	W12
	.byte		N22   
	.byte		N24   , Dn3 
	.byte	W12
@ 100   ----------------------------------------
	.byte		N12   , As2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N08   , Gn2 , v104
	.byte	W08
	.byte	W04
	.byte		N21   , Gn2 , v108
	.byte		N11   , Ds3 
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Cn3 , v116
	.byte	W09
	.byte	W03
	.byte		N44   , Ds2 , v116, gtp3
	.byte		N02   , Fn2 , v020
	.byte	W02
	.byte	W10
	.byte		N06   , Fn2 , v104
	.byte		N06   , Fn2 , v100
	.byte	W06
	.byte	W06
	.byte		N24   , Gn2 , v108
	.byte		N10   , Ds3 , v104
	.byte	W10
	.byte	W02
@ 101   ----------------------------------------
	.byte		N12   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W12
	.byte		N32   , Cn2 , v108, gtp3
	.byte	W12
	.byte		N24   , Fn2 , v104, gtp1
	.byte		N24   , Cn3 , v108, gtp1
	.byte	W12
	.byte		N13   , Fn2 , v116
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W01
	.byte	W11
	.byte		N32   , Ds2 , v108, gtp3
	.byte	W12
	.byte		N23   , Ds2 , v092
	.byte		N22   , Cn3 , v108
	.byte	W12
@ 102   ----------------------------------------
	.byte		N11   , Gs2 , v092
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W12
	.byte		N36   , Gn2 , v108, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v116, gtp2
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N13   , Cn3 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Gn1 , v116, gtp3
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N32   , Dn2 , v104, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v108
	.byte		N36   , Dn3 , v116
	.byte	W12
@ 103   ----------------------------------------
	.byte		N12   , Gn2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W12
	.byte		N36   , Ds2 , v120
	.byte	W12
	.byte		N24   , Ds2 , v116
	.byte		N13   , Cn3 , v104
	.byte	W12
	.byte		        Gs2 , v108
	.byte	W01
	.byte	W09
	.byte	W02
	.byte		N44   , As1 , v120, gtp3
	.byte	W01
	.byte	W11
	.byte		N32   , Fn2 , v116, gtp2
	.byte	W12
	.byte		N22   
	.byte		N24   , Dn3 
	.byte	W12
@ 104   ----------------------------------------
	.byte		N12   , As2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N32   , Gn2 , v108, gtp1
	.byte	W12
	.byte		N21   
	.byte		N11   , Ds3 
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Cn3 , v116
	.byte	W09
	.byte	W03
	.byte		N44   , Ds2 , v116, gtp3
	.byte		N02   , Fn2 , v020
	.byte	W02
	.byte	W10
	.byte		N06   , Fn2 , v104
	.byte		N06   , Fn2 , v100
	.byte	W06
	.byte	W06
	.byte		N24   , Gn2 , v108
	.byte		N10   , Ds3 , v104
	.byte	W10
	.byte	W02
@ 105   ----------------------------------------
	.byte		N12   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W12
	.byte		N32   , Cn2 , v108, gtp3
	.byte	W12
	.byte		N24   , Fn2 , v104, gtp1
	.byte		N24   , Cn3 , v108, gtp1
	.byte	W12
	.byte		N13   , Fn2 , v116
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W01
	.byte	W11
	.byte		N32   , Ds2 , v108, gtp3
	.byte	W12
	.byte		N23   , Ds2 , v092
	.byte		N22   , Cn3 , v108
	.byte	W12
@ 106   ----------------------------------------
	.byte		N11   , Gs2 , v092
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W12
	.byte		N36   , Gn2 , v108, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v116, gtp2
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N13   , Cn3 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Gn1 , v116, gtp3
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N32   , Dn2 , v104, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v108
	.byte		N36   , Dn3 , v116
	.byte	W12
@ 107   ----------------------------------------
	.byte		N12   , Gn2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W12
	.byte		N36   , Ds2 , v120
	.byte	W12
	.byte		N24   , Ds2 , v116
	.byte		N13   , Cn3 , v104
	.byte	W12
	.byte		        Gs2 , v108
	.byte	W01
	.byte	W09
	.byte	W02
	.byte		N44   , As1 , v120, gtp3
	.byte	W01
	.byte	W11
	.byte		N32   , Fn2 , v116, gtp2
	.byte	W12
	.byte		N22   
	.byte		N24   , Dn3 
	.byte	W12
@ 108   ----------------------------------------
	.byte		N12   , As2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N32   , Gn2 , v108, gtp1
	.byte	W12
	.byte		N21   
	.byte		N11   , Ds3 
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Cn3 , v116
	.byte	W09
	.byte	W03
	.byte		N44   , Ds2 , v116, gtp3
	.byte		N02   , Fn2 , v020
	.byte	W02
	.byte	W10
	.byte		N06   , Fn2 , v104
	.byte		N06   , Fn2 , v100
	.byte	W06
	.byte	W06
	.byte		N24   , Gn2 , v108
	.byte		N10   , Ds3 , v104
	.byte	W10
	.byte	W02
@ 109   ----------------------------------------
	.byte		N12   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W12
	.byte		N32   , Cn2 , v108, gtp3
	.byte	W12
	.byte		N24   , Fn2 , v104, gtp1
	.byte		N24   , Cn3 , v108, gtp1
	.byte	W12
	.byte		N13   , Fn2 , v116
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W01
	.byte	W11
	.byte		N32   , Ds2 , v108, gtp3
	.byte	W12
	.byte		N23   , Ds2 , v092
	.byte		N22   , Cn3 , v108
	.byte	W12
@ 110   ----------------------------------------
	.byte		N11   , Gs2 , v092
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W12
	.byte		N36   , Gn2 , v108, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v116, gtp2
	.byte		N11   , Gn4 , v120
	.byte	W11
	.byte	W01
	.byte		N13   , Cn3 , v108
	.byte		N32   , Ds4 , v108, gtp3
	.byte	W11
	.byte	W01
	.byte		N44   , Gn1 , v116, gtp3
	.byte	W01
	.byte	W01
	.byte	W09
	.byte	W01
	.byte		N32   , Dn2 , v104, gtp2
	.byte	W11
	.byte	W01
	.byte		N24   , Gn2 , v108
	.byte		N11   , Fn4 , v120
	.byte	W11
	.byte	W01
@ 111   ----------------------------------------
mus_high_hopes_4_111:
	.byte		N12   , Gn2 , v116
	.byte		N36   , Cn4 
	.byte	W10
	.byte	PEND
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W12
	.byte		N36   , Ds2 , v120
	.byte	W12
	.byte		N24   , Ds2 , v116
	.byte		N01   , Cn3 , v104
	.byte	W12
	.byte		N13   , Gs2 , v108
	.byte	W10
	.byte	W02
	.byte		N44   , As1 , v120, gtp3
	.byte	W01
	.byte	W11
	.byte		N32   , Fn2 , v116, gtp2
	.byte	W12
	.byte		N22   
	.byte		N11   , Ds3 , v127
	.byte	W11
	.byte	W01
@ 112   ----------------------------------------
mus_high_hopes_4_112:
	.byte		N12   , As2 , v116
	.byte		N10   , Dn3 , v127
	.byte	W10
	.byte	PEND
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N08   , Gn2 , v104
	.byte		N08   , Gn2 , v108
	.byte	W08
	.byte	W04
	.byte		N21   
	.byte		N11   , Ds3 
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Cn3 , v116
	.byte	W09
	.byte	W03
	.byte		N44   , Ds2 , v116, gtp3
	.byte		N02   , Fn2 , v020
	.byte	W02
	.byte	W10
	.byte		N06   , Fn2 , v104
	.byte		N06   , Fn2 , v100
	.byte	W06
	.byte	W06
	.byte		N24   , Gn2 , v108
	.byte		N10   , Ds3 , v104
	.byte	W10
	.byte	W02
@ 113   ----------------------------------------
	.byte		N12   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W12
	.byte		N32   , Cn2 , v108, gtp3
	.byte	W12
	.byte		N24   , Fn2 , v104, gtp1
	.byte		N24   , Cn3 , v108, gtp1
	.byte	W12
	.byte		N13   , Fn2 , v116
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W01
	.byte	W11
	.byte		N32   , Ds2 , v108, gtp3
	.byte	W12
	.byte		N23   , Ds2 , v092
	.byte		N22   , Cn3 , v108
	.byte	W12
@ 114   ----------------------------------------
	.byte		N11   , Gs2 , v092
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W12
	.byte		N36   , Gn2 , v108, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v116, gtp2
	.byte		N11   , Gn4 , v120
	.byte	W11
	.byte	W01
	.byte		N13   , Cn3 , v108
	.byte		N32   , Ds4 , v108, gtp3
	.byte	W11
	.byte	W01
	.byte		N44   , Gn1 , v116, gtp3
	.byte	W01
	.byte	W01
	.byte	W09
	.byte	W01
	.byte		N32   , Dn2 , v104, gtp2
	.byte	W11
	.byte	W01
	.byte		N24   , Gn2 , v108
	.byte		N11   , Fn4 , v120
	.byte	W11
	.byte	W01
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_111
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W12
	.byte		N36   , Ds2 , v120
	.byte	W12
	.byte		N24   , Ds2 , v116
	.byte		N01   , Cn3 , v104
	.byte	W12
	.byte		N13   , Gs2 , v108
	.byte	W10
	.byte	W02
	.byte		N44   , As1 , v120, gtp3
	.byte	W01
	.byte	W11
	.byte		N32   , Fn2 , v116, gtp2
	.byte	W12
	.byte		N22   
	.byte		N11   , Ds3 , v127
	.byte	W11
	.byte	W01
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_112
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N08   , Gn2 , v104
	.byte		N08   , Gn2 , v108
	.byte	W08
	.byte	W04
	.byte		N21   
	.byte		N11   , Ds3 
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Cn3 , v116
	.byte	W09
	.byte	W03
	.byte		N44   , Ds2 , v116, gtp3
	.byte		N02   , Fn2 , v020
	.byte	W02
	.byte	W10
	.byte		N06   , Fn2 , v104
	.byte		N06   , Fn2 , v100
	.byte	W06
	.byte	W06
	.byte		N24   , Gn2 , v108
	.byte		N10   , Ds3 , v104
	.byte	W10
	.byte	W02
@ 117   ----------------------------------------
	.byte		N12   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W12
	.byte		N32   , Cn2 , v108, gtp3
	.byte	W12
	.byte		N24   , Fn2 , v104, gtp1
	.byte		N24   , Cn3 , v108, gtp1
	.byte	W12
	.byte		N13   , Fn2 , v116
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W01
	.byte	W11
	.byte		N32   , Ds2 , v108, gtp3
	.byte	W12
	.byte		N23   , Ds2 , v092
	.byte		N22   , Cn3 , v108
	.byte	W12
@ 118   ----------------------------------------
	.byte		N11   , Gs2 , v092
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W12
	.byte		N36   , Gn2 , v108, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v116, gtp2
	.byte		N11   , Gn4 , v120
	.byte	W11
	.byte	W01
	.byte		N13   , Cn3 , v108
	.byte		N32   , Ds4 , v108, gtp3
	.byte	W11
	.byte	W01
	.byte		N44   , Gn1 , v116, gtp3
	.byte	W01
	.byte	W01
	.byte	W09
	.byte	W01
	.byte		N32   , Dn2 , v104, gtp2
	.byte	W11
	.byte	W01
	.byte		N24   , Gn2 , v108
	.byte		N11   , Fn4 , v120
	.byte	W11
	.byte	W01
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_111
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W12
	.byte		N36   , Ds2 , v120
	.byte	W12
	.byte		N24   , Ds2 , v116
	.byte		N01   , Cn3 , v104
	.byte	W12
	.byte		N13   , Gs2 , v108
	.byte	W10
	.byte	W02
	.byte		N44   , As1 , v120, gtp3
	.byte	W01
	.byte	W11
	.byte		N32   , Fn2 , v116, gtp2
	.byte	W12
	.byte		N22   
	.byte		N11   , Ds3 , v127
	.byte	W11
	.byte	W01
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_112
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N08   , Gn2 , v104
	.byte		N08   , Gn2 , v108
	.byte	W08
	.byte	W04
	.byte		N21   
	.byte		N11   , Ds3 
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Cn3 , v116
	.byte	W09
	.byte	W03
	.byte		N44   , Ds2 , v116, gtp3
	.byte		N02   , Fn2 , v020
	.byte	W02
	.byte	W10
	.byte		N06   , Fn2 , v104
	.byte		N06   , Fn2 , v100
	.byte	W06
	.byte	W06
	.byte		N24   , Gn2 , v108
	.byte		N10   , Ds3 , v104
	.byte	W10
	.byte	W02
@ 121   ----------------------------------------
	.byte		N12   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W12
	.byte		N32   , Cn2 , v108, gtp3
	.byte	W12
	.byte		N24   , Fn2 , v104, gtp1
	.byte		N24   , Cn3 , v108, gtp1
	.byte	W12
	.byte		N13   , Fn2 , v116
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W01
	.byte	W11
	.byte		N32   , Ds2 , v108, gtp3
	.byte	W12
	.byte		N23   , Ds2 , v092
	.byte		N22   , Cn3 , v108
	.byte	W12
@ 122   ----------------------------------------
	.byte		N11   , Gs2 , v092
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W12
	.byte		N36   , Gn2 , v108, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v116, gtp2
	.byte		N11   , Gn4 , v120
	.byte	W11
	.byte	W01
	.byte		N13   , Cn3 , v108
	.byte		N32   , Ds4 , v108, gtp3
	.byte	W11
	.byte	W01
	.byte		N44   , Gn1 , v116, gtp3
	.byte	W01
	.byte	W01
	.byte	W09
	.byte	W01
	.byte		N32   , Dn2 , v104, gtp2
	.byte	W11
	.byte	W01
	.byte		N24   , Gn2 , v108
	.byte		N11   , Fn4 , v120
	.byte	W11
	.byte	W01
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_111
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W12
	.byte		N36   , Ds2 , v120
	.byte	W12
	.byte		N24   , Ds2 , v116
	.byte		N01   , Cn3 , v104
	.byte	W12
	.byte		N13   , Gs2 , v108
	.byte	W10
	.byte	W02
	.byte		N44   , As1 , v120, gtp3
	.byte	W01
	.byte	W11
	.byte		N32   , Fn2 , v116, gtp2
	.byte	W12
	.byte		N22   
	.byte		N11   , Ds3 , v127
	.byte	W11
	.byte	W01
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_4_112
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N08   , Gn2 , v104
	.byte		N08   , Gn2 , v108
	.byte	W08
	.byte	W04
	.byte		N21   
	.byte		N11   , Ds3 
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Cn3 , v116
	.byte	W09
	.byte	W03
	.byte		N44   , Ds2 , v116, gtp3
	.byte		N02   , Fn2 , v020
	.byte	W02
	.byte	W10
	.byte		N06   , Fn2 , v104
	.byte		N06   , Fn2 , v100
	.byte	W06
	.byte	W06
	.byte		N24   , Gn2 , v108
	.byte		N10   , Ds3 , v104
	.byte	W10
	.byte	W02
@ 125   ----------------------------------------
	.byte		N12   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W12
	.byte		N32   , Cn2 , v108, gtp3
	.byte	W12
	.byte		N24   , Fn2 , v104, gtp1
	.byte		N24   , Cn3 , v108, gtp1
	.byte	W12
	.byte		N13   , Fn2 , v116
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W01
	.byte	W11
	.byte		N32   , Ds2 , v108, gtp3
	.byte	W12
	.byte		N23   , Ds2 , v092
	.byte		N22   , Cn3 , v108
	.byte	W12
@ 126   ----------------------------------------
	.byte		N11   , Gs2 , v092
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W12
	.byte		N36   , Gn2 , v108, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v116, gtp2
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N13   , Cn3 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Gn1 , v116, gtp3
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N32   , Dn2 , v104, gtp2
	.byte	W12
	.byte		N24   , Gn2 , v108
	.byte		N36   , Dn3 , v116
	.byte	W12
@ 127   ----------------------------------------
	.byte		N12   , Gn2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W12
	.byte		N36   , Ds2 , v120
	.byte	W12
	.byte		N24   , Ds2 , v116
	.byte		N13   , Cn3 , v104
	.byte	W12
	.byte		        Gs2 , v108
	.byte	W01
	.byte	W09
	.byte	W02
	.byte		N44   , As1 , v120, gtp3
	.byte	W01
	.byte	W11
	.byte		N32   , Fn2 , v116, gtp2
	.byte	W12
	.byte		N22   
	.byte		N24   , Dn3 
	.byte	W12
@ 128   ----------------------------------------
	.byte		N12   , As2 
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W12
	.byte		N08   , Gn2 , v104
	.byte		N08   , Gn2 , v108
	.byte	W08
	.byte	W04
	.byte		N21   
	.byte		N11   , Ds3 
	.byte	W07
	.byte	W04
	.byte	W01
	.byte		N09   , Cn3 , v116
	.byte	W09
	.byte	W03
	.byte		N44   , Ds2 , v116, gtp3
	.byte		N02   , Fn2 , v020
	.byte	W02
	.byte	W10
	.byte		N06   , Fn2 , v104
	.byte		N06   , Fn2 , v100
	.byte	W06
	.byte	W06
	.byte		N24   , Gn2 , v108
	.byte		N10   , Ds3 , v104
	.byte	W10
	.byte	W02
@ 129   ----------------------------------------
	.byte		N12   , Gn2 , v108
	.byte	W11
	.byte	W01
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W12
	.byte		N32   , Cn2 , v108, gtp3
	.byte	W12
	.byte		N24   , Fn2 , v104, gtp1
	.byte		N24   , Cn3 , v108, gtp1
	.byte	W12
	.byte		N13   , Fn2 , v116
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W01
	.byte	W11
	.byte		N32   , Ds2 , v108, gtp3
	.byte	W12
	.byte		N23   , Ds2 , v092
	.byte		N22   , Cn3 , v108
	.byte	W12
@ 130   ----------------------------------------
	.byte		N11   , Gs2 , v092
	.byte	W10
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W09
	.byte		VOL   , 99*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N36   , Gn2 , v108, gtp2
	.byte	W04
	.byte		VOL   , 98*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        97*mus_high_hopes_mvl/mxv
	.byte		N24   , Gn2 , v116, gtp2
	.byte		N12   , Ds3 
	.byte	W07
	.byte		VOL   , 96*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte		N13   , Cn3 , v108
	.byte	W03
	.byte		VOL   , 95*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        94*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		N44   , Gn1 , v116, gtp3
	.byte	W01
	.byte	W01
	.byte	W04
	.byte		VOL   , 93*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		N32   , Dn2 , v104, gtp2
	.byte	W01
	.byte		VOL   , 92*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        91*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N24   , Gn2 , v108
	.byte		N36   , Dn3 , v116
	.byte	W04
	.byte		VOL   , 90*mus_high_hopes_mvl/mxv
	.byte	W08
@ 131   ----------------------------------------
	.byte		        89*mus_high_hopes_mvl/mxv
	.byte		N12   , Gn2 
	.byte	W07
	.byte		VOL   , 88*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W04
	.byte		VOL   , 87*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        86*mus_high_hopes_mvl/mxv
	.byte		N36   , Ds2 , v120
	.byte	W07
	.byte		VOL   , 85*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte		N24   , Ds2 , v116
	.byte		N13   , Cn3 , v104
	.byte	W03
	.byte		VOL   , 84*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        83*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		N13   , Gs2 , v108
	.byte	W01
	.byte	W05
	.byte		VOL   , 82*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte	W02
	.byte		N44   , As1 , v120, gtp3
	.byte	W01
	.byte		VOL   , 81*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        80*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N32   , Fn2 , v116, gtp2
	.byte	W04
	.byte		VOL   , 79*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        78*mus_high_hopes_mvl/mxv
	.byte		N22   
	.byte		N24   , Dn3 
	.byte	W07
	.byte		VOL   , 77*mus_high_hopes_mvl/mxv
	.byte	W05
@ 132   ----------------------------------------
	.byte		N12   , As2 
	.byte	W03
	.byte		VOL   , 76*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        75*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W06
	.byte		VOL   , 74*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		N08   , Gn2 , v104
	.byte		N08   , Gn2 , v108
	.byte	W01
	.byte		VOL   , 73*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte	W02
	.byte		        72*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		N21   
	.byte		N11   , Ds3 
	.byte	W06
	.byte		VOL   , 71*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W04
	.byte	W01
	.byte		N09   , Cn3 , v116
	.byte	W01
	.byte		VOL   , 70*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        69*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N44   , Ds2 , v116, gtp3
	.byte		N02   , Fn2 , v020
	.byte	W02
	.byte	W02
	.byte		VOL   , 68*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        67*mus_high_hopes_mvl/mxv
	.byte		N06   , Fn2 , v104
	.byte		N06   , Fn2 , v100
	.byte	W06
	.byte	W01
	.byte		VOL   , 66*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte		N24   , Gn2 , v108
	.byte		N10   , Ds3 , v104
	.byte	W03
	.byte		VOL   , 65*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        64*mus_high_hopes_mvl/mxv
	.byte	W02
@ 133   ----------------------------------------
	.byte		N12   , Gn2 , v108
	.byte	W06
	.byte		VOL   , 63*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte	W01
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W01
	.byte		VOL   , 62*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        61*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N32   , Cn2 , v108, gtp3
	.byte	W06
	.byte		VOL   , 60*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		N24   , Fn2 , v104, gtp1
	.byte		N24   , Cn3 , v108, gtp1
	.byte	W01
	.byte		VOL   , 59*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        58*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N13   , Fn2 , v116
	.byte	W04
	.byte		VOL   , 57*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte	W01
	.byte	W01
	.byte		        56*mus_high_hopes_mvl/mxv
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W01
	.byte	W06
	.byte		VOL   , 55*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte		N32   , Ds2 , v108, gtp3
	.byte	W03
	.byte		VOL   , 54*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        53*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		N23   , Ds2 , v092
	.byte		N22   , Cn3 , v108
	.byte	W06
	.byte		VOL   , 52*mus_high_hopes_mvl/mxv
	.byte	W06
@ 134   ----------------------------------------
	.byte		N11   , Gs2 , v092
	.byte	W01
	.byte		VOL   , 51*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        50*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W05
	.byte		VOL   , 49*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        48*mus_high_hopes_mvl/mxv
	.byte		N36   , Gn2 , v108, gtp2
	.byte	W08
	.byte		VOL   , 47*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		N24   , Gn2 , v116, gtp2
	.byte		N12   , Ds3 
	.byte	W03
	.byte		VOL   , 46*mus_high_hopes_mvl/mxv
	.byte	W09
	.byte		        45*mus_high_hopes_mvl/mxv
	.byte		N13   , Cn3 , v108
	.byte	W08
	.byte		VOL   , 44*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte	W01
	.byte		N44   , Gn1 , v116, gtp3
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		VOL   , 43*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        42*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		N32   , Dn2 , v104, gtp2
	.byte	W06
	.byte		VOL   , 41*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		N24   , Gn2 , v108
	.byte		N36   , Dn3 , v116
	.byte	W02
	.byte		VOL   , 40*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        39*mus_high_hopes_mvl/mxv
	.byte	W03
@ 135   ----------------------------------------
	.byte		N12   , Gn2 
	.byte	W05
	.byte		VOL   , 38*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte	W01
	.byte	W01
	.byte		        37*mus_high_hopes_mvl/mxv
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W08
	.byte		VOL   , 36*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		N36   , Ds2 , v120
	.byte	W03
	.byte		VOL   , 35*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        34*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		N24   , Ds2 , v116
	.byte		N13   , Cn3 , v104
	.byte	W08
	.byte		VOL   , 33*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		N13   , Gs2 , v108
	.byte	W01
	.byte	W02
	.byte		VOL   , 32*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte	W01
	.byte		        31*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		N44   , As1 , v120, gtp3
	.byte	W01
	.byte	W05
	.byte		VOL   , 30*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		N32   , Fn2 , v116, gtp2
	.byte	W02
	.byte		VOL   , 29*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        28*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N22   
	.byte		N24   , Dn3 
	.byte	W05
	.byte		VOL   , 27*mus_high_hopes_mvl/mxv
	.byte	W07
@ 136   ----------------------------------------
	.byte		        26*mus_high_hopes_mvl/mxv
	.byte		N12   , As2 
	.byte	W08
	.byte		VOL   , 25*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		N44   , Cn2 , v127, gtp1
	.byte	W03
	.byte		VOL   , 24*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        23*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		N08   , Gn2 , v104
	.byte		N08   , Gn2 , v108
	.byte	W06
	.byte		VOL   , 22*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W04
	.byte		N21   
	.byte		N11   , Ds3 
	.byte	W02
	.byte		VOL   , 21*mus_high_hopes_mvl/mxv
	.byte	W05
	.byte	W02
	.byte		        20*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W01
	.byte		N09   , Cn3 , v116
	.byte	W05
	.byte		VOL   , 19*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte	W03
	.byte		N44   , Ds2 , v116, gtp3
	.byte		N02   , Fn2 , v020
	.byte	W02
	.byte		VOL   , 18*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        17*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N06   , Fn2 , v104
	.byte		N06   , Fn2 , v100
	.byte	W05
	.byte		VOL   , 16*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W06
	.byte		        15*mus_high_hopes_mvl/mxv
	.byte		N24   , Gn2 , v108
	.byte		N10   , Ds3 , v104
	.byte	W08
	.byte		VOL   , 14*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W02
@ 137   ----------------------------------------
	.byte		N12   , Gn2 , v108
	.byte	W03
	.byte		VOL   , 13*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        12*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W06
	.byte		VOL   , 11*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		N32   , Cn2 , v108, gtp3
	.byte	W02
	.byte		VOL   , 10*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        9*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N24   , Fn2 , v104, gtp1
	.byte		N24   , Cn3 , v108, gtp1
	.byte	W05
	.byte		VOL   , 8*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        7*mus_high_hopes_mvl/mxv
	.byte		N13   , Fn2 , v116
	.byte	W09
	.byte		VOL   , 6*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N44   , Gs1 , v127, gtp2
	.byte	W01
	.byte	W04
	.byte		VOL   , 5*mus_high_hopes_mvl/mxv
	.byte	W07
	.byte		        4*mus_high_hopes_mvl/mxv
	.byte		N32   , Ds2 , v108, gtp3
	.byte	W08
	.byte		VOL   , 3*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte		N23   , Ds2 , v092
	.byte		N22   , Cn3 , v108
	.byte	W03
	.byte		VOL   , 2*mus_high_hopes_mvl/mxv
	.byte	W08
	.byte		        1*mus_high_hopes_mvl/mxv
	.byte	W01
@ 138   ----------------------------------------
	.byte		N11   , Gs2 , v092
	.byte	W06
	.byte		VOL   , 0*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte	W01
	.byte	FINE

@**************** Track 5 (Midi-Chn.6) ****************@

mus_high_hopes_5:
	.byte	KEYSH , mus_high_hopes_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 127*mus_high_hopes_mvl/mxv
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
	.byte	W92
	.byte	W03
	.byte		BEND  , c_v-64
	.byte	W01
@ 010   ----------------------------------------
mus_high_hopes_5_010:
	.byte		TIE   , Cn1 , v116
	.byte	W06
	.byte		BEND  , c_v-63
	.byte		        c_v-52
	.byte		        c_v-36
	.byte		        c_v-43
	.byte	W06
	.byte		        c_v+0
	.byte		        c_v-19
	.byte		        c_v-27
	.byte		        c_v-30
	.byte		        c_v-33
	.byte		        c_v-1
	.byte	W84
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 012   ----------------------------------------
mus_high_hopes_5_012:
	.byte	W12
	.byte		TIE   , Cn1 , v127
	.byte	W84
	.byte	PEND
@ 013   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte		BEND  , c_v-64
	.byte	W01
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_010
@ 015   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn1 
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_012
@ 017   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn1 
@ 018   ----------------------------------------
mus_high_hopes_5_018:
	.byte	W12
	.byte		N32   , Cn1 , v127, gtp3
	.byte	W32
	.byte	W03
	.byte	PEND
	.byte	W01
	.byte		N13   , Cn1 , v116
	.byte	W12
	.byte		N48   , Gs0 , v120
	.byte	W01
	.byte	W32
	.byte	W03
@ 019   ----------------------------------------
	.byte	W12
	.byte		N72   , Gn0 , v127
	.byte	W72
	.byte		N23   , Bn0 
	.byte	W12
@ 020   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N32   , Cn1 , v127, gtp3
	.byte	W32
	.byte	W03
	.byte	W01
	.byte		N06   , Cn1 , v072
	.byte	W06
	.byte	W06
	.byte		N44   , Gs0 , v127, gtp3
	.byte	W36
@ 021   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N32   , Gn0 , v120, gtp3
	.byte	W32
	.byte	W03
	.byte	W01
	.byte		N03   , Gn0 , v116
	.byte	W03
	.byte	W09
	.byte		N36   , Gn0 , v127
	.byte	W32
	.byte	W03
	.byte		BEND  , c_v-64
	.byte	W01
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_010
@ 023   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn1 
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_012
@ 025   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , Cn1 
	.byte		BEND  , c_v-64
	.byte	W01
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_010
@ 027   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn1 
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_012
@ 029   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn1 
@ 030   ----------------------------------------
	.byte	W12
	.byte		N32   , Cn1 , v127
	.byte	W32
	.byte	W04
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W08
	.byte		N40   , Gn0 , v127
	.byte	W36
@ 031   ----------------------------------------
	.byte	W04
	.byte	W08
	.byte		N32   , Gs0 , v127, gtp1
	.byte	W32
	.byte	W01
	.byte	W03
	.byte		N06   , Gn0 , v120
	.byte	W06
	.byte	W06
	.byte		N42   , As0 , v127, gtp1
	.byte	W36
@ 032   ----------------------------------------
	.byte	W07
	.byte	W05
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Dn1 
	.byte	W04
	.byte	W08
	.byte		N40   , Ds1 , v127, gtp1
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-12
	.byte		        c_v-8
	.byte		        c_v-17
	.byte		        c_v-20
	.byte		        c_v-15
	.byte		        c_v-11
	.byte	W06
@ 033   ----------------------------------------
mus_high_hopes_5_033:
	.byte		BEND  , c_v-32
	.byte		        c_v-35
	.byte		        c_v-25
	.byte		        c_v-43
	.byte		        c_v-30
	.byte		        c_v-23
	.byte		        c_v-39
	.byte		        c_v-55
	.byte		        c_v-48
	.byte		        c_v-28
	.byte	W05
	.byte	PEND
	.byte	W01
	.byte		        c_v-64
	.byte	W06
	.byte		        c_v+0
	.byte		N32   , Fn0 , v127
	.byte	W32
	.byte	W04
	.byte		N05   , Gn0 
	.byte	W05
	.byte	W07
	.byte		N44   , Gs0 , v127, gtp2
	.byte	W36
@ 034   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W08
	.byte		N40   , Gn0 , v127
	.byte	W36
@ 035   ----------------------------------------
	.byte	W04
	.byte	W08
	.byte		N28   , Gs0 , v120, gtp1
	.byte		N28   , Gs0 , v127, gtp1
	.byte	W28
	.byte	W01
	.byte	W07
	.byte		N11   
	.byte	W06
	.byte		BEND  , c_v+25
	.byte		        c_v+5
	.byte		        c_v+61
	.byte		        c_v+44
	.byte		        c_v+63
	.byte	W05
	.byte	W01
	.byte		        c_v+0
	.byte		N44   , As0 , v120, gtp3
	.byte	W36
@ 036   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N32   , Cn1 , v127
	.byte	W32
	.byte	W04
	.byte		N04   , Dn1 
	.byte	W04
	.byte	W08
	.byte		N40   , Ds1 , v127, gtp1
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-12
	.byte		        c_v-8
	.byte		        c_v-17
	.byte		        c_v-20
	.byte		        c_v-15
	.byte		        c_v-11
	.byte	W06
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_033
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W06
	.byte		        c_v+0
	.byte		N32   , Fn0 , v127
	.byte	W32
	.byte	W04
	.byte		N05   
	.byte	W05
	.byte	W07
	.byte		N36   , Gn0 
	.byte	W32
	.byte	W03
	.byte		BEND  , c_v-64
	.byte	W01
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_010
@ 039   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn1 
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_012
@ 041   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , Cn1 
	.byte		BEND  , c_v-64
	.byte	W01
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_010
@ 043   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn1 
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_012
@ 045   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn1 
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_018
	.byte	W01
	.byte		N13   , Cn1 , v116
	.byte	W12
	.byte		N48   , Gs0 , v120
	.byte	W01
	.byte	W32
	.byte	W03
@ 047   ----------------------------------------
	.byte	W12
	.byte		N72   , Gn0 , v127
	.byte	W72
	.byte		N23   , Bn0 
	.byte	W12
@ 048   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N32   , Cn1 , v127, gtp3
	.byte	W32
	.byte	W03
	.byte	W01
	.byte		N06   , Cn1 , v072
	.byte	W06
	.byte	W06
	.byte		N44   , Gs0 , v127, gtp3
	.byte	W36
@ 049   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N32   , Gn0 , v120, gtp3
	.byte	W32
	.byte	W03
	.byte	W01
	.byte		N03   , Gn0 , v116
	.byte	W03
	.byte	W09
	.byte		N42   , Gn0 , v127
	.byte	W36
@ 050   ----------------------------------------
	.byte	W06
	.byte	W06
	.byte		TIE   , En0 
	.byte	W84
@ 051   ----------------------------------------
	.byte	W42
	.byte		BEND  , c_v-64
	.byte		        c_v-12
	.byte		        c_v-24
	.byte		        c_v-44
	.byte		        c_v-5
	.byte	W02
	.byte		EOT   
	.byte	W04
	.byte		N13   , Bn0 
	.byte	W12
	.byte		N20   , En1 , v120
	.byte	W01
	.byte	W19
	.byte	W04
	.byte		N20   
	.byte	W12
@ 052   ----------------------------------------
	.byte		BEND  , c_v-6
	.byte		        c_v-2
	.byte	W06
	.byte		        c_v-64
	.byte		        c_v-15
	.byte		        c_v-56
	.byte		        c_v-36
	.byte		        c_v-26
	.byte		        c_v-54
	.byte		        c_v-47
	.byte	W02
	.byte	W04
	.byte		        c_v+0
	.byte		TIE   , Fn0 
	.byte	W84
@ 053   ----------------------------------------
	.byte	W72
	.byte		BEND  , c_v-19
	.byte		        c_v-9
	.byte		        c_v-34
	.byte		        c_v-50
	.byte		        c_v-63
	.byte	W06
	.byte		        c_v-64
	.byte	W06
	.byte		N24   , Bn0 , v116
	.byte	W12
@ 054   ----------------------------------------
	.byte		BEND  , c_v-56
	.byte		        c_v-62
	.byte		        c_v-53
	.byte		        c_v-59
	.byte	W06
	.byte		        c_v+0
	.byte		        c_v-38
	.byte		        c_v-50
	.byte		        c_v-18
	.byte		        c_v-46
	.byte		        c_v-29
	.byte		        c_v-34
	.byte		        c_v-24
	.byte		        c_v-43
	.byte		        c_v-11
	.byte	W06
	.byte		EOT   , Fn0 
	.byte		TIE   , En0 , v127
	.byte	W84
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte		N80   , Fn0 , v127, gtp2
	.byte	W80
	.byte	W02
	.byte	W02
@ 057   ----------------------------------------
	.byte		N05   , Fn1 , v120
	.byte	W05
	.byte	W01
	.byte		N06   , Cn1 , v116
	.byte	W06
	.byte		N56   , Fn0 , v127, gtp3
	.byte	W56
	.byte	W03
	.byte	W07
	.byte		BEND  , c_v-5
	.byte	W06
	.byte		N21   , Bn0 
	.byte	W06
	.byte		BEND  , c_v-62
	.byte	W06
@ 058   ----------------------------------------
	.byte		        c_v-16
	.byte		        c_v-51
	.byte		        c_v-37
	.byte		        c_v-58
	.byte		        c_v-42
	.byte		        c_v-26
	.byte		        c_v-19
	.byte		        c_v-22
	.byte		        c_v-47
	.byte		        c_v-34
	.byte		        c_v-30
	.byte	W06
	.byte		        c_v+0
	.byte		        c_v-2
	.byte		        c_v-5
	.byte		        c_v-8
	.byte		        c_v-13
	.byte		        c_v-11
	.byte	W03
	.byte	W03
	.byte		N32   , En0 , v127, gtp1
	.byte	W32
	.byte	W01
	.byte	W03
	.byte		N13   , Bn0 
	.byte	W12
	.byte		N44   , En1 , v116, gtp2
	.byte	W01
	.byte	W32
	.byte	W03
@ 059   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		N32   , En0 , v127, gtp1
	.byte	W32
	.byte	W01
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		N44   , En0 , v127, gtp1
	.byte	W36
@ 060   ----------------------------------------
	.byte	W09
	.byte	W03
	.byte		N90   , Fn0 
	.byte	W84
@ 061   ----------------------------------------
	.byte	W06
	.byte	W06
	.byte		N36   , Fn0 , v120, gtp3
	.byte	W36
	.byte		N06   , Cn1 , v127
	.byte	W03
	.byte	W03
	.byte	W06
	.byte		N44   , Dn1 , v120, gtp1
	.byte	W36
@ 062   ----------------------------------------
	.byte	W09
	.byte	W03
	.byte		N32   , En1 , v127, gtp2
	.byte	W32
	.byte	W02
	.byte	W02
	.byte		N01   
	.byte	W12
	.byte		N44   
	.byte	W36
@ 063   ----------------------------------------
	.byte	W08
	.byte	W04
	.byte		N32   , En1 , v127, gtp2
	.byte	W32
	.byte	W02
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	W08
	.byte		N48   , En1 , v120
	.byte	W36
@ 064   ----------------------------------------
	.byte	W12
	.byte		N32   , Fn0 , v127
	.byte	W32
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte	W06
	.byte		N42   
	.byte	W36
@ 065   ----------------------------------------
	.byte	W06
	.byte	W06
	.byte		N32   
	.byte	W32
	.byte	W04
	.byte		N09   
	.byte	W06
	.byte		BEND  , c_v+33
	.byte		        c_v+2
	.byte		        c_v+52
	.byte		        c_v+16
	.byte		        c_v+63
	.byte	W03
	.byte	W03
	.byte		        c_v+0
	.byte		        c_v+18
	.byte		N24   , Gn0 
	.byte	W24
	.byte	W06
	.byte		BEND  , c_v-6
	.byte	W06
@ 066   ----------------------------------------
	.byte		N12   , An0 
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v-12
	.byte	W06
	.byte		TIE   , Cn1 , v116
	.byte	W84
@ 067   ----------------------------------------
	.byte	W84
	.byte	W02
	.byte		EOT   
	.byte	W10
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W12
	.byte		BEND  , c_v-64
	.byte	W84
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_010
@ 071   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn1 
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_012
@ 073   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , Cn1 
	.byte		BEND  , c_v-64
	.byte	W01
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_010
@ 075   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn1 
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_012
@ 077   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn1 
@ 078   ----------------------------------------
	.byte	W12
	.byte		N32   , Cn1 , v127
	.byte	W32
	.byte	W04
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W08
	.byte		N40   , Gn0 , v127
	.byte	W36
@ 079   ----------------------------------------
	.byte	W04
	.byte	W08
	.byte		N32   , Gs0 , v127, gtp1
	.byte	W32
	.byte	W01
	.byte	W03
	.byte		N06   , Gn0 , v120
	.byte	W06
	.byte	W06
	.byte		N42   , As0 , v127, gtp1
	.byte	W36
@ 080   ----------------------------------------
	.byte	W07
	.byte	W05
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Dn1 
	.byte	W04
	.byte	W08
	.byte		N40   , Ds1 , v127, gtp1
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-12
	.byte		        c_v-8
	.byte		        c_v-17
	.byte		        c_v-20
	.byte		        c_v-15
	.byte		        c_v-11
	.byte	W06
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_033
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W06
	.byte		        c_v+0
	.byte		N32   , Fn0 , v127
	.byte	W32
	.byte	W04
	.byte		N05   , Gn0 
	.byte	W05
	.byte	W07
	.byte		N44   , Gs0 , v127, gtp2
	.byte	W36
@ 082   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W08
	.byte		N40   , Gn0 , v127
	.byte	W36
@ 083   ----------------------------------------
	.byte	W04
	.byte	W08
	.byte		N32   , Gs0 , v127, gtp1
	.byte	W32
	.byte	W01
	.byte	W03
	.byte		N06   , Gn0 , v120
	.byte	W06
	.byte	W06
	.byte		N42   , As0 , v127, gtp1
	.byte	W36
@ 084   ----------------------------------------
	.byte	W07
	.byte	W05
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Dn1 
	.byte	W04
	.byte	W08
	.byte		N40   , Ds1 , v127, gtp1
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-12
	.byte		        c_v-8
	.byte		        c_v-17
	.byte		        c_v-20
	.byte		        c_v-15
	.byte		        c_v-11
	.byte	W06
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_033
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W06
	.byte		        c_v+0
	.byte		N32   , Fn0 , v127
	.byte	W32
	.byte	W04
	.byte		N05   , Gn0 
	.byte	W05
	.byte	W07
	.byte		N44   , Gs0 , v127, gtp2
	.byte	W36
@ 086   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W08
	.byte		N40   , Gn0 , v127
	.byte	W36
@ 087   ----------------------------------------
	.byte	W04
	.byte	W08
	.byte		N32   , Gs0 , v127, gtp1
	.byte	W32
	.byte	W01
	.byte	W03
	.byte		N06   , Gn0 , v120
	.byte	W06
	.byte	W06
	.byte		N42   , As0 , v127, gtp1
	.byte	W36
@ 088   ----------------------------------------
	.byte	W07
	.byte	W05
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Dn1 
	.byte	W04
	.byte	W08
	.byte		N40   , Ds1 , v127, gtp1
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-12
	.byte		        c_v-8
	.byte		        c_v-17
	.byte		        c_v-20
	.byte		        c_v-15
	.byte		        c_v-11
	.byte	W06
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_033
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W06
	.byte		        c_v+0
	.byte		N32   , Fn0 , v127
	.byte	W32
	.byte	W04
	.byte		N05   , Gn0 
	.byte	W05
	.byte	W07
	.byte		N44   , Gs0 , v127, gtp2
	.byte	W36
@ 090   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W08
	.byte		N40   , Gn0 , v127
	.byte	W36
@ 091   ----------------------------------------
	.byte	W04
	.byte	W08
	.byte		N32   , Gs0 , v127, gtp1
	.byte	W32
	.byte	W01
	.byte	W03
	.byte		N06   , Gn0 , v120
	.byte	W06
	.byte	W06
	.byte		N42   , As0 , v127, gtp1
	.byte	W36
@ 092   ----------------------------------------
	.byte	W07
	.byte	W05
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Dn1 
	.byte	W04
	.byte	W08
	.byte		N40   , Ds1 , v127, gtp1
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-12
	.byte		        c_v-8
	.byte		        c_v-17
	.byte		        c_v-20
	.byte		        c_v-15
	.byte		        c_v-11
	.byte	W06
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_033
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W06
	.byte		        c_v+0
	.byte		N32   , Fn0 , v127
	.byte	W32
	.byte	W04
	.byte		N05   , Gn0 
	.byte	W05
	.byte	W07
	.byte		N44   , Gs0 , v127, gtp2
	.byte	W36
@ 094   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W08
	.byte		N40   , Gn0 , v127
	.byte	W36
@ 095   ----------------------------------------
	.byte	W04
	.byte	W08
	.byte		N32   , Gs0 , v127, gtp1
	.byte	W32
	.byte	W01
	.byte	W03
	.byte		N06   , Gn0 , v120
	.byte	W06
	.byte	W06
	.byte		N42   , As0 , v127, gtp1
	.byte	W36
@ 096   ----------------------------------------
	.byte	W07
	.byte	W05
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Dn1 
	.byte	W04
	.byte	W08
	.byte		N40   , Ds1 , v127, gtp1
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-12
	.byte		        c_v-8
	.byte		        c_v-17
	.byte		        c_v-20
	.byte		        c_v-15
	.byte		        c_v-11
	.byte	W06
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_033
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W06
	.byte		        c_v+0
	.byte		N32   , Fn0 , v127
	.byte	W32
	.byte	W04
	.byte		N05   , Gn0 
	.byte	W05
	.byte	W07
	.byte		N44   , Gs0 , v127, gtp2
	.byte	W36
@ 098   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W08
	.byte		N40   , Gn0 , v127
	.byte	W36
@ 099   ----------------------------------------
	.byte	W04
	.byte	W08
	.byte		N32   , Gs0 , v127, gtp1
	.byte	W32
	.byte	W01
	.byte	W03
	.byte		N06   , Gn0 , v120
	.byte	W06
	.byte	W06
	.byte		N42   , As0 , v127, gtp1
	.byte	W36
@ 100   ----------------------------------------
	.byte	W07
	.byte	W05
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Dn1 
	.byte	W04
	.byte	W08
	.byte		N40   , Ds1 , v127, gtp1
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-12
	.byte		        c_v-8
	.byte		        c_v-17
	.byte		        c_v-20
	.byte		        c_v-15
	.byte		        c_v-11
	.byte	W06
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_033
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W06
	.byte		        c_v+0
	.byte		N32   , Fn0 , v127
	.byte	W32
	.byte	W04
	.byte		N05   , Gn0 
	.byte	W05
	.byte	W07
	.byte		N44   , Gs0 , v127, gtp2
	.byte	W36
@ 102   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W08
	.byte		N40   , Gn0 , v127
	.byte	W36
@ 103   ----------------------------------------
	.byte	W04
	.byte	W08
	.byte		N32   , Gs0 , v127, gtp1
	.byte	W32
	.byte	W01
	.byte	W03
	.byte		N06   , Gn0 , v120
	.byte	W06
	.byte	W06
	.byte		N42   , As0 , v127, gtp1
	.byte	W36
@ 104   ----------------------------------------
	.byte	W07
	.byte	W05
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Dn1 
	.byte	W04
	.byte	W08
	.byte		N40   , Ds1 , v127, gtp1
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-12
	.byte		        c_v-8
	.byte		        c_v-17
	.byte		        c_v-20
	.byte		        c_v-15
	.byte		        c_v-11
	.byte	W06
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_033
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W06
	.byte		        c_v+0
	.byte		N32   , Fn0 , v127
	.byte	W32
	.byte	W04
	.byte		N05   , Gn0 
	.byte	W05
	.byte	W07
	.byte		N44   , Gs0 , v127, gtp2
	.byte	W36
@ 106   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W08
	.byte		N40   , Gn0 , v127
	.byte	W36
@ 107   ----------------------------------------
	.byte	W04
	.byte	W08
	.byte		N32   , Gs0 , v127, gtp1
	.byte	W32
	.byte	W01
	.byte	W03
	.byte		N06   , Gn0 , v120
	.byte	W06
	.byte	W06
	.byte		N42   , As0 , v127, gtp1
	.byte	W36
@ 108   ----------------------------------------
	.byte	W07
	.byte	W05
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Dn1 
	.byte	W04
	.byte	W08
	.byte		N40   , Ds1 , v127, gtp1
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-12
	.byte		        c_v-8
	.byte		        c_v-17
	.byte		        c_v-20
	.byte		        c_v-15
	.byte		        c_v-11
	.byte	W06
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_033
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W06
	.byte		        c_v+0
	.byte		N32   , Fn0 , v127
	.byte	W32
	.byte	W04
	.byte		N05   , Gn0 
	.byte	W05
	.byte	W07
	.byte		N44   , Gs0 , v127, gtp2
	.byte	W36
@ 110   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W08
	.byte		N40   , Gn0 , v127
	.byte	W36
@ 111   ----------------------------------------
	.byte	W04
	.byte	W08
	.byte		N32   , Gs0 , v127, gtp1
	.byte	W32
	.byte	W01
	.byte	W03
	.byte		N06   , Gn0 , v120
	.byte	W06
	.byte	W06
	.byte		N42   , As0 , v127, gtp1
	.byte	W36
@ 112   ----------------------------------------
	.byte	W07
	.byte	W05
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Dn1 
	.byte	W04
	.byte	W08
	.byte		N40   , Ds1 , v127, gtp1
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-12
	.byte		        c_v-8
	.byte		        c_v-17
	.byte		        c_v-20
	.byte		        c_v-15
	.byte		        c_v-11
	.byte	W06
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_033
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W06
	.byte		        c_v+0
	.byte		N32   , Fn0 , v127
	.byte	W32
	.byte	W04
	.byte		N05   , Gn0 
	.byte	W05
	.byte	W07
	.byte		N44   , Gs0 , v127, gtp2
	.byte	W36
@ 114   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W08
	.byte		N40   , Gn0 , v127
	.byte	W36
@ 115   ----------------------------------------
	.byte	W04
	.byte	W08
	.byte		N32   , Gs0 , v127, gtp1
	.byte	W32
	.byte	W01
	.byte	W03
	.byte		N06   , Gn0 , v120
	.byte	W06
	.byte	W06
	.byte		N42   , As0 , v127, gtp1
	.byte	W36
@ 116   ----------------------------------------
	.byte	W07
	.byte	W05
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Dn1 
	.byte	W04
	.byte	W08
	.byte		N40   , Ds1 , v127, gtp1
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-12
	.byte		        c_v-8
	.byte		        c_v-17
	.byte		        c_v-20
	.byte		        c_v-15
	.byte		        c_v-11
	.byte	W06
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_033
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W06
	.byte		        c_v+0
	.byte		N32   , Fn0 , v127
	.byte	W32
	.byte	W04
	.byte		N05   , Gn0 
	.byte	W05
	.byte	W07
	.byte		N44   , Gs0 , v127, gtp2
	.byte	W36
@ 118   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W08
	.byte		N40   , Gn0 , v127
	.byte	W36
@ 119   ----------------------------------------
	.byte	W04
	.byte	W08
	.byte		N32   , Gs0 , v127, gtp1
	.byte	W32
	.byte	W01
	.byte	W03
	.byte		N06   , Gn0 , v120
	.byte	W06
	.byte	W06
	.byte		N42   , As0 , v127, gtp1
	.byte	W36
@ 120   ----------------------------------------
	.byte	W07
	.byte	W05
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Dn1 
	.byte	W04
	.byte	W08
	.byte		N40   , Ds1 , v127, gtp1
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-12
	.byte		        c_v-8
	.byte		        c_v-17
	.byte		        c_v-20
	.byte		        c_v-15
	.byte		        c_v-11
	.byte	W06
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_033
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W06
	.byte		        c_v+0
	.byte		N32   , Fn0 , v127
	.byte	W32
	.byte	W04
	.byte		N05   , Gn0 
	.byte	W05
	.byte	W07
	.byte		N44   , Gs0 , v127, gtp2
	.byte	W36
@ 122   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W08
	.byte		N40   , Gn0 , v127
	.byte	W36
@ 123   ----------------------------------------
	.byte	W04
	.byte	W08
	.byte		N32   , Gs0 , v127, gtp1
	.byte	W32
	.byte	W01
	.byte	W03
	.byte		N06   , Gn0 , v120
	.byte	W06
	.byte	W06
	.byte		N42   , As0 , v127, gtp1
	.byte	W36
@ 124   ----------------------------------------
	.byte	W07
	.byte	W05
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Dn1 
	.byte	W04
	.byte	W08
	.byte		N40   , Ds1 , v127, gtp1
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-12
	.byte		        c_v-8
	.byte		        c_v-17
	.byte		        c_v-20
	.byte		        c_v-15
	.byte		        c_v-11
	.byte	W06
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_033
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W06
	.byte		        c_v+0
	.byte		N32   , Fn0 , v127
	.byte	W32
	.byte	W04
	.byte		N05   , Gn0 
	.byte	W05
	.byte	W07
	.byte		N44   , Gs0 , v127, gtp2
	.byte	W36
@ 126   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W08
	.byte		N40   , Gn0 , v127
	.byte	W36
@ 127   ----------------------------------------
	.byte	W04
	.byte	W08
	.byte		N32   , Gs0 , v127, gtp1
	.byte	W32
	.byte	W01
	.byte	W03
	.byte		N06   , Gn0 , v120
	.byte	W06
	.byte	W06
	.byte		N42   , As0 , v127, gtp1
	.byte	W36
@ 128   ----------------------------------------
	.byte	W07
	.byte	W05
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W04
	.byte		N04   , Dn1 
	.byte	W04
	.byte	W08
	.byte		N40   , Ds1 , v127, gtp1
	.byte	W24
	.byte		BEND  , c_v-3
	.byte		        c_v-6
	.byte	W06
	.byte		        c_v-12
	.byte		        c_v-8
	.byte		        c_v-17
	.byte		        c_v-20
	.byte		        c_v-15
	.byte		        c_v-11
	.byte	W06
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_5_033
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W06
	.byte		        c_v+0
	.byte		N32   , Fn0 , v127
	.byte	W32
	.byte	W04
	.byte		N05   , Gn0 
	.byte	W05
	.byte	W07
	.byte		N44   , Gs0 , v127, gtp2
	.byte	W36
@ 130   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		N32   , Cn1 
	.byte	W06
	.byte		VOL   , 126*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        125*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        124*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        123*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        122*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W04
	.byte		        121*mus_high_hopes_mvl/mxv
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W02
	.byte		VOL   , 120*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        119*mus_high_hopes_mvl/mxv
	.byte		N40   , Gn0 , v127
	.byte	W06
	.byte		VOL   , 118*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        117*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        116*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        115*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        114*mus_high_hopes_mvl/mxv
	.byte	W06
@ 131   ----------------------------------------
	.byte		        113*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte	W02
	.byte		        112*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        111*mus_high_hopes_mvl/mxv
	.byte		N32   , Gs0 , v127, gtp1
	.byte	W06
	.byte		VOL   , 110*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        109*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        108*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        107*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        106*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte	W03
	.byte		        105*mus_high_hopes_mvl/mxv
	.byte		N06   , Gn0 , v120
	.byte	W06
	.byte		VOL   , 104*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        103*mus_high_hopes_mvl/mxv
	.byte		N42   , As0 , v127, gtp1
	.byte	W06
	.byte		VOL   , 102*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        101*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        100*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        99*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        98*mus_high_hopes_mvl/mxv
	.byte	W06
@ 132   ----------------------------------------
	.byte		        97*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        96*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W05
	.byte		        95*mus_high_hopes_mvl/mxv
	.byte		N32   , Cn1 
	.byte	W06
	.byte		VOL   , 94*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        93*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        92*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        91*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        90*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W04
	.byte		        89*mus_high_hopes_mvl/mxv
	.byte		N04   , Dn1 
	.byte	W04
	.byte	W02
	.byte		VOL   , 88*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        87*mus_high_hopes_mvl/mxv
	.byte		N40   , Ds1 , v127, gtp1
	.byte	W06
	.byte		VOL   , 86*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        85*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        84*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        83*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v-3
	.byte		        c_v-6
	.byte	W06
	.byte		VOL   , 82*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v-12
	.byte		        c_v-8
	.byte		        c_v-17
	.byte		        c_v-20
	.byte		        c_v-15
	.byte		        c_v-11
	.byte	W06
@ 133   ----------------------------------------
	.byte		VOL   , 81*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v-32
	.byte		        c_v-35
	.byte		        c_v-25
	.byte		        c_v-43
	.byte		        c_v-30
	.byte		        c_v-23
	.byte		        c_v-39
	.byte		        c_v-55
	.byte		        c_v-48
	.byte		        c_v-28
	.byte	W05
	.byte	W01
	.byte		VOL   , 80*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W06
	.byte		VOL   , 79*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N32   , Fn0 
	.byte	W06
	.byte		VOL   , 78*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        77*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        76*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        75*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        74*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W04
	.byte		        73*mus_high_hopes_mvl/mxv
	.byte		N05   , Gn0 
	.byte	W05
	.byte	W01
	.byte		VOL   , 72*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        71*mus_high_hopes_mvl/mxv
	.byte		N44   , Gs0 , v127, gtp2
	.byte	W06
	.byte		VOL   , 70*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        69*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        68*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        67*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        66*mus_high_hopes_mvl/mxv
	.byte	W06
@ 134   ----------------------------------------
	.byte		        65*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        64*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte	W02
	.byte		        63*mus_high_hopes_mvl/mxv
	.byte		N32   , Cn1 
	.byte	W06
	.byte		VOL   , 62*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        61*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        60*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        59*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        58*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W04
	.byte		        57*mus_high_hopes_mvl/mxv
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W02
	.byte		VOL   , 56*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        55*mus_high_hopes_mvl/mxv
	.byte		N40   , Gn0 , v127
	.byte	W06
	.byte		VOL   , 54*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        53*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        52*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        51*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        50*mus_high_hopes_mvl/mxv
	.byte	W06
@ 135   ----------------------------------------
	.byte		        49*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte	W02
	.byte		        48*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        47*mus_high_hopes_mvl/mxv
	.byte		N32   , Gs0 , v127, gtp1
	.byte	W06
	.byte		VOL   , 46*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        45*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        44*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        43*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        42*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte	W03
	.byte		        41*mus_high_hopes_mvl/mxv
	.byte		N06   , Gn0 , v120
	.byte	W06
	.byte		VOL   , 40*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        39*mus_high_hopes_mvl/mxv
	.byte		N42   , As0 , v127, gtp1
	.byte	W06
	.byte		VOL   , 38*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        37*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        36*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        35*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        34*mus_high_hopes_mvl/mxv
	.byte	W06
@ 136   ----------------------------------------
	.byte		        33*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        32*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W05
	.byte		        31*mus_high_hopes_mvl/mxv
	.byte		N32   , Cn1 
	.byte	W06
	.byte		VOL   , 30*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        29*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        28*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        27*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        26*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W04
	.byte		        25*mus_high_hopes_mvl/mxv
	.byte		N04   , Dn1 
	.byte	W04
	.byte	W02
	.byte		VOL   , 24*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        23*mus_high_hopes_mvl/mxv
	.byte		N40   , Ds1 , v127, gtp1
	.byte	W06
	.byte		VOL   , 22*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        21*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        20*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        19*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v-3
	.byte		        c_v-6
	.byte	W06
	.byte		VOL   , 18*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v-12
	.byte		        c_v-8
	.byte		        c_v-17
	.byte		        c_v-20
	.byte		        c_v-15
	.byte		        c_v-11
	.byte	W06
@ 137   ----------------------------------------
	.byte		VOL   , 17*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v-32
	.byte		        c_v-35
	.byte		        c_v-25
	.byte		        c_v-43
	.byte		        c_v-30
	.byte		        c_v-23
	.byte		        c_v-39
	.byte		        c_v-55
	.byte		        c_v-48
	.byte		        c_v-28
	.byte	W05
	.byte	W01
	.byte		VOL   , 16*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W06
	.byte		VOL   , 15*mus_high_hopes_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N32   , Fn0 
	.byte	W06
	.byte		VOL   , 14*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        13*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        12*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        11*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        10*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W04
	.byte		        9*mus_high_hopes_mvl/mxv
	.byte		N05   , Gn0 
	.byte	W05
	.byte	W01
	.byte		VOL   , 8*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        7*mus_high_hopes_mvl/mxv
	.byte		N44   , Gs0 , v127, gtp2
	.byte	W06
	.byte		VOL   , 6*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        5*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        4*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        3*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        2*mus_high_hopes_mvl/mxv
	.byte	W06
@ 138   ----------------------------------------
	.byte		        1*mus_high_hopes_mvl/mxv
	.byte	W06
	.byte		        0*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte	FINE

@**************** Track 6 (Midi-Chn.11) ****************@

mus_high_hopes_6:
	.byte	KEYSH , mus_high_hopes_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 89
	.byte		VOL   , 95*mus_high_hopes_mvl/mxv
	.byte		PAN   , c_v-32
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
	.byte	W12
	.byte		N23   , Gn2 , v116
	.byte		N44   , Ds3 , v108, gtp3
	.byte	W20
	.byte		N23   , Gs2 
	.byte	W03
	.byte	W20
	.byte	W01
	.byte		N48   , Fn2 
	.byte		N48   , Dn3 
	.byte	W03
	.byte	W36
	.byte	W01
@ 019   ----------------------------------------
	.byte	W08
	.byte		N68   , Dn2 , v108, gtp3
	.byte		N44   , Cn3 , v108, gtp2
	.byte	W44
	.byte	W02
	.byte	W02
	.byte		        Bn2 , v104, gtp3
	.byte	W24
	.byte		N22   , Fn2 
	.byte	W16
@ 020   ----------------------------------------
	.byte	W06
	.byte	W01
	.byte	W01
	.byte		N48   , Ds3 , v116
	.byte	W24
	.byte		N32   , Gs2 , v127, gtp3
	.byte	W24
	.byte		N44   , Fn2 , v120, gtp3
	.byte		N44   , Dn3 , v108, gtp3
	.byte	W11
	.byte	W28
	.byte	W01
@ 021   ----------------------------------------
	.byte	W07
	.byte	W01
	.byte		N84   , Dn2 , v116
	.byte		N44   , Cn3 , v116, gtp3
	.byte	W44
	.byte	W03
	.byte	W01
	.byte		N36   , Bn2 , v096
	.byte		N36   , Fn3 
	.byte	W36
	.byte	W04
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
	.byte	W80
	.byte		N22   , Ds2 , v120
	.byte	W16
@ 040   ----------------------------------------
	.byte	W06
	.byte	W02
	.byte		TIE   , Cn2 , v127
	.byte	W88
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
	.byte	W08
	.byte		EOT   
	.byte	W04
	.byte		N23   , Gn2 , v116
	.byte		N44   , Ds3 , v108, gtp3
	.byte	W20
	.byte		N23   , Gs2 
	.byte	W03
	.byte	W20
	.byte	W01
	.byte		N48   , Fn2 
	.byte		N48   , Dn3 
	.byte	W03
	.byte	W36
	.byte	W01
@ 047   ----------------------------------------
	.byte	W08
	.byte		N68   , Dn2 , v108, gtp3
	.byte		N44   , Cn3 , v108, gtp2
	.byte	W44
	.byte	W02
	.byte	W02
	.byte		        Bn2 , v104, gtp3
	.byte	W24
	.byte		N22   , Fn2 
	.byte	W16
@ 048   ----------------------------------------
	.byte	W06
	.byte	W01
	.byte	W01
	.byte		N48   , Ds3 , v116
	.byte	W24
	.byte		N32   , Gs2 , v127, gtp3
	.byte	W24
	.byte		N44   , Fn2 , v120, gtp3
	.byte		N44   , Dn3 , v108, gtp3
	.byte	W11
	.byte	W28
	.byte	W01
@ 049   ----------------------------------------
	.byte	W07
	.byte	W01
	.byte		N96   , Dn2 , v116
	.byte		N48   , Cn3 
	.byte	W48
	.byte		        Bn2 , v096
	.byte		N48   , Fn3 
	.byte	W40
@ 050   ----------------------------------------
	.byte	W08
	.byte		TIE   , En1 , v127
	.byte		N48   , Bn5 
	.byte	W48
	.byte	W40
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W08
	.byte		EOT   , En1 
	.byte		TIE   , Fn1 
	.byte		TIE   , Bn4 
	.byte	W48
	.byte		N92   , Gn5 , v127, gtp1
	.byte	W40
@ 053   ----------------------------------------
	.byte	W48
	.byte	W02
	.byte		EOT   , Bn4 
	.byte	W03
	.byte	W03
	.byte		N42   , Cn5 , v127, gtp1
	.byte		N42   , An5 
	.byte	W40
@ 054   ----------------------------------------
	.byte	W03
	.byte	W01
	.byte	W04
	.byte		EOT   , Fn1 
	.byte		TIE   , En1 
	.byte	W88
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W08
	.byte		EOT   
	.byte		TIE   , Fn1 
	.byte		N48   , Bn3 
	.byte	W48
	.byte		TIE   , An3 
	.byte	W40
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W02
	.byte		EOT   
	.byte	W06
	.byte		EOT   , Fn1 
	.byte		TIE   , En1 
	.byte		TIE   , Bn2 
	.byte	W88
@ 059   ----------------------------------------
	.byte	W32
	.byte		N22   , Fs3 
	.byte	W22
	.byte	W02
	.byte		N48   , En3 
	.byte	W40
@ 060   ----------------------------------------
	.byte	W07
	.byte		EOT   , En1 
	.byte		        Bn2 
	.byte	W01
	.byte		TIE   , Fn1 
	.byte		TIE   , Fn3 
	.byte	W48
	.byte		N23   , An2 
	.byte	W24
	.byte		N56   , Cn3 
	.byte	W16
@ 061   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte	W03
	.byte		        Dn3 , v127, gtp3
	.byte	W12
	.byte		N44   , Dn3 , v127, gtp3
	.byte	W40
@ 062   ----------------------------------------
	.byte	W05
	.byte		EOT   , Fn3 
	.byte	W02
	.byte		        Fn1 
	.byte	W01
	.byte		TIE   , En1 
	.byte		TIE   , En3 
	.byte	W48
	.byte		N48   , Fs3 
	.byte	W40
@ 063   ----------------------------------------
	.byte	W08
	.byte		N96   , Gn3 
	.byte	W48
	.byte		N48   , Bn3 
	.byte	W40
@ 064   ----------------------------------------
	.byte	W07
	.byte		EOT   , En1 
	.byte	W01
	.byte		        En3 
	.byte		TIE   , Fn1 
	.byte		TIE   , An3 
	.byte	W44
	.byte	W02
	.byte	W02
	.byte		N48   , Bn2 
	.byte	W40
@ 065   ----------------------------------------
	.byte	W05
	.byte	W03
	.byte		N92   , Cn3 , v127, gtp3
	.byte		N92   , Gn3 , v127, gtp2
	.byte	W44
	.byte	W01
	.byte		EOT   , An3 
	.byte	W01
	.byte		        Fn1 
	.byte	W02
	.byte		N48   , Gn1 
	.byte		N48   , Gn2 
	.byte	W01
	.byte	W36
	.byte	W03
@ 066   ----------------------------------------
	.byte	W07
	.byte	W01
	.byte		TIE   , Cn1 , v072
	.byte	W88
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W32
	.byte		EOT   
	.byte	W64
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
	.byte	W56
	.byte		N48   , Gs3 , v056, gtp3
	.byte	W40
@ 076   ----------------------------------------
	.byte	W08
	.byte		N92   , Gn3 , v048, gtp2
	.byte	W04
	.byte	W84
@ 077   ----------------------------------------
	.byte	W06
	.byte	W02
	.byte		N96   , Gs3 , v052
	.byte	W88
@ 078   ----------------------------------------
	.byte	W08
	.byte	W88
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W92
	.byte		N12   , Fn5 , v120
	.byte	W04
@ 082   ----------------------------------------
	.byte	W08
	.byte		N10   , Dn5 
	.byte	W11
	.byte	W01
	.byte		N11   , Cn5 , v116
	.byte	W12
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N28   , Dn4 , v116, gtp1
	.byte	W28
	.byte	W01
	.byte	W11
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W92
	.byte		N12   , Fn5 , v096
	.byte	W04
@ 086   ----------------------------------------
	.byte	W08
	.byte		N11   , Dn5 , v100
	.byte	W11
	.byte	W01
	.byte		N12   , As4 , v092
	.byte	W12
	.byte		N14   , Gn4 , v072
	.byte	W12
	.byte		N12   , Ds4 , v096
	.byte	W02
	.byte	W10
	.byte		N32   , Dn4 , v088
	.byte	W01
	.byte	W30
	.byte	W01
	.byte	W08
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
	.byte	W32
	.byte		N10   , Gn5 , v116
	.byte	W11
	.byte	W01
	.byte		N24   , Ds5 , v104, gtp1
	.byte	W24
	.byte	W01
	.byte	W11
	.byte		N11   , Fn5 , v108
	.byte	W11
	.byte	W01
	.byte		N32   , Cn5 , v088
	.byte	W04
@ 095   ----------------------------------------
	.byte	W28
	.byte	W68
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W32
	.byte		N13   , Gn5 , v104
	.byte	W12
	.byte		N32   , Ds5 , v100
	.byte	W01
	.byte	W32
	.byte	W03
	.byte		N14   , Fn5 , v096
	.byte	W12
	.byte		N32   , Cn5 , v104, gtp1
	.byte	W03
	.byte	W01
@ 099   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte	W66
	.byte	W01
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W32
	.byte		N12   , Gn5 , v108
	.byte	W12
	.byte		N32   , Ds5 , v104
	.byte	W32
	.byte	W04
	.byte		N12   , Fn5 , v116
	.byte	W12
	.byte		N32   , Cn5 , v100
	.byte	W01
	.byte	W03
@ 103   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte	W66
	.byte	W01
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	W32
	.byte		N12   , Gn5 , v108
	.byte	W12
	.byte		N32   , Ds5 , v104
	.byte	W32
	.byte	W04
	.byte		N12   , Fn5 , v116
	.byte	W12
	.byte		N32   , Cn5 , v100
	.byte	W01
	.byte	W03
@ 107   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte	W66
	.byte	W01
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
	.byte	W32
	.byte		N10   , Gn5 , v104
	.byte	W10
	.byte	W02
	.byte		N32   , Ds5 , v104, gtp2
	.byte	W32
	.byte	W02
	.byte	W02
	.byte		N12   , Fn5 , v108
	.byte	W12
	.byte		N54   , Cn5 , v104, gtp1
	.byte	W04
@ 123   ----------------------------------------
	.byte	W48
	.byte	W03
	.byte	W44
	.byte	W01
@ 124   ----------------------------------------
	.byte	W08
	.byte		N36   , Gn5 , v108, gtp2
	.byte	W36
	.byte	W02
	.byte	W48
	.byte	W02
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
	.byte	W12
	.byte		VOL   , 0*mus_high_hopes_mvl/mxv
	.byte	FINE

@**************** Track 7 (Midi-Chn.2) ****************@

mus_high_hopes_7:
	.byte	KEYSH , mus_high_hopes_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 22
	.byte		VOL   , 105*mus_high_hopes_mvl/mxv
	.byte		PAN   , c_v+1
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
	.byte	W11
	.byte	W01
	.byte	W84
@ 050   ----------------------------------------
	.byte	W12
	.byte		N92   , Gn2 , v104, gtp3
	.byte	W84
@ 051   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N96   , An2 , v096
	.byte	W84
@ 052   ----------------------------------------
	.byte	W12
	.byte		        Bn2 , v108
	.byte	W84
@ 053   ----------------------------------------
	.byte	W12
	.byte		N92   , An2 , v100, gtp2
	.byte	W84
@ 054   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		        Gn2 , v104, gtp3
	.byte	W84
@ 055   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N96   , An2 , v096
	.byte	W84
@ 056   ----------------------------------------
	.byte	W12
	.byte		        Bn2 , v108
	.byte	W84
@ 057   ----------------------------------------
	.byte	W12
	.byte		N92   , An2 , v100, gtp2
	.byte	W84
@ 058   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		        Gn2 , v104, gtp3
	.byte	W84
@ 059   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N96   , An2 , v096
	.byte	W84
@ 060   ----------------------------------------
	.byte	W12
	.byte		        Bn2 , v108
	.byte	W84
@ 061   ----------------------------------------
	.byte	W12
	.byte		N92   , An2 , v100, gtp2
	.byte	W84
@ 062   ----------------------------------------
	.byte	W10
	.byte	W02
	.byte		        Gn2 , v104, gtp3
	.byte	W84
@ 063   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N96   , An2 , v096
	.byte	W84
@ 064   ----------------------------------------
	.byte	W12
	.byte		        Bn2 , v108
	.byte	W84
@ 065   ----------------------------------------
	.byte	W12
	.byte		N92   , An2 , v100, gtp2
	.byte	W84
@ 066   ----------------------------------------
	.byte	W10
	.byte	FINE

@**************** Track 8 (Midi-Chn.10) ****************@

mus_high_hopes_8:
	.byte	KEYSH , mus_high_hopes_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		VOL   , 70*mus_high_hopes_mvl/mxv
	.byte		PAN   , c_v-32
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
mus_high_hopes_8_018:
	.byte	W36
	.byte		N36   , Cs1 , v127, gtp3
	.byte	W36
	.byte	W03
	.byte	PEND
	.byte	W09
	.byte		        Cs1 , v127, gtp3
	.byte	W12
@ 019   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte	W09
	.byte		        Cs1 , v127, gtp3
	.byte	W36
	.byte	W03
	.byte	W09
	.byte		N40   
	.byte	W12
@ 020   ----------------------------------------
	.byte	W28
	.byte	W08
	.byte		N36   , Cs1 , v127, gtp3
	.byte	W36
	.byte	W03
	.byte	W09
	.byte		        Cs1 , v127, gtp1
	.byte	W12
@ 021   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte	W11
	.byte		        Cs1 , v127, gtp3
	.byte	W36
	.byte	W03
	.byte	W09
	.byte		N12   
	.byte	W12
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
	.byte	W12
	.byte		N03   , Fs2 , v120
	.byte	W03
	.byte	W09
	.byte		N02   , Fs2 , v076
	.byte	W02
	.byte	W10
	.byte		N36   , Cs1 , v127, gtp3
	.byte		N03   , Fs2 
	.byte	W03
	.byte	W09
	.byte		        Fs2 , v100
	.byte	W03
	.byte	W09
	.byte		N02   , Fs2 , v096
	.byte	W02
	.byte	W10
	.byte		N01   , Fs2 , v092
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N36   , Cs1 , v127, gtp3
	.byte		N02   , Fs2 
	.byte	W02
	.byte	W10
@ 031   ----------------------------------------
	.byte		N01   , Fs2 , v080
	.byte	W01
	.byte	W11
	.byte		N02   , Fs2 , v096
	.byte	W02
	.byte	W10
	.byte		N01   , Fs2 , v072
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N36   , Cs1 , v127, gtp3
	.byte		N02   , Fs2 
	.byte	W02
	.byte	W10
	.byte		        Fs2 , v092
	.byte	W02
	.byte	W10
	.byte		        Fs2 , v104
	.byte	W02
	.byte	W10
	.byte		        Fs2 , v088
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		N40   , Cs1 , v127
	.byte		N02   , Fs2 
	.byte	W02
	.byte	W10
@ 032   ----------------------------------------
	.byte		N01   , Fs2 , v072
	.byte	W01
	.byte	W11
	.byte		N02   , Fs2 , v108
	.byte	W02
	.byte	W10
	.byte		N01   , Fs2 , v076
	.byte	W01
	.byte	W03
	.byte	W08
	.byte		N36   , Cs1 , v127, gtp3
	.byte		N02   , Fs2 
	.byte	W02
	.byte	W10
	.byte		        Fs2 , v096
	.byte	W02
	.byte	W10
	.byte		        Fs2 , v108
	.byte	W02
	.byte	W10
	.byte		N01   , Fs2 , v088
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N36   , Cs1 , v127, gtp1
	.byte		N02   , Fs2 
	.byte	W02
	.byte	W10
@ 033   ----------------------------------------
	.byte		        Fs2 , v076
	.byte	W02
	.byte	W10
	.byte		        Fs2 , v104
	.byte	W02
	.byte	W10
	.byte		N01   , Fs2 , v080
	.byte	W01
	.byte	W11
	.byte		N36   , Cs1 , v127, gtp3
	.byte		N03   , Fs2 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs2 , v104
	.byte	W02
	.byte	W10
	.byte		N03   , Fs2 , v108
	.byte	W03
	.byte	W09
	.byte		N01   , Fs2 , v072
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N12   , Cs1 , v127
	.byte		N03   , Fs2 
	.byte	W03
	.byte	W09
@ 034   ----------------------------------------
	.byte		N01   , Fs2 , v100
	.byte	W01
	.byte	W11
	.byte		N03   , Fs2 , v120
	.byte	W03
	.byte	W09
	.byte		N02   , Fs2 , v076
	.byte	W02
	.byte	W10
	.byte		N36   , Cs1 , v127, gtp3
	.byte		N03   , Fs2 
	.byte	W03
	.byte	W09
	.byte		        Fs2 , v100
	.byte	W03
	.byte	W09
	.byte		N02   , Fs2 , v096
	.byte	W02
	.byte	W10
	.byte		N01   , Fs2 , v092
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N36   , Cs1 , v127, gtp3
	.byte		N02   , Fs2 
	.byte	W02
	.byte	W10
@ 035   ----------------------------------------
	.byte		N01   , Fs2 , v080
	.byte	W01
	.byte	W11
	.byte		N02   , Fs2 , v096
	.byte	W02
	.byte	W10
	.byte		N01   , Fs2 , v072
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N36   , Cs1 , v127, gtp3
	.byte		N02   , Fs2 
	.byte	W02
	.byte	W10
	.byte		        Fs2 , v092
	.byte	W02
	.byte	W10
	.byte		        Fs2 , v104
	.byte	W02
	.byte	W10
	.byte		        Fs2 , v088
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		N40   , Cs1 , v127
	.byte		N02   , Fs2 
	.byte	W02
	.byte	W10
@ 036   ----------------------------------------
	.byte		N01   , Fs2 , v072
	.byte	W01
	.byte	W11
	.byte		N02   , Fs2 , v108
	.byte	W02
	.byte	W10
	.byte		N01   , Fs2 , v076
	.byte	W01
	.byte	W03
	.byte	W08
	.byte		N36   , Cs1 , v127, gtp3
	.byte		N02   , Fs2 
	.byte	W02
	.byte	W10
	.byte		        Fs2 , v096
	.byte	W02
	.byte	W10
	.byte		        Fs2 , v108
	.byte	W02
	.byte	W10
	.byte		N01   , Fs2 , v088
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N36   , Cs1 , v127, gtp1
	.byte		N02   , Fs2 
	.byte	W02
	.byte	W10
@ 037   ----------------------------------------
	.byte		        Fs2 , v076
	.byte	W02
	.byte	W10
	.byte		        Fs2 , v104
	.byte	W02
	.byte	W10
	.byte		N01   , Fs2 , v080
	.byte	W01
	.byte	W11
	.byte		N36   , Cs1 , v127, gtp3
	.byte		N03   , Fs2 
	.byte	W03
	.byte	W09
	.byte		N02   , Fs2 , v104
	.byte	W02
	.byte	W10
	.byte		N03   , Fs2 , v108
	.byte	W03
	.byte	W09
	.byte		N01   , Fs2 , v072
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		N12   , Cs1 , v127
	.byte		N03   , Fs2 
	.byte	W03
	.byte	W09
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
	.byte	PATT
	 .word	mus_high_hopes_8_018
	.byte	W09
	.byte		N36   , Cs1 , v127, gtp3
	.byte	W12
@ 047   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte	W09
	.byte		        Cs1 , v127, gtp3
	.byte	W36
	.byte	W03
	.byte	W09
	.byte		N40   
	.byte	W12
@ 048   ----------------------------------------
	.byte	W28
	.byte	W08
	.byte		N36   , Cs1 , v127, gtp3
	.byte	W36
	.byte	W03
	.byte	W09
	.byte		        Cs1 , v127, gtp1
	.byte	W12
@ 049   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte	W11
	.byte		        Cs1 , v127, gtp3
	.byte	W24
	.byte		N01   , An2 , v008
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v012
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v016
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v020
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v024
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v028
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v032
	.byte	W01
	.byte		        An2 , v036
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v040
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v044
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v048
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v052
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v056
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N02   
	.byte	W01
	.byte		N01   , An2 , v060
	.byte	W01
@ 050   ----------------------------------------
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v064
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v068
	.byte	W01
	.byte		N04   , Dn1 , v120
	.byte		N01   , An2 , v068
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte	W08
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N02   , Dn1 , v116
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v104
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v092
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v096
	.byte	W02
	.byte	W04
	.byte		N04   , Dn1 , v116
	.byte	W04
	.byte	W08
@ 051   ----------------------------------------
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N04   , Dn1 , v120
	.byte	W04
	.byte	W08
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N02   , Dn1 , v116
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v104
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v092
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v096
	.byte	W02
	.byte	W04
	.byte		N04   , Dn1 , v116
	.byte	W04
	.byte	W08
@ 052   ----------------------------------------
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N04   , Dn1 , v120
	.byte	W04
	.byte	W08
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N02   , Dn1 , v116
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v104
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v092
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v096
	.byte	W02
	.byte	W04
	.byte		N04   , Dn1 , v116
	.byte	W04
	.byte	W08
@ 053   ----------------------------------------
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N04   , Dn1 , v120
	.byte	W04
	.byte	W08
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N02   , Dn1 , v116
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v104
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v092
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v096
	.byte	W02
	.byte	W04
	.byte		N04   , Dn1 , v116
	.byte	W04
	.byte	W08
@ 054   ----------------------------------------
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N04   , Dn1 , v120
	.byte	W04
	.byte	W08
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N02   , Dn1 , v116
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v104
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v092
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v096
	.byte	W02
	.byte	W04
	.byte		N04   , Dn1 , v116
	.byte	W04
	.byte	W08
@ 055   ----------------------------------------
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N04   , Dn1 , v120
	.byte	W04
	.byte	W08
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N02   , Dn1 , v116
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v104
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v092
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v096
	.byte	W02
	.byte	W04
	.byte		N04   , Dn1 , v116
	.byte	W04
	.byte	W08
@ 056   ----------------------------------------
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N04   , Dn1 , v120
	.byte	W04
	.byte	W08
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N02   , Dn1 , v116
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v104
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v092
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v096
	.byte	W02
	.byte	W04
	.byte		N04   , Dn1 , v116
	.byte	W04
	.byte	W08
@ 057   ----------------------------------------
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N04   , Dn1 , v120
	.byte	W04
	.byte	W08
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v116
	.byte	W03
	.byte	W09
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N02   , Dn1 , v116
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v104
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v092
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v096
	.byte	W02
	.byte	W04
	.byte		N04   , Dn1 , v116
	.byte	W04
	.byte	W08
@ 058   ----------------------------------------
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N04   , Dn1 , v120
	.byte	W04
	.byte	W08
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v116
	.byte		N36   , Cs5 , v127, gtp1
	.byte	W03
	.byte	W09
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N02   , Dn1 , v116
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v104
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v092
	.byte	W01
	.byte	W01
	.byte	W04
	.byte		        Dn1 , v096
	.byte	W02
	.byte	W04
	.byte		N04   , Dn1 , v116
	.byte		N36   , Cs5 , v127, gtp3
	.byte	W04
	.byte	W08
@ 059   ----------------------------------------
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N04   , Dn1 , v120
	.byte	W04
	.byte	W08
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v116
	.byte		N36   , Cs5 , v127, gtp2
	.byte	W03
	.byte	W09
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N02   , Dn1 , v116
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v104
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v092
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v096
	.byte	W02
	.byte	W04
	.byte		N04   , Dn1 , v116
	.byte		N36   , Cs5 , v127, gtp2
	.byte	W04
	.byte	W08
@ 060   ----------------------------------------
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N04   , Dn1 , v120
	.byte	W04
	.byte	W08
	.byte		N03   , Dn1 , v092
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		        Dn1 , v116
	.byte		N36   , Cs5 , v127
	.byte	W03
	.byte	W09
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N02   , Dn1 , v116
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v104
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v092
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v096
	.byte	W02
	.byte	W04
	.byte		N04   , Dn1 , v116
	.byte		N36   , Cs5 , v127, gtp2
	.byte	W04
	.byte	W08
@ 061   ----------------------------------------
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N04   , Dn1 , v120
	.byte	W04
	.byte	W08
	.byte		N03   , Dn1 , v092
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		        Dn1 , v116
	.byte		N36   , Cs5 , v127, gtp3
	.byte	W03
	.byte	W09
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N02   , Dn1 , v116
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v104
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v092
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        Dn1 , v096
	.byte	W02
	.byte	W04
	.byte		N04   , Dn1 , v116
	.byte		N17   , Cs5 , v127
	.byte	W04
	.byte	W08
@ 062   ----------------------------------------
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N04   , Dn1 , v120
	.byte	W04
	.byte	W08
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v116
	.byte		N36   , Cs5 , v127, gtp1
	.byte	W03
	.byte	W09
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N02   , Dn1 , v116
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v104
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v092
	.byte	W01
	.byte	W01
	.byte	W04
	.byte		        Dn1 , v096
	.byte	W02
	.byte	W04
	.byte		N04   , Dn1 , v116
	.byte		N36   , Cs5 , v127, gtp1
	.byte	W04
	.byte	W08
@ 063   ----------------------------------------
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N04   , Dn1 , v120
	.byte	W04
	.byte	W08
	.byte		N03   , Dn1 , v092
	.byte	W01
	.byte	W02
	.byte	W09
	.byte		        Dn1 , v116
	.byte		N36   , Cs5 , v127, gtp3
	.byte	W03
	.byte	W09
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N02   , Dn1 , v116
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v104
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v092
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        Dn1 , v096
	.byte	W02
	.byte	W04
	.byte		N04   , Dn1 , v116
	.byte		N36   , Cs5 , v127
	.byte	W04
	.byte	W08
@ 064   ----------------------------------------
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N04   , Dn1 , v120
	.byte	W04
	.byte	W08
	.byte		N03   , Dn1 , v092
	.byte	W03
	.byte	W09
	.byte		        Dn1 , v116
	.byte		N36   , Cs5 , v120, gtp1
	.byte	W03
	.byte	W09
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N02   , Dn1 , v116
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v104
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v092
	.byte	W01
	.byte	W01
	.byte	W04
	.byte		        Dn1 , v096
	.byte	W02
	.byte	W04
	.byte		N04   , Dn1 , v116
	.byte		N36   , Cs5 , v127, gtp2
	.byte	W04
	.byte	W08
@ 065   ----------------------------------------
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N04   , Dn1 , v120
	.byte	W04
	.byte	W08
	.byte		N03   , Dn1 , v092
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		        Dn1 , v116
	.byte		N40   , Cs5 , v127, gtp1
	.byte	W03
	.byte	W09
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W02
	.byte		N02   , Dn1 , v116
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v104
	.byte	W02
	.byte	W04
	.byte		        Dn1 , v092
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		        Dn1 , v096
	.byte	W02
	.byte	W04
	.byte		N04   , Dn1 , v116
	.byte		N19   , Cs5 , v120
	.byte	W04
	.byte	W08
@ 066   ----------------------------------------
	.byte		N01   , Dn1 , v100
	.byte	W01
	.byte		        Dn1 , v080
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	W84
	.byte	W02
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W12
	.byte		N13   , Cn1 , v108
	.byte	W13
	.byte	W11
	.byte		N07   , Gs1 
	.byte	W07
	.byte	W05
	.byte		N03   , Cn1 , v116
	.byte	W03
	.byte	W09
	.byte		N09   , Cn1 , v120
	.byte	W09
	.byte	W15
	.byte		N08   , Gs1 , v116
	.byte	W08
	.byte	W04
@ 071   ----------------------------------------
	.byte	W12
	.byte		N10   , Cn1 , v120
	.byte	W10
	.byte	W14
	.byte		N05   , Gs1 , v108
	.byte	W05
	.byte	W07
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W08
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N11   , Gs1 , v116
	.byte	W11
	.byte	W01
@ 072   ----------------------------------------
	.byte	W12
	.byte		N13   , Cn1 , v120
	.byte	W13
	.byte	W11
	.byte		N05   , Gs1 , v108
	.byte	W05
	.byte	W07
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W08
	.byte		N10   , Cn1 , v127
	.byte	W10
	.byte	W14
	.byte		N07   , Gs1 , v116
	.byte	W07
	.byte	W05
@ 073   ----------------------------------------
	.byte	W12
	.byte		N13   , Cn1 
	.byte	W13
	.byte	W11
	.byte		N04   , Gs1 
	.byte	W04
	.byte	W08
	.byte		        Cn1 
	.byte	W04
	.byte	W08
	.byte		N11   , Cn1 , v120
	.byte	W11
	.byte	W13
	.byte		        Gs1 , v116
	.byte	W11
	.byte	W01
@ 074   ----------------------------------------
	.byte	W12
	.byte		N13   , Cn1 , v108
	.byte	W13
	.byte	W11
	.byte		N07   , Gs1 
	.byte	W07
	.byte	W05
	.byte		N03   , Cn1 , v116
	.byte	W03
	.byte	W09
	.byte		N09   , Cn1 , v120
	.byte	W09
	.byte	W15
	.byte		N08   , Gs1 , v116
	.byte	W08
	.byte	W04
@ 075   ----------------------------------------
	.byte	W12
	.byte		N10   , Cn1 , v120
	.byte	W10
	.byte	W14
	.byte		N05   , Gs1 , v108
	.byte	W05
	.byte	W07
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W08
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N11   , Gs1 , v116
	.byte	W11
	.byte	W01
@ 076   ----------------------------------------
	.byte	W12
	.byte		N13   , Cn1 , v120
	.byte	W13
	.byte	W05
	.byte		N02   , Gs1 , v092
	.byte	W02
	.byte	W04
	.byte		N05   , Gs1 , v108
	.byte	W05
	.byte	W07
	.byte		N04   , Cn1 , v120
	.byte	W04
	.byte	W08
	.byte		N10   , Cn1 , v127
	.byte	W10
	.byte	W14
	.byte		N07   , Gs1 , v116
	.byte	W07
	.byte	W05
@ 077   ----------------------------------------
	.byte	W12
	.byte		N13   , Cn1 
	.byte	W13
	.byte	W11
	.byte		N04   , Gs1 
	.byte	W04
	.byte	W08
	.byte		        Cn1 
	.byte	W04
	.byte	W08
	.byte		N11   , Cn1 , v120
	.byte	W11
	.byte	W13
	.byte		        Gs1 , v116
	.byte	W11
	.byte	W01
@ 078   ----------------------------------------
	.byte	W12
	.byte		N07   , Cn1 , v127
	.byte		N14   , An2 
	.byte	W07
	.byte	W07
	.byte	W10
	.byte		N08   , Dn1 
	.byte		N03   , Ds2 
	.byte	W03
	.byte	W05
	.byte	W04
	.byte		        Cn1 
	.byte		N02   , Ds2 , v120
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		N11   , Cn1 , v127
	.byte		N03   , Ds2 
	.byte	W03
	.byte	W08
	.byte	W01
	.byte		N02   , Ds2 , v116
	.byte	W02
	.byte	W10
	.byte		N15   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N36   , Fs2 , v127, gtp2
	.byte	W02
	.byte	W10
@ 079   ----------------------------------------
	.byte		N02   , Ds2 , v116
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		N14   , Cn1 , v120
	.byte		N03   , Ds2 , v127
	.byte	W03
	.byte	W09
	.byte		N02   , Ds2 , v108
	.byte	W02
	.byte	W10
	.byte		N09   , Dn1 , v127
	.byte		N03   , Ds2 
	.byte	W03
	.byte	W06
	.byte	W03
	.byte		N04   , Cn1 
	.byte		N02   , Ds2 , v116
	.byte	W02
	.byte	W02
	.byte	W08
	.byte		N12   , Cn1 , v127
	.byte		N03   , Ds2 , v120
	.byte	W03
	.byte	W09
	.byte		N02   , Ds2 , v108
	.byte	W02
	.byte	W10
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N54   , Fs2 , v127, gtp1
	.byte	W02
	.byte	W10
@ 080   ----------------------------------------
	.byte		N02   , Ds2 , v116
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 
	.byte	W02
	.byte	W10
	.byte		        Ds2 , v108
	.byte	W02
	.byte	W10
	.byte		N09   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte	W02
	.byte	W05
	.byte	W02
	.byte	W03
	.byte		N04   , Cn1 
	.byte		N02   , Ds2 , v108
	.byte	W02
	.byte	W02
	.byte	W08
	.byte		N11   , Cn1 , v127
	.byte		N03   , Ds2 , v120
	.byte	W03
	.byte	W08
	.byte	W01
	.byte		N02   , Ds2 , v116
	.byte		N01   , Fs2 , v012
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N14   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N48   , Fs2 , v127
	.byte	W02
	.byte	W10
@ 081   ----------------------------------------
	.byte		N02   , Ds2 , v116
	.byte	W02
	.byte	W10
	.byte		N12   , Cn1 , v120
	.byte		N02   , Ds2 , v127
	.byte	W02
	.byte	W10
	.byte		        Ds2 , v120
	.byte	W02
	.byte	W10
	.byte		N09   , Dn1 , v127
	.byte		N01   , En1 , v068
	.byte		N02   , Ds2 , v120
	.byte	W02
	.byte	W07
	.byte	W03
	.byte		N04   , Cn1 , v127
	.byte		N02   , Ds2 , v116
	.byte	W02
	.byte	W02
	.byte	W08
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte	W02
	.byte	W10
	.byte		        Ds2 , v116
	.byte	W02
	.byte	W10
	.byte		N12   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N24   , Fs2 
	.byte	W02
	.byte	W10
@ 082   ----------------------------------------
	.byte		N01   , Ds2 
	.byte	W01
	.byte	W11
	.byte		N07   , Cn1 
	.byte		N14   , An2 
	.byte	W07
	.byte	W07
	.byte	W10
	.byte		N08   , Dn1 
	.byte		N03   , Ds2 
	.byte	W03
	.byte	W05
	.byte	W04
	.byte		        Cn1 
	.byte		N02   , Ds2 , v120
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		N11   , Cn1 , v127
	.byte		N03   , Ds2 
	.byte	W03
	.byte	W08
	.byte	W01
	.byte		N02   , Ds2 , v116
	.byte	W02
	.byte	W10
	.byte		N15   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N36   , Fs2 , v127, gtp2
	.byte	W02
	.byte	W10
@ 083   ----------------------------------------
	.byte		N02   , Ds2 , v116
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		N14   , Cn1 , v120
	.byte		N03   , Ds2 , v127
	.byte	W03
	.byte	W09
	.byte		N02   , Ds2 , v108
	.byte	W02
	.byte	W10
	.byte		N09   , Dn1 , v127
	.byte		N03   , Ds2 
	.byte	W03
	.byte	W06
	.byte	W03
	.byte		N04   , Cn1 
	.byte		N02   , Ds2 , v116
	.byte	W02
	.byte	W02
	.byte	W08
	.byte		N12   , Cn1 , v127
	.byte		N03   , Ds2 , v120
	.byte	W03
	.byte	W09
	.byte		N02   , Ds2 , v108
	.byte	W02
	.byte	W10
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N54   , Fs2 , v127, gtp1
	.byte	W02
	.byte	W10
@ 084   ----------------------------------------
	.byte		N02   , Ds2 , v116
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 
	.byte	W02
	.byte	W10
	.byte		        Ds2 , v108
	.byte	W02
	.byte	W10
	.byte		N09   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte	W02
	.byte	W05
	.byte	W02
	.byte	W03
	.byte		N04   , Cn1 
	.byte		N02   , Ds2 , v108
	.byte	W02
	.byte	W02
	.byte	W08
	.byte		N11   , Cn1 , v127
	.byte		N03   , Ds2 , v120
	.byte	W03
	.byte	W08
	.byte	W01
	.byte		N02   , Ds2 , v116
	.byte		N01   , Fs2 , v012
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N14   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N48   , Fs2 , v127
	.byte	W02
	.byte	W10
@ 085   ----------------------------------------
	.byte		N02   , Ds2 , v116
	.byte	W02
	.byte	W10
	.byte		N12   , Cn1 , v120
	.byte		N02   , Ds2 , v127
	.byte	W02
	.byte	W10
	.byte		        Ds2 , v120
	.byte	W02
	.byte	W10
	.byte		N09   , Dn1 , v127
	.byte		N01   , En1 , v068
	.byte		N02   , Ds2 , v120
	.byte	W02
	.byte	W07
	.byte	W03
	.byte		N04   , Cn1 , v127
	.byte		N02   , Ds2 , v116
	.byte	W02
	.byte	W02
	.byte	W08
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte	W02
	.byte	W10
	.byte		        Ds2 , v116
	.byte	W02
	.byte	W10
	.byte		N12   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N24   , Fs2 
	.byte	W02
	.byte	W10
@ 086   ----------------------------------------
	.byte		N01   , Ds2 
	.byte	W01
	.byte	W11
	.byte		N07   , Cn1 
	.byte		N14   , An2 
	.byte	W07
	.byte	W07
	.byte	W10
	.byte		N08   , Dn1 
	.byte		N03   , Ds2 
	.byte	W03
	.byte	W05
	.byte	W04
	.byte		        Cn1 
	.byte		N02   , Ds2 , v120
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		N11   , Cn1 , v127
	.byte		N03   , Ds2 
	.byte	W03
	.byte	W08
	.byte	W01
	.byte		N02   , Ds2 , v116
	.byte	W02
	.byte	W10
	.byte		N15   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N36   , Fs2 , v127, gtp2
	.byte	W02
	.byte	W10
@ 087   ----------------------------------------
	.byte		N02   , Ds2 , v116
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		N14   , Cn1 , v120
	.byte		N03   , Ds2 , v127
	.byte	W03
	.byte	W09
	.byte		N02   , Ds2 , v108
	.byte	W02
	.byte	W10
	.byte		N09   , Dn1 , v127
	.byte		N03   , Ds2 
	.byte	W03
	.byte	W06
	.byte	W03
	.byte		N04   , Cn1 
	.byte		N02   , Ds2 , v116
	.byte	W02
	.byte	W02
	.byte	W08
	.byte		N12   , Cn1 , v127
	.byte		N03   , Ds2 , v120
	.byte	W03
	.byte	W09
	.byte		N02   , Ds2 , v108
	.byte	W02
	.byte	W10
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N54   , Fs2 , v127, gtp1
	.byte	W02
	.byte	W10
@ 088   ----------------------------------------
	.byte		N02   , Ds2 , v116
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 
	.byte	W02
	.byte	W10
	.byte		        Ds2 , v108
	.byte	W02
	.byte	W10
	.byte		N09   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte	W02
	.byte	W05
	.byte	W02
	.byte	W03
	.byte		N04   , Cn1 
	.byte		N02   , Ds2 , v108
	.byte	W02
	.byte	W02
	.byte	W08
	.byte		N11   , Cn1 , v127
	.byte		N03   , Ds2 , v120
	.byte	W03
	.byte	W08
	.byte	W01
	.byte		N02   , Ds2 , v116
	.byte		N01   , Fs2 , v012
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N14   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N48   , Fs2 , v127
	.byte	W02
	.byte	W10
@ 089   ----------------------------------------
	.byte		N02   , Ds2 , v116
	.byte	W02
	.byte	W10
	.byte		N12   , Cn1 , v120
	.byte		N02   , Ds2 , v127
	.byte	W02
	.byte	W10
	.byte		        Ds2 , v120
	.byte	W02
	.byte	W10
	.byte		N09   , Dn1 , v127
	.byte		N01   , En1 , v068
	.byte		N02   , Ds2 , v120
	.byte	W02
	.byte	W07
	.byte	W03
	.byte		N04   , Cn1 , v127
	.byte		N02   , Ds2 , v116
	.byte	W02
	.byte	W02
	.byte	W08
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte	W02
	.byte	W10
	.byte		        Ds2 , v116
	.byte	W02
	.byte	W10
	.byte		N12   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N24   , Fs2 
	.byte	W02
	.byte	W10
@ 090   ----------------------------------------
	.byte		N01   , Ds2 
	.byte	W01
	.byte	W11
	.byte		N07   , Cn1 
	.byte		N14   , An2 
	.byte	W07
	.byte	W07
	.byte	W10
	.byte		N08   , Dn1 
	.byte		N03   , Ds2 
	.byte	W03
	.byte	W05
	.byte	W04
	.byte		        Cn1 
	.byte		N02   , Ds2 , v120
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		N11   , Cn1 , v127
	.byte		N03   , Ds2 
	.byte	W03
	.byte	W08
	.byte	W01
	.byte		N02   , Ds2 , v116
	.byte	W02
	.byte	W10
	.byte		N15   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N36   , Fs2 , v127, gtp2
	.byte	W02
	.byte	W10
@ 091   ----------------------------------------
	.byte		N02   , Ds2 , v116
	.byte	W02
	.byte	W01
	.byte	W09
	.byte		N14   , Cn1 , v120
	.byte		N03   , Ds2 , v127
	.byte	W03
	.byte	W09
	.byte		N02   , Ds2 , v108
	.byte	W02
	.byte	W10
	.byte		N09   , Dn1 , v127
	.byte		N03   , Ds2 
	.byte	W03
	.byte	W06
	.byte	W03
	.byte		N04   , Cn1 
	.byte		N02   , Ds2 , v116
	.byte	W02
	.byte	W02
	.byte	W08
	.byte		N12   , Cn1 , v127
	.byte		N03   , Ds2 , v120
	.byte	W03
	.byte	W09
	.byte		N02   , Ds2 , v108
	.byte	W02
	.byte	W10
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N54   , Fs2 , v127, gtp1
	.byte	W02
	.byte	W10
@ 092   ----------------------------------------
	.byte		N02   , Ds2 , v116
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 
	.byte	W02
	.byte	W10
	.byte		        Ds2 , v108
	.byte	W02
	.byte	W10
	.byte		N09   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte	W02
	.byte	W05
	.byte	W02
	.byte	W03
	.byte		N04   , Cn1 
	.byte		N02   , Ds2 , v108
	.byte	W02
	.byte	W02
	.byte	W08
	.byte		N11   , Cn1 , v127
	.byte		N03   , Ds2 , v120
	.byte	W03
	.byte	W08
	.byte	W01
	.byte		N02   , Ds2 , v116
	.byte		N01   , Fs2 , v012
	.byte	W01
	.byte	W01
	.byte	W10
	.byte		N14   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N24   , Fs2 , v127, gtp2
	.byte	W02
	.byte	W10
@ 093   ----------------------------------------
	.byte		N02   , Ds2 , v116
	.byte	W02
	.byte	W10
	.byte		N12   , Cn1 , v120
	.byte		N23   , Ds2 , v127
	.byte		N02   , Fs2 , v088
	.byte	W02
	.byte	W10
	.byte		N06   , Bn1 , v127
	.byte		N02   , Fs2 , v080
	.byte	W02
	.byte	W04
	.byte	W05
	.byte	W01
	.byte		N01   , En1 , v068
	.byte		N04   , An1 , v127
	.byte		N01   , Fs2 , v092
	.byte	W04
	.byte	W08
	.byte		N03   , Gn1 , v127
	.byte		N01   , Fs2 , v076
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , An1 , v120
	.byte	W04
	.byte	W02
	.byte		N11   , Gn1 , v127
	.byte		N01   , Fs2 , v076
	.byte	W01
	.byte	W10
	.byte	W01
	.byte		N02   , Fn1 , v127
	.byte		N01   , Fs2 , v068
	.byte	W01
	.byte	W01
	.byte	W04
	.byte		N03   , Fn1 , v127
	.byte	W03
	.byte	W03
	.byte		N04   , An1 , v120
	.byte		N04   , Fs2 , v127
	.byte	W04
	.byte	W02
	.byte		N05   , Gn1 
	.byte	W05
	.byte	W01
@ 094   ----------------------------------------
	.byte		N08   , Fn1 
	.byte		N02   , Fs2 , v080
	.byte	W02
	.byte	W06
	.byte	W04
	.byte		N14   , Cn1 , v127
	.byte		N24   , Fs2 , v127, gtp1
	.byte		N32   , An2 , v127, gtp3
	.byte	W14
	.byte	W10
	.byte		N05   , Dn1 
	.byte		N03   , Ds2 
	.byte		N04   , As4 , v104
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W06
	.byte	W01
	.byte		N03   , Cn1 , v127
	.byte		N02   , Ds2 
	.byte		N05   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte		N04   , As4 
	.byte	W04
	.byte	W02
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v072
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v060
	.byte	W03
	.byte	W03
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v060
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		        Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N42   , Fs2 
	.byte		N03   , An3 , v064
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		        An3 , v052
	.byte	W03
	.byte	W03
@ 095   ----------------------------------------
	.byte		        Cn1 , v127
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v072
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 
	.byte	W04
	.byte	W02
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v072
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v048
	.byte	W03
	.byte	W03
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v064
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        As4 , v092
	.byte	W03
	.byte	W03
	.byte		        Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v064
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v052
	.byte	W03
	.byte	W03
	.byte		N02   , Cn1 , v120
	.byte		N02   , Ds2 , v108
	.byte		N02   , An3 , v072
	.byte	W02
	.byte	W04
	.byte		N03   , As4 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v127
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v068
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v060
	.byte	W03
	.byte	W03
	.byte		N01   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte	W03
	.byte		N07   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N32   , Fs2 , v127, gtp3
	.byte		N03   , An3 , v072
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v060
	.byte	W01
	.byte	W03
	.byte	W02
@ 096   ----------------------------------------
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v104
	.byte		N03   , An3 , v072
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v060
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N01   , Ds2 , v116
	.byte		N04   , An3 , v076
	.byte	W01
	.byte	W03
	.byte	W02
	.byte		        As4 , v068
	.byte	W04
	.byte	W02
	.byte		        Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v072
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N04   , An3 , v060
	.byte	W04
	.byte	W02
	.byte		N03   , Cn1 , v127
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v072
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        As4 , v088
	.byte	W03
	.byte	W03
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v072
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v064
	.byte	W04
	.byte	W02
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 
	.byte	W04
	.byte	W02
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N36   , Fs2 , v127, gtp3
	.byte		N03   , An3 , v068
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v056
	.byte	W04
	.byte	W02
@ 097   ----------------------------------------
	.byte		N02   , Ds2 , v116
	.byte		N04   , An3 , v064
	.byte	W01
	.byte	W01
	.byte	W02
	.byte	W02
	.byte		        As4 , v080
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v116
	.byte		N04   , An3 , v080
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		        An3 , v060
	.byte	W04
	.byte	W02
	.byte		N01   , Ds2 , v108
	.byte		N04   , An3 , v072
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte		        As4 , v076
	.byte	W04
	.byte	W02
	.byte		N03   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N04   , An3 , v072
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		        An3 , v056
	.byte	W04
	.byte	W02
	.byte		N03   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N04   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N03   , As4 , v092
	.byte	W03
	.byte	W03
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v072
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v064
	.byte	W04
	.byte	W02
	.byte		N02   , Ds2 , v116
	.byte		N04   , An3 , v076
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		        As4 , v092
	.byte	W04
	.byte	W02
	.byte		N03   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N16   , Fs2 
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v056
	.byte	W04
	.byte	W02
@ 098   ----------------------------------------
	.byte		N03   , Cn1 , v127
	.byte		N01   , An2 
	.byte		N04   , An3 , v068
	.byte	W01
	.byte	W02
	.byte	W01
	.byte	W02
	.byte		        As4 , v096
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		TIE   , An2 , v116
	.byte		N02   , An3 , v100
	.byte	W02
	.byte	W04
	.byte		N03   , An3 , v076
	.byte	W03
	.byte	W03
	.byte		        An3 , v096
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v100
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N03   , Ds2 
	.byte		N03   , An3 , v092
	.byte	W03
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N05   , As4 , v076
	.byte	W05
	.byte	W01
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		N03   , An3 , v064
	.byte	W03
	.byte	W03
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v080
	.byte	W04
	.byte	W02
	.byte		N14   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N36   , Fs2 , v127, gtp2
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		        An3 , v068
	.byte	W04
	.byte	W02
@ 099   ----------------------------------------
mus_high_hopes_8_099:
	.byte		N02   , Ds2 , v104
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	PEND
	.byte	W01
	.byte	W03
	.byte		N04   , As4 
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v088
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , An3 , v072
	.byte	W04
	.byte	W02
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v092
	.byte	W01
	.byte		EOT   , An2 
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N03   , An3 , v056
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v120
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v072
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N44   , Fs2 , v127, gtp2
	.byte		N03   , An3 , v096
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v056
	.byte	W03
	.byte	W03
@ 100   ----------------------------------------
mus_high_hopes_8_100:
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	PEND
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte	W03
	.byte		N14   , Cn1 , v127
	.byte		N02   , Ds2 , v116
	.byte		N78   , An2 , v096, gtp1
	.byte		N03   , An3 , v092
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v072
	.byte	W03
	.byte	W03
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v088
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v096
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v068
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v127
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v080
	.byte	W04
	.byte	W02
	.byte		N11   , Cn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v080
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		        An3 , v056
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		N01   , Ds2 , v092
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		        As4 , v080
	.byte	W03
	.byte	W03
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N42   , Fs2 , v127
	.byte		N03   , An3 , v080
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v072
	.byte	W01
	.byte	W03
	.byte	W02
@ 101   ----------------------------------------
mus_high_hopes_8_101:
	.byte		N02   , Ds2 , v104
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	PEND
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v088
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v080
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v064
	.byte	W04
	.byte	W02
	.byte		N01   , Ds2 , v092
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v096
	.byte	W04
	.byte	W02
	.byte		N05   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v120
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v068
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v068
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		        As4 , v072
	.byte	W03
	.byte	W03
	.byte		N05   , Dn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N15   , Fs2 , v127
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W02
	.byte	W01
	.byte		N04   , An3 , v064
	.byte	W04
	.byte	W02
@ 102   ----------------------------------------
	.byte		N03   , Cn1 , v127
	.byte		N12   , An2 , v108
	.byte		N03   , An3 , v072
	.byte	W03
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		TIE   , An2 , v116
	.byte		N02   , An3 , v100
	.byte	W02
	.byte	W04
	.byte		N03   , An3 , v076
	.byte	W03
	.byte	W03
	.byte		        An3 , v096
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v100
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N03   , Ds2 
	.byte		N03   , An3 , v092
	.byte	W03
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N05   , As4 , v076
	.byte	W05
	.byte	W01
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		N03   , An3 , v064
	.byte	W03
	.byte	W03
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v080
	.byte	W04
	.byte	W02
	.byte		N14   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N36   , Fs2 , v127, gtp2
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		        An3 , v068
	.byte	W04
	.byte	W02
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_099
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v076
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v088
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , An3 , v072
	.byte	W04
	.byte	W02
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v092
	.byte	W01
	.byte		EOT   , An2 
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N03   , An3 , v056
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v120
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v072
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N44   , Fs2 , v127, gtp2
	.byte		N03   , An3 , v096
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v056
	.byte	W03
	.byte	W03
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_100
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N03   , As4 , v076
	.byte	W03
	.byte	W03
	.byte		N14   , Cn1 , v127
	.byte		N02   , Ds2 , v116
	.byte		N78   , An2 , v096, gtp1
	.byte		N03   , An3 , v092
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v072
	.byte	W03
	.byte	W03
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v088
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v096
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v068
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v127
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v080
	.byte	W04
	.byte	W02
	.byte		N11   , Cn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v080
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		        An3 , v056
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		N01   , Ds2 , v092
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		        As4 , v080
	.byte	W03
	.byte	W03
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N42   , Fs2 , v127
	.byte		N03   , An3 , v080
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v072
	.byte	W01
	.byte	W03
	.byte	W02
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_101
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v088
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v080
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v064
	.byte	W04
	.byte	W02
	.byte		N01   , Ds2 , v092
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v096
	.byte	W04
	.byte	W02
	.byte		N05   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v120
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v068
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v068
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		        As4 , v072
	.byte	W03
	.byte	W03
	.byte		N05   , Dn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N15   , Fs2 , v127
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W02
	.byte	W01
	.byte		N04   , An3 , v064
	.byte	W04
	.byte	W02
@ 106   ----------------------------------------
	.byte		N09   , Fn1 , v127
	.byte		N03   , An3 , v072
	.byte	W03
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W03
	.byte	W01
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		TIE   , An2 , v116
	.byte		N02   , An3 , v100
	.byte	W02
	.byte	W04
	.byte		N03   , An3 , v076
	.byte	W03
	.byte	W03
	.byte		        An3 , v096
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v100
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N03   , Ds2 
	.byte		N03   , An3 , v092
	.byte	W03
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N05   , As4 , v076
	.byte	W05
	.byte	W01
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		N03   , An3 , v064
	.byte	W03
	.byte	W03
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v080
	.byte	W04
	.byte	W02
	.byte		N14   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N36   , Fs2 , v127, gtp2
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		        An3 , v068
	.byte	W04
	.byte	W02
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_099
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v076
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v088
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , An3 , v072
	.byte	W04
	.byte	W02
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v092
	.byte	W01
	.byte		EOT   , An2 
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N03   , An3 , v056
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v120
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v072
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N44   , Fs2 , v127, gtp2
	.byte		N03   , An3 , v096
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v056
	.byte	W03
	.byte	W03
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_100
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N03   , As4 , v076
	.byte	W03
	.byte	W03
	.byte		N14   , Cn1 , v127
	.byte		N02   , Ds2 , v116
	.byte		N78   , An2 , v096, gtp1
	.byte		N03   , An3 , v092
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v072
	.byte	W03
	.byte	W03
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v088
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v096
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v068
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v127
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v080
	.byte	W04
	.byte	W02
	.byte		N11   , Cn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v080
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		        An3 , v056
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		N01   , Ds2 , v092
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		        As4 , v080
	.byte	W03
	.byte	W03
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N42   , Fs2 , v127
	.byte		N03   , An3 , v080
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v072
	.byte	W01
	.byte	W03
	.byte	W02
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_101
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v088
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v080
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v064
	.byte	W04
	.byte	W02
	.byte		N01   , Ds2 , v092
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , Cn1 , v127
	.byte		N04   , As4 , v096
	.byte	W04
	.byte	W02
	.byte		N05   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v120
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v068
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v068
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		        As4 , v072
	.byte	W03
	.byte	W03
	.byte		N05   , Dn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N15   , Fs2 , v127
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W02
	.byte	W01
	.byte		N05   , Gn1 , v127
	.byte		N04   , An3 , v064
	.byte	W04
	.byte	W01
	.byte	W01
@ 110   ----------------------------------------
mus_high_hopes_8_110:
	.byte		N08   , Fn1 , v127
	.byte		N03   , An3 , v072
	.byte	W03
	.byte	PEND
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		TIE   , An2 , v116
	.byte		N02   , An3 , v100
	.byte	W02
	.byte	W04
	.byte		N03   , An3 , v076
	.byte	W03
	.byte	W03
	.byte		        An3 , v096
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v100
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N03   , Ds2 
	.byte		N03   , An3 , v092
	.byte	W03
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N05   , As4 , v076
	.byte	W05
	.byte	W01
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		N03   , An3 , v064
	.byte	W03
	.byte	W03
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v080
	.byte	W04
	.byte	W02
	.byte		N14   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N36   , Fs2 , v127, gtp2
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		        An3 , v068
	.byte	W04
	.byte	W02
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_099
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v076
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v088
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , An3 , v072
	.byte	W04
	.byte	W02
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v092
	.byte	W01
	.byte		EOT   , An2 
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N03   , An3 , v056
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v120
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v072
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N44   , Fs2 , v127, gtp2
	.byte		N03   , An3 , v096
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v056
	.byte	W03
	.byte	W03
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_100
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N03   , As4 , v076
	.byte	W03
	.byte	W03
	.byte		N14   , Cn1 , v127
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v092
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v072
	.byte	W03
	.byte	W03
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v088
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v096
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v068
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v127
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v080
	.byte	W04
	.byte	W02
	.byte		N11   , Cn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v080
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		        An3 , v056
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		N01   , Ds2 , v092
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		        As4 , v080
	.byte	W03
	.byte	W03
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N42   , Fs2 , v127
	.byte		N03   , An3 , v080
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v072
	.byte	W04
	.byte	W02
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_101
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v088
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v080
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v064
	.byte	W04
	.byte	W02
	.byte		N01   , Ds2 , v092
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v096
	.byte	W04
	.byte	W02
	.byte		N05   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v120
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N01   , An2 , v008
	.byte		N03   , An3 , v068
	.byte	W01
	.byte		N01   , An2 , v008
	.byte	W01
	.byte		        An2 , v012
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v016
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v020
	.byte		N03   , An3 , v064
	.byte	W01
	.byte		N01   , An2 , v020
	.byte	W01
	.byte		        An2 , v024
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v028
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N02   , Ds2 , v108
	.byte		N01   , An2 , v032
	.byte		N03   , An3 , v068
	.byte	W01
	.byte		N01   , An2 , v036
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v040
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v044
	.byte	W01
	.byte		N01   
	.byte		N03   , As4 , v072
	.byte	W01
	.byte		N01   , An2 , v048
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v052
	.byte	W01
	.byte		N05   , Dn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N15   , Fs2 , v127
	.byte		N01   , An2 , v052
	.byte		N03   , An3 , v076
	.byte	W01
	.byte		N01   , An2 , v052
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v056
	.byte	W01
	.byte		N01   
	.byte		N04   , An3 , v064
	.byte	W01
	.byte		N01   , An2 , v056
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N02   
	.byte	W01
	.byte		N01   , An2 , v060
	.byte	W01
@ 114   ----------------------------------------
	.byte		N09   , Cn1 , v127
	.byte		N01   , An2 , v060
	.byte		N03   , An3 , v072
	.byte	W01
	.byte		N01   , An2 , v060
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v064
	.byte	W01
	.byte		N01   
	.byte		N04   , As4 , v092
	.byte	W01
	.byte		N01   , An2 , v064
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W01
	.byte		        An2 , v068
	.byte	W01
	.byte		N13   , Cn1 , v127
	.byte		TIE   , An2 , v116
	.byte		N02   , An3 , v100
	.byte	W02
	.byte	W04
	.byte		N03   , An3 , v076
	.byte	W03
	.byte	W03
	.byte		        An3 , v096
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v100
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N03   , Ds2 
	.byte		N03   , An3 , v092
	.byte	W03
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N05   , As4 , v076
	.byte	W05
	.byte	W01
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		N03   , An3 , v064
	.byte	W03
	.byte	W03
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v080
	.byte	W04
	.byte	W02
	.byte		N14   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N36   , Fs2 , v127, gtp2
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		        An3 , v068
	.byte	W04
	.byte	W02
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_099
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v076
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v088
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , An3 , v072
	.byte	W04
	.byte	W02
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v092
	.byte	W01
	.byte		EOT   , An2 
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N03   , An3 , v056
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v120
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v072
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N44   , Fs2 , v127, gtp2
	.byte		N03   , An3 , v096
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v056
	.byte	W03
	.byte	W03
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_100
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N03   , As4 , v076
	.byte	W03
	.byte	W03
	.byte		N14   , Cn1 , v127
	.byte		N02   , Ds2 , v116
	.byte		N78   , An2 , v096, gtp1
	.byte		N03   , An3 , v092
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v072
	.byte	W03
	.byte	W03
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v088
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v096
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v068
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v127
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v080
	.byte	W04
	.byte	W02
	.byte		N11   , Cn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v080
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		        An3 , v056
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		N01   , Ds2 , v092
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		        As4 , v080
	.byte	W03
	.byte	W03
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N42   , Fs2 , v127
	.byte		N03   , An3 , v080
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v072
	.byte	W01
	.byte	W03
	.byte	W02
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_101
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v088
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v080
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v064
	.byte	W04
	.byte	W02
	.byte		N01   , Ds2 , v092
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v096
	.byte	W04
	.byte	W02
	.byte		N05   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v120
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v068
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v068
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		        As4 , v072
	.byte	W03
	.byte	W03
	.byte		N05   , Dn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N15   , Fs2 , v127
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W02
	.byte	W01
	.byte		N05   , Gn1 , v127
	.byte		N04   , An3 , v064
	.byte	W04
	.byte	W01
	.byte	W01
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_110
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		TIE   , An2 , v116
	.byte		N02   , An3 , v100
	.byte	W02
	.byte	W04
	.byte		N03   , An3 , v076
	.byte	W03
	.byte	W03
	.byte		        An3 , v096
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v100
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N03   , Ds2 
	.byte		N03   , An3 , v092
	.byte	W03
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N05   , As4 , v076
	.byte	W05
	.byte	W01
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		N03   , An3 , v064
	.byte	W03
	.byte	W03
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v080
	.byte	W04
	.byte	W02
	.byte		N14   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N36   , Fs2 , v127, gtp2
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		        An3 , v068
	.byte	W04
	.byte	W02
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_099
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v076
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v088
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , An3 , v072
	.byte	W04
	.byte	W02
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v092
	.byte	W01
	.byte		EOT   , An2 
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N03   , An3 , v056
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v120
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v072
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N44   , Fs2 , v127, gtp2
	.byte		N03   , An3 , v096
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v056
	.byte	W03
	.byte	W03
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_100
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N03   , As4 , v076
	.byte	W03
	.byte	W03
	.byte		N14   , Cn1 , v127
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v092
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v072
	.byte	W03
	.byte	W03
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v088
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v096
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v068
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v127
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v080
	.byte	W04
	.byte	W02
	.byte		N11   , Cn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v080
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		        An3 , v056
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		N01   , Ds2 , v092
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		        As4 , v080
	.byte	W03
	.byte	W03
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N42   , Fs2 , v127
	.byte		N03   , An3 , v080
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v072
	.byte	W04
	.byte	W02
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_101
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v088
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N28   , An2 , v127, gtp1
	.byte		N03   , An3 , v080
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v064
	.byte	W04
	.byte	W02
	.byte		N01   , Ds2 , v092
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v096
	.byte	W04
	.byte	W02
	.byte		N05   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v120
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v068
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v068
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		        As4 , v072
	.byte	W03
	.byte	W03
	.byte		N05   , Dn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N15   , Fs2 , v127
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W02
	.byte	W01
	.byte		N04   , An3 , v064
	.byte	W04
	.byte	W02
@ 122   ----------------------------------------
	.byte		N06   , Cn1 , v127
	.byte		N05   , An2 
	.byte		N03   , An3 , v072
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		TIE   , An2 , v116
	.byte		N02   , An3 , v100
	.byte	W02
	.byte	W04
	.byte		N03   , An3 , v076
	.byte	W03
	.byte	W03
	.byte		        An3 , v096
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v100
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N03   , Ds2 
	.byte		N03   , An3 , v092
	.byte	W03
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N05   , As4 , v076
	.byte	W05
	.byte	W01
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		N03   , An3 , v064
	.byte	W03
	.byte	W03
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v080
	.byte	W04
	.byte	W02
	.byte		N14   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N36   , Fs2 , v127, gtp2
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		        An3 , v068
	.byte	W04
	.byte	W02
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_099
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v076
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v088
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , An3 , v072
	.byte	W04
	.byte	W02
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v092
	.byte	W01
	.byte		EOT   , An2 
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N03   , An3 , v056
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v120
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v072
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N44   , Fs2 , v127, gtp2
	.byte		N03   , An3 , v096
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v056
	.byte	W03
	.byte	W03
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_100
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N03   , As4 , v076
	.byte	W03
	.byte	W03
	.byte		N14   , Cn1 , v127
	.byte		N02   , Ds2 , v116
	.byte		N28   , An2 , v116, gtp1
	.byte		N03   , An3 , v092
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v072
	.byte	W03
	.byte	W03
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v088
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v096
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte		        An3 , v068
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v127
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v080
	.byte	W04
	.byte	W02
	.byte		N11   , Cn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v080
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		        An3 , v056
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		N01   , Ds2 , v092
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		        As4 , v080
	.byte	W03
	.byte	W03
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N42   , Fs2 , v127
	.byte		N03   , An3 , v080
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v072
	.byte	W04
	.byte	W02
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_101
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v088
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v080
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v064
	.byte	W04
	.byte	W02
	.byte		N01   , Ds2 , v092
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v096
	.byte	W04
	.byte	W02
	.byte		N05   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v120
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v068
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v068
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		        As4 , v072
	.byte	W03
	.byte	W03
	.byte		N05   , Dn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N15   , Fs2 , v127
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W02
	.byte	W01
	.byte		N04   , An3 , v064
	.byte	W04
	.byte	W02
@ 126   ----------------------------------------
	.byte		N03   , An3 , v072
	.byte	W03
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		TIE   , An2 , v116
	.byte		N02   , An3 , v100
	.byte	W02
	.byte	W04
	.byte		N03   , An3 , v076
	.byte	W03
	.byte	W03
	.byte		        An3 , v096
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v100
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N03   , Ds2 
	.byte		N03   , An3 , v092
	.byte	W03
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N05   , As4 , v076
	.byte	W05
	.byte	W01
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		N03   , An3 , v064
	.byte	W03
	.byte	W03
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v080
	.byte	W04
	.byte	W02
	.byte		N14   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N36   , Fs2 , v127, gtp2
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		        An3 , v068
	.byte	W04
	.byte	W02
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_099
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v076
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v088
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , An3 , v072
	.byte	W04
	.byte	W02
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v092
	.byte	W01
	.byte		EOT   , An2 
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N03   , An3 , v056
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v120
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v072
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N44   , Fs2 , v127, gtp2
	.byte		N03   , An3 , v096
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v056
	.byte	W03
	.byte	W03
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_100
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N03   , As4 , v076
	.byte	W03
	.byte	W03
	.byte		N14   , Cn1 , v127
	.byte		N02   , Ds2 , v116
	.byte		N78   , An2 , v096, gtp1
	.byte		N03   , An3 , v092
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v072
	.byte	W03
	.byte	W03
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v088
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v096
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v068
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v127
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v080
	.byte	W04
	.byte	W02
	.byte		N11   , Cn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v080
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		        An3 , v056
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		N01   , Ds2 , v092
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		        As4 , v080
	.byte	W03
	.byte	W03
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N42   , Fs2 , v127
	.byte		N03   , An3 , v080
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v072
	.byte	W01
	.byte	W03
	.byte	W02
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_101
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v088
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v080
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v064
	.byte	W04
	.byte	W02
	.byte		N01   , Ds2 , v092
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v096
	.byte	W04
	.byte	W02
	.byte		N05   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v120
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v068
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte	W03
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v068
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		        As4 , v072
	.byte	W03
	.byte	W03
	.byte		N05   , Dn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N15   , Fs2 , v127
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W02
	.byte	W01
	.byte		N05   , Gn1 , v127
	.byte		N04   , An3 , v064
	.byte	W04
	.byte	W01
	.byte	W01
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_110
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		VOL   , 90*mus_high_hopes_mvl/mxv
	.byte		N13   , Cn1 , v127
	.byte		TIE   , An2 , v116
	.byte		N02   , An3 , v100
	.byte	W02
	.byte	W04
	.byte		N03   , An3 , v076
	.byte	W03
	.byte		VOL   , 89*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N03   , An3 , v096
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		VOL   , 88*mus_high_hopes_mvl/mxv
	.byte		N04   , As4 , v100
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N03   , Ds2 
	.byte		N03   , An3 , v092
	.byte	W01
	.byte		VOL   , 87*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W03
	.byte		N03   , An3 , v064
	.byte	W03
	.byte	W01
	.byte		VOL   , 86*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		N03   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		N05   , As4 , v076
	.byte	W01
	.byte		VOL   , 85*mus_high_hopes_mvl/mxv
	.byte	W04
	.byte	W01
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W01
	.byte		VOL   , 84*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W02
	.byte		N03   , An3 , v064
	.byte	W03
	.byte	W03
	.byte		VOL   , 83*mus_high_hopes_mvl/mxv
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v080
	.byte	W03
	.byte		VOL   , 82*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W02
	.byte		N14   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N36   , Fs2 , v127, gtp2
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W02
	.byte		VOL   , 81*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		N04   , An3 , v068
	.byte	W04
	.byte	W02
@ 131   ----------------------------------------
	.byte		N02   , Ds2 , v104
	.byte		N03   , An3 , v076
	.byte	W01
	.byte		VOL   , 80*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 
	.byte	W04
	.byte		VOL   , 79*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v088
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		VOL   , 78*mus_high_hopes_mvl/mxv
	.byte		N04   , An3 , v072
	.byte	W04
	.byte	W02
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		VOL   , 77*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		VOL   , 76*mus_high_hopes_mvl/mxv
	.byte		N06   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v092
	.byte	W01
	.byte		EOT   , An2 
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N03   , An3 , v056
	.byte	W01
	.byte		VOL   , 75*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W03
	.byte		N03   , Cn1 , v120
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		VOL   , 74*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		VOL   , 73*mus_high_hopes_mvl/mxv
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v072
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte		VOL   , 72*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		VOL   , 71*mus_high_hopes_mvl/mxv
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N44   , Fs2 , v127, gtp2
	.byte		N03   , An3 , v096
	.byte	W01
	.byte		VOL   , 70*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N03   , An3 , v056
	.byte	W03
	.byte	W01
	.byte		VOL   , 69*mus_high_hopes_mvl/mxv
	.byte	W02
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_100
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N03   , As4 , v076
	.byte	W01
	.byte		VOL   , 68*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W03
	.byte		N14   , Cn1 , v127
	.byte		N02   , Ds2 , v116
	.byte		N78   , An2 , v096, gtp1
	.byte		N03   , An3 , v092
	.byte	W02
	.byte	W01
	.byte		VOL   , 67*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N03   , An3 , v072
	.byte	W03
	.byte	W03
	.byte		VOL   , 66*mus_high_hopes_mvl/mxv
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v088
	.byte	W01
	.byte		VOL   , 65*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v096
	.byte	W02
	.byte	W01
	.byte	W01
	.byte		VOL   , 64*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		N03   , An3 , v068
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v127
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W01
	.byte		VOL   , 63*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v080
	.byte	W03
	.byte		VOL   , 62*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W02
	.byte		N11   , Cn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v080
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		VOL   , 61*mus_high_hopes_mvl/mxv
	.byte		N03   , An3 , v056
	.byte	W03
	.byte	W02
	.byte	W01
	.byte		N01   , Ds2 , v092
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte		VOL   , 60*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N03   , As4 , v080
	.byte	W03
	.byte	W01
	.byte		VOL   , 59*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N42   , Fs2 , v127
	.byte		N03   , An3 , v080
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v072
	.byte	W01
	.byte		VOL   , 58*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte	W02
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_101
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		VOL   , 57*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		N04   , As4 , v088
	.byte	W04
	.byte	W02
	.byte		VOL   , 56*mus_high_hopes_mvl/mxv
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v080
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , An3 , v064
	.byte	W03
	.byte		VOL   , 55*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W02
	.byte		N01   , Ds2 , v092
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		VOL   , 54*mus_high_hopes_mvl/mxv
	.byte		N04   , As4 , v096
	.byte	W04
	.byte	W02
	.byte		N05   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v076
	.byte	W01
	.byte		VOL   , 53*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W01
	.byte	W02
	.byte	W01
	.byte		N03   , An3 , v064
	.byte	W03
	.byte	W01
	.byte		VOL   , 52*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte		N03   , Cn1 , v120
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		VOL   , 51*mus_high_hopes_mvl/mxv
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v068
	.byte	W02
	.byte	W01
	.byte		VOL   , 50*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N03   , An3 , v064
	.byte	W03
	.byte	W03
	.byte		VOL   , 49*mus_high_hopes_mvl/mxv
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v068
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		        As4 , v072
	.byte	W01
	.byte		VOL   , 48*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W03
	.byte		N05   , Dn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N15   , Fs2 , v127
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W01
	.byte		VOL   , 47*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		N04   , An3 , v064
	.byte	W04
	.byte	W02
@ 134   ----------------------------------------
	.byte		N03   , An3 , v072
	.byte	W01
	.byte		VOL   , 46*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W03
	.byte		VOL   , 45*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		TIE   , An2 , v116
	.byte		N02   , An3 , v100
	.byte	W02
	.byte	W04
	.byte		VOL   , 44*mus_high_hopes_mvl/mxv
	.byte		N03   , An3 , v076
	.byte	W03
	.byte	W03
	.byte		        An3 , v096
	.byte	W01
	.byte	W01
	.byte		VOL   , 43*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v100
	.byte	W04
	.byte	W01
	.byte		VOL   , 42*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		N06   , Dn1 , v127
	.byte		N03   , Ds2 
	.byte		N03   , An3 , v092
	.byte	W03
	.byte	W03
	.byte		        An3 , v064
	.byte	W02
	.byte		VOL   , 41*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W03
	.byte		N03   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W01
	.byte		VOL   , 40*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W02
	.byte		N05   , As4 , v076
	.byte	W05
	.byte	W01
	.byte		VOL   , 39*mus_high_hopes_mvl/mxv
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 
	.byte		N04   , An3 , v092
	.byte	W02
	.byte	W02
	.byte	W02
	.byte		N03   , An3 , v064
	.byte	W03
	.byte		VOL   , 38*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		VOL   , 37*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		N04   , As4 , v080
	.byte	W04
	.byte	W02
	.byte		N14   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N36   , Fs2 , v127, gtp2
	.byte		N04   , An3 , v092
	.byte	W02
	.byte		VOL   , 36*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W02
	.byte		N04   , An3 , v068
	.byte	W04
	.byte	W01
	.byte		VOL   , 35*mus_high_hopes_mvl/mxv
	.byte	W01
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_099
	.byte	W01
	.byte	W03
	.byte		VOL   , 34*mus_high_hopes_mvl/mxv
	.byte		N04   , As4 , v076
	.byte	W04
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v088
	.byte	W01
	.byte	W02
	.byte		VOL   , 33*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N04   , An3 , v072
	.byte	W04
	.byte	W02
	.byte		VOL   , 32*mus_high_hopes_mvl/mxv
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W02
	.byte		VOL   , 31*mus_high_hopes_mvl/mxv
	.byte	W02
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v092
	.byte	W01
	.byte		EOT   , An2 
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		VOL   , 30*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		N03   , An3 , v056
	.byte	W03
	.byte	W03
	.byte		VOL   , 29*mus_high_hopes_mvl/mxv
	.byte		N03   , Cn1 , v120
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W03
	.byte		VOL   , 28*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W02
	.byte		N12   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v072
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		VOL   , 27*mus_high_hopes_mvl/mxv
	.byte		N03   , An3 , v064
	.byte	W03
	.byte	W03
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v072
	.byte	W01
	.byte	W01
	.byte		VOL   , 26*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W01
	.byte		VOL   , 25*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N44   , Fs2 , v127, gtp2
	.byte		N03   , An3 , v096
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v056
	.byte	W02
	.byte		VOL   , 24*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W03
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_high_hopes_8_100
	.byte	W01
	.byte	W01
	.byte		VOL   , 23*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N03   , As4 , v076
	.byte	W03
	.byte	W03
	.byte		VOL   , 22*mus_high_hopes_mvl/mxv
	.byte		N14   , Cn1 , v127
	.byte		N02   , Ds2 , v116
	.byte		N78   , An2 , v096, gtp1
	.byte		N03   , An3 , v092
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v072
	.byte	W02
	.byte		VOL   , 21*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W03
	.byte		N01   , Ds2 , v096
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		VOL   , 20*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		N04   , As4 , v088
	.byte	W04
	.byte	W02
	.byte		N06   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v096
	.byte	W02
	.byte		VOL   , 19*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W03
	.byte		N03   , An3 , v068
	.byte	W03
	.byte		VOL   , 18*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N03   , Cn1 , v127
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		VOL   , 17*mus_high_hopes_mvl/mxv
	.byte		N04   , As4 , v080
	.byte	W04
	.byte	W02
	.byte		N11   , Cn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N03   , An3 , v080
	.byte	W01
	.byte	W02
	.byte		VOL   , 16*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N03   , An3 , v056
	.byte	W03
	.byte	W02
	.byte		VOL   , 15*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		N01   , Ds2 , v092
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W02
	.byte	W03
	.byte		        As4 , v080
	.byte	W02
	.byte		VOL   , 14*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W03
	.byte		N13   , Dn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N42   , Fs2 , v127
	.byte		N03   , An3 , v080
	.byte	W02
	.byte	W01
	.byte	W02
	.byte		VOL   , 13*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		N04   , An3 , v072
	.byte	W01
	.byte	W03
	.byte	W02
@ 137   ----------------------------------------
	.byte		VOL   , 12*mus_high_hopes_mvl/mxv
	.byte		N02   , Ds2 , v104
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v088
	.byte	W03
	.byte		VOL   , 11*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W02
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v080
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		VOL   , 10*mus_high_hopes_mvl/mxv
	.byte		N04   , An3 , v064
	.byte	W04
	.byte	W02
	.byte		N01   , Ds2 , v092
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte		VOL   , 9*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W03
	.byte		N04   , As4 , v096
	.byte	W04
	.byte	W01
	.byte		VOL   , 8*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		N05   , Dn1 , v127
	.byte		N02   , Ds2 
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte	W02
	.byte	W01
	.byte		VOL   , 7*mus_high_hopes_mvl/mxv
	.byte		N03   , An3 , v064
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v120
	.byte		N02   , Ds2 , v116
	.byte		N03   , An3 , v076
	.byte	W02
	.byte	W01
	.byte		VOL   , 6*mus_high_hopes_mvl/mxv
	.byte	W03
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	W02
	.byte		VOL   , 5*mus_high_hopes_mvl/mxv
	.byte		N13   , Cn1 , v127
	.byte		N02   , Ds2 , v120
	.byte		N03   , An3 , v068
	.byte	W02
	.byte	W01
	.byte	W03
	.byte		        An3 , v064
	.byte	W02
	.byte		VOL   , 4*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W03
	.byte		N02   , Ds2 , v108
	.byte		N03   , An3 , v068
	.byte	W01
	.byte	W01
	.byte	W01
	.byte	W02
	.byte		VOL   , 3*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte		N03   , As4 , v072
	.byte	W03
	.byte	W03
	.byte		N05   , Dn1 , v127
	.byte		N01   , Ds2 , v116
	.byte		N15   , Fs2 , v127
	.byte		N03   , An3 , v076
	.byte	W01
	.byte	W01
	.byte		VOL   , 2*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W02
	.byte	W01
	.byte		N04   , An3 , v064
	.byte	W03
	.byte		VOL   , 1*mus_high_hopes_mvl/mxv
	.byte	W01
	.byte	W02
@ 138   ----------------------------------------
	.byte		N03   , An3 , v072
	.byte	W03
	.byte	W03
	.byte		VOL   , 0*mus_high_hopes_mvl/mxv
	.byte		N04   , As4 , v092
	.byte	W04
	.byte	FINE

@******************************************************@
	.align	2

mus_high_hopes:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_high_hopes_pri	@ Priority
	.byte	mus_high_hopes_rev	@ Reverb.

	.word	mus_high_hopes_grp

	.word	mus_high_hopes_1
	.word	mus_high_hopes_2
	.word	mus_high_hopes_3
	.word	mus_high_hopes_4
	.word	mus_high_hopes_5
	.word	mus_high_hopes_6
	.word	mus_high_hopes_7
	.word	mus_high_hopes_8

	.end
