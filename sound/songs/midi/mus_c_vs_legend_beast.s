	.include "MPlayDef.s"

	.equ	mus_c_vs_legend_beast_grp, voicegroup_dummy
	.equ	mus_c_vs_legend_beast_pri, 0
	.equ	mus_c_vs_legend_beast_rev, reverb_set+50
	.equ	mus_c_vs_legend_beast_mvl, 80
	.equ	mus_c_vs_legend_beast_key, 0
	.equ	mus_c_vs_legend_beast_tbs, 1
	.equ	mus_c_vs_legend_beast_exg, 1
	.equ	mus_c_vs_legend_beast_cmp, 1

	.section .rodata
	.global	mus_c_vs_legend_beast
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_c_vs_legend_beast_1:
	.byte	KEYSH , mus_c_vs_legend_beast_key+0
mus_c_vs_legend_beast_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 94*mus_c_vs_legend_beast_tbs/2
	.byte		VOICE , 36
	.byte		VOL   , 127*mus_c_vs_legend_beast_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , En0 , v127
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W24
@ 002   ----------------------------------------
mus_c_vs_legend_beast_1_002:
	.byte		N11   , En0 , v127
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_002
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_002
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_002
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_002
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_002
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_002
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_002
@ 017   ----------------------------------------
mus_c_vs_legend_beast_1_017:
	.byte		N11   , Fn0 , v127
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_017
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_002
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_017
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_002
@ 024   ----------------------------------------
mus_c_vs_legend_beast_1_024:
	.byte		N11   , En0 , v127
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		        Fn0 
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_002
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_1_024
@ 027   ----------------------------------------
	.byte		N05   , En0 , v127
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
@ 028   ----------------------------------------
	.byte	W12
	.byte		        Ds0 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
@ 029   ----------------------------------------
	.byte		N11   , Fs0 
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W24
@ 030   ----------------------------------------
	.byte		        Fn0 
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
@ 031   ----------------------------------------
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
@ 032   ----------------------------------------
	.byte		N11   , Gn0 
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W24
@ 033   ----------------------------------------
	.byte		        As0 
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
@ 034   ----------------------------------------
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
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
	.byte	GOTO
	 .word	mus_c_vs_legend_beast_1_B1
mus_c_vs_legend_beast_1_B2:
@ 043   ----------------------------------------
	.byte		VOICE , 36
	.byte		        36
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_c_vs_legend_beast_2:
	.byte	KEYSH , mus_c_vs_legend_beast_key+0
mus_c_vs_legend_beast_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 89
	.byte		VOL   , 127*mus_c_vs_legend_beast_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		TIE   , En1 , v127
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
	.byte		TIE   
	.byte	W96
@ 005   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 006   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 007   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 008   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 009   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 010   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 011   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 012   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 013   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 014   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 015   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 016   ----------------------------------------
	.byte		TIE   , Fn1 
	.byte	W96
@ 017   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 018   ----------------------------------------
	.byte		TIE   , En1 
	.byte	W96
@ 019   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 020   ----------------------------------------
	.byte		TIE   , Fn1 
	.byte	W96
@ 021   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 022   ----------------------------------------
	.byte		TIE   , En1 
	.byte	W96
@ 023   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N44   , Fn1 , v127, gtp3
	.byte	W48
@ 024   ----------------------------------------
	.byte		TIE   , En1 
	.byte	W96
@ 025   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N44   , Fn1 , v127, gtp3
	.byte	W48
@ 026   ----------------------------------------
	.byte		N05   , En1 
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
@ 027   ----------------------------------------
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
@ 028   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
@ 029   ----------------------------------------
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
@ 030   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
@ 031   ----------------------------------------
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
@ 032   ----------------------------------------
	.byte		        As1 
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
@ 033   ----------------------------------------
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
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
	.byte	GOTO
	 .word	mus_c_vs_legend_beast_2_B1
mus_c_vs_legend_beast_2_B2:
@ 042   ----------------------------------------
	.byte		VOICE , 89
	.byte		        89
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.4) ****************@

mus_c_vs_legend_beast_3:
	.byte	KEYSH , mus_c_vs_legend_beast_key+0
