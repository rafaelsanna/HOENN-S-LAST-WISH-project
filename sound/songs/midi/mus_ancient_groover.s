	.include "MPlayDef.s"

	.equ	mus_ancient_groover_grp, voicegroup_ancient_groover
	.equ	mus_ancient_groover_pri, 0
	.equ	mus_ancient_groover_rev, reverb_set+50
	.equ	mus_ancient_groover_mvl, 100
	.equ	mus_ancient_groover_key, 0
	.equ	mus_ancient_groover_tbs, 1
	.equ	mus_ancient_groover_exg, 1
	.equ	mus_ancient_groover_cmp, 1

	.section .rodata
	.global	mus_ancient_groover
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_ancient_groover_1:
	.byte	KEYSH , mus_ancient_groover_key+0
mus_ancient_groover_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 110*mus_ancient_groover_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 125*mus_ancient_groover_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N24   , Cs1 , v127
	.byte	W36
	.byte		N10   , Gs0 
	.byte	W12
	.byte		N24   , Bn0 
	.byte	W48
@ 001   ----------------------------------------
mus_ancient_groover_1_001:
	.byte		N24   , An0 , v127
	.byte	W36
	.byte		N10   , Gs0 
	.byte	W12
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N10   
	.byte	W36
	.byte	PEND
@ 002   ----------------------------------------
mus_ancient_groover_1_002:
	.byte		N24   , An0 , v127
	.byte	W36
	.byte		N10   , Fs1 
	.byte	W12
	.byte		N24   , Bn0 
	.byte	W48
	.byte	PEND
@ 003   ----------------------------------------
mus_ancient_groover_1_003:
	.byte		N24   , Cs1 , v127
	.byte	W36
	.byte		N03   , Gs0 , v108
	.byte	W06
	.byte		N11   , Cs1 , v127
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 004   ----------------------------------------
mus_ancient_groover_1_004:
	.byte		N24   , Cs1 , v127
	.byte	W36
	.byte		N10   , Gs0 
	.byte	W12
	.byte		N24   , Bn0 
	.byte	W48
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_001
@ 010   ----------------------------------------
mus_ancient_groover_1_010:
	.byte		N24   , En1 , v127
	.byte	W42
	.byte		N05   
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 011   ----------------------------------------
mus_ancient_groover_1_011:
	.byte		N24   , Gs0 , v127
	.byte	W30
	.byte		N05   , Cs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 012   ----------------------------------------
mus_ancient_groover_1_012:
	.byte		N24   , Cs1 , v127
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N12   , Ds1 , v120
	.byte	W36
	.byte	PEND
@ 013   ----------------------------------------
mus_ancient_groover_1_013:
	.byte		N24   , En1 , v127
	.byte	W36
	.byte		N11   , Fs1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 014   ----------------------------------------
mus_ancient_groover_1_014:
	.byte		N24   , Cs1 , v127
	.byte	W36
	.byte		N11   , Bn0 
	.byte	W12
	.byte		N24   , As0 
	.byte	W48
	.byte	PEND
@ 015   ----------------------------------------
mus_ancient_groover_1_015:
	.byte		N24   , Bn0 , v127
	.byte	W30
	.byte		N05   , Gs0 , v120
	.byte	W06
	.byte		        Bn0 , v127
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn0 
	.byte	W12
	.byte		N10   
	.byte	W36
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_012
@ 017   ----------------------------------------
mus_ancient_groover_1_017:
	.byte		N24   , En1 , v127
	.byte	W36
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N21   , Ds1 
	.byte	W24
	.byte		N23   , Gn0 
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
mus_ancient_groover_1_018:
	.byte		N24   , Gs0 , v127
	.byte	W42
	.byte		N05   , Ds1 
	.byte	W06
	.byte		N11   , Gs0 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 019   ----------------------------------------
