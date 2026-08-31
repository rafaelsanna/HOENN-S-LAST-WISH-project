	.include "MPlayDef.s"

	.equ	mus_comfortably_numb_grp, voicegroup_hlw_classic_rock
	.equ	mus_comfortably_numb_pri, 0
	.equ	mus_comfortably_numb_rev, reverb_set+35
	.equ	mus_comfortably_numb_mvl, 96
	.equ	mus_comfortably_numb_key, 0
	.equ	mus_comfortably_numb_tbs, 1
	.equ	mus_comfortably_numb_exg, 1
	.equ	mus_comfortably_numb_cmp, 1

	.section .rodata
	.global	mus_comfortably_numb
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_comfortably_numb_1:
	.byte		VOL   , 127*mus_comfortably_numb_mvl/mxv
	.byte	KEYSH , mus_comfortably_numb_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 128*mus_comfortably_numb_tbs/2
	.byte		VOICE , 1
	.byte		        33
	.byte		N90   , Bn0 , v108, gtp1
	.byte	W92
	.byte	W03
	.byte		N92   , Bn0 , v096, gtp3
	.byte	W01
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		N90   , Bn0 , v088, gtp1
	.byte	W92
	.byte	W03
	.byte		N84   , Bn0 , v100, gtp1
	.byte	W01
@ 003   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		        Bn0 , v100, gtp3
	.byte	W01
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W02
	.byte		N92   , Bn0 , v104, gtp3
	.byte	W92
	.byte	W02
@ 006   ----------------------------------------
	.byte	W01
	.byte		N84   , An0 , v104, gtp3
	.byte	W92
	.byte	W03
@ 007   ----------------------------------------
	.byte		N92   , An0 , v100, gtp3
	.byte	W92
	.byte	W03
	.byte		N72   , Gn1 , v104, gtp1
	.byte	W01
@ 008   ----------------------------------------
	.byte	W72
	.byte	W01
	.byte		N22   , Fs0 , v108
	.byte	W23
@ 009   ----------------------------------------
	.byte	W01
	.byte		N92   , En0 , v092, gtp1
	.byte	W92
	.byte	W03
@ 010   ----------------------------------------
	.byte		N84   , Bn0 , v100, gtp3
	.byte	W92
	.byte	W03
	.byte		N90   
	.byte	W01
@ 011   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N88   
	.byte	W01
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W01
	.byte		N92   , Bn0 , v108, gtp3
	.byte	W92
	.byte	W03
@ 014   ----------------------------------------
	.byte		N90   , An0 , v104
	.byte	W96
@ 015   ----------------------------------------
	.byte		N92   , An0 , v100, gtp2
	.byte	W92
	.byte	W03
	.byte		N72   , Gn1 , v108, gtp3
	.byte	W01
@ 016   ----------------------------------------
	.byte	W72
	.byte	W01
	.byte		N23   , Fs0 
	.byte	W23
@ 017   ----------------------------------------
	.byte		N96   , En0 
	.byte	W96
@ 018   ----------------------------------------
	.byte		N88   , Bn0 , v104
	.byte	W96
@ 019   ----------------------------------------
	.byte		        Bn0 , v100, gtp1
	.byte	W96
@ 020   ----------------------------------------
	.byte		N90   , Bn0 , v100, gtp1
	.byte	W92
	.byte	W03
	.byte		N96   , Bn0 , v092
	.byte	W01
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte		N88   , An0 , v104
	.byte	W96
@ 023   ----------------------------------------
	.byte	W01
	.byte		N92   , An0 , v104, gtp3
	.byte	W92
	.byte	W03
@ 024   ----------------------------------------
	.byte		N68   , Gn1 , v108, gtp3
	.byte	W02
	.byte		N01   , An0 , v056
	.byte	W68
	.byte	W02
	.byte		N22   , Fs0 , v108
	.byte	W24
@ 025   ----------------------------------------
	.byte		N92   , En0 , v096
	.byte	W92
	.byte	W03
	.byte		N90   , Bn0 , v108, gtp1
	.byte	W01
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte		N92   , Bn0 , v100, gtp2
	.byte	W96
@ 028   ----------------------------------------
	.byte		N84   , Dn1 , v108, gtp2
	.byte	W96
@ 029   ----------------------------------------
	.byte	W02
	.byte		N92   
	.byte	W92
	.byte	W02
@ 030   ----------------------------------------
	.byte		N88   , An0 , v104, gtp1
	.byte	W96
@ 031   ----------------------------------------
	.byte	W02
	.byte		N05   , An0 , v100
	.byte	W23
	.byte		N68   , An0 , v104, gtp2
	.byte	W68
	.byte	W03
@ 032   ----------------------------------------
	.byte		N84   , Dn1 , v108, gtp3
	.byte	W96
@ 033   ----------------------------------------
	.byte	W01
	.byte		N92   , Dn1 , v108, gtp2
	.byte	W92
	.byte	W03
@ 034   ----------------------------------------
	.byte		N80   , An0 , v104, gtp3
	.byte	W96
@ 035   ----------------------------------------
	.byte		N05   
	.byte	W24
	.byte	W01
	.byte		N32   , An0 , v108, gtp3
	.byte	W36
	.byte		N30   , Bn0 , v104, gtp1
	.byte	W32
	.byte	W02
	.byte		N84   , Cn1 , v104, gtp3
	.byte	W01
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W01
	.byte		N92   , Cn1 , v108
	.byte	W92
	.byte	W03
@ 038   ----------------------------------------
	.byte		N88   , Gn1 , v108, gtp1
	.byte	W96
@ 039   ----------------------------------------
	.byte	W01
	.byte		N06   , Gn1 , v104
	.byte	W24
	.byte	W01
	.byte		N36   
	.byte	W32
	.byte	W03
	.byte		N32   , Bn0 
	.byte	W32
	.byte	W03
@ 040   ----------------------------------------
	.byte	W01
	.byte		N88   , Cn1 , v100, gtp1
	.byte	W92
	.byte	W03
@ 041   ----------------------------------------
	.byte		N92   , Cn1 , v108, gtp3
	.byte	W96
@ 042   ----------------------------------------
	.byte		N90   , Gn1 , v104
	.byte	W96
@ 043   ----------------------------------------
	.byte	W02
	.byte		N07   , Gn1 , v096
	.byte	W24
	.byte		N68   , Gn1 , v104, gtp1
	.byte	W68
	.byte	W01
	.byte		N88   , Dn1 , v104, gtp1
	.byte	W01
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 046   ----------------------------------------
	.byte	W02
	.byte		N84   , An0 , v104, gtp3
	.byte	W92
	.byte	W02
@ 047   ----------------------------------------
	.byte		N08   , An0 , v100
	.byte	W24
	.byte		N68   , An0 , v104, gtp3
	.byte	W68
	.byte	W03
	.byte		N88   , Dn1 
	.byte	W01
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte		N92   , Dn1 , v108, gtp3
	.byte	W96
@ 050   ----------------------------------------
	.byte		N84   , An0 , v100
	.byte	W96
@ 051   ----------------------------------------
	.byte	W01
	.byte		N06   
	.byte	W24
	.byte		N36   
	.byte	W36
	.byte	W01
	.byte		N30   , Bn0 , v108, gtp1
	.byte	W32
	.byte	W02
@ 052   ----------------------------------------
	.byte		N84   , Cn1 , v100, gtp3
	.byte	W92
	.byte	W03
	.byte		TIE   , Cn1 , v108
	.byte	W01
@ 053   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 054   ----------------------------------------
	.byte		N84   , Gn0 , v100, gtp2
	.byte	W96
@ 055   ----------------------------------------
	.byte		N92   , Gn0 , v108, gtp2
	.byte	W96
@ 056   ----------------------------------------
	.byte		N90   , Cn1 
	.byte	W96
@ 057   ----------------------------------------
	.byte		N92   , Cn1 , v108, gtp2
	.byte	W96
@ 058   ----------------------------------------
	.byte		N84   , Gn0 , v108, gtp3
	.byte	W96
@ 059   ----------------------------------------
	.byte		N10   
	.byte	W12
	.byte		N56   , Gn0 , v104, gtp2
	.byte	W84
@ 060   ----------------------------------------
	.byte		N44   , An0 
	.byte	W48
	.byte		        An0 , v104, gtp1
	.byte	W48
@ 061   ----------------------------------------
	.byte	W01
	.byte		N56   , An0 , v104, gtp2
	.byte	W56
	.byte	W03
	.byte		N32   , Bn0 , v108, gtp1
	.byte	W32
	.byte	W03
	.byte		TIE   , Cn1 
	.byte	W01
@ 062   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 063   ----------------------------------------
	.byte		N90   , Gn0 
	.byte	W92
	.byte	W02
	.byte		N88   , Dn1 
	.byte	W02
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte		N11   
	.byte	W23
	.byte		N72   , Dn1 , v108, gtp1
	.byte	W72
	.byte	W01
@ 066   ----------------------------------------
	.byte	W01
	.byte		N84   , Dn1 , v108, gtp3
	.byte	W92
	.byte	W03
@ 067   ----------------------------------------
	.byte		N10   
	.byte	W24
	.byte		N68   , Dn1 , v108, gtp3
	.byte	W72
@ 068   ----------------------------------------
	.byte		N88   , An0 , v104, gtp1
	.byte	W96
@ 069   ----------------------------------------
	.byte	W01
	.byte		N01   , An0 , v108
	.byte	W23
	.byte		N72   
	.byte	W72
@ 070   ----------------------------------------
	.byte	W01
	.byte		N80   , Dn1 , v108, gtp1
	.byte	W92
	.byte	W02
	.byte		N12   , Dn1 , v104
	.byte	W01
@ 071   ----------------------------------------
	.byte	W22
	.byte		N72   , Dn1 , v108
	.byte	W72
	.byte	W02
@ 072   ----------------------------------------
	.byte		N88   , An0 , v104
	.byte	W96
@ 073   ----------------------------------------
	.byte		N60   , An0 , v108
	.byte	W60
	.byte	W01
	.byte		N32   , Bn0 , v104, gtp1
	.byte	W32
	.byte	W03
@ 074   ----------------------------------------
	.byte		N88   , Cn1 , v108
	.byte	W96
@ 075   ----------------------------------------
mus_comfortably_numb_1_075:
	.byte	W01
	.byte		N92   , Cn1 , v108, gtp3
	.byte	W92
	.byte	W03
	.byte	PEND
@ 076   ----------------------------------------
	.byte		TIE   , Gn1 
	.byte	W96
@ 077   ----------------------------------------
	.byte	W19
	.byte		EOT   
	.byte	W05
	.byte		N68   , Gn1 , v100, gtp3
	.byte	W72
@ 078   ----------------------------------------
	.byte	W01
	.byte		N88   , Cn1 , v108, gtp1
	.byte	W92
	.byte	W03
@ 079   ----------------------------------------
	.byte		N07   
	.byte	W24
	.byte	W02
	.byte		N66   
	.byte	W68
	.byte		N84   , Gn1 , v108, gtp3
	.byte	W02
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W01
	.byte		N08   
	.byte	W23
	.byte		N68   , Gn1 , v108, gtp3
	.byte	W72
@ 082   ----------------------------------------
	.byte	W01
	.byte		N84   , An0 , v104, gtp1
	.byte	W32
	.byte	W02
	.byte		N04   , Dn1 , v012
	.byte		N03   , En1 , v008
	.byte	W60
	.byte	W01
@ 083   ----------------------------------------
	.byte		N15   , An0 , v100
	.byte	W24
	.byte		N36   , An0 , v100, gtp3
	.byte	W36
	.byte	W03
	.byte		N32   , Bn0 , v104
	.byte	W32
	.byte	W01
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_1_075
@ 085   ----------------------------------------
	.byte		N96   , Gn1 , v108
	.byte	W96
@ 086   ----------------------------------------
	.byte	W01
	.byte		N80   , Dn1 , v108, gtp2
	.byte	W92
	.byte	W03
@ 087   ----------------------------------------
	.byte	W01
	.byte		N11   
	.byte	W23
	.byte		N68   , Dn1 , v108, gtp2
	.byte	W72
@ 088   ----------------------------------------
	.byte	W01
	.byte		N84   , Bn0 , v108, gtp2
	.byte	W92
	.byte	W03
@ 089   ----------------------------------------
	.byte	W01
	.byte		N06   , Bn0 , v100
	.byte	W22
	.byte		N72   , Bn0 , v104, gtp1
	.byte	W72
	.byte	W01
@ 090   ----------------------------------------
	.byte	W01
	.byte		N88   , An0 , v100, gtp1
	.byte	W92
	.byte	W03
@ 091   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 092   ----------------------------------------
	.byte		N72   , Gn1 , v108, gtp1
	.byte	W72
	.byte		N23   , Fs0 
	.byte	W24
@ 093   ----------------------------------------
	.byte	W01
	.byte		N92   , En0 , v108, gtp2
	.byte	W92
	.byte	W03
@ 094   ----------------------------------------
	.byte		N90   , Bn0 
	.byte	W96
@ 095   ----------------------------------------
	.byte	W03
	.byte		N84   , Bn0 , v108, gtp2
	.byte	W92
	.byte		N88   , Bn0 , v104, gtp1
	.byte	W01
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 098   ----------------------------------------
	.byte		N88   , An0 , v096, gtp1
	.byte	W02
	.byte		EOT   , Bn0 
	.byte	W92
	.byte	W02
@ 099   ----------------------------------------
	.byte	W02
	.byte		N92   , An0 , v104, gtp1
	.byte	W92
	.byte	W01
	.byte		N72   , Gn1 , v092, gtp3
	.byte	W01
@ 100   ----------------------------------------
	.byte	W72
	.byte	W01
	.byte		N22   , Fs0 , v108
	.byte	W08
	.byte		N14   , Gn1 , v028
	.byte	W14
	.byte		N96   , En0 , v100
	.byte	W01
@ 101   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N90   , Bn0 , v100, gtp1
	.byte	W01
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte		N11   , Bn0 , v084
	.byte	W24
	.byte		N72   , Bn0 , v104
	.byte	W72
@ 104   ----------------------------------------
	.byte	W01
	.byte		N88   , Dn1 , v108
	.byte	W92
	.byte	W03
@ 105   ----------------------------------------
	.byte		N92   , Dn1 , v108, gtp3
	.byte	W96
@ 106   ----------------------------------------
	.byte		N90   , An0 
	.byte	W96
@ 107   ----------------------------------------
	.byte		N08   , An0 , v096
	.byte	W24
	.byte		N68   , An0 , v104, gtp3
	.byte	W72
@ 108   ----------------------------------------
	.byte		N84   , Dn1 , v108, gtp2
	.byte	W96
@ 109   ----------------------------------------
	.byte		N96   , Dn1 , v104
	.byte	W96
@ 110   ----------------------------------------
	.byte	W01
	.byte		N88   , An0 , v108, gtp1
	.byte	W92
	.byte	W03
@ 111   ----------------------------------------
	.byte	W01
	.byte		N13   , An0 , v092
	.byte	W23
	.byte		N36   
	.byte	W36
	.byte	W01
	.byte		N32   , Bn0 , v108, gtp2
	.byte	W32
	.byte	W03
@ 112   ----------------------------------------
	.byte		N84   , Cn1 , v108, gtp3
	.byte	W92
	.byte	W03
	.byte		TIE   
	.byte	W01
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte	W01
	.byte		EOT   
	.byte		N84   , Gn1 , v108, gtp3
	.byte	W92
	.byte	W03
@ 115   ----------------------------------------
	.byte		N92   , Gn1 , v096, gtp3
	.byte	W96
@ 116   ----------------------------------------
	.byte		N90   , Cn1 , v108
	.byte	W96
@ 117   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 118   ----------------------------------------
	.byte	W01
	.byte		EOT   
	.byte		N90   , Gn1 
	.byte	W92
	.byte	W03
@ 119   ----------------------------------------
	.byte		N13   , Gn1 , v100
	.byte	W23
	.byte		N72   , Gn1 , v108
	.byte	W72
	.byte	W01
@ 120   ----------------------------------------
	.byte		N84   , Dn1 , v104, gtp3
	.byte	W92
	.byte	W02
	.byte		N96   
	.byte	W02
@ 121   ----------------------------------------
	.byte	W96
