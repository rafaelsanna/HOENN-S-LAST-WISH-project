	.include "MPlayDef.s"

	.equ	mus_poke_mart_grp, voicegroup_poke_mart
	.equ	mus_poke_mart_pri, 0
	.equ	mus_poke_mart_rev, reverb_set+50
	.equ	mus_poke_mart_mvl, 85
	.equ	mus_poke_mart_key, 0
	.equ	mus_poke_mart_tbs, 1
	.equ	mus_poke_mart_exg, 1
	.equ	mus_poke_mart_cmp, 1

	.section .rodata
	.global	mus_poke_mart
	.align	2

@**************** Track 1 (Midi-Chn.2) ****************@

mus_poke_mart_1:
	.byte	KEYSH , mus_poke_mart_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 172*mus_poke_mart_tbs/2
	.byte		VOICE , 127
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N02   , Fs4 , v040
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W16
	.byte		N02   
	.byte	W16
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
@ 002   ----------------------------------------
mus_poke_mart_1_002:
	.byte		N02   , Fs4 , v040
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W16
	.byte		N02   
	.byte	W16
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_1_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_1_002
mus_poke_mart_1_B1:
@ 005   ----------------------------------------
mus_poke_mart_1_005:
	.byte	W48
	.byte		N02   , Fs4 , v040
	.byte	W16
	.byte		N02   
	.byte	W16
	.byte		N02   
	.byte	W16
	.byte	PEND
@ 006   ----------------------------------------
mus_poke_mart_1_006:
	.byte		N02   , Fs4 , v040
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W16
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W16
	.byte		N02   
	.byte	W16
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte	PEND
@ 007   ----------------------------------------
mus_poke_mart_1_007:
	.byte		N02   , Fs4 , v040
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W16
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W16
	.byte		N02   
	.byte	W16
	.byte		N02   
	.byte	W16
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_1_006
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_1_007
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_1_006
@ 011   ----------------------------------------
mus_poke_mart_1_011:
	.byte		N02   , Fs4 , v040
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W80
	.byte	PEND
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_1_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_1_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_1_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_1_006
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_1_007
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_1_006
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_1_011
@ 020   ----------------------------------------
	.byte	W88
	.byte		N02   , Fs4 , v040
	.byte	W08
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
	.byte	GOTO
	 .word	mus_poke_mart_1_B1
mus_poke_mart_1_B2:
@ 033   ----------------------------------------
	.byte		VOICE , 127
	.byte		        127
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_poke_mart_2:
	.byte	KEYSH , mus_poke_mart_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 35
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
mus_poke_mart_2_B1:
@ 004   ----------------------------------------
mus_poke_mart_2_004:
	.byte		N16   , Bn0 , v100
	.byte	W48
	.byte		N16   
	.byte	W48
	.byte	PEND
@ 005   ----------------------------------------
mus_poke_mart_2_005:
	.byte		N16   , Bn0 , v100
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N16   
	.byte	W48
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_2_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_2_005
@ 008   ----------------------------------------
mus_poke_mart_2_008:
	.byte		N16   , En1 , v100
	.byte	W48
	.byte		N16   
	.byte	W48
	.byte	PEND
@ 009   ----------------------------------------
mus_poke_mart_2_009:
	.byte		N16   , Cs1 , v100
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N16   
	.byte	W48
	.byte	PEND
@ 010   ----------------------------------------
mus_poke_mart_2_010:
	.byte		N16   , Fs1 , v100
	.byte	W48
	.byte		N16   
	.byte	W48
	.byte	PEND
@ 011   ----------------------------------------
mus_poke_mart_2_011:
	.byte		N16   , Fs1 , v100
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_2_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_2_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_2_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_2_005
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_2_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_2_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_2_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_2_011
@ 020   ----------------------------------------
mus_poke_mart_2_020:
	.byte		N16   , Ds1 , v100
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N16   
	.byte	W48
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_2_020
@ 022   ----------------------------------------
mus_poke_mart_2_022:
	.byte		N16   , Gs1 , v100
	.byte	W16
	.byte		N08   , Cn2 
	.byte	W08
	.byte		N16   , Ds2 
	.byte	W16
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N08   , Bn1 
	.byte	W08
	.byte		N16   , Ds2 
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
mus_poke_mart_2_023:
	.byte		N16   , Fs1 , v100
	.byte	W16
	.byte		N08   , Gn1 
	.byte	W08
	.byte		N16   , Fs1 
	.byte	W24
	.byte		N24   , Fn1 
	.byte	W24
	.byte		N08   , En1 
	.byte	W16
	.byte		        Fn1 
	.byte	W08
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_2_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_2_020
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_2_022
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_2_023
@ 028   ----------------------------------------
	.byte		N16   , En1 , v100
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N16   
	.byte	W24
@ 029   ----------------------------------------
	.byte		        Fn1 
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N16   
	.byte	W24
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_2_011
@ 031   ----------------------------------------
	.byte		N16   , Fs1 , v100
	.byte	W24
	.byte		        Cs1 
	.byte	W24
	.byte		        As0 
	.byte	W24
	.byte		        Fs0 
	.byte	W24
	.byte	GOTO
	 .word	mus_poke_mart_2_B1