mus_ancient_groover_1_019:
	.byte		N17   , Gs0 , v127
	.byte	W18
	.byte		N03   , An0 
	.byte	W18
	.byte		N17   , Gs0 
	.byte	W18
	.byte		N04   , Ds1 
	.byte	W06
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 020   ----------------------------------------
	.byte		N80   , An0 , v127, gtp3
	.byte	W84
	.byte		N11   , Cs1 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N92   , Bn0 , v127, gtp3
	.byte	W96
@ 022   ----------------------------------------
mus_ancient_groover_1_022:
	.byte		N15   , Cs1 , v127
	.byte	W60
	.byte		N17   , Gs0 
	.byte	W18
	.byte		N11   , Fs1 , v108
	.byte	W12
	.byte		N05   , Ds1 , v104
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
mus_ancient_groover_1_023:
	.byte		N18   , Cs1 , v104
	.byte	W60
	.byte		N05   , Cs1 , v112
	.byte	W06
	.byte		        En1 , v116
	.byte	W06
	.byte		        Fs1 , v120
	.byte	W06
	.byte		        Gs0 , v124
	.byte	W06
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
mus_ancient_groover_1_024:
	.byte		N18   , Cs1 , v127
	.byte	W60
	.byte		N03   
	.byte	W12
	.byte		N05   , Fs1 
	.byte	W06
	.byte		        Gs0 , v120
	.byte	W06
	.byte		        Fs1 , v112
	.byte	W06
	.byte		        En1 , v104
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
mus_ancient_groover_1_025:
	.byte		N04   , Cs1 , v096
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N12   
	.byte	W84
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_022
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_023
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_004
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_003
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_004
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_010
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_011
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_012
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_013
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_014
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_015
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_012
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_017
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_018
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_019
@ 046   ----------------------------------------
	.byte		N72   , An0 , v127
	.byte	W84
	.byte		N11   , Bn0 
	.byte	W12
@ 047   ----------------------------------------
	.byte		N84   , Bn0 , v127, gtp2
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_022
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_023
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_024
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_025
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_022
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_023
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_1_024
@ 055   ----------------------------------------
	.byte		N04   , Cs1 , v096
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N12   
	.byte	W72
	.byte	W02
	.byte	GOTO
	 .word	mus_ancient_groover_1_B1
mus_ancient_groover_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_ancient_groover_2:
	.byte	KEYSH , mus_ancient_groover_key+0
mus_ancient_groover_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 48*mus_ancient_groover_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N44   , Gs3 , v060, gtp3
	.byte	W48
	.byte		        En3 , v068, gtp3
	.byte	W48
@ 001   ----------------------------------------
mus_ancient_groover_2_001:
	.byte		N44   , Cs3 , v068, gtp3
	.byte	W48
	.byte		        En3 , v060, gtp3
	.byte	W48
	.byte	PEND
@ 002   ----------------------------------------
mus_ancient_groover_2_002:
	.byte		N44   , En3 , v060, gtp3
	.byte	W48
	.byte		        Ds3 , v068, gtp3
	.byte	W48
	.byte	PEND
@ 003   ----------------------------------------
	.byte		N92   , Cs3 , v068, gtp3
	.byte	W96
@ 004   ----------------------------------------
mus_ancient_groover_2_004:
	.byte		N44   , Gs3 , v060, gtp3
	.byte	W48
	.byte		        En3 , v068, gtp3
	.byte	W48
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_2_002
@ 007   ----------------------------------------
	.byte		N92   , Cs3 , v068, gtp3
	.byte	W96
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_2_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_2_001
@ 010   ----------------------------------------
mus_ancient_groover_2_010:
	.byte		N44   , En3 , v068, gtp3
	.byte	W48
	.byte		        Fs3 , v060, gtp3
	.byte	W48
	.byte	PEND
@ 011   ----------------------------------------
	.byte		N92   , Gs3 , v060, gtp3
	.byte	W96
@ 012   ----------------------------------------
mus_ancient_groover_2_012:
	.byte		N44   , En3 , v060, gtp3
	.byte	W48
	.byte		        Fs3 , v060, gtp3
	.byte	W48
	.byte	PEND