@ 122   ----------------------------------------
	.byte		N92   , An0 
	.byte	W96
@ 123   ----------------------------------------
	.byte	W03
	.byte		N07   , An0 , v088
	.byte	W24
	.byte		N68   , An0 , v104, gtp2
	.byte	W68
	.byte	W01
@ 124   ----------------------------------------
	.byte	W01
	.byte		N84   , Dn1 , v104, gtp1
	.byte	W92
	.byte	W03
@ 125   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 126   ----------------------------------------
	.byte		N84   , An0 , v104, gtp1
	.byte	W96
@ 127   ----------------------------------------
	.byte	W01
	.byte		N10   , An0 , v100
	.byte	W02
	.byte		N01   , Gs0 , v040
	.byte	W23
	.byte		N32   , An0 , v100, gtp2
	.byte	W36
	.byte		        Bn0 , v108, gtp3
	.byte	W32
	.byte	W02
@ 128   ----------------------------------------
	.byte		TIE   , Cn1 
	.byte	W96
@ 129   ----------------------------------------
	.byte	W96
@ 130   ----------------------------------------
	.byte		N96   , Gn1 
	.byte	W01
	.byte		EOT   , Cn1 
	.byte	W92
	.byte	W03
@ 131   ----------------------------------------
	.byte	W03
	.byte		N92   , Gn1 , v088
	.byte	W92
	.byte		N44   , Cn1 , v108
	.byte	W01
@ 132   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		TIE   , Cn1 , v100
	.byte	W48
	.byte	W02
@ 133   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		EOT   
	.byte	W04
	.byte		N23   , Cn1 , v108
	.byte	W22
@ 134   ----------------------------------------
	.byte	W02
	.byte		N84   , Gn1 , v108, gtp2
	.byte	W92
	.byte	W02
@ 135   ----------------------------------------
	.byte	W01
	.byte		N05   , Gn1 , v096
	.byte	W24
	.byte		N68   , Gn1 , v108, gtp1
	.byte	W68
	.byte	W02
	.byte		N88   , An0 
	.byte	W01
@ 136   ----------------------------------------
	.byte	W96
@ 137   ----------------------------------------
	.byte	W01
	.byte		N05   , An0 , v096
	.byte	W24
	.byte		N36   , An0 , v096, gtp1
	.byte	W36
	.byte	W02
	.byte		N32   , Bn0 , v100
	.byte	W32
	.byte	W01
@ 138   ----------------------------------------
	.byte		TIE   , Cn1 , v108
	.byte	W96
@ 139   ----------------------------------------
	.byte		N96   , Gn1 
	.byte	W01
	.byte		EOT   , Cn1 
	.byte	W92
	.byte	W01
	.byte		TIE   , Dn1 , v100
	.byte	W02
@ 140   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 141   ----------------------------------------
	.byte	W01
	.byte		N13   , Dn1 , v108
	.byte	W24
	.byte	W01
	.byte		N60   , Dn1 , v108, gtp3
	.byte	W68
	.byte	W02
@ 142   ----------------------------------------
	.byte	W01
	.byte		TIE   
	.byte	W92
	.byte	W03
@ 143   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		EOT   
	.byte	W04
	.byte		N48   , Dn1 , v104, gtp1
	.byte	W44
	.byte	W03
@ 144   ----------------------------------------
	.byte	W02
	.byte		N90   , Bn0 , v108, gtp1
	.byte	W02
	.byte		N01   , Dn1 , v036
	.byte	W92
@ 145   ----------------------------------------
	.byte	W01
	.byte		N92   , Bn0 , v104, gtp1
	.byte	W92
	.byte	W02
	.byte		        An0 , v108, gtp1
	.byte	W01
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte		N12   , An0 , v100
	.byte	W24
	.byte		N72   , An0 , v108, gtp1
	.byte	W72
@ 148   ----------------------------------------
	.byte	W02
	.byte		N68   , Gn1 , v096, gtp1
	.byte	W68
	.byte	W03
	.byte		N24   , Fs0 , v100
	.byte	W23
@ 149   ----------------------------------------
	.byte		TIE   , En0 , v108
	.byte	W96
@ 150   ----------------------------------------
	.byte	W01
	.byte		EOT   
	.byte	W02
	.byte		N88   , Bn0 , v104
	.byte	W92
	.byte	W01
@ 151   ----------------------------------------
	.byte	W02
	.byte		N05   , Bn0 , v096
	.byte	W23
	.byte		N64   , Bn0 , v100
	.byte	W68
	.byte	W03
@ 152   ----------------------------------------
	.byte		N90   , Bn0 , v108, gtp1
	.byte	W96
@ 153   ----------------------------------------
	.byte		N07   , Bn0 , v084
	.byte	W24
	.byte		N72   , Bn0 , v104, gtp1
	.byte	W72
@ 154   ----------------------------------------
	.byte	W02
	.byte		N90   , An0 , v108
	.byte	W92
	.byte	W02
@ 155   ----------------------------------------
	.byte	W01
	.byte		N92   , An0 , v108, gtp3
	.byte	W92
	.byte	W03
@ 156   ----------------------------------------
	.byte	W01
	.byte		N68   , Gn1 , v108, gtp2
	.byte	W68
	.byte	W03
	.byte		N24   , Fs0 
	.byte	W24
@ 157   ----------------------------------------
	.byte		N66   , En0 , v108, gtp1
	.byte	W72
	.byte		N22   , En0 , v084
	.byte	W24
@ 158   ----------------------------------------
	.byte	W01
	.byte		N06   , Bn0 , v108
	.byte	W07
	.byte		N01   , Bn0 , v052
	.byte	W17
	.byte		N66   , Bn0 , v108
	.byte	W68
	.byte	W03
@ 159   ----------------------------------------
	.byte	W01
	.byte		N06   , Bn0 , v092
	.byte	W24
	.byte		N56   , Bn0 , v108, gtp3
	.byte	W68
	.byte	W03
@ 160   ----------------------------------------
	.byte		N90   , Bn0 , v100
	.byte	W96
@ 161   ----------------------------------------
mus_comfortably_numb_1_161:
	.byte		N08   , Bn0 , v076
	.byte	W23
	.byte		N72   , Bn0 , v100, gtp1
	.byte	W72
	.byte	W01
	.byte	PEND
@ 162   ----------------------------------------
mus_comfortably_numb_1_162:
	.byte	W01
	.byte		N80   , An0 , v104, gtp1
	.byte	W84
	.byte	W02
	.byte		N03   , An0 , v080
	.byte	W08
	.byte		N05   , An0 , v100
	.byte	W01
	.byte	PEND
@ 163   ----------------------------------------
mus_comfortably_numb_1_163:
	.byte	W23
	.byte		N68   , An0 , v104, gtp2
	.byte	W72
	.byte		N72   , Gn1 , v100, gtp2
	.byte	W01
	.byte	PEND
@ 164   ----------------------------------------
	.byte	W72
	.byte		N23   , Fs0 , v108
	.byte	W24
@ 165   ----------------------------------------
	.byte		N92   , En0 , v108, gtp3
	.byte	W96
@ 166   ----------------------------------------
	.byte		N88   , Bn0 , v108, gtp1
	.byte	W96
@ 167   ----------------------------------------
mus_comfortably_numb_1_167:
	.byte		N07   , Bn0 , v092
	.byte	W23
	.byte		N68   , Bn0 , v104, gtp1
	.byte	W72
	.byte	W01
	.byte	PEND
@ 168   ----------------------------------------
	.byte		N90   , Bn0 , v100
	.byte	W96
@ 169   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_1_161
@ 170   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_1_162
@ 171   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_1_163
@ 172   ----------------------------------------
	.byte	W72
	.byte		N23   , Fs0 , v108
	.byte	W24
@ 173   ----------------------------------------
	.byte		N92   , En0 , v108, gtp3
	.byte	W96
@ 174   ----------------------------------------
	.byte		N88   , Bn0 , v108, gtp1
	.byte	W96
@ 175   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_1_167
@ 176   ----------------------------------------
	.byte		N90   , Bn0 , v100
	.byte	W96
@ 177   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_1_161
@ 178   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_1_162
@ 179   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_1_163
@ 180   ----------------------------------------
	.byte	W72
	.byte		N23   , Fs0 , v108
	.byte	W24
@ 181   ----------------------------------------
	.byte		N92   , En0 , v108, gtp3
	.byte	W96
@ 182   ----------------------------------------
	.byte		N88   , Bn0 , v108, gtp1
	.byte	W96
@ 183   ----------------------------------------
	.byte		N07   , Bn0 , v092
	.byte	W23
	.byte		N68   , Bn0 , v104, gtp1
	.byte	W68
	.byte	W01
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_comfortably_numb_2:
	.byte	KEYSH , mus_comfortably_numb_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 49
	.byte		VOL   , 90*mus_comfortably_numb_mvl/mxv
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
mus_comfortably_numb_2_028:
	.byte		N16   , An3 , v100
	.byte	W11
	.byte		N12   , Fs3 , v096
	.byte	W11
	.byte		N17   , En3 , v100
	.byte	W12
	.byte		N14   , Dn3 , v112
	.byte	W14
	.byte		N18   , An3 , v100
	.byte	W12
	.byte		N11   , Fs3 , v108
	.byte	W11
	.byte		N15   , En3 , v104
	.byte	W13
	.byte		N11   , Dn3 , v120
	.byte	W11
	.byte		N17   , An3 , v100
	.byte	W01
	.byte	PEND
@ 029   ----------------------------------------
mus_comfortably_numb_2_029:
	.byte	W11
	.byte		N11   , Fs3 , v112
	.byte	W12
	.byte		N16   , En3 , v100
	.byte	W12
	.byte		N12   , Dn3 , v104
	.byte	W13
	.byte		N22   , An3 , v100
	.byte	W11
	.byte		N14   , Fs3 , v112
	.byte	W12
	.byte		N13   , En3 , v092
	.byte	W13
	.byte		N11   , Dn3 , v120
	.byte	W11
	.byte		N20   , En3 , v096
	.byte	W01
	.byte	PEND
@ 030   ----------------------------------------
mus_comfortably_numb_2_030:
	.byte	W11
	.byte		N12   , Cs3 , v100
	.byte	W11
	.byte		N16   , Bn2 
	.byte	W13
	.byte		N11   , An2 , v120
	.byte	W11
	.byte		N15   , En3 , v108
	.byte	W13
	.byte		N11   , Cs3 , v096
	.byte	W11
	.byte		N14   , Bn2 , v108
	.byte	W12
	.byte		N12   , An2 , v120
	.byte	W12
	.byte		N16   , En3 , v108
	.byte	W02
	.byte	PEND
@ 031   ----------------------------------------
mus_comfortably_numb_2_031:
	.byte	W11
	.byte		N11   , Cs3 , v092
	.byte	W12
	.byte		N16   , Bn2 , v104
	.byte	W13
	.byte		N11   , An2 , v100
	.byte	W11
	.byte		N15   , En3 
	.byte	W11
	.byte		N13   , Cs3 , v112
	.byte	W12
	.byte		N12   , Bn2 , v108
	.byte	W12
	.byte		N14   , An2 
	.byte	W13
	.byte		N15   , An3 , v096
	.byte	W01
	.byte	PEND
@ 032   ----------------------------------------
mus_comfortably_numb_2_032:
	.byte	W10
	.byte		N11   , Fs3 , v100
	.byte	W11
	.byte		N16   , En3 , v104
	.byte	W14
	.byte		N09   , Dn3 , v116
	.byte	W10
	.byte		N16   , An3 , v108
	.byte	W13
	.byte		N11   , Fs3 
	.byte	W12
	.byte		N15   , En3 , v104
	.byte	W12
	.byte		N11   , Dn3 , v112
	.byte	W12
	.byte		N15   , An3 , v108
	.byte	W02
	.byte	PEND
@ 033   ----------------------------------------
mus_comfortably_numb_2_033:
	.byte	W10
	.byte		N11   , Fs3 , v112
	.byte	W11
	.byte		N16   , En3 , v104
	.byte	W12
	.byte		N11   , Dn3 , v108
	.byte	W13
	.byte		N20   , An3 , v092
	.byte	W11
	.byte		N12   , Fs3 , v108
	.byte	W12
	.byte		N14   , En3 , v104
	.byte	W13
	.byte		N11   , Dn3 , v120
	.byte	W12
	.byte		N16   , En3 , v112
	.byte	W02
	.byte	PEND
@ 034   ----------------------------------------
mus_comfortably_numb_2_034:
	.byte	W10
	.byte		N11   , Cs3 , v100
	.byte	W12
	.byte		N15   , Bn2 , v112
	.byte	W12
	.byte		N11   , An2 
	.byte	W11
	.byte		N15   , En3 , v104
	.byte	W13
	.byte		N12   , Cs3 , v108
	.byte	W12
	.byte		N17   , Bn2 , v104
	.byte	W11
	.byte		N09   , An2 , v108
	.byte	W12
	.byte		N20   , En3 , v104
	.byte	W03
	.byte	PEND
@ 035   ----------------------------------------
mus_comfortably_numb_2_035:
	.byte	W10
	.byte		N12   , Cs3 , v096
	.byte	W12
	.byte		N14   , Bn2 , v104
	.byte	W13
	.byte		N11   , An2 , v108
	.byte	W11
	.byte		N22   , En3 , v104
	.byte	W12
	.byte		N13   , Cs3 , v108
	.byte	W13
	.byte		        Bn2 , v112
	.byte	W12
	.byte		        An2 , v120
	.byte	W12
	.byte		N15   , Gn3 , v108
	.byte	W01
	.byte	PEND
@ 036   ----------------------------------------
mus_comfortably_numb_2_036:
	.byte	W11
	.byte		N14   , En3 , v100
	.byte	W13
	.byte		N13   , Dn3 
	.byte	W12
	.byte		N14   , Cn3 , v096
	.byte	W11
	.byte		N13   , Gn3 , v127
	.byte	W11
	.byte		N14   , En3 , v108
	.byte	W13
	.byte		N13   , Dn3 , v092
	.byte	W12
	.byte		N14   , Cn3 
	.byte	W12
	.byte		N13   , Gn3 , v127
	.byte	W01
	.byte	PEND
@ 037   ----------------------------------------
mus_comfortably_numb_2_037:
	.byte	W10
	.byte		N14   , En3 , v100
	.byte	W13
	.byte		N12   , Dn3 , v084
	.byte	W11
	.byte		N15   , Cn3 
	.byte	W13
	.byte		N12   , Gn3 , v127
	.byte	W11
	.byte		N16   , En3 , v104
	.byte	W13
	.byte		N12   , Dn3 , v088
	.byte	W10
	.byte		        Cn3 
	.byte	W14
	.byte		N17   , Dn3 , v127
	.byte	W01
	.byte	PEND
@ 038   ----------------------------------------
mus_comfortably_numb_2_038:
	.byte	W12
	.byte		N20   , Bn2 , v096
	.byte	W01
	.byte		N01   , An2 , v068
	.byte	W09
	.byte		N12   , An2 , v084
	.byte	W11
	.byte		N14   , Gn2 , v080
	.byte	W12
	.byte		N12   , Dn3 , v127
	.byte	W13
	.byte		N13   , Bn2 , v112
	.byte	W12
	.byte		N12   , An2 , v088
	.byte	W11
	.byte		N14   , Gn2 , v084
	.byte	W13
	.byte		N12   , Dn3 , v127
	.byte	W02
	.byte	PEND
@ 039   ----------------------------------------
mus_comfortably_numb_2_039:
	.byte	W11
	.byte		N14   , Bn2 , v100
	.byte	W12
	.byte		N12   , An2 , v080
	.byte	W11
	.byte		N13   , Gn2 
	.byte	W12
	.byte		N12   , Dn3 , v127
	.byte	W12
	.byte		N17   , Bn2 , v100
	.byte	W12
	.byte		N13   , An2 , v076
	.byte	W12
	.byte		        Gn2 , v084
	.byte	W13
	.byte		        Gn3 , v127
	.byte	W01
	.byte	PEND
@ 040   ----------------------------------------
mus_comfortably_numb_2_040:
	.byte	W10
	.byte		N14   , En3 , v088
	.byte	W13
	.byte		        Dn3 , v080
	.byte	W12
	.byte		N15   , Cn3 
	.byte	W12
	.byte		N14   , Gn3 , v127
	.byte	W13
	.byte		        En3 , v104
	.byte	W12
	.byte		N12   , Dn3 , v088
	.byte	W12
	.byte		        Cn3 , v084
	.byte	W11
	.byte		N11   , Gn3 , v127
	.byte	W01
	.byte	PEND
