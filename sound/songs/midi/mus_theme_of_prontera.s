	.include "MPlayDef.s"

	.equ	mus_theme_of_prontera_grp, voicegroup_theme_of_prontera
	.equ	mus_theme_of_prontera_pri, 0
	.equ	mus_theme_of_prontera_rev, reverb_set+50
	.equ	mus_theme_of_prontera_mvl, 100
	.equ	mus_theme_of_prontera_key, 0
	.equ	mus_theme_of_prontera_tbs, 1
	.equ	mus_theme_of_prontera_exg, 1
	.equ	mus_theme_of_prontera_cmp, 1

	.section .rodata
	.global	mus_theme_of_prontera
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_theme_of_prontera_1:
	.byte	KEYSH , mus_theme_of_prontera_key+0
mus_theme_of_prontera_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 148*mus_theme_of_prontera_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 125*mus_theme_of_prontera_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_theme_of_prontera_1_004:
	.byte		N44   , Cn1 , v120, gtp2
	.byte	W84
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte		N22   , Gn0 
	.byte	W24
	.byte		N11   
	.byte	W60
	.byte		N11   
	.byte	W12
@ 006   ----------------------------------------
	.byte		N22   , Fn1 
	.byte	W24
	.byte		N11   
	.byte	W48
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 007   ----------------------------------------
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W60
	.byte		N11   
	.byte	W12
@ 008   ----------------------------------------
	.byte		N32   , Cn1 , v120, gtp2
	.byte	W84
	.byte		N11   , Dn1 
	.byte	W12
@ 009   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 010   ----------------------------------------
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W72
	.byte		N11   
	.byte	W12
	.byte		N23   , Gn0 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W12
	.byte		N22   
	.byte	W84
@ 012   ----------------------------------------
	.byte		N44   , Cn1 , v120, gtp2
	.byte	W84
	.byte		N11   , Gn0 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N22   , Cn1 
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N44   , Cn1 , v120, gtp2
	.byte	W48
@ 014   ----------------------------------------
	.byte		N11   , Gn0 
	.byte	W24
	.byte		N68   , Gn0 , v120, gtp2
	.byte	W72
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
	.byte		N11   
	.byte	W24
	.byte		N32   , Gn0 , v120, gtp2
	.byte	W48
	.byte		N68   , Gn0 , v120, gtp2
	.byte	W24
@ 033   ----------------------------------------
	.byte	W84
	.byte		N11   , Gn0 , v104
	.byte	W12
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_004
@ 035   ----------------------------------------
mus_theme_of_prontera_1_035:
	.byte		N22   , Cn1 , v120
	.byte	W24
	.byte		N11   
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_035
@ 037   ----------------------------------------
mus_theme_of_prontera_1_037:
	.byte		N44   , Gn0 , v120, gtp2
	.byte	W48
	.byte		        Gn0 , v120, gtp2
	.byte	W48
	.byte	PEND
@ 038   ----------------------------------------
mus_theme_of_prontera_1_038:
	.byte		N44   , Cn1 , v120, gtp2
	.byte	W84
	.byte		N11   , Dn1 
	.byte	W12
	.byte	PEND
@ 039   ----------------------------------------
mus_theme_of_prontera_1_039:
	.byte		N44   , En1 , v120, gtp2
	.byte	W84
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
mus_theme_of_prontera_1_040:
	.byte		N22   , Fn1 , v120
	.byte	W24
	.byte		N11   
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_037
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_038
@ 043   ----------------------------------------
mus_theme_of_prontera_1_043:
	.byte		N22   , En1 , v120
	.byte	W24
	.byte		N11   
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 044   ----------------------------------------
mus_theme_of_prontera_1_044:
	.byte		N22   , Fn1 , v120
	.byte	W24
	.byte		N11   
	.byte	W36
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte	PEND
@ 045   ----------------------------------------
mus_theme_of_prontera_1_045:
	.byte		N11   , En1 , v120
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W72
	.byte	PEND
@ 046   ----------------------------------------
mus_theme_of_prontera_1_046:
	.byte		N15   , Dn1 , v120
	.byte	W48
	.byte		N44   , En1 , v120, gtp2
	.byte	W48
	.byte	PEND
@ 047   ----------------------------------------
mus_theme_of_prontera_1_047:
	.byte		N11   , Fn1 , v120
	.byte	W24
	.byte		N68   , Gn0 , v120, gtp2
	.byte	W72
	.byte	PEND
@ 048   ----------------------------------------
mus_theme_of_prontera_1_048:
	.byte		N68   , Cn1 , v120, gtp2
	.byte	W84
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 049   ----------------------------------------
mus_theme_of_prontera_1_049:
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N11   
	.byte	W84
	.byte	PEND
@ 050   ----------------------------------------
mus_theme_of_prontera_1_050:
	.byte		N11   , As0 , v120
	.byte	W12
	.byte		N12   , Cn1 
	.byte	W24
	.byte		N11   , As0 
	.byte	W12
	.byte		N12   , Cn1 
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
mus_theme_of_prontera_1_051:
	.byte		N11   , As0 , v120
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N44   , Cn1 , v120, gtp3
	.byte	W48
	.byte	PEND
@ 052   ----------------------------------------
mus_theme_of_prontera_1_052:
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W84
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 053   ----------------------------------------
mus_theme_of_prontera_1_053:
	.byte		N11   , En1 , v120
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N12   , En1 
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 054   ----------------------------------------
mus_theme_of_prontera_1_054:
	.byte		N44   , Dn1 , v120, gtp2
	.byte	W72
	.byte		N11   , En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 055   ----------------------------------------
	.byte		N44   , Cn1 , v120, gtp2
	.byte	W96
@ 056   ----------------------------------------
mus_theme_of_prontera_1_056:
	.byte		N44   , Bn0 , v120, gtp2
	.byte	W72
	.byte		N11   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 057   ----------------------------------------
mus_theme_of_prontera_1_057:
	.byte		N22   , En1 , v120
	.byte	W36
	.byte		N11   
	.byte	W24
	.byte		N32   , En1 , v120, gtp2
	.byte	W36
	.byte	PEND
@ 058   ----------------------------------------
mus_theme_of_prontera_1_058:
	.byte		N44   , An0 , v120, gtp2
	.byte	W84
	.byte		N11   , Gn0 
	.byte	W12
	.byte	PEND
@ 059   ----------------------------------------
mus_theme_of_prontera_1_059:
	.byte		N44   , An0 , v120, gtp2
	.byte	W72
	.byte		N11   , Bn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte	PEND
@ 060   ----------------------------------------
mus_theme_of_prontera_1_060:
	.byte		N44   , Dn1 , v120, gtp2
	.byte	W84
	.byte		N11   , Cs1 
	.byte	W12
	.byte	PEND
@ 061   ----------------------------------------
mus_theme_of_prontera_1_061:
	.byte		N44   , Dn1 , v120, gtp2
	.byte	W84
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
mus_theme_of_prontera_1_062:
	.byte		N44   , Cs1 , v120, gtp2
	.byte	W84
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 063   ----------------------------------------
mus_theme_of_prontera_1_063:
	.byte		N11   , Fs1 , v120
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
mus_theme_of_prontera_1_064:
	.byte		N44   , Bn0 , v120, gtp2
	.byte	W84
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
mus_theme_of_prontera_1_065:
	.byte		N22   , An0 , v120
	.byte	W24
	.byte		N11   
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 066   ----------------------------------------
mus_theme_of_prontera_1_066:
	.byte		N22   , En1 , v120
	.byte	W24
	.byte		N11   
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 067   ----------------------------------------
mus_theme_of_prontera_1_067:
	.byte	W12
	.byte		N11   , En1 , v120
	.byte	W12
	.byte		N11   
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 068   ----------------------------------------
mus_theme_of_prontera_1_068:
	.byte		N44   , An0 , v120, gtp2
	.byte	W84
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 069   ----------------------------------------
mus_theme_of_prontera_1_069:
	.byte		N11   , Dn1 , v120
	.byte	W24
	.byte		N22   
	.byte	W72
	.byte	PEND
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_039
@ 071   ----------------------------------------
	.byte		N11   , Cs1 , v120
	.byte	W24
	.byte		N22   
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 072   ----------------------------------------
mus_theme_of_prontera_1_072:
	.byte		N44   , Fs1 , v120, gtp2
	.byte	W84
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 073   ----------------------------------------
mus_theme_of_prontera_1_073:
	.byte		N11   , En1 , v120
	.byte	W24
	.byte		N22   
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_061
@ 075   ----------------------------------------
mus_theme_of_prontera_1_075:
	.byte		N11   , En1 , v120
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N12   , En1 
	.byte	W24
	.byte		N32   , En1 , v120, gtp2
	.byte	W36
	.byte	PEND
@ 076   ----------------------------------------
mus_theme_of_prontera_1_076:
	.byte		N44   , An0 , v120, gtp2
	.byte	W72
	.byte		N11   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 077   ----------------------------------------
mus_theme_of_prontera_1_077:
	.byte		N22   , Dn1 , v120
	.byte	W24
	.byte		N11   , Cs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 078   ----------------------------------------
mus_theme_of_prontera_1_078:
	.byte		N44   , En1 , v120, gtp2
	.byte	W72
	.byte		N11   , Bn0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 079   ----------------------------------------
mus_theme_of_prontera_1_079:
	.byte		N11   , Fn1 , v120
	.byte	W24
	.byte		N22   
	.byte	W48
	.byte		N11   , Cs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 080   ----------------------------------------
mus_theme_of_prontera_1_080:
	.byte		N44   , Fs1 , v120, gtp2
	.byte	W72
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 081   ----------------------------------------
mus_theme_of_prontera_1_081:
	.byte		N44   , Ds1 , v120, gtp2
	.byte	W84
	.byte		N11   , Bn0 
	.byte	W12
	.byte	PEND
@ 082   ----------------------------------------
mus_theme_of_prontera_1_082:
	.byte		N44   , En1 , v120, gtp2
	.byte	W60
	.byte		N11   , Bn0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 083   ----------------------------------------
	.byte		N44   , En1 , v120, gtp2
	.byte	W96
@ 084   ----------------------------------------
	.byte		        An0 , v120, gtp2
	.byte	W60
	.byte		N11   , En1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
@ 085   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N22   
	.byte	W72
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N44   , Gn0 , v120, gtp3
	.byte	W48
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_004
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_035
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_035
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_037
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_038
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_039
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_040
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_037
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_038
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_043
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_044
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_045
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_046
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_047
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_048
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_049
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_050
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_051
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_052
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_053
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_054
@ 111   ----------------------------------------
	.byte		N44   , Cn1 , v120, gtp2
	.byte	W96
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_056
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_057
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_058
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_059
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_060
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_061
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_062
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_063
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_064
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_065
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_066
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_067
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_068
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_069
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_039
@ 127   ----------------------------------------
	.byte		N11   , Fn1 , v120
	.byte	W24
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_072
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_073
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_061
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_075
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_076
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_077
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_078
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_079
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_080
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_081
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_082
@ 139   ----------------------------------------
	.byte		N44   , En1 , v120, gtp2
	.byte	W96