mus_c_vs_legend_beast_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 79
	.byte		VOL   , 127*mus_c_vs_legend_beast_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
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
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W48
	.byte		N44   , En3 , v104, gtp1
	.byte	W48
@ 009   ----------------------------------------
	.byte		N68   , An3 
	.byte	W72
	.byte		N22   , Gn3 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N44   , Fs3 , v104, gtp1
	.byte	W48
	.byte		N90   , Dn3 , v104, gtp1
	.byte	W48
@ 011   ----------------------------------------
	.byte	W48
	.byte		N32   , Dn4 , v104, gtp2
	.byte	W36
	.byte		N11   , Cn4 
	.byte	W12
@ 012   ----------------------------------------
	.byte		TIE   , Bn3 
	.byte	W96
@ 013   ----------------------------------------
	.byte	W17
	.byte		EOT   
	.byte	W07
	.byte		N22   , An3 
	.byte	W24
	.byte		TIE   , Bn3 
	.byte	W48
@ 014   ----------------------------------------
	.byte	W88
	.byte		EOT   
	.byte	W08
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte		N44   , Bn4 , v104, gtp1
	.byte	W48
	.byte		N84   , Fs4 , v104, gtp1
	.byte	W48
@ 019   ----------------------------------------
	.byte	W42
	.byte		N05   , En4 
	.byte	W06
	.byte		N15   , Fs4 
	.byte	W16
	.byte		N13   , Gn4 
	.byte	W14
	.byte		N05   , Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 020   ----------------------------------------
	.byte		N44   , En4 , v104, gtp1
	.byte	W48
	.byte		TIE   , An3 
	.byte	W48
@ 021   ----------------------------------------
	.byte	W88
	.byte		EOT   
	.byte	W08
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W24
	.byte		N22   , Dn4 
	.byte	W24
	.byte		N02   , Cs5 
	.byte	W02
	.byte		N42   , Dn5 , v104, gtp1
	.byte	W44
	.byte	W02
@ 027   ----------------------------------------
	.byte		N22   , Cs5 
	.byte	W24
	.byte		N90   , Cs4 , v104, gtp1
	.byte	W72
@ 028   ----------------------------------------
	.byte	W24
	.byte		N22   , En4 
	.byte	W24
	.byte		N02   , Ds5 
	.byte	W02
	.byte		N42   , En5 , v104, gtp1
	.byte	W44
	.byte	W02
@ 029   ----------------------------------------
	.byte		N22   , Ds5 
	.byte	W24
	.byte		N68   , Ds4 
	.byte	W72
@ 030   ----------------------------------------
	.byte	W24
	.byte		N07   , Fs4 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        As4 
	.byte	W08
	.byte		N11   , Bn4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
@ 031   ----------------------------------------
	.byte		N44   , Gn5 , v104, gtp1
	.byte	W48
	.byte		N02   , Gs5 
	.byte	W02
	.byte		N42   , Gn5 , v104, gtp1
	.byte	W44
	.byte	W02
@ 032   ----------------------------------------
	.byte		N02   , Fn5 
	.byte	W02
	.byte		N42   , Ds5 , v104, gtp1
	.byte	W44
	.byte	W02
	.byte		N02   , Cs5 
	.byte	W02
	.byte		N42   , Cn5 , v104, gtp1
	.byte	W44
	.byte	W02
@ 033   ----------------------------------------
	.byte		N02   , As4 
	.byte	W02
	.byte		N68   , Gs4 , v104, gtp3
	.byte	W76
	.byte		N05   , Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
@ 034   ----------------------------------------
mus_c_vs_legend_beast_3_034:
	.byte		N44   , Ds4 , v104, gtp1
	.byte	W48
	.byte		        Cs4 , v104, gtp1
	.byte	W48
	.byte	PEND
@ 035   ----------------------------------------
	.byte		        Ds4 , v104, gtp1
	.byte	W48
	.byte		        Bn3 , v104, gtp1
	.byte	W48
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_3_034
@ 037   ----------------------------------------
	.byte		N44   , Ds4 , v104, gtp1
	.byte	W48
	.byte		        An3 , v104, gtp1
	.byte	W48