mus_poke_mart_2_B2:
@ 032   ----------------------------------------
	.byte		VOICE , 35
	.byte		        35
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.4) ****************@

mus_poke_mart_3:
	.byte	KEYSH , mus_poke_mart_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 83
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
mus_poke_mart_3_B1:
@ 004   ----------------------------------------
mus_poke_mart_3_004:
	.byte	W48
	.byte		N08   , Ds5 , v076
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		        Ds4 
	.byte	W08
	.byte		        Ds5 
	.byte	W08
	.byte		        Ds4 
	.byte	W08
	.byte	PEND
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_3_004
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W48
	.byte		N08   , En5 , v076
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Ds5 
	.byte	W08
	.byte		        Cs5 
	.byte	W08
@ 009   ----------------------------------------
	.byte		N48   , Bn4 
	.byte	W48
	.byte		N24   , As4 
	.byte	W24
	.byte		        Gs4 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N44   , Fs4 
	.byte	W44
	.byte		N02   , Gs4 
	.byte	W02
	.byte		        As4 
	.byte	W02
	.byte		N48   , Gs4 
	.byte	W48
@ 011   ----------------------------------------
	.byte		N08   , As4 
	.byte	W08
	.byte		        Bn4 
	.byte	W08
	.byte		        Cs5 
	.byte	W08
	.byte		        Ds5 
	.byte	W08
	.byte		        En5 
	.byte	W08
	.byte		        Fs5 
	.byte	W56
@ 012   ----------------------------------------
mus_poke_mart_3_012:
	.byte	W48
	.byte		N08   , Bn5 , v076
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		        Bn4 
	.byte	W08
	.byte		        Bn5 
	.byte	W08
	.byte		        Bn4 
	.byte	W08
	.byte	PEND
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_3_012
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W48
	.byte		N08   , En6 , v076
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Ds6 
	.byte	W08
	.byte		        Cs6 
	.byte	W08
@ 017   ----------------------------------------
	.byte		N48   , Gs5 
	.byte	W48
	.byte		N24   , Bn5 
	.byte	W24
	.byte		        Gs5 
	.byte	W24
@ 018   ----------------------------------------
	.byte		N44   , As5 
	.byte	W44
	.byte		N02   , Bn5 
	.byte	W02
	.byte		        As5 
	.byte	W02
	.byte		N48   , Gs5 
	.byte	W48
@ 019   ----------------------------------------
	.byte		N08   , As5 
	.byte	W16
	.byte		        Bn5 
	.byte	W08
	.byte		        Cs6 
	.byte	W16
	.byte		        Ds6 
	.byte	W08
	.byte		        En6 
	.byte	W48
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
mus_poke_mart_3_021:
	.byte		N08   , Ds5 , v076
	.byte	W08
	.byte		        Ds6 
	.byte	W08
	.byte		        Ds5 
	.byte	W08
	.byte		        Ds6 
	.byte	W16
	.byte		        Ds5 
	.byte	W08
	.byte		        Ds6 
	.byte	W16
	.byte		        Ds5 
	.byte	W08
	.byte		        Ds6 
	.byte	W16
	.byte		        Ds5 
	.byte	W08
	.byte	PEND
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_3_021
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
	.byte	GOTO
	 .word	mus_poke_mart_3_B1
mus_poke_mart_3_B2:
@ 032   ----------------------------------------
	.byte		VOICE , 83
	.byte		        83
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.5) ****************@

mus_poke_mart_4:
	.byte	KEYSH , mus_poke_mart_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 87
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W72
	.byte		N08   , Fs3 , v100
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        As3 
	.byte	W08
mus_poke_mart_4_B1:
@ 004   ----------------------------------------
mus_poke_mart_4_004:
	.byte		N08   , Cs4 , v100
	.byte	W16
	.byte		        Fs3 
	.byte	W08
	.byte		        Ds4 
	.byte	W16
	.byte		N40   , Bn3 
	.byte	W40
	.byte		N08   
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte	PEND
@ 005   ----------------------------------------
	.byte		        Ds4 
	.byte	W16
	.byte		        Dn4 
	.byte	W08
	.byte		        Ds4 
	.byte	W16
	.byte		N16   , En4 
	.byte	W16
	.byte		N02   , Ds4 
	.byte	W02
	.byte		        Cs4 
	.byte	W02
	.byte		        Bn3 
	.byte	W02
	.byte		        As3 
	.byte	W02
	.byte		        Gs3 
	.byte	W02
	.byte		        Fs3 
	.byte	W02
	.byte		        En3 
	.byte	W04
	.byte		N08   , Ds4 
	.byte	W08
	.byte		        En4 
	.byte	W08
	.byte		        Fs4 
	.byte	W08
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_4_004
@ 007   ----------------------------------------
	.byte		N08   , Ds4 , v100
	.byte	W16
	.byte		        Dn4 
	.byte	W08
	.byte		        Ds4 
	.byte	W14
	.byte		N02   , Gn4 
	.byte	W02
	.byte		N16   , Gs4 
	.byte	W16
	.byte		N02   , Fs4 
	.byte	W02
	.byte		        En4 
	.byte	W02
	.byte		        Ds4 
	.byte	W02
	.byte		        Cs4 
	.byte	W02
	.byte		        Bn3 
	.byte	W02
	.byte		        As3 
	.byte	W02
	.byte		        Gs3 
	.byte	W04
	.byte		N08   , En4 
	.byte	W08
	.byte		        Ds4 
	.byte	W09
	.byte		        Cs4 
	.byte	W07
