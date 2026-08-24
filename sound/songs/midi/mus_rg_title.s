	.include "MPlayDef.s"

	.equ	mus_rg_title_grp, voicegroup_rg_title
	.equ	mus_rg_title_pri, 0
	.equ	mus_rg_title_rev, reverb_set+50
	.equ	mus_rg_title_mvl, 90
	.equ	mus_rg_title_key, 0
	.equ	mus_rg_title_tbs, 1
	.equ	mus_rg_title_exg, 1
	.equ	mus_rg_title_cmp, 1

	.section .rodata
	.global	mus_rg_title
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_rg_title_1:
	.byte	KEYSH , mus_rg_title_key+0
mus_rg_title_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 76*mus_rg_title_tbs/2
	.byte		VOICE , 73
	.byte		VOL   , 127*mus_rg_title_mvl/mxv
	.byte		PAN   , c_v-14
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N18   , Gs4 , v100
	.byte	W18
	.byte		        Fs4 
	.byte	W18
	.byte		TIE   , Cs5 
	.byte	W60
@ 002   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 003   ----------------------------------------
	.byte		N18   , Gs4 
	.byte	W18
	.byte		TIE   , Fs4 
	.byte	W78
@ 004   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N24   , Cs4 
	.byte	W24
@ 005   ----------------------------------------
	.byte		N18   , Gs4 
	.byte	W18
	.byte		        Fs4 
	.byte	W18
	.byte		TIE   , Cs5 
	.byte	W60
@ 006   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N24   , Cs4 
	.byte	W24
@ 007   ----------------------------------------
	.byte		N18   , Gs4 
	.byte	W18
	.byte		        Fs4 
	.byte	W18
	.byte		TIE   , Cs4 
	.byte	W60
@ 008   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N12   
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 009   ----------------------------------------
mus_rg_title_1_009:
	.byte		N18   , Fs4 , v100
	.byte	W18
	.byte		        Cs5 
	.byte	W18
	.byte		N24   
	.byte	W24
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N06   , En5 
	.byte	W06
	.byte		N78   , Cs5 
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
	.byte	W72
	.byte		N24   , En4 
	.byte	W24
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_1_009
@ 012   ----------------------------------------
	.byte	W72
	.byte		N12   , Dn4 , v100
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N18   , Gn4 
	.byte	W18
	.byte		        Dn5 
	.byte	W18
	.byte		N24   
	.byte	W24
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N06   , Fn5 
	.byte	W06
	.byte		N48   , Dn5 
	.byte	W06
@ 014   ----------------------------------------
	.byte	W42
	.byte		N18   
	.byte	W18
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N06   , Cn5 
	.byte	W06
	.byte		N90   , As4 , v100, gtp1
	.byte	W06
@ 015   ----------------------------------------
	.byte	W84
	.byte		N14   , Gn4 
	.byte	W12
@ 016   ----------------------------------------
	.byte		TIE   , Fn4 
	.byte	W96
@ 017   ----------------------------------------
	.byte		N18   , Cn5 
	.byte	W01
	.byte		EOT   , Fn4 
	.byte	W17
	.byte		N18   , As4 
	.byte	W18
	.byte		N60   , Fn5 
	.byte	W60
@ 018   ----------------------------------------
mus_rg_title_1_018:
	.byte		N18   , Cn5 , v100
	.byte	W18
	.byte		        As4 
	.byte	W18
	.byte		N48   , Fn4 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte		N18   , Gn4 
	.byte	W18
	.byte		        Dn5 
	.byte	W18
	.byte		N24   
	.byte	W24
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N06   , Fn5 
	.byte	W06
	.byte		N54   , Dn5 
	.byte	W06
@ 020   ----------------------------------------
	.byte	W48
	.byte		N48   , Cn5 
	.byte	W48
@ 021   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		        As4 
	.byte	W18
	.byte		N60   , Fn5 
	.byte	W60
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_1_018
@ 023   ----------------------------------------
	.byte		N18   , Gn4 , v100
	.byte	W18
	.byte		        Dn5 
	.byte	W18
	.byte		N24   
	.byte	W24
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N06   , Cn5 
	.byte	W06
	.byte		N78   , As4 
	.byte	W06
@ 024   ----------------------------------------
mus_rg_title_1_024:
	.byte	W72
	.byte		N12   , Dn5 , v100
	.byte	W12
	.byte		N06   , Fn5 
	.byte	W06
	.byte		N42   , Gn5 
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
mus_rg_title_1_025:
	.byte	W36
	.byte		N06   , As5 , v100
	.byte	W06
	.byte		N18   , An5 
	.byte	W18
	.byte		N12   , Gn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		N06   , Gn5 
	.byte	W06
	.byte		N78   , Dn5 
	.byte	W06
	.byte	PEND
