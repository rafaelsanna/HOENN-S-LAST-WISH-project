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
	.byte		N44   , Cn1 , v120, gtp2
	.byte	W84
	.byte		N11   
	.byte	W12
@ 001   ----------------------------------------
	.byte		N22   , Gn0 
	.byte	W24
	.byte		N11   
	.byte	W60
	.byte		N11   
	.byte	W12
@ 002   ----------------------------------------
	.byte		N22   , Fn1 
	.byte	W24
	.byte		N11   
	.byte	W48
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 003   ----------------------------------------
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W60
	.byte		N11   
	.byte	W12
@ 004   ----------------------------------------
	.byte		N32   , Cn1 , v120, gtp2
	.byte	W84
	.byte		N11   , Dn1 
	.byte	W12
@ 005   ----------------------------------------
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
@ 006   ----------------------------------------
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W72
	.byte		N11   
	.byte	W12
	.byte		N23   , Gn0 
	.byte	W12
@ 007   ----------------------------------------
	.byte	W12
	.byte		N22   
	.byte	W84
@ 008   ----------------------------------------
	.byte		N44   , Cn1 , v120, gtp2
	.byte	W84
	.byte		N11   , Gn0 
	.byte	W12
@ 009   ----------------------------------------
	.byte		N22   , Cn1 
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N44   , Cn1 , v120, gtp2
	.byte	W48
@ 010   ----------------------------------------
	.byte		N11   , Gn0 
	.byte	W24
	.byte		N68   , Gn0 , v120, gtp2
	.byte	W72
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
	.byte		N11   
	.byte	W24
	.byte		N32   , Gn0 , v120, gtp2
	.byte	W48
	.byte		N68   , Gn0 , v120, gtp2
	.byte	W24
@ 029   ----------------------------------------
	.byte	W84
	.byte		N11   , Gn0 , v104
	.byte	W12
@ 030   ----------------------------------------
mus_theme_of_prontera_1_030:
	.byte		N44   , Cn1 , v120, gtp2
	.byte	W84
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
mus_theme_of_prontera_1_031:
	.byte		N22   , Cn1 , v120
	.byte	W24
	.byte		N11   
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_031
@ 033   ----------------------------------------
mus_theme_of_prontera_1_033:
	.byte		N44   , Gn0 , v120, gtp2
	.byte	W48
	.byte		        Gn0 , v120, gtp2
	.byte	W48
	.byte	PEND
@ 034   ----------------------------------------
mus_theme_of_prontera_1_034:
	.byte		N44   , Cn1 , v120, gtp2
	.byte	W84
	.byte		N11   , Dn1 
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
mus_theme_of_prontera_1_035:
	.byte		N44   , En1 , v120, gtp2
	.byte	W84
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
mus_theme_of_prontera_1_036:
	.byte		N22   , Fn1 , v120
	.byte	W24
	.byte		N11   
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_033
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_034
@ 039   ----------------------------------------
mus_theme_of_prontera_1_039:
	.byte		N22   , En1 , v120
	.byte	W24
	.byte		N11   
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
mus_theme_of_prontera_1_040:
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
@ 041   ----------------------------------------
mus_theme_of_prontera_1_041:
	.byte		N11   , En1 , v120
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W72
	.byte	PEND
@ 042   ----------------------------------------
mus_theme_of_prontera_1_042:
	.byte		N15   , Dn1 , v120
	.byte	W48
	.byte		N44   , En1 , v120, gtp2
	.byte	W48
	.byte	PEND
@ 043   ----------------------------------------
mus_theme_of_prontera_1_043:
	.byte		N11   , Fn1 , v120
	.byte	W24
	.byte		N68   , Gn0 , v120, gtp2
	.byte	W72
	.byte	PEND
@ 044   ----------------------------------------
mus_theme_of_prontera_1_044:
	.byte		N68   , Cn1 , v120, gtp2
	.byte	W84
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 045   ----------------------------------------
mus_theme_of_prontera_1_045:
	.byte		N11   , Cn1 , v120
	.byte	W12
	.byte		N11   
	.byte	W84
	.byte	PEND
@ 046   ----------------------------------------
mus_theme_of_prontera_1_046:
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
@ 047   ----------------------------------------
mus_theme_of_prontera_1_047:
	.byte		N11   , As0 , v120
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N44   , Cn1 , v120, gtp3
	.byte	W48
	.byte	PEND
@ 048   ----------------------------------------
mus_theme_of_prontera_1_048:
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W84
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 049   ----------------------------------------
mus_theme_of_prontera_1_049:
	.byte		N11   , En1 , v120
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N12   , En1 
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 050   ----------------------------------------
mus_theme_of_prontera_1_050:
	.byte		N44   , Dn1 , v120, gtp2
	.byte	W72
	.byte		N11   , En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
	.byte		N44   , Cn1 , v120, gtp2
	.byte	W96
@ 052   ----------------------------------------
mus_theme_of_prontera_1_052:
	.byte		N44   , Bn0 , v120, gtp2
	.byte	W72
	.byte		N11   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 053   ----------------------------------------
mus_theme_of_prontera_1_053:
	.byte		N22   , En1 , v120
	.byte	W36
	.byte		N11   
	.byte	W24
	.byte		N32   , En1 , v120, gtp2
	.byte	W36
	.byte	PEND
@ 054   ----------------------------------------
mus_theme_of_prontera_1_054:
	.byte		N44   , An0 , v120, gtp2
	.byte	W84
	.byte		N11   , Gn0 
	.byte	W12
	.byte	PEND
@ 055   ----------------------------------------
mus_theme_of_prontera_1_055:
	.byte		N44   , An0 , v120, gtp2
	.byte	W72
	.byte		N11   , Bn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte	PEND
@ 056   ----------------------------------------
mus_theme_of_prontera_1_056:
	.byte		N44   , Dn1 , v120, gtp2
	.byte	W84
	.byte		N11   , Cs1 
	.byte	W12
	.byte	PEND
@ 057   ----------------------------------------
mus_theme_of_prontera_1_057:
	.byte		N44   , Dn1 , v120, gtp2
	.byte	W84
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 058   ----------------------------------------
mus_theme_of_prontera_1_058:
	.byte		N44   , Cs1 , v120, gtp2
	.byte	W84
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 059   ----------------------------------------
mus_theme_of_prontera_1_059:
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
@ 060   ----------------------------------------
mus_theme_of_prontera_1_060:
	.byte		N44   , Bn0 , v120, gtp2
	.byte	W84
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 061   ----------------------------------------
mus_theme_of_prontera_1_061:
	.byte		N22   , An0 , v120
	.byte	W24
	.byte		N11   
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
mus_theme_of_prontera_1_062:
	.byte		N22   , En1 , v120
	.byte	W24
	.byte		N11   
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 063   ----------------------------------------
mus_theme_of_prontera_1_063:
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
@ 064   ----------------------------------------
mus_theme_of_prontera_1_064:
	.byte		N44   , An0 , v120, gtp2
	.byte	W84
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
mus_theme_of_prontera_1_065:
	.byte		N11   , Dn1 , v120
	.byte	W24
	.byte		N22   
	.byte	W72
	.byte	PEND
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_035
@ 067   ----------------------------------------
	.byte		N11   , Cs1 , v120
	.byte	W24
	.byte		N22   
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 068   ----------------------------------------
mus_theme_of_prontera_1_068:
	.byte		N44   , Fs1 , v120, gtp2
	.byte	W84
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 069   ----------------------------------------
mus_theme_of_prontera_1_069:
	.byte		N11   , En1 , v120
	.byte	W24
	.byte		N22   
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_057
@ 071   ----------------------------------------
mus_theme_of_prontera_1_071:
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
@ 072   ----------------------------------------
mus_theme_of_prontera_1_072:
	.byte		N44   , An0 , v120, gtp2
	.byte	W72
	.byte		N11   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 073   ----------------------------------------