@ 140   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 141   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W96
@ 144   ----------------------------------------
	.byte	W96
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W12
	.byte		N23   , Fs1 
	.byte	W24
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N44   , Ds1 , v120, gtp2
	.byte	W48
@ 148   ----------------------------------------
	.byte		N32   , Gs0 , v120, gtp2
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N04   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N12   , As0 
	.byte	W16
@ 149   ----------------------------------------
	.byte		N44   , Cn1 , v120, gtp2
	.byte	W60
	.byte		N11   
	.byte	W24
	.byte		N23   , Cs1 
	.byte	W12
@ 150   ----------------------------------------
	.byte	W12
	.byte		N11   , Gs0 
	.byte	W12
	.byte		        Cs1 
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 151   ----------------------------------------
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N11   
	.byte	W36
	.byte		N32   , Dn1 , v120, gtp2
	.byte	W36
@ 152   ----------------------------------------
	.byte		N22   , Ds1 
	.byte	W24
	.byte		N11   
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
@ 153   ----------------------------------------
	.byte		N32   , En1 , v120, gtp2
	.byte	W36
	.byte		N05   
	.byte	W24
	.byte		N32   , En1 , v120, gtp2
	.byte	W36
@ 154   ----------------------------------------
	.byte		N92   , Fn1 , v120, gtp3
	.byte	W96
@ 155   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N32   , Ds1 , v120, gtp2
	.byte	W36
@ 156   ----------------------------------------
	.byte		        Cs1 , v120, gtp2
	.byte	W36
	.byte		N11   
	.byte	W24
	.byte		N32   , Cs1 , v120, gtp2
	.byte	W36
@ 157   ----------------------------------------
	.byte		        Gn0 , v120, gtp2
	.byte	W36
	.byte		N11   , Gn1 
	.byte	W24
	.byte		        Ds1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
@ 158   ----------------------------------------
	.byte		N32   , Gs0 , v120, gtp2
	.byte	W36
	.byte		N11   , Ds1 
	.byte	W24
	.byte		N32   , Gs0 , v120, gtp2
	.byte	W36
@ 159   ----------------------------------------
	.byte		        Cs1 , v120, gtp2
	.byte	W36
	.byte		N11   , Gs0 
	.byte	W24
	.byte		N32   , Cs1 , v120, gtp2
	.byte	W36
@ 160   ----------------------------------------
	.byte		N44   , Gn0 , v120, gtp2
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N44   , Cn1 , v120, gtp2
	.byte	W12
@ 161   ----------------------------------------
	.byte	W36
	.byte		N56   , Cn1 , v120, gtp2
	.byte	W60
@ 162   ----------------------------------------
	.byte		TIE   , Fn1 
	.byte	W96
@ 163   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N32   , Fn1 , v120, gtp2
	.byte	W36
@ 164   ----------------------------------------
	.byte		        As0 , v120, gtp2
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N04   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N12   , Cn1 
	.byte	W16
@ 165   ----------------------------------------
	.byte		N44   , Dn1 , v120, gtp2
	.byte	W60
	.byte		N11   
	.byte	W24
	.byte		N23   , Ds1 
	.byte	W12
@ 166   ----------------------------------------
	.byte	W12
	.byte		N11   , As0 
	.byte	W12
	.byte		        Ds1 
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 167   ----------------------------------------
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W36
	.byte		N32   , En1 , v120, gtp2
	.byte	W36
@ 168   ----------------------------------------
	.byte		N22   , Fn1 
	.byte	W24
	.byte		N11   
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        An0 
	.byte	W12
@ 169   ----------------------------------------
	.byte	W96
@ 170   ----------------------------------------
	.byte	W96
@ 171   ----------------------------------------
	.byte	W96
@ 172   ----------------------------------------
	.byte	W96
@ 173   ----------------------------------------
	.byte	W96
@ 174   ----------------------------------------
	.byte	W96
@ 175   ----------------------------------------
	.byte	W96
@ 176   ----------------------------------------
	.byte	W96
@ 177   ----------------------------------------
	.byte	W96
@ 178   ----------------------------------------
	.byte	W96
@ 179   ----------------------------------------
	.byte	W96
@ 180   ----------------------------------------
	.byte	W96
@ 181   ----------------------------------------
	.byte	W96
@ 182   ----------------------------------------
	.byte	W96
@ 183   ----------------------------------------
	.byte	W96
@ 184   ----------------------------------------
	.byte	W96
@ 185   ----------------------------------------
	.byte	W96
@ 186   ----------------------------------------
	.byte	W96
@ 187   ----------------------------------------
	.byte	W96
@ 188   ----------------------------------------
	.byte	W96
@ 189   ----------------------------------------
	.byte	W96
@ 190   ----------------------------------------
	.byte	W96
@ 191   ----------------------------------------
	.byte	W96
@ 192   ----------------------------------------
	.byte	W96
@ 193   ----------------------------------------
	.byte	W96
@ 194   ----------------------------------------
	.byte	W96
@ 195   ----------------------------------------
	.byte	W96
@ 196   ----------------------------------------
	.byte	W96
@ 197   ----------------------------------------
	.byte	W96
@ 198   ----------------------------------------
	.byte	W96
@ 199   ----------------------------------------
	.byte	W96
@ 200   ----------------------------------------
	.byte	W96
@ 201   ----------------------------------------
	.byte	W96
@ 202   ----------------------------------------
	.byte	W96
@ 203   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte	GOTO
	 .word	mus_theme_of_prontera_1_B1
mus_theme_of_prontera_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_theme_of_prontera_2:
	.byte	KEYSH , mus_theme_of_prontera_key+0
mus_theme_of_prontera_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 48*mus_theme_of_prontera_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		TIE   , Gn4 , v068
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 004   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 005   ----------------------------------------
	.byte		        Dn3 , v060, gtp3
	.byte	W96
@ 006   ----------------------------------------
	.byte		        Cn3 , v060, gtp3
	.byte	W96
@ 007   ----------------------------------------
	.byte		        Cn3 , v060, gtp3
	.byte	W96
@ 008   ----------------------------------------
	.byte		N23   , En3 
	.byte	W24
	.byte		N11   , Cn4 , v068
	.byte	W12
	.byte		        Bn3 
	.byte	W24
	.byte		N32   , Cn4 , v068, gtp2
	.byte	W36
@ 009   ----------------------------------------
	.byte		N23   , Gn3 , v060
	.byte	W24
	.byte		N11   , Bn3 , v068
	.byte	W12
	.byte		        Cn4 
	.byte	W24
	.byte		N32   , Cn4 , v068, gtp2
	.byte	W36
@ 010   ----------------------------------------
	.byte		N11   , Fn3 , v060
	.byte	W12
	.byte		        En4 , v068
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W24
	.byte		N32   , Cn4 , v068, gtp2
	.byte	W36
@ 011   ----------------------------------------
	.byte		N44   , Fn3 , v060, gtp3
	.byte	W48
	.byte		        Dn4 , v068, gtp2
	.byte	W48
@ 012   ----------------------------------------
	.byte		N80   , En3 , v060, gtp3
	.byte	W84
	.byte		N11   , Bn3 , v068
	.byte	W12
@ 013   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 014   ----------------------------------------
	.byte		        Cn3 , v060
	.byte	W24
	.byte		TIE   
	.byte	W72
@ 015   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
@ 016   ----------------------------------------
	.byte		N92   , Cn3 , v056, gtp3
	.byte	W96
@ 017   ----------------------------------------
	.byte		        Bn2 , v060, gtp3
	.byte	W96
@ 018   ----------------------------------------
	.byte		TIE   , An2 
	.byte	W96
@ 019   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		N44   , Bn2 , v060, gtp2
	.byte	W48
@ 020   ----------------------------------------
	.byte		N80   , Cn3 , v060, gtp3
	.byte	W84
	.byte		N11   , Fn3 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 022   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W96
@ 023   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		N44   , Dn3 , v060, gtp2
	.byte	W48
@ 024   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 025   ----------------------------------------
	.byte		        En3 , v060, gtp3
	.byte	W96
@ 026   ----------------------------------------
mus_theme_of_prontera_2_026:
	.byte		N32   , Fn3 , v060, gtp2
	.byte	W36
	.byte		N56   , Fn3 , v060, gtp2
	.byte	W60
	.byte	PEND
@ 027   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 028   ----------------------------------------
mus_theme_of_prontera_2_028:
	.byte		N11   , Cn3 , v060
	.byte	W48
	.byte		N44   , En3 , v060, gtp2
	.byte	W48
	.byte	PEND
@ 029   ----------------------------------------
mus_theme_of_prontera_2_029:
	.byte		N11   , Fn3 , v060
	.byte	W24
	.byte		N68   , Cn3 , v060, gtp2
	.byte	W72
	.byte	PEND
@ 030   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 031   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 032   ----------------------------------------
	.byte		N11   , Dn3 
	.byte	W24
	.byte		N22   
	.byte	W48
	.byte		N22   
	.byte	W24
@ 033   ----------------------------------------
	.byte		N44   , Dn3 , v060, gtp2
	.byte	W96
@ 034   ----------------------------------------
	.byte		N92   , Cn3 , v060, gtp3
	.byte	W96
@ 035   ----------------------------------------
	.byte		N32   , Dn3 , v060, gtp3
	.byte	W36
	.byte		N56   , Gn2 , v060, gtp2
	.byte	W60
@ 036   ----------------------------------------
	.byte		N80   , An2 , v060, gtp3
	.byte	W84
	.byte		N11   
	.byte	W12
@ 037   ----------------------------------------
	.byte		N44   , Cn3 , v060, gtp2
	.byte	W48
	.byte		N23   , Bn2 
	.byte	W24
	.byte		N11   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 038   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 039   ----------------------------------------
	.byte		        En3 , v060, gtp3
	.byte	W96
@ 040   ----------------------------------------
	.byte		        Cn3 , v060, gtp3
	.byte	W96
@ 041   ----------------------------------------
mus_theme_of_prontera_2_041:
	.byte		N44   , Dn3 , v068, gtp3
	.byte	W48
	.byte		        Dn3 , v060, gtp2
	.byte	W48
	.byte	PEND
@ 042   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 043   ----------------------------------------
mus_theme_of_prontera_2_043:
	.byte		N68   , En3 , v060, gtp3
	.byte	W72
	.byte		N11   , Cn4 , v068
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte	PEND
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_026
@ 045   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_028
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_029
@ 048   ----------------------------------------
mus_theme_of_prontera_2_048:
	.byte		N32   , Cn3 , v060, gtp3
	.byte	W36
	.byte		TIE   , Gn2 , v068
	.byte	W60
	.byte	PEND