@ 026   ----------------------------------------
	.byte	W72
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , As4 
	.byte	W06
	.byte		N42   , Cn5 
	.byte	W06
@ 027   ----------------------------------------
	.byte	W36
	.byte		N06   , As4 
	.byte	W06
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N06   , Fn5 
	.byte	W06
	.byte		N78   , Dn5 
	.byte	W06
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_1_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_1_025
@ 030   ----------------------------------------
	.byte	W72
	.byte		N12   , Gn4 , v100
	.byte	W12
	.byte		N06   , As4 
	.byte	W06
	.byte		TIE   , Cn5 
	.byte	W06
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W42
	.byte		EOT   
	.byte		N18   
	.byte	W18
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N06   , Dn5 
	.byte	W06
	.byte		TIE   , As4 
	.byte	W06
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W42
	.byte		EOT   
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N06   , Dn5 
	.byte	W06
	.byte		N88   , As4 , v100, gtp1
	.byte	W06
@ 035   ----------------------------------------
	.byte	W84
	.byte		N14   , Gn4 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N92   , Fn4 , v100, gtp3
	.byte	W96
	.byte	GOTO
	 .word	mus_rg_title_1_B1
mus_rg_title_1_B2:
@ 037   ----------------------------------------
	.byte		VOICE , 73
	.byte		        73
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_rg_title_2:
	.byte	KEYSH , mus_rg_title_key+0
mus_rg_title_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 35
	.byte		VOL   , 127*mus_rg_title_mvl/mxv
	.byte		PAN   , c_v-36
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W12
	.byte		N11   , Gs4 , v052
	.byte	W18
	.byte		        Fs4 
	.byte	W18
	.byte		        Cs5 
	.byte	W48
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W12
	.byte		        Gs4 
	.byte	W18
	.byte		        Fs4 
	.byte	W66
@ 003   ----------------------------------------
	.byte	W84
	.byte		        Cs4 
	.byte	W12
@ 004   ----------------------------------------
	.byte	W12
	.byte		        Gs4 
	.byte	W18
	.byte		        Fs4 
	.byte	W18
	.byte		        Cs5 
	.byte	W48
@ 005   ----------------------------------------
	.byte	W84
	.byte		        Cs4 
	.byte	W12
@ 006   ----------------------------------------
	.byte	W12
	.byte		        Gs4 
	.byte	W18
	.byte		        Fs4 
	.byte	W18
	.byte		        Cs4 
	.byte	W48
@ 007   ----------------------------------------
	.byte	W84
	.byte		N11   
	.byte	W12
@ 008   ----------------------------------------
	.byte		        En4 
	.byte	W12
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N05   , Cs5 
	.byte	W18
	.byte		N16   
	.byte	W24
	.byte		N08   , Bn4 
	.byte	W12
	.byte		N09   , An4 
	.byte	W12
@ 009   ----------------------------------------
	.byte		N04   , En5 
	.byte	W06
	.byte		N21   , Cs5 
	.byte	W78
	.byte		N11   , En4 
	.byte	W12
@ 010   ----------------------------------------
	.byte	W12
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N05   , Cs5 
	.byte	W18
	.byte		N16   
	.byte	W24
	.byte		N08   , Bn4 
	.byte	W12
	.byte		N09   , An4 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N04   , En5 
	.byte	W06
	.byte		N21   , Cs5 
	.byte	W78
	.byte		N11   , Dn4 
	.byte	W12
@ 012   ----------------------------------------
	.byte		        Fn4 
	.byte	W12
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N05   , Dn5 
	.byte	W18
	.byte		N16   
	.byte	W24
	.byte		N08   , Cn5 
	.byte	W12
	.byte		N09   , As4 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N04   , Fn5 
	.byte	W06
	.byte		N21   , Dn5 
	.byte	W44
	.byte	W03
	.byte		N07   , Dn5 , v064
	.byte	W18
	.byte		N04   , Cn5 , v052
	.byte	W12
	.byte		N05   , As4 , v064
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W01
@ 014   ----------------------------------------
	.byte	W04
	.byte		N08   , As4 , v052
	.byte	W92
@ 015   ----------------------------------------
	.byte		N11   , Gn4 
	.byte	W14
	.byte		TIE   , Fn4 
	.byte	W80
	.byte	W02