@ 013   ----------------------------------------
mus_ancient_groover_2_013:
	.byte		N44   , Gs3 , v060, gtp3
	.byte	W48
	.byte		        Fs3 , v060, gtp3
	.byte	W48
	.byte	PEND
@ 014   ----------------------------------------
mus_ancient_groover_2_014:
	.byte		N32   , Gs3 , v060, gtp3
	.byte	W36
	.byte		N11   , Bn3 , v068
	.byte	W12
	.byte		N44   , En3 , v060, gtp3
	.byte	W48
	.byte	PEND
@ 015   ----------------------------------------
mus_ancient_groover_2_015:
	.byte		N44   , Fs3 , v060, gtp3
	.byte	W48
	.byte		        Ds3 , v060, gtp3
	.byte	W48
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_2_012
@ 017   ----------------------------------------
mus_ancient_groover_2_017:
	.byte		N44   , Gs3 , v060, gtp3
	.byte	W48
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
	.byte		N92   , Gs3 , v060, gtp3
	.byte	W96
@ 019   ----------------------------------------
	.byte		        Ds3 , v060, gtp3
	.byte	W96
@ 020   ----------------------------------------
	.byte		        Cs3 , v068, gtp3
	.byte	W96
@ 021   ----------------------------------------
	.byte		        Ds3 , v068, gtp3
	.byte	W96
@ 022   ----------------------------------------
	.byte		TIE   , En3 , v060
	.byte	W96
@ 023   ----------------------------------------
	.byte	W84
	.byte	W02
	.byte		EOT   
	.byte	W10
@ 024   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte	W96
@ 025   ----------------------------------------
	.byte	W84
	.byte	W02
	.byte		EOT   
	.byte	W10
@ 026   ----------------------------------------
	.byte		TIE   , En3 
	.byte	W96
@ 027   ----------------------------------------
	.byte	W84
	.byte	W02
	.byte		EOT   
	.byte	W10
@ 028   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte	W96
@ 029   ----------------------------------------
	.byte	W84
	.byte	W02
	.byte		EOT   
	.byte	W10
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_2_004
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_2_001
@ 032   ----------------------------------------
	.byte		N44   , En3 , v060, gtp3
	.byte	W48
	.byte		        Ds3 , v060, gtp3
	.byte	W48
@ 033   ----------------------------------------
	.byte		N92   , Cs3 , v068, gtp3
	.byte	W96
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_2_004
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_2_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_2_010
@ 037   ----------------------------------------
	.byte		N92   , Gs3 , v060, gtp3
	.byte	W96
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_2_012
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_2_013
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_2_014
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_2_015
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_2_012
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_2_017
@ 044   ----------------------------------------
	.byte		N92   , Gs3 , v060, gtp3
	.byte	W96
@ 045   ----------------------------------------
	.byte		        Ds3 , v060, gtp3
	.byte	W96
@ 046   ----------------------------------------
	.byte		        Cs3 , v068, gtp3
	.byte	W96
@ 047   ----------------------------------------
	.byte		        Ds3 , v068, gtp3
	.byte	W96
@ 048   ----------------------------------------
	.byte		TIE   , En3 , v060
	.byte	W96
@ 049   ----------------------------------------
	.byte	W84
	.byte	W02
	.byte		EOT   
	.byte	W10
@ 050   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte	W96
@ 051   ----------------------------------------
	.byte	W84
	.byte	W02
	.byte		EOT   
	.byte	W10
@ 052   ----------------------------------------
	.byte		TIE   , En3 
	.byte	W96
@ 053   ----------------------------------------
	.byte	W84
	.byte	W02
	.byte		EOT   
	.byte	W10
@ 054   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte	W96
@ 055   ----------------------------------------
	.byte	W84
	.byte	W02
	.byte		EOT   
	.byte	GOTO
	 .word	mus_ancient_groover_2_B1
mus_ancient_groover_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_ancient_groover_3:
	.byte	KEYSH , mus_ancient_groover_key+0
mus_ancient_groover_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_ancient_groover_mvl/mxv
	.byte		PAN   , c_v+10
	.byte	W12
	.byte		N05   , Cs4 , v084
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N10   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N36   , Cs4 
	.byte	W48