@ 041   ----------------------------------------
mus_comfortably_numb_2_041:
	.byte	W11
	.byte		N14   , En3 , v088
	.byte	W13
	.byte		N13   , Dn3 , v092
	.byte	W11
	.byte		N12   , Cn3 , v084
	.byte	W11
	.byte		N13   , Gn3 , v127
	.byte	W13
	.byte		N23   , En3 , v092
	.byte	W11
	.byte		N13   , Dn3 , v088
	.byte	W12
	.byte		N09   , Cn3 , v092
	.byte	W12
	.byte		N16   , Dn3 , v120
	.byte	W02
	.byte	PEND
@ 042   ----------------------------------------
mus_comfortably_numb_2_042:
	.byte	W11
	.byte		N15   , Bn2 , v112
	.byte	W13
	.byte		N13   , An2 , v080
	.byte	W12
	.byte		N14   , Gn2 
	.byte	W12
	.byte		N12   , Dn3 , v127
	.byte	W10
	.byte		N14   , Bn2 , v092
	.byte	W12
	.byte		N12   , An2 , v088
	.byte	W12
	.byte		N13   , Gn2 
	.byte	W12
	.byte		        Dn3 , v127
	.byte	W02
	.byte	PEND
@ 043   ----------------------------------------
mus_comfortably_numb_2_043:
	.byte	W11
	.byte		N15   , Bn2 , v100
	.byte	W13
	.byte		N12   , An2 , v092
	.byte	W09
	.byte		N16   , Gn2 , v076
	.byte	W14
	.byte		N13   , Dn3 , v127
	.byte	W11
	.byte		N19   , Bn2 , v100
	.byte	W12
	.byte		N13   , An2 , v084
	.byte	W12
	.byte		N14   , Gn2 , v092
	.byte	W12
	.byte		N17   , An3 , v084
	.byte	W02
	.byte	PEND
@ 044   ----------------------------------------
mus_comfortably_numb_2_044:
	.byte	W11
	.byte		N12   , Fs3 , v084
	.byte	W11
	.byte		N16   , En3 , v100
	.byte	W14
	.byte		N13   , Dn3 , v120
	.byte	W12
	.byte		N15   , An3 
	.byte	W12
	.byte		N11   , Fs3 , v112
	.byte	W12
	.byte		N14   , En3 , v108
	.byte	W12
	.byte		N11   , Dn3 , v116
	.byte	W11
	.byte		N19   , An3 , v112
	.byte	W01
	.byte	PEND
@ 045   ----------------------------------------
mus_comfortably_numb_2_045:
	.byte	W11
	.byte		N11   , Fs3 , v100
	.byte	W11
	.byte		N16   , En3 , v116
	.byte	W14
	.byte		N10   , Dn3 , v124
	.byte	W11
	.byte		N20   , An3 , v104
	.byte	W12
	.byte		N12   , Fs3 , v112
	.byte	W11
	.byte		        En3 , v108
	.byte	W13
	.byte		N10   , Dn3 , v127
	.byte	W12
	.byte		N19   , En3 , v116
	.byte	W01
	.byte	PEND
@ 046   ----------------------------------------
mus_comfortably_numb_2_046:
	.byte	W11
	.byte		N12   , Cs3 , v092
	.byte	W12
	.byte		N16   , Bn2 , v108
	.byte	W12
	.byte		N11   , An2 
	.byte	W11
	.byte		N18   , En3 
	.byte	W13
	.byte		N11   , Cs3 , v100
	.byte	W12
	.byte		N14   , Bn2 , v112
	.byte	W12
	.byte		N11   , An2 , v120
	.byte	W11
	.byte		N17   , En3 
	.byte	W02
	.byte	PEND
@ 047   ----------------------------------------
mus_comfortably_numb_2_047:
	.byte	W11
	.byte		N11   , Cs3 , v108
	.byte	W12
	.byte		N16   , Bn2 , v112
	.byte	W12
	.byte		N13   , An2 , v120
	.byte	W12
	.byte		N24   , En3 , v104, gtp1
	.byte	W13
	.byte		N14   , Cs3 , v108
	.byte	W11
	.byte		N12   , Bn2 , v100
	.byte	W12
	.byte		N15   , An2 , v116
	.byte	W12
	.byte		N17   , An3 , v096
	.byte	W01
	.byte	PEND
@ 048   ----------------------------------------
mus_comfortably_numb_2_048:
	.byte		N01   , Gn3 , v088
	.byte	W11
	.byte		N13   , Fs3 , v096
	.byte	W13
	.byte		N14   , En3 , v108
	.byte	W11
	.byte		N12   , Dn3 , v120
	.byte	W12
	.byte		N21   , An3 , v112
	.byte	W12
	.byte		N11   , Fs3 , v108
	.byte	W12
	.byte		N15   , En3 , v104
	.byte	W12
	.byte		N12   , Dn3 , v112
	.byte	W11
	.byte		N21   , An3 , v108
	.byte	W02
	.byte	PEND
@ 049   ----------------------------------------
mus_comfortably_numb_2_049:
	.byte	W13
	.byte		N10   , Fs3 , v096
	.byte	W11
	.byte		N19   , En3 , v108
	.byte	W11
	.byte		N12   , Dn3 , v112
	.byte	W12
	.byte		N20   , An3 
	.byte	W12
	.byte		N12   , Fs3 , v108
	.byte	W12
	.byte		N23   , En3 , v112
	.byte	W13
	.byte		N11   , Dn3 , v108
	.byte	W12
	.byte	PEND
@ 050   ----------------------------------------
mus_comfortably_numb_2_050:
	.byte		N18   , En3 , v120
	.byte	W13
	.byte		N10   , Cs3 , v092
	.byte	W10
	.byte		N15   , Bn2 , v100
	.byte	W13
	.byte		N11   , An2 , v108
	.byte	W11
	.byte		N19   , En3 , v116
	.byte	W14
	.byte		N11   , Cs3 , v096
	.byte	W11
	.byte		N15   , Bn2 , v112
	.byte	W12
	.byte		N12   , An2 , v088
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
mus_comfortably_numb_2_051:
	.byte		N18   , En3 , v116
	.byte	W11
	.byte		N12   , Cs3 , v112
	.byte	W13
	.byte		N22   , Bn2 , v116
	.byte	W12
	.byte		N12   , An2 , v120
	.byte	W11
	.byte		N23   , En3 , v116
	.byte	W12
	.byte		N13   , Cs3 , v112
	.byte	W13
	.byte		N18   , Bn2 , v104
	.byte	W11
	.byte		N08   , Cs3 , v100
	.byte	W12
	.byte		N13   , Gn3 , v112
	.byte	W01
	.byte	PEND
@ 052   ----------------------------------------
mus_comfortably_numb_2_052:
	.byte	W11
	.byte		N12   , En3 , v112
	.byte	W11
	.byte		N15   , Dn3 , v080
	.byte	W14
	.byte		N12   , Cn3 , v100
	.byte	W11
	.byte		N13   , Gn3 , v127
	.byte	W13
	.byte		N14   , En3 , v116
	.byte	W12
	.byte		N13   , Dn3 , v096
	.byte	W12
	.byte		N11   , Cn3 , v100
	.byte	W11
	.byte		N13   , Gn3 , v124
	.byte	W01
	.byte	PEND
@ 053   ----------------------------------------
mus_comfortably_numb_2_053:
	.byte	W10
	.byte		N14   , En3 , v108
	.byte	W12
	.byte		N13   , Dn3 , v096
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn3 , v127
	.byte	W13
	.byte		N16   , En3 , v108
	.byte	W13
	.byte		N13   , Dn3 , v100
	.byte	W12
	.byte		N09   , Cn3 , v108
	.byte	W12
	.byte	PEND
@ 054   ----------------------------------------
mus_comfortably_numb_2_054:
	.byte	W01
	.byte		N12   , Dn3 , v127
	.byte	W10
	.byte		N14   , Bn2 , v112
	.byte	W12
	.byte		        An2 , v088
	.byte	W12
	.byte		N13   , Gn2 , v092
	.byte	W12
	.byte		N10   , Dn3 , v127
	.byte	W11
	.byte		N14   , Bn2 , v116
	.byte	W13
	.byte		        An2 , v100
	.byte	W11
	.byte		        Gn2 , v084
	.byte	W13
	.byte		N12   , Dn3 , v127
	.byte	W01
	.byte	PEND
@ 055   ----------------------------------------
mus_comfortably_numb_2_055:
	.byte	W11
	.byte		N14   , Bn2 , v108
	.byte	W12
	.byte		N11   , An2 , v092
	.byte	W11
	.byte		N16   , Gn2 , v080
	.byte	W13
	.byte		N13   , Dn3 , v127
	.byte	W12
	.byte		N15   , Bn2 , v100
	.byte	W13
	.byte		        An2 , v080
	.byte	W12
	.byte		N10   , Gn2 , v100
	.byte	W10
	.byte		N16   , Gn3 , v127
	.byte	W02
	.byte	PEND
@ 056   ----------------------------------------
mus_comfortably_numb_2_056:
	.byte	W13
	.byte		N13   , En3 , v108
	.byte	W12
	.byte		        Dn3 , v100
	.byte	W12
	.byte		N15   , Cn3 , v088
	.byte	W13
	.byte		N10   , Gn3 , v127
	.byte	W11
	.byte		N13   , En3 , v108
	.byte	W11
	.byte		        Dn3 , v100
	.byte	W12
	.byte		N12   , Cn3 , v092
	.byte	W11
	.byte		N11   , Gn3 , v127
	.byte	W01
	.byte	PEND
@ 057   ----------------------------------------
mus_comfortably_numb_2_057:
	.byte	W11
	.byte		N15   , En3 , v104
	.byte	W12
	.byte		N13   , Dn3 , v100
	.byte	W12
	.byte		N16   , Cn3 , v096
	.byte	W11
	.byte		N13   , Gn3 , v127
	.byte	W13
	.byte		N16   , En3 , v104
	.byte	W12
	.byte		N15   , Dn3 , v096
	.byte	W13
	.byte		N10   , Cn3 , v100
	.byte	W12
	.byte	PEND
@ 058   ----------------------------------------
mus_comfortably_numb_2_058:
	.byte	W01
	.byte		N13   , Dn3 , v124
	.byte	W11
	.byte		N14   , Bn2 , v092
	.byte	W12
	.byte		N12   , An2 , v096
	.byte	W11
	.byte		N11   , Gn2 , v092
	.byte	W11
	.byte		N13   , Dn3 , v120
	.byte	W12
	.byte		N15   , Bn2 , v096
	.byte	W13
	.byte		N14   , An2 , v092
	.byte	W12
	.byte		N12   , Gn2 , v096
	.byte	W11
	.byte		N13   , Dn3 , v127
	.byte	W02
	.byte	PEND
@ 059   ----------------------------------------
mus_comfortably_numb_2_059:
	.byte	W11
	.byte		N15   , Bn2 , v100
	.byte	W13
	.byte		N14   , An2 
	.byte	W12
	.byte		N13   , Gn2 
	.byte	W12
	.byte		N12   , Dn3 , v127
	.byte	W11
	.byte		N15   , Bn2 , v104
	.byte	W11
	.byte		N14   , An2 , v080
	.byte	W14
	.byte		N12   , Gn2 , v092
	.byte	W11
	.byte		N21   , En3 , v116
	.byte	W01
	.byte	PEND
@ 060   ----------------------------------------
mus_comfortably_numb_2_060:
	.byte	W14
	.byte		N12   , Cs3 , v096
	.byte	W10
	.byte		N14   , Bn2 , v112
	.byte	W12
	.byte		N11   , An2 
	.byte	W11
	.byte		N17   , En3 , v108
	.byte	W13
	.byte		N11   , Cs3 , v096
	.byte	W11
	.byte		N15   , Bn2 , v116
	.byte	W11
	.byte		N12   , An2 , v112
	.byte	W13
	.byte		N20   , En3 , v100
	.byte	W01
	.byte	PEND
@ 061   ----------------------------------------
mus_comfortably_numb_2_061:
	.byte	W11
	.byte		N12   , Cs3 , v108
	.byte	W12
	.byte		N17   , Bn2 , v104
	.byte	W13
	.byte		N11   , An2 , v116
	.byte	W12
	.byte		N10   , En3 , v100
	.byte	W11
	.byte		N32   , Bn2 , v127, gtp1
	.byte	W32
	.byte	W03
	.byte		N92   , Cn3 , v076
	.byte		TIE   , En3 , v116
	.byte		TIE   , Gn3 , v108
	.byte	W02
	.byte	PEND
@ 062   ----------------------------------------
mus_comfortably_numb_2_062:
	.byte	W92
	.byte	W02
	.byte		N96   , Gn2 , v072
	.byte	W01
	.byte	PEND
	.byte		EOT   , En3 
	.byte		        Gn3 
	.byte		N96   , Bn2 , v092
	.byte	W01
@ 063   ----------------------------------------
mus_comfortably_numb_2_063:
	.byte		TIE   , Dn3 , v116
	.byte	W92
	.byte	W03
	.byte		        Fs3 , v120
	.byte		TIE   , An3 , v096
	.byte	W01
	.byte	PEND
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W02
	.byte		EOT   , Dn3 
	.byte	W01
	.byte		        Fs3 
	.byte		        An3 
	.byte	W92
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
	.byte	W02
	.byte		TIE   , Cn4 , v100
	.byte		TIE   , Gn4 , v124
	.byte	W92
	.byte	W02
@ 075   ----------------------------------------
	.byte	W84
	.byte	W01
	.byte		EOT   
	.byte	W10
	.byte		EOT   , Cn4 
	.byte		TIE   , Dn4 , v104
	.byte		TIE   , Gn4 , v120
	.byte	W01
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W90
	.byte		EOT   , Dn4 
	.byte	W01
	.byte		        Gn4 
	.byte	W04
	.byte		TIE   , Cn4 , v104
	.byte		TIE   , Gn4 , v112
	.byte	W01
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W90
	.byte	W01
	.byte		EOT   , Cn4 
	.byte	W01
	.byte		        Gn4 
	.byte	W04
@ 080   ----------------------------------------
	.byte	W01
	.byte		TIE   , Dn4 , v100
	.byte		TIE   , Gn4 , v108
	.byte	W92
	.byte	W03
@ 081   ----------------------------------------
	.byte	W88
	.byte		EOT   , Dn4 
	.byte		        Gn4 
	.byte	W07
	.byte		TIE   , An3 , v092
	.byte		TIE   , Cs4 , v108
	.byte		TIE   , En4 , v100
	.byte	W01
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W48
	.byte	W03
	.byte		EOT   , An3 
	.byte	W09
	.byte		N28   , Bn3 , v100, gtp1
	.byte	W28
	.byte	W01
	.byte		EOT   , En4 
	.byte	W01
	.byte		        Cs4 
	.byte	W05
	.byte		N88   , Cn4 , v104, gtp1
	.byte		N88   , En4 , v112
	.byte		N90   , Gn4 , v116
	.byte	W01
@ 084   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		N92   , Dn4 , v088, gtp3
	.byte	W01
	.byte		        Gn4 , v100
	.byte		N92   , Bn4 , v104
	.byte	W02
@ 085   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		TIE   , Dn4 , v072
	.byte		TIE   , An4 , v100
	.byte	W01
@ 086   ----------------------------------------
	.byte		        Fs4 , v112
	.byte		N01   , Gs4 , v060
	.byte	W96
@ 087   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , Dn4 
	.byte		        Fs4 
	.byte		        An4 
	.byte	W01
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
	.byte	PATT
	 .word	mus_comfortably_numb_2_028
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_029
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_030
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_031
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_032
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_033
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_034
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_035
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_036
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_037
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_038
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_039
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_040
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_041
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_042
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_043
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_044
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_045
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_046
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_047
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_048
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_049
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_050
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_051
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_052
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_053
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_054
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_055
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_056
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_057
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_058
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_059
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_060
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_061
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_062
	.byte		EOT   , En3 
	.byte		        Gn3 
	.byte		N96   , Bn2 , v092
	.byte	W01
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_2_063
@ 140   ----------------------------------------
	.byte	W96