@ 008   ----------------------------------------
	.byte		        Ds4 
	.byte	W16
	.byte		        Gs3 
	.byte	W08
	.byte		        En4 
	.byte	W16
	.byte		N40   , Cs4 
	.byte	W40
	.byte		N02   , Bn3 
	.byte	W02
	.byte		        As3 
	.byte	W02
	.byte		        Gs3 
	.byte	W02
	.byte		        Fs3 
	.byte	W02
	.byte		        En3 
	.byte	W02
	.byte		N14   , Ds3 
	.byte	W06
@ 009   ----------------------------------------
	.byte	W24
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
@ 010   ----------------------------------------
mus_poke_mart_4_010:
	.byte		N40   , Ds4 , v100
	.byte	W40
	.byte		N04   , En4 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N08   , Bn3 
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte	PEND
@ 011   ----------------------------------------
	.byte		        Cs4 
	.byte	W08
	.byte		N02   , Bn3 
	.byte	W02
	.byte		        As3 
	.byte	W02
	.byte		        Gs3 
	.byte	W02
	.byte		        Fs3 
	.byte	W02
	.byte		        En3 
	.byte	W02
	.byte		        Ds3 
	.byte	W02
	.byte		        Cs3 
	.byte	W04
	.byte		        Bn2 
	.byte	W02
	.byte		        Cs3 
	.byte	W02
	.byte		        Ds3 
	.byte	W02
	.byte		        Fs3 
	.byte	W02
	.byte		        An3 
	.byte	W02
	.byte		        As3 
	.byte	W02
	.byte		        Bn3 
	.byte	W02
	.byte		        Cs4 
	.byte	W02
	.byte		        Ds4 
	.byte	W02
	.byte		        Fs4 
	.byte	W02
	.byte		        An4 
	.byte	W02
	.byte		        As4 
	.byte	W02
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N08   , Fs4 
	.byte	W08
	.byte		        En4 
	.byte	W08
	.byte		        Ds4 
	.byte	W08
@ 012   ----------------------------------------
	.byte		N22   , Cs4 
	.byte	W22
	.byte		N02   , Dn4 
	.byte	W02
	.byte		N16   , Ds4 
	.byte	W16
	.byte		N40   , Bn3 
	.byte	W40
	.byte		N08   
	.byte	W08
	.byte		        Cs4 
	.byte	W08
@ 013   ----------------------------------------
	.byte		        Ds4 
	.byte	W40
	.byte		        En4 
	.byte	W24
	.byte		        Ds4 
	.byte	W08
	.byte		        En4 
	.byte	W16
	.byte		        Fs4 
	.byte	W08
@ 014   ----------------------------------------
	.byte	W16
	.byte		        Fs3 
	.byte	W08
	.byte		        Ds4 
	.byte	W16
	.byte		N40   , Bn3 
	.byte	W40
	.byte		N08   
	.byte	W08
	.byte		        Cs4 
	.byte	W08
@ 015   ----------------------------------------
	.byte		        Ds4 
	.byte	W36
	.byte	W02
	.byte		N02   , Fs4 
	.byte	W02
	.byte		N08   , Gs4 
	.byte	W24
	.byte		        Fs4 
	.byte	W16
	.byte		        Bn3 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
@ 016   ----------------------------------------
	.byte		        Ds4 
	.byte	W16
	.byte		        Gs3 
	.byte	W08
	.byte		        En4 
	.byte	W16
	.byte		N56   , Cs4 
	.byte	W56
@ 017   ----------------------------------------
	.byte	W24
	.byte		N08   , Gs3 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_4_010
@ 019   ----------------------------------------
	.byte		N24   , Cs4 , v100
	.byte	W72
	.byte		N08   , Bn3 
	.byte	W16
	.byte		        Cs4 
	.byte	W08
@ 020   ----------------------------------------
mus_poke_mart_4_020:
	.byte		N08   , Ds4 , v100
	.byte	W24
	.byte		N08   
	.byte	W24
	.byte		N16   
	.byte	W16
	.byte		N08   , Dn4 
	.byte	W08
	.byte		        Ds4 
	.byte	W08
	.byte		        Dn4 
	.byte	W08
	.byte		N16   , As4 
	.byte	W08
	.byte	PEND
@ 021   ----------------------------------------
	.byte	W24
	.byte		N08   , Gn4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N22   
	.byte	W22
	.byte		N02   , Dn4 
	.byte	W02
	.byte		N08   , Ds4 
	.byte	W16
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N08   , As3 
	.byte	W08
	.byte		        Bn3 
	.byte	W16
	.byte		N32   , Cs4 
	.byte	W08
@ 023   ----------------------------------------
	.byte	W24
	.byte		N08   , Ds4 
	.byte	W16
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N08   , As3 
	.byte	W08
	.byte		        Bn3 
	.byte	W16
	.byte		        Cs4 
	.byte	W08
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_4_020
@ 025   ----------------------------------------
	.byte	W24
	.byte		N08   , Gn4 , v100
	.byte	W08
	.byte		        Fs4 
	.byte	W08
	.byte		        Gn4 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        Gn4 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        As4 
	.byte	W08
	.byte		        An4 
	.byte	W08
	.byte		        As4 
	.byte	W08