@ 001   ----------------------------------------
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N10   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N24   
	.byte	W24
@ 002   ----------------------------------------
mus_ancient_groover_3_002:
	.byte	W12
	.byte		N05   , Cs4 , v084
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N10   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N36   , Cs4 
	.byte	W48
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_3_002
@ 004   ----------------------------------------
	.byte		N05   , Gs4 , v084
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N12   , En5 
	.byte	W24
	.byte		N10   , Cs4 , v120
	.byte	W12
	.byte		N22   , Gs4 
	.byte	W24
	.byte		N23   
	.byte	W24
@ 005   ----------------------------------------
	.byte		N20   , Fs4 
	.byte	W24
	.byte		N18   
	.byte	W19
	.byte		N04   , Gs4 
	.byte	W05
	.byte		N40   , Cs4 , v120, gtp1
	.byte	W48
@ 006   ----------------------------------------
	.byte		N23   , En4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		N17   , Cs4 
	.byte	W18
	.byte		N05   , Bn3 
	.byte	W06
@ 007   ----------------------------------------
	.byte		N32   , Cs4 , v120, gtp3
	.byte	W36
	.byte		N05   , Gs3 , v092
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 , v096
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N32   , Cs4 , v096, gtp3
	.byte	W36
@ 008   ----------------------------------------
	.byte		N05   , Gs4 , v084
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N12   , En5 
	.byte	W36
	.byte		N23   , Gs4 , v120
	.byte	W24
	.byte		N23   
	.byte	W24
@ 009   ----------------------------------------
	.byte		N17   , Fs4 
	.byte	W18
	.byte		N05   , En4 
	.byte	W06
	.byte		N23   , Gs4 
	.byte	W24
	.byte		N40   , Cs4 , v120, gtp1
	.byte	W48
@ 010   ----------------------------------------
	.byte		N44   , Gs4 , v120, gtp3
	.byte	W48
	.byte		N23   , Fs4 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
@ 011   ----------------------------------------
	.byte		N32   , Gs4 , v120, gtp3
	.byte	W36
	.byte		N05   , Gs4 , v092
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 , v096
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N32   , Ds4 , v096, gtp3
	.byte	W36
@ 012   ----------------------------------------
	.byte		N02   , Gs3 
	.byte	W03
	.byte		        Gs3 , v092
	.byte	W03
	.byte		N05   , En3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N02   , Gs3 , v096
	.byte	W03
	.byte		N08   , Gs3 , v092
	.byte	W09
	.byte		N02   , Bn3 , v096
	.byte	W03
	.byte		N08   , Bn3 , v092
	.byte	W09
	.byte		N02   , Fs3 , v096
	.byte	W03
	.byte		N08   , Fs3 , v092
	.byte	W09
	.byte		N05   , Ds4 , v108
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N10   , Fs4 
	.byte	W12
	.byte		N11   , Bn3 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N02   , En4 
	.byte	W03
	.byte		        Gs3 , v092
	.byte	W03
	.byte		N05   , En3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N02   , Gs3 , v096
	.byte	W03
	.byte		N08   , Gs3 , v092
	.byte	W09
	.byte		N02   , Bn3 , v096
	.byte	W03
	.byte		N08   , Bn3 , v092
	.byte	W09
	.byte		N02   , Gs3 , v096
	.byte	W03
	.byte		N20   , Gs3 , v092
	.byte	W21
	.byte		N02   , Fs3 , v096
	.byte	W03
	.byte		N20   , Fs3 , v092
	.byte	W21
@ 014   ----------------------------------------
	.byte		N02   , En3 , v096
	.byte	W03
	.byte		N08   , En3 , v092
	.byte	W09
	.byte		N02   , En3 , v096
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N08   , En3 , v092
	.byte	W09
	.byte		N02   , Ds3 , v096
	.byte	W03
	.byte		N08   , Ds3 , v092
	.byte	W09
	.byte		N02   , Cs3 , v096
	.byte	W03
	.byte		N08   , Cs3 , v092
	.byte	W09
	.byte		N05   , Cs4 , v108
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N11   , En4 
	.byte	W12
	.byte		N02   , Cs3 , v096
	.byte	W03
	.byte		        Cs3 , v092
	.byte	W03
	.byte		        Ds3 , v096
	.byte	W03
	.byte		        Ds3 , v092
	.byte	W03