@ 038   ----------------------------------------
mus_c_vs_legend_beast_3_038:
	.byte		N44   , Cn4 , v104, gtp1
	.byte	W48
	.byte		        As3 , v104, gtp1
	.byte	W48
	.byte	PEND
@ 039   ----------------------------------------
	.byte		        Cn4 , v104, gtp1
	.byte	W48
	.byte		        Gn3 , v104, gtp1
	.byte	W48
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_3_038
@ 041   ----------------------------------------
	.byte		N44   , Cn4 , v104, gtp1
	.byte	W48
	.byte		        An3 , v104, gtp1
	.byte	W48
	.byte	GOTO
	 .word	mus_c_vs_legend_beast_3_B1
mus_c_vs_legend_beast_3_B2:
@ 042   ----------------------------------------
	.byte		VOICE , 79
	.byte		        79
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.5) ****************@

mus_c_vs_legend_beast_4:
	.byte	KEYSH , mus_c_vs_legend_beast_key+0
mus_c_vs_legend_beast_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 60
	.byte		VOL   , 127*mus_c_vs_legend_beast_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		VOICE , 9
	.byte	W12
	.byte		N11   , En3 , v100
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N80   , Dn4 , v100, gtp3
	.byte	W36
@ 003   ----------------------------------------
	.byte	W84
	.byte		N11   , Cn4 
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Bn3 
	.byte	W12
	.byte		N80   , En3 , v100, gtp3
	.byte	W84
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N80   , Dn4 , v100, gtp3
	.byte	W36
@ 009   ----------------------------------------
	.byte	W84
	.byte		N11   , Cn4 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N56   , An3 , v100, gtp3
	.byte	W60
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
	.byte		VOICE , 60
	.byte		N44   , Bn3 , v100, gtp3
	.byte	W48
	.byte		N88   , Fs3 , v100, gtp1
	.byte	W48
@ 019   ----------------------------------------
	.byte	W42
	.byte		N05   , En3 
	.byte	W06
	.byte		N15   , Fs3 
	.byte	W16
	.byte		N13   , Gn3 
	.byte	W14
	.byte		N05   , Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
@ 020   ----------------------------------------
	.byte		N23   , En3 
	.byte	W24
	.byte		N68   , Dn3 , v100, gtp3
	.byte	W72
@ 021   ----------------------------------------
	.byte	W36
	.byte		N11   , En3 
	.byte	W12
	.byte		N32   , Dn3 , v100, gtp3
	.byte	W36
	.byte		N11   , An2 
	.byte	W12
@ 022   ----------------------------------------
	.byte		TIE   , Bn2 
	.byte	W96
@ 023   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
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
mus_c_vs_legend_beast_4_034:
	.byte		N44   , Fn3 , v100, gtp3
	.byte	W48
	.byte		        Ds3 , v100, gtp3
	.byte	W48
	.byte	PEND
@ 035   ----------------------------------------
	.byte		        Fn3 , v100, gtp3
	.byte	W48
	.byte		        Cs3 , v100, gtp3
	.byte	W48
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_4_034
@ 037   ----------------------------------------
	.byte		N44   , Fn3 , v100, gtp3
	.byte	W48
	.byte		        Bn2 , v100, gtp3
	.byte	W48
@ 038   ----------------------------------------
mus_c_vs_legend_beast_4_038:
	.byte		N44   , Dn3 , v100, gtp3
	.byte	W48
	.byte		        Cn3 , v100, gtp3
	.byte	W48
	.byte	PEND
@ 039   ----------------------------------------
	.byte		        Dn3 , v100, gtp3
	.byte	W48
	.byte		        An2 , v100, gtp3
	.byte	W48
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_4_038
@ 041   ----------------------------------------
	.byte		N44   , Dn3 , v100, gtp3
	.byte	W48
	.byte		        Bn2 , v100, gtp3
	.byte	W48
	.byte	GOTO
	 .word	mus_c_vs_legend_beast_4_B1
mus_c_vs_legend_beast_4_B2:
@ 042   ----------------------------------------
	.byte		VOICE , 60
	.byte		        60
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.6) ****************@

mus_c_vs_legend_beast_5:
	.byte	KEYSH , mus_c_vs_legend_beast_key+0