@ 141   ----------------------------------------
	.byte	W96
	.byte		EOT   , An3 
@ 142   ----------------------------------------
	.byte		TIE   , An3 , v088
	.byte		TIE   , Fs4 , v112
	.byte	W01
	.byte		        Dn4 , v104
	.byte	W01
	.byte		EOT   , Dn3 
	.byte	W01
	.byte		        Fs3 
	.byte	W92
	.byte	W01
@ 143   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		        An3 
	.byte	W02
	.byte		        Dn4 
	.byte	W01
	.byte		        Fs4 
	.byte	W04
@ 144   ----------------------------------------
	.byte	W02
	.byte		TIE   , Bn3 , v120
	.byte		TIE   , Dn4 , v116
	.byte		TIE   , Fs4 , v127
	.byte	W01
	.byte		N01   , Gn4 , v068
	.byte	W92
	.byte	W01
@ 145   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		EOT   , Dn4 
	.byte		        Fs4 
	.byte	W01
	.byte		        Bn3 
	.byte	W06
@ 146   ----------------------------------------
	.byte	W01
	.byte		TIE   , An3 , v104
	.byte		TIE   , Cs4 , v127
	.byte		TIE   , En4 , v112
	.byte	W92
	.byte	W03
@ 147   ----------------------------------------
	.byte	W90
	.byte	W01
	.byte		EOT   , An3 
	.byte		        Cs4 
	.byte		        En4 
	.byte	W05
@ 148   ----------------------------------------
	.byte	W01
	.byte		N72   , Gn3 , v100, gtp3
	.byte		N80   , Dn4 , v100, gtp2
	.byte	W01
	.byte		N78   , Bn3 , v116
	.byte	W68
	.byte	W03
	.byte		N24   , Fs3 , v127
	.byte	W23
@ 149   ----------------------------------------
	.byte		N92   , Gn3 , v120, gtp3
	.byte		TIE   , Bn3 , v108
	.byte	W01
	.byte		N96   , En3 , v100
	.byte	W92
	.byte	W03
@ 150   ----------------------------------------
	.byte		TIE   , Dn4 , v104
	.byte		TIE   , Fs4 , v112
	.byte	W01
	.byte		N01   , Gn3 , v056
	.byte	W92
	.byte	W03
@ 151   ----------------------------------------
	.byte	W96
@ 152   ----------------------------------------
	.byte	W80
	.byte	W02
	.byte		EOT   , Dn4 
	.byte	W01
	.byte		        Fs4 
	.byte	W03
	.byte		        Bn3 
	.byte	W10
@ 153   ----------------------------------------
	.byte	W96
@ 154   ----------------------------------------
	.byte	W01
	.byte		TIE   , An3 , v096
	.byte		TIE   , Cs4 , v120
	.byte		TIE   , En4 , v100
	.byte	W92
	.byte	W03
@ 155   ----------------------------------------
	.byte	W07
	.byte		EOT   , An3 
	.byte	W01
	.byte		        Cs4 
	.byte	W01
	.byte		        En4 
	.byte	W84
	.byte		N72   , Gn3 , v108, gtp2
	.byte		N92   , Bn3 , v120, gtp2
	.byte		N92   , Dn4 , v112, gtp3
	.byte	W03
@ 156   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N24   , Fs3 , v127, gtp3
	.byte	W24
	.byte	W01
@ 157   ----------------------------------------
	.byte	W01
	.byte		N40   , Gn3 , v124, gtp1
	.byte		N42   , Bn3 , v100
	.byte	W01
	.byte		N40   , En3 , v112, gtp1
	.byte	W92
	.byte	W02
@ 158   ----------------------------------------
	.byte		TIE   , Bn3 , v084
	.byte		TIE   , Fs4 , v127
	.byte	W01
	.byte		        Dn4 , v100
	.byte	W92
	.byte	W03
@ 159   ----------------------------------------
	.byte	W96
@ 160   ----------------------------------------
	.byte	W04
	.byte		EOT   , Bn3 
	.byte		        Dn4 
	.byte		        Fs4 
	.byte	W92
@ 161   ----------------------------------------
	.byte	W96
@ 162   ----------------------------------------
	.byte	W02
	.byte		TIE   , An3 , v080
	.byte		TIE   , Cs4 , v120
	.byte		TIE   , En4 , v088
	.byte	W92
	.byte	W02
@ 163   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		EOT   , An3 
	.byte		        Cs4 
	.byte		        En4 
	.byte	W36
	.byte	W01
@ 164   ----------------------------------------
	.byte	W02
	.byte		N90   , Dn4 , v100, gtp1
	.byte	W01
	.byte		N68   , Gn3 , v084, gtp2
	.byte		N90   , Bn3 , v108
	.byte	W68
	.byte	W02
	.byte		N24   , Fs3 , v127, gtp3
	.byte	W23
@ 165   ----------------------------------------
	.byte	W03
	.byte		N07   , Dn3 , v104
	.byte		N92   , En3 , v104, gtp1
	.byte		N92   , Gn3 , v120, gtp1
	.byte		TIE   , Bn3 , v100
	.byte	W90
	.byte	W01
	.byte		        Dn4 , v084
	.byte	W01
	.byte		        Fs4 , v072
	.byte	W01
@ 166   ----------------------------------------
	.byte	W02
	.byte		N01   , Gn3 , v064
	.byte	W92
	.byte	W02
@ 167   ----------------------------------------
	.byte	W80
	.byte		EOT   , Dn4 
	.byte		        Fs4 
	.byte	W03
	.byte		        Bn3 
	.byte	W13
@ 168   ----------------------------------------
	.byte		TIE   , Fs4 , v127
	.byte	W01
	.byte		        Bn3 , v088
	.byte		TIE   , Dn4 , v108
	.byte	W92
	.byte	W03
@ 169   ----------------------------------------
	.byte	W60
	.byte		EOT   
	.byte		EOT   , Fs4 
	.byte	W02
	.byte		        Bn3 
	.byte	W32
	.byte	W02
@ 170   ----------------------------------------
	.byte	W03
	.byte		N01   , Gn3 , v064
	.byte		TIE   , An3 , v076
	.byte		TIE   , Cs4 , v112
	.byte		N08   , Dn4 , v092
	.byte		TIE   , En4 , v088
	.byte	W92
	.byte	W01
@ 171   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		EOT   , An3 
	.byte		        En4 
	.byte	W01
	.byte		        Cs4 
	.byte	W02
@ 172   ----------------------------------------
	.byte		N78   , Gn3 , v072
	.byte		N78   , Dn4 , v092, gtp1
	.byte	W01
	.byte		        Bn3 , v088
	.byte		N08   , Cn4 , v096
	.byte	W72
	.byte		N22   , Fs3 , v127
	.byte	W21
	.byte		N90   , Gn3 , v116, gtp1
	.byte	W01
	.byte		        En3 , v096
	.byte		N92   , Bn3 , v100
	.byte	W01
@ 173   ----------------------------------------
	.byte	W96
@ 174   ----------------------------------------
	.byte	W01
	.byte		TIE   , Fs4 , v108
	.byte	W01
	.byte		        Bn3 
	.byte		TIE   , Dn4 , v112
	.byte	W92
	.byte	W02
@ 175   ----------------------------------------
	.byte	W96
@ 176   ----------------------------------------
	.byte	W19
	.byte		EOT   , Fs4 
	.byte	W01
	.byte		        Dn4 
	.byte	W01
	.byte		        Bn3 
	.byte	W72
	.byte	W03
@ 177   ----------------------------------------
	.byte	W96
@ 178   ----------------------------------------
	.byte	W02
	.byte		TIE   , An3 , v072
	.byte		TIE   , En4 , v080
	.byte	W01
	.byte		        Cs4 , v100
	.byte	W92
	.byte	W01
@ 179   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		EOT   , An3 
	.byte	W01
	.byte		        En4 
	.byte	W24
	.byte	W03
@ 180   ----------------------------------------
	.byte		N60   , Gn3 , v100, gtp2
	.byte		N88   , Bn3 , v112, gtp1
	.byte		N90   , Dn4 , v100
	.byte	W72
	.byte	W01
	.byte		N18   , Fs3 , v096
	.byte	W23
@ 181   ----------------------------------------
	.byte	W01
	.byte		N48   , En3 , v104, gtp3
	.byte		N48   , Bn3 , v104, gtp3
	.byte	W01
	.byte		        Gn3 , v120, gtp1
	.byte	W92
	.byte	W02
@ 182   ----------------------------------------
	.byte	W01
	.byte		TIE   , Bn3 , v092
	.byte	W01
	.byte		        Dn4 , v112
	.byte		TIE   , Fs4 , v127
	.byte	W92
	.byte	W02
@ 183   ----------------------------------------
	.byte	W96
@ 184   ----------------------------------------
	.byte	W06
	.byte		EOT   , Dn4 
	.byte	W01
	.byte		        Bn3 
	.byte		        Fs4 
	.byte	FINE

@**************** Track 3 (Midi-Chn.4) ****************@

mus_comfortably_numb_3:
	.byte		VOL   , 127*mus_comfortably_numb_mvl/mxv
	.byte	KEYSH , mus_comfortably_numb_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 25
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
mus_comfortably_numb_3_027:
	.byte	W88
	.byte		N30   , Dn2 , v096, gtp1
	.byte	W04
	.byte		N22   , An2 , v072
	.byte	W02
	.byte		        Dn3 , v108
	.byte		N20   , Fs3 , v112
	.byte	W02
	.byte	PEND
@ 028   ----------------------------------------
mus_comfortably_numb_3_028:
	.byte	W36
	.byte	W01
	.byte		N03   , Dn2 , v076
	.byte		N02   , An2 , v048
	.byte		N02   , Dn3 , v064
	.byte	W12
	.byte		N03   , Dn2 , v088
	.byte		N02   , Dn3 , v076
	.byte	W01
	.byte		        An2 , v060
	.byte		N01   , Fs3 , v056
	.byte	W24
	.byte	W01
	.byte		        An2 , v040
	.byte		N01   , Dn3 , v044
	.byte	W11
	.byte		N03   , An2 , v068
	.byte		N02   , Dn3 , v072
	.byte	W01
	.byte		        Dn2 , v080
	.byte		N01   , Fs3 , v048
	.byte	W09
	.byte	PEND
@ 029   ----------------------------------------
mus_comfortably_numb_3_029:
	.byte	W01
	.byte		N04   , Dn2 , v080
	.byte		N03   , An2 , v068
	.byte		N03   , Dn3 , v080
	.byte	W01
	.byte		N01   , Fs3 , v052
	.byte	W12
	.byte		N03   , An2 , v056
	.byte	W12
	.byte		        An2 , v060
	.byte	W11
	.byte		N04   , An2 , v072
	.byte	W01
	.byte		        Dn2 
	.byte		N02   , Dn3 , v080
	.byte		N01   , Fs3 , v060
	.byte	W11
	.byte		N05   , An2 , v076
	.byte	W01
	.byte		N04   , Dn2 , v088
	.byte		N03   , Dn3 , v084
	.byte		N02   , Fs3 , v072
	.byte	W12
	.byte		N04   , An2 , v060
	.byte	W11
	.byte		N03   , Dn3 , v084
	.byte		N02   , Fs3 , v072
	.byte	W01
	.byte		N06   , Dn2 , v088
	.byte		N02   , An2 , v056
	.byte	W11
	.byte		N17   , An2 , v092
	.byte	W11
	.byte	PEND
@ 030   ----------------------------------------
mus_comfortably_numb_3_030:
	.byte	W01
	.byte		N05   , En2 , v100
	.byte		N05   , Cs3 
	.byte		N04   , En3 , v084
	.byte	W11
	.byte		        An2 , v068
	.byte	W24
	.byte		        En2 , v084
	.byte	W01
	.byte		N03   , An2 , v060
	.byte		N03   , Cs3 , v076
	.byte	W01
	.byte		N02   , En3 , v068
	.byte	W10
	.byte		N03   , Cs3 , v080
	.byte	W01
	.byte		N04   , En2 
	.byte		N04   , An2 , v064
	.byte		N03   , En3 , v068
	.byte	W12
	.byte		N02   , An2 , v044
	.byte	W12
	.byte		N02   
	.byte		N01   , Cs3 
	.byte	W12
	.byte		        Cs3 , v036
	.byte	W11
	.byte	PEND
@ 031   ----------------------------------------
mus_comfortably_numb_3_031:
	.byte		N04   , An2 , v064
	.byte		N04   , Cs3 , v092
	.byte		N04   , En3 , v080
	.byte	W01
	.byte		N05   , En2 , v088
	.byte	W10
	.byte		N03   , Cs3 , v064
	.byte	W01
	.byte		        An2 , v044
	.byte	W12
	.byte		        An2 , v052
	.byte		N03   , Cs3 , v056
	.byte	W01
	.byte		N02   , En3 , v052
	.byte	W12
	.byte		N04   , An2 , v060
	.byte		N03   , Cs3 , v080
	.byte	W01
	.byte		        En2 , v084
	.byte		N02   , En3 , v064
	.byte	W11
	.byte		N04   , Cs3 , v096
	.byte	W01
	.byte		        En2 , v084
	.byte		N03   , An2 , v060
	.byte		N03   , En3 , v076
	.byte	W12
	.byte		N04   , An2 , v068
	.byte	W11
	.byte		N03   , En2 , v088
	.byte		N04   , Cs3 , v092
	.byte	W01
	.byte		N02   , En3 , v052
	.byte	W10
	.byte		N06   , An2 , v076
	.byte	W11
	.byte		N04   , An2 , v060
	.byte		N04   , Dn3 , v088
	.byte		N04   , Fs3 , v076
	.byte	W01
	.byte	PEND
@ 032   ----------------------------------------
mus_comfortably_numb_3_032:
	.byte		N05   , Dn2 , v092
	.byte	W11
	.byte		N03   , An2 , v056
	.byte	W24
	.byte	W01
	.byte		N04   , Dn2 , v088
	.byte		N03   , An2 , v064
	.byte		N01   , Dn3 , v072
	.byte		N02   , Fs3 , v056
	.byte	W11
	.byte		N04   , An2 , v068
	.byte	W01
	.byte		N05   , Dn2 , v088
	.byte		N03   , Dn3 , v076
	.byte		N03   , Fs3 , v060
	.byte	W13
	.byte		        An2 , v052
	.byte	W11
	.byte		N02   , Fs3 , v056
	.byte	W01
	.byte		        An2 , v060
	.byte		N01   , Dn3 , v052
	.byte	W12
	.byte		N03   , An2 , v048
	.byte	W11
	.byte	PEND
@ 033   ----------------------------------------
mus_comfortably_numb_3_033:
	.byte		N06   , Dn2 , v092
	.byte	W01
	.byte		N04   , An2 , v064
	.byte		N02   , Dn3 , v072
	.byte		N03   , Fs3 , v064
	.byte	W12
	.byte		        An2 , v048
	.byte	W12
	.byte		        An2 , v052
	.byte	W11
	.byte		N05   , Dn2 , v092
	.byte	W01
	.byte		N03   , An2 , v060
	.byte		N02   , Fs3 
	.byte	W01
	.byte		        Dn3 , v072
	.byte	W10
	.byte		N04   , Dn3 , v080
	.byte	W01
	.byte		        Dn2 , v096
	.byte		N03   , An2 , v068
	.byte		N04   , Fs3 
	.byte	W12
	.byte		        An2 , v064
	.byte	W12
	.byte		N05   , Dn2 
	.byte		N02   , Dn3 , v068
	.byte		N03   , Fs3 , v060
	.byte	W10
	.byte		N06   , An2 , v088
	.byte	W12
	.byte		N05   , An2 , v060
	.byte		N05   , Cs3 , v088
	.byte		N04   , En3 , v080
	.byte	W01
	.byte	PEND