@ 016   ----------------------------------------
	.byte	W12
	.byte		N17   , Cn5 , v064
	.byte	W03
	.byte		EOT   , Fn4 
	.byte	W15
	.byte		N17   , As4 , v052
	.byte	W18
	.byte		N56   , Fn5 , v064, gtp3
	.byte	W48
@ 017   ----------------------------------------
mus_rg_title_2_017:
	.byte	W12
	.byte		N17   , Cn5 , v064
	.byte	W18
	.byte		        As4 , v052
	.byte	W18
	.byte		N44   , Fn4 , v064, gtp3
	.byte	W48
	.byte	PEND
@ 018   ----------------------------------------
mus_rg_title_2_018:
	.byte		N11   , Fn4 , v064
	.byte	W12
	.byte		N17   , Gn4 
	.byte	W18
	.byte		        Dn5 , v060
	.byte	W18
	.byte		N23   , Dn5 , v064
	.byte	W24
	.byte		N11   , Cn5 , v052
	.byte	W12
	.byte		        As4 , v064
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte		N05   , Fn5 , v056
	.byte	W06
	.byte		N44   , Dn5 , v040, gtp3
	.byte	W54
	.byte		        Cn5 , v056, gtp3
	.byte	W36
@ 020   ----------------------------------------
	.byte	W12
	.byte		N17   , Cn5 , v064
	.byte	W18
	.byte		        As4 , v052
	.byte	W18
	.byte		N56   , Fn5 , v064, gtp3
	.byte	W48
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_2_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_2_018
@ 023   ----------------------------------------
	.byte		N05   , Cn5 , v056
	.byte	W06
	.byte		N52   , As4 , v040, gtp1
	.byte	W78
	.byte		N11   , Dn5 , v064
	.byte	W12
@ 024   ----------------------------------------
mus_rg_title_2_024:
	.byte		N05   , Fn5 , v064
	.byte	W06
	.byte		N40   , Gn5 , v064, gtp1
	.byte	W42
	.byte		N05   , As5 
	.byte	W06
	.byte		N17   , An5 
	.byte	W18
	.byte		N11   , Gn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_rg_title_2_025:
	.byte		N05   , Gn5 , v064
	.byte	W06
	.byte		N76   , Dn5 , v064, gtp1
	.byte	W78
	.byte		N11   , Gn4 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte		N05   , As4 
	.byte	W06
	.byte		N40   , Cn5 , v064, gtp1
	.byte	W42
	.byte		N05   , As4 
	.byte	W06
	.byte		N17   , Cn5 
	.byte	W18
	.byte		N11   , As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
@ 027   ----------------------------------------
	.byte		N05   , Fn5 
	.byte	W06
	.byte		N76   , Dn5 , v064, gtp1
	.byte	W78
	.byte		N11   
	.byte	W12
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_2_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_2_025
@ 030   ----------------------------------------
	.byte		N05   , As4 , v064
	.byte	W06
	.byte		TIE   , Cn5 
	.byte	W90
@ 031   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		N17   
	.byte	W18
	.byte		N11   , As4 
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
@ 032   ----------------------------------------
	.byte		N05   , Dn5 , v036
	.byte	W06
	.byte		TIE   , As4 , v064
	.byte	W90
@ 033   ----------------------------------------
	.byte	W11
	.byte		EOT   
	.byte	W42
	.byte	W01
	.byte		N17   , Cn5 
	.byte	W18
	.byte		N11   , As4 
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
@ 034   ----------------------------------------
	.byte		N05   , Dn5 , v036
	.byte	W06
	.byte		N88   , As4 , v064, gtp1
	.byte	W90
@ 035   ----------------------------------------
	.byte		N11   , Gn4 , v052
	.byte	W12
	.byte		N80   , Fn4 , v052, gtp3
	.byte	W84
	.byte	GOTO
	 .word	mus_rg_title_2_B1
mus_rg_title_2_B2:
@ 036   ----------------------------------------
	.byte		VOICE , 35
	.byte		        35
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_rg_title_3:
	.byte	KEYSH , mus_rg_title_key+0