@ 015   ----------------------------------------
	.byte		        En3 , v096
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N08   , En3 , v092
	.byte	W09
	.byte		N02   , Fs3 , v096
	.byte	W03
	.byte		N08   , Fs3 , v092
	.byte	W09
	.byte		N02   , Fs3 , v096
	.byte	W03
	.byte		N08   , Fs3 , v092
	.byte	W09
	.byte		N05   , Ds4 , v108
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N11   , Fs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N02   , En4 
	.byte	W03
	.byte		        Gs3 , v092
	.byte	W03
	.byte		N05   , En3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N02   , Gs3 , v096
	.byte	W03
	.byte		N08   , Gs3 , v092
	.byte	W09
	.byte		N02   , Bn3 , v096
	.byte	W03
	.byte		N08   , Bn3 , v092
	.byte	W09
	.byte		N02   , Fs3 , v096
	.byte	W03
	.byte		N08   , Fs3 , v092
	.byte	W09
	.byte		N05   , Ds4 , v108
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N11   , Fs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N02   , En4 
	.byte	W03
	.byte		        Gs3 , v092
	.byte	W03
	.byte		N05   , En3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N02   , Gs3 , v096
	.byte	W03
	.byte		N08   , Gs3 , v092
	.byte	W09
	.byte		N02   , Bn3 , v096
	.byte	W03
	.byte		N08   , Bn3 , v092
	.byte	W09
	.byte		N02   , Cs4 , v096
	.byte	W03
	.byte		N20   , Cs4 , v092
	.byte	W21
	.byte		N02   , Ds4 , v096
	.byte	W03
	.byte		N20   , Ds4 , v092
	.byte	W21
@ 018   ----------------------------------------
	.byte		N02   , Ds4 , v096
	.byte	W03
	.byte		N24   , Ds4 , v088
	.byte	W92
	.byte	W01
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte		N02   , En4 , v096
	.byte	W03
	.byte		N20   , En4 , v088
	.byte	W21
	.byte		N02   , An3 , v096
	.byte	W03
	.byte		N20   , An3 , v088
	.byte	W21
	.byte		N02   , Cs4 , v096
	.byte	W03
	.byte		N32   , Cs4 , v088
	.byte	W32
	.byte	W01
	.byte		N02   , En4 , v096
	.byte	W03
	.byte		N08   , En4 , v088
	.byte	W09
@ 021   ----------------------------------------
mus_ancient_groover_3_021:
	.byte		N02   , Ds4 , v096
	.byte	W03
	.byte		N20   , Ds4 , v088
	.byte	W21
	.byte		N02   , Bn3 , v096
	.byte	W03
	.byte		N20   , Bn3 , v088
	.byte	W21
	.byte		N02   , Fs3 , v096
	.byte	W03
	.byte		N36   , Fs3 , v088
	.byte	W36
	.byte	W03
	.byte		N02   , Ds4 , v096
	.byte	W03
	.byte		        Ds4 , v088
	.byte	W03
	.byte	PEND
@ 022   ----------------------------------------
mus_ancient_groover_3_022:
	.byte		N02   , Cs4 , v096
	.byte	W03
	.byte		N96   , Cs4 , v088
	.byte	W92
	.byte	W01
	.byte	PEND
@ 023   ----------------------------------------
mus_ancient_groover_3_023:
	.byte	W84
	.byte		N05   , Gs3 , v064
	.byte	W06
	.byte		        Ds4 , v080
	.byte	W06
	.byte	PEND
