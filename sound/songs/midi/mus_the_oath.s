	.include "MPlayDef.s"

	.equ	mus_the_oath_grp, voicegroup_brothers
	.equ	mus_the_oath_pri, 0
	.equ	mus_the_oath_rev, reverb_set+18
	.equ	mus_the_oath_mvl, 90
	.equ	mus_the_oath_key, 0
	.equ	mus_the_oath_tbs, 1
	.equ	mus_the_oath_exg, 0
	.equ	mus_the_oath_cmp, 1

	.section .rodata
	.global	mus_the_oath
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_the_oath_1:
	.byte	KEYSH , mus_the_oath_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*mus_the_oath_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 88*mus_the_oath_mvl/mxv
	.byte		PAN   , c_v-10
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
mus_the_oath_1_018:
	.byte		N44   , Fs3 , v076
	.byte	W48
	.byte		N23   , En3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
mus_the_oath_1_019:
	.byte		N23   , Fs3 , v076
	.byte	W24
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N23   , En3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
mus_the_oath_1_020:
	.byte		N23   , En3 , v076
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte	PEND
@ 021   ----------------------------------------
	.byte		TIE   , Bn2 
	.byte	W96
@ 022   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
@ 023   ----------------------------------------
mus_the_oath_1_023:
	.byte		N44   , Bn4 , v076
	.byte	W48
	.byte		        Cs4 
	.byte	W48
	.byte	PEND
@ 024   ----------------------------------------
mus_the_oath_1_024:
	.byte		N23   , Dn4 , v076
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Gs4 
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
	.byte		TIE   , An4 
	.byte	W96
@ 026   ----------------------------------------
	.byte	W76
	.byte	W01
	.byte		EOT   
	.byte	W19
@ 027   ----------------------------------------
mus_the_oath_1_027:
	.byte		N44   , Bn3 , v076
	.byte	W48
	.byte		N23   , Gn3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
mus_the_oath_1_028:
	.byte		N23   , An3 , v076
	.byte	W24
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte	PEND
@ 029   ----------------------------------------
	.byte		        Gn3 
	.byte	W24
	.byte		N68   , En3 
	.byte	W72
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
	.byte	PATT
	 .word	mus_the_oath_1_018
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_1_019
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_1_020
@ 060   ----------------------------------------
	.byte		TIE   , Bn2 , v076
	.byte	W96
@ 061   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_1_023
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_1_024
@ 064   ----------------------------------------
	.byte		TIE   , An4 , v076
	.byte	W96
@ 065   ----------------------------------------
	.byte	W76
	.byte	W01
	.byte		EOT   
	.byte	W19
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_1_027
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_1_028
@ 068   ----------------------------------------
	.byte		N23   , Gn3 , v076
	.byte	W24
	.byte		N68   , En3 
	.byte	W68
	.byte	W03
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_the_oath_2:
	.byte	KEYSH , mus_the_oath_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 94*mus_the_oath_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		N44   , Bn3 , v080
	.byte	W48
	.byte		N22   , An3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 001   ----------------------------------------
mus_the_oath_2_001:
	.byte		N22   , Bn3 , v080
	.byte	W24
	.byte		N10   , Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N22   , An3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_the_oath_2_002:
	.byte		N22   , An3 , v080
	.byte	W24
	.byte		N10   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N22   , Fs3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte		TIE   , En3 
	.byte	W96
@ 004   ----------------------------------------
	.byte	W16
	.byte		EOT   
	.byte	W32
	.byte		N22   , Bn3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 005   ----------------------------------------
mus_the_oath_2_005:
	.byte		N44   , En4 , v080
	.byte	W48
	.byte		N23   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
mus_the_oath_2_006:
	.byte		N23   , Dn4 , v080
	.byte	W24
	.byte		N44   , Bn3 
	.byte	W48
	.byte		N23   , An3 
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
mus_the_oath_2_007:
	.byte		N23   , Bn3 , v080
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
	.byte		TIE   , En4 
	.byte	W96
@ 009   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		EOT   
	.byte	W30
	.byte	W01
@ 010   ----------------------------------------
mus_the_oath_2_010:
	.byte		N44   , Dn4 , v080
	.byte	W48
	.byte		N23   , Bn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