@ 026   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N08   , Bn4 
	.byte	W16
	.byte		        Gs4 
	.byte	W24
	.byte		        Gn4 
	.byte	W08
	.byte		        Gs4 
	.byte	W16
	.byte		N32   , As4 
	.byte	W08
@ 027   ----------------------------------------
	.byte	W24
	.byte		N08   , Bn4 
	.byte	W16
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N08   , Cs5 
	.byte	W08
	.byte		        Bn4 
	.byte	W16
	.byte		        As4 
	.byte	W08
@ 028   ----------------------------------------
	.byte		N92   , Bn4 , v100, gtp2
	.byte	W92
	.byte	W02
	.byte		N02   , As4 
	.byte	W02
@ 029   ----------------------------------------
	.byte		N72   , Bn4 
	.byte	W72
	.byte		N08   , Gs4 
	.byte	W08
	.byte		        As4 
	.byte	W08
	.byte		        Bn4 
	.byte	W08
@ 030   ----------------------------------------
	.byte		N72   , As4 
	.byte	W72
	.byte		N08   , Gs4 
	.byte	W08
	.byte		        As4 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
@ 031   ----------------------------------------
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N08   , En5 
	.byte	W08
	.byte		        Cs5 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        As4 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        Fs4 
	.byte	W08
	.byte		        En4 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte	GOTO
	 .word	mus_poke_mart_4_B1
mus_poke_mart_4_B2:
@ 032   ----------------------------------------
	.byte		VOICE , 87
	.byte		        87
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.6) ****************@

mus_poke_mart_5:
	.byte	KEYSH , mus_poke_mart_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
mus_poke_mart_5_B1:
@ 004   ----------------------------------------
mus_poke_mart_5_004:
	.byte	W24
	.byte		N16   , Fs3 , v064
	.byte	W16
	.byte		N24   , Ds3 
	.byte	W32
	.byte		N32   , Fs3 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
mus_poke_mart_5_005:
	.byte	W24
	.byte		N16   , Gn3 , v064
	.byte	W16
	.byte		N24   , Ds3 
	.byte	W32
	.byte		N32   , Gn3 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
mus_poke_mart_5_006:
	.byte	W24
	.byte		N16   , Gs3 , v064
	.byte	W16
	.byte		N24   , Ds3 
	.byte	W32
	.byte		N32   , Gs3 
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
mus_poke_mart_5_007:
	.byte	W24
	.byte		N16   , An3 , v064
	.byte	W16
	.byte		N24   , Ds3 
	.byte	W32
	.byte		N32   , An3 
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
mus_poke_mart_5_008:
	.byte	W24
	.byte		N16   , Bn3 , v064
	.byte	W16
	.byte		N24   , Gs3 
	.byte	W32
	.byte		N08   , Bn3 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		N16   , Bn3 
	.byte	W08
	.byte	PEND
@ 009   ----------------------------------------
mus_poke_mart_5_009:
	.byte	W24
	.byte		N16   , Gs3 , v064
	.byte	W16
	.byte		N24   , En3 
	.byte	W32
	.byte		N32   , Gs3 
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
mus_poke_mart_5_010:
	.byte	W24
	.byte		N16   , As3 , v064
	.byte	W16
	.byte		N24   , Fs3 
	.byte	W32
	.byte		N32   , As3 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W24
	.byte		N08   , Cs4 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		N16   , Cs4 
	.byte	W16
	.byte		        Ds4 
	.byte	W16
	.byte		        En4 
	.byte	W16
	.byte		N24   , Fs4 
	.byte	W08
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_5_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_5_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_5_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_5_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_5_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_5_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_5_010
@ 019   ----------------------------------------
	.byte	W24
	.byte		N08   , Cs4 , v064
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		N16   , Cs4 
	.byte	W16
	.byte		        Ds4 
	.byte	W16
	.byte		        En4 
	.byte	W16
	.byte		N08   , Fs4 
	.byte	W08
@ 020   ----------------------------------------
mus_poke_mart_5_020:
	.byte		N16   , As3 , v064
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N16   
	.byte	W16
	.byte		N08   , Fs3 
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		        Fs3 
	.byte	W08
	.byte		N32   , Ds4 
	.byte	W08
	.byte	PEND
@ 021   ----------------------------------------
	.byte	W24
	.byte		N24   , As3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N16   , Gs3 
	.byte	W16
	.byte		N08   , Gn3 
	.byte	W08
	.byte		N16   , Gs3 
	.byte	W16
	.byte		N08   , As3 
	.byte	W08
	.byte		N16   , Bn3 
	.byte	W16
	.byte		N08   , As3 
	.byte	W08
	.byte		N16   , Bn3 
	.byte	W16
	.byte		N08   , Cs4 
	.byte	W08
@ 023   ----------------------------------------
	.byte		N16   , Ds4 
	.byte	W16
	.byte		N08   , Dn4 
	.byte	W08
	.byte		N16   , Ds4 
	.byte	W16
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N08   , Ds4 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_5_020
@ 025   ----------------------------------------
	.byte	W24
	.byte		N08   , As3 , v064
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
@ 026   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N08   , Ds4 
	.byte	W16
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N08   , As3 
	.byte	W08
	.byte		N16   , Bn3 
	.byte	W16
	.byte		N08   , Cs4 
	.byte	W08