@ 049   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 050   ----------------------------------------
mus_theme_of_prontera_2_050:
	.byte		N44   , Fn3 , v060, gtp2
	.byte	W48
	.byte		        Gn3 , v060, gtp2
	.byte	W48
	.byte	PEND
@ 051   ----------------------------------------
	.byte		        As3 , v060, gtp2
	.byte	W48
	.byte		        Cn4 , v060, gtp2
	.byte	W48
@ 052   ----------------------------------------
	.byte		N11   , An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N56   , Cn4 , v060, gtp2
	.byte	W60
@ 053   ----------------------------------------
	.byte		N92   , Gn3 , v060, gtp3
	.byte	W96
@ 054   ----------------------------------------
	.byte		N56   , Fn3 , v060, gtp3
	.byte	W60
	.byte		N11   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 055   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 056   ----------------------------------------
	.byte		        Fn3 , v060, gtp3
	.byte	W96
@ 057   ----------------------------------------
	.byte		        En3 , v060, gtp3
	.byte	W96
@ 058   ----------------------------------------
	.byte		N32   , En3 , v060, gtp2
	.byte	W36
	.byte		N56   , En3 , v060, gtp2
	.byte	W60
@ 059   ----------------------------------------
	.byte		N44   , En3 , v060, gtp2
	.byte	W48
	.byte		        En3 , v060, gtp2
	.byte	W48
@ 060   ----------------------------------------
	.byte		N56   , Fs3 , v060, gtp3
	.byte	W60
	.byte		N32   , An3 , v060, gtp2
	.byte	W36
@ 061   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 062   ----------------------------------------
	.byte		        En3 , v060, gtp3
	.byte	W96
@ 063   ----------------------------------------
	.byte		        Fs3 , v060, gtp3
	.byte	W96
@ 064   ----------------------------------------
	.byte		        Fs3 , v060, gtp3
	.byte	W96
@ 065   ----------------------------------------
	.byte		        Fs3 , v060, gtp3
	.byte	W96
@ 066   ----------------------------------------
	.byte		N32   , Gs3 , v060, gtp2
	.byte	W36
	.byte		N11   
	.byte	W24
	.byte		N22   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 067   ----------------------------------------
	.byte		        An3 , v068
	.byte	W12
	.byte		        Gs3 , v060
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Bn3 , v068
	.byte	W12
	.byte		N32   , Gs3 , v060, gtp2
	.byte	W36
@ 068   ----------------------------------------
	.byte		N44   , Cs4 , v060, gtp3
	.byte	W48
	.byte		N11   , En3 
	.byte	W12
	.byte		N32   , Cs4 , v060, gtp2
	.byte	W36
@ 069   ----------------------------------------
mus_theme_of_prontera_2_069:
	.byte		N32   , Cs4 , v060, gtp3
	.byte	W36
	.byte		N56   , An3 , v060, gtp2
	.byte	W60
	.byte	PEND
@ 070   ----------------------------------------
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N56   , Gs3 , v060, gtp2
	.byte	W60
@ 071   ----------------------------------------
	.byte		N23   , Bn3 
	.byte	W24
	.byte		N11   , En3 
	.byte	W12
	.byte		N23   , Gs3 
	.byte	W24
	.byte		N32   , Bn3 , v060, gtp2
	.byte	W36
@ 072   ----------------------------------------
mus_theme_of_prontera_2_072:
	.byte		N11   , An3 , v060
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N56   , An3 , v060, gtp2
	.byte	W60
	.byte	PEND
@ 073   ----------------------------------------
mus_theme_of_prontera_2_073:
	.byte		N23   , An3 , v060
	.byte	W24
	.byte		N11   , Gs3 , v068
	.byte	W12
	.byte		N22   , An3 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		N11   , Fs4 
	.byte	W12
	.byte	PEND
@ 074   ----------------------------------------
mus_theme_of_prontera_2_074:
	.byte		N11   , Fs3 , v060
	.byte	W12
	.byte		        Fs4 , v068
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N23   , An3 
	.byte	W24
	.byte		N11   , Fs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
@ 075   ----------------------------------------
mus_theme_of_prontera_2_075:
	.byte		N23   , Bn3 , v060
	.byte	W24
	.byte		N11   , En4 , v068
	.byte	W12
	.byte		        Fs4 
	.byte	W24
	.byte		        En3 , v060
	.byte	W12
	.byte		N22   , Gs3 , v068
	.byte	W24
	.byte	PEND
@ 076   ----------------------------------------
mus_theme_of_prontera_2_076:
	.byte		N44   , Cs4 , v060, gtp3
	.byte	W48
	.byte		N11   , An2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N23   
	.byte	W12
	.byte	PEND
@ 077   ----------------------------------------
mus_theme_of_prontera_2_077:
	.byte	W12
	.byte		N11   , Dn3 , v060
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N22   
	.byte	W24
	.byte		N22   
	.byte	W24
	.byte		N11   , Gs3 
	.byte	W12
	.byte	PEND
@ 078   ----------------------------------------
mus_theme_of_prontera_2_078:
	.byte		N11   , Bn3 , v068
	.byte	W12
	.byte		        En3 , v060
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N56   , Bn3 , v060, gtp2
	.byte	W60
	.byte	PEND
@ 079   ----------------------------------------
mus_theme_of_prontera_2_079:
	.byte		N32   , Dn4 , v060, gtp3
	.byte	W36
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N44   , Cs4 , v068, gtp2
	.byte	W48
	.byte	PEND
@ 080   ----------------------------------------
mus_theme_of_prontera_2_080:
	.byte		N11   , An3 , v060
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        An3 , v068
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	PEND
@ 081   ----------------------------------------
mus_theme_of_prontera_2_081:
	.byte		N17   , Fs3 , v060
	.byte	W17
	.byte		N06   , Gn3 , v068
	.byte	W07
	.byte		N11   , Bn2 , v060
	.byte	W12
	.byte		N22   , En4 , v068
	.byte	W24
	.byte		N32   , Fs4 , v068, gtp2
	.byte	W36
	.byte	PEND
@ 082   ----------------------------------------
	.byte		N92   , An3 , v060, gtp3
	.byte	W96
@ 083   ----------------------------------------
	.byte		        Bn3 , v060, gtp3
	.byte	W96
@ 084   ----------------------------------------
	.byte		TIE   , An3 
	.byte	W96
@ 085   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 086   ----------------------------------------
	.byte		N92   , En3 , v068, gtp3
	.byte	W96
@ 087   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte	W02
@ 090   ----------------------------------------
	.byte		N17   , Cn3 , v060
	.byte	W17
	.byte		N44   , Fn4 , v060, gtp2
	.byte	W48
	.byte		N30   , Gn4 
	.byte	W30
	.byte	W01
@ 091   ----------------------------------------
	.byte		N17   , Dn3 
	.byte	W17
	.byte		N18   , An3 
	.byte	W19
	.byte		N28   , Gn2 , v060, gtp1
	.byte	W28
	.byte	W01
	.byte		N30   , Bn3 
	.byte	W30
	.byte	W01
@ 092   ----------------------------------------
	.byte		N17   , An2 
	.byte	W17
	.byte		N66   , Cn4 
	.byte	W66
	.byte	W01
	.byte		N11   , An2 
	.byte	W12
@ 093   ----------------------------------------
	.byte		N17   , Cn3 
	.byte	W17
	.byte		N30   , Bn3 
	.byte	W30
	.byte	W01
	.byte		N23   , Bn2 
	.byte	W24
	.byte		N11   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 094   ----------------------------------------
	.byte		N17   , En3 
	.byte	W17
	.byte		N78   , An3 
	.byte	W78
	.byte	W01
@ 095   ----------------------------------------
	.byte		N17   , En3 
	.byte	W17
	.byte		N78   , Gn4 
	.byte	W78
	.byte	W01
@ 096   ----------------------------------------
	.byte		N92   , Cn3 , v060, gtp3
	.byte	W96
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_041
@ 098   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_043
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_026
@ 101   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_028
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_029
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_048
@ 105   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , Gn2 
	.byte	W01
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_050
@ 107   ----------------------------------------
	.byte		N17   , As3 , v060
	.byte	W17
	.byte		N30   , An3 , v068
	.byte	W30
	.byte	W01
	.byte		N17   , Cn4 , v060
	.byte	W17
	.byte		N30   , Bn3 , v068
	.byte	W30
	.byte	W01
@ 108   ----------------------------------------
	.byte		N11   , An3 , v060
	.byte	W12
	.byte		N05   , Fn3 
	.byte	W05
	.byte		N06   , Cs4 , v068
	.byte	W07
	.byte		N11   , An3 , v060
	.byte	W12
	.byte		N56   , Cn4 , v060, gtp2
	.byte	W60
@ 109   ----------------------------------------
	.byte		N17   , Gn3 
	.byte	W17
	.byte		N78   , Cs4 , v068
	.byte	W78
	.byte	W01
@ 110   ----------------------------------------
	.byte		N17   , Fn3 , v060
	.byte	W17
	.byte		N42   , Bn3 , v068
	.byte	W42
	.byte	W01
	.byte		N11   , An2 , v060
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 111   ----------------------------------------
	.byte		N17   , En3 
	.byte	W17
	.byte		N78   , Gs3 , v068
	.byte	W78
	.byte	W01
@ 112   ----------------------------------------
	.byte		N17   , Fn3 , v060
	.byte	W17
	.byte		N78   , An3 , v068
	.byte	W78
	.byte	W01
@ 113   ----------------------------------------
	.byte		N17   , En3 , v060
	.byte	W17
	.byte		N22   , An3 , v068
	.byte	W24
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N22   , An3 
	.byte	W24
	.byte		N18   , En4 
	.byte	W19
@ 114   ----------------------------------------
	.byte		N05   , En3 , v060
	.byte	W05
	.byte		N23   , Fs4 , v068
	.byte	W24
	.byte		N06   
	.byte	W07
	.byte		N05   , En3 , v060
	.byte	W05
	.byte		N11   , Gs3 , v068
	.byte	W12
	.byte		N23   , An3 
	.byte	W24
	.byte		N11   , Fs4 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W07
@ 115   ----------------------------------------
	.byte		N05   , En3 , v060
	.byte	W05
	.byte		N11   , An3 , v068
	.byte	W12
	.byte		N22   
	.byte	W24
	.byte		N06   , Gs3 
	.byte	W07
	.byte		N05   , En3 , v060
	.byte	W05
	.byte		N11   , An3 , v068
	.byte	W24
	.byte		        Bn3 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W07
@ 116   ----------------------------------------
	.byte		N17   , Fs3 , v060
	.byte	W17
	.byte		N42   , Cs4 , v068
	.byte	W42
	.byte	W01
	.byte		N32   , An3 , v060, gtp2
	.byte	W36
