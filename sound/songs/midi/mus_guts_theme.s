	.include "MPlayDef.s"

	.equ	mus_guts_theme_grp, voicegroup_guts_theme
	.equ	mus_guts_theme_pri, 0
	.equ	mus_guts_theme_rev, reverb_set+50
	.equ	mus_guts_theme_mvl, 100
	.equ	mus_guts_theme_key, 0
	.equ	mus_guts_theme_tbs, 1
	.equ	mus_guts_theme_exg, 1
	.equ	mus_guts_theme_cmp, 1

	.section .rodata
	.global	mus_guts_theme
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_guts_theme_1:
	.byte	KEYSH , mus_guts_theme_key+0
mus_guts_theme_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 70*mus_guts_theme_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_guts_theme_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W24
	.byte		N11   , Bn1 , v088
	.byte	W12
	.byte		N60   , Cs2 , v096
	.byte	W60
@ 005   ----------------------------------------
	.byte	W24
	.byte		N11   , Bn1 , v108
	.byte	W12
	.byte		N32   , Cs2 , v104, gtp3
	.byte	W36
	.byte		N24   , Gs2 , v100
	.byte	W24
@ 006   ----------------------------------------
	.byte	W24
	.byte		N11   , Bn1 , v096
	.byte	W12
	.byte		N60   , Ds2 , v104
	.byte	W60
@ 007   ----------------------------------------
mus_guts_theme_1_007:
	.byte	W24
	.byte		N11   , Bn1 , v100
	.byte	W12
	.byte		N30   , Cs2 
	.byte	W36
	.byte		N12   , Gs2 , v092
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
mus_guts_theme_1_008:
	.byte		N11   , En1 , v096
	.byte	W12
	.byte		        Bn1 , v100
	.byte	W12
	.byte		        Bn1 , v088
	.byte	W12
	.byte		N56   , Cs2 , v096, gtp3
	.byte	W60
	.byte	PEND
@ 009   ----------------------------------------
mus_guts_theme_1_009:
	.byte		N12   , En1 , v096
	.byte	W24
	.byte		N11   , Bn1 , v108
	.byte	W12
	.byte		N32   , Cs2 , v104, gtp3
	.byte	W36
	.byte		N23   , Gs2 , v100
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
mus_guts_theme_1_010:
	.byte		N12   , En1 , v100
	.byte	W24
	.byte		N11   , Bn1 , v096
	.byte	W12
	.byte		N56   , Ds2 , v104, gtp3
	.byte	W60
	.byte	PEND
@ 011   ----------------------------------------
mus_guts_theme_1_011:
	.byte		N12   , En1 , v100
	.byte	W24
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N30   , Cs2 
	.byte	W36
	.byte		N12   , Gs2 , v092
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_011
@ 016   ----------------------------------------
mus_guts_theme_1_016:
	.byte		N12   , En1 , v096
	.byte	W24
	.byte		N11   , Bn1 , v088
	.byte	W12
	.byte		N60   , Cs2 , v096
	.byte	W60
	.byte	PEND
@ 017   ----------------------------------------
mus_guts_theme_1_017:
	.byte	W24
	.byte		N11   , Bn1 , v108
	.byte	W12
	.byte		N32   , Cs2 , v104, gtp3
	.byte	W36
	.byte		N23   , Gs2 , v100
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
mus_guts_theme_1_018:
	.byte		N12   , En1 , v100
	.byte	W24
	.byte		N11   , Bn1 , v096
	.byte	W12
	.byte		N60   , Ds2 , v104
	.byte	W60
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_007
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_007
@ 024   ----------------------------------------
mus_guts_theme_1_024:
	.byte		N11   , Cs2 , v100
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N32   , Cs2 , v100, gtp3
	.byte	W36
	.byte		N11   , En2 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_guts_theme_1_025:
	.byte		N44   , Bn1 , v092, gtp3
	.byte	W48
	.byte		N23   
	.byte	W24
	.byte		        En2 , v096
	.byte	W24
	.byte	PEND
@ 026   ----------------------------------------
mus_guts_theme_1_026:
	.byte		N23   , Bn1 , v096
	.byte	W24
	.byte		N11   , Fs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N44   , Ds2 , v096, gtp3
	.byte	W48
	.byte	PEND
@ 027   ----------------------------------------
mus_guts_theme_1_027:
	.byte		N12   , Cs2 , v088
	.byte	W36
	.byte		N11   , Cs2 , v104
	.byte	W12
	.byte		N36   , Cs2 , v096
	.byte	W48
	.byte	PEND