mus_c_vs_legend_beast_5_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 56
	.byte		VOL   , 127*mus_c_vs_legend_beast_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
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
@ 004   ----------------------------------------
mus_c_vs_legend_beast_5_004:
	.byte		N07   , Dn3 , v112
	.byte		N07   , Fs3 
	.byte	W08
	.byte		        En3 
	.byte		N07   , Gn3 
	.byte	W08
	.byte		        Dn3 
	.byte		N07   , Fs3 
	.byte	W08
	.byte		        En3 
	.byte		N07   , Gn3 
	.byte	W08
	.byte		        Dn3 
	.byte		N07   , Fs3 
	.byte	W08
	.byte		        En3 
	.byte		N07   , Gn3 
	.byte	W08
	.byte		        Dn3 
	.byte		N07   , Fs3 
	.byte	W08
	.byte		        En3 
	.byte		N07   , Gn3 
	.byte	W08
	.byte		        Dn3 
	.byte		N07   , Fs3 
	.byte	W08
	.byte		        En3 
	.byte		N07   , Gn3 
	.byte	W08
	.byte		        Dn3 
	.byte		N07   , Fs3 
	.byte	W08
	.byte		        En3 
	.byte		N07   , Gn3 
	.byte	W08
	.byte	PEND
@ 005   ----------------------------------------
mus_c_vs_legend_beast_5_005:
	.byte		N05   , Dn3 , v112
	.byte		N05   , Fs3 
	.byte	W06
	.byte		        En3 
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte		N05   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte		N05   , Bn3 
	.byte	W06
	.byte		        An3 
	.byte		N05   , Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte		N05   , Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte		N05   , An3 
	.byte	W06
	.byte		        En3 
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N07   , Dn3 
	.byte		N07   , Fs3 
	.byte	W08
	.byte		        Cn3 
	.byte		N07   , En3 
	.byte	W08
	.byte		        Bn2 
	.byte		N07   , Dn3 
	.byte	W08
	.byte		        An2 
	.byte		N07   , Cn3 
	.byte	W08
	.byte		        Bn2 
	.byte		N07   , Dn3 
	.byte	W08
	.byte		        Cn3 
	.byte		N07   , En3 
	.byte	W08
	.byte	PEND
@ 006   ----------------------------------------
mus_c_vs_legend_beast_5_006:
	.byte		N07   , Dn4 , v112
	.byte		N07   , Fs4 
	.byte	W08
	.byte		        En4 
	.byte		N07   , Gn4 
	.byte	W08
	.byte		        Dn4 
	.byte		N07   , Fs4 
	.byte	W08
	.byte		        En4 
	.byte		N07   , Gn4 
	.byte	W08
	.byte		        Dn4 
	.byte		N07   , Fs4 
	.byte	W08
	.byte		        En4 
	.byte		N07   , Gn4 
	.byte	W08
	.byte		        Dn4 
	.byte		N07   , Fs4 
	.byte	W08
	.byte		        En4 
	.byte		N07   , Gn4 
	.byte	W08
	.byte		        Dn4 
	.byte		N07   , Fs4 
	.byte	W08
	.byte		        En4 
	.byte		N07   , Gn4 
	.byte	W08
	.byte		        Dn4 
	.byte		N07   , Fs4 
	.byte	W08
	.byte		        En4 
	.byte		N07   , Gn4 
	.byte	W08
	.byte	PEND