mus_rg_title_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 35
	.byte		VOL   , 127*mus_rg_title_mvl/mxv
	.byte		PAN   , c_v+43
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W24
	.byte		N11   , Gs4 , v036
	.byte	W18
	.byte		        Fs4 
	.byte	W18
	.byte		        Cs5 
	.byte	W36
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W24
	.byte		        Gs4 
	.byte	W18
	.byte		        Fs4 
	.byte	W54
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		        Cs4 
	.byte	W24
	.byte		        Gs4 
	.byte	W18
	.byte		        Fs4 
	.byte	W18
	.byte		        Cs5 
	.byte	W36
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte		        Cs4 
	.byte	W24
	.byte		        Gs4 
	.byte	W18
	.byte		        Fs4 
	.byte	W18
	.byte		        Cs4 
	.byte	W36
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N05   , Cs5 
	.byte	W18
	.byte		N16   
	.byte	W24
	.byte		N08   , Bn4 
	.byte	W12
@ 009   ----------------------------------------
mus_rg_title_3_009:
	.byte		N09   , An4 , v036
	.byte	W12
	.byte		N04   , En5 
	.byte	W06
	.byte		N21   , Cs5 
	.byte	W78
	.byte	PEND
@ 010   ----------------------------------------
	.byte		N11   , En4 
	.byte	W24
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N05   , Cs5 
	.byte	W18
	.byte		N16   
	.byte	W24
	.byte		N08   , Bn4 
	.byte	W12
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_3_009
@ 012   ----------------------------------------
	.byte		N11   , Dn4 , v036
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N05   , Dn5 
	.byte	W18
	.byte		N16   
	.byte	W24
	.byte		N08   , Cn5 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N09   , As4 
	.byte	W12
	.byte		N04   , Fn5 
	.byte	W06
	.byte		N21   , Dn5 
	.byte	W44
	.byte	W03
	.byte		N07   , Dn5 , v048
	.byte	W18
	.byte		N04   , Cn5 , v036
	.byte	W12
	.byte		N05   , As4 , v048
	.byte	W01
@ 014   ----------------------------------------
	.byte	W11
	.byte		        Cn5 , v036
	.byte	W05
	.byte		N08   , As4 , v040
	.byte	W80
@ 015   ----------------------------------------
	.byte	W12
	.byte		N11   , Gn4 
	.byte	W14
	.byte		TIE   , Fn4 , v036
	.byte	W68
	.byte	W02
@ 016   ----------------------------------------
	.byte	W24
	.byte		N17   , Cn5 , v044
	.byte	W03
	.byte		EOT   , Fn4 
	.byte	W15
	.byte		N17   , As4 , v036
	.byte	W18
	.byte		N56   , Fn5 , v044, gtp3
	.byte	W36
@ 017   ----------------------------------------
mus_rg_title_3_017:
	.byte	W24
	.byte		N17   , Cn5 , v044
	.byte	W18
	.byte		        As4 , v036
	.byte	W18
	.byte		N44   , Fn4 , v044, gtp3
	.byte	W36
	.byte	PEND
@ 018   ----------------------------------------
mus_rg_title_3_018:
	.byte	W12
	.byte		N11   , Fn4 , v048
	.byte	W12
	.byte		N17   , Gn4 
	.byte	W18
	.byte		        Dn5 , v044
	.byte	W18
	.byte		N23   , Dn5 , v048
	.byte	W24
	.byte		N11   , Cn5 , v036
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte		        As4 , v048
	.byte	W12
	.byte		N05   , Fn5 , v040
	.byte	W06
	.byte		N44   , Dn5 , v028, gtp3
	.byte	W54
	.byte		        Cn5 , v040, gtp3
	.byte	W24
@ 020   ----------------------------------------
	.byte	W24
	.byte		N17   , Cn5 , v044
	.byte	W18
	.byte		        As4 , v036
	.byte	W18
	.byte		N56   , Fn5 , v044, gtp3
	.byte	W36
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_3_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_3_018
@ 023   ----------------------------------------
	.byte		N11   , As4 , v048
	.byte	W12
	.byte		N05   , Cn5 , v040
	.byte	W06
	.byte		N52   , As4 , v028, gtp1
	.byte	W78
@ 024   ----------------------------------------
mus_rg_title_3_024:
	.byte		N11   , Dn5 , v044
	.byte	W12
	.byte		N05   , Fn5 
	.byte	W06
	.byte		N40   , Gn5 , v044, gtp1
	.byte	W42
	.byte		N05   , As5 
	.byte	W06
	.byte		N17   , An5 
	.byte	W18
	.byte		N11   , Gn5 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_rg_title_3_025:
	.byte		N11   , Fn5 , v044
	.byte	W12
	.byte		N05   , Gn5 
	.byte	W06
	.byte		N76   , Dn5 , v044, gtp1
	.byte	W78
	.byte	PEND
