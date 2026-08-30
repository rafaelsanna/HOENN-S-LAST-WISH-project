	.include "MPlayDef.s"

	.equ	mus_motion_picture_soundtrack_grp, voicegroup_motion_picture_soundtrack
	.equ	mus_motion_picture_soundtrack_pri, 0
	.equ	mus_motion_picture_soundtrack_rev, reverb_set+50
	.equ	mus_motion_picture_soundtrack_mvl, 100
	.equ	mus_motion_picture_soundtrack_key, 0
	.equ	mus_motion_picture_soundtrack_tbs, 1
	.equ	mus_motion_picture_soundtrack_exg, 1
	.equ	mus_motion_picture_soundtrack_cmp, 1

	.section .rodata
	.global	mus_motion_picture_soundtrack
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_motion_picture_soundtrack_1:
	.byte	KEYSH , mus_motion_picture_soundtrack_key+0
mus_motion_picture_soundtrack_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 48*mus_motion_picture_soundtrack_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_motion_picture_soundtrack_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N92   , Gn1 , v092, gtp3
	.byte	W96
@ 001   ----------------------------------------
	.byte		        Cn2 , v092, gtp3
	.byte	W96
@ 002   ----------------------------------------
	.byte		        Bn1 , v092, gtp3
	.byte	W96
@ 003   ----------------------------------------
	.byte		        Cn2 , v092, gtp3
	.byte	W96
@ 004   ----------------------------------------
	.byte		        Gn1 , v092, gtp3
	.byte	W96
@ 005   ----------------------------------------
	.byte		        Cn2 , v092, gtp3
	.byte	W96
@ 006   ----------------------------------------
	.byte	TEMPO , 51*mus_motion_picture_soundtrack_tbs/2
	.byte		        Bn1 , v092, gtp3
	.byte	W96
@ 007   ----------------------------------------
	.byte	TEMPO , 53*mus_motion_picture_soundtrack_tbs/2
	.byte		        Cn2 , v092, gtp3
	.byte	W96
@ 008   ----------------------------------------
	.byte		        Gn1 , v092, gtp3
	.byte	W96
@ 009   ----------------------------------------
	.byte		        Cn2 , v092, gtp3
	.byte	W96
@ 010   ----------------------------------------
	.byte		        Bn1 , v092, gtp3
	.byte	W96
@ 011   ----------------------------------------
	.byte		        Cn2 , v092, gtp3
	.byte	W96
@ 012   ----------------------------------------
mus_motion_picture_soundtrack_1_012:
	.byte		N44   , Gn1 , v092, gtp3
	.byte	W48
	.byte		        Gn1 , v092, gtp3
	.byte	W48
	.byte	PEND
@ 013   ----------------------------------------
	.byte		N92   , Cn2 , v092, gtp3
	.byte	W96
@ 014   ----------------------------------------
	.byte		        Bn1 , v092, gtp3
	.byte	W96
@ 015   ----------------------------------------
	.byte	TEMPO , 48*mus_motion_picture_soundtrack_tbs/2
	.byte		        Cn2 , v092, gtp3
	.byte	W96
@ 016   ----------------------------------------
mus_motion_picture_soundtrack_1_016:
	.byte		N44   , En1 , v092, gtp3
	.byte	W48
	.byte		        Cn2 , v092, gtp3
	.byte	W48
	.byte	PEND
@ 017   ----------------------------------------
mus_motion_picture_soundtrack_1_017:
	.byte		N44   , Gn1 , v092, gtp3
	.byte	W48
	.byte		        Fs1 , v092, gtp3
	.byte	W48
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_motion_picture_soundtrack_1_016
@ 019   ----------------------------------------
	.byte		N44   , Gn1 , v092, gtp3
	.byte	W48
	.byte		N72   , Fs1 
	.byte	W48
@ 020   ----------------------------------------
	.byte	W48