@ 034   ----------------------------------------
mus_comfortably_numb_3_034:
	.byte		N05   , En2 , v092
	.byte	W11
	.byte		N04   , An2 , v052
	.byte	W14
	.byte		N01   , An2 , v040
	.byte		N01   , Cs3 , v044
	.byte	W11
	.byte		N04   , An2 , v060
	.byte		N03   , Cs3 , v080
	.byte	W01
	.byte		        En2 , v068
	.byte		N02   , En3 , v064
	.byte	W11
	.byte		N04   , En2 , v080
	.byte		N04   , Cs3 , v076
	.byte	W01
	.byte		N03   , An2 , v056
	.byte		N02   , En3 
	.byte	W12
	.byte		N03   , An2 , v048
	.byte	W13
	.byte		N02   
	.byte	W11
	.byte		        An2 , v052
	.byte		N02   , Cs3 , v064
	.byte	W11
	.byte	PEND
@ 035   ----------------------------------------
mus_comfortably_numb_3_035:
	.byte		N05   , En2 , v096
	.byte	W01
	.byte		N04   , An2 , v060
	.byte		N03   , Cs3 , v080
	.byte	W01
	.byte		N02   , En3 , v060
	.byte	W12
	.byte		        An2 , v048
	.byte	W12
	.byte		N03   , An2 , v060
	.byte		N02   , Cs3 , v072
	.byte	W11
	.byte		N04   , En2 , v080
	.byte		N03   , Cs3 , v084
	.byte	W01
	.byte		        An2 , v060
	.byte		N02   , En3 , v072
	.byte	W11
	.byte		N04   , An2 , v064
	.byte		N03   , Cs3 , v092
	.byte	W01
	.byte		N04   , En2 , v080
	.byte		N02   , En3 , v076
	.byte	W12
	.byte		        An2 , v052
	.byte	W12
	.byte		        Cs3 , v076
	.byte	W01
	.byte		N01   , An2 , v044
	.byte		N01   , En3 , v052
	.byte	W10
	.byte		N04   , Cs3 , v072
	.byte		N03   , En3 , v056
	.byte	W01
	.byte		        En2 , v076
	.byte		N03   , An2 , v064
	.byte	W10
	.byte	PEND
@ 036   ----------------------------------------
mus_comfortably_numb_3_036:
	.byte	W01
	.byte		N04   , Cn3 , v108
	.byte		N05   , En3 , v080
	.byte	W01
	.byte		N04   , En2 , v092
	.byte		N03   , Gn2 , v088
	.byte	W12
	.byte		N02   , Gn2 , v040
	.byte	W13
	.byte		N01   , Gn2 , v048
	.byte	W11
	.byte		N03   , En2 , v088
	.byte	W01
	.byte		        Gn2 , v064
	.byte		N02   , Cn3 , v076
	.byte		N01   , En3 , v064
	.byte	W10
	.byte		N03   , Cn3 , v092
	.byte	W01
	.byte		        En2 , v088
	.byte		N03   , Gn2 , v068
	.byte		N03   , En3 , v076
	.byte	W32
	.byte	W03
	.byte		        Gn2 , v052
	.byte		N02   , Cn3 , v072
	.byte		N02   , En3 , v056
	.byte	W11
	.byte	PEND
@ 037   ----------------------------------------
mus_comfortably_numb_3_037:
	.byte	W01
	.byte		N05   , En2 , v088
	.byte		N03   , Gn2 , v064
	.byte		N03   , Cn3 , v080
	.byte		N02   , En3 , v064
	.byte	W13
	.byte		N01   , Gn2 , v048
	.byte	W12
	.byte		N02   , Gn2 , v052
	.byte		N01   , Cn3 , v064
	.byte		N02   , En3 , v060
	.byte	W10
	.byte		        Cn3 , v080
	.byte	W01
	.byte		N03   , Gn2 , v060
	.byte		N02   , En3 , v068
	.byte	W01
	.byte		N03   , En2 , v084
	.byte	W11
	.byte		N04   , Gn2 , v060
	.byte		N03   , Cn3 , v084
	.byte		N02   , En3 , v072
	.byte	W01
	.byte		N03   , En2 , v084
	.byte	W12
	.byte		N02   , Gn2 , v044
	.byte	W10
	.byte		N04   , En2 , v084
	.byte		N05   , Cn3 , v088
	.byte	W01
	.byte		        En3 , v076
	.byte	W11
	.byte		N07   , Gn2 , v080
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
mus_comfortably_numb_3_038:
	.byte		N04   , Dn2 , v100
	.byte		N04   , Gn2 , v068
	.byte		N03   , Bn2 , v092
	.byte		N04   , Dn3 , v080
	.byte	W13
	.byte		N03   , Gn2 , v056
	.byte	W13
	.byte		N02   , Gn2 , v060
	.byte	W11
	.byte		N04   , Dn2 , v100
	.byte		N04   , Gn2 , v072
	.byte	W01
	.byte		N02   , Bn2 , v084
	.byte		N02   , Dn3 , v076
	.byte	W11
	.byte		N03   , Gn2 , v072
	.byte		N03   , Bn2 , v100
	.byte	W01
	.byte		N04   , Dn2 , v092
	.byte		N02   , Dn3 , v080
	.byte	W11
	.byte		N03   , Gn2 , v048
	.byte	W13
	.byte		N01   , Bn2 , v056
	.byte		N01   , Dn3 , v052
	.byte	W12
	.byte		        Gn2 , v056
	.byte		N02   , Bn2 , v072
	.byte		N01   , Dn3 , v060
	.byte	W10
	.byte	PEND
@ 039   ----------------------------------------
mus_comfortably_numb_3_039:
	.byte	W01
	.byte		N05   , Dn2 , v092
	.byte		N03   , Gn2 , v068
	.byte		N04   , Bn2 , v092
	.byte		N03   , Dn3 , v076
	.byte	W13
	.byte		N02   , Gn2 , v056
	.byte	W12
	.byte		        Gn2 , v052
	.byte		N02   , Bn2 , v068
	.byte	W01
	.byte		N01   , Dn3 , v052
	.byte	W10
	.byte		N03   , Bn2 , v084
	.byte	W01
	.byte		N04   , Dn2 , v056
	.byte		N02   , Gn2 
	.byte		N02   , Dn3 , v068
	.byte	W12
	.byte		N04   , Dn2 , v096
	.byte		N03   , Gn2 , v060
	.byte		N03   , Bn2 , v080
	.byte	W01
	.byte		N02   , Dn3 , v068
	.byte	W12
	.byte		        Gn2 , v048
	.byte	W09
	.byte		N05   , Dn2 , v080
	.byte	W01
	.byte		N03   , Bn2 , v088
	.byte	W01
	.byte		N01   , Gn2 , v048
	.byte		N03   , Dn3 , v072
	.byte	W11
	.byte		N06   , Gn2 , v076
	.byte	W11
	.byte	PEND
@ 040   ----------------------------------------
mus_comfortably_numb_3_040:
	.byte		N04   , Gn2 , v060
	.byte		N04   , Cn3 , v088
	.byte		N04   , En3 , v072
	.byte	W01
	.byte		N05   , En2 , v092
	.byte	W11
	.byte		N03   , Gn2 , v056
	.byte	W14
	.byte		N02   
	.byte	W11
	.byte		N04   , En2 , v076
	.byte		N03   , Cn3 , v084
	.byte	W01
	.byte		        Gn2 , v064
	.byte		N02   , En3 , v068
	.byte	W11
	.byte		N03   , Gn2 , v056
	.byte		N03   , Cn3 , v088
	.byte		N02   , En3 , v064
	.byte	W01
	.byte		N04   , En2 , v080
	.byte	W12
	.byte		N02   , Gn2 , v052
	.byte	W12
	.byte		N04   , Gn2 , v060
	.byte		N02   , Cn3 , v072
	.byte	W01
	.byte		        En3 , v060
	.byte	W11
	.byte		N04   , En2 , v076
	.byte		N03   , Gn2 , v056
	.byte		N02   , Cn3 , v072
	.byte		N03   , En3 , v060
	.byte	W10
	.byte	PEND
@ 041   ----------------------------------------
mus_comfortably_numb_3_041:
	.byte		N05   , En2 , v084
	.byte	W01
	.byte		N03   , Cn3 , v088
	.byte	W01
	.byte		        Gn2 , v060
	.byte		N02   , En3 , v072
	.byte	W12
	.byte		N03   , Gn2 , v052
	.byte		N02   , Cn3 , v068
	.byte		N01   , En3 , v052
	.byte	W11
	.byte		N03   , Gn2 , v056
	.byte	W01
	.byte		N02   , Cn3 , v068
	.byte		N02   , En3 , v056
	.byte	W11
	.byte		N04   , Gn2 , v060
	.byte		N03   , Cn3 , v080
	.byte		N03   , En3 , v068
	.byte	W01
	.byte		N04   , En2 , v080
	.byte	W11
	.byte		        Gn2 , v060
	.byte		N04   , Cn3 , v088
	.byte		N04   , En3 , v072
	.byte	W12
	.byte		N03   , Gn2 , v052
	.byte	W12
	.byte		N05   , En2 , v080
	.byte	W01
	.byte		N03   , Gn2 , v068
	.byte		N04   , Cn3 , v088
	.byte		N04   , En3 , v072
	.byte	W11
	.byte		N07   , Gn2 
	.byte	W11
	.byte	PEND
@ 042   ----------------------------------------
mus_comfortably_numb_3_042:
	.byte		N04   , Gn2 , v064
	.byte		N04   , Bn2 , v092
	.byte	W01
	.byte		N05   , Dn2 
	.byte		N03   , Dn3 , v080
	.byte	W11
	.byte		N04   , Gn2 , v060
	.byte	W14
	.byte		N01   , Gn2 , v044
	.byte	W10
	.byte		N04   , Dn2 , v084
	.byte	W01
	.byte		N03   , Gn2 , v068
	.byte		N02   , Bn2 , v080
	.byte		N02   , Dn3 , v068
	.byte	W12
	.byte		N03   , Gn2 , v072
	.byte		N02   , Bn2 , v088
	.byte		N02   , Dn3 , v076
	.byte	W01
	.byte		N03   , Dn2 , v080
	.byte	W11
	.byte		        Gn2 , v060
	.byte	W13
	.byte		N01   , Gn2 , v048
	.byte		N01   , Bn2 , v056
	.byte		N01   , Dn3 , v052
	.byte	W11
	.byte		N02   , Gn2 
	.byte		N02   , Bn2 , v072
	.byte		N02   , Dn3 , v060
	.byte	W11
	.byte	PEND
@ 043   ----------------------------------------
mus_comfortably_numb_3_043:
	.byte	W01
	.byte		N04   , Dn2 , v084
	.byte		N02   , Bn2 , v088
	.byte		N02   , Dn3 , v076
	.byte	W01
	.byte		        Gn2 , v064
	.byte	W24
	.byte		N01   , Gn2 , v056
	.byte		N01   , Dn3 , v048
	.byte	W11
	.byte		N03   , Dn2 , v068
	.byte		N02   , Bn2 , v084
	.byte	W01
	.byte		        Gn2 , v064
	.byte		N01   , Dn3 , v076
	.byte	W11
	.byte		N04   , Dn2 
	.byte		N03   , Gn2 , v068
	.byte		N03   , Bn2 , v096
	.byte	W01
	.byte		N02   , Dn3 , v076
	.byte	W12
	.byte		        Gn2 , v048
	.byte		N01   , Bn2 , v056
	.byte	W11
	.byte		N04   , Gn2 , v072
	.byte	W01
	.byte		N02   , Bn2 , v084
	.byte		N02   , Dn3 , v076
	.byte	W11
	.byte		N03   , Gn2 , v056
	.byte		N02   , Bn2 , v072
	.byte		N02   , Dn3 , v064
	.byte	W11
	.byte	PEND
@ 044   ----------------------------------------
mus_comfortably_numb_3_044:
	.byte	W01
	.byte		N04   , Dn2 , v096
	.byte		N04   , An2 , v076
	.byte		N04   , Dn3 , v092
	.byte	W01
	.byte		        Fs3 , v072
	.byte	W12
	.byte		N03   , An2 , v064
	.byte		N02   , Fs3 , v060
	.byte	W01
	.byte		N01   , Dn3 , v064
	.byte	W12
	.byte		N02   , An2 , v056
	.byte	W11
	.byte		N04   , Dn2 , v084
	.byte		N03   , An2 , v072
	.byte		N02   , Fs3 
	.byte	W01
	.byte		N01   , Dn3 , v076
	.byte	W10
	.byte		N05   , Dn2 , v088
	.byte		N05   , An2 , v072
	.byte	W01
	.byte		N02   , Dn3 , v080
	.byte		N02   , Fs3 , v076
	.byte	W13
	.byte		        An2 , v044
	.byte	W11
	.byte		N03   , An2 , v060
	.byte	W11
	.byte		N04   , Dn2 , v084
	.byte		N04   , An2 , v068
	.byte		N01   , Dn3 , v076
	.byte		N02   , Fs3 
	.byte	W11
	.byte	PEND
@ 045   ----------------------------------------
mus_comfortably_numb_3_045:
	.byte		N03   , Dn2 , v076
	.byte		N04   , An2 , v064
	.byte	W01
	.byte		N02   , Dn3 , v068
	.byte		N03   , Fs3 , v084
	.byte	W11
	.byte		N02   , Fs3 , v060
	.byte	W01
	.byte		N03   , An2 , v056
	.byte	W11
	.byte		N05   , Dn2 , v072
	.byte		N04   , An2 , v064
	.byte		N02   , Dn3 , v072
	.byte		N03   , Fs3 , v076
	.byte	W12
	.byte		N04   , An2 , v060
	.byte		N02   , Fs3 , v064
	.byte	W01
	.byte		N01   , Dn3 , v052
	.byte	W11
	.byte		N05   , An2 , v064
	.byte	W01
	.byte		        Dn2 , v088
	.byte		N02   , Dn3 , v080
	.byte		N03   , Fs3 , v088
	.byte	W12
	.byte		N04   , An2 , v064
	.byte		N02   , Fs3 , v048
	.byte	W12
	.byte		N04   , Dn2 , v084
	.byte		N04   , An2 , v064
	.byte		N03   , Dn3 , v080
	.byte		N04   , Fs3 
	.byte	W12
	.byte		N08   , An2 , v088
	.byte	W11
	.byte	PEND
@ 046   ----------------------------------------
mus_comfortably_numb_3_046:
	.byte		N04   , An2 , v048
	.byte		N04   , Cs3 , v084
	.byte		N04   , En3 
	.byte	W01
	.byte		        En2 , v088
	.byte	W13
	.byte		N03   , An2 , v064
	.byte	W12
	.byte		N02   , An2 , v060
	.byte		N01   , Cs3 , v056
	.byte	W01
	.byte		        En3 , v060
	.byte	W11
	.byte		N03   , En2 , v088
	.byte		N03   , An2 , v064
	.byte		N02   , Cs3 , v076
	.byte	W01
	.byte		N01   , En3 , v064
	.byte	W10
	.byte		N04   , En2 , v080
	.byte		N03   , Cs3 , v092
	.byte	W01
	.byte		        An2 , v064
	.byte		N02   , En3 , v072
	.byte	W11
	.byte		N04   , An2 , v068
	.byte	W13
	.byte		N02   , An2 , v056
	.byte		N02   , Cs3 , v064
	.byte	W01
	.byte		N01   , En3 , v052
	.byte	W10
	.byte		N03   , An2 , v064
	.byte		N03   , Cs3 , v076
	.byte		N02   , En3 , v068
	.byte	W01
	.byte		N03   , En2 , v084
	.byte	W10
	.byte	PEND
@ 047   ----------------------------------------
mus_comfortably_numb_3_047:
	.byte	W01
	.byte		N05   , En2 , v088
	.byte		N03   , An2 , v064
	.byte		N03   , Cs3 , v080
	.byte	W01
	.byte		N02   , En3 , v068
	.byte	W11
	.byte		N03   , An2 , v056
	.byte		N02   , Cs3 , v060
	.byte	W12
	.byte		        Cs3 , v064
	.byte	W01
	.byte		N03   , An2 , v056
	.byte	W10
	.byte		N04   
	.byte		N03   , Cs3 , v076
	.byte	W01
	.byte		N04   , En2 , v084
	.byte		N02   , En3 , v056
	.byte	W11
	.byte		N03   , Cs3 , v076
	.byte	W01
	.byte		        An2 , v060
	.byte		N02   , En3 
	.byte	W11
	.byte		N03   , Cs3 , v084
	.byte	W01
	.byte		N04   , An2 , v064
	.byte		N02   , En3 
	.byte	W12
	.byte		N05   , En2 , v080
	.byte		N04   , Cs3 
	.byte	W01
	.byte		N03   , An2 , v060
	.byte		N03   , En3 , v072
	.byte	W10
	.byte		N08   , An2 
	.byte	W11
	.byte		N05   , An2 , v060
	.byte		N04   , Dn3 , v084
	.byte		N05   , Fs3 , v076
	.byte	W01
	.byte	PEND