mus_the_oath_2_011:
	.byte		N23   , Bn3 , v080
	.byte	W24
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N23   , An3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
mus_the_oath_2_012:
	.byte		N23   , En3 , v080
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N92   
	.byte	W48
	.byte	PEND
@ 013   ----------------------------------------
mus_the_oath_2_013:
	.byte	W48
	.byte		N23   , Bn3 , v080
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
mus_the_oath_2_014:
	.byte		N44   , En4 , v080
	.byte	W48
	.byte		        Bn4 
	.byte	W48
	.byte	PEND
@ 015   ----------------------------------------
mus_the_oath_2_015:
	.byte		N23   , An4 , v080
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
mus_the_oath_2_016:
	.byte		N23   , Dn4 , v080
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		TIE   
	.byte	W48
	.byte	PEND
@ 017   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte		EOT   
	.byte	W13
@ 018   ----------------------------------------
mus_the_oath_2_018:
	.byte		N44   , Bn3 , v064
	.byte		N68   , Bn4 
	.byte	W48
	.byte		N44   , An3 
	.byte	W24
	.byte		N68   , An4 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
mus_the_oath_2_019:
	.byte		N44   , An3 , v064
	.byte	W48
	.byte		        Bn3 
	.byte		N23   , Gn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
mus_the_oath_2_020:
	.byte		N44   , Bn3 , v064
	.byte		N92   , En4 
	.byte	W48
	.byte		N44   , An3 
	.byte	W48
	.byte	PEND
@ 021   ----------------------------------------
mus_the_oath_2_021:
	.byte		N92   , En4 , v064
	.byte		TIE   , Fs4 
	.byte	W96
	.byte	PEND
@ 022   ----------------------------------------
mus_the_oath_2_022:
	.byte		N68   , Ds4 , v064
	.byte	W68
	.byte	W03
	.byte	PEND
	.byte		EOT   , Fs4 
	.byte	W24
	.byte	W01
@ 023   ----------------------------------------
mus_the_oath_2_023:
	.byte		N44   , Dn4 , v064
	.byte	W48
	.byte		        Cs4 
	.byte	W48
	.byte	PEND
@ 024   ----------------------------------------
mus_the_oath_2_024:
	.byte		N44   , Dn4 , v064
	.byte	W48
	.byte		        An3 
	.byte	W48
	.byte	PEND
@ 025   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 026   ----------------------------------------
	.byte	W76
	.byte	W01
	.byte		EOT   
	.byte	W19
@ 027   ----------------------------------------
mus_the_oath_2_027:
	.byte		N23   , En3 , v076
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
mus_the_oath_2_028:
	.byte		N23   , En3 , v076
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte	PEND
@ 029   ----------------------------------------
mus_the_oath_2_029:
	.byte		N44   , Bn3 , v076
	.byte	W48
	.byte		N23   , En3 , v064
	.byte		N23   , En4 , v076
	.byte	W24
	.byte		        Fs3 , v064
	.byte		N23   , Fs4 , v076
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
mus_the_oath_2_030:
	.byte		N23   , Gn3 , v064
	.byte		N23   , Gn4 , v076
	.byte	W24
	.byte		        An3 , v064
	.byte		N23   , An4 , v076
	.byte	W24
	.byte		        Bn3 , v064
	.byte		N23   , Bn4 , v076
	.byte	W24
	.byte		        Dn4 , v064
	.byte		N23   , Dn5 , v076
	.byte	W24
	.byte	PEND
@ 031   ----------------------------------------
mus_the_oath_2_031:
	.byte		N44   , En4 , v064
	.byte		N44   , En5 , v076
	.byte	W48
	.byte		        Bn4 
	.byte	W48
	.byte	PEND
@ 032   ----------------------------------------
mus_the_oath_2_032:
	.byte		N23   , An4 , v076
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Dn4 , v064
	.byte		N23   , Dn5 , v076
	.byte	W24
	.byte	PEND
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_031
@ 034   ----------------------------------------
mus_the_oath_2_034:
	.byte		N68   , Fs4 , v076
	.byte	W72
	.byte		N23   , Dn4 , v064
	.byte		N23   , Dn5 , v076
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_031
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_032
@ 037   ----------------------------------------
mus_the_oath_2_037:
	.byte		N23   , Fs4 , v076
	.byte	W24
	.byte		        En4 , v064
	.byte		N23   , En5 , v076
	.byte	W24
	.byte		TIE   , En4 , v064
	.byte		TIE   , En5 , v076
	.byte	W48
	.byte	PEND
