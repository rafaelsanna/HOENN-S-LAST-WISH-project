	.include "MPlayDef.s"

	.equ	mus_guts_theme_grp, voicegroup_guts_theme
	.equ	mus_guts_theme_pri, 0
	.equ	mus_guts_theme_rev, reverb_set+18
	.equ	mus_guts_theme_mvl, 90
	.equ	mus_guts_theme_key, 0
	.equ	mus_guts_theme_tbs, 1
	.equ	mus_guts_theme_exg, 0
	.equ	mus_guts_theme_cmp, 1

	.section .rodata
	.global	mus_guts_theme
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_guts_theme_1:
	.byte	KEYSH , mus_guts_theme_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 70*mus_guts_theme_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 100*mus_guts_theme_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N12   , En1 , v092
	.byte	W12
	.byte		        Bn1 , v080
	.byte	W12
	.byte		        Bn2 , v092
	.byte	W12
	.byte		N60   , Cs3 , v084
	.byte	W60
@ 001   ----------------------------------------
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 , v088
	.byte	W12
	.byte		N36   , Cs3 , v084
	.byte	W36
	.byte		N24   , Gs2 , v076
	.byte	W24
@ 002   ----------------------------------------
	.byte		N12   , En1 , v068
	.byte	W12
	.byte		        Bn1 , v072
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W12
	.byte		N60   , Cs3 , v076
	.byte	W60
@ 003   ----------------------------------------
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N36   , Cs3 , v076
	.byte	W36
	.byte		N24   , Gs2 , v072
	.byte	W24
@ 004   ----------------------------------------
	.byte		N12   , En1 , v068
	.byte	W12
	.byte		        Bn1 , v072
	.byte	W12
	.byte		        Bn2 , v060
	.byte		N12   , Bn3 , v076
	.byte	W12
	.byte		N60   , Cs3 , v068
	.byte		N60   , Cs4 , v076
	.byte	W60
@ 005   ----------------------------------------
	.byte		N12   , En1 , v068
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 , v076
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N36   , Cs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte		N24   , Gs2 , v072
	.byte		N24   , Gs3 
	.byte	W24
@ 006   ----------------------------------------
	.byte		N12   , En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 , v068
	.byte		N12   , Bn3 , v080
	.byte	W12
	.byte		N60   , Ds3 , v076
	.byte		N60   , Ds4 
	.byte	W60
@ 007   ----------------------------------------
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Bn3 , v080
	.byte	W12
	.byte		N30   , Cs3 , v072
	.byte		N30   , Cs4 , v076
	.byte	W36
	.byte		N12   , Gs2 , v068
	.byte		N12   , Gs3 , v072
	.byte	W24
@ 008   ----------------------------------------
mus_guts_theme_1_008:
	.byte		N12   , En1 , v068
	.byte		N06   , Gs3 , v080
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N12   , Bn1 , v072
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Ds4 , v076
	.byte	W06
	.byte		N12   , Bn2 , v060
	.byte		N12   , Bn3 , v076
	.byte		N06   , En4 , v072
	.byte	W06
	.byte		        Fs4 , v084
	.byte	W06
	.byte		N60   , Cs3 , v068
	.byte		N60   , Cs4 , v076
	.byte		N60   , Ds4 , v088
	.byte	W60
	.byte	PEND