@ 027   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N08   , Ds4 
	.byte	W16
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N08   , En4 
	.byte	W08
	.byte		N16   , Ds4 
	.byte	W16
	.byte		N08   , Cs4 
	.byte	W08
@ 028   ----------------------------------------
	.byte		        Bn2 
	.byte	W08
	.byte		        En3 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        En4 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        Bn4 
	.byte	W08
	.byte		        En5 
	.byte	W08
	.byte		        Bn4 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        En4 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
@ 029   ----------------------------------------
	.byte		        Gs3 
	.byte	W08
	.byte		        Fn3 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        Fn4 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        Bn4 
	.byte	W08
	.byte		        Fn5 
	.byte	W08
	.byte		        Bn4 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        Fn4 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
@ 030   ----------------------------------------
	.byte		        Fs3 
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        Fs4 
	.byte	W08
	.byte		        As4 
	.byte	W08
	.byte		        Cs5 
	.byte	W08
	.byte		        Fs5 
	.byte	W08
	.byte		        Cs5 
	.byte	W08
	.byte		        As4 
	.byte	W08
	.byte		        Cs5 
	.byte	W08
	.byte		        As4 
	.byte	W08
	.byte		N16   , Fs4 
	.byte	W08
@ 031   ----------------------------------------
	.byte	W24
	.byte		N08   , En6 , v100
	.byte	W08
	.byte		        Cs6 
	.byte	W08
	.byte		        Gs5 , v064
	.byte	W08
	.byte		        As5 , v100
	.byte	W08
	.byte		        Gs5 , v064
	.byte	W08
	.byte		        Fs5 
	.byte	W08
	.byte		        En5 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        As4 
	.byte	W08
	.byte	GOTO
	 .word	mus_poke_mart_5_B1
mus_poke_mart_5_B2:
@ 032   ----------------------------------------
	.byte		VOICE , 80
	.byte		        80
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.7) ****************@

mus_poke_mart_6:
	.byte	KEYSH , mus_poke_mart_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte		N03   , Ds6 , v072
	.byte	W03
	.byte		        Cs6 
	.byte	W03
	.byte		        Bn5 , v068
	.byte	W03
	.byte		        As5 
	.byte	W03
	.byte		        Gs5 
	.byte	W03
	.byte		        Fs5 , v064
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Cs5 , v060
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Gs4 , v056
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 , v052
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Gs3 , v048
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Ds3 , v044
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        As2 , v040
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		        En2 , v036
	.byte	W03
	.byte		        Ds2 
	.byte	W03
	.byte		        Cs2 
	.byte	W03
	.byte		        Bn1 , v032
	.byte	W03
	.byte		        As1 
	.byte	W03
mus_poke_mart_6_B1:
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
	.byte	W24
	.byte		N02   , Bn2 , v100
	.byte	W02
	.byte		        Cs3 
	.byte	W02
	.byte		        Ds3 
	.byte	W02
	.byte		        Fs3 
	.byte	W02
	.byte		        An3 
	.byte	W02
	.byte		        As3 
	.byte	W02
	.byte		        Bn3 
	.byte	W02
	.byte		        Cs4 
	.byte	W02
	.byte		        Ds4 
	.byte	W02
	.byte		        Fs4 
	.byte	W02
	.byte		        An4 
	.byte	W02
	.byte		        As4 
	.byte	W02
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N08   , Fs4 
	.byte	W08
	.byte		        En4 
	.byte	W08
	.byte		        Ds4 
	.byte	W08
@ 012   ----------------------------------------
	.byte		N22   , Cs4 
	.byte	W22
	.byte		N02   , Dn4 
	.byte	W02
	.byte		N16   , Ds4 
	.byte	W16
	.byte		N40   , Bn3 
	.byte	W40
	.byte		N08   
	.byte	W08
	.byte		        Cs4 
	.byte	W08
@ 013   ----------------------------------------
	.byte		        Ds4 
	.byte	W40
	.byte		        En4 
	.byte	W24
	.byte		        Ds4 
	.byte	W08
	.byte		        En4 
	.byte	W16
	.byte		        Fs4 
	.byte	W08
@ 014   ----------------------------------------
	.byte		        Cs4 
	.byte	W16
	.byte		        Fs3 
	.byte	W08
	.byte		        Ds4 
	.byte	W16
	.byte		N40   , Bn3 
	.byte	W40
	.byte		N08   
	.byte	W08
	.byte		        Cs4 
	.byte	W08
@ 015   ----------------------------------------
	.byte		        Ds4 
	.byte	W36
	.byte	W02
	.byte		N02   , Fs4 
	.byte	W02
	.byte		N08   , Gs4 
	.byte	W24
	.byte		        Fs4 
	.byte	W16
	.byte		        Bn3 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
@ 016   ----------------------------------------
	.byte		        Ds4 
	.byte	W16
	.byte		        Gs3 
	.byte	W08
	.byte		        En4 
	.byte	W16
	.byte		N56   , Cs4 
	.byte	W56
@ 017   ----------------------------------------
	.byte	W24
	.byte		N08   , Gs3 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