@ 117   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 118   ----------------------------------------
	.byte		N17   
	.byte	W17
	.byte		N78   , Bn3 , v068
	.byte	W78
	.byte	W01
@ 119   ----------------------------------------
	.byte		N17   , Fs3 , v060
	.byte	W17
	.byte		N44   , Dn4 , v068, gtp2
	.byte	W48
	.byte		N30   , Cs4 
	.byte	W30
	.byte	W01
@ 120   ----------------------------------------
	.byte		N17   , Fs3 , v060
	.byte	W17
	.byte		N68   , An3 , v068, gtp2
	.byte	W72
	.byte		N06   
	.byte	W07
@ 121   ----------------------------------------
	.byte		N05   , Fs3 , v060
	.byte	W05
	.byte		N11   , Gs3 , v068
	.byte	W12
	.byte		N32   , Fs4 , v068, gtp2
	.byte	W36
	.byte		N22   , Gs3 
	.byte	W24
	.byte		N18   , An3 
	.byte	W19
@ 122   ----------------------------------------
	.byte		N17   , Gs3 , v060
	.byte	W17
	.byte		N18   , An3 , v068
	.byte	W19
	.byte		N11   , Gs3 , v060
	.byte	W24
	.byte		N22   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 123   ----------------------------------------
	.byte		        An3 , v068
	.byte	W12
	.byte		N05   , Gs3 , v060
	.byte	W05
	.byte		N18   , Gs3 , v068
	.byte	W19
	.byte		N11   , Gs3 , v060
	.byte	W12
	.byte		        Bn3 , v068
	.byte	W12
	.byte		N32   , Gs3 , v060, gtp2
	.byte	W36
@ 124   ----------------------------------------
	.byte		N17   , Cs4 
	.byte	W17
	.byte		N30   , En4 , v068
	.byte	W30
	.byte	W01
	.byte		N11   , En3 , v060
	.byte	W12
	.byte		N32   , Cs4 , v060, gtp2
	.byte	W36
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_069
@ 126   ----------------------------------------
	.byte		N11   , Bn3 , v060
	.byte	W12
	.byte		N05   , Bn2 
	.byte	W05
	.byte		N06   , En3 , v068
	.byte	W07
	.byte		N11   , En3 , v060
	.byte	W12
	.byte		N56   , Gs3 , v060, gtp2
	.byte	W60
@ 127   ----------------------------------------
	.byte		N17   , Bn3 
	.byte	W17
	.byte		N06   , En3 , v068
	.byte	W07
	.byte		N11   , Fn3 , v060
	.byte	W12
	.byte		N23   , Gs3 
	.byte	W24
	.byte		N32   , Bn3 , v060, gtp2
	.byte	W36
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_072
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_073
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_074
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_075
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_076
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_077
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_078
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_079
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_080
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_081
@ 138   ----------------------------------------
	.byte		N92   , An3 , v060, gtp3
	.byte	W96
@ 139   ----------------------------------------
	.byte		        Bn3 , v060, gtp3
	.byte	W96
@ 140   ----------------------------------------
	.byte		TIE   , An3 , v068
	.byte	W96
@ 141   ----------------------------------------
	.byte	W96
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W96
@ 144   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		TIE   
	.byte	W48
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
	.byte	W17
	.byte		EOT   
	.byte		N44   , Fn4 , v060, gtp2
	.byte	W48
	.byte		        Gn4 , v060, gtp2
	.byte	W30
	.byte	W01
@ 147   ----------------------------------------
	.byte	W17
	.byte		N30   , An3 
	.byte	W30
	.byte	W01
	.byte		N17   , Gs3 
	.byte	W17
	.byte		N30   , Bn3 
	.byte	W30
	.byte	W01
@ 148   ----------------------------------------
	.byte		N17   , Gs3 
	.byte	W17
	.byte		N18   , Cn4 
	.byte	W19
	.byte		N56   , Cn3 , v060, gtp2
	.byte	W60
@ 149   ----------------------------------------
	.byte		N17   , Gn3 
	.byte	W17
	.byte		N18   , Bn3 
	.byte	W19
	.byte		N44   , Cn3 , v060, gtp2
	.byte	W48
	.byte		N23   , Gs3 
	.byte	W12
@ 150   ----------------------------------------
	.byte	W12
	.byte		N05   , Cs3 , v056
	.byte	W05
	.byte		N06   , An3 , v060
	.byte	W07
	.byte		N11   , Ds3 , v056
	.byte	W12
	.byte		N56   , Gs3 , v056, gtp2
	.byte	W60
@ 151   ----------------------------------------
	.byte	W12
	.byte		N05   , Fn3 , v060
	.byte	W05
	.byte		N06   , Gn4 
	.byte	W07
	.byte		N11   , As3 
	.byte	W12
	.byte		N23   , Gs3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W12
@ 152   ----------------------------------------
	.byte	W12
	.byte		N11   , As2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N56   , Gn3 , v060, gtp2
	.byte	W60
@ 153   ----------------------------------------
	.byte		N22   , En3 
	.byte	W36
	.byte		N44   , En3 , v060, gtp2
	.byte	W48
	.byte		N32   , Fn3 , v060, gtp3
	.byte	W12
@ 154   ----------------------------------------
	.byte	W24
	.byte		N11   , An2 , v056
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W12
@ 155   ----------------------------------------
	.byte	W12
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N23   , Cn3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		        Gs3 
	.byte	W12
@ 156   ----------------------------------------
	.byte	W12
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N56   , Gs3 , v056, gtp3
	.byte	W60
@ 157   ----------------------------------------
	.byte		N11   , As3 , v060
	.byte	W12
	.byte		        Cs3 , v056
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N44   , As3 , v056, gtp3
	.byte	W48
	.byte		N23   , Ds3 
	.byte	W12
@ 158   ----------------------------------------
	.byte	W12
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N23   , Gs3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Fn3 
	.byte	W12
@ 159   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N23   , Cs4 
	.byte	W24
	.byte		N32   , Gs3 , v056, gtp2
	.byte	W36
@ 160   ----------------------------------------
	.byte		N11   , Cs3 , v060
	.byte	W12
	.byte		        As2 , v056
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N32   , Cs3 , v056, gtp3
	.byte	W36
@ 161   ----------------------------------------
	.byte		N44   , Cs3 , v060, gtp3
	.byte	W48
	.byte		        En3 , v060, gtp2
	.byte	W48
@ 162   ----------------------------------------
	.byte		N23   , Cn3 
	.byte	W24
	.byte		N11   , An2 , v056
	.byte	W12
	.byte		N23   , Cn3 
	.byte	W24
	.byte		N52   , Fn3 , v056, gtp1
	.byte	W36
@ 163   ----------------------------------------
	.byte	W17
	.byte		N06   , An3 , v068
	.byte	W07
	.byte		N11   , An3 , v056
	.byte	W12
	.byte		N23   , Cn4 
	.byte	W24
	.byte		N05   , Fn4 
	.byte	W05
	.byte		N30   , Bn3 , v068
	.byte	W30
	.byte	W01
@ 164   ----------------------------------------
	.byte		N17   , As3 , v060
	.byte	W17
	.byte		N18   , Cs4 , v068
	.byte	W19
	.byte		N56   , Dn3 , v060, gtp2
	.byte	W60
@ 165   ----------------------------------------
	.byte		N17   , An3 
	.byte	W17
	.byte		N18   , Cs4 , v068
	.byte	W19
	.byte		N44   , Dn3 , v060, gtp2
	.byte	W48
	.byte		N23   , As3 
	.byte	W12
@ 166   ----------------------------------------
	.byte	W12
	.byte		N05   , Ds3 , v056
	.byte	W05
	.byte		N06   , Bn3 , v068
	.byte	W07
	.byte		N11   , Fn3 , v056
	.byte	W12
	.byte		N56   , As3 , v056, gtp2
	.byte	W60
@ 167   ----------------------------------------
	.byte	W12
	.byte		N05   , Gn3 , v060
	.byte	W05
	.byte		N06   , Gs3 , v068
	.byte	W07
	.byte		N11   , Cn4 , v060
	.byte	W12
	.byte		N23   , As3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        An3 
	.byte	W12
@ 168   ----------------------------------------
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W05
	.byte		N06   , An3 , v068
	.byte	W07
	.byte		N11   , Fn3 , v060
	.byte	W12
	.byte		N56   , An3 , v060, gtp2
	.byte	W60
@ 169   ----------------------------------------
	.byte	W17
	.byte		N22   , An3 , v068
	.byte	W24
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N22   , An3 
	.byte	W24
	.byte		        En4 
	.byte	W19
@ 170   ----------------------------------------
	.byte	W05
	.byte		N23   , Fs4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N23   , An3 
	.byte	W24
	.byte		N11   , Fs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W07
@ 171   ----------------------------------------
	.byte	W05
	.byte		        An3 
	.byte	W12
	.byte		N22   
	.byte	W24
	.byte		N11   , Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W24
	.byte		        Bn3 
	.byte	W12
	.byte		N22   , Gs3 
	.byte	W07
@ 172   ----------------------------------------
	.byte	W17
	.byte		TIE   , Cs4 
	.byte	W78
	.byte	W01
@ 173   ----------------------------------------
	.byte	W96
@ 174   ----------------------------------------
	.byte	W16
	.byte		EOT   
	.byte	W01
	.byte		N92   , Bn3 , v068, gtp3
	.byte	W78
	.byte	W01
@ 175   ----------------------------------------
	.byte	W17
	.byte		N44   , Dn4 , v068, gtp2
	.byte	W48
	.byte		        Cs4 , v068, gtp2
	.byte	W30
	.byte	W01
@ 176   ----------------------------------------
	.byte	W17
	.byte		N68   , An3 , v068, gtp2
	.byte	W72
	.byte		N11   
	.byte	W07
@ 177   ----------------------------------------
	.byte	W05
	.byte		        Gs3 
	.byte	W12
	.byte		N32   , Fs4 , v068, gtp2
	.byte	W36
	.byte		N22   , Gs3 
	.byte	W24
	.byte		N32   , Fs4 , v068, gtp2
	.byte	W19
@ 178   ----------------------------------------
	.byte	W96
@ 179   ----------------------------------------
	.byte	W96
@ 180   ----------------------------------------
	.byte	W96
@ 181   ----------------------------------------
	.byte	W96
@ 182   ----------------------------------------
	.byte	W96
@ 183   ----------------------------------------
	.byte	W96
@ 184   ----------------------------------------
	.byte	W96
@ 185   ----------------------------------------
	.byte	W96
@ 186   ----------------------------------------
	.byte	W96
@ 187   ----------------------------------------
	.byte	W96
@ 188   ----------------------------------------
	.byte	W96
@ 189   ----------------------------------------
	.byte	W96
@ 190   ----------------------------------------
	.byte	W96
@ 191   ----------------------------------------
	.byte	W96
@ 192   ----------------------------------------
	.byte	W96