@ 021   ----------------------------------------
	.byte	TEMPO , 52*mus_motion_picture_soundtrack_tbs/2
	.byte		N92   , Gn1 , v092, gtp3
	.byte	W96
@ 022   ----------------------------------------
	.byte		        Cn2 , v092, gtp3
	.byte	W96
@ 023   ----------------------------------------
	.byte		        Bn1 , v092, gtp3
	.byte	W96
@ 024   ----------------------------------------
	.byte		        Cn2 , v092, gtp3
	.byte	W96
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_motion_picture_soundtrack_1_012
@ 026   ----------------------------------------
	.byte		N92   , Cn2 , v092, gtp3
	.byte	W96
@ 027   ----------------------------------------
	.byte		        Bn1 , v092, gtp3
	.byte	W96
@ 028   ----------------------------------------
	.byte		        Cn2 , v092, gtp3
	.byte	W96
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_motion_picture_soundtrack_1_016
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_motion_picture_soundtrack_1_017
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_motion_picture_soundtrack_1_016
@ 032   ----------------------------------------
	.byte	TEMPO , 50*mus_motion_picture_soundtrack_tbs/2
	.byte		N44   , Gn1 , v092, gtp3
	.byte	W48
	.byte		        Fs1 , v092, gtp3
	.byte	W48
@ 033   ----------------------------------------
	.byte		        Bn1 , v092, gtp3
	.byte	W48
	.byte		        Bn1 , v092, gtp3
	.byte	W48
@ 034   ----------------------------------------
	.byte		        En1 , v124, gtp3
	.byte	W48
	.byte		        Dn1 , v124, gtp3
	.byte	W44
	.byte	W03
	.byte		N01   , Cs1 , v127
	.byte	W01
@ 035   ----------------------------------------
	.byte		N64   , Cs2 , v108
	.byte	W96
@ 036   ----------------------------------------
	.byte		N92   , Cn2 , v076, gtp3
	.byte	W96
@ 037   ----------------------------------------
	.byte		TIE   , Gn1 , v064
	.byte	W96
@ 038   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W02
	.byte	GOTO
	 .word	mus_motion_picture_soundtrack_1_B1
mus_motion_picture_soundtrack_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_motion_picture_soundtrack_2:
	.byte	KEYSH , mus_motion_picture_soundtrack_key+0
mus_motion_picture_soundtrack_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 46*mus_motion_picture_soundtrack_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N92   , Bn1 , v056, gtp3
	.byte	W96
@ 001   ----------------------------------------
	.byte		N32   , Gn2 , v056, gtp3
	.byte	W36
	.byte		N10   , Cn3 , v060
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N22   , Cn3 
	.byte	W24
@ 002   ----------------------------------------
	.byte		N16   , Dn3 
	.byte	W18
	.byte		N40   , Fs3 , v060, gtp1
	.byte	W42
	.byte		N23   , En3 
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
@ 003   ----------------------------------------
	.byte		        Gn2 , v056
	.byte	W12
	.byte		N78   , Bn2 , v060, gtp1
	.byte	W84
@ 004   ----------------------------------------
	.byte		N44   , Bn2 , v060, gtp3
	.byte	W48
	.byte		N16   , Cn3 
	.byte	W18
	.byte		N28   , Dn3 , v060, gtp1
	.byte	W30
@ 005   ----------------------------------------
	.byte		N44   , Gn2 , v056, gtp3
	.byte	W48
	.byte		N23   , En3 , v060
	.byte	W24
	.byte		        Dn3 
	.byte	W24
@ 006   ----------------------------------------
	.byte		N44   , Fs3 , v060, gtp3
	.byte	W48
	.byte		N32   , Cn3 , v060, gtp2
	.byte	W36
	.byte		N11   , Bn2 
	.byte	W12
@ 007   ----------------------------------------
	.byte		N92   , Gn2 , v056, gtp3
	.byte	W96