@ 018   ----------------------------------------
	.byte		N40   , Ds4 
	.byte	W40
	.byte		N04   , En4 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N08   , Bn3 
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
@ 019   ----------------------------------------
	.byte		N24   , Cs4 
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte		N22   
	.byte	W22
	.byte		N02   , Dn4 
	.byte	W02
	.byte		N08   , Ds4 
	.byte	W16
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N08   , As3 
	.byte	W08
	.byte		        Bn3 
	.byte	W16
	.byte		N32   , Cs4 
	.byte	W08
@ 023   ----------------------------------------
	.byte	W24
	.byte		N08   , Ds4 
	.byte	W16
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N08   , As3 
	.byte	W08
	.byte		        Bn3 
	.byte	W16
	.byte		        Cs4 
	.byte	W08
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte		N24   , As4 
	.byte	W24
	.byte		N08   , Bn4 
	.byte	W16
	.byte		        Gs4 
	.byte	W24
	.byte		        Gn4 
	.byte	W08
	.byte		        Gs4 
	.byte	W16
	.byte		N32   , As4 
	.byte	W08
@ 027   ----------------------------------------
	.byte	W24
	.byte		N08   , Bn4 
	.byte	W16
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N08   , Cs5 
	.byte	W08
	.byte		        Bn4 
	.byte	W16
	.byte		        As4 
	.byte	W08
@ 028   ----------------------------------------
	.byte		        Bn2 , v060
	.byte	W08
	.byte		        En3 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        En4 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        Bn4 
	.byte	W08
	.byte		        En5 
	.byte	W08
	.byte		        Bn4 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        En4 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
@ 029   ----------------------------------------
	.byte		        Gs3 
	.byte	W08
	.byte		        Fn3 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        Fn4 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        Bn4 
	.byte	W08
	.byte		        Fn5 
	.byte	W08
	.byte		        Bn4 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        Fn4 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
@ 030   ----------------------------------------
	.byte		        Fs3 
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        Fs4 
	.byte	W08
	.byte		        As4 
	.byte	W08
	.byte		        Cs5 
	.byte	W08
	.byte		        Fs5 
	.byte	W08
	.byte		        Cs5 
	.byte	W08
	.byte		        As4 
	.byte	W08
	.byte		        Cs5 
	.byte	W08
	.byte		        As4 
	.byte	W08
	.byte		N16   , Fs4 
	.byte	W08
@ 031   ----------------------------------------
	.byte	W24
	.byte		N08   , En6 , v100
	.byte	W08
	.byte		        Cs6 
	.byte	W08
	.byte		        Gs5 
	.byte	W08
	.byte		        As5 
	.byte	W08
	.byte		        Gs5 
	.byte	W08
	.byte		        Fs5 
	.byte	W08
	.byte		        En5 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        As4 
	.byte	W08
	.byte	GOTO
	 .word	mus_poke_mart_6_B1
mus_poke_mart_6_B2:
@ 032   ----------------------------------------
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 7 (Midi-Chn.8) ****************@

mus_poke_mart_7:
	.byte	KEYSH , mus_poke_mart_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 17
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W72
	.byte		N08   , Fs3 , v100
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        As3 
	.byte	W08
mus_poke_mart_7_B1:
@ 004   ----------------------------------------
mus_poke_mart_7_004:
	.byte		N08   , Cs4 , v100
	.byte	W16
	.byte		        Fs3 
	.byte	W08
	.byte		        Ds4 
	.byte	W16
	.byte		N40   , Bn3 
	.byte	W40
	.byte		N08   
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte	PEND
@ 005   ----------------------------------------
	.byte		        Ds4 
	.byte	W16
	.byte		        Dn4 
	.byte	W08
	.byte		        Ds4 
	.byte	W16
	.byte		N16   , En4 
	.byte	W16
	.byte		N02   , Ds4 
	.byte	W02
	.byte		        Cs4 
	.byte	W02
	.byte		        Bn3 
	.byte	W02
	.byte		        As3 
	.byte	W02
	.byte		        Gs3 
	.byte	W02
	.byte		        Fs3 
	.byte	W02
	.byte		        En3 
	.byte	W04
	.byte		N08   , Ds4 
	.byte	W08
	.byte		        En4 
	.byte	W08
	.byte		        Fs4 
	.byte	W08
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_7_004
@ 007   ----------------------------------------
	.byte		N08   , Ds4 , v100
	.byte	W16
	.byte		        Dn4 
	.byte	W08
	.byte		        Ds4 
	.byte	W14
	.byte		N02   , Gn4 
	.byte	W02
	.byte		N16   , Gs4 
	.byte	W16
	.byte		N02   , Fs4 
	.byte	W02
	.byte		        En4 
	.byte	W02
	.byte		        Ds4 
	.byte	W02
	.byte		        Cs4 
	.byte	W02
	.byte		        Bn3 
	.byte	W02
	.byte		        As3 
	.byte	W02
	.byte		        Gs3 
	.byte	W04
	.byte		N08   , En4 
	.byte	W08
	.byte		        Ds4 
	.byte	W09
	.byte		        Cs4 
	.byte	W07