@ 028   ----------------------------------------
	.byte		N11   , Cs2 , v100
	.byte	W12
	.byte		N12   , En2 
	.byte	W36
	.byte		N44   , Cs2 , v100, gtp3
	.byte	W48
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_025
@ 030   ----------------------------------------
	.byte		N32   , Bn1 , v096, gtp3
	.byte	W36
	.byte		N11   , Ds2 
	.byte	W12
	.byte		N44   , Ds2 , v096, gtp3
	.byte	W48
@ 031   ----------------------------------------
	.byte		N12   , Cs2 , v088
	.byte	W48
	.byte		N36   , Cs2 , v096
	.byte	W48
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_024
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_026
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_027
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_008
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_009
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_010
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_011
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_010
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_016
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_017
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_018
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_007
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_018
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_007
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_024
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_025
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_026
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_027
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_024
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_1_026
@ 059   ----------------------------------------
	.byte		N12   , Cs2 , v088
	.byte	W36
	.byte		N11   , Cs2 , v104
	.byte	W12
	.byte		N36   , Cs2 , v096
	.byte	W42
	.byte	GOTO
	 .word	mus_guts_theme_1_B1
mus_guts_theme_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_guts_theme_2:
	.byte	KEYSH , mus_guts_theme_key+0
mus_guts_theme_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 46*mus_guts_theme_mvl/mxv
	.byte		PAN   , c_v-12
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
mus_guts_theme_2_008:
	.byte	W24
	.byte		N11   , Bn3 , v056
	.byte	W12
	.byte		N60   , Cs4 
	.byte	W60
	.byte	PEND
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W36
	.byte		N18   , Ds4 
	.byte	W60
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_2_008
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W36
	.byte		N18   , Ds4 , v056
	.byte	W60
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
mus_guts_theme_2_017:
	.byte	W24
	.byte		N12   , Bn3 , v056
	.byte	W48
	.byte		N24   , Gs3 , v052
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W24
	.byte		N12   , Bn3 , v056
	.byte	W72
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_2_017
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W24
	.byte		N12   , Bn3 , v056
	.byte	W72
@ 024   ----------------------------------------
mus_guts_theme_2_024:
	.byte		N12   , En3 , v056
	.byte	W48
	.byte		N44   , Ds3 , v056, gtp3
	.byte	W48
	.byte	PEND
@ 025   ----------------------------------------
mus_guts_theme_2_025:
	.byte		N44   , Ds3 , v056, gtp3
	.byte	W48
	.byte		N12   , Bn2 , v052
	.byte	W24
	.byte		N23   , En3 , v056
	.byte	W24
	.byte	PEND
@ 026   ----------------------------------------
mus_guts_theme_2_026:
	.byte		N32   , Ds3 , v060, gtp3
	.byte	W36
	.byte		N11   , Ds3 , v052
	.byte	W12
	.byte		N44   , Ds3 , v052, gtp3
	.byte	W48
	.byte	PEND
@ 027   ----------------------------------------
mus_guts_theme_2_027:
	.byte		N12   , En3 , v052
	.byte	W48
	.byte		N30   , Cs3 
	.byte	W48
	.byte	PEND
@ 028   ----------------------------------------
	.byte		N12   , En2 
	.byte	W96
@ 029   ----------------------------------------
	.byte		N48   , Ds2 
	.byte	W96
@ 030   ----------------------------------------
	.byte		N36   
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_2_024
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_2_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_2_026
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_2_027
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_2_008
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W36
	.byte		N18   , Ds4 , v056
	.byte	W60
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_2_008
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W36
	.byte		N18   , Ds4 , v056
	.byte	W60
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_2_017
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W24
	.byte		N12   , Bn3 , v056
	.byte	W72
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_2_017
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W24
	.byte		N12   , Bn3 , v056
	.byte	W72
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_2_024
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_2_025
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_2_026
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_2_027
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_2_024
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_2_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_2_026
@ 059   ----------------------------------------
	.byte		N12   , En3 , v052
	.byte	W48
	.byte		N30   , Cs3 
	.byte	W42
	.byte	GOTO
	 .word	mus_guts_theme_2_B1
mus_guts_theme_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_guts_theme_3:
	.byte	KEYSH , mus_guts_theme_key+0
mus_guts_theme_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_guts_theme_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N11   , En3 , v104
	.byte	W12
	.byte		        Bn2 , v096
	.byte	W12
	.byte		        Bn2 , v108
	.byte	W12
	.byte		N56   , Cs3 , v100, gtp3
	.byte	W60