@ 008   ----------------------------------------
	.byte		N44   , Bn2 , v060, gtp3
	.byte	W48
	.byte		N23   , Cn3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
@ 009   ----------------------------------------
mus_motion_picture_soundtrack_2_009:
	.byte		N44   , En3 , v060, gtp3
	.byte	W48
	.byte		N23   , Dn3 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
	.byte		N44   , Bn2 , v060, gtp2
	.byte	W48
	.byte		N23   , En3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
@ 011   ----------------------------------------
mus_motion_picture_soundtrack_2_011:
	.byte		N44   , Cn3 , v060, gtp3
	.byte	W48
	.byte		N23   , Dn3 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
	.byte		N44   , Bn2 , v060, gtp3
	.byte	W48
	.byte		N23   , Cn3 
	.byte	W48
@ 013   ----------------------------------------
mus_motion_picture_soundtrack_2_013:
	.byte		N44   , En3 , v060, gtp3
	.byte	W48
	.byte		N23   , Fs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
	.byte		N32   , Fs3 , v060, gtp2
	.byte	W36
	.byte		N09   
	.byte	W12
	.byte		N23   , En3 
	.byte	W24
	.byte		N22   , Dn3 
	.byte	W24
@ 015   ----------------------------------------
	.byte		N44   , Cn3 , v060, gtp3
	.byte	W48
	.byte		N23   , Fs3 
	.byte	W24
	.byte		N10   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N44   , Dn3 , v060, gtp2
	.byte	W48
	.byte		N22   , En3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
@ 017   ----------------------------------------
mus_motion_picture_soundtrack_2_017:
	.byte		N44   , Dn3 , v060, gtp3
	.byte	W48
	.byte		        Dn3 , v060, gtp3
	.byte	W48
	.byte	PEND
@ 018   ----------------------------------------
mus_motion_picture_soundtrack_2_018:
	.byte		N44   , En3 , v060, gtp3
	.byte	W48
	.byte		        Dn3 , v060, gtp3
	.byte	W48
	.byte	PEND
@ 019   ----------------------------------------
	.byte		N32   , Bn2 , v060, gtp2
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N68   , Dn3 , v060, gtp2
	.byte	W48
@ 020   ----------------------------------------
	.byte	W48
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_motion_picture_soundtrack_2_009
@ 022   ----------------------------------------
mus_motion_picture_soundtrack_2_022:
	.byte		N44   , Fs3 , v060, gtp3
	.byte	W48
	.byte		N23   , En3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_motion_picture_soundtrack_2_011
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_motion_picture_soundtrack_2_011
@ 025   ----------------------------------------
mus_motion_picture_soundtrack_2_025:
	.byte		N44   , Bn2 , v060, gtp3
	.byte	W48
	.byte		        Cn3 , v060, gtp3
	.byte	W48
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_motion_picture_soundtrack_2_013
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_motion_picture_soundtrack_2_022
@ 028   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 029   ----------------------------------------
	.byte		N44   , Bn2 , v060, gtp3
	.byte	W48
	.byte		N23   , Cn3 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
@ 030   ----------------------------------------
	.byte		N32   , Bn2 , v060, gtp3
	.byte	W36
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N44   , Gn2 , v060, gtp3
	.byte	W48
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_motion_picture_soundtrack_2_025
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_motion_picture_soundtrack_2_017
@ 033   ----------------------------------------
	.byte		N44   , Ds3 , v060, gtp3
	.byte	W48
	.byte		        En3 , v060, gtp3
	.byte	W48
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_motion_picture_soundtrack_2_018
@ 035   ----------------------------------------
	.byte		N92   , Bn1 , v056, gtp3
	.byte	W96
@ 036   ----------------------------------------
	.byte		        Dn2 , v052, gtp3
	.byte	W96
@ 037   ----------------------------------------
	.byte		TIE   , Bn1 , v044
	.byte	W96