@ 007   ----------------------------------------
mus_c_vs_legend_beast_5_007:
	.byte		N05   , Dn4 , v112
	.byte		N05   , Fs4 
	.byte	W06
	.byte		        En4 
	.byte		N05   , Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N05   , An4 
	.byte	W06
	.byte		        Gn4 
	.byte		N05   , Bn4 
	.byte	W06
	.byte		        An4 
	.byte		N05   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte		N05   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte		N05   , An4 
	.byte	W06
	.byte		        En4 
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N07   , Dn4 
	.byte		N07   , Fs4 
	.byte	W08
	.byte		        Cn4 
	.byte		N07   , En4 
	.byte	W08
	.byte		        Bn3 
	.byte		N07   , Dn4 
	.byte	W08
	.byte		        An3 
	.byte		N07   , Cn4 
	.byte	W08
	.byte		        Fs3 
	.byte		N07   , Bn3 
	.byte	W08
	.byte		        En3 
	.byte		N07   , An3 
	.byte	W08
	.byte	PEND
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_5_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_5_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_5_006
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_5_007
@ 014   ----------------------------------------
	.byte		N23   , Fs3 , v112
	.byte		N23   , Bn3 
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
	.byte		N07   , Fs3 
	.byte		N07   , Bn3 
	.byte	W08
	.byte		        Cs3 
	.byte		N07   , Fs3 
	.byte	W08
	.byte		        Dn3 
	.byte		N07   , Gn3 
	.byte	W08
	.byte		        Fs3 
	.byte		N07   , Bn3 
	.byte	W08
	.byte		        Cs3 
	.byte		N07   , Fs3 
	.byte	W08
	.byte		        Dn3 
	.byte		N07   , Gn3 
	.byte	W08
	.byte		        Fs3 
	.byte		N07   , Bn3 
	.byte	W08
	.byte		        Cs3 
	.byte		N07   , Fs3 
	.byte	W08
	.byte		        Dn3 
	.byte		N07   , Gn3 
	.byte	W08
	.byte		        Fs3 
	.byte		N07   , Bn3 
	.byte	W08
	.byte		        Cs3 
	.byte		N07   , Fs3 
	.byte	W08
	.byte		        Dn3 
	.byte		N07   , Gn3 
	.byte	W08
@ 025   ----------------------------------------
	.byte		        Fs3 
	.byte		N07   , Bn3 
	.byte	W08
	.byte		        Cs3 
	.byte		N07   , Fs3 
	.byte	W08
	.byte		        Dn3 
	.byte		N07   , Gn3 
	.byte	W08
	.byte		        Fs3 
	.byte		N07   , Bn3 
	.byte	W08
	.byte		        Cs3 
	.byte		N07   , Fs3 
	.byte	W08
	.byte		        Dn3 
	.byte		N07   , Gn3 
	.byte	W08
	.byte		        An3 
	.byte		N07   , Dn4 
	.byte	W08
	.byte		        Dn3 
	.byte		N07   , Gn3 
	.byte	W08
	.byte		        En3 
	.byte		N07   , An3 
	.byte	W08
	.byte		N07   
	.byte		N07   , Dn4 
	.byte	W08
	.byte		        Dn3 
	.byte		N07   , Gn3 
	.byte	W08
	.byte		        En3 
	.byte		N07   , An3 
	.byte	W08
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
	.byte	W12
	.byte		N02   , Bn1 
	.byte	W02
	.byte		N03   , Fs2 
	.byte	W02
	.byte		N02   , Bn2 
	.byte	W03
	.byte		N03   , Fn3 
	.byte	W03
	.byte		        Bn3 
	.byte	W02
	.byte		N23   , Ds4 
	.byte	W72
@ 035   ----------------------------------------
	.byte	W12
	.byte		N02   , Bn4 
	.byte	W02
	.byte		N03   , Fs4 
	.byte	W02
	.byte		N04   , Bn3 
	.byte	W03
	.byte		N03   , Fn3 
	.byte	W03
	.byte		N01   , Bn2 
	.byte	W02
	.byte		N23   , Ds2 
	.byte	W72
@ 036   ----------------------------------------
	.byte	W12
	.byte		N04   , Bn1 
	.byte	W02
	.byte		N03   , Fs2 
	.byte	W02
	.byte		N04   , Bn2 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Bn3 
	.byte	W02
	.byte		N23   , Ds4 
	.byte	W72
@ 037   ----------------------------------------
	.byte	W12
	.byte		N02   , Bn4 
	.byte	W02
	.byte		N03   , Fs4 
	.byte	W02
	.byte		N04   , Bn3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Bn2 
	.byte	W02
	.byte		N23   , Ds2 
	.byte	W72
@ 038   ----------------------------------------
	.byte	W12
	.byte		N04   , Gs1 
	.byte	W02
	.byte		N03   , Ds2 
	.byte	W02
	.byte		N04   , Gs2 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Gs3 
	.byte	W02
	.byte		N23   , Cn4 
	.byte	W72