@ 038   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   , En4 
	.byte		        En5 
	.byte	W24
	.byte	W01
@ 039   ----------------------------------------
	.byte		N44   , Bn3 , v080
	.byte	W48
	.byte		N22   , An3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_002
@ 042   ----------------------------------------
	.byte		TIE   , En3 , v080
	.byte	W96
@ 043   ----------------------------------------
	.byte	W16
	.byte		EOT   
	.byte	W32
	.byte		N22   , Bn3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_005
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_006
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_007
@ 047   ----------------------------------------
	.byte		TIE   , En4 , v080
	.byte	W96
@ 048   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		EOT   
	.byte	W30
	.byte	W01
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_010
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_011
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_012
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_013
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_014
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_015
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_016
@ 056   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte		EOT   , En4 
	.byte	W13
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_018
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_019
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_020
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_021
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_022
	.byte		EOT   , Fs4 
	.byte	W24
	.byte	W01
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_023
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_024
@ 064   ----------------------------------------
	.byte		TIE   , An3 , v064
	.byte	W96
@ 065   ----------------------------------------
	.byte	W76
	.byte	W01
	.byte		EOT   
	.byte	W19
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_027
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_028
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_029
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_030
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_031
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_032
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_031
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_034
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_031
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_032
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_2_037
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , En4 
	.byte		        En5 
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_the_oath_3:
	.byte	KEYSH , mus_the_oath_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 82*mus_the_oath_mvl/mxv
	.byte		PAN   , c_v-18
	.byte		N44   , Gn2 , v064
	.byte		N68   , En3 
	.byte	W48
	.byte		N44   , Fs2 
	.byte	W24
	.byte		N68   , Dn3 
	.byte	W24
@ 001   ----------------------------------------
mus_the_oath_3_001:
	.byte		N92   , Gn2 , v064
	.byte	W48
	.byte		        Cn3 
	.byte	W48
	.byte	PEND
@ 002   ----------------------------------------
mus_the_oath_3_002:
	.byte		N44   , An2 , v064
	.byte	W48
	.byte		        Fs2 
	.byte		N44   , Bn2 
	.byte	W48
	.byte	PEND
@ 003   ----------------------------------------
mus_the_oath_3_003:
	.byte		TIE   , Gn2 , v064
	.byte		TIE   , Cn3 
	.byte	W96
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W16
	.byte		EOT   , Gn2 
	.byte		        Cn3 
	.byte	W80
@ 005   ----------------------------------------
mus_the_oath_3_005:
	.byte		N44   , En2 , v064
	.byte		N44   , Gn3 
	.byte	W48
	.byte		        Dn2 
	.byte		N44   , An3 
	.byte	W48
	.byte	PEND
@ 006   ----------------------------------------
mus_the_oath_3_006:
	.byte		N44   , Gn2 , v064
	.byte		N44   , Gn3 
	.byte	W48
	.byte		        Fn2 
	.byte		N44   , Fn3 
	.byte	W48
	.byte	PEND
@ 007   ----------------------------------------
mus_the_oath_3_007:
	.byte		TIE   , En2 , v064
	.byte		N44   , Gn3 
	.byte	W48
	.byte		        An3 
	.byte	W48
	.byte	PEND
@ 008   ----------------------------------------
	.byte		TIE   , Gn3 
	.byte	W96
@ 009   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		EOT   , En2 
	.byte		        Gn3 
	.byte	W30
	.byte	W01
@ 010   ----------------------------------------
mus_the_oath_3_010:
	.byte		N92   , Gn2 , v064
	.byte		N44   , Gn3 
	.byte	W48
	.byte		        Fn3 
	.byte	W48
	.byte	PEND
@ 011   ----------------------------------------
mus_the_oath_3_011:
	.byte		N92   , Fn2 , v064
	.byte		N44   , Fn3 
	.byte	W48
	.byte		        En3 
	.byte	W48
	.byte	PEND