mus_theme_of_prontera_1_073:
	.byte		N22   , Dn1 , v120
	.byte	W24
	.byte		N11   , Cs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 074   ----------------------------------------
mus_theme_of_prontera_1_074:
	.byte		N44   , En1 , v120, gtp2
	.byte	W72
	.byte		N11   , Bn0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 075   ----------------------------------------
mus_theme_of_prontera_1_075:
	.byte		N11   , Fn1 , v120
	.byte	W24
	.byte		N22   
	.byte	W48
	.byte		N11   , Cs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 076   ----------------------------------------
mus_theme_of_prontera_1_076:
	.byte		N44   , Fs1 , v120, gtp2
	.byte	W72
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 077   ----------------------------------------
mus_theme_of_prontera_1_077:
	.byte		N44   , Ds1 , v120, gtp2
	.byte	W84
	.byte		N11   , Bn0 
	.byte	W12
	.byte	PEND
@ 078   ----------------------------------------
mus_theme_of_prontera_1_078:
	.byte		N44   , En1 , v120, gtp2
	.byte	W60
	.byte		N11   , Bn0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 079   ----------------------------------------
	.byte		N44   , En1 , v120, gtp2
	.byte	W96
@ 080   ----------------------------------------
	.byte		        An0 , v120, gtp2
	.byte	W60
	.byte		N11   , En1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
@ 081   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N22   
	.byte	W72
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N44   , Gn0 , v120, gtp3
	.byte	W48
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_030
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_031
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_031
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_033
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_034
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_035
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_036
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_033
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_034
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_039
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_040
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_041
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_042
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
	.byte		N44   , Cn1 , v120, gtp2
	.byte	W96
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
	.byte	PATT
	 .word	mus_theme_of_prontera_1_055
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
	 .word	mus_theme_of_prontera_1_035
@ 123   ----------------------------------------
	.byte		N11   , Fn1 , v120
	.byte	W24
	.byte		N44   , Fn1 , v120, gtp2
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_068
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_069
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_057
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_071
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_072
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_073
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_1_074
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
	.byte		N44   , En1 , v120, gtp2
	.byte	W96
@ 136   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 137   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
	.byte	W96
@ 140   ----------------------------------------
	.byte	W96
@ 141   ----------------------------------------
	.byte	W96
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W12
	.byte		N23   , Fs1 
	.byte	W24
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N44   , Ds1 , v120, gtp2
	.byte	W48
@ 144   ----------------------------------------
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
@ 145   ----------------------------------------
	.byte		N44   , Cn1 , v120, gtp2
	.byte	W60
	.byte		N11   
	.byte	W24
	.byte		N23   , Cs1 
	.byte	W12
@ 146   ----------------------------------------
	.byte	W12
	.byte		N11   , Gs0 
	.byte	W12
	.byte		        Cs1 
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 147   ----------------------------------------
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N11   
	.byte	W36
	.byte		N32   , Dn1 , v120, gtp2
	.byte	W36
@ 148   ----------------------------------------
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
@ 149   ----------------------------------------
	.byte		N32   , En1 , v120, gtp2
	.byte	W36
	.byte		N05   
	.byte	W24
	.byte		N32   , En1 , v120, gtp2
	.byte	W36
@ 150   ----------------------------------------
	.byte		N92   , Fn1 , v120, gtp3
	.byte	W96
@ 151   ----------------------------------------
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
@ 152   ----------------------------------------
	.byte		        Cs1 , v120, gtp2
	.byte	W36
	.byte		N11   
	.byte	W24
	.byte		N32   , Cs1 , v120, gtp2
	.byte	W36
@ 153   ----------------------------------------
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
@ 154   ----------------------------------------
	.byte		N32   , Gs0 , v120, gtp2
	.byte	W36
	.byte		N11   , Ds1 
	.byte	W24
	.byte		N32   , Gs0 , v120, gtp2
	.byte	W36
@ 155   ----------------------------------------
	.byte		        Cs1 , v120, gtp2
	.byte	W36
	.byte		N11   , Gs0 
	.byte	W24
	.byte		N32   , Cs1 , v120, gtp2
	.byte	W36
@ 156   ----------------------------------------
	.byte		N44   , Gn0 , v120, gtp2
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N44   , Cn1 , v120, gtp2
	.byte	W12
@ 157   ----------------------------------------
	.byte	W36
	.byte		N56   , Cn1 , v120, gtp2
	.byte	W60
@ 158   ----------------------------------------
	.byte		TIE   , Fn1 
	.byte	W96
@ 159   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N32   , Fn1 , v120, gtp2
	.byte	W36
@ 160   ----------------------------------------
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
@ 161   ----------------------------------------
	.byte		N44   , Dn1 , v120, gtp2
	.byte	W60
	.byte		N11   
	.byte	W24
	.byte		N23   , Ds1 
	.byte	W12
@ 162   ----------------------------------------
	.byte	W12
	.byte		N11   , As0 
	.byte	W12
	.byte		        Ds1 
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 163   ----------------------------------------
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W36
	.byte		N32   , En1 , v120, gtp2
	.byte	W36
@ 164   ----------------------------------------
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
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 001   ----------------------------------------
	.byte		        Dn3 , v060, gtp3
	.byte	W96
@ 002   ----------------------------------------
	.byte		        Cn3 , v060, gtp3
	.byte	W96
@ 003   ----------------------------------------
	.byte		        Cn3 , v060, gtp3
	.byte	W96
@ 004   ----------------------------------------
	.byte		N23   , En3 
	.byte	W24
	.byte		N11   , Cn4 , v068
	.byte	W12
	.byte		        Bn3 
	.byte	W24
	.byte		N32   , Cn4 , v068, gtp2
	.byte	W36
@ 005   ----------------------------------------
	.byte		N23   , Gn3 , v060
	.byte	W24
	.byte		N11   , Bn3 , v068
	.byte	W12
	.byte		        Cn4 
	.byte	W24
	.byte		N32   , Cn4 , v068, gtp2
	.byte	W36