@ 026   ----------------------------------------
	.byte		N11   , Gn4 
	.byte	W12
	.byte		N05   , As4 
	.byte	W06
	.byte		N40   , Cn5 , v044, gtp1
	.byte	W42
	.byte		N05   , As4 
	.byte	W06
	.byte		N17   , Cn5 
	.byte	W18
	.byte		N11   , As4 
	.byte	W12
@ 027   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		N05   , Fn5 
	.byte	W06
	.byte		N76   , Dn5 , v044, gtp1
	.byte	W78
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_3_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_3_025
@ 030   ----------------------------------------
	.byte		N11   , Gn4 , v044
	.byte	W12
	.byte		N05   , As4 
	.byte	W06
	.byte		TIE   , Cn5 
	.byte	W78
@ 031   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		N17   , Cn5 , v048
	.byte	W18
	.byte		N11   , As4 
	.byte	W12
@ 032   ----------------------------------------
	.byte		        Cn5 , v040
	.byte	W12
	.byte		N05   , Dn5 , v028
	.byte	W06
	.byte		TIE   , As4 , v048
	.byte	W78
@ 033   ----------------------------------------
	.byte	W23
	.byte		EOT   
	.byte	W42
	.byte	W01
	.byte		N17   , Cn5 
	.byte	W18
	.byte		N11   , As4 
	.byte	W12
@ 034   ----------------------------------------
	.byte		        Cn5 , v040
	.byte	W12
	.byte		N05   , Dn5 , v028
	.byte	W06
	.byte		N88   , As4 , v048, gtp1
	.byte	W78
@ 035   ----------------------------------------
	.byte	W12
	.byte		N11   , Gn4 , v040
	.byte	W14
	.byte		N64   , Fn4 , v036, gtp1
	.byte	W68
	.byte	W02
	.byte	GOTO
	 .word	mus_rg_title_3_B1
mus_rg_title_3_B2:
@ 036   ----------------------------------------
	.byte		VOICE , 35
	.byte		        35
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_rg_title_4:
	.byte	KEYSH , mus_rg_title_key+0
mus_rg_title_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 12
	.byte		VOL   , 127*mus_rg_title_mvl/mxv
	.byte		PAN   , c_v+15
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N18   , Gs4 , v127
	.byte	W18
	.byte		        Fs4 
	.byte	W18
	.byte		TIE   , Cs5 
	.byte	W60
@ 001   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 002   ----------------------------------------
	.byte		N18   , Gs4 
	.byte	W18
	.byte		TIE   , Fs4 
	.byte	W78
@ 003   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N23   , Cs4 
	.byte	W24
@ 004   ----------------------------------------
	.byte		N18   , Gs4 
	.byte	W18
	.byte		        Fs4 
	.byte	W18
	.byte		TIE   , Cs5 
	.byte	W60
@ 005   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N23   , Cs4 
	.byte	W24
@ 006   ----------------------------------------
	.byte		N18   , Gs4 
	.byte	W18
	.byte		        Fs4 
	.byte	W18
	.byte		TIE   , Cs4 
	.byte	W60
@ 007   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N12   
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 008   ----------------------------------------
mus_rg_title_4_008:
	.byte		N18   , Fs4 , v127
	.byte	W18
	.byte		        Cs5 
	.byte	W18
	.byte		N24   
	.byte	W24
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N06   , En5 
	.byte	W06
	.byte		N78   , Cs5 
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
	.byte	W72
	.byte		N23   , En4 
	.byte	W24
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_4_008
@ 011   ----------------------------------------
	.byte	W72
	.byte		N12   , Dn4 , v127
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 012   ----------------------------------------
	.byte		N18   , Gn4 
	.byte	W18
	.byte		        Dn5 
	.byte	W18
	.byte		N24   
	.byte	W24
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N06   , Fn5 
	.byte	W06
	.byte		N64   , Dn5 , v127, gtp1
	.byte	W06
@ 013   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N05   , Cn5 
	.byte	W05
	.byte		N90   , As4 , v127, gtp1
	.byte	W08
@ 014   ----------------------------------------
	.byte	W84
	.byte		N14   , Gn4 
	.byte	W12
@ 015   ----------------------------------------
	.byte	W02
	.byte		TIE   , Fn4 
	.byte	W92
	.byte	W02
@ 016   ----------------------------------------
	.byte		N18   , Cn5 
	.byte	W03
	.byte		EOT   , Fn4 
	.byte	W15
	.byte		N18   , As4 
	.byte	W18
	.byte		N60   , Fn5 
	.byte	W60