@ 039   ----------------------------------------
	.byte	W12
	.byte		N04   , Gs4 
	.byte	W02
	.byte		N03   , Ds4 
	.byte	W02
	.byte		N04   , Gs3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Gs2 
	.byte	W02
	.byte		N23   , Cn2 
	.byte	W72
@ 040   ----------------------------------------
	.byte	W12
	.byte		N04   , Bn1 
	.byte	W02
	.byte		N05   , Fs2 
	.byte	W02
	.byte		        Bn2 
	.byte	W03
	.byte		N04   , Fn3 
	.byte	W03
	.byte		N03   , Bn3 
	.byte	W02
	.byte		N23   , Ds4 
	.byte	W72
@ 041   ----------------------------------------
	.byte	W12
	.byte		N04   , Bn4 
	.byte	W02
	.byte		N03   , Fs4 
	.byte	W02
	.byte		N04   , Bn3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		N03   , Bn2 
	.byte	W02
	.byte		N23   , Ds2 
	.byte	W72
	.byte	GOTO
	 .word	mus_c_vs_legend_beast_5_B1
mus_c_vs_legend_beast_5_B2:
@ 042   ----------------------------------------
	.byte		VOICE , 56
	.byte		        56
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.7) ****************@

mus_c_vs_legend_beast_6:
	.byte	KEYSH , mus_c_vs_legend_beast_key+0
mus_c_vs_legend_beast_6_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		VOL   , 127*mus_c_vs_legend_beast_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
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
@ 004   ----------------------------------------
	.byte		VOICE , 84
	.byte		TIE   , En2 , v096
	.byte	W96
@ 005   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 006   ----------------------------------------
	.byte		TIE   , Bn1 
	.byte	W96
@ 007   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte		TIE   , En2 
	.byte	W96
@ 011   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 012   ----------------------------------------
	.byte		TIE   , Bn1 
	.byte	W96
@ 013   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 014   ----------------------------------------
	.byte		VOICE , 82
	.byte		N23   , Dn3 
	.byte	W48
	.byte		        Fs3 
	.byte	W48
@ 015   ----------------------------------------
mus_c_vs_legend_beast_6_015:
	.byte		N23   , An2 , v096
	.byte	W48
	.byte		        Dn3 
	.byte	W48
	.byte	PEND
@ 016   ----------------------------------------
	.byte		        En3 
	.byte	W48
	.byte		        Cn3 
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
	.byte		        Gn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
@ 018   ----------------------------------------
	.byte		        Fs3 
	.byte	W48
	.byte		        Dn3 
	.byte	W48
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_6_015
@ 020   ----------------------------------------
	.byte		N23   , En3 , v096
	.byte	W48
	.byte		        Cn3 
	.byte	W48
@ 021   ----------------------------------------
	.byte	W24
	.byte		N23   
	.byte	W48
	.byte		        Dn3 
	.byte	W24
@ 022   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 023   ----------------------------------------
mus_c_vs_legend_beast_6_023:
	.byte	W48
	.byte		N23   , Cn3 , v096
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte	PEND
@ 024   ----------------------------------------
	.byte		        Bn2 
	.byte	W96
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_6_023
@ 026   ----------------------------------------
	.byte		VOICE , 80
	.byte		N11   , En1 , v096
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 027   ----------------------------------------
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 028   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 029   ----------------------------------------
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 030   ----------------------------------------
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
@ 031   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 032   ----------------------------------------
	.byte		        As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 033   ----------------------------------------
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
@ 034   ----------------------------------------
mus_c_vs_legend_beast_6_034:
	.byte		N23   , Bn2 , v096
	.byte	W48
	.byte		        An2 
	.byte	W48
	.byte	PEND
@ 035   ----------------------------------------
	.byte		        Bn2 
	.byte	W48
	.byte		        Gn2 
	.byte	W48
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_6_034
@ 037   ----------------------------------------
	.byte		N23   , Bn2 , v096
	.byte	W48
	.byte		        Fn2 
	.byte	W48
@ 038   ----------------------------------------
mus_c_vs_legend_beast_6_038:
	.byte		N23   , Gs2 , v096
	.byte	W48
	.byte		        Fs2 
	.byte	W48
	.byte	PEND