@ 006   ----------------------------------------
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
@ 007   ----------------------------------------
	.byte		N44   , Fn3 , v060, gtp3
	.byte	W48
	.byte		        Dn4 , v068, gtp2
	.byte	W48
@ 008   ----------------------------------------
	.byte		N80   , En3 , v060, gtp3
	.byte	W84
	.byte		N11   , Bn3 , v068
	.byte	W12
@ 009   ----------------------------------------
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
@ 010   ----------------------------------------
	.byte		        Cn3 , v060
	.byte	W24
	.byte		TIE   
	.byte	W72
@ 011   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
@ 012   ----------------------------------------
	.byte		N92   , Cn3 , v056, gtp3
	.byte	W96
@ 013   ----------------------------------------
	.byte		        Bn2 , v060, gtp3
	.byte	W96
@ 014   ----------------------------------------
	.byte		TIE   , An2 
	.byte	W96
@ 015   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		N44   , Bn2 , v060, gtp2
	.byte	W48
@ 016   ----------------------------------------
	.byte		N80   , Cn3 , v060, gtp3
	.byte	W84
	.byte		N11   , Fn3 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 018   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W96
@ 019   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		N44   , Dn3 , v060, gtp2
	.byte	W48
@ 020   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 021   ----------------------------------------
	.byte		        En3 , v060, gtp3
	.byte	W96
@ 022   ----------------------------------------
mus_theme_of_prontera_2_022:
	.byte		N32   , Fn3 , v060, gtp2
	.byte	W36
	.byte		N56   , Fn3 , v060, gtp2
	.byte	W60
	.byte	PEND
@ 023   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 024   ----------------------------------------
mus_theme_of_prontera_2_024:
	.byte		N11   , Cn3 , v060
	.byte	W48
	.byte		N44   , En3 , v060, gtp2
	.byte	W48
	.byte	PEND
@ 025   ----------------------------------------
mus_theme_of_prontera_2_025:
	.byte		N11   , Fn3 , v060
	.byte	W24
	.byte		N68   , Cn3 , v060, gtp2
	.byte	W72
	.byte	PEND
@ 026   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 027   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 028   ----------------------------------------
	.byte		N11   , Dn3 
	.byte	W24
	.byte		N22   
	.byte	W48
	.byte		N22   
	.byte	W24
@ 029   ----------------------------------------
	.byte		N44   , Dn3 , v060, gtp2
	.byte	W96
@ 030   ----------------------------------------
	.byte		N92   , Cn3 , v060, gtp3
	.byte	W96
@ 031   ----------------------------------------
	.byte		N32   , Dn3 , v060, gtp3
	.byte	W36
	.byte		N56   , Gn2 , v060, gtp2
	.byte	W60
@ 032   ----------------------------------------
	.byte		N80   , An2 , v060, gtp3
	.byte	W84
	.byte		N11   
	.byte	W12
@ 033   ----------------------------------------
	.byte		N44   , Cn3 , v060, gtp2
	.byte	W48
	.byte		N23   , Bn2 
	.byte	W24
	.byte		N11   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 034   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 035   ----------------------------------------
	.byte		        En3 , v060, gtp3
	.byte	W96
@ 036   ----------------------------------------
	.byte		        Cn3 , v060, gtp3
	.byte	W96
@ 037   ----------------------------------------
mus_theme_of_prontera_2_037:
	.byte		N44   , Dn3 , v068, gtp3
	.byte	W48
	.byte		        Dn3 , v060, gtp2
	.byte	W48
	.byte	PEND
@ 038   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 039   ----------------------------------------
mus_theme_of_prontera_2_039:
	.byte		N68   , En3 , v060, gtp3
	.byte	W72
	.byte		N11   , Cn4 , v068
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_022
@ 041   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_024
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_025
@ 044   ----------------------------------------
mus_theme_of_prontera_2_044:
	.byte		N32   , Cn3 , v060, gtp3
	.byte	W36
	.byte		TIE   , Gn2 , v068
	.byte	W60
	.byte	PEND
@ 045   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 046   ----------------------------------------
mus_theme_of_prontera_2_046:
	.byte		N44   , Fn3 , v060, gtp2
	.byte	W48
	.byte		        Gn3 , v060, gtp2
	.byte	W48
	.byte	PEND
@ 047   ----------------------------------------
	.byte		        As3 , v060, gtp2
	.byte	W48
	.byte		        Cn4 , v060, gtp2
	.byte	W48
@ 048   ----------------------------------------
	.byte		N11   , An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N56   , Cn4 , v060, gtp2
	.byte	W60
@ 049   ----------------------------------------
	.byte		N92   , Gn3 , v060, gtp3
	.byte	W96
@ 050   ----------------------------------------
	.byte		N56   , Fn3 , v060, gtp3
	.byte	W60
	.byte		N11   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 051   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 052   ----------------------------------------
	.byte		        Fn3 , v060, gtp3
	.byte	W96
@ 053   ----------------------------------------
	.byte		        En3 , v060, gtp3
	.byte	W96
@ 054   ----------------------------------------
	.byte		N32   , En3 , v060, gtp2
	.byte	W36
	.byte		N56   , En3 , v060, gtp2
	.byte	W60
@ 055   ----------------------------------------
	.byte		N44   , En3 , v060, gtp2
	.byte	W48
	.byte		        En3 , v060, gtp2
	.byte	W48
@ 056   ----------------------------------------
	.byte		N56   , Fs3 , v060, gtp3
	.byte	W60
	.byte		N32   , An3 , v060, gtp2
	.byte	W36
@ 057   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 058   ----------------------------------------
	.byte		        En3 , v060, gtp3
	.byte	W96
@ 059   ----------------------------------------
	.byte		        Fs3 , v060, gtp3
	.byte	W96
@ 060   ----------------------------------------
	.byte		        Fs3 , v060, gtp3
	.byte	W96
@ 061   ----------------------------------------
	.byte		        Fs3 , v060, gtp3
	.byte	W96
@ 062   ----------------------------------------
	.byte		N32   , Gs3 , v060, gtp2
	.byte	W36
	.byte		N11   
	.byte	W24
	.byte		N22   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 063   ----------------------------------------
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
@ 064   ----------------------------------------
	.byte		N44   , Cs4 , v060, gtp3
	.byte	W48
	.byte		N11   , En3 
	.byte	W12
	.byte		N32   , Cs4 , v060, gtp2
	.byte	W36
@ 065   ----------------------------------------
mus_theme_of_prontera_2_065:
	.byte		N32   , Cs4 , v060, gtp3
	.byte	W36
	.byte		N56   , An3 , v060, gtp2
	.byte	W60
	.byte	PEND
@ 066   ----------------------------------------
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N56   , Gs3 , v060, gtp2
	.byte	W60