@ 009   ----------------------------------------
mus_guts_theme_1_009:
	.byte		N12   , En1 , v068
	.byte		N48   , Gs3 , v076
	.byte	W12
	.byte		N12   , Bn1 , v068
	.byte	W12
	.byte		        Bn2 , v076
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N36   , Cs3 
	.byte		N36   , Cs4 
	.byte	W12
	.byte		N48   , Gs3 , v080
	.byte	W24
	.byte		N24   , Gs2 , v072
	.byte		N24   , Gs3 
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
mus_guts_theme_1_010:
	.byte		N12   , En1 , v072
	.byte		N30   , Ds4 , v092
	.byte	W12
	.byte		N12   , Bn1 , v072
	.byte	W12
	.byte		        Bn2 , v068
	.byte		N12   , Bn3 , v080
	.byte	W06
	.byte		N06   , En4 , v064
	.byte	W06
	.byte		N60   , Ds3 , v076
	.byte		N18   , Ds4 
	.byte		N06   , Fs4 , v092
	.byte	W06
	.byte		        En4 , v068
	.byte	W06
	.byte		        Ds4 , v084
	.byte	W06
	.byte		        En4 , v068
	.byte	W06
	.byte		        Ds4 , v072
	.byte	W06
	.byte		        Cs4 , v064
	.byte	W06
	.byte		        Bn3 , v068
	.byte	W06
	.byte		N12   , En3 , v076
	.byte	W18
	.byte	PEND
@ 011   ----------------------------------------
mus_guts_theme_1_011:
	.byte		N12   , En1 , v072
	.byte		N48   , Gs3 , v080
	.byte	W12
	.byte		N12   , Bn1 , v072
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Bn3 , v080
	.byte	W12
	.byte		N30   , Cs3 , v072
	.byte		N30   , Cs4 , v076
	.byte	W12
	.byte		N36   , Gs3 , v080
	.byte	W24
	.byte		N12   , Gs2 , v068
	.byte		N12   , Gs3 , v072
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
	.byte		N12   , En1 , v068
	.byte		N48   , En4 , v072
	.byte	W12
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        Bn2 , v060
	.byte		N12   , Bn3 , v076
	.byte	W12
	.byte		N60   , Cs3 , v068
	.byte		N60   , Cs4 , v076
	.byte	W12
	.byte		N72   , Ds4 , v080
	.byte	W48
	.byte	PEND
@ 017   ----------------------------------------
mus_guts_theme_1_017:
	.byte		N12   , En1 , v068
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 , v076
	.byte		N12   , Bn3 
	.byte		N48   , Ds4 
	.byte	W12
	.byte		N36   , Cs3 
	.byte		N36   , Cs4 
	.byte	W36
	.byte		N24   , Gs2 , v072
	.byte		N24   , Gs3 
	.byte		N24   , Bn3 , v068
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
mus_guts_theme_1_018:
	.byte		N12   , En1 , v072
	.byte		N48   , Ds4 , v076
	.byte	W12
	.byte		N12   , Bn1 , v072
	.byte	W12
	.byte		        Bn2 , v068
	.byte		N12   , Bn3 , v080
	.byte	W12
	.byte		N60   , Ds3 , v076
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N72   , Cs4 
	.byte	W48
	.byte	PEND
@ 019   ----------------------------------------
mus_guts_theme_1_019:
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Bn3 , v080
	.byte		N42   , Cs4 , v072
	.byte	W12
	.byte		N30   , Cs3 
	.byte		N30   , Cs4 , v076
	.byte	W36
	.byte		N12   , Gs2 , v068
	.byte		N12   , Gs3 , v080
	.byte		N12   , Gs3 , v072
	.byte	W24
	.byte	PEND
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
	 .word	mus_guts_theme_1_019