@ 017   ----------------------------------------
mus_rg_title_4_017:
	.byte		N18   , Cn5 , v127
	.byte	W18
	.byte		        As4 
	.byte	W18
	.byte		N48   , Fn4 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte		N18   , Gn4 
	.byte	W18
	.byte		        Dn5 
	.byte	W18
	.byte		N24   
	.byte	W24
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N06   , Fn5 
	.byte	W06
	.byte		N54   , Dn5 
	.byte	W06
@ 019   ----------------------------------------
	.byte	W48
	.byte		N48   , Cn5 
	.byte	W48
@ 020   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		        As4 
	.byte	W18
	.byte		N60   , Fn5 
	.byte	W60
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_4_017
@ 022   ----------------------------------------
	.byte		N18   , Gn4 , v127
	.byte	W18
	.byte		        Dn5 
	.byte	W18
	.byte		N24   
	.byte	W24
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N06   , Cn5 
	.byte	W06
	.byte		N78   , As4 
	.byte	W06
@ 023   ----------------------------------------
mus_rg_title_4_023:
	.byte	W72
	.byte		N12   , Dn5 , v127
	.byte	W12
	.byte		N06   , Fn5 
	.byte	W06
	.byte		N42   , Gn5 
	.byte	W06
	.byte	PEND
@ 024   ----------------------------------------
mus_rg_title_4_024:
	.byte	W36
	.byte		N06   , As5 , v127
	.byte	W06
	.byte		N18   , An5 
	.byte	W18
	.byte		N12   , Gn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		N06   , Gn5 
	.byte	W06
	.byte		N78   , Dn5 
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
	.byte	W72
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , As4 
	.byte	W06
	.byte		N42   , Cn5 
	.byte	W06
@ 026   ----------------------------------------
	.byte	W36
	.byte		N06   , As4 
	.byte	W06
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N06   , Fn5 
	.byte	W06
	.byte		N78   , Dn5 
	.byte	W06
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_4_023
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_4_024
@ 029   ----------------------------------------
	.byte	W72
	.byte		N12   , Gn4 , v127
	.byte	W12
	.byte		N06   , As4 
	.byte	W06
	.byte		TIE   , Cn5 
	.byte	W06
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W42
	.byte		EOT   
	.byte		N18   
	.byte	W18
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N06   , Dn5 
	.byte	W06
	.byte		TIE   , As4 
	.byte	W06
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W42
	.byte		EOT   
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N06   , Dn5 
	.byte	W06
	.byte		N88   , As4 , v127, gtp1
	.byte	W06
@ 034   ----------------------------------------
	.byte	W84
	.byte		N12   , Gn4 
	.byte	W12
@ 035   ----------------------------------------
	.byte		N92   , Fn4 , v127, gtp3
	.byte	W96
	.byte	GOTO
	 .word	mus_rg_title_4_B1
mus_rg_title_4_B2:
@ 036   ----------------------------------------
	.byte		VOICE , 12
	.byte		        12
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_rg_title_5:
	.byte	KEYSH , mus_rg_title_key+0
mus_rg_title_5_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 9
	.byte		VOL   , 127*mus_rg_title_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Bn3 , v100
	.byte	W12
	.byte		        Ds4 , v088
	.byte	W12
	.byte		        Fs4 , v100
	.byte	W12
	.byte		N05   , Ds4 , v080
	.byte	W06
	.byte		N11   , Gs4 , v084
	.byte	W18
	.byte		        Fs4 , v100
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        As4 , v096
	.byte	W12
@ 001   ----------------------------------------
	.byte		        Bn3 , v100
	.byte	W12
	.byte		        Ds4 , v088
	.byte	W12
	.byte		        Fs4 , v100
	.byte	W12
	.byte		N05   , Ds4 , v080
	.byte	W06
	.byte		N11   , Gs4 , v084
	.byte	W18
	.byte		        Fs4 , v100
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        As4 , v092
	.byte	W12