@ 048   ----------------------------------------
mus_comfortably_numb_3_048:
	.byte		N06   , Dn2 , v092
	.byte	W12
	.byte		N03   , An2 , v060
	.byte	W13
	.byte		        An2 , v064
	.byte	W12
	.byte		        Dn2 , v056
	.byte		N04   , An2 , v064
	.byte		N01   , Dn3 , v060
	.byte		N02   , Fs3 , v056
	.byte	W11
	.byte		N04   , An2 , v072
	.byte		N03   , Fs3 
	.byte	W01
	.byte		N05   , Dn2 , v092
	.byte		N02   , Dn3 , v076
	.byte	W11
	.byte		N03   , An2 , v064
	.byte	W01
	.byte		N01   , Fs3 , v052
	.byte	W12
	.byte		N04   , An2 , v064
	.byte		N02   , Dn3 , v068
	.byte	W13
	.byte		N03   , An2 , v064
	.byte		N01   , Dn3 , v056
	.byte	W10
	.byte	PEND
@ 049   ----------------------------------------
mus_comfortably_numb_3_049:
	.byte	W01
	.byte		N05   , Dn2 , v096
	.byte		N04   , An2 , v072
	.byte		N02   , Fs3 , v080
	.byte	W01
	.byte		N01   , Dn3 
	.byte	W11
	.byte		N03   , An2 , v056
	.byte	W11
	.byte		N03   
	.byte	W12
	.byte		N04   , Dn2 , v076
	.byte		N04   , An2 , v068
	.byte	W01
	.byte		N01   , Dn3 , v072
	.byte		N02   , Fs3 , v064
	.byte	W11
	.byte		N04   , Dn2 , v080
	.byte		N04   , An2 , v064
	.byte	W01
	.byte		N02   , Dn3 , v068
	.byte		N02   , Fs3 , v056
	.byte	W12
	.byte		N03   , An2 , v064
	.byte	W12
	.byte		N04   , Dn2 , v092
	.byte		N03   , An2 , v072
	.byte	W01
	.byte		N02   , Dn3 , v080
	.byte		N02   , Fs3 , v072
	.byte	W11
	.byte		N06   , An2 
	.byte	W11
	.byte	PEND
@ 050   ----------------------------------------
mus_comfortably_numb_3_050:
	.byte	W01
	.byte		N03   , An2 , v060
	.byte		N03   , Cs3 , v084
	.byte		N03   , En3 , v076
	.byte	W01
	.byte		N04   , En2 , v092
	.byte	W12
	.byte		N02   , An2 , v060
	.byte		N01   , Cs3 , v048
	.byte	W12
	.byte		N02   , An2 , v060
	.byte		N01   , Cs3 , v064
	.byte		N01   , En3 , v060
	.byte	W11
	.byte		N04   , En2 , v088
	.byte		N03   , An2 , v068
	.byte		N03   , Cs3 , v080
	.byte	W01
	.byte		N02   , En3 , v072
	.byte	W11
	.byte		N05   , En2 , v080
	.byte		N03   , An2 , v072
	.byte		N03   , Cs3 , v092
	.byte	W01
	.byte		N02   , En3 , v076
	.byte	W23
	.byte		N01   , Cs3 , v056
	.byte	W01
	.byte		N02   , An2 , v048
	.byte	W10
	.byte		        Cs3 , v072
	.byte	W01
	.byte		N04   , En2 , v088
	.byte		N02   , An2 , v060
	.byte	W11
	.byte	PEND
@ 051   ----------------------------------------
mus_comfortably_numb_3_051:
	.byte		N04   , An2 , v068
	.byte		N03   , Cs3 , v092
	.byte	W01
	.byte		N04   , En2 , v084
	.byte		N02   , En3 , v076
	.byte	W24
	.byte		        An2 , v052
	.byte	W12
	.byte		N03   , En2 , v076
	.byte		N03   , An2 , v060
	.byte		N02   , Cs3 , v076
	.byte	W01
	.byte		N01   , En3 , v052
	.byte	W11
	.byte		N04   , En2 , v084
	.byte		N04   , An2 , v064
	.byte		N04   , Cs3 , v092
	.byte		N02   , En3 , v072
	.byte	W12
	.byte		N03   , An2 , v056
	.byte	W13
	.byte		N02   , Cs3 , v080
	.byte	W01
	.byte		        An2 , v064
	.byte		N01   , En3 , v060
	.byte	W09
	.byte		N02   , Cs3 , v064
	.byte	W01
	.byte		        En2 , v072
	.byte		N03   , An2 , v076
	.byte	W11
	.byte	PEND
@ 052   ----------------------------------------
mus_comfortably_numb_3_052:
	.byte	W01
	.byte		N04   , En2 , v092
	.byte		N03   , Gn2 , v084
	.byte		N03   , Cn3 , v104
	.byte		N04   , En3 , v088
	.byte	W13
	.byte		N02   , Gn2 , v048
	.byte	W23
	.byte		N04   , En2 , v088
	.byte		N01   , En3 , v052
	.byte	W11
	.byte		N04   , En2 , v084
	.byte		N03   , Gn2 , v072
	.byte		N02   , Cn3 , v080
	.byte	W01
	.byte		        En3 , v068
	.byte	W32
	.byte	W03
	.byte		        En2 , v056
	.byte	W01
	.byte		N03   , Gn2 , v064
	.byte		N01   , Cn3 , v060
	.byte		N02   , En3 
	.byte	W10
	.byte		N05   , En2 , v084
	.byte	W01
	.byte	PEND
@ 053   ----------------------------------------
mus_comfortably_numb_3_053:
	.byte		N04   , Gn2 , v068
	.byte		N03   , Cn3 , v084
	.byte		N02   , En3 , v072
	.byte	W13
	.byte		        Gn2 , v048
	.byte	W23
	.byte		N03   , Gn2 , v064
	.byte		N02   , Cn3 , v072
	.byte	W01
	.byte		N03   , En2 , v080
	.byte		N02   , En3 , v064
	.byte	W11
	.byte		N03   , Gn2 , v068
	.byte		N03   , Cn3 , v088
	.byte	W01
	.byte		        En2 
	.byte		N03   , En3 , v072
	.byte	W12
	.byte		        Gn2 , v068
	.byte	W12
	.byte		N04   , En2 , v076
	.byte		N03   , Cn3 , v084
	.byte		N03   , En3 , v076
	.byte	W11
	.byte		N07   , Gn2 
	.byte	W12
	.byte	PEND
@ 054   ----------------------------------------
mus_comfortably_numb_3_054:
	.byte		N05   , Dn2 , v092
	.byte	W01
	.byte		N03   , Gn2 , v064
	.byte		N04   , Bn2 , v088
	.byte		N03   , Dn3 , v076
	.byte	W13
	.byte		N04   , Gn2 , v064
	.byte	W24
	.byte	W01
	.byte		N03   , Dn2 , v080
	.byte		N02   , Gn2 , v060
	.byte		N02   , Bn2 , v076
	.byte	W01
	.byte		N01   , Dn3 , v060
	.byte	W10
	.byte		N04   , Dn2 , v080
	.byte		N03   , Gn2 , v072
	.byte		N03   , Bn2 , v088
	.byte	W01
	.byte		N02   , Dn3 , v076
	.byte	W10
	.byte		N03   , Gn2 , v064
	.byte	W24
	.byte	W01
	.byte		N02   , Dn3 
	.byte	W01
	.byte		        Gn2 , v060
	.byte	W09
	.byte	PEND
@ 055   ----------------------------------------
mus_comfortably_numb_3_055:
	.byte		N05   , Dn2 , v092
	.byte	W01
	.byte		N02   , Gn2 , v068
	.byte		N03   , Bn2 , v092
	.byte		N03   , Dn3 , v076
	.byte	W12
	.byte		        Gn2 , v060
	.byte	W24
	.byte		N05   , Dn2 , v084
	.byte		N02   , Bn2 , v076
	.byte	W01
	.byte		N01   , Gn2 , v052
	.byte		N01   , Dn3 , v068
	.byte	W11
	.byte		N04   , Dn2 , v088
	.byte		N03   , Bn2 , v092
	.byte	W01
	.byte		N02   , Gn2 , v072
	.byte		N02   , Dn3 , v076
	.byte	W11
	.byte		N04   , Gn2 , v072
	.byte	W12
	.byte		N05   , Dn2 , v088
	.byte		N03   , Bn2 , v092
	.byte	W01
	.byte		        Dn3 , v080
	.byte	W11
	.byte		N08   , Gn2 , v084
	.byte	W11
	.byte	PEND
@ 056   ----------------------------------------
mus_comfortably_numb_3_056:
	.byte	W01
	.byte		N03   , Gn2 , v056
	.byte		N03   , Cn3 , v080
	.byte	W01
	.byte		N04   , En2 , v096
	.byte		N02   , En3 , v064
	.byte	W12
	.byte		N03   , Gn2 , v060
	.byte	W13
	.byte		N02   , Gn2 , v048
	.byte	W11
	.byte		N04   , En2 , v084
	.byte		N04   , Gn2 , v064
	.byte	W01
	.byte		N02   , Cn3 , v076
	.byte		N02   , En3 , v064
	.byte	W11
	.byte		N04   , En2 , v084
	.byte		N03   , Cn3 
	.byte	W01
	.byte		        Gn2 , v064
	.byte		N02   , En3 , v068
	.byte	W11
	.byte		N04   , Gn2 , v060
	.byte	W12
	.byte		N03   , Gn2 , v052
	.byte	W01
	.byte		N01   , Cn3 
	.byte	W11
	.byte		N04   , En2 , v084
	.byte	W01
	.byte		N03   , Gn2 , v068
	.byte		N01   , Cn3 
	.byte		N02   , En3 , v060
	.byte	W09
	.byte	PEND
@ 057   ----------------------------------------
mus_comfortably_numb_3_057:
	.byte	W02
	.byte		N04   , En2 , v080
	.byte		N03   , Cn3 , v092
	.byte	W01
	.byte		        Gn2 , v072
	.byte		N03   , En3 , v076
	.byte	W12
	.byte		N02   , Gn2 , v052
	.byte	W11
	.byte		        Gn2 , v048
	.byte	W12
	.byte		N03   , Gn2 , v056
	.byte	W01
	.byte		N01   , Cn3 
	.byte		N01   , En3 , v052
	.byte	W10
	.byte		N04   , En2 , v080
	.byte		N03   , Cn3 , v092
	.byte	W01
	.byte		        Gn2 , v068
	.byte		N02   , En3 , v076
	.byte	W12
	.byte		N03   , Gn2 , v048
	.byte	W12
	.byte		N04   , En2 , v092
	.byte		N04   , En3 , v076
	.byte	W01
	.byte		N02   , Cn3 , v080
	.byte	W11
	.byte		N08   , Gn2 , v076
	.byte	W10
	.byte	PEND
@ 058   ----------------------------------------
mus_comfortably_numb_3_058:
	.byte		N04   , Gn2 , v048
	.byte		N04   , Bn2 , v092
	.byte	W01
	.byte		N05   , Dn2 
	.byte		N04   , Dn3 , v080
	.byte	W12
	.byte		N03   , Gn2 , v060
	.byte	W24
	.byte	W01
	.byte		        Dn2 , v072
	.byte		N03   , Gn2 , v060
	.byte		N02   , Bn2 , v076
	.byte	W01
	.byte		        Dn3 , v068
	.byte	W10
	.byte		N04   , Dn2 , v088
	.byte		N03   , Bn2 , v092
	.byte	W01
	.byte		        Gn2 , v068
	.byte		N03   , Dn3 , v076
	.byte	W11
	.byte		        Gn2 , v056
	.byte	W12
	.byte		N02   , Bn2 , v072
	.byte	W01
	.byte		        Gn2 , v060
	.byte		N02   , Dn3 , v064
	.byte	W10
	.byte		N04   , Dn2 , v096
	.byte	W01
	.byte		N02   , Bn2 , v088
	.byte	W01
	.byte		N03   , Gn2 , v068
	.byte		N02   , Dn3 , v076
	.byte	W10
	.byte	PEND
@ 059   ----------------------------------------
mus_comfortably_numb_3_059:
	.byte		N04   , Dn2 , v092
	.byte	W01
	.byte		N03   , Gn2 , v072
	.byte		N02   , Bn2 , v088
	.byte		N02   , Dn3 , v076
	.byte	W12
	.byte		        Gn2 , v056
	.byte	W24
	.byte	W01
	.byte		N03   , Dn2 , v092
	.byte		N03   , Gn2 , v068
	.byte		N01   , Bn2 , v084
	.byte	W01
	.byte		N02   , Dn3 , v076
	.byte	W10
	.byte		N04   , Dn2 , v092
	.byte		N04   , Bn2 , v096
	.byte	W01
	.byte		N03   , Gn2 , v072
	.byte		N03   , Dn3 , v084
	.byte	W10
	.byte		N04   , Gn2 , v068
	.byte	W11
	.byte		        Dn2 , v076
	.byte	W01
	.byte		N03   , Bn2 , v088
	.byte	W01
	.byte		N01   , Gn2 , v052
	.byte		N03   , Dn3 , v072
	.byte	W10
	.byte		N04   , Gn2 , v080
	.byte	W11
	.byte		N05   , Cs3 , v108
	.byte	W01
	.byte		N04   , An2 , v088
	.byte	W01
	.byte	PEND
@ 060   ----------------------------------------
mus_comfortably_numb_3_060:
	.byte		N04   , En2 , v096
	.byte		N03   , En3 , v084
	.byte	W12
	.byte		        An2 , v048
	.byte	W13
	.byte		N02   , An2 , v060
	.byte	W11
	.byte		N03   , An2 , v064
	.byte		N03   , Cs3 , v084
	.byte	W01
	.byte		N02   , En3 , v068
	.byte	W11
	.byte		        Cs3 , v080
	.byte	W01
	.byte		N03   , En2 
	.byte		N03   , An2 , v064
	.byte		N02   , En3 , v068
	.byte	W12
	.byte		        An2 , v056
	.byte	W12
	.byte		        An2 , v064
	.byte		N02   , Cs3 , v084
	.byte	W01
	.byte		N01   , En3 , v068
	.byte	W11
	.byte		N03   , An2 , v064
	.byte		N02   , Cs3 , v076
	.byte	W01
	.byte		N01   , En3 , v064
	.byte	W10
	.byte	PEND
@ 061   ----------------------------------------
mus_comfortably_numb_3_061:
	.byte	W01
	.byte		N03   , En2 , v080
	.byte		N04   , An2 , v068
	.byte		N02   , Cs3 , v080
	.byte	W01
	.byte		N01   , En3 , v072
	.byte	W11
	.byte		N02   , An2 , v048
	.byte		N02   , Cs3 , v064
	.byte	W12
	.byte		N03   , An2 , v060
	.byte		N02   , Cs3 , v080
	.byte		N01   , En3 , v060
	.byte	W11
	.byte		N03   , An2 , v064
	.byte		N03   , Cs3 , v092
	.byte	W01
	.byte		N02   , En3 , v072
	.byte	W11
	.byte		N05   , En2 , v088
	.byte		N04   , An2 , v068
	.byte		N04   , Cs3 , v092
	.byte	W01
	.byte		N02   , En3 , v072
	.byte	W11
	.byte		N04   , An2 , v056
	.byte	W14
	.byte		N03   , An2 , v060
	.byte		N04   , Cs3 , v100
	.byte	W01
	.byte		N03   , En2 , v080
	.byte		N03   , En3 
	.byte	W10
	.byte		N07   , An2 , v064
	.byte	W11
	.byte	PEND