@ 024   ----------------------------------------
	.byte		N84   , Cs4 , v080, gtp2
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_3_023
@ 028   ----------------------------------------
	.byte		N84   , Cs4 , v080, gtp2
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
mus_ancient_groover_3_030:
	.byte		N05   , Gs4 , v084
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N12   , En5 
	.byte	W84
	.byte	PEND
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W36
	.byte		N05   , Gs3 , v092
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 , v096
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N32   , Cs4 , v096, gtp3
	.byte	W36
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_3_030
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W36
	.byte		N05   , Gs4 , v092
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 , v096
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N32   , Ds4 , v096, gtp3
	.byte	W36
@ 038   ----------------------------------------
	.byte		N05   , Ds3 , v092
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N24   , Bn3 , v092, gtp3
	.byte	W42
	.byte		N05   , Ds4 , v108
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N10   , Fs4 
	.byte	W12
	.byte		N11   , Bn3 
	.byte	W12
@ 039   ----------------------------------------
mus_ancient_groover_3_039:
	.byte		N05   , En4 , v108
	.byte	W06
	.byte		        En3 , v092
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N24   , Bn3 , v092, gtp3
	.byte	W78
	.byte	PEND
@ 040   ----------------------------------------
	.byte	W60
	.byte		N05   , Cs4 , v108
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N24   , En4 
	.byte	W24
@ 041   ----------------------------------------
	.byte	W60
	.byte		N05   , Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N11   , Fs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 042   ----------------------------------------
	.byte		N05   , En4 
	.byte	W06
	.byte		        En3 , v092
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N24   , Bn3 , v092, gtp3
	.byte	W42
	.byte		N05   , Ds4 , v108
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N11   , Fs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_3_039
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W03
	.byte		N23   , En4 , v088
	.byte	W24
	.byte		N20   , An3 
	.byte	W21
	.byte		N32   , Cs4 , v096, gtp3
	.byte	W36
	.byte		N02   , En4 
	.byte	W03
	.byte		N08   , En4 , v088
	.byte	W09
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_3_021
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_3_022
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_3_023
@ 050   ----------------------------------------
	.byte		N84   , Cs4 , v080, gtp2
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_3_023
@ 054   ----------------------------------------
	.byte		N84   , Cs4 , v080, gtp2
	.byte	W96
@ 055   ----------------------------------------
	.byte	W84
	.byte	W02
	.byte	GOTO
	 .word	mus_ancient_groover_3_B1
mus_ancient_groover_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_ancient_groover_4:
	.byte	KEYSH , mus_ancient_groover_key+0
mus_ancient_groover_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 88*mus_ancient_groover_mvl/mxv
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W12
	.byte		        Fs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , As3 , v072
	.byte	W12
	.byte		        Cn1 , v068
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N02   
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W12
	.byte		        Cs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        An3 , v060
	.byte		N02   , As3 , v072
	.byte	W12
@ 001   ----------------------------------------
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W12
	.byte		        Cn1 , v068
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , An4 , v072
	.byte	W12
	.byte		        Fs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N02   , As1 , v084
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W12
	.byte		        Fs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , As3 , v072
	.byte	W12
	.byte		        Cn1 , v068
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N02   
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Fs1 
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W12
	.byte		        Cs1 , v084
	.byte		N02   , An3 , v060
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		        Fs1 , v084
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte	W06
@ 003   ----------------------------------------
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		N02   
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		N02   
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		        Fs1 , v084
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte	W06
	.byte		        Cn1 , v088
	.byte		N02   , Fs4 , v044
	.byte	W06
	.byte		        Cn1 , v088
	.byte		N02   , Fs4 , v044
	.byte	W06
@ 004   ----------------------------------------
mus_ancient_groover_4_004:
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W12
	.byte		        Fs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , As3 , v072
	.byte	W12
	.byte		        Cn1 , v068
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N02   
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W12
	.byte		        Cs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        An3 , v060
	.byte		N02   , As3 , v072
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_ancient_groover_4_005:
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W12
	.byte		        Cn1 , v068
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , An4 , v072
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N02   , As1 , v084
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_ancient_groover_4_006:
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W12
	.byte		        Fs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , As3 , v072
	.byte	W12
	.byte		        Cn1 , v068
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N02   
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Fs1 
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , An3 , v060
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		        Fs1 , v084
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
mus_ancient_groover_4_007:
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		N02   
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		N02   
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N02   , Cn1 , v084
	.byte	W06
	.byte		        Fs1 
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , An4 , v104
	.byte	W06
	.byte		        Fs1 , v084
	.byte	W06
	.byte		        As1 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_006