@ 193   ----------------------------------------
	.byte	W96
@ 194   ----------------------------------------
	.byte	W96
@ 195   ----------------------------------------
	.byte	W96
@ 196   ----------------------------------------
	.byte	W96
@ 197   ----------------------------------------
	.byte	W96
@ 198   ----------------------------------------
	.byte	W96
@ 199   ----------------------------------------
	.byte	W96
@ 200   ----------------------------------------
	.byte	W96
@ 201   ----------------------------------------
	.byte	W96
@ 202   ----------------------------------------
	.byte	W96
@ 203   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte	GOTO
	 .word	mus_theme_of_prontera_2_B1
mus_theme_of_prontera_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_theme_of_prontera_3:
	.byte	KEYSH , mus_theme_of_prontera_key+0
mus_theme_of_prontera_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_theme_of_prontera_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N05   , Cn3 , v108
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
@ 001   ----------------------------------------
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
@ 002   ----------------------------------------
	.byte		        Cn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
@ 003   ----------------------------------------
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W60
@ 004   ----------------------------------------
	.byte	W48
	.byte		TIE   , Gn4 
	.byte	W48
@ 005   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		TIE   , Cn4 
	.byte	W12
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W80
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		N11   , Dn4 
	.byte	W12
@ 008   ----------------------------------------
	.byte		N92   , En4 , v108, gtp3
	.byte	W96
@ 009   ----------------------------------------
	.byte		N22   
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W24
	.byte		N32   , Gn4 , v108, gtp2
	.byte	W36
@ 010   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N56   , Cn4 , v108, gtp2
	.byte	W60
@ 011   ----------------------------------------
	.byte		N44   , Cn4 , v108, gtp2
	.byte	W48
	.byte		        Dn4 , v108, gtp2
	.byte	W48
@ 012   ----------------------------------------
	.byte		N92   , Cn4 , v108, gtp3
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W60
	.byte		N04   , Gn4 
	.byte	W04
	.byte		        Cn5 
	.byte	W05
	.byte		        Dn5 
	.byte	W04
	.byte		N06   , Gn4 
	.byte	W23
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
mus_theme_of_prontera_3_016:
	.byte	W48
	.byte		N23   , Gn3 , v100
	.byte	W24
	.byte		N11   , En4 , v116
	.byte	W12
	.byte		N68   , Dn4 , v112, gtp3
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_theme_of_prontera_3_017:
	.byte	W72
	.byte		N11   , Dn4 , v100
	.byte	W12
	.byte		        En4 , v088
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte		N23   , Fn4 , v108
	.byte	W24
	.byte		        En4 , v100
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N12   , Cn4 , v096
	.byte	W24
@ 019   ----------------------------------------
mus_theme_of_prontera_3_019:
	.byte		N44   , Cn4 , v092, gtp3
	.byte	W48
	.byte		N48   , Bn3 , v108
	.byte	W48
	.byte	PEND
@ 020   ----------------------------------------
mus_theme_of_prontera_3_020:
	.byte	W48
	.byte		N11   , En4 , v100
	.byte	W12
	.byte		N32   , Gn4 , v112, gtp3
	.byte	W36
	.byte	PEND
@ 021   ----------------------------------------
mus_theme_of_prontera_3_021:
	.byte		N23   , Gn4 , v116
	.byte	W24
	.byte		N11   , Fn4 , v092
	.byte	W12
	.byte		N23   , En4 , v100
	.byte	W24
	.byte		N32   , Gn4 , v108, gtp3
	.byte	W36
	.byte	PEND
@ 022   ----------------------------------------
mus_theme_of_prontera_3_022:
	.byte		N40   , Fn4 , v100
	.byte	W48
	.byte		N11   , Fn4 , v108
	.byte	W12
	.byte		        En4 , v100
	.byte	W12
	.byte		        Dn4 , v096
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
	.byte		N44   , Cn4 , v096, gtp3
	.byte	W48
	.byte		N15   , Dn4 , v104
	.byte	W16
	.byte		        Cn3 , v116
	.byte	W16
	.byte		        Dn3 , v100
	.byte	W16
@ 024   ----------------------------------------
	.byte		N44   , Gn2 , v116, gtp3
	.byte	W48
	.byte		N23   , Gn3 , v088
	.byte	W24
	.byte		N11   , An4 , v116
	.byte	W12
	.byte		N80   , Gn4 , v108, gtp3
	.byte	W12
@ 025   ----------------------------------------
mus_theme_of_prontera_3_025:
	.byte	W72
	.byte		N11   , An4 , v112
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte		N23   , Bn4 , v116
	.byte	W24
	.byte		N11   , Cn5 
	.byte	W12
	.byte		N32   , An4 , v100, gtp3
	.byte	W36
	.byte		N11   , Gn4 , v088
	.byte	W12
	.byte		TIE   , Gn4 , v092
	.byte	W12
@ 027   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 028   ----------------------------------------
	.byte		N24   , Fn4 , v100
	.byte	W48
	.byte		N44   , En4 , v088, gtp3
	.byte	W48
@ 029   ----------------------------------------
	.byte		N23   , Cn4 , v108
	.byte	W24
	.byte		        An3 , v100
	.byte	W24
	.byte		N17   , Cn4 , v112
	.byte	W24
	.byte		TIE   , Cn4 , v100
	.byte	W24
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_016
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_017
@ 036   ----------------------------------------
	.byte		N23   , Fn4 , v108
	.byte	W24
	.byte		        En4 , v100
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N11   , Cn4 , v096
	.byte	W12
	.byte		        Dn4 , v084
	.byte	W12
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_019
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_020
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_021
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_022
@ 041   ----------------------------------------
	.byte		N32   , Cn4 , v100, gtp3
	.byte	W36
	.byte		N11   , Dn4 , v116
	.byte	W12
	.byte		N15   , Bn3 , v120
	.byte	W16
	.byte		        Cn4 , v116
	.byte	W16
	.byte		        Dn4 , v100
	.byte	W16
@ 042   ----------------------------------------
	.byte		N44   , Gn3 , v116, gtp3
	.byte	W48
	.byte		N23   , An4 , v108
	.byte	W24
	.byte		N11   , An4 , v116
	.byte	W12
	.byte		N80   , Gn4 , v108, gtp3
	.byte	W12
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_025
@ 044   ----------------------------------------
	.byte		N23   , Bn4 , v116
	.byte	W24
	.byte		N11   , Cn5 
	.byte	W12
	.byte		N32   , An4 , v100, gtp3
	.byte	W36
	.byte		N11   , Gn4 , v088
	.byte	W12
	.byte		N80   , Gn4 , v092, gtp2
	.byte	W12
@ 045   ----------------------------------------
	.byte	W72
	.byte		N11   , Cn4 , v100
	.byte	W12
	.byte		        Cn4 , v092
	.byte	W12
@ 046   ----------------------------------------
	.byte		N24   , Fn4 , v100
	.byte	W48
	.byte		N44   , Gn4 , v108, gtp3
	.byte	W48
@ 047   ----------------------------------------
	.byte		N01   , Dn4 , v092
	.byte	W01
	.byte		N02   , An3 , v108
	.byte	W03
	.byte		N19   , En4 
	.byte	W20
	.byte		N23   , Cn4 , v092
	.byte	W24
	.byte		N17   , Dn4 , v100
	.byte	W24
	.byte		N23   , Dn4 , v112
	.byte	W24
@ 048   ----------------------------------------
	.byte		        Cn3 , v108
	.byte	W24
	.byte		TIE   , Cn4 , v116
	.byte	W72
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W01
	.byte		EOT   
	.byte	W92
	.byte	W03
@ 051   ----------------------------------------
mus_theme_of_prontera_3_051:
	.byte		N05   , Fn3 , v072
	.byte	W06
	.byte		        Gn2 , v076
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 , v080
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 , v084
	.byte	W06
	.byte		        En3 , v088
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 , v092
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 , v096
	.byte	W06
	.byte		        Cn4 , v100
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 , v104
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N09   , Gn4 , v108
	.byte	W06
	.byte	PEND
@ 052   ----------------------------------------
	.byte	W48
	.byte		N01   , Gn3 , v080
	.byte	W01
	.byte		N22   , An3 , v116
	.byte	W23
	.byte		N05   , En3 , v100
	.byte	W12
	.byte		N80   , Gn3 , v108, gtp2
	.byte	W12
@ 053   ----------------------------------------
	.byte	W72
	.byte		N11   , Fn3 , v112
	.byte	W12
	.byte		N10   , En3 , v100
	.byte	W12
@ 054   ----------------------------------------
	.byte		N23   , Fn3 , v108
	.byte	W24
	.byte		N21   , En3 , v100
	.byte	W24
	.byte		N23   , Fn3 , v108
	.byte	W24
	.byte		N22   , Gn3 , v116
	.byte	W24
@ 055   ----------------------------------------
	.byte		N32   , Fn3 , v112, gtp2
	.byte	W36
	.byte		N11   , En3 , v104
	.byte	W12
	.byte		N44   , En3 , v108, gtp3
	.byte	W48
@ 056   ----------------------------------------
	.byte		        An4 , v108, gtp3
	.byte	W48
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N23   , Fn3 , v116
	.byte	W24
	.byte		N32   , Fn3 , v116, gtp3
	.byte	W12
@ 057   ----------------------------------------
	.byte	W24
	.byte		N11   , En3 , v108
	.byte	W12
	.byte		N23   , Dn3 , v112
	.byte	W24
	.byte		        Gs4 , v108
	.byte	W24
	.byte		N92   , En4 , v108, gtp3
	.byte	W12
@ 058   ----------------------------------------
	.byte	W84
	.byte		N11   , Cs3 , v112
	.byte	W12
@ 059   ----------------------------------------
	.byte		N44   , Dn3 , v116, gtp2
	.byte	W48
	.byte		N01   , Ds3 , v108
	.byte	W01
	.byte		N44   , En3 , v120, gtp2
	.byte	W44
	.byte	W03
@ 060   ----------------------------------------
	.byte	W48
	.byte		N02   , Fn3 , v108
	.byte	W03
	.byte		N20   , Fs3 , v116
	.byte	W21
	.byte		N11   , An3 
	.byte	W12
	.byte		N84   , Gs3 
	.byte	W12
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N48   , Bn3 , v108, gtp2
	.byte	W24
@ 063   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte		N68   , An3 , v116
	.byte	W68
	.byte	W01
@ 064   ----------------------------------------
	.byte		N44   , Dn3 , v116, gtp2
	.byte	W48
	.byte		N01   , Cn4 , v092
	.byte	W01
	.byte		        Cs4 , v108
	.byte	W02
	.byte		N20   , Dn4 , v116
	.byte	W21
	.byte		N21   , Cs4 
	.byte	W24