@ 067   ----------------------------------------
	.byte		N23   , Bn3 
	.byte	W24
	.byte		N11   , En3 
	.byte	W12
	.byte		N23   , Gs3 
	.byte	W24
	.byte		N32   , Bn3 , v060, gtp2
	.byte	W36
@ 068   ----------------------------------------
mus_theme_of_prontera_2_068:
	.byte		N11   , An3 , v060
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N56   , An3 , v060, gtp2
	.byte	W60
	.byte	PEND
@ 069   ----------------------------------------
mus_theme_of_prontera_2_069:
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
@ 070   ----------------------------------------
mus_theme_of_prontera_2_070:
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
@ 071   ----------------------------------------
mus_theme_of_prontera_2_071:
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
@ 072   ----------------------------------------
mus_theme_of_prontera_2_072:
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
@ 073   ----------------------------------------
mus_theme_of_prontera_2_073:
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
@ 074   ----------------------------------------
mus_theme_of_prontera_2_074:
	.byte		N11   , Bn3 , v068
	.byte	W12
	.byte		        En3 , v060
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N56   , Bn3 , v060, gtp2
	.byte	W60
	.byte	PEND
@ 075   ----------------------------------------
mus_theme_of_prontera_2_075:
	.byte		N32   , Dn4 , v060, gtp3
	.byte	W36
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N44   , Cs4 , v068, gtp2
	.byte	W48
	.byte	PEND
@ 076   ----------------------------------------
mus_theme_of_prontera_2_076:
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
@ 077   ----------------------------------------
mus_theme_of_prontera_2_077:
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
@ 078   ----------------------------------------
	.byte		N92   , An3 , v060, gtp3
	.byte	W96
@ 079   ----------------------------------------
	.byte		        Bn3 , v060, gtp3
	.byte	W96
@ 080   ----------------------------------------
	.byte		TIE   , An3 
	.byte	W96
@ 081   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 082   ----------------------------------------
	.byte		N92   , En3 , v068, gtp3
	.byte	W96
@ 083   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte	W02
@ 086   ----------------------------------------
	.byte		N17   , Cn3 , v060
	.byte	W17
	.byte		N44   , Fn4 , v060, gtp2
	.byte	W48
	.byte		N30   , Gn4 
	.byte	W30
	.byte	W01
@ 087   ----------------------------------------
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
@ 088   ----------------------------------------
	.byte		N17   , An2 
	.byte	W17
	.byte		N66   , Cn4 
	.byte	W66
	.byte	W01
	.byte		N11   , An2 
	.byte	W12
@ 089   ----------------------------------------
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
@ 090   ----------------------------------------
	.byte		N17   , En3 
	.byte	W17
	.byte		N78   , An3 
	.byte	W78
	.byte	W01
@ 091   ----------------------------------------
	.byte		N17   , En3 
	.byte	W17
	.byte		N78   , Gn4 
	.byte	W78
	.byte	W01
@ 092   ----------------------------------------
	.byte		N92   , Cn3 , v060, gtp3
	.byte	W96
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_037
@ 094   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_039
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_022
@ 097   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_024
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_025
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_044
@ 101   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , Gn2 
	.byte	W01
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_046
@ 103   ----------------------------------------
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
@ 104   ----------------------------------------
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
@ 105   ----------------------------------------
	.byte		N17   , Gn3 
	.byte	W17
	.byte		N78   , Cs4 , v068
	.byte	W78
	.byte	W01
@ 106   ----------------------------------------
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
@ 107   ----------------------------------------
	.byte		N17   , En3 
	.byte	W17
	.byte		N78   , Gs3 , v068
	.byte	W78
	.byte	W01
@ 108   ----------------------------------------
	.byte		N17   , Fn3 , v060
	.byte	W17
	.byte		N78   , An3 , v068
	.byte	W78
	.byte	W01
@ 109   ----------------------------------------
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
@ 110   ----------------------------------------
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
@ 111   ----------------------------------------
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
@ 112   ----------------------------------------
	.byte		N17   , Fs3 , v060
	.byte	W17
	.byte		N42   , Cs4 , v068
	.byte	W42
	.byte	W01
	.byte		N32   , An3 , v060, gtp2
	.byte	W36
@ 113   ----------------------------------------
	.byte		N92   , En3 , v060, gtp3
	.byte	W96
@ 114   ----------------------------------------
	.byte		N17   
	.byte	W17
	.byte		N78   , Bn3 , v068
	.byte	W78
	.byte	W01
@ 115   ----------------------------------------
	.byte		N17   , Fs3 , v060
	.byte	W17
	.byte		N44   , Dn4 , v068, gtp2
	.byte	W48
	.byte		N30   , Cs4 
	.byte	W30
	.byte	W01
@ 116   ----------------------------------------
	.byte		N17   , Fs3 , v060
	.byte	W17
	.byte		N68   , An3 , v068, gtp2
	.byte	W72
	.byte		N06   
	.byte	W07
@ 117   ----------------------------------------
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
@ 118   ----------------------------------------
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
@ 119   ----------------------------------------
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
@ 120   ----------------------------------------
	.byte		N17   , Cs4 
	.byte	W17
	.byte		N30   , En4 , v068
	.byte	W30
	.byte	W01
	.byte		N11   , En3 , v060
	.byte	W12
	.byte		N32   , Cs4 , v060, gtp2
	.byte	W36
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_065
@ 122   ----------------------------------------
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
@ 123   ----------------------------------------
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
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_068
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_069
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_070
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_2_071
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
	.byte		N92   , An3 , v060, gtp3
	.byte	W96
@ 135   ----------------------------------------
	.byte		        Bn3 , v060, gtp3
	.byte	W96
@ 136   ----------------------------------------
	.byte		TIE   , An3 , v068
	.byte	W96
@ 137   ----------------------------------------
	.byte	W96
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
	.byte	W96
@ 140   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		TIE   
	.byte	W48
@ 141   ----------------------------------------
	.byte	W96
@ 142   ----------------------------------------
	.byte	W17
	.byte		EOT   
	.byte		N44   , Fn4 , v060, gtp2
	.byte	W48
	.byte		        Gn4 , v060, gtp2
	.byte	W30
	.byte	W01
@ 143   ----------------------------------------
	.byte	W17
	.byte		N30   , An3 
	.byte	W30
	.byte	W01
	.byte		N17   , Gs3 
	.byte	W17
	.byte		N30   , Bn3 
	.byte	W30
	.byte	W01
@ 144   ----------------------------------------
	.byte		N17   , Gs3 
	.byte	W17
	.byte		N18   , Cn4 
	.byte	W19
	.byte		N56   , Cn3 , v060, gtp2
	.byte	W60
@ 145   ----------------------------------------
	.byte		N17   , Gn3 
	.byte	W17
	.byte		N18   , Bn3 
	.byte	W19
	.byte		N44   , Cn3 , v060, gtp2
	.byte	W48
	.byte		N23   , Gs3 
	.byte	W12