@ 008   ----------------------------------------
	.byte		        Ds4 
	.byte	W16
	.byte		        Gs3 
	.byte	W08
	.byte		        En4 
	.byte	W16
	.byte		N40   , Cs4 
	.byte	W40
	.byte		N02   , Bn3 
	.byte	W02
	.byte		        As3 
	.byte	W02
	.byte		        Gs3 
	.byte	W02
	.byte		        Fs3 
	.byte	W02
	.byte		        En3 
	.byte	W02
	.byte		N14   , Ds3 
	.byte	W06
@ 009   ----------------------------------------
	.byte	W24
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N40   , Ds4 
	.byte	W40
	.byte		N04   , En4 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N08   , Bn3 
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
@ 011   ----------------------------------------
	.byte		        Cs4 
	.byte	W08
	.byte		N02   , Bn3 
	.byte	W02
	.byte		        As3 
	.byte	W02
	.byte		        Gs3 
	.byte	W02
	.byte		        Fs3 
	.byte	W02
	.byte		        En3 
	.byte	W02
	.byte		        Ds3 
	.byte	W02
	.byte		        Cs3 
	.byte	W76
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
	.byte	W72
	.byte		N08   , Bn3 
	.byte	W16
	.byte		        Cs4 
	.byte	W08
@ 020   ----------------------------------------
mus_poke_mart_7_020:
	.byte		N08   , Ds4 , v100
	.byte	W24
	.byte		N08   
	.byte	W24
	.byte		N16   
	.byte	W16
	.byte		N08   , Dn4 
	.byte	W08
	.byte		        Ds4 
	.byte	W08
	.byte		        Dn4 
	.byte	W08
	.byte		N16   , As4 
	.byte	W08
	.byte	PEND
@ 021   ----------------------------------------
	.byte	W24
	.byte		N08   , Gn4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_7_020
@ 025   ----------------------------------------
	.byte	W24
	.byte		N08   , Gn4 , v100
	.byte	W08
	.byte		        Fs4 
	.byte	W08
	.byte		        Gn4 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        Gn4 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        As4 
	.byte	W08
	.byte		        An4 
	.byte	W08
	.byte		        As4 
	.byte	W08
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte		N92   , Bn5 , v100, gtp2
	.byte	W92
	.byte	W02
	.byte		N02   , As5 
	.byte	W02
@ 029   ----------------------------------------
	.byte		N72   , Bn5 
	.byte	W72
	.byte		N08   , Gs5 
	.byte	W08
	.byte		        As5 
	.byte	W08
	.byte		        Bn5 
	.byte	W08
@ 030   ----------------------------------------
	.byte		N72   , As5 
	.byte	W72
	.byte		N08   , Gs5 
	.byte	W08
	.byte		        As5 
	.byte	W08
	.byte		        Gs5 
	.byte	W08
@ 031   ----------------------------------------
	.byte		N24   , Fs5 
	.byte	W96
	.byte	GOTO
	 .word	mus_poke_mart_7_B1
mus_poke_mart_7_B2:
@ 032   ----------------------------------------
	.byte		VOICE , 17
	.byte		        17
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 8 (Midi-Chn.10) ****************@

mus_poke_mart_8:
	.byte	KEYSH , mus_poke_mart_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N04   , Cn1 , v100
	.byte	W24
	.byte		        En1 
	.byte		N04   , Fs2 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        En1 
	.byte		N04   , Fs2 
	.byte	W16
	.byte		        Cn1 
	.byte	W08
@ 001   ----------------------------------------
	.byte		N04   
	.byte	W16
	.byte		N04   
	.byte	W08
	.byte		        En1 
	.byte		N04   , Fs2 
	.byte	W16
	.byte		        Cn1 
	.byte	W08
	.byte		N04   
	.byte	W16
	.byte		        En1 
	.byte	W08
	.byte		N04   
	.byte		N04   , Fs2 
	.byte	W16
	.byte		        Cn1 
	.byte	W08
@ 002   ----------------------------------------
	.byte		N04   
	.byte	W24
	.byte		        En1 
	.byte		N04   , Fs2 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        En1 
	.byte		N04   , Fs2 
	.byte	W16
	.byte		        Cn1 
	.byte	W08
@ 003   ----------------------------------------
	.byte		        En1 
	.byte	W16
	.byte		N04   
	.byte	W08
	.byte		        Cn1 
	.byte		N04   , Fs2 
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		        En1 
	.byte	W08
	.byte		        Cn1 
	.byte	W16
	.byte		        En1 
	.byte	W08
	.byte		        Cn1 
	.byte		N04   , Fs2 
	.byte	W08
	.byte		        Cn1 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En1 
	.byte	W08
mus_poke_mart_8_B1:
@ 004   ----------------------------------------
	.byte		N24   , An2 , v100
	.byte	W24
	.byte		N04   , En1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        Fs2 
	.byte	W16
	.byte		N04   
	.byte	W08
@ 005   ----------------------------------------
mus_poke_mart_8_005:
	.byte		N04   , Cn1 , v100
	.byte	W16
	.byte		N04   
	.byte	W08
	.byte		        En1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        En1 
	.byte		N04   , Fs2 
	.byte	W16
	.byte		        Cn1 
	.byte	W08
	.byte	PEND