@ 065   ----------------------------------------
	.byte		N23   , Bn3 
	.byte	W24
	.byte		N07   , An3 , v100
	.byte	W12
	.byte		N23   , An3 , v116
	.byte	W24
	.byte		N17   , Cs4 
	.byte	W24
	.byte		N32   , Cs4 , v120, gtp3
	.byte	W12
@ 066   ----------------------------------------
	.byte	W24
	.byte		N04   , Bn4 , v116
	.byte	W04
	.byte		        An4 , v112
	.byte	W05
	.byte		        Gs4 , v108
	.byte	W04
	.byte		        Fs4 
	.byte	W05
	.byte		        En4 , v104
	.byte	W04
	.byte		        Dn4 , v100
	.byte	W05
	.byte		        Cs4 , v096
	.byte	W04
	.byte		N01   , Bn3 
	.byte	W02
	.byte		N02   , Dn4 , v108
	.byte	W03
	.byte		N04   , Cs4 , v116
	.byte	W04
	.byte		        Gs3 , v088
	.byte	W05
	.byte		        Fs3 
	.byte	W04
	.byte		        En3 , v084
	.byte	W05
	.byte		        Dn3 , v080
	.byte	W04
	.byte		N01   , Cs3 
	.byte	W02
	.byte		N02   , Bn3 , v116
	.byte	W03
	.byte		N04   , Bn2 , v076
	.byte	W04
	.byte		N05   , An2 , v072
	.byte	W05
@ 067   ----------------------------------------
mus_theme_of_prontera_3_067:
	.byte	W01
	.byte		N04   , Cs3 , v072
	.byte	W05
	.byte		        Dn3 , v076
	.byte	W04
	.byte		        En3 
	.byte	W05
	.byte		        Fs3 , v080
	.byte	W04
	.byte		        Gs2 
	.byte	W05
	.byte		        An2 , v084
	.byte	W04
	.byte		        Bn2 , v088
	.byte	W05
	.byte		        Cs3 
	.byte	W04
	.byte		        Dn3 , v092
	.byte	W05
	.byte		        En3 
	.byte	W04
	.byte		        Fs3 , v096
	.byte	W05
	.byte		        Gs3 
	.byte	W04
	.byte		        An3 , v100
	.byte	W05
	.byte		        Bn3 
	.byte	W04
	.byte		        Cs4 , v104
	.byte	W05
	.byte		        Dn4 , v108
	.byte	W04
	.byte		        En4 
	.byte	W05
	.byte		        Fs4 , v112
	.byte	W04
	.byte		        Gs4 
	.byte	W05
	.byte		        An4 , v116
	.byte	W04
	.byte		N06   , Bn4 
	.byte	W05
	.byte	PEND
@ 068   ----------------------------------------
	.byte	W48
	.byte		N09   , Cs4 , v112
	.byte	W12
	.byte		N11   , Cs4 , v108
	.byte	W12
	.byte		N09   , Cs4 , v116
	.byte	W12
	.byte		N09   
	.byte	W12
@ 069   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		N07   , An3 , v104
	.byte	W12
	.byte		N23   , An3 , v116
	.byte	W24
	.byte		N19   , Bn3 , v112
	.byte	W24
	.byte		TIE   , Bn3 , v120
	.byte	W12
@ 070   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 071   ----------------------------------------
	.byte		N20   , Gs3 , v116
	.byte	W24
	.byte		N07   , Gs3 , v112
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		        Bn3 , v116
	.byte	W24
	.byte		TIE   , An3 , v112
	.byte	W12
@ 072   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 073   ----------------------------------------
mus_theme_of_prontera_3_073:
	.byte		N32   , An4 , v108, gtp3
	.byte	W36
	.byte		N23   
	.byte	W24
	.byte		N22   , En4 
	.byte	W24
	.byte		TIE   , Dn4 
	.byte	W12
	.byte	PEND
@ 074   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 075   ----------------------------------------
mus_theme_of_prontera_3_075:
	.byte		N22   , An4 , v108
	.byte	W24
	.byte		N11   , Gs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W24
	.byte		N32   , En4 , v108, gtp2
	.byte	W36
	.byte	PEND
@ 076   ----------------------------------------
	.byte		N92   , Cs4 , v108, gtp3
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
mus_theme_of_prontera_3_080:
	.byte	W72
	.byte		N11   , An4 , v108
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte	PEND
@ 081   ----------------------------------------
	.byte		N92   , Fs4 , v108, gtp3
	.byte	W96
@ 082   ----------------------------------------
	.byte		N44   , Dn4 , v108, gtp2
	.byte	W60
	.byte		N32   , Dn4 , v108, gtp2
	.byte	W36
@ 083   ----------------------------------------
	.byte		N44   , En4 , v108, gtp2
	.byte	W48
	.byte		        En4 , v108, gtp2
	.byte	W48
@ 084   ----------------------------------------
	.byte		N80   , An3 , v092, gtp3
	.byte	W84
	.byte		N23   
	.byte	W12
@ 085   ----------------------------------------
	.byte	W12
	.byte		N22   , Cs4 
	.byte	W24
	.byte		TIE   , En4 
	.byte	W60
@ 086   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
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
mus_theme_of_prontera_3_092:
	.byte	W64
	.byte		N15   , Gn4 , v092
	.byte	W16
	.byte		N16   , Fn4 
	.byte	W16
	.byte	PEND
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_092
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W48
	.byte		N23   , An4 , v108
	.byte	W24
	.byte		N06   , En4 , v116
	.byte	W12
	.byte		N80   , Gn4 , v112, gtp3
	.byte	W12
@ 099   ----------------------------------------
	.byte	W72
	.byte		N06   , An4 
	.byte	W12
	.byte		N32   , Bn4 , v116, gtp3
	.byte	W12
@ 100   ----------------------------------------
	.byte	W24
	.byte		N11   , Cn5 , v120
	.byte	W12
	.byte		N12   , An4 , v116
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		N72   , Gn4 , v116, gtp3
	.byte	W12
@ 101   ----------------------------------------
	.byte	W64
	.byte		N15   , Fn4 , v104
	.byte	W16
	.byte		        En4 , v100
	.byte	W16
@ 102   ----------------------------------------
	.byte		N24   , Fn4 , v116
	.byte	W48
	.byte		N44   , Gn4 , v112, gtp2
	.byte	W48
@ 103   ----------------------------------------
	.byte		N01   , Gs4 , v100
	.byte	W02
	.byte		N07   , An4 , v116
	.byte	W22
	.byte		N44   , Cn4 , v112, gtp2
	.byte	W48
	.byte		        Dn4 , v116, gtp2
	.byte	W24
@ 104   ----------------------------------------
	.byte	W24
	.byte		TIE   , En4 , v120
	.byte	W72
@ 105   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 106   ----------------------------------------
	.byte	W96
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_051
@ 108   ----------------------------------------
	.byte	W72
	.byte		N11   , En4 , v116
	.byte	W12
	.byte		N12   , Gn4 , v108
	.byte	W12
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
	.byte	W24
	.byte		N04   , Bn4 , v116
	.byte	W04
	.byte		        An4 , v112
	.byte	W05
	.byte		        Gs4 , v108
	.byte	W04
	.byte		        Fs4 
	.byte	W05
	.byte		        En4 , v104
	.byte	W04
	.byte		        Dn4 , v100
	.byte	W05
	.byte		        Cs4 , v096
	.byte	W04
	.byte		        Bn3 
	.byte	W05
	.byte		        An3 , v092
	.byte	W04
	.byte		        Gs3 , v088
	.byte	W05
	.byte		        Fs3 
	.byte	W04
	.byte		        En3 , v084
	.byte	W05
	.byte		        Dn3 , v080
	.byte	W04
	.byte		        Cs3 
	.byte	W05
	.byte		        Bn2 , v076
	.byte	W04
	.byte		N05   , An2 , v072
	.byte	W05
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_067
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
	.byte	PATT
	 .word	mus_theme_of_prontera_3_073
@ 130   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , Dn4 
	.byte	W01
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_075
@ 132   ----------------------------------------
	.byte		N92   , Cs4 , v108, gtp3
	.byte	W96
@ 133   ----------------------------------------
	.byte	W96
@ 134   ----------------------------------------
	.byte	W96
@ 135   ----------------------------------------
	.byte	W96
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_080
@ 137   ----------------------------------------
	.byte		N92   , Fs4 , v108, gtp3
	.byte	W96
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
	.byte	W01
	.byte		N04   , Bn2 , v064
	.byte	W05
	.byte		        Cs3 , v068
	.byte	W04
	.byte		        Dn3 
	.byte	W05
	.byte		        En3 , v072
	.byte	W04
	.byte		        Fs3 
	.byte	W05
	.byte		        Gs2 , v076
	.byte	W04
	.byte		        An2 , v080
	.byte	W05
	.byte		        Bn2 
	.byte	W04
	.byte		        Cs3 , v084
	.byte	W05
	.byte		        Dn3 
	.byte	W04
	.byte		        En3 , v088
	.byte	W05
	.byte		        Fs3 
	.byte	W04
	.byte		        Gs3 , v092
	.byte	W05
	.byte		        An3 
	.byte	W04
	.byte		        Bn3 , v096
	.byte	W05
	.byte		        Cs4 
	.byte	W04
	.byte		        Dn4 , v100
	.byte	W05
	.byte		        En4 
	.byte	W04
	.byte		        Fs4 , v104
	.byte	W05
	.byte		        Gs4 
	.byte	W04
	.byte		N06   , An4 , v108
	.byte	W05
@ 140   ----------------------------------------
	.byte	W96
@ 141   ----------------------------------------
	.byte	W01
	.byte		N04   , Bn2 , v064
	.byte	W05
	.byte		        Cs3 , v068
	.byte	W04
	.byte		        Dn3 
	.byte	W05
	.byte		        En3 , v072
	.byte	W04
	.byte		        Fs3 
	.byte	W05
	.byte		        Gs3 , v076
	.byte	W04
	.byte		        An3 , v080
	.byte	W05
	.byte		        Bn3 
	.byte	W04
	.byte		        Cs4 , v084
	.byte	W05
	.byte		        Dn4 
	.byte	W04
	.byte		        En4 , v088
	.byte	W05
	.byte		        Fs4 
	.byte	W04
	.byte		        Gs4 , v092
	.byte	W05
	.byte		        An4 
	.byte	W04
	.byte		        Bn4 , v096
	.byte	W05
	.byte		        Cs5 
	.byte	W04
	.byte		        Dn5 , v100
	.byte	W05
	.byte		        En5 
	.byte	W04
	.byte		        Fs4 , v104
	.byte	W05
	.byte		        Gs4 
	.byte	W04
	.byte		N06   , An4 , v108
	.byte	W05
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W96
@ 144   ----------------------------------------
	.byte	W96
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	W96
@ 149   ----------------------------------------
	.byte	W96
@ 150   ----------------------------------------
	.byte	W96
@ 151   ----------------------------------------
	.byte	W96