@ 146   ----------------------------------------
	.byte	W12
	.byte		N05   , Cs3 , v056
	.byte	W05
	.byte		N06   , An3 , v060
	.byte	W07
	.byte		N11   , Ds3 , v056
	.byte	W12
	.byte		N56   , Gs3 , v056, gtp2
	.byte	W60
@ 147   ----------------------------------------
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
@ 148   ----------------------------------------
	.byte	W12
	.byte		N11   , As2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N56   , Gn3 , v060, gtp2
	.byte	W60
@ 149   ----------------------------------------
	.byte		N22   , En3 
	.byte	W36
	.byte		N44   , En3 , v060, gtp2
	.byte	W48
	.byte		N32   , Fn3 , v060, gtp3
	.byte	W12
@ 150   ----------------------------------------
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
@ 151   ----------------------------------------
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
@ 152   ----------------------------------------
	.byte	W12
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N56   , Gs3 , v056, gtp3
	.byte	W60
@ 153   ----------------------------------------
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
@ 154   ----------------------------------------
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
@ 155   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N23   , Cs4 
	.byte	W24
	.byte		N32   , Gs3 , v056, gtp2
	.byte	W36
@ 156   ----------------------------------------
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
@ 157   ----------------------------------------
	.byte		N44   , Cs3 , v060, gtp3
	.byte	W48
	.byte		        En3 , v060, gtp2
	.byte	W48
@ 158   ----------------------------------------
	.byte		N23   , Cn3 
	.byte	W24
	.byte		N11   , An2 , v056
	.byte	W12
	.byte		N23   , Cn3 
	.byte	W24
	.byte		N52   , Fn3 , v056, gtp1
	.byte	W36
@ 159   ----------------------------------------
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
@ 160   ----------------------------------------
	.byte		N17   , As3 , v060
	.byte	W17
	.byte		N18   , Cs4 , v068
	.byte	W19
	.byte		N56   , Dn3 , v060, gtp2
	.byte	W60
@ 161   ----------------------------------------
	.byte		N17   , An3 
	.byte	W17
	.byte		N18   , Cs4 , v068
	.byte	W19
	.byte		N44   , Dn3 , v060, gtp2
	.byte	W48
	.byte		N23   , As3 
	.byte	W12
@ 162   ----------------------------------------
	.byte	W12
	.byte		N05   , Ds3 , v056
	.byte	W05
	.byte		N06   , Bn3 , v068
	.byte	W07
	.byte		N11   , Fn3 , v056
	.byte	W12
	.byte		N56   , As3 , v056, gtp2
	.byte	W60
@ 163   ----------------------------------------
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
@ 164   ----------------------------------------
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W05
	.byte		N06   , An3 , v068
	.byte	W07
	.byte		N11   , Fn3 , v060
	.byte	W12
	.byte		N56   , An3 , v060, gtp2
	.byte	W60
@ 165   ----------------------------------------
	.byte	W17
	.byte		N22   , An3 , v068
	.byte	W24
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N22   , An3 
	.byte	W24
	.byte		        En4 
	.byte	W19
@ 166   ----------------------------------------
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
@ 167   ----------------------------------------
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
@ 168   ----------------------------------------
	.byte	W17
	.byte		TIE   , Cs4 
	.byte	W78
	.byte	W01
@ 169   ----------------------------------------
	.byte	W96
@ 170   ----------------------------------------
	.byte	W16
	.byte		EOT   
	.byte	W01
	.byte		N92   , Bn3 , v068, gtp3
	.byte	W78
	.byte	W01
@ 171   ----------------------------------------
	.byte	W17
	.byte		N44   , Dn4 , v068, gtp2
	.byte	W48
	.byte		        Cs4 , v068, gtp2
	.byte	W30
	.byte	W01
@ 172   ----------------------------------------
	.byte	W17
	.byte		N68   , An3 , v068, gtp2
	.byte	W72
	.byte		N11   
	.byte	W07
@ 173   ----------------------------------------
	.byte	W05
	.byte		        Gs3 
	.byte	W12
	.byte		N32   , Fs4 , v068, gtp2
	.byte	W36
	.byte		N22   , Gs3 
	.byte	W24
	.byte		N32   , Fs4 , v068, gtp2
	.byte	W19
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
	.byte	W48
	.byte		TIE   , Gn4 , v108
	.byte	W48
@ 001   ----------------------------------------
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
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W80
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		N11   , Dn4 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N92   , En4 , v108, gtp3
	.byte	W96
@ 005   ----------------------------------------
	.byte		N22   
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W24
	.byte		N32   , Gn4 , v108, gtp2
	.byte	W36
@ 006   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N56   , Cn4 , v108, gtp2
	.byte	W60
@ 007   ----------------------------------------
	.byte		N44   , Cn4 , v108, gtp2
	.byte	W48
	.byte		        Dn4 , v108, gtp2
	.byte	W48
@ 008   ----------------------------------------
	.byte		N92   , Cn4 , v108, gtp3
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W60
	.byte		N04   , Gn4 
	.byte	W04
	.byte		        Cn5 
	.byte	W05
	.byte		        Dn5 
	.byte	W04
	.byte		N06   , Gn4 
	.byte	W23
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
mus_theme_of_prontera_3_012:
	.byte	W48
	.byte		N23   , Gn3 , v100
	.byte	W24
	.byte		N11   , En4 , v116
	.byte	W12
	.byte		N68   , Dn4 , v112, gtp3
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_theme_of_prontera_3_013:
	.byte	W72
	.byte		N11   , Dn4 , v100
	.byte	W12
	.byte		        En4 , v088
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte		N23   , Fn4 , v108
	.byte	W24
	.byte		        En4 , v100
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N12   , Cn4 , v096
	.byte	W24
@ 015   ----------------------------------------
mus_theme_of_prontera_3_015:
	.byte		N44   , Cn4 , v092, gtp3
	.byte	W48
	.byte		N48   , Bn3 , v108
	.byte	W48
	.byte	PEND
@ 016   ----------------------------------------
mus_theme_of_prontera_3_016:
	.byte	W48
	.byte		N11   , En4 , v100
	.byte	W12
	.byte		N32   , Gn4 , v112, gtp3
	.byte	W36
	.byte	PEND
@ 017   ----------------------------------------
mus_theme_of_prontera_3_017:
	.byte		N23   , Gn4 , v116
	.byte	W24
	.byte		N11   , Fn4 , v092
	.byte	W12
	.byte		N23   , En4 , v100
	.byte	W24
	.byte		N32   , Gn4 , v108, gtp3
	.byte	W36
	.byte	PEND
@ 018   ----------------------------------------
mus_theme_of_prontera_3_018:
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
@ 019   ----------------------------------------
	.byte		N44   , Cn4 , v096, gtp3
	.byte	W48
	.byte		N15   , Dn4 , v104
	.byte	W16
	.byte		        Cn3 , v116
	.byte	W16
	.byte		        Dn3 , v100
	.byte	W16