@ 006   ----------------------------------------
mus_poke_mart_8_006:
	.byte		N04   , Cn1 , v100
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        En1 
	.byte		N04   , Fs2 
	.byte	W16
	.byte		        Cn1 
	.byte		N04   , Fs2 
	.byte	W08
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_8_005
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_8_006
@ 009   ----------------------------------------
mus_poke_mart_8_009:
	.byte		N04   , Cn1 , v100
	.byte	W16
	.byte		N04   
	.byte	W08
	.byte		        En1 
	.byte	W16
	.byte		        Cn1 
	.byte	W08
	.byte		N04   
	.byte	W24
	.byte		        En1 
	.byte		N04   , Fs2 
	.byte	W16
	.byte		        Cn1 
	.byte	W08
	.byte	PEND
@ 010   ----------------------------------------
mus_poke_mart_8_010:
	.byte		N04   , Cn1 , v100
	.byte	W24
	.byte		N24   , An2 
	.byte	W24
	.byte		N04   , Cn1 
	.byte	W24
	.byte		N16   , An2 
	.byte	W16
	.byte		N04   , Cn1 
	.byte	W08
	.byte	PEND
@ 011   ----------------------------------------
	.byte		N04   
	.byte	W16
	.byte		N04   
	.byte	W08
	.byte		N08   , An2 
	.byte	W08
	.byte		N04   , En1 
	.byte	W08
	.byte		N04   
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		        En1 
	.byte	W16
	.byte		N04   
	.byte	W16
	.byte		N04   
	.byte	W08
@ 012   ----------------------------------------
	.byte		N24   , An2 
	.byte	W24
	.byte		N04   , En1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        En1 
	.byte		N04   , Fs2 
	.byte	W16
	.byte		        Cn1 
	.byte		N04   , Fs2 
	.byte	W08
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_8_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_8_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_8_009
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_8_006
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_8_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_8_010
@ 019   ----------------------------------------
	.byte		N04   , Cn1 , v100
	.byte	W16
	.byte		N04   
	.byte	W08
	.byte		N16   , An2 
	.byte	W16
	.byte		N04   , Cn1 
	.byte	W08
	.byte		        En1 
	.byte	W08
	.byte		N04   
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        En1 
	.byte		N04   , Fs2 
	.byte	W08
	.byte		        Cn1 
	.byte	W08
@ 020   ----------------------------------------
	.byte		        En1 
	.byte		N04   , Fs2 
	.byte	W16
	.byte		        Cn1 
	.byte		N04   , Fs2 
	.byte	W08
	.byte		N16   , En1 
	.byte	W16
	.byte		N04   , Cn1 
	.byte	W08
	.byte		        En1 
	.byte	W16
	.byte		N04   
	.byte	W08
	.byte		N24   , Cn1 
	.byte	W24
@ 021   ----------------------------------------
	.byte		N04   , Dn3 
	.byte	W08
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W16
	.byte		        En3 
	.byte	W08
	.byte		        Dn3 
	.byte	W16
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W16
	.byte		        En3 
	.byte	W08
@ 022   ----------------------------------------
mus_poke_mart_8_022:
	.byte		N04   , Fs2 , v100
	.byte	W16
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W16
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W16
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W16
	.byte		N04   
	.byte	W08
	.byte	PEND
@ 023   ----------------------------------------
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W16
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W16
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W16
	.byte		N04   
	.byte	W08
@ 024   ----------------------------------------
	.byte		        En1 
	.byte		N04   , Fs2 
	.byte	W16
	.byte		        Cn1 
	.byte		N04   , Fs2 
	.byte	W08
	.byte		N16   , En1 
	.byte	W16
	.byte		N04   , Cn1 
	.byte	W08
	.byte		        En1 
	.byte	W16
	.byte		        Cn1 
	.byte	W08
	.byte		        Fs2 
	.byte	W16
	.byte		N04   
	.byte	W08
@ 025   ----------------------------------------
	.byte		        En1 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W08
	.byte		N16   
	.byte	W16
	.byte		N04   
	.byte	W08
	.byte		N16   , An2 
	.byte	W16
	.byte		N04   , En1 
	.byte	W08
	.byte		        Cn1 
	.byte	W16
	.byte		N04   
	.byte	W08
@ 026   ----------------------------------------
	.byte		        Fs2 
	.byte	W08
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W16
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W16
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W16
	.byte		N04   
	.byte	W08
@ 027   ----------------------------------------
	.byte		N04   
	.byte	W16
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W16
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W16
	.byte		N04   
	.byte	W08
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_8_022
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_8_022
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_mart_8_022
@ 031   ----------------------------------------
	.byte		N04   , Cn1 , v100
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		        En1 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		        En1 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        En1 
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		        Fs2 
	.byte	W04
	.byte		        Cn1 
	.byte	W04
	.byte		        En1 
	.byte	W08
	.byte	GOTO
	 .word	mus_poke_mart_8_B1
mus_poke_mart_8_B2:
@ 032   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_poke_mart_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_poke_mart:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_poke_mart_pri	@ Priority
	.byte	mus_poke_mart_rev	@ Reverb.

	.word	mus_poke_mart_grp

	.word	mus_poke_mart_1
	.word	mus_poke_mart_2
	.word	mus_poke_mart_3
	.word	mus_poke_mart_4
	.word	mus_poke_mart_5
	.word	mus_poke_mart_6
	.word	mus_poke_mart_7
	.word	mus_poke_mart_8

	.end