@ 039   ----------------------------------------
	.byte		        Gs2 
	.byte	W48
	.byte		        En2 
	.byte	W48
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_c_vs_legend_beast_6_038
@ 041   ----------------------------------------
	.byte		N23   , Gs2 , v096
	.byte	W48
	.byte		        Fn2 
	.byte	W48
	.byte	GOTO
	 .word	mus_c_vs_legend_beast_6_B1
mus_c_vs_legend_beast_6_B2:
@ 042   ----------------------------------------
	.byte		VOICE , 80
	.byte		        80
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 7 (Midi-Chn.10) ****************@

mus_c_vs_legend_beast_7:
	.byte	KEYSH , mus_c_vs_legend_beast_key+0
mus_c_vs_legend_beast_7_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_c_vs_legend_beast_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W60
	.byte	W03
	.byte		N02   , Cn1 , v116
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N07   
	.byte	W08
	.byte		        Cn1 , v096
	.byte	W08
	.byte		        Cn1 , v076
	.byte	W08
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W92
	.byte		N03   , Cs3 , v116
	.byte	W04
@ 003   ----------------------------------------
	.byte	W06
	.byte		N07   , Ds3 , v112
	.byte	W08
	.byte		        Cn3 , v104
	.byte	W08
	.byte		        Cs3 , v100
	.byte	W17
	.byte		N11   , Cn3 , v084
	.byte	W12
	.byte		        Cs3 , v076
	.byte	W12
	.byte		        Cn3 , v068
	.byte	W32
	.byte	W01
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W15
	.byte		N02   , Cn1 , v116
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N07   
	.byte	W08
	.byte		        Cn1 , v088
	.byte	W08
	.byte		        Cn1 , v056
	.byte	W56
@ 007   ----------------------------------------
	.byte	W12
	.byte		N11   , Dn1 , v116
	.byte	W84
@ 008   ----------------------------------------
	.byte	W78
	.byte		N08   , Ds3 
	.byte	W09
	.byte		        Cn3 , v076
	.byte	W09
@ 009   ----------------------------------------
	.byte		N23   , Cs3 
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W16
	.byte		N03   , Cn1 , v116
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W05
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 012   ----------------------------------------
	.byte	W06
	.byte		N05   
	.byte	W90
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W15
	.byte		N02   , Dn1 
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Cn1 , v076
	.byte	W06
	.byte		        Cn1 , v056
	.byte	W54
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W18
	.byte		N02   , Dn1 , v116
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte		N07   
	.byte	W08
	.byte		        Cn1 , v088
	.byte	W08
	.byte		        Cn1 , v056
	.byte	W56
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
	.byte	W72
	.byte		N02   , Cn1 , v076
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        Cn1 , v080
	.byte	W03
	.byte		        Cn1 , v088
	.byte	W03
	.byte		        Cn1 , v092
	.byte	W03
	.byte		        Cn1 , v096
	.byte	W03
	.byte		        Cn1 , v104
	.byte	W03
	.byte		        Cn1 , v108
	.byte	W03
@ 034   ----------------------------------------
	.byte		N07   , Cn1 , v116
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		        Cn1 , v104
	.byte	W08
	.byte		        Cn1 , v088
	.byte	W08
	.byte		        Cn1 , v072
	.byte	W08
	.byte		        Cn1 , v056
	.byte	W56
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
	.byte	GOTO
	 .word	mus_c_vs_legend_beast_7_B1
mus_c_vs_legend_beast_7_B2:
@ 042   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_c_vs_legend_beast:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_c_vs_legend_beast_pri	@ Priority
	.byte	mus_c_vs_legend_beast_rev	@ Reverb.

	.word	mus_c_vs_legend_beast_grp

	.word	mus_c_vs_legend_beast_1
	.word	mus_c_vs_legend_beast_2
	.word	mus_c_vs_legend_beast_3
	.word	mus_c_vs_legend_beast_4
	.word	mus_c_vs_legend_beast_5
	.word	mus_c_vs_legend_beast_6
	.word	mus_c_vs_legend_beast_7

	.end