@ 001   ----------------------------------------
	.byte		N11   , En3 , v096
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn2 , v104
	.byte	W12
	.byte		N32   , Cs3 , v100, gtp3
	.byte	W36
	.byte		N23   , Gs2 , v096
	.byte	W24
@ 002   ----------------------------------------
	.byte		N11   , En3 , v088
	.byte	W12
	.byte		        Bn2 , v092
	.byte	W12
	.byte		        Bn2 , v096
	.byte	W12
	.byte		N56   , Cs3 , v092, gtp3
	.byte	W60
@ 003   ----------------------------------------
	.byte		N11   , En3 , v096
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N32   , Cs3 , v096, gtp3
	.byte	W36
	.byte		N23   , Gs2 , v088
	.byte	W24
@ 004   ----------------------------------------
	.byte		N11   , En3 
	.byte	W12
	.byte		        Bn2 , v092
	.byte	W12
	.byte		        Bn3 , v096
	.byte	W12
	.byte		N56   , Cs4 , v092, gtp3
	.byte	W60
@ 005   ----------------------------------------
	.byte		N11   , En3 , v088
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn3 , v096
	.byte	W12
	.byte		N32   , Cs4 , v096, gtp3
	.byte	W36
	.byte		N23   , Gs3 , v092
	.byte	W24
@ 006   ----------------------------------------
	.byte		N11   , En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn3 , v096
	.byte	W12
	.byte		N56   , Ds4 , v096, gtp3
	.byte	W60
@ 007   ----------------------------------------
	.byte		N11   , En3 , v092
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn3 , v096
	.byte	W12
	.byte		N30   , Cs4 , v092
	.byte	W36
	.byte		N12   , Gs3 , v088
	.byte	W24
@ 008   ----------------------------------------
mus_guts_theme_3_008:
	.byte		N05   , Gs3 , v096
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 , v088
	.byte	W06
	.byte		        Ds4 , v096
	.byte	W06
	.byte		        En4 , v092
	.byte	W06
	.byte		        Fs4 , v100
	.byte	W06
	.byte		N56   , Ds4 , v104, gtp3
	.byte	W60
	.byte	PEND
@ 009   ----------------------------------------
mus_guts_theme_3_009:
	.byte		N11   , Gs3 , v096
	.byte	W12
	.byte		        Bn2 , v088
	.byte	W12
	.byte		        Bn3 , v096
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N23   , Gs3 
	.byte	W24
	.byte		        Gs3 , v092
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
mus_guts_theme_3_010:
	.byte		N11   , Ds4 , v108
	.byte	W12
	.byte		        Bn2 , v092
	.byte	W12
	.byte		N05   , Bn3 , v096
	.byte	W06
	.byte		        En4 , v084
	.byte	W06
	.byte		        Fs4 , v108
	.byte	W06
	.byte		        En4 , v088
	.byte	W06
	.byte		        Ds4 , v100
	.byte	W06
	.byte		        En4 , v088
	.byte	W06
	.byte		        Ds4 , v092
	.byte	W06
	.byte		        Cs4 , v084
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N12   , En3 , v096
	.byte	W18
	.byte	PEND
@ 011   ----------------------------------------
mus_guts_theme_3_011:
	.byte		N11   , Gs3 , v096
	.byte	W12
	.byte		        Bn2 , v092
	.byte	W12
	.byte		        Bn3 , v096
	.byte	W12
	.byte		        Cs4 , v092
	.byte	W12
	.byte		N23   , Gs3 , v096
	.byte	W24
	.byte		        Gs3 , v088
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_011
@ 016   ----------------------------------------
mus_guts_theme_3_016:
	.byte		N11   , En4 , v092
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn3 , v096
	.byte	W12
	.byte		        Cs4 , v092
	.byte	W12
	.byte		N44   , Ds4 , v096, gtp3
	.byte	W48
	.byte	PEND
@ 017   ----------------------------------------
mus_guts_theme_3_017:
	.byte		N11   , En3 , v088
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds4 , v096
	.byte	W12
	.byte		N32   , Cs4 , v096, gtp3
	.byte	W36
	.byte		N23   , Bn3 , v088
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
mus_guts_theme_3_018:
	.byte		N11   , Ds4 , v096
	.byte	W12
	.byte		        Bn2 , v092
	.byte	W12
	.byte		        Bn3 , v096
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N44   , Cs4 , v096, gtp3
	.byte	W48
	.byte	PEND