@ 002   ----------------------------------------
mus_rg_title_5_002:
	.byte		N11   , As3 , v100
	.byte	W12
	.byte		        Cs4 , v088
	.byte	W12
	.byte		        Fs4 , v100
	.byte	W12
	.byte		N05   , Cs4 , v080
	.byte	W06
	.byte		N11   , Gs4 , v084
	.byte	W18
	.byte		        Fs4 , v100
	.byte	W12
	.byte		        Cs5 , v096
	.byte	W12
	.byte		        As4 , v080
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_5_002
@ 004   ----------------------------------------
	.byte		N11   , Bn3 , v100
	.byte	W12
	.byte		        Ds4 , v088
	.byte	W12
	.byte		        Fs4 , v100
	.byte	W12
	.byte		N05   , Ds4 , v080
	.byte	W06
	.byte		N11   , Gs4 , v084
	.byte	W18
	.byte		        Fs4 , v100
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        As4 , v080
	.byte	W12
@ 005   ----------------------------------------
	.byte		        Bn3 , v100
	.byte	W12
	.byte		        Ds4 , v088
	.byte	W12
	.byte		        Fs4 , v100
	.byte	W12
	.byte		N05   , Ds4 , v080
	.byte	W06
	.byte		N11   , Gs4 , v084
	.byte	W18
	.byte		        Fs4 , v100
	.byte	W12
	.byte		        Cs5 , v096
	.byte	W12
	.byte		        As4 , v080
	.byte	W12
@ 006   ----------------------------------------
	.byte		        As3 , v100
	.byte	W12
	.byte		        Cs4 , v088
	.byte	W12
	.byte		        Fs4 , v100
	.byte	W12
	.byte		N05   , Cs4 , v080
	.byte	W06
	.byte		N11   , Gs4 , v084
	.byte	W18
	.byte		        Fs4 , v100
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        As4 , v080
	.byte	W12
@ 007   ----------------------------------------
	.byte		        As3 , v100
	.byte	W12
	.byte		        Cs4 , v088
	.byte	W12
	.byte		        Gs4 , v100
	.byte	W12
	.byte		N05   , Fs4 , v080
	.byte	W06
	.byte		N11   , Cs5 , v084
	.byte	W18
	.byte		        Fs4 , v100
	.byte	W36
@ 008   ----------------------------------------
	.byte		        Dn4 
	.byte	W12
	.byte		        Fs4 , v088
	.byte	W12
	.byte		        An4 , v100
	.byte	W12
	.byte		N05   , Fs4 , v080
	.byte	W06
	.byte		N11   , Cs5 , v096
	.byte	W18
	.byte		        An4 , v100
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Cs5 , v080
	.byte	W12
@ 009   ----------------------------------------
	.byte		        Dn4 , v100
	.byte	W12
	.byte		        Fs4 , v088
	.byte	W12
	.byte		        An4 , v100
	.byte	W12
	.byte		N05   , Fs4 , v080
	.byte	W06
	.byte		N11   , Cs5 , v096
	.byte	W18
	.byte		        An4 , v100
	.byte	W12
	.byte		        Cs5 , v096
	.byte	W12
	.byte		        Cs5 , v100
	.byte	W12
@ 010   ----------------------------------------
	.byte		        Cs4 
	.byte	W12
	.byte		        En4 , v088
	.byte	W12
	.byte		        An4 , v100
	.byte	W12
	.byte		N05   , En4 , v080
	.byte	W06
	.byte		N11   , Bn4 , v084
	.byte	W18
	.byte		        An4 , v100
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Cs5 , v080
	.byte	W12
@ 011   ----------------------------------------
	.byte		        Cs4 , v100
	.byte	W12
	.byte		        En4 , v088
	.byte	W12
	.byte		        Bn4 , v084
	.byte	W12
	.byte		        An4 , v080
	.byte	W06
	.byte		        En5 , v100
	.byte	W54
@ 012   ----------------------------------------
	.byte		        Ds4 
	.byte	W12
	.byte		        Gn4 , v088
	.byte	W12
	.byte		        As4 , v100
	.byte	W12
	.byte		        Gn4 , v080
	.byte	W12
	.byte		        Fn4 , v100
	.byte	W12
	.byte		        An4 , v088
	.byte	W12
	.byte		        Cn5 , v100
	.byte	W12
	.byte		        An4 , v080
	.byte	W12
@ 013   ----------------------------------------
	.byte		        Dn4 , v100
	.byte	W12
	.byte		        Fn4 , v088
	.byte	W12
	.byte		        Cn5 , v100
	.byte	W12
	.byte		        An4 , v080
	.byte	W12
	.byte		        Gn4 , v100
	.byte	W12
	.byte		        As4 , v088
	.byte	W12
	.byte		        Dn5 , v100
	.byte	W12
	.byte		        As4 , v080
	.byte	W12