@ 020   ----------------------------------------
	.byte		N44   , Gn2 , v116, gtp3
	.byte	W48
	.byte		N23   , Gn3 , v088
	.byte	W24
	.byte		N11   , An4 , v116
	.byte	W12
	.byte		N80   , Gn4 , v108, gtp3
	.byte	W12
@ 021   ----------------------------------------
mus_theme_of_prontera_3_021:
	.byte	W72
	.byte		N11   , An4 , v112
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
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
@ 023   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 024   ----------------------------------------
	.byte		N24   , Fn4 , v100
	.byte	W48
	.byte		N44   , En4 , v088, gtp3
	.byte	W48
@ 025   ----------------------------------------
	.byte		N23   , Cn4 , v108
	.byte	W24
	.byte		        An3 , v100
	.byte	W24
	.byte		N17   , Cn4 , v112
	.byte	W24
	.byte		TIE   , Cn4 , v100
	.byte	W24
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_012
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_013
@ 032   ----------------------------------------
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
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_015
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_016
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_017
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_018
@ 037   ----------------------------------------
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
@ 038   ----------------------------------------
	.byte		N44   , Gn3 , v116, gtp3
	.byte	W48
	.byte		N23   , An4 , v108
	.byte	W24
	.byte		N11   , An4 , v116
	.byte	W12
	.byte		N80   , Gn4 , v108, gtp3
	.byte	W12
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_021
@ 040   ----------------------------------------
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
@ 041   ----------------------------------------
	.byte	W72
	.byte		N11   , Cn4 , v100
	.byte	W12
	.byte		        Cn4 , v092
	.byte	W12
@ 042   ----------------------------------------
	.byte		N24   , Fn4 , v100
	.byte	W48
	.byte		N44   , Gn4 , v108, gtp3
	.byte	W48
@ 043   ----------------------------------------
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
@ 044   ----------------------------------------
	.byte		        Cn3 , v108
	.byte	W24
	.byte		TIE   , Cn4 , v116
	.byte	W72
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W01
	.byte		EOT   
	.byte	W92
	.byte	W03
@ 047   ----------------------------------------
mus_theme_of_prontera_3_047:
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
@ 048   ----------------------------------------
	.byte	W48
	.byte		N01   , Gn3 , v080
	.byte	W01
	.byte		N22   , An3 , v116
	.byte	W23
	.byte		N05   , En3 , v100
	.byte	W12
	.byte		N80   , Gn3 , v108, gtp2
	.byte	W12
@ 049   ----------------------------------------
	.byte	W72
	.byte		N11   , Fn3 , v112
	.byte	W12
	.byte		N10   , En3 , v100
	.byte	W12
@ 050   ----------------------------------------
	.byte		N23   , Fn3 , v108
	.byte	W24
	.byte		N21   , En3 , v100
	.byte	W24
	.byte		N23   , Fn3 , v108
	.byte	W24
	.byte		N22   , Gn3 , v116
	.byte	W24
@ 051   ----------------------------------------
	.byte		N32   , Fn3 , v112, gtp2
	.byte	W36
	.byte		N11   , En3 , v104
	.byte	W12
	.byte		N44   , En3 , v108, gtp3
	.byte	W48
@ 052   ----------------------------------------
	.byte		        An4 , v108, gtp3
	.byte	W48
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N23   , Fn3 , v116
	.byte	W24
	.byte		N32   , Fn3 , v116, gtp3
	.byte	W12
@ 053   ----------------------------------------
	.byte	W24
	.byte		N11   , En3 , v108
	.byte	W12
	.byte		N23   , Dn3 , v112
	.byte	W24
	.byte		        Gs4 , v108
	.byte	W24
	.byte		N92   , En4 , v108, gtp3
	.byte	W12
@ 054   ----------------------------------------
	.byte	W84
	.byte		N11   , Cs3 , v112
	.byte	W12
@ 055   ----------------------------------------
	.byte		N44   , Dn3 , v116, gtp2
	.byte	W48
	.byte		N01   , Ds3 , v108
	.byte	W01
	.byte		N44   , En3 , v120, gtp2
	.byte	W44
	.byte	W03
@ 056   ----------------------------------------
	.byte	W48
	.byte		N02   , Fn3 , v108
	.byte	W03
	.byte		N20   , Fs3 , v116
	.byte	W21
	.byte		N11   , An3 
	.byte	W12
	.byte		N84   , Gs3 
	.byte	W12
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N48   , Bn3 , v108, gtp2
	.byte	W24
@ 059   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte		N68   , An3 , v116
	.byte	W68
	.byte	W01
@ 060   ----------------------------------------
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
@ 061   ----------------------------------------
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
@ 062   ----------------------------------------
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
@ 063   ----------------------------------------
mus_theme_of_prontera_3_063:
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
@ 064   ----------------------------------------
	.byte	W48
	.byte		N09   , Cs4 , v112
	.byte	W12
	.byte		N11   , Cs4 , v108
	.byte	W12
	.byte		N09   , Cs4 , v116
	.byte	W12
	.byte		N09   
	.byte	W12
@ 065   ----------------------------------------
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
@ 066   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 067   ----------------------------------------
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
@ 068   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 069   ----------------------------------------
mus_theme_of_prontera_3_069:
	.byte		N32   , An4 , v108, gtp3
	.byte	W36
	.byte		N23   
	.byte	W24
	.byte		N22   , En4 
	.byte	W24
	.byte		TIE   , Dn4 
	.byte	W12
	.byte	PEND
@ 070   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 071   ----------------------------------------
mus_theme_of_prontera_3_071:
	.byte		N22   , An4 , v108
	.byte	W24
	.byte		N11   , Gs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W24
	.byte		N32   , En4 , v108, gtp2
	.byte	W36
	.byte	PEND
@ 072   ----------------------------------------
	.byte		N92   , Cs4 , v108, gtp3
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
mus_theme_of_prontera_3_076:
	.byte	W72
	.byte		N11   , An4 , v108
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte	PEND
@ 077   ----------------------------------------
	.byte		N92   , Fs4 , v108, gtp3
	.byte	W96
@ 078   ----------------------------------------
	.byte		N44   , Dn4 , v108, gtp2
	.byte	W60
	.byte		N32   , Dn4 , v108, gtp2
	.byte	W36
@ 079   ----------------------------------------
	.byte		N44   , En4 , v108, gtp2
	.byte	W48
	.byte		        En4 , v108, gtp2
	.byte	W48
@ 080   ----------------------------------------
	.byte		N80   , An3 , v092, gtp3
	.byte	W84
	.byte		N23   
	.byte	W12
@ 081   ----------------------------------------
	.byte	W12
	.byte		N22   , Cs4 
	.byte	W24
	.byte		TIE   , En4 
	.byte	W60