@ 062   ----------------------------------------
mus_comfortably_numb_3_062:
	.byte	W02
	.byte		N02   , Cn3 , v100
	.byte		N02   , En3 , v108
	.byte		N02   , Gn3 , v100
	.byte	W32
	.byte	W02
	.byte		        Cn3 , v080
	.byte		N02   , En3 , v084
	.byte		N02   , Gn3 , v072
	.byte	W11
	.byte		N03   , Cn3 , v080
	.byte		N02   , En3 , v092
	.byte		N03   , Gn3 , v080
	.byte	W24
	.byte		N02   , En3 , v072
	.byte	W01
	.byte		        Cn3 , v064
	.byte		N02   , Gn3 
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W12
	.byte	PEND
@ 063   ----------------------------------------
mus_comfortably_numb_3_063:
	.byte		N03   , Gn2 , v076
	.byte		N02   , Bn2 , v088
	.byte		N01   , Dn3 , v072
	.byte	W36
	.byte	W01
	.byte		N02   , Gn2 , v076
	.byte		N02   , Bn2 , v092
	.byte		N01   , Dn3 , v072
	.byte	W12
	.byte		N03   , Gn2 , v076
	.byte		N02   , Bn2 , v092
	.byte		N02   , Dn3 , v072
	.byte	W23
	.byte		        Dn3 , v076
	.byte	W01
	.byte		        Gn2 , v068
	.byte		N02   , Bn2 , v088
	.byte	W22
	.byte		        Fs3 , v076
	.byte	W01
	.byte	PEND
@ 064   ----------------------------------------
mus_comfortably_numb_3_064:
	.byte		N02   , An2 , v076
	.byte		N01   , Dn3 
	.byte	W12
	.byte		N03   , An2 , v068
	.byte		N02   , Fs3 , v060
	.byte	W01
	.byte		N01   , Dn3 , v056
	.byte	W11
	.byte		N03   , An2 , v072
	.byte	W01
	.byte		N01   , Dn3 
	.byte		N02   , Fs3 , v080
	.byte	W12
	.byte		N03   , An2 , v072
	.byte		N02   , Fs3 , v080
	.byte	W01
	.byte		N01   , Dn3 , v072
	.byte	W11
	.byte		N03   , An2 , v080
	.byte		N03   , Fs3 , v096
	.byte	W01
	.byte		N02   , Dn3 , v088
	.byte	W22
	.byte		N04   , An2 , v056
	.byte		N02   , Fs3 , v052
	.byte	W12
	.byte		N04   , An2 , v056
	.byte		N02   , Fs3 , v052
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
	.byte	W01
	.byte		N04   , An2 , v084
	.byte		N02   , Dn3 
	.byte		N03   , Fs3 , v092
	.byte	W12
	.byte		        An2 , v060
	.byte		N01   , Fs3 , v056
	.byte	W24
	.byte		N03   , An2 , v072
	.byte		N01   , Fs3 , v088
	.byte	W01
	.byte		        Dn3 , v080
	.byte	W11
	.byte		N03   , An2 
	.byte	W01
	.byte		N02   , Dn3 , v092
	.byte		N03   , Fs3 , v100
	.byte	W13
	.byte		N01   , An2 , v060
	.byte	W10
	.byte		N02   , Fs3 , v072
	.byte	W01
	.byte		N01   , An2 , v064
	.byte		N01   , Dn3 
	.byte	W11
	.byte		N03   , An2 , v080
	.byte	W11
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
	.byte	PATT
	 .word	mus_comfortably_numb_3_027
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_028
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_029
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_030
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_031
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_032
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_033
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_034
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_035
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_036
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_037
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_038
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_039
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_040
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_041
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_042
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_043
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_044
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_045
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_046
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_047
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_048
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_049
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_050
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_051
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_052
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_053
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_054
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_055
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_056
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_057
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_058
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_059
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_060
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_061
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_062
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_063
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_3_064
@ 141   ----------------------------------------
	.byte	W01
	.byte		N04   , An2 , v084
	.byte		N02   , Dn3 
	.byte		N03   , Fs3 , v092
	.byte	W12
	.byte		        An2 , v060
	.byte		N01   , Fs3 , v056
	.byte	W24
	.byte		N03   , An2 , v072
	.byte		N01   , Fs3 , v088
	.byte	W01
	.byte		        Dn3 , v080
	.byte	W11
	.byte		N03   , An2 
	.byte	W01
	.byte		N02   , Dn3 , v092
	.byte		N03   , Fs3 , v100
	.byte	W13
	.byte		N01   , An2 , v060
	.byte	W10
	.byte		N02   , Fs3 , v072
	.byte	W01
	.byte		N01   , An2 , v064
	.byte		N01   , Dn3 
	.byte	W11
	.byte		N03   , An2 , v080
	.byte	W03
	.byte	FINE

@**************** Track 4 (Midi-Chn.7) ****************@

mus_comfortably_numb_4:
	.byte		VOL   , 127*mus_comfortably_numb_mvl/mxv
	.byte	KEYSH , mus_comfortably_numb_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
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
	.byte	W88
	.byte		N10   , An3 , v127
	.byte	W06
	.byte		N05   , Dn4 
	.byte	W02
@ 066   ----------------------------------------
	.byte		TIE   , Fs4 
	.byte	W03
	.byte		N01   , An3 
	.byte	W92
	.byte	W01
@ 067   ----------------------------------------
	.byte	W21
	.byte		EOT   , Fs4 
	.byte	W24
	.byte	W02
	.byte		N18   
	.byte	W18
	.byte		N17   , Gn4 
	.byte	W17
	.byte		N13   , Fs4 
	.byte	W14
@ 068   ----------------------------------------
	.byte		N60   , En4 
	.byte	W60
	.byte	W01
	.byte		N19   , Dn4 
	.byte	W19
	.byte		N14   , Cs4 
	.byte	W15
	.byte		N17   , An3 
	.byte	W01
@ 069   ----------------------------------------
	.byte	W16
	.byte		N68   , En3 , v127, gtp1
	.byte	W80
@ 070   ----------------------------------------
	.byte	W02
	.byte		TIE   , Dn3 
	.byte	W92
	.byte	W02
@ 071   ----------------------------------------
	.byte	W19
	.byte		EOT   
	.byte	W21
	.byte		N08   , An3 
	.byte	W06
	.byte		N05   , Dn4 
	.byte	W02
	.byte		N18   , Fs4 
	.byte	W17
	.byte		        Gn4 
	.byte	W18
	.byte		N15   , Fs4 
	.byte	W13
@ 072   ----------------------------------------
	.byte	W01
	.byte		N56   , En4 , v127, gtp3
	.byte	W60
	.byte	W01
	.byte		N21   , Dn4 
	.byte	W19
	.byte		N13   , Cs4 
	.byte	W15
@ 073   ----------------------------------------
	.byte		N16   , An3 
	.byte	W16
	.byte		N36   , En3 , v127, gtp3
	.byte	W44
	.byte	W02
	.byte		N15   
	.byte	W18
	.byte		        Fs3 
	.byte	W16
@ 074   ----------------------------------------
	.byte		TIE   , Gn3 
	.byte	W96
@ 075   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		EOT   
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N07   , Fs3 
	.byte	W06
	.byte		N14   , Gn3 
	.byte	W14
	.byte		N15   , Fs3 
	.byte	W16
	.byte		N16   , En3 
	.byte	W17
@ 076   ----------------------------------------
	.byte		TIE   , Dn3 
	.byte	W96
@ 077   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		EOT   
	.byte	W28
	.byte	W01
	.byte		N14   , En3 
	.byte	W17
	.byte		N15   , Fs3 
	.byte	W15
	.byte		N84   , Gn3 , v127, gtp3
	.byte	W01
@ 078   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		N07   , An3 
	.byte	W03
	.byte		        Dn4 
	.byte	W04
	.byte		N18   , Gn4 
	.byte	W02
@ 079   ----------------------------------------
	.byte	W16
	.byte		N16   , Fs4 
	.byte	W17
	.byte		N19   , En4 
	.byte	W18
	.byte		N14   , Dn4 
	.byte	W15
	.byte		N17   , Bn3 
	.byte	W16
	.byte		N16   , Gn3 
	.byte	W14
@ 080   ----------------------------------------
	.byte	W02
	.byte		N80   , Dn3 , v127, gtp1
	.byte	W02
	.byte		N01   , Gn3 
	.byte	W80
	.byte		N12   , Cn3 
	.byte	W12
@ 081   ----------------------------------------
	.byte	W01
	.byte		N68   , Bn2 , v127, gtp3
	.byte	W92
	.byte	W03
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
	.byte	W96
@ 131   ----------------------------------------
	.byte	W96
@ 132   ----------------------------------------
	.byte	W96
@ 133   ----------------------------------------
	.byte	W96
@ 134   ----------------------------------------
	.byte	W96
@ 135   ----------------------------------------
	.byte	W96
@ 136   ----------------------------------------
	.byte	W96
@ 137   ----------------------------------------
	.byte	W96
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
	.byte	W78
	.byte		VOICE , 34
	.byte	W18
@ 144   ----------------------------------------
	.byte		TIE   , Bn1 
	.byte	W96
@ 145   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   
	.byte	W15
@ 146   ----------------------------------------
	.byte		TIE   , An1 
	.byte	W96
@ 147   ----------------------------------------
	.byte	W72
	.byte	W03
	.byte		EOT   
	.byte	W21
@ 148   ----------------------------------------
	.byte	W01
	.byte		N60   , Gn1 , v127, gtp2
	.byte	W68
	.byte	W03
	.byte		N22   , Fs1 
	.byte	W22
	.byte		TIE   , En1 
	.byte	W02
@ 149   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 150   ----------------------------------------
mus_comfortably_numb_4_150:
	.byte	W01
	.byte		TIE   , Bn1 , v127
	.byte	W92
	.byte	W03
	.byte	PEND
@ 151   ----------------------------------------
	.byte	W76
	.byte		EOT   
	.byte	W20
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_4_150
@ 153   ----------------------------------------
	.byte	W80
	.byte		EOT   , Bn1 
	.byte	W16
@ 154   ----------------------------------------
mus_comfortably_numb_4_154:
	.byte	W01
	.byte		TIE   , An1 , v127
	.byte	W92
	.byte	W03
	.byte	PEND
@ 155   ----------------------------------------
	.byte	W80
	.byte	W02
	.byte		EOT   
	.byte	W14
@ 156   ----------------------------------------
	.byte	W01
	.byte		N68   , Gn1 , v127, gtp2
	.byte	W72
	.byte		N22   , Fs1 
	.byte	W23
@ 157   ----------------------------------------
	.byte	W01
	.byte		N92   , En1 , v127, gtp2
	.byte	W92
	.byte	W03
@ 158   ----------------------------------------
	.byte		TIE   , Bn1 
	.byte	W96
@ 159   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   
	.byte	W15
@ 160   ----------------------------------------
mus_comfortably_numb_4_160:
	.byte	W02
	.byte		TIE   , Bn1 , v127
	.byte	W92
	.byte	W02
	.byte	PEND
@ 161   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		EOT   
	.byte	W17
@ 162   ----------------------------------------
	.byte		TIE   , An1 
	.byte	W96
@ 163   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   
	.byte	W15
@ 164   ----------------------------------------
	.byte		N68   , Gn1 , v127, gtp3
	.byte	W68
	.byte	W03
	.byte		N23   , Fs1 
	.byte	W24
	.byte		TIE   , En1 
	.byte	W01
@ 165   ----------------------------------------
	.byte	W96
@ 166   ----------------------------------------
	.byte	W01
	.byte		N44   , Bn1 , v127, gtp2
	.byte	W02
	.byte		EOT   , En1 
	.byte	W92
	.byte	W01
@ 167   ----------------------------------------
	.byte	W01
	.byte		N07   , Bn1 
	.byte	W24
	.byte		N56   , Bn1 , v127, gtp3
	.byte	W68
	.byte	W03
@ 168   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_4_160
@ 169   ----------------------------------------
	.byte	W84
	.byte	W01
	.byte		EOT   , Bn1 
	.byte	W11
@ 170   ----------------------------------------
	.byte		TIE   , An1 , v127
	.byte	W96
@ 171   ----------------------------------------
	.byte	W80
	.byte	W02
	.byte		EOT   
	.byte	W14
@ 172   ----------------------------------------
	.byte	W01
	.byte		N72   , Gn1 
	.byte	W68
	.byte	W02
	.byte		N22   , Fs1 
	.byte	W24
	.byte	W01
@ 173   ----------------------------------------
	.byte		N92   , En1 , v127, gtp2
	.byte	W96
@ 174   ----------------------------------------
	.byte		TIE   , Bn1 
	.byte	W96
@ 175   ----------------------------------------
	.byte	W80
	.byte	W02
	.byte		EOT   
	.byte	W14
@ 176   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 177   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 178   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_4_154
@ 179   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		EOT   , An1 
	.byte	W02
@ 180   ----------------------------------------
	.byte		N72   , Gn1 , v127, gtp1
	.byte	W68
	.byte	W03
	.byte		N22   , Fs1 
	.byte	W22
	.byte		TIE   , En1 
	.byte	W03
@ 181   ----------------------------------------
	.byte	W96
@ 182   ----------------------------------------
	.byte		        Bn1 
	.byte	W02
	.byte		EOT   , En1 
	.byte	W92
	.byte	W02
@ 183   ----------------------------------------
	.byte	W96
@ 184   ----------------------------------------
	.byte	W96
@ 185   ----------------------------------------
	.byte	W04
	.byte		        Bn1 
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_comfortably_numb_5:
	.byte		VOL   , 127*mus_comfortably_numb_mvl/mxv
	.byte	KEYSH , mus_comfortably_numb_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		        0
	.byte		        0
	.byte		        0
	.byte		        0
	.byte		        0
	.byte		        0
	.byte		        0
	.byte		N03   , Ds1 , v048
	.byte		N03   , Ds3 
	.byte		N03   , As3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		N03   
	.byte		N03   , Gs3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
@ 001   ----------------------------------------
mus_comfortably_numb_5_001:
	.byte		N03   , Ds1 , v048
	.byte		N03   , Ds3 
	.byte	W24
	.byte		        Ds1 
	.byte		N03   , Ds3 
	.byte	W24
	.byte		N03   
	.byte		N03   , Gs3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_comfortably_numb_5_002:
	.byte		N03   , Ds1 , v048
	.byte		N03   , Ds3 
	.byte	W24
	.byte		N03   
	.byte	W24
	.byte		N03   
	.byte		N03   , Gs3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 004   ----------------------------------------
mus_comfortably_numb_5_004:
	.byte		N03   , Ds1 , v048
	.byte		N03   , Ds3 
	.byte		N03   , As3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		N03   
	.byte		N03   , Gs3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_002
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_002
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 028   ----------------------------------------
mus_comfortably_numb_5_028:
	.byte		N03   , Ds1 , v048
	.byte		N03   , As3 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Gs3 
	.byte		N03   , Ds4 
	.byte	W24
	.byte		N03   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_comfortably_numb_5_029:
	.byte		N03   , Ds1 , v048
	.byte		N03   , Ds4 
	.byte	W24
	.byte		N03   
	.byte	W24
	.byte		        Gs3 
	.byte		N03   , Ds4 
	.byte	W24
	.byte		N03   
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
mus_comfortably_numb_5_030:
	.byte		N03   , Ds1 , v048
	.byte		N03   , Ds4 
	.byte	W24
	.byte		N03   
	.byte	W24
	.byte		        Gs3 
	.byte		N03   , Ds4 
	.byte	W24
	.byte		N03   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 058   ----------------------------------------
	.byte		N03   , Ds1 , v048
	.byte		N03   , As3 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Gs3 
	.byte		N03   , Ds4 
	.byte	W12
	.byte		        Cs2 , v060
	.byte	W12
	.byte		N03   
	.byte	W24
@ 059   ----------------------------------------
	.byte		        Ds1 , v048
	.byte		N03   , As3 
	.byte	W36
	.byte		        Ds1 
	.byte	W24
	.byte		N03   
	.byte		N03   , Fs1 
	.byte		N03   , Gs3 
	.byte	W12
	.byte		        Ds1 
	.byte	W24
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 069   ----------------------------------------
mus_comfortably_numb_5_069:
	.byte		N03   , Cs2 , v060
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		        Ds1 , v048
	.byte	W12
	.byte		        Fs1 , v100
	.byte	W24
	.byte		        Ds1 , v048
	.byte		N03   , Fs1 
	.byte	W12
	.byte		        Ds1 
	.byte		N03   , Fs1 
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte	PEND
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_069
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_004
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_002
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_002
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_002
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_004
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_002
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_002
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_002
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_001
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_069
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 118   ----------------------------------------
mus_comfortably_numb_5_118:
	.byte		N03   , Ds1 , v048
	.byte		N03   , Ds4 
	.byte	W24
	.byte		N03   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gs3 
	.byte		N03   , Ds4 
	.byte	W48
	.byte	PEND