@ 019   ----------------------------------------
mus_ancient_groover_4_019:
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		N02   
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		N02   
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N02   , Cn1 , v084
	.byte	W06
	.byte		        Fs1 
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N02   , As3 , v072
	.byte	W03
	.byte		        Fs1 , v084
	.byte	W03
	.byte		        Cn1 , v068
	.byte		N02   , An4 , v072
	.byte	W03
	.byte		        Fs1 , v084
	.byte	W03
	.byte		N02   
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , An4 , v104
	.byte	W12
	.byte		        As1 , v084
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_ancient_groover_4_020:
	.byte		N02   , Cn1 , v092
	.byte		N02   , Cs2 , v068
	.byte	W24
	.byte		        Fs1 , v084
	.byte	W24
	.byte		N02   
	.byte	W18
	.byte		        As1 
	.byte	W06
	.byte		        Fs1 
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v084
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N02   , Fs1 , v084
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
mus_ancient_groover_4_021:
	.byte		N02   , Cn1 , v092
	.byte		N02   , Cs2 , v068
	.byte	W12
	.byte		        Fs1 , v084
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N02   
	.byte		N02   , Cs2 , v068
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v104
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v104
	.byte	W06
	.byte		        Fs1 , v084
	.byte	W06
	.byte		        Cn1 , v088
	.byte		N02   , Fs4 , v044
	.byte	W06
	.byte		        Cn1 , v088
	.byte		N02   , Fs4 , v044
	.byte	W06
	.byte	PEND
@ 022   ----------------------------------------
mus_ancient_groover_4_022:
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W12
	.byte		        Fs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , As3 , v072
	.byte	W12
	.byte		        An3 , v060
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N02   
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W12
	.byte		        Cs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        An3 , v060
	.byte		N02   , As3 , v072
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
mus_ancient_groover_4_023:
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W12
	.byte		        Cn1 , v068
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , An3 , v060
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , An4 , v072
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N02   , As1 , v084
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_022
@ 025   ----------------------------------------
mus_ancient_groover_4_025:
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		N02   
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		N02   
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , An4 , v104
	.byte	W06
	.byte		        Fs1 , v084
	.byte	W06
	.byte		        As1 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_022
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_023
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_022
@ 029   ----------------------------------------
mus_ancient_groover_4_029:
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		N02   
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		N02   
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte		N02   , As3 , v072
	.byte	W03
	.byte		        Fs1 , v084
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W03
	.byte		        Fs1 , v084
	.byte	W03
	.byte		N02   
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , An4 , v104
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_022
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_023
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_022
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_022
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_023
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_022
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_029
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_004
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_005
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_006
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_007
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_004
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_005
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_006
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_019
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_020
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_021
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_022
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_023
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_022
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_025
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_022
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_023
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_ancient_groover_4_022
@ 055   ----------------------------------------
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		N02   
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cn1 , v068
	.byte	W06
	.byte		N02   
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W06
	.byte		        Fs1 , v084
	.byte		N02   , As3 , v072
	.byte	W03
	.byte		        Fs1 , v084
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v072
	.byte	W03
	.byte		        Fs1 , v084
	.byte	W03
	.byte		N02   
	.byte		N02   , As3 , v072
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , An4 , v104
	.byte	W14
	.byte	GOTO
	 .word	mus_ancient_groover_4_B1
mus_ancient_groover_4_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_ancient_groover:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_ancient_groover_pri	@ Priority
	.byte	mus_ancient_groover_rev	@ Reverb.

	.word	mus_ancient_groover_grp

	.word	mus_ancient_groover_1
	.word	mus_ancient_groover_2
	.word	mus_ancient_groover_3
	.word	mus_ancient_groover_4

	.end