@ 014   ----------------------------------------
	.byte		        Ds4 , v104
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N28   , Dn5 , v104, gtp1
	.byte	W30
	.byte		N23   
	.byte	W24
@ 015   ----------------------------------------
	.byte		N24   , Cn5 , v092
	.byte	W96
@ 016   ----------------------------------------
mus_rg_title_5_016:
	.byte		N11   , As4 , v104
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N23   , Fn5 , v108
	.byte	W24
	.byte		N11   , An4 , v104
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N23   , Fn5 , v108
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
	.byte		N11   , Gn4 , v104
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N23   , Dn5 , v108
	.byte	W24
	.byte		N11   , Fn4 , v104
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N23   , Dn5 , v108
	.byte	W24
@ 018   ----------------------------------------
	.byte		N11   , Ds4 , v104
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N23   , As4 , v108
	.byte	W24
	.byte		N11   , Dn4 , v104
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N23   , As4 , v108
	.byte	W24
@ 019   ----------------------------------------
	.byte		N11   , Cn4 , v104
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N23   , Gn4 
	.byte	W24
	.byte		        Cn5 , v092
	.byte	W48
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_5_016
@ 021   ----------------------------------------
	.byte		N11   , Gn4 , v104
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N23   , Dn5 , v108
	.byte	W24
	.byte		N11   , Fn4 , v104
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N23   , Dn5 , v108
	.byte	W24
@ 022   ----------------------------------------
	.byte		N10   , Ds4 , v104
	.byte	W12
	.byte		N11   , Gn4 
	.byte	W12
	.byte		N23   , As4 , v108
	.byte	W24
	.byte		N11   , Fn4 , v104
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N23   , Cn5 , v108
	.byte	W24
@ 023   ----------------------------------------
	.byte		N11   , As4 , v104
	.byte	W12
	.byte		        As3 , v088
	.byte	W12
	.byte		        Dn4 , v104
	.byte	W12
	.byte		N05   , Fn4 , v092
	.byte	W06
	.byte		N13   , As4 , v104
	.byte	W54
@ 024   ----------------------------------------
mus_rg_title_5_024:
	.byte		N11   , Ds4 , v104
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As4 , v108
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 , v104
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Cn5 , v108
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
	.byte		        Gn4 , v104
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn5 , v108
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Gs4 , v076
	.byte	W12
	.byte		        As4 , v108
	.byte	W12
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_5_024
@ 027   ----------------------------------------
	.byte		N11   , Gn4 , v104
	.byte	W12
	.byte		N10   , As4 
	.byte	W12
	.byte		N11   , Cn5 , v108
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N23   , Fn5 , v096
	.byte	W24
	.byte		        Dn5 
	.byte	W24
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_title_5_024
@ 029   ----------------------------------------
	.byte		N11   , Gn4 , v104
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Cn5 , v108
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N23   , Fn5 , v096
	.byte	W48
@ 030   ----------------------------------------
	.byte		N11   , Cs4 , v100
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		N05   , Gs4 
	.byte	W06
	.byte		N28   , Fn5 , v100, gtp1
	.byte	W30
	.byte		N11   
	.byte	W12
	.byte		        Gs5 
	.byte	W12
@ 031   ----------------------------------------
	.byte		N16   , Gn5 
	.byte	W96
@ 032   ----------------------------------------
	.byte		N11   , Gn4 , v104
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn5 , v108
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Fs4 , v104
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn5 , v108
	.byte	W12
	.byte		        As4 
	.byte	W12
@ 033   ----------------------------------------
	.byte		        Fn4 , v104
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn5 , v108
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        En4 , v104
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn5 , v108
	.byte	W12
	.byte		        As4 
	.byte	W12
@ 034   ----------------------------------------
	.byte		        Ds4 , v104
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N17   , Dn5 
	.byte	W18
	.byte		N11   , As4 
	.byte	W12
	.byte		N23   , Dn5 
	.byte	W24
@ 035   ----------------------------------------
	.byte		        Cn5 , v092
	.byte	W96
	.byte	GOTO
	 .word	mus_rg_title_5_B1
mus_rg_title_5_B2:
@ 036   ----------------------------------------
	.byte		VOICE , 9
	.byte		        9
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_rg_title:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_rg_title_pri	@ Priority
	.byte	mus_rg_title_rev	@ Reverb.

	.word	mus_rg_title_grp

	.word	mus_rg_title_1
	.word	mus_rg_title_2
	.word	mus_rg_title_3
	.word	mus_rg_title_4
	.word	mus_rg_title_5

	.end