@ 119   ----------------------------------------
mus_comfortably_numb_5_119:
	.byte		N03   , Cs2 , v060
	.byte		N03   , Gs3 , v048
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Cs2 , v060
	.byte		N03   , Gs3 , v048
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N03   
	.byte		N03   , Fs1 , v100
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W24
	.byte		        Ds1 
	.byte		N03   , Fs1 
	.byte	W12
	.byte	PEND
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_069
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_030
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_118
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_119
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 164   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 165   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 166   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_028
@ 167   ----------------------------------------
	.byte	PATT
	 .word	mus_comfortably_numb_5_029
@ 168   ----------------------------------------
	.byte		VOL   , 100*mus_comfortably_numb_mvl/mxv
	.byte		N03   , Ds1 , v048
	.byte		N03   , As3 
	.byte	W15
	.byte		VOL   , 99*mus_comfortably_numb_mvl/mxv
	.byte	W09
	.byte		N03   , Ds4 
	.byte	W06
	.byte		VOL   , 98*mus_comfortably_numb_mvl/mxv
	.byte	W16
	.byte		        97*mus_comfortably_numb_mvl/mxv
	.byte	W02
	.byte		N03   , Gs3 
	.byte		N03   , Ds4 
	.byte	W13
	.byte		VOL   , 96*mus_comfortably_numb_mvl/mxv
	.byte	W11
	.byte		N03   
	.byte	W05
	.byte		VOL   , 95*mus_comfortably_numb_mvl/mxv
	.byte	W07
	.byte		N03   , Ds1 
	.byte	W08
	.byte		VOL   , 94*mus_comfortably_numb_mvl/mxv
	.byte	W04
@ 169   ----------------------------------------
	.byte		N03   
	.byte		N03   , Ds4 
	.byte	W11
	.byte		VOL   , 93*mus_comfortably_numb_mvl/mxv
	.byte	W13
	.byte		N03   
	.byte	W03
	.byte		VOL   , 92*mus_comfortably_numb_mvl/mxv
	.byte	W15
	.byte		        91*mus_comfortably_numb_mvl/mxv
	.byte	W06
	.byte		N03   , Gs3 
	.byte		N03   , Ds4 
	.byte	W09
	.byte		VOL   , 90*mus_comfortably_numb_mvl/mxv
	.byte	W15
	.byte		N03   
	.byte	W01
	.byte		VOL   , 89*mus_comfortably_numb_mvl/mxv
	.byte	W15
	.byte		        88*mus_comfortably_numb_mvl/mxv
	.byte	W08
@ 170   ----------------------------------------
	.byte		N03   , Ds1 
	.byte		N03   , As3 
	.byte	W07
	.byte		VOL   , 87*mus_comfortably_numb_mvl/mxv
	.byte	W16
	.byte		        86*mus_comfortably_numb_mvl/mxv
	.byte	W01
	.byte		N03   , Ds4 
	.byte	W14
	.byte		VOL   , 85*mus_comfortably_numb_mvl/mxv
	.byte	W10
	.byte		N03   , Gs3 
	.byte		N03   , Ds4 
	.byte	W05
	.byte		VOL   , 84*mus_comfortably_numb_mvl/mxv
	.byte	W16
	.byte		        83*mus_comfortably_numb_mvl/mxv
	.byte	W03
	.byte		N03   
	.byte	W12
	.byte		VOL   , 82*mus_comfortably_numb_mvl/mxv
	.byte		N03   , Ds1 
	.byte	W12
@ 171   ----------------------------------------
	.byte		N03   
	.byte		N03   , Ds4 
	.byte	W04
	.byte		VOL   , 81*mus_comfortably_numb_mvl/mxv
	.byte	W15
	.byte		        80*mus_comfortably_numb_mvl/mxv
	.byte	W05
	.byte		N03   
	.byte	W10
	.byte		VOL   , 79*mus_comfortably_numb_mvl/mxv
	.byte	W14
	.byte		N03   , Gs3 
	.byte		N03   , Ds4 
	.byte	W02
	.byte		VOL   , 78*mus_comfortably_numb_mvl/mxv
	.byte	W15
	.byte		        77*mus_comfortably_numb_mvl/mxv
	.byte	W07
	.byte		N03   
	.byte	W08
	.byte		VOL   , 76*mus_comfortably_numb_mvl/mxv
	.byte	W16
@ 172   ----------------------------------------
	.byte		        75*mus_comfortably_numb_mvl/mxv
	.byte		N03   , Ds1 
	.byte		N03   , As3 
	.byte	W15
	.byte		VOL   , 74*mus_comfortably_numb_mvl/mxv
	.byte	W09
	.byte		N03   , Ds4 
	.byte	W06
	.byte		VOL   , 73*mus_comfortably_numb_mvl/mxv
	.byte	W16
	.byte		        72*mus_comfortably_numb_mvl/mxv
	.byte	W02
	.byte		N03   , Gs3 
	.byte		N03   , Ds4 
	.byte	W13
	.byte		VOL   , 71*mus_comfortably_numb_mvl/mxv
	.byte	W11
	.byte		N03   
	.byte	W05
	.byte		VOL   , 70*mus_comfortably_numb_mvl/mxv
	.byte	W07
	.byte		N03   , Ds1 
	.byte	W08
	.byte		VOL   , 69*mus_comfortably_numb_mvl/mxv
	.byte	W04
@ 173   ----------------------------------------
	.byte		N03   
	.byte		N03   , Ds4 
	.byte	W11
	.byte		VOL   , 68*mus_comfortably_numb_mvl/mxv
	.byte	W13
	.byte		N03   
	.byte	W03
	.byte		VOL   , 67*mus_comfortably_numb_mvl/mxv
	.byte	W15
	.byte		        66*mus_comfortably_numb_mvl/mxv
	.byte	W06
	.byte		N03   , Gs3 
	.byte		N03   , Ds4 
	.byte	W09
	.byte		VOL   , 65*mus_comfortably_numb_mvl/mxv
	.byte	W15
	.byte		N03   
	.byte	W01
	.byte		VOL   , 64*mus_comfortably_numb_mvl/mxv
	.byte	W15
	.byte		        63*mus_comfortably_numb_mvl/mxv
	.byte	W08
@ 174   ----------------------------------------
	.byte		N03   , Ds1 
	.byte		N03   , As3 
	.byte	W07
	.byte		VOL   , 62*mus_comfortably_numb_mvl/mxv
	.byte	W16
	.byte		        61*mus_comfortably_numb_mvl/mxv
	.byte	W01
	.byte		N03   , Ds4 
	.byte	W14
	.byte		VOL   , 60*mus_comfortably_numb_mvl/mxv
	.byte	W10
	.byte		N03   , Gs3 
	.byte		N03   , Ds4 
	.byte	W05
	.byte		VOL   , 59*mus_comfortably_numb_mvl/mxv
	.byte	W16
	.byte		        58*mus_comfortably_numb_mvl/mxv
	.byte	W03
	.byte		N03   
	.byte	W12
	.byte		VOL   , 57*mus_comfortably_numb_mvl/mxv
	.byte		N03   , Ds1 
	.byte	W12
@ 175   ----------------------------------------
	.byte		N03   
	.byte		N03   , Ds4 
	.byte	W04
	.byte		VOL   , 56*mus_comfortably_numb_mvl/mxv
	.byte	W15
	.byte		        55*mus_comfortably_numb_mvl/mxv
	.byte	W05
	.byte		N03   
	.byte	W10
	.byte		VOL   , 54*mus_comfortably_numb_mvl/mxv
	.byte	W14
	.byte		N03   , Gs3 
	.byte		N03   , Ds4 
	.byte	W02
	.byte		VOL   , 53*mus_comfortably_numb_mvl/mxv
	.byte	W15
	.byte		        52*mus_comfortably_numb_mvl/mxv
	.byte	W07
	.byte		N03   
	.byte	W08
	.byte		VOL   , 51*mus_comfortably_numb_mvl/mxv
	.byte	W16
@ 176   ----------------------------------------
	.byte		        50*mus_comfortably_numb_mvl/mxv
	.byte		N03   , Ds1 
	.byte		N03   , As3 
	.byte	W15
	.byte		VOL   , 49*mus_comfortably_numb_mvl/mxv
	.byte	W09
	.byte		N03   , Ds4 
	.byte	W06
	.byte		VOL   , 48*mus_comfortably_numb_mvl/mxv
	.byte	W16
	.byte		        47*mus_comfortably_numb_mvl/mxv
	.byte	W02
	.byte		N03   , Gs3 
	.byte		N03   , Ds4 
	.byte	W13
	.byte		VOL   , 46*mus_comfortably_numb_mvl/mxv
	.byte	W11
	.byte		N03   
	.byte	W05
	.byte		VOL   , 45*mus_comfortably_numb_mvl/mxv
	.byte	W07
	.byte		N03   , Ds1 
	.byte	W08
	.byte		VOL   , 44*mus_comfortably_numb_mvl/mxv
	.byte	W04
@ 177   ----------------------------------------
	.byte		N03   
	.byte		N03   , Ds4 
	.byte	W11
	.byte		VOL   , 43*mus_comfortably_numb_mvl/mxv
	.byte	W13
	.byte		N03   
	.byte	W03
	.byte		VOL   , 42*mus_comfortably_numb_mvl/mxv
	.byte	W15
	.byte		        41*mus_comfortably_numb_mvl/mxv
	.byte	W06
	.byte		N03   , Gs3 
	.byte		N03   , Ds4 
	.byte	W09
	.byte		VOL   , 40*mus_comfortably_numb_mvl/mxv
	.byte	W15
	.byte		N03   
	.byte	W01
	.byte		VOL   , 39*mus_comfortably_numb_mvl/mxv
	.byte	W15
	.byte		        38*mus_comfortably_numb_mvl/mxv
	.byte	W08
@ 178   ----------------------------------------
	.byte		N03   , Ds1 
	.byte		N03   , As3 
	.byte	W07
	.byte		VOL   , 37*mus_comfortably_numb_mvl/mxv
	.byte	W16
	.byte		        36*mus_comfortably_numb_mvl/mxv
	.byte	W01
	.byte		N03   , Ds4 
	.byte	W14
	.byte		VOL   , 35*mus_comfortably_numb_mvl/mxv
	.byte	W10
	.byte		N03   , Gs3 
	.byte		N03   , Ds4 
	.byte	W05
	.byte		VOL   , 34*mus_comfortably_numb_mvl/mxv
	.byte	W16
	.byte		        33*mus_comfortably_numb_mvl/mxv
	.byte	W03
	.byte		N03   
	.byte	W12
	.byte		VOL   , 32*mus_comfortably_numb_mvl/mxv
	.byte		N03   , Ds1 
	.byte	W12
@ 179   ----------------------------------------
	.byte		N03   
	.byte		N03   , Ds4 
	.byte	W04
	.byte		VOL   , 31*mus_comfortably_numb_mvl/mxv
	.byte	W15
	.byte		        30*mus_comfortably_numb_mvl/mxv
	.byte	W05
	.byte		N03   
	.byte	W10
	.byte		VOL   , 29*mus_comfortably_numb_mvl/mxv
	.byte	W14
	.byte		N03   , Gs3 
	.byte		N03   , Ds4 
	.byte	W02
	.byte		VOL   , 28*mus_comfortably_numb_mvl/mxv
	.byte	W15
	.byte		        27*mus_comfortably_numb_mvl/mxv
	.byte	W07
	.byte		N03   
	.byte	W08
	.byte		VOL   , 26*mus_comfortably_numb_mvl/mxv
	.byte	W16
@ 180   ----------------------------------------
	.byte		        25*mus_comfortably_numb_mvl/mxv
	.byte		N03   , Ds1 
	.byte		N03   , As3 
	.byte	W15
	.byte		VOL   , 24*mus_comfortably_numb_mvl/mxv
	.byte	W09
	.byte		N03   , Ds4 
	.byte	W06
	.byte		VOL   , 23*mus_comfortably_numb_mvl/mxv
	.byte	W16
	.byte		        22*mus_comfortably_numb_mvl/mxv
	.byte	W02
	.byte		N03   , Gs3 
	.byte		N03   , Ds4 
	.byte	W13
	.byte		VOL   , 21*mus_comfortably_numb_mvl/mxv
	.byte	W11
	.byte		N03   
	.byte	W05
	.byte		VOL   , 20*mus_comfortably_numb_mvl/mxv
	.byte	W07
	.byte		N03   , Ds1 
	.byte	W08
	.byte		VOL   , 19*mus_comfortably_numb_mvl/mxv
	.byte	W04
@ 181   ----------------------------------------
	.byte		N03   
	.byte		N03   , Ds4 
	.byte	W11
	.byte		VOL   , 18*mus_comfortably_numb_mvl/mxv
	.byte	W13
	.byte		N03   
	.byte	W03
	.byte		VOL   , 17*mus_comfortably_numb_mvl/mxv
	.byte	W15
	.byte		        16*mus_comfortably_numb_mvl/mxv
	.byte	W06
	.byte		N03   , Gs3 
	.byte		N03   , Ds4 
	.byte	W09
	.byte		VOL   , 15*mus_comfortably_numb_mvl/mxv
	.byte	W15
	.byte		N03   
	.byte	W01
	.byte		VOL   , 14*mus_comfortably_numb_mvl/mxv
	.byte	W15
	.byte		        13*mus_comfortably_numb_mvl/mxv
	.byte	W08
@ 182   ----------------------------------------
	.byte		N03   , Ds1 
	.byte		N03   , As3 
	.byte	W07
	.byte		VOL   , 12*mus_comfortably_numb_mvl/mxv
	.byte	W16
	.byte		        11*mus_comfortably_numb_mvl/mxv
	.byte	W01
	.byte		N03   , Ds4 
	.byte	W14
	.byte		VOL   , 10*mus_comfortably_numb_mvl/mxv
	.byte	W10
	.byte		N03   , Gs3 
	.byte		N03   , Ds4 
	.byte	W05
	.byte		VOL   , 9*mus_comfortably_numb_mvl/mxv
	.byte	W16
	.byte		        8*mus_comfortably_numb_mvl/mxv
	.byte	W03
	.byte		N03   
	.byte	W12
	.byte		VOL   , 7*mus_comfortably_numb_mvl/mxv
	.byte		N03   , Ds1 
	.byte	W12
@ 183   ----------------------------------------
	.byte		N03   
	.byte		N03   , Ds4 
	.byte	W04
	.byte		VOL   , 6*mus_comfortably_numb_mvl/mxv
	.byte	W15
	.byte		        5*mus_comfortably_numb_mvl/mxv
	.byte	W05
	.byte		N03   
	.byte	W10
	.byte		VOL   , 4*mus_comfortably_numb_mvl/mxv
	.byte	W14
	.byte		N03   , Gs3 
	.byte		N03   , Ds4 
	.byte	W02
	.byte		VOL   , 3*mus_comfortably_numb_mvl/mxv
	.byte	W15
	.byte		        2*mus_comfortably_numb_mvl/mxv
	.byte	W07
	.byte		N03   
	.byte	W08
	.byte		VOL   , 1*mus_comfortably_numb_mvl/mxv
	.byte	W16
@ 184   ----------------------------------------
	.byte		        0*mus_comfortably_numb_mvl/mxv
	.byte		N03   , Ds1 
	.byte		N03   , As3 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Gs3 
	.byte		N03   , Ds4 
	.byte	W24
	.byte		N03   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
@ 185   ----------------------------------------
	.byte		N03   
	.byte		N03   , Ds4 
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

mus_comfortably_numb:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_comfortably_numb_pri	@ Priority
	.byte	mus_comfortably_numb_rev	@ Reverb.

	.word	mus_comfortably_numb_grp

	.word	mus_comfortably_numb_1
	.word	mus_comfortably_numb_2
	.word	mus_comfortably_numb_3
	.word	mus_comfortably_numb_4
	.word	mus_comfortably_numb_5

	.end