@ 082   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
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
mus_theme_of_prontera_3_088:
	.byte	W64
	.byte		N15   , Gn4 , v092
	.byte	W16
	.byte		N16   , Fn4 
	.byte	W16
	.byte	PEND
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_088
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	W48
	.byte		N23   , An4 , v108
	.byte	W24
	.byte		N06   , En4 , v116
	.byte	W12
	.byte		N80   , Gn4 , v112, gtp3
	.byte	W12
@ 095   ----------------------------------------
	.byte	W72
	.byte		N06   , An4 
	.byte	W12
	.byte		N32   , Bn4 , v116, gtp3
	.byte	W12
@ 096   ----------------------------------------
	.byte	W24
	.byte		N11   , Cn5 , v120
	.byte	W12
	.byte		N12   , An4 , v116
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		N72   , Gn4 , v116, gtp3
	.byte	W12
@ 097   ----------------------------------------
	.byte	W64
	.byte		N15   , Fn4 , v104
	.byte	W16
	.byte		        En4 , v100
	.byte	W16
@ 098   ----------------------------------------
	.byte		N24   , Fn4 , v116
	.byte	W48
	.byte		N44   , Gn4 , v112, gtp2
	.byte	W48
@ 099   ----------------------------------------
	.byte		N01   , Gs4 , v100
	.byte	W02
	.byte		N07   , An4 , v116
	.byte	W22
	.byte		N44   , Cn4 , v112, gtp2
	.byte	W48
	.byte		        Dn4 , v116, gtp2
	.byte	W24
@ 100   ----------------------------------------
	.byte	W24
	.byte		TIE   , En4 , v120
	.byte	W72
@ 101   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_047
@ 104   ----------------------------------------
	.byte	W72
	.byte		N11   , En4 , v116
	.byte	W12
	.byte		N12   , Gn4 , v108
	.byte	W12
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
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_063
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
	.byte	PATT
	 .word	mus_theme_of_prontera_3_069
@ 126   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , Dn4 
	.byte	W01
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_071
@ 128   ----------------------------------------
	.byte		N92   , Cs4 , v108, gtp3
	.byte	W96
@ 129   ----------------------------------------
	.byte	W96
@ 130   ----------------------------------------
	.byte	W96
@ 131   ----------------------------------------
	.byte	W96
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_3_076
@ 133   ----------------------------------------
	.byte		N92   , Fs4 , v108, gtp3
	.byte	W96
@ 134   ----------------------------------------
	.byte	W96
@ 135   ----------------------------------------
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
@ 136   ----------------------------------------
	.byte	W96
@ 137   ----------------------------------------
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
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
	.byte	W96
@ 140   ----------------------------------------
	.byte	W96
@ 141   ----------------------------------------
	.byte	W96
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
@ 151   ----------------------------------------
	.byte	W96
@ 152   ----------------------------------------
	.byte		N92   , Cs4 , v072, gtp3
	.byte	W96
@ 153   ----------------------------------------
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
	.byte	W06
	.byte		N23   , Fs3 , v112
	.byte	W24
	.byte		N11   , An3 , v116
	.byte	W12
	.byte		N10   , Bn3 
	.byte	W24
	.byte		N80   , Gs3 , v112, gtp2
	.byte	W30
@ 177   ----------------------------------------
	.byte	W54
	.byte		N23   , Gs3 , v108
	.byte	W24
	.byte		        An3 , v112
	.byte	W18
@ 178   ----------------------------------------
	.byte	W06
	.byte		N10   , Bn3 , v116
	.byte	W24
	.byte		N44   , Bn3 , v116, gtp3
	.byte	W48
	.byte		N11   , An3 , v108
	.byte	W12
	.byte		N56   , Cs4 , v116, gtp2
	.byte	W06
@ 179   ----------------------------------------
	.byte	W54
	.byte		N17   , Dn3 , v120
	.byte	W36
	.byte		N32   , Dn4 , v116, gtp3
	.byte	W06
@ 180   ----------------------------------------
	.byte	W30
	.byte		N06   , Cs4 , v104
	.byte	W12
	.byte		N32   , Dn4 , v116, gtp2
	.byte	W36
	.byte		N06   , Cs4 , v104
	.byte	W12
	.byte		N44   , An3 , v112, gtp3
	.byte	W06
@ 181   ----------------------------------------
	.byte	W42
	.byte		N80   , Bn3 , v116, gtp3
	.byte	W54
@ 182   ----------------------------------------
	.byte	W30
	.byte		N11   , An3 , v104
	.byte	W12
	.byte		N23   , En4 , v116
	.byte	W24
	.byte		N10   , Dn4 
	.byte	W24
	.byte		        Cs4 , v108
	.byte	W06
@ 183   ----------------------------------------
	.byte	W18
	.byte		        Dn4 , v116
	.byte	W24
	.byte		N56   , En4 , v120, gtp2
	.byte	W54
@ 184   ----------------------------------------
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
@ 185   ----------------------------------------
	.byte	W18
	.byte		N19   , Bn3 , v112
	.byte	W24
	.byte		TIE   , Bn3 , v120
	.byte	W54
@ 186   ----------------------------------------
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
@ 187   ----------------------------------------
	.byte	W18
	.byte		        Bn3 , v116
	.byte	W24
	.byte		N92   , An3 , v112, gtp3
	.byte	W54
@ 188   ----------------------------------------
	.byte	W42
	.byte		N32   , An3 , v108, gtp3
	.byte	W36
	.byte		N11   , Gs3 , v104
	.byte	W12
	.byte		N23   , An3 , v108
	.byte	W06
@ 189   ----------------------------------------
	.byte	W18
	.byte		N22   , En3 , v116
	.byte	W24
	.byte		N92   , Fs3 , v116, gtp3
	.byte	W54
@ 190   ----------------------------------------
	.byte	W42
	.byte		N09   , Dn3 , v104
	.byte	W12
	.byte		N23   , An3 , v116
	.byte	W24
	.byte		N09   , Gs3 , v112
	.byte	W12
	.byte		N23   , Fs3 
	.byte	W06
@ 191   ----------------------------------------
	.byte	W18
	.byte		N32   , En3 , v116, gtp2
	.byte	W78
@ 192   ----------------------------------------
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
@ 193   ----------------------------------------
	.byte	W18
	.byte		        Cs4 , v112
	.byte	W24
	.byte		TIE   , Bn3 , v116
	.byte	W54
@ 194   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		N32   , Dn4 , v116, gtp2
	.byte	W36
	.byte		        Cs4 , v108, gtp2
	.byte	W06
@ 195   ----------------------------------------
	.byte	W30
	.byte		N11   , Gs4 , v116
	.byte	W12
	.byte		N68   , An4 , v120, gtp3
	.byte	W54
@ 196   ----------------------------------------
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
@ 197   ----------------------------------------
	.byte	W18
	.byte		        An3 , v116
	.byte	W24
	.byte		N07   , Bn3 , v100
	.byte	W12
	.byte		N80   , Cs4 , v108, gtp3
	.byte	W42