@ 024   ----------------------------------------
mus_guts_theme_1_024:
	.byte		N12   , Cs2 , v072
	.byte		N12   , En2 
	.byte		N12   , En3 , v080
	.byte		N18   , Fs4 , v092
	.byte	W12
	.byte		N12   , En2 , v072
	.byte		N12   , Cs3 
	.byte	W06
	.byte		N06   , Gs4 , v088
	.byte	W06
	.byte		N12   , Gs2 , v072
	.byte		N06   , Fs4 , v084
	.byte	W06
	.byte		        En4 , v080
	.byte	W06
	.byte		N12   , Cs3 , v072
	.byte		N06   , Fs4 , v080
	.byte	W06
	.byte		        Bn4 , v076
	.byte	W06
	.byte		N48   , Cs2 , v072
	.byte		N48   , Ds3 , v076
	.byte		N36   , Fs4 , v092
	.byte	W12
	.byte		N12   , En2 , v072
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn4 , v092
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_guts_theme_1_025:
	.byte		N48   , Bn1 , v068
	.byte		N48   , Ds2 
	.byte		N48   , Ds3 , v080
	.byte		N18   , Fs4 , v092
	.byte	W12
	.byte		N12   , Bn2 , v072
	.byte	W06
	.byte		N18   , Ds4 , v092
	.byte	W06
	.byte		N12   , Fs2 , v072
	.byte	W12
	.byte		        Ds4 , v088
	.byte	W12
	.byte		N24   , Bn1 , v064
	.byte		N12   , Bn2 , v068
	.byte		N18   , Cs4 , v092
	.byte	W12
	.byte		N12   , En2 , v068
	.byte	W06
	.byte		N06   , Bn3 , v080
	.byte	W06
	.byte		N24   , En2 , v068
	.byte		N24   , En3 , v076
	.byte		N18   , Cs4 , v088
	.byte	W18
	.byte		N06   , Bn3 , v072
	.byte	W06
	.byte	PEND
@ 026   ----------------------------------------
mus_guts_theme_1_026:
	.byte		N36   , Bn1 , v068
	.byte		N36   , Ds2 , v072
	.byte		N36   , Ds3 , v084
	.byte		N18   , Fs4 , v092
	.byte	W12
	.byte		N12   , Bn2 , v068
	.byte	W06
	.byte		N06   , Gs4 , v084
	.byte	W06
	.byte		N12   , Fs2 , v068
	.byte		N06   , Fs4 , v080
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N12   , Ds2 , v068
	.byte		N12   , Ds3 , v072
	.byte		N06   , Fs4 , v084
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N48   , Ds2 , v068
	.byte		N48   , Ds3 
	.byte		N36   , Fs4 , v092
	.byte	W36
	.byte		N12   , Bn4 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_guts_theme_1_027:
	.byte		N12   , Cs2 , v060
	.byte		N12   , En3 , v068
	.byte		N18   , Fs4 , v092
	.byte	W12
	.byte		N12   , En2 , v072
	.byte	W06
	.byte		N18   , En4 , v092
	.byte	W06
	.byte		N12   , Gs2 , v072
	.byte	W12
	.byte		        Cs3 , v076
	.byte		N12   , Ds4 , v088
	.byte	W12
	.byte		N36   , Cs2 , v068
	.byte		N30   , Cs3 , v072
	.byte		N18   , Cs4 , v092
	.byte	W18
	.byte		N06   , Bn3 , v068
	.byte	W06
	.byte		N18   , Cs4 , v088
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
	.byte		N12   , Cs2 , v072
	.byte		N12   , En2 
	.byte		N12   , En3 , v080
	.byte	W12
	.byte		        En2 , v072
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N48   , Cs2 
	.byte		N48   , Ds3 , v076
	.byte	W12
	.byte		N12   , En2 , v072
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 029   ----------------------------------------
	.byte		N48   , Bn1 , v068
	.byte		N48   , Ds2 
	.byte		N48   , Ds3 , v080
	.byte	W12
	.byte		N12   , Bn2 , v072
	.byte	W12
	.byte		        Fs2 
	.byte	W24
	.byte		N24   , Bn1 , v064
	.byte		N12   , Bn2 , v068
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N24   
	.byte		N24   , En3 , v076
	.byte	W24
@ 030   ----------------------------------------
	.byte		N36   , Bn1 , v068
	.byte		N36   , Ds2 , v072
	.byte		N36   , Ds3 , v084
	.byte	W12
	.byte		N12   , Bn2 , v068
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Ds3 , v072
	.byte	W12
	.byte		N48   , Ds2 , v068
	.byte		N48   , Ds3 
	.byte	W48