@ 012   ----------------------------------------
mus_the_oath_3_012:
	.byte		TIE   , En2 , v064
	.byte		N92   , Dn3 
	.byte	W96
	.byte	PEND
@ 013   ----------------------------------------
mus_the_oath_3_013:
	.byte		N44   , Cs3 , v064
	.byte	W44
	.byte	W03
	.byte	PEND
	.byte		EOT   , En2 
	.byte	W48
	.byte	W01
@ 014   ----------------------------------------
mus_the_oath_3_014:
	.byte		N92   , Cn2 , v064
	.byte		N92   , Cn3 
	.byte		N92   , Gn3 
	.byte	W96
	.byte	PEND
@ 015   ----------------------------------------
mus_the_oath_3_015:
	.byte		N92   , Dn2 , v064
	.byte		N92   , Dn3 
	.byte		N92   , An3 
	.byte	W96
	.byte	PEND
@ 016   ----------------------------------------
mus_the_oath_3_016:
	.byte		TIE   , En2 , v064
	.byte		TIE   , En3 
	.byte		N92   , An3 
	.byte	W96
	.byte	PEND
@ 017   ----------------------------------------
mus_the_oath_3_017:
	.byte		N80   , Gs3 , v064
	.byte	W80
	.byte	W03
	.byte	PEND
	.byte		EOT   , En2 
	.byte		        En3 
	.byte	W13
@ 018   ----------------------------------------
mus_the_oath_3_018:
	.byte		N44   , Bn3 , v048
	.byte	W48
	.byte		        An3 
	.byte	W48
	.byte	PEND
@ 019   ----------------------------------------
mus_the_oath_3_019:
	.byte		N44   , An3 , v048
	.byte	W48
	.byte		        Bn3 
	.byte	W48
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_018
@ 021   ----------------------------------------
	.byte		TIE   , Bn3 , v048
	.byte	W96
@ 022   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
@ 023   ----------------------------------------
mus_the_oath_3_023:
	.byte		N92   , Gn2 , v048
	.byte		N44   , Dn3 
	.byte		N92   , Gn3 
	.byte	W48
	.byte		N44   , Cs3 
	.byte	W48
	.byte	PEND
@ 024   ----------------------------------------
mus_the_oath_3_024:
	.byte		N92   , Fs2 , v048
	.byte		N44   , Dn3 
	.byte		N92   , Fs3 
	.byte	W48
	.byte		N44   , An2 
	.byte	W48
	.byte	PEND
@ 025   ----------------------------------------
mus_the_oath_3_025:
	.byte		N92   , Dn2 , v048
	.byte		TIE   , An2 
	.byte		N92   , Dn3 
	.byte	W96
	.byte	PEND
@ 026   ----------------------------------------
mus_the_oath_3_026:
	.byte		N76   , Cs2 , v048
	.byte		N76   , Cs3 
	.byte	W76
	.byte	W01
	.byte	PEND
	.byte		EOT   , An2 
	.byte	W19
@ 027   ----------------------------------------
mus_the_oath_3_027:
	.byte		N44   , En2 , v064
	.byte		N44   , En3 
	.byte	W48
	.byte		        Dn2 
	.byte		N44   , Dn3 
	.byte	W48
	.byte	PEND
@ 028   ----------------------------------------
mus_the_oath_3_028:
	.byte		N44   , Cs2 , v064
	.byte		N44   , Cs3 
	.byte	W48
	.byte		        Cn2 
	.byte		N44   , Cn3 
	.byte	W48
	.byte	PEND
@ 029   ----------------------------------------
mus_the_oath_3_029:
	.byte		N44   , Bn1 , v064
	.byte		N44   , Bn2 
	.byte	W48
	.byte		        Cn2 
	.byte		N44   , Cn3 
	.byte		N23   , En3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
mus_the_oath_3_030:
	.byte		N44   , Cs2 , v064
	.byte		N44   , Cs3 
	.byte		N23   , Gn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N44   , Dn2 
	.byte		N44   , Dn3 
	.byte		N23   , Bn3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte	PEND