@ 038   ----------------------------------------
	.byte	W80
	.byte	W02
	.byte		EOT   
	.byte	GOTO
	 .word	mus_motion_picture_soundtrack_2_B1
mus_motion_picture_soundtrack_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_motion_picture_soundtrack_3:
	.byte	KEYSH , mus_motion_picture_soundtrack_key+0
mus_motion_picture_soundtrack_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_motion_picture_soundtrack_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N92   , Gn2 , v100, gtp3
	.byte	W96
@ 001   ----------------------------------------
	.byte		N32   , Cn3 , v100, gtp3
	.byte	W36
	.byte		N10   , Cn3 , v104
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N22   , Cn3 
	.byte	W24
@ 002   ----------------------------------------
	.byte		N16   , Dn3 
	.byte	W18
	.byte		N40   , Fs3 , v104, gtp1
	.byte	W42
	.byte		N23   , En3 
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
@ 003   ----------------------------------------
	.byte		        Bn2 , v100
	.byte	W12
	.byte		N78   , Bn2 , v104, gtp1
	.byte	W84
@ 004   ----------------------------------------
	.byte		N44   , Bn2 , v104, gtp3
	.byte	W48
	.byte		N16   , Cn3 
	.byte	W18
	.byte		N28   , Dn3 , v104, gtp1
	.byte	W30
@ 005   ----------------------------------------
	.byte		N44   , Dn3 , v100, gtp3
	.byte	W48
	.byte		N23   , En3 , v104
	.byte	W24
	.byte		        Dn3 
	.byte	W24
@ 006   ----------------------------------------
	.byte		N44   , Fs3 , v104, gtp3
	.byte	W48
	.byte		N32   , Cn3 , v104, gtp2
	.byte	W36
	.byte		N11   , Bn2 
	.byte	W12
@ 007   ----------------------------------------
	.byte		N92   , Bn2 , v100, gtp3
	.byte	W96
@ 008   ----------------------------------------
	.byte		N40   , An2 , v112
	.byte	W42
	.byte		N42   , Gn2 
	.byte	W48
	.byte		N05   , Dn3 
	.byte	W06
@ 009   ----------------------------------------
	.byte		N32   , An2 , v112, gtp3
	.byte	W36
	.byte		N05   , Gn2 
	.byte	W06
	.byte		N28   , Gn2 , v112, gtp1
	.byte	W54
@ 010   ----------------------------------------
	.byte		N05   , An2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N16   
	.byte	W18
	.byte		N22   , Fs3 
	.byte	W32
	.byte	W03
	.byte		N05   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W07
	.byte		N56   , En3 , v112, gtp3
	.byte	W18
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte		N40   , An2 , v112, gtp1
	.byte	W42
	.byte		N32   , Bn2 
	.byte	W48
	.byte		N05   , Gn2 
	.byte	W06
@ 013   ----------------------------------------
	.byte		N40   , An2 
	.byte	W40
	.byte	W01
	.byte		N32   , Bn2 , v112, gtp3
	.byte	W54
	.byte	W01
@ 014   ----------------------------------------
	.byte		N05   , An2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N22   
	.byte	W24
	.byte		N28   , Fs3 
	.byte	W36
	.byte		N05   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N56   , En3 , v112, gtp3
	.byte	W12
@ 015   ----------------------------------------
	.byte	W72
	.byte		N05   , Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N52   
	.byte	W06
@ 016   ----------------------------------------
	.byte	W48
	.byte		N32   , Gn2 
	.byte	W48
@ 017   ----------------------------------------
	.byte		N44   , An2 , v112, gtp3
	.byte	W48
	.byte		N10   
	.byte	W24
	.byte		N04   , Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N48   , An2 , v112, gtp3
	.byte	W06
@ 018   ----------------------------------------
	.byte	W48
	.byte		N36   , Gn2 , v112, gtp3
	.byte	W48