@ 031   ----------------------------------------
	.byte		N12   , Cs2 , v060
	.byte		N12   , En3 , v068
	.byte	W12
	.byte		        En2 , v072
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 , v076
	.byte	W12
	.byte		N36   , Cs2 , v068
	.byte		N30   , Cs3 , v072
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
	 .word	mus_guts_theme_1_019
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
	 .word	mus_guts_theme_1_019
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
	.byte		N12   , Cs2 , v060
	.byte		N12   , En3 , v068
	.byte		N18   , Fs4 , v092
	.byte	W12
	.byte		N12   , En2 , v072
	.byte	W06
	.byte		N18   , En4 , v092
	.byte	W06
	.byte		N12   , Gs2 , v072
	.byte	W12
	.byte		        Cs3 , v076
	.byte		N12   , Ds4 , v088
	.byte	W12
	.byte		N36   , Cs2 , v068
	.byte		N30   , Cs3 , v072
	.byte		N18   , Cs4 , v092
	.byte	W18
	.byte		N06   , Bn3 , v068
	.byte	W06
	.byte		N18   , Cs4 , v088
	.byte	W18
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_guts_theme_2:
	.byte	KEYSH , mus_guts_theme_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 82*mus_guts_theme_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W36
	.byte		N56   , Cs3 , v068
	.byte	W60
@ 005   ----------------------------------------
	.byte	W36
	.byte		N32   
	.byte	W60
@ 006   ----------------------------------------
	.byte	W36
	.byte		N56   , Ds3 
	.byte	W60
@ 007   ----------------------------------------
	.byte	W36
	.byte		N30   , Cs3 
	.byte	W60
@ 008   ----------------------------------------
	.byte	W36
	.byte		N56   , Ds3 , v076
	.byte	W60
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W36
	.byte		N56   
	.byte	W60
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W48
	.byte		N44   , Ds3 , v072
	.byte	W48
@ 017   ----------------------------------------
	.byte	W36
	.byte		N32   , Cs3 , v068
	.byte	W60
@ 018   ----------------------------------------
	.byte	W48
	.byte		N44   
	.byte	W48
@ 019   ----------------------------------------
	.byte	W36
	.byte		N32   
	.byte	W60
@ 020   ----------------------------------------
	.byte	W48
	.byte		N44   , Ds3 , v072
	.byte	W48
@ 021   ----------------------------------------
	.byte	W36
	.byte		N32   , Cs3 , v068
	.byte	W60
@ 022   ----------------------------------------
	.byte	W48
	.byte		N44   
	.byte	W48
@ 023   ----------------------------------------
	.byte	W36
	.byte		N32   
	.byte	W60
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W48
	.byte		        Fs3 , v076
	.byte	W48
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W48
	.byte		N44   , Ds2 , v064
	.byte	W48
@ 031   ----------------------------------------
	.byte	W48
	.byte		N30   , Cs2 
	.byte	W48
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W48
	.byte		N32   , Fs3 , v076
	.byte	W48
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W36
	.byte		N56   , Ds3 
	.byte	W60
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W36
	.byte		N56   
	.byte	W60
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W48
	.byte		N44   , Ds3 , v072
	.byte	W48
@ 045   ----------------------------------------
	.byte	W36
	.byte		N32   , Cs3 , v068
	.byte	W60
@ 046   ----------------------------------------
	.byte	W48
	.byte		N44   
	.byte	W48
@ 047   ----------------------------------------
	.byte	W36
	.byte		N32   
	.byte	W60
@ 048   ----------------------------------------
	.byte	W48
	.byte		N44   , Ds3 , v072
	.byte	W48
@ 049   ----------------------------------------
	.byte	W36
	.byte		N32   , Cs3 , v068
	.byte	W60
@ 050   ----------------------------------------
	.byte	W48
	.byte		N44   
	.byte	W48
@ 051   ----------------------------------------
	.byte	W36
	.byte		N32   
	.byte	W60
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W48
	.byte		        Fs3 , v076
	.byte	W48
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W48
	.byte		N32   
	.byte	W32
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

mus_guts_theme:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_guts_theme_pri	@ Priority
	.byte	mus_guts_theme_rev	@ Reverb.

	.word	mus_guts_theme_grp

	.word	mus_guts_theme_1
	.word	mus_guts_theme_2

	.end