@ 019   ----------------------------------------
mus_guts_theme_3_019:
	.byte		N11   , En3 , v092
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cs4 , v088
	.byte	W12
	.byte		N32   , Cs4 , v092, gtp3
	.byte	W36
	.byte		N12   , Gs3 , v096
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_019
@ 024   ----------------------------------------
mus_guts_theme_3_024:
	.byte		N11   , Fs4 , v108
	.byte	W12
	.byte		N05   , Cs3 , v092
	.byte	W06
	.byte		        Gs4 , v104
	.byte	W06
	.byte		        Fs4 , v100
	.byte	W06
	.byte		        En4 , v096
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N11   , Fs4 , v108
	.byte	W12
	.byte		        En3 , v092
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn4 , v108
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_guts_theme_3_025:
	.byte		N11   , Fs4 , v108
	.byte	W12
	.byte		N05   , Bn2 , v092
	.byte	W06
	.byte		        Ds4 , v104
	.byte	W06
	.byte		N11   , Fs3 , v092
	.byte	W12
	.byte		        Ds4 , v104
	.byte	W12
	.byte		        Cs4 , v108
	.byte	W12
	.byte		N05   , En3 , v088
	.byte	W06
	.byte		        Bn3 , v096
	.byte	W06
	.byte		N17   , Cs4 , v104
	.byte	W18
	.byte		N05   , Bn3 , v092
	.byte	W06
	.byte	PEND
@ 026   ----------------------------------------
mus_guts_theme_3_026:
	.byte		N11   , Fs4 , v108
	.byte	W12
	.byte		N05   , Bn2 , v088
	.byte	W06
	.byte		        Gs4 , v100
	.byte	W06
	.byte		        Fs4 , v096
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 , v100
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N32   , Fs4 , v108, gtp3
	.byte	W36
	.byte		N11   , Bn4 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_guts_theme_3_027:
	.byte		N11   , Fs4 , v108
	.byte	W12
	.byte		N05   , En3 , v092
	.byte	W06
	.byte		        En4 , v104
	.byte	W06
	.byte		N11   , Gs2 , v088
	.byte	W12
	.byte		        Ds4 , v104
	.byte	W12
	.byte		N17   , Cs4 , v108
	.byte	W18
	.byte		N05   , Bn3 , v084
	.byte	W06
	.byte		N18   , Cs4 , v100
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
	.byte		N11   , En3 , v096
	.byte	W12
	.byte		        Cs3 , v092
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Ds3 , v096
	.byte	W12
	.byte		        En3 , v092
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 029   ----------------------------------------
	.byte		        Ds3 , v096
	.byte	W12
	.byte		        Bn2 , v092
	.byte	W12
	.byte		N12   , Fs3 
	.byte	W24
	.byte		N11   , Bn2 , v088
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N23   , En3 , v096
	.byte	W24
@ 030   ----------------------------------------
	.byte		N11   , Ds3 , v100
	.byte	W12
	.byte		        Bn2 , v088
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N44   , Ds3 , v088, gtp3
	.byte	W48
@ 031   ----------------------------------------
	.byte		N11   , En3 
	.byte	W12
	.byte		        En3 , v092
	.byte	W12
	.byte		        Gs2 , v088
	.byte	W12
	.byte		        Cs3 , v092
	.byte	W12
	.byte		N30   , Cs3 , v088
	.byte	W48
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_024
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_026
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_027
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_008
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_009
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_010
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_011
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_010
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_016
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_017
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_018
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_019
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_018
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_019
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_024
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_025
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_026
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_027
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_024
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_guts_theme_3_026
@ 059   ----------------------------------------
	.byte		N11   , Fs4 , v108
	.byte	W12
	.byte		N05   , En3 , v092
	.byte	W06
	.byte		        En4 , v104
	.byte	W06
	.byte		N11   , Gs2 , v088
	.byte	W12
	.byte		        Ds4 , v104
	.byte	W12
	.byte		N17   , Cs4 , v108
	.byte	W18
	.byte		N05   , Bn3 , v084
	.byte	W06
	.byte		N18   , Cs4 , v100
	.byte	W18
	.byte	GOTO
	 .word	mus_guts_theme_3_B1
mus_guts_theme_3_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_guts_theme:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_guts_theme_pri	@ Priority
	.byte	mus_guts_theme_rev	@ Reverb.

	.word	mus_guts_theme_grp

	.word	mus_guts_theme_1
	.word	mus_guts_theme_2
	.word	mus_guts_theme_3

	.end