@ 152   ----------------------------------------
	.byte	W96
@ 153   ----------------------------------------
	.byte	W96
@ 154   ----------------------------------------
	.byte	W24
	.byte		N08   , Cn4 , v092
	.byte	W12
	.byte		        Cn4 , v088
	.byte	W12
	.byte		        Cn4 , v080
	.byte	W12
	.byte		        Cn4 , v072
	.byte	W12
	.byte		        Cn4 , v064
	.byte	W12
	.byte		        Cn4 , v060
	.byte	W12
@ 155   ----------------------------------------
	.byte	W96
@ 156   ----------------------------------------
	.byte		N92   , Cs4 , v072, gtp3
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
	.byte	W96
@ 162   ----------------------------------------
	.byte	W96
@ 163   ----------------------------------------
	.byte	W96
@ 164   ----------------------------------------
	.byte	W96
@ 165   ----------------------------------------
	.byte	W96
@ 166   ----------------------------------------
	.byte	W96
@ 167   ----------------------------------------
	.byte	W96
@ 168   ----------------------------------------
	.byte	W96
@ 169   ----------------------------------------
	.byte	W96
@ 170   ----------------------------------------
	.byte	W96
@ 171   ----------------------------------------
	.byte	W96
@ 172   ----------------------------------------
	.byte	W96
@ 173   ----------------------------------------
	.byte	W96
@ 174   ----------------------------------------
	.byte	W96
@ 175   ----------------------------------------
	.byte	W96
@ 176   ----------------------------------------
	.byte	W96
@ 177   ----------------------------------------
	.byte	W96
@ 178   ----------------------------------------
	.byte	W96
@ 179   ----------------------------------------
	.byte	W96
@ 180   ----------------------------------------
	.byte	W06
	.byte		N23   , Fs3 , v112
	.byte	W24
	.byte		N11   , An3 , v116
	.byte	W12
	.byte		N10   , Bn3 
	.byte	W24
	.byte		N80   , Gs3 , v112, gtp2
	.byte	W30
@ 181   ----------------------------------------
	.byte	W54
	.byte		N23   , Gs3 , v108
	.byte	W24
	.byte		        An3 , v112
	.byte	W18
@ 182   ----------------------------------------
	.byte	W06
	.byte		N10   , Bn3 , v116
	.byte	W24
	.byte		N44   , Bn3 , v116, gtp3
	.byte	W48
	.byte		N11   , An3 , v108
	.byte	W12
	.byte		N56   , Cs4 , v116, gtp2
	.byte	W06
@ 183   ----------------------------------------
	.byte	W54
	.byte		N17   , Dn3 , v120
	.byte	W36
	.byte		N32   , Dn4 , v116, gtp3
	.byte	W06
@ 184   ----------------------------------------
	.byte	W30
	.byte		N06   , Cs4 , v104
	.byte	W12
	.byte		N32   , Dn4 , v116, gtp2
	.byte	W36
	.byte		N06   , Cs4 , v104
	.byte	W12
	.byte		N44   , An3 , v112, gtp3
	.byte	W06
@ 185   ----------------------------------------
	.byte	W42
	.byte		N80   , Bn3 , v116, gtp3
	.byte	W54
@ 186   ----------------------------------------
	.byte	W30
	.byte		N11   , An3 , v104
	.byte	W12
	.byte		N23   , En4 , v116
	.byte	W24
	.byte		N10   , Dn4 
	.byte	W24
	.byte		        Cs4 , v108
	.byte	W06
@ 187   ----------------------------------------
	.byte	W18
	.byte		        Dn4 , v116
	.byte	W24
	.byte		N56   , En4 , v120, gtp2
	.byte	W54
@ 188   ----------------------------------------
	.byte	W06
	.byte		N09   , Cs4 , v112
	.byte	W12
	.byte		N11   , Cs4 , v108
	.byte	W12
	.byte		N09   , Cs4 , v116
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , An3 , v104
	.byte	W12
	.byte		N23   , An3 , v116
	.byte	W06
@ 189   ----------------------------------------
	.byte	W18
	.byte		N19   , Bn3 , v112
	.byte	W24
	.byte		TIE   , Bn3 , v120
	.byte	W54
@ 190   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		N20   , Gs3 , v116
	.byte	W24
	.byte		N07   , Gs3 , v112
	.byte	W12
	.byte		N23   
	.byte	W06
@ 191   ----------------------------------------
	.byte	W18
	.byte		        Bn3 , v116
	.byte	W24
	.byte		N92   , An3 , v112, gtp3
	.byte	W54
@ 192   ----------------------------------------
	.byte	W42
	.byte		N32   , An3 , v108, gtp3
	.byte	W36
	.byte		N11   , Gs3 , v104
	.byte	W12
	.byte		N23   , An3 , v108
	.byte	W06
@ 193   ----------------------------------------
	.byte	W18
	.byte		N22   , En3 , v116
	.byte	W24
	.byte		N92   , Fs3 , v116, gtp3
	.byte	W54
@ 194   ----------------------------------------
	.byte	W42
	.byte		N09   , Dn3 , v104
	.byte	W12
	.byte		N23   , An3 , v116
	.byte	W24
	.byte		N09   , Gs3 , v112
	.byte	W12
	.byte		N23   , Fs3 
	.byte	W06
@ 195   ----------------------------------------
	.byte	W18
	.byte		N32   , En3 , v116, gtp2
	.byte	W78
@ 196   ----------------------------------------
	.byte	W06
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N08   , Cs4 , v108
	.byte	W12
	.byte		N10   , Cs4 , v104
	.byte	W12
	.byte		N11   , Cs4 , v108
	.byte	W12
	.byte		N23   , Cs4 , v112
	.byte	W24
	.byte		N09   , En4 , v116
	.byte	W12
	.byte		N23   , Dn4 
	.byte	W06
@ 197   ----------------------------------------
	.byte	W18
	.byte		        Cs4 , v112
	.byte	W24
	.byte		TIE   , Bn3 , v116
	.byte	W54
@ 198   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		N32   , Dn4 , v116, gtp2
	.byte	W36
	.byte		        Cs4 , v108, gtp2
	.byte	W06
@ 199   ----------------------------------------
	.byte	W30
	.byte		N11   , Gs4 , v116
	.byte	W12
	.byte		N68   , An4 , v120, gtp3
	.byte	W54
@ 200   ----------------------------------------
	.byte	W18
	.byte		N09   , Gs4 , v116
	.byte	W12
	.byte		N11   , Fs4 , v112
	.byte	W12
	.byte		N09   , En4 , v108
	.byte	W12
	.byte		N22   , Dn4 
	.byte	W24
	.byte		N09   , Cs4 , v104
	.byte	W12
	.byte		N23   , Bn3 , v112
	.byte	W06
@ 201   ----------------------------------------
	.byte	W18
	.byte		        An3 , v116
	.byte	W24
	.byte		N07   , Bn3 , v100
	.byte	W12
	.byte		N80   , Cs4 , v108, gtp3
	.byte	W42
@ 202   ----------------------------------------
	.byte	W42
	.byte		N05   , Dn4 , v092
	.byte	W06
	.byte		        Cs4 , v088
	.byte	W06
	.byte		N92   , Bn3 , v100, gtp3
	.byte	W42
@ 203   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte	GOTO
	 .word	mus_theme_of_prontera_3_B1
mus_theme_of_prontera_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_theme_of_prontera_4:
	.byte	KEYSH , mus_theme_of_prontera_key+0
mus_theme_of_prontera_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 88*mus_theme_of_prontera_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W84
	.byte		N01   , Cn1 , v092
	.byte	W06
	.byte		N01   
	.byte	W06
@ 004   ----------------------------------------
	.byte		N01   
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v092
	.byte	W36
	.byte		        Cn1 
	.byte		N01   , Fs1 , v080
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Fs1 , v092
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        En1 , v092
	.byte	W36
	.byte		        Cn1 
	.byte		N01   , Fs1 , v044
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        En1 , v092
	.byte	W24
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 , v080
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
@ 007   ----------------------------------------
	.byte		        Fs1 , v092
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        En1 , v092
	.byte	W24
	.byte		        Fs1 , v080
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
@ 008   ----------------------------------------
	.byte		        Cn1 , v092
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v092
	.byte	W36
	.byte		        Cn1 
	.byte		N01   , Fs1 , v080
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
@ 009   ----------------------------------------
mus_theme_of_prontera_4_009:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Fs1 , v092
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        En1 , v092
	.byte	W36
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
	.byte		        Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Fs1 , v092
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        En1 , v092
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte		N01   
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
@ 011   ----------------------------------------
	.byte		        Fs1 , v092
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 , v044
	.byte	W06
	.byte		        En1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs1 , v044
	.byte	W12
	.byte		        En1 , v092
	.byte	W24
	.byte		        Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_009
@ 013   ----------------------------------------
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Fs1 , v092
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        En1 , v092
	.byte	W36
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
@ 014   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W24
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W48
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
@ 015   ----------------------------------------
	.byte		        Fs1 , v092
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W36
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
	.byte	W48
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 , v056
	.byte		N01   , Gs4 , v068
	.byte	W12
	.byte		        Fs1 , v056
	.byte		N01   , An4 
	.byte	W24
@ 032   ----------------------------------------
	.byte		        Fs1 
	.byte	W24
	.byte		N01   
	.byte	W48
	.byte		N01   
	.byte	W24
@ 033   ----------------------------------------
	.byte		        Cn1 , v092
	.byte		N01   , Fs1 , v056
	.byte	W18
	.byte		        Cn1 , v092
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte		        En1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v104
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
@ 034   ----------------------------------------
mus_theme_of_prontera_4_034:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Cs2 , v104
	.byte	W24
	.byte		        Fs1 , v092
	.byte	W24
	.byte		        En1 
	.byte	W36
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte	PEND
@ 035   ----------------------------------------
mus_theme_of_prontera_4_035:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W24
	.byte		        En1 
	.byte	W36
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
mus_theme_of_prontera_4_036:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W24
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v080
	.byte	W06
	.byte	PEND
@ 037   ----------------------------------------
mus_theme_of_prontera_4_037:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
mus_theme_of_prontera_4_038:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W24
	.byte		N01   
	.byte	W24
	.byte		        En1 
	.byte	W36
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte	PEND
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_035
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_036
@ 041   ----------------------------------------
mus_theme_of_prontera_4_041:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W24
	.byte		        Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_038
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_036
@ 045   ----------------------------------------
mus_theme_of_prontera_4_045:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 046   ----------------------------------------
mus_theme_of_prontera_4_046:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W36
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte	W36
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 047   ----------------------------------------
mus_theme_of_prontera_4_047:
	.byte		N01   , Cn1 , v092
	.byte	W24
	.byte		N01   
	.byte		N01   , Fs1 
	.byte	W72
	.byte	PEND