@ 019   ----------------------------------------
	.byte		N40   , An2 
	.byte	W42
	.byte		N44   , An2 , v112, gtp2
	.byte	W54
@ 020   ----------------------------------------
	.byte	W48
@ 021   ----------------------------------------
	.byte		N32   , An2 , v112, gtp2
	.byte	W32
	.byte	W03
	.byte		N23   , Gn2 
	.byte	W24
	.byte	W01
	.byte		N20   
	.byte	W36
@ 022   ----------------------------------------
	.byte		N44   , An2 , v112, gtp2
	.byte	W48
	.byte		N23   , Gn2 
	.byte	W48
@ 023   ----------------------------------------
	.byte		N11   , An2 
	.byte	W12
	.byte		N22   , Gn2 
	.byte	W23
	.byte		N16   , Fs3 
	.byte	W19
	.byte		N11   , En3 
	.byte	W12
	.byte		N05   , Dn3 
	.byte	W06
	.byte		N48   , En3 , v112, gtp2
	.byte	W24
@ 024   ----------------------------------------
	.byte	W90
	.byte		N05   , Dn3 
	.byte	W06
@ 025   ----------------------------------------
	.byte		N44   , An2 , v112, gtp3
	.byte	W48
	.byte		N23   , Bn2 
	.byte	W42
	.byte		N05   , An2 
	.byte	W06
@ 026   ----------------------------------------
	.byte		N44   , An2 , v112, gtp3
	.byte	W48
	.byte		N23   , Bn2 
	.byte	W36
	.byte		N05   , An2 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 027   ----------------------------------------
	.byte		        Gn2 
	.byte	W06
	.byte		N16   
	.byte	W18
	.byte		N05   , An2 
	.byte	W06
	.byte		N11   , Gn2 
	.byte	W24
	.byte		N21   , Bn2 
	.byte	W22
	.byte		N01   , An2 
	.byte	W02
	.byte		N17   , Bn2 
	.byte	W18
@ 028   ----------------------------------------
	.byte		N05   , An2 
	.byte	W06
	.byte		N23   , Gn2 
	.byte	W60
	.byte		N05   , En3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N48   , An2 , v112, gtp3
	.byte	W12
@ 029   ----------------------------------------
	.byte	W42
	.byte		N24   , Gn2 , v112, gtp2
	.byte	W54
@ 030   ----------------------------------------
	.byte		N40   , An2 
	.byte	W42
	.byte		N17   
	.byte	W24
	.byte		N05   , Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N48   , An2 , v112, gtp3
	.byte	W12
@ 031   ----------------------------------------
	.byte	W42
	.byte		N28   , Gn2 
	.byte	W54
@ 032   ----------------------------------------
	.byte		N40   , An2 
	.byte	W40
	.byte	W01
	.byte		N44   , An2 , v112, gtp3
	.byte	W54
	.byte	W01
@ 033   ----------------------------------------
	.byte	W24
	.byte		N11   , An2 , v116
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N22   , En3 
	.byte	W24
	.byte		N02   , Bn2 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		N23   , Gn2 
	.byte	W18
@ 034   ----------------------------------------
	.byte	W24
	.byte		N11   , An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N40   , Fs3 
	.byte	W42
	.byte		TIE   , Gn3 
	.byte	W06
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W54
	.byte	W01
	.byte		EOT   
	.byte	W40
	.byte	W01
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W80
	.byte	W02
	.byte	GOTO
	 .word	mus_motion_picture_soundtrack_3_B1
mus_motion_picture_soundtrack_3_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_motion_picture_soundtrack:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_motion_picture_soundtrack_pri	@ Priority
	.byte	mus_motion_picture_soundtrack_rev	@ Reverb.

	.word	mus_motion_picture_soundtrack_grp

	.word	mus_motion_picture_soundtrack_1
	.word	mus_motion_picture_soundtrack_2
	.word	mus_motion_picture_soundtrack_3

	.end