@ 031   ----------------------------------------
mus_the_oath_3_031:
	.byte		N92   , Cn2 , v064
	.byte		N44   , Cn3 
	.byte		N44   , En4 
	.byte	W48
	.byte		N23   , Dn3 
	.byte		N44   , Bn3 
	.byte	W24
	.byte		N23   , En3 
	.byte	W24
	.byte	PEND
@ 032   ----------------------------------------
mus_the_oath_3_032:
	.byte		N92   , Dn2 , v064
	.byte		N23   , Fs3 
	.byte		N23   , An3 
	.byte	W24
	.byte		        Gn3 
	.byte		N23   , Gn4 
	.byte	W24
	.byte		        An3 
	.byte		N23   , Fs4 
	.byte	W24
	.byte		        Bn3 
	.byte		N23   , Dn4 
	.byte	W24
	.byte	PEND
@ 033   ----------------------------------------
mus_the_oath_3_033:
	.byte		N92   , En2 , v064
	.byte		N23   , Cn4 
	.byte		N44   , En4 
	.byte	W24
	.byte		N23   , Bn3 
	.byte	W24
	.byte		        An3 
	.byte		N44   , Bn3 
	.byte	W24
	.byte		N23   , Gn3 
	.byte	W24
	.byte	PEND
@ 034   ----------------------------------------
mus_the_oath_3_034:
	.byte		N92   , Fs2 , v064
	.byte		N92   , Fs3 
	.byte		N68   , Fs4 
	.byte	W72
	.byte		N23   , Dn4 
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
mus_the_oath_3_035:
	.byte		N92   , Cn2 , v064
	.byte		N23   , En3 
	.byte		N44   , En4 
	.byte	W24
	.byte		N23   , Fs3 
	.byte	W24
	.byte		        Gn3 
	.byte		N44   , Bn3 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 036   ----------------------------------------
mus_the_oath_3_036:
	.byte		N92   , Dn2 , v064
	.byte		N23   , Fs3 
	.byte		N23   , An3 
	.byte	W24
	.byte		        Gn3 
	.byte		N23   , Gn4 
	.byte	W24
	.byte		        An3 
	.byte		N23   , Fs4 
	.byte	W24
	.byte		        Cn4 
	.byte		N23   , Dn4 
	.byte	W24
	.byte	PEND
@ 037   ----------------------------------------
mus_the_oath_3_037:
	.byte		TIE   , En2 , v064
	.byte		TIE   , Bn3 
	.byte		N23   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		TIE   
	.byte	W48
	.byte	PEND
@ 038   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   , En2 
	.byte		        Bn3 
	.byte		        En4 
	.byte	W24
	.byte	W01
@ 039   ----------------------------------------
	.byte		N44   , Gn2 
	.byte		N68   , En3 
	.byte	W48
	.byte		N44   , Fs2 
	.byte	W24
	.byte		N68   , Dn3 
	.byte	W24
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_002
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_003
@ 043   ----------------------------------------
	.byte	W16
	.byte		EOT   , Gn2 
	.byte		        Cn3 
	.byte	W80
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_005
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_006
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_007
@ 047   ----------------------------------------
	.byte		TIE   , Gn3 , v064
	.byte	W96
@ 048   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		EOT   , En2 
	.byte		        Gn3 
	.byte	W30
	.byte	W01
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_010
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_011
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_012
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_013
	.byte		EOT   , En2 
	.byte	W48
	.byte	W01
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_014
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_015
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_016
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_017
	.byte		EOT   , En2 
	.byte		        En3 
	.byte	W13
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_018
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_019
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_018
@ 060   ----------------------------------------
	.byte		TIE   , Bn3 , v048
	.byte	W96
@ 061   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_023
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_024
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_025
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_026
	.byte		EOT   , An2 
	.byte	W19
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_027
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_028
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_029
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_030
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_031
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_032
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_033
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_034
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_035
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_036
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_the_oath_3_037
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , En2 
	.byte		        Bn3 
	.byte		        En4 
	.byte	FINE

@******************************************************@
	.align	2

mus_the_oath:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_the_oath_pri	@ Priority
	.byte	mus_the_oath_rev	@ Reverb.

	.word	mus_the_oath_grp

	.word	mus_the_oath_1
	.word	mus_the_oath_2
	.word	mus_the_oath_3

	.end