@ 198   ----------------------------------------
	.byte	W42
	.byte		N05   , Dn4 , v092
	.byte	W06
	.byte		        Cs4 , v088
	.byte	W06
	.byte		N92   , Bn3 , v100, gtp3
	.byte	W42
@ 199   ----------------------------------------
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
	.byte		N01   , Cn1 , v092
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
@ 001   ----------------------------------------
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
@ 002   ----------------------------------------
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
@ 003   ----------------------------------------
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
@ 004   ----------------------------------------
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
@ 005   ----------------------------------------
mus_theme_of_prontera_4_005:
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
@ 006   ----------------------------------------
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
@ 007   ----------------------------------------
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
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_005
@ 009   ----------------------------------------
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
@ 010   ----------------------------------------
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
@ 011   ----------------------------------------
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
	.byte	W48
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 , v056
	.byte		N01   , Gs4 , v068
	.byte	W12
	.byte		        Fs1 , v056
	.byte		N01   , An4 
	.byte	W24
@ 028   ----------------------------------------
	.byte		        Fs1 
	.byte	W24
	.byte		N01   
	.byte	W48
	.byte		N01   
	.byte	W24
@ 029   ----------------------------------------
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
@ 030   ----------------------------------------
mus_theme_of_prontera_4_030:
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
@ 031   ----------------------------------------
mus_theme_of_prontera_4_031:
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
@ 032   ----------------------------------------
mus_theme_of_prontera_4_032:
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
@ 033   ----------------------------------------
mus_theme_of_prontera_4_033:
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
@ 034   ----------------------------------------
mus_theme_of_prontera_4_034:
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
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_031
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_032
@ 037   ----------------------------------------
mus_theme_of_prontera_4_037:
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
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_034
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_031
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_032
@ 041   ----------------------------------------
mus_theme_of_prontera_4_041:
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
@ 042   ----------------------------------------
mus_theme_of_prontera_4_042:
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
@ 043   ----------------------------------------
mus_theme_of_prontera_4_043:
	.byte		N01   , Cn1 , v092
	.byte	W24
	.byte		N01   
	.byte		N01   , Fs1 
	.byte	W72
	.byte	PEND
@ 044   ----------------------------------------
mus_theme_of_prontera_4_044:
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
@ 045   ----------------------------------------
mus_theme_of_prontera_4_045:
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
@ 046   ----------------------------------------
mus_theme_of_prontera_4_046:
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
@ 047   ----------------------------------------
mus_theme_of_prontera_4_047:
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
@ 048   ----------------------------------------
mus_theme_of_prontera_4_048:
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
@ 049   ----------------------------------------
mus_theme_of_prontera_4_049:
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
@ 050   ----------------------------------------
mus_theme_of_prontera_4_050:
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
@ 051   ----------------------------------------
mus_theme_of_prontera_4_051:
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
@ 052   ----------------------------------------
mus_theme_of_prontera_4_052:
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
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_049
@ 054   ----------------------------------------
mus_theme_of_prontera_4_054:
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
@ 055   ----------------------------------------
mus_theme_of_prontera_4_055:
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
@ 056   ----------------------------------------
mus_theme_of_prontera_4_056:
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
@ 057   ----------------------------------------
mus_theme_of_prontera_4_057:
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
@ 058   ----------------------------------------
mus_theme_of_prontera_4_058:
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
@ 059   ----------------------------------------
mus_theme_of_prontera_4_059:
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
@ 060   ----------------------------------------
mus_theme_of_prontera_4_060:
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
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_049
@ 062   ----------------------------------------
mus_theme_of_prontera_4_062:
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
@ 063   ----------------------------------------
mus_theme_of_prontera_4_063:
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
@ 064   ----------------------------------------
mus_theme_of_prontera_4_064:
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
@ 065   ----------------------------------------
mus_theme_of_prontera_4_065:
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
@ 066   ----------------------------------------
mus_theme_of_prontera_4_066:
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
@ 067   ----------------------------------------
mus_theme_of_prontera_4_067:
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
@ 068   ----------------------------------------
mus_theme_of_prontera_4_068:
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
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_065
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
@ 071   ----------------------------------------
mus_theme_of_prontera_4_071:
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
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_064
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_065
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_066
@ 075   ----------------------------------------
mus_theme_of_prontera_4_075:
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
@ 076   ----------------------------------------
mus_theme_of_prontera_4_076:
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
@ 077   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W48
	.byte		        En1 
	.byte	W36
	.byte		        Fs1 
	.byte	W12
@ 078   ----------------------------------------
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
@ 079   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W72
@ 080   ----------------------------------------
	.byte		        Cn1 
	.byte	W48
	.byte		        En1 
	.byte	W36
	.byte		        Cn1 
	.byte	W12
@ 081   ----------------------------------------
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        En1 
	.byte	W60
@ 082   ----------------------------------------
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
@ 083   ----------------------------------------
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
@ 084   ----------------------------------------
	.byte		N01   
	.byte	W36
	.byte		        En1 
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte		N01   
	.byte	W24
@ 085   ----------------------------------------
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
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_030
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_031
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_032
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_033
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_034
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_031
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_032
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_037
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_034
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_031
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_032
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_041
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_042
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_043
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_044
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
	 .word	mus_theme_of_prontera_4_049
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
	 .word	mus_theme_of_prontera_4_057
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
	 .word	mus_theme_of_prontera_4_049
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
	 .word	mus_theme_of_prontera_4_065
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
	 .word	mus_theme_of_prontera_4_065
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_070
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_071
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_064
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_065
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_066
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_075
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_076
@ 133   ----------------------------------------
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
@ 134   ----------------------------------------
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
@ 135   ----------------------------------------
	.byte		N01   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N01   
	.byte	W72
@ 136   ----------------------------------------
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
@ 137   ----------------------------------------
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N01   
	.byte	W24
	.byte		        En1 
	.byte	W48
@ 138   ----------------------------------------
mus_theme_of_prontera_4_138:
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
@ 139   ----------------------------------------
mus_theme_of_prontera_4_139:
	.byte		N01   , Fs1 , v092
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W24
	.byte		        En1 
	.byte	W48
	.byte	PEND
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_138
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_139
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W48
	.byte		N01   , Cn1 , v092
	.byte	W48
@ 144   ----------------------------------------
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
@ 145   ----------------------------------------
mus_theme_of_prontera_4_145:
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
@ 146   ----------------------------------------
mus_theme_of_prontera_4_146:
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
@ 147   ----------------------------------------
mus_theme_of_prontera_4_147:
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
@ 148   ----------------------------------------
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
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte	PEND
@ 150   ----------------------------------------
mus_theme_of_prontera_4_150:
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
@ 151   ----------------------------------------
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
@ 152   ----------------------------------------
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
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_149
@ 154   ----------------------------------------
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
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_147
@ 156   ----------------------------------------
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
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_149
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_150
@ 159   ----------------------------------------
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
@ 160   ----------------------------------------
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
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_145
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_146
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_prontera_4_147
@ 164   ----------------------------------------
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