@ 048   ----------------------------------------
mus_theme_of_prontera_4_048:
	.byte		N01   , Cn1 , v092
	.byte	W24
	.byte		        Fs1 
	.byte	W24
	.byte		        En1 
	.byte	W36
	.byte		        Cn1 
	.byte		N01   , Fs1 , v080
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte	PEND
@ 049   ----------------------------------------
mus_theme_of_prontera_4_049:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W24
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 050   ----------------------------------------
mus_theme_of_prontera_4_050:
	.byte		N01   , Cn1 , v092
	.byte	W24
	.byte		        Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte	PEND
@ 051   ----------------------------------------
mus_theme_of_prontera_4_051:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W24
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W24
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 052   ----------------------------------------
mus_theme_of_prontera_4_052:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Fs1 , v092
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gs4 , v068
	.byte	W12
	.byte		        An4 , v092
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte	PEND
@ 053   ----------------------------------------
mus_theme_of_prontera_4_053:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Fs1 , v068
	.byte		N01   , Gs4 
	.byte	W12
	.byte		        Fs1 , v080
	.byte		N01   , An4 , v092
	.byte	W24
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W36
	.byte		        Cn1 
	.byte	W12
	.byte	PEND
@ 054   ----------------------------------------
mus_theme_of_prontera_4_054:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Fs1 , v092
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , An4 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N01   
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte	PEND
@ 055   ----------------------------------------
mus_theme_of_prontera_4_055:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte		N01   , An4 , v068
	.byte	W12
	.byte		        Fs1 , v092
	.byte		N01   , An4 , v080
	.byte	W12
	.byte		        Fs1 , v092
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 056   ----------------------------------------
mus_theme_of_prontera_4_056:
	.byte		N01   , Cn1 , v092
	.byte	W24
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Fs1 , v092
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gs4 , v068
	.byte	W12
	.byte		        An4 , v092
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte	PEND
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_053
@ 058   ----------------------------------------
mus_theme_of_prontera_4_058:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , An4 
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N01   , Fs1 , v068
	.byte	W12
	.byte	PEND
@ 059   ----------------------------------------
mus_theme_of_prontera_4_059:
	.byte		N01   , Cn1 , v092
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N01   , An4 , v068
	.byte	W12
	.byte		        An4 , v080
	.byte	W12
	.byte		        Fs1 , v092
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 060   ----------------------------------------
mus_theme_of_prontera_4_060:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W24
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Fs1 , v092
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gs4 , v068
	.byte	W12
	.byte		        An4 , v092
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte	PEND
@ 061   ----------------------------------------
mus_theme_of_prontera_4_061:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Fs1 , v068
	.byte		N01   , Gs4 
	.byte	W12
	.byte		        Fs1 , v080
	.byte		N01   , An4 , v092
	.byte	W24
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W36
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
mus_theme_of_prontera_4_062:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , An4 
	.byte	W24
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte	PEND
@ 063   ----------------------------------------
mus_theme_of_prontera_4_063:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        En1 
	.byte		N01   , An4 , v068
	.byte	W12
	.byte		        An4 , v080
	.byte	W12
	.byte		        Fs1 , v092
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
mus_theme_of_prontera_4_064:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Ds2 
	.byte	W24
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Fs1 , v092
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gs4 , v068
	.byte	W12
	.byte		        An4 , v092
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte	PEND
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_053
@ 066   ----------------------------------------
mus_theme_of_prontera_4_066:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , An4 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N01   
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte	PEND
@ 067   ----------------------------------------
mus_theme_of_prontera_4_067:
	.byte		N01   , En1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , An4 , v068
	.byte	W12
	.byte		        En1 , v092
	.byte		N01   , An4 , v080
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte	PEND
@ 068   ----------------------------------------
mus_theme_of_prontera_4_068:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Cs2 
	.byte	W24
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v068
	.byte	W06
	.byte	PEND
@ 069   ----------------------------------------
mus_theme_of_prontera_4_069:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte		N01   , Gs4 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , An4 
	.byte	W24
	.byte		        En1 
	.byte	W36
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 070   ----------------------------------------
mus_theme_of_prontera_4_070:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , An4 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte	PEND
@ 071   ----------------------------------------
mus_theme_of_prontera_4_071:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W24
	.byte		        En1 
	.byte		N01   , An4 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 072   ----------------------------------------
mus_theme_of_prontera_4_072:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W24
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte	PEND
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_069
@ 074   ----------------------------------------
mus_theme_of_prontera_4_074:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        En1 
	.byte		N01   , Gs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte	PEND
@ 075   ----------------------------------------
mus_theme_of_prontera_4_075:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_068
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_069
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_070
@ 079   ----------------------------------------
mus_theme_of_prontera_4_079:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W24
	.byte		        En1 
	.byte		N01   , An4 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 080   ----------------------------------------
mus_theme_of_prontera_4_080:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W24
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        En1 
	.byte	W24
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , An2 
	.byte	W12
	.byte	PEND
@ 081   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W48
	.byte		        En1 
	.byte	W36
	.byte		        Fs1 
	.byte	W12
@ 082   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
@ 083   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W72
@ 084   ----------------------------------------
	.byte		        Cn1 
	.byte	W48
	.byte		        En1 
	.byte	W36
	.byte		        Cn1 
	.byte	W12
@ 085   ----------------------------------------
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        En1 
	.byte	W60
@ 086   ----------------------------------------
	.byte		        Cn1 
	.byte	W24
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		N01   
	.byte	W06
@ 087   ----------------------------------------
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N01   
	.byte	W24
@ 088   ----------------------------------------
	.byte		N01   
	.byte	W36
	.byte		        En1 
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte		N01   
	.byte	W24
@ 089   ----------------------------------------
	.byte		N01   
	.byte	W18
	.byte		N01   
	.byte	W18
	.byte		N01   
	.byte		N01   , Gs4 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , An4 
	.byte	W12
	.byte		        En1 
	.byte		N01   , Gs4 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , An4 
	.byte	W24
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_034
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_035
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_036
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_037
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_038
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_035
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_036
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_041
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_038
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_035
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_036
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_045
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_046
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_047
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_048
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_049
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_050
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_051
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_052
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_053
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_054
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_055
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_056
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_053
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_058
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_059
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_060
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_061
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_062
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_063
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_064
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_053
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_066
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_067
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_068
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_069
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_070
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_071
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_072
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_069
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_074
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_075
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_068
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_069
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_070
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_079
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_080
@ 137   ----------------------------------------
	.byte		N01   , Cn1 , v092
	.byte		N01   , Cs2 
	.byte	W36
	.byte		        En1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte	W12
@ 138   ----------------------------------------
	.byte		N01   
	.byte		N01   , Cs2 
	.byte	W24
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W24
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W24
	.byte		        Cn1 
	.byte	W06
	.byte		N01   
	.byte	W06
@ 139   ----------------------------------------
	.byte		N01   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N01   
	.byte	W72
@ 140   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W36
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W36
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
@ 141   ----------------------------------------
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N01   
	.byte	W24
	.byte		        En1 
	.byte	W48
@ 142   ----------------------------------------
mus_theme_of_prontera_4_142:
	.byte		N01   , Fs1 , v092
	.byte	W24
	.byte		N01   
	.byte	W12
	.byte		        En1 
	.byte	W48
	.byte		        Fs1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte	PEND
@ 143   ----------------------------------------
mus_theme_of_prontera_4_143:
	.byte		N01   , Fs1 , v092
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W24
	.byte		        En1 
	.byte	W48
	.byte	PEND
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_142
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_143
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W48
	.byte		N01   , Cn1 , v092
	.byte	W48
@ 148   ----------------------------------------
	.byte		N01   
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
@ 149   ----------------------------------------
mus_theme_of_prontera_4_149:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W12
	.byte	PEND
@ 150   ----------------------------------------
mus_theme_of_prontera_4_150:
	.byte		N01   , Fs1 , v092
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte	PEND
@ 151   ----------------------------------------
mus_theme_of_prontera_4_151:
	.byte		N01   , Fs1 , v092
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 152   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
@ 153   ----------------------------------------
mus_theme_of_prontera_4_153:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte	PEND
@ 154   ----------------------------------------
mus_theme_of_prontera_4_154:
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte	PEND
@ 155   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
@ 156   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W12
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_153
@ 158   ----------------------------------------
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_151
@ 160   ----------------------------------------
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_153
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_154
@ 163   ----------------------------------------
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
@ 164   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
@ 165   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_149
@ 166   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_150
@ 167   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_151
@ 168   ----------------------------------------
	.byte		N01   , Cn1 , v092
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
@ 169   ----------------------------------------
	.byte	W96
@ 170   ----------------------------------------
	.byte	W96
@ 171   ----------------------------------------
	.byte	W96
@ 172   ----------------------------------------
	.byte	W96
@ 173   ----------------------------------------
	.byte	W96
@ 174   ----------------------------------------
	.byte	W96
@ 175   ----------------------------------------
	.byte	W96
@ 176   ----------------------------------------
	.byte	W96
@ 177   ----------------------------------------
	.byte	W96
@ 178   ----------------------------------------
	.byte	W96
@ 179   ----------------------------------------
	.byte	W96
@ 180   ----------------------------------------
	.byte	W96
@ 181   ----------------------------------------
	.byte	W96
@ 182   ----------------------------------------
	.byte	W96
@ 183   ----------------------------------------
	.byte	W96
@ 184   ----------------------------------------
	.byte	W96
@ 185   ----------------------------------------
	.byte	W96
@ 186   ----------------------------------------
	.byte	W96
@ 187   ----------------------------------------
	.byte	W96
@ 188   ----------------------------------------
	.byte	W96
@ 189   ----------------------------------------
	.byte	W96
@ 190   ----------------------------------------
	.byte	W96
@ 191   ----------------------------------------
	.byte	W96
@ 192   ----------------------------------------
	.byte	W96
@ 193   ----------------------------------------
	.byte	W96
@ 194   ----------------------------------------
	.byte	W96
@ 195   ----------------------------------------
	.byte	W96
@ 196   ----------------------------------------
	.byte	W96
@ 197   ----------------------------------------
	.byte	W96
@ 198   ----------------------------------------
	.byte	W96
@ 199   ----------------------------------------
	.byte	W96
@ 200   ----------------------------------------
	.byte	W96
@ 201   ----------------------------------------
	.byte	W96
@ 202   ----------------------------------------
	.byte	W96
@ 203   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte	GOTO
	 .word	mus_theme_of_prontera_4_B1
mus_theme_of_prontera_4_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_theme_of_prontera:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_theme_of_prontera_pri	@ Priority
	.byte	mus_theme_of_prontera_rev	@ Reverb.

	.word	mus_theme_of_prontera_grp

	.word	mus_theme_of_prontera_1
	.word	mus_theme_of_prontera_2
	.word	mus_theme_of_prontera_3
	.word	mus_theme_of_prontera_4

	.end
