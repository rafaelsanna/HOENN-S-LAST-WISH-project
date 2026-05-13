	.include "MPlayDef.s"

	.equ	mus_route104_grp, voicegroup_route104
	.equ	mus_route104_pri, 0
	.equ	mus_route104_rev, reverb_set+50
	.equ	mus_route104_mvl, 97
	.equ	mus_route104_key, 0
	.equ	mus_route104_tbs, 1
	.equ	mus_route104_exg, 1
	.equ	mus_route104_cmp, 1

	.section .rodata
	.global	mus_route104
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_route104_1:
	.byte	KEYSH , mus_route104_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 196*mus_route104_tbs/2
	.byte		VOICE , 38
	.byte		VOL   , 127*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
mus_route104_1_B1:
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
	.byte		N23   , Cs1 , v096
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N56   , Ds1 , v096, gtp3
	.byte	W24
@ 017   ----------------------------------------
mus_route104_1_017:
	.byte	W36
	.byte		N11   , Cn2 , v096
	.byte	W12
	.byte		N23   , Ds1 
	.byte	W24
	.byte		N44   , Ds1 , v096, gtp3
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   , Cn2 
	.byte	W12
	.byte		N23   , Cs1 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 019   ----------------------------------------
mus_route104_1_019:
	.byte		N23   , Cn1 , v096
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N56   , Cn1 , v096, gtp3
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
	.byte	W36
	.byte		N11   , Cn2 
	.byte	W12
	.byte		N23   , Fn1 
	.byte	W24
	.byte		N32   , Fn1 , v096, gtp3
	.byte	W24
@ 021   ----------------------------------------
	.byte	W12
	.byte		N11   , En1 
	.byte	W12
	.byte		N23   , Ds1 
	.byte	W24
	.byte		N11   , Ds2 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 022   ----------------------------------------
	.byte		N23   , Cs1 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N56   , Cs1 , v096, gtp3
	.byte	W24
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_1_017
@ 024   ----------------------------------------
	.byte	W24
	.byte		N23   , Ds1 , v096
	.byte	W24
	.byte		N32   , Ds1 , v096, gtp3
	.byte	W36
	.byte		N11   , As1 
	.byte	W12
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_1_019
@ 026   ----------------------------------------
	.byte	W36
	.byte		N11   , Cn2 , v096
	.byte	W12
	.byte		N23   , Fn1 
	.byte	W24
	.byte		N11   
	.byte	W24
@ 027   ----------------------------------------
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N23   , Ds1 
	.byte	W24
	.byte		N11   , Ds2 
	.byte	W12
	.byte		N23   , Dn1 
	.byte	W24
	.byte		N11   , Dn2 
	.byte	W12
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
	.byte	GOTO
	 .word	mus_route104_1_B1
mus_route104_1_B2:
@ 034   ----------------------------------------
	.byte		VOICE , 38
	.byte		        38
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_route104_2:
	.byte	KEYSH , mus_route104_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_route104_mvl/mxv
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
mus_route104_2_B1:
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
mus_route104_2_015:
	.byte		N07   , Fs4 , v044
	.byte	W12
	.byte		        Fs4 , v056
	.byte	W12
	.byte		        Fs4 , v044
	.byte	W12
	.byte		        Fs4 , v056
	.byte	W12
	.byte		        Fs4 , v044
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Fs4 , v056
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_route104_2_016:
	.byte		N07   , Fs4 , v044
	.byte	W12
	.byte		        Fs4 , v056
	.byte	W12
	.byte		        Fs4 , v044
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Fs4 , v056
	.byte	W12
	.byte		        Fs4 , v044
	.byte	W12
	.byte		        Fs4 , v056
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_route104_2_017:
	.byte		N07   , Fs4 , v044
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Fs4 , v056
	.byte	W12
	.byte		        Fs4 , v044
	.byte	W12
	.byte		        Fs4 , v056
	.byte	W12
	.byte		        Fs4 , v044
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_2_015
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_2_016
@ 020   ----------------------------------------
mus_route104_2_020:
	.byte		N07   , Fs4 , v044
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Fs4 , v056
	.byte	W12
	.byte		        Fs4 , v044
	.byte	W12
	.byte		N01   , Fs4 , v056
	.byte	W12
	.byte		N07   , Fs4 , v044
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_2_015
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_2_016
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_2_017
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_2_015
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_2_016
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_2_020
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
	.byte	GOTO
	 .word	mus_route104_2_B1
mus_route104_2_B2:
@ 033   ----------------------------------------
	.byte		VOICE , 127
	.byte		        127
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_route104_3:
	.byte	KEYSH , mus_route104_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 56
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W84
	.byte		N05   , Cn3 , v112
	.byte	W06
	.byte		        Cs3 
	.byte	W06
mus_route104_3_B1:
@ 003   ----------------------------------------
	.byte		N11   , Ds3 , v112
	.byte	W24
	.byte		N05   , Cn3 
	.byte	W12
	.byte		        As3 
	.byte	W24
	.byte		N32   , Gs3 , v112, gtp3
	.byte	W12
	.byte		N11   , Ds4 
	.byte	W24
@ 004   ----------------------------------------
	.byte		N03   , Gn3 
	.byte		N05   , Cn4 
	.byte	W04
	.byte		N03   , Gs3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		N11   , Fn3 
	.byte		N05   , As4 
	.byte	W24
	.byte		        Ds3 
	.byte		N32   , Gs4 , v112, gtp3
	.byte	W12
	.byte		TIE   , Cs3 
	.byte	W24
	.byte		N03   , Gn4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		N11   , Fn4 
	.byte	W12
@ 005   ----------------------------------------
	.byte	W12
	.byte		N05   , Ds4 
	.byte	W12
	.byte		N11   , Cs4 , v108
	.byte	W24
	.byte		        Cn4 , v100
	.byte	W11
	.byte		EOT   , Cs3 
	.byte	W01
	.byte		N05   , Cn3 , v112
	.byte		N05   , Gs3 , v096
	.byte	W24
	.byte		        Cs3 , v112
	.byte		N11   , As3 , v096
	.byte	W12
@ 006   ----------------------------------------
	.byte		N80   , Ds3 , v112, gtp3
	.byte		N80   , Cn4 , v096, gtp3
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W36
	.byte		N05   , Fs4 , v080
	.byte	W12
	.byte		        Fs4 , v088
	.byte	W12
	.byte		        Fs4 , v092
	.byte	W12
	.byte		        Fs4 , v096
	.byte	W12
	.byte		N11   , Gn4 , v104
	.byte	W12
@ 009   ----------------------------------------
	.byte		        Gs4 , v127
	.byte	W96
@ 010   ----------------------------------------
	.byte	W12
	.byte		N05   , Ds5 , v112
	.byte	W24
	.byte		N32   , Cs5 , v112, gtp3
	.byte	W36
	.byte		N03   , Cn5 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		N11   , As4 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N68   , Fs4 , v112, gtp3
	.byte	W72
@ 012   ----------------------------------------
	.byte	W36
	.byte		N05   , Fn4 
	.byte	W24
	.byte		N11   , Fs4 
	.byte	W12
	.byte		N68   , Gs4 , v112, gtp3
	.byte	W24
@ 013   ----------------------------------------
	.byte	W48
	.byte		        As4 , v112, gtp3
	.byte	W48
@ 014   ----------------------------------------
	.byte	W60
	.byte		N32   , Ds5 , v127, gtp3
	.byte	W36
@ 015   ----------------------------------------
	.byte		N23   , Cn5 , v112
	.byte	W24
	.byte		N11   , Cs5 
	.byte	W12
	.byte		        Ds5 
	.byte	W24
	.byte		N32   , Cs5 , v112, gtp3
	.byte	W36
@ 016   ----------------------------------------
	.byte		N11   , Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N68   , As4 , v112, gtp3
	.byte	W48
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte		N23   , Gn4 
	.byte	W24
	.byte		N11   , Gs4 
	.byte	W12
	.byte		        As4 
	.byte	W24
	.byte		N32   , Ds5 , v112, gtp3
	.byte	W36
@ 019   ----------------------------------------
	.byte		N11   , Cs5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N23   , As4 
	.byte	W24
	.byte		N05   , Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N32   , An4 , v112, gtp3
	.byte	W12
@ 020   ----------------------------------------
	.byte	W24
	.byte		        As4 , v112, gtp3
	.byte	W36
	.byte		        Cn5 , v112, gtp3
	.byte	W36
@ 021   ----------------------------------------
	.byte		N68   , Gs4 , v112, gtp3
	.byte	W72
	.byte		N23   , Fn4 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N11   , Gn4 
	.byte	W36
	.byte		N05   , Gs4 
	.byte	W12
	.byte		N32   , Gs4 , v112, gtp3
	.byte	W36
	.byte		N23   , Gn4 
	.byte	W12
@ 023   ----------------------------------------
	.byte	W12
	.byte		N05   , Fn4 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Gs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W36
@ 024   ----------------------------------------
	.byte		N56   , Fn4 , v112, gtp3
	.byte	W60
	.byte		N44   , Ds4 , v112, gtp3
	.byte	W36
@ 025   ----------------------------------------
	.byte	W12
	.byte		N11   , Cn4 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		TIE   , Cn5 
	.byte	W48
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W23
	.byte		EOT   
	.byte	W01
	.byte		N11   , As4 
	.byte	W12
	.byte		N05   , Gs4 
	.byte	W24
	.byte		N32   , Gs4 , v112, gtp3
	.byte	W36
@ 028   ----------------------------------------
	.byte		N11   , Gn4 
	.byte	W12
	.byte		N32   , Fn4 , v112, gtp3
	.byte	W36
	.byte		N11   , Gn4 
	.byte	W24
	.byte		        Gs4 
	.byte	W12
	.byte		N05   , As4 
	.byte	W12
@ 029   ----------------------------------------
	.byte	W12
	.byte		N32   , As4 , v112, gtp3
	.byte	W36
	.byte		N11   , Gs4 
	.byte	W12
	.byte		N32   , Gn4 , v112, gtp3
	.byte	W36
@ 030   ----------------------------------------
	.byte		TIE   , An4 
	.byte	W96
@ 031   ----------------------------------------
	.byte	W11
	.byte		EOT   
	.byte	W01
	.byte		N32   , Gn4 , v088, gtp3
	.byte	W36
	.byte		N68   , Fn4 , v080, gtp3
	.byte	W48
@ 032   ----------------------------------------
	.byte	W24
	.byte		N05   , Ds4 , v096
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 , v092
	.byte	W06
	.byte		        Fn4 , v088
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 , v084
	.byte	W06
	.byte		        Ds4 , v080
	.byte	W06
	.byte		        Fn4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 , v072
	.byte	W06
	.byte		        Cn3 , v112
	.byte		N05   , Ds4 , v068
	.byte	W06
	.byte		        Cs3 , v112
	.byte		N05   , Fn4 , v064
	.byte	W06
	.byte	GOTO
	 .word	mus_route104_3_B1
mus_route104_3_B2:
@ 033   ----------------------------------------
	.byte		VOICE , 56
	.byte		        56
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_route104_4:
	.byte	KEYSH , mus_route104_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 60
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		VOICE , 58
	.byte	W60
	.byte		N32   , Ds1 , v100, gtp3
	.byte	W36
mus_route104_4_B1:
@ 003   ----------------------------------------
	.byte		N11   , Gs1 , v127
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte		VOICE , 60
	.byte		N05   , Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N11   , Ds4 
	.byte	W24
	.byte		N05   , Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N68   , Ds4 , v127, gtp3
	.byte	W48
@ 008   ----------------------------------------
	.byte	W36
	.byte		N05   , Fs3 , v080
	.byte	W12
	.byte		        Fs3 , v088
	.byte	W12
	.byte		        Fs3 , v092
	.byte	W12
	.byte		        Cs3 , v096
	.byte	W12
	.byte		N11   , Gn3 , v104
	.byte	W12
@ 009   ----------------------------------------
	.byte		        Ds3 , v127
	.byte	W24
	.byte		N05   , Cn3 , v112
	.byte	W12
	.byte		        Ds4 
	.byte	W24
	.byte		N32   , Cs4 , v112, gtp3
	.byte	W36
@ 010   ----------------------------------------
	.byte		N03   , Cn4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		N11   , As3 
	.byte	W24
	.byte		        Gs3 
	.byte	W12
	.byte		TIE   , Fs3 
	.byte	W48
@ 011   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N05   , Fn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W12
@ 012   ----------------------------------------
	.byte		TIE   , Gs3 
	.byte	W96
@ 013   ----------------------------------------
	.byte	W11
	.byte		EOT   
	.byte	W01
	.byte		N11   , Cs4 
	.byte	W24
	.byte		        Ds4 
	.byte	W12
	.byte		N44   , En4 , v127, gtp3
	.byte	W48
@ 014   ----------------------------------------
	.byte		N11   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N32   , Ds4 , v127, gtp3
	.byte	W72
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W66
	.byte		VOICE , 14
	.byte	W18
	.byte		N32   , Fn4 , v127, gtp3
	.byte	W12
@ 017   ----------------------------------------
	.byte	W24
	.byte		        Ds4 , v127, gtp3
	.byte	W36
	.byte		        Cs4 , v127, gtp3
	.byte	W36
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W84
	.byte		        An3 , v112, gtp3
	.byte	W12
@ 020   ----------------------------------------
	.byte	W24
	.byte		        As3 , v112, gtp3
	.byte	W36
	.byte		        Cn4 , v112, gtp3
	.byte	W36
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
	.byte		VOICE , 60
	.byte	W48
	.byte		N11   , As3 
	.byte	W12
	.byte		N32   , Bn3 , v112, gtp3
	.byte	W36
@ 030   ----------------------------------------
	.byte		TIE   , Cn4 
	.byte	W96
@ 031   ----------------------------------------
	.byte	W11
	.byte		EOT   
	.byte	W01
	.byte		N32   , As3 , v088, gtp3
	.byte	W36
	.byte		N56   , An3 , v080, gtp3
	.byte	W48
@ 032   ----------------------------------------
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N68   , Ds3 , v080, gtp3
	.byte	W72
	.byte	GOTO
	 .word	mus_route104_4_B1
mus_route104_4_B2:
@ 033   ----------------------------------------
	.byte		VOICE , 60
	.byte		        60
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_route104_5:
	.byte	KEYSH , mus_route104_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 47
	.byte		VOL   , 127*mus_route104_mvl/mxv
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
	.byte	W84
	.byte		N05   , Ds2 , v096
	.byte	W06
	.byte		        Ds2 , v104
	.byte	W06
mus_route104_5_B1:
@ 003   ----------------------------------------
mus_route104_5_003:
	.byte		N32   , Gs1 , v112, gtp3
	.byte	W72
	.byte		        Gs1 , v112, gtp3
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W48
	.byte		        Cs2 , v112, gtp3
	.byte	W48
@ 005   ----------------------------------------
	.byte	W24
	.byte		        Fs1 , v112, gtp3
	.byte	W60
	.byte		N05   , Gs1 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_5_003
@ 007   ----------------------------------------
	.byte	W48
	.byte		N32   , Gs2 , v112, gtp3
	.byte	W36
	.byte		        Ds2 , v112, gtp3
	.byte	W12
@ 008   ----------------------------------------
	.byte	W24
	.byte		        Fs2 , v112, gtp3
	.byte	W36
	.byte		N23   , Cs2 
	.byte	W24
	.byte		N05   , Ds2 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 009   ----------------------------------------
	.byte		N32   , Ds2 , v112, gtp3
	.byte	W60
	.byte		N11   , Gs1 
	.byte	W12
	.byte		N32   , Gs1 , v112, gtp3
	.byte	W24
@ 010   ----------------------------------------
	.byte	W48
	.byte		        Fs2 , v112, gtp3
	.byte	W36
	.byte		N23   , As1 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W12
	.byte		N11   , Gs1 
	.byte	W12
	.byte		N32   , Cs2 , v112, gtp3
	.byte	W36
	.byte		        Gn1 , v112, gtp3
	.byte	W36
@ 012   ----------------------------------------
	.byte		        Gs2 , v112, gtp3
	.byte	W72
	.byte		N05   , Gs1 
	.byte	W05
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W01
@ 013   ----------------------------------------
	.byte	W05
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		N23   , Cs2 
	.byte	W24
	.byte		N23   
	.byte	W24
@ 014   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		        Ds2 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W24
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
	.byte		N32   , Cs2 , v112, gtp3
	.byte	W96
@ 028   ----------------------------------------
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N32   , Cs2 , v112, gtp3
	.byte	W36
	.byte		        Ds2 , v112, gtp3
	.byte	W48
@ 029   ----------------------------------------
	.byte	W60
	.byte		N05   
	.byte	W05
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W07
@ 030   ----------------------------------------
	.byte		N68   , Fn2 , v112, gtp3
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W84
	.byte		N05   , Ds2 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	GOTO
	 .word	mus_route104_5_B1
mus_route104_5_B2:
@ 033   ----------------------------------------
	.byte		VOICE , 47
	.byte		        47
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_route104_6:
	.byte	KEYSH , mus_route104_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
mus_route104_6_B1:
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
	.byte		N92   , Gs2 , v080, gtp3
	.byte	W96
@ 016   ----------------------------------------
	.byte		N05   , Gn2 , v092
	.byte	W12
	.byte		        Gs2 , v100
	.byte	W12
	.byte		        Cn3 , v108
	.byte	W12
	.byte		        Ds3 , v112
	.byte	W12
	.byte		N92   , As2 , v080, gtp3
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
	.byte		N05   , An2 , v092
	.byte	W12
	.byte		        As2 , v100
	.byte	W12
	.byte		        Fn3 , v108
	.byte	W12
	.byte		        Gn3 , v112
	.byte	W12
@ 018   ----------------------------------------
	.byte		N92   , As2 , v080, gtp3
	.byte	W96
@ 019   ----------------------------------------
	.byte		N05   , An2 , v092
	.byte	W12
	.byte		        As2 , v100
	.byte	W12
	.byte		        Fn3 , v108
	.byte	W12
	.byte		        Gn3 , v112
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W48
	.byte		N32   , Ds4 , v112, gtp3
	.byte	W36
	.byte		N23   , Cs4 
	.byte	W12
@ 023   ----------------------------------------
	.byte	W12
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W24
	.byte		        Gs3 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 024   ----------------------------------------
	.byte		TIE   , Cn4 
	.byte	W96
@ 025   ----------------------------------------
	.byte	W11
	.byte		EOT   
	.byte	W36
	.byte	W01
	.byte		N05   , Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 026   ----------------------------------------
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N05   
	.byte	W12
@ 027   ----------------------------------------
	.byte		        Cs4 , v072
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gs3 , v076
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn4 , v080
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs4 , v084
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn4 , v088
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs4 , v092
	.byte	W06
	.byte		N05   
	.byte	W06
@ 028   ----------------------------------------
	.byte		        Fn5 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs5 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs5 , v100
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds4 , v072
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        As3 , v076
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn4 , v080
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 029   ----------------------------------------
	.byte		        As4 
	.byte	W06
	.byte		        As4 , v084
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn4 , v088
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As4 , v092
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds5 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As5 , v100
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn5 
	.byte	W12
@ 030   ----------------------------------------
	.byte		TIE   , An4 , v112
	.byte	W96
@ 031   ----------------------------------------
	.byte	W11
	.byte		EOT   
	.byte	W01
	.byte		N32   , Gn4 , v088, gtp3
	.byte	W36
	.byte		N68   , Fn4 , v080, gtp3
	.byte	W48
@ 032   ----------------------------------------
	.byte	W24
	.byte		        Cs3 , v048, gtp2
	.byte	W72
	.byte	GOTO
	 .word	mus_route104_6_B1
mus_route104_6_B2:
@ 033   ----------------------------------------
	.byte		VOICE , 81
	.byte		        81
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_route104_7:
	.byte	KEYSH , mus_route104_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 86
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
mus_route104_7_B1:
@ 003   ----------------------------------------
	.byte		VOICE , 80
	.byte		N05   , Gs3 , v064
	.byte	W36
	.byte		N05   
	.byte	W48
	.byte		N05   
	.byte	W12
@ 004   ----------------------------------------
mus_route104_7_004:
	.byte		N05   , Gs3 , v064
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		        Fs3 , v096
	.byte	W12
	.byte		        Gn3 , v064
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Gs3 
	.byte	W36
	.byte		N05   
	.byte	W48
	.byte		N05   
	.byte	W12
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_7_004
@ 008   ----------------------------------------
	.byte	W36
	.byte		N05   , Fs3 , v064
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 009   ----------------------------------------
	.byte		        Gs3 
	.byte	W36
	.byte		        Ds4 
	.byte	W48
	.byte		N05   
	.byte	W12
@ 010   ----------------------------------------
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W36
	.byte		N05   
	.byte	W12
@ 011   ----------------------------------------
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
@ 012   ----------------------------------------
	.byte		        Gs4 
	.byte	W36
	.byte		N05   
	.byte	W48
	.byte		N05   
	.byte	W12
@ 013   ----------------------------------------
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N68   , En4 , v064, gtp3
	.byte	W48
@ 014   ----------------------------------------
	.byte	W24
	.byte		        Gn4 , v064, gtp3
	.byte	W72
@ 015   ----------------------------------------
	.byte		VOICE , 86
	.byte		N17   , Ds3 , v080
	.byte	W36
	.byte		        Fn3 
	.byte	W36
	.byte		        Ds3 
	.byte	W24
@ 016   ----------------------------------------
	.byte	W12
	.byte		        Fn3 
	.byte	W36
	.byte		N17   
	.byte	W36
	.byte		        Gn3 
	.byte	W12
@ 017   ----------------------------------------
mus_route104_7_017:
	.byte	W24
	.byte		N17   , Fn3 , v080
	.byte	W36
	.byte		        Gn3 
	.byte	W36
	.byte	PEND
@ 018   ----------------------------------------
mus_route104_7_018:
	.byte		N17   , Fn3 , v080
	.byte	W36
	.byte		        Gn3 
	.byte	W36
	.byte		        Fn3 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
	.byte	W12
	.byte		        Gn3 
	.byte	W36
	.byte		        As3 
	.byte	W36
	.byte		        Gn3 
	.byte	W12
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_7_017
@ 021   ----------------------------------------
	.byte		N17   , Ds3 , v080
	.byte	W36
	.byte		        Fn3 
	.byte	W36
	.byte		        Ds3 
	.byte	W24
@ 022   ----------------------------------------
	.byte	W12
	.byte		        Fn3 
	.byte	W36
	.byte		        Ds3 
	.byte	W36
	.byte		        Fn3 
	.byte	W12
@ 023   ----------------------------------------
	.byte	W24
	.byte		        Ds3 
	.byte	W36
	.byte		        Fn3 
	.byte	W36
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_7_018
@ 025   ----------------------------------------
	.byte	W12
	.byte		N17   , Gn3 , v080
	.byte	W36
	.byte		N44   , An3 , v080, gtp3
	.byte	W48
@ 026   ----------------------------------------
	.byte		N05   , Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N23   , Cn4 
	.byte	W24
	.byte		N05   , Fn3 
	.byte	W12
	.byte		N32   , Fn3 , v080, gtp3
	.byte	W36
@ 027   ----------------------------------------
	.byte	W72
	.byte		N05   , Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 028   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W54
@ 029   ----------------------------------------
	.byte	W24
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_route104_7_B1
mus_route104_7_B2:
@ 033   ----------------------------------------
	.byte		VOICE , 86
	.byte		        86
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_route104_8:
	.byte	KEYSH , mus_route104_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 46
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
mus_route104_8_B1:
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
	.byte	W48
	.byte		N05   , Cs3 , v096
	.byte	W06
	.byte		        En3 , v100
	.byte	W06
	.byte		        Gs3 , v104
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gs3 , v108
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 , v112
	.byte	W06
	.byte		        Cs4 , v116
	.byte	W06
@ 014   ----------------------------------------
	.byte		        Fs4 
	.byte	W06
	.byte		        Cs4 , v120
	.byte	W06
	.byte		N11   , Ds4 , v124
	.byte	W12
	.byte		N05   , As4 , v127
	.byte	W06
	.byte		        Gn4 , v124
	.byte	W06
	.byte		        As4 , v120
	.byte	W06
	.byte		        Gn4 , v116
	.byte	W06
	.byte		        As4 , v112
	.byte	W06
	.byte		        Gn4 , v108
	.byte	W06
	.byte		        Ds4 , v104
	.byte	W06
	.byte		        Gn4 , v100
	.byte	W06
	.byte		        Ds4 , v096
	.byte	W06
	.byte		        Gn4 , v092
	.byte	W06
	.byte		        Ds4 , v088
	.byte	W06
	.byte		        As3 , v080
	.byte	W06
@ 015   ----------------------------------------
	.byte	W72
	.byte		N11   , Cn4 , v096
	.byte	W12
	.byte		        Gs4 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        Ds5 
	.byte	W12
	.byte		N23   , Fn5 , v127
	.byte	W42
	.byte		N05   , Cn5 , v080
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
@ 017   ----------------------------------------
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N64   , As3 , v080, gtp1
	.byte	W06
@ 018   ----------------------------------------
	.byte	W60
	.byte		N05   , An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 019   ----------------------------------------
	.byte		        Gn4 
	.byte	W12
	.byte		N23   , Gn5 , v120
	.byte	W84
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W72
	.byte		N11   , Cn5 , v080
	.byte	W12
	.byte		        Cs5 
	.byte	W12
@ 022   ----------------------------------------
	.byte		        Ds5 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Cn5 
	.byte	W60
@ 023   ----------------------------------------
	.byte	W36
	.byte		N05   , As4 , v096
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		N23   , Gn5 , v127
	.byte	W36
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte		N11   , Bn3 , v080
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N05   , Gn4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N11   , Cn5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 026   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 027   ----------------------------------------
	.byte		        Cs4 , v092
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gs3 , v096
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn4 , v100
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cs4 , v104
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs4 , v108
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs4 , v116
	.byte	W06
	.byte		N05   
	.byte	W06
@ 028   ----------------------------------------
	.byte		        Fn5 , v120
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cs5 , v124
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Gs5 , v127
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds4 , v092
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        As3 , v096
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn4 , v100
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds4 , v104
	.byte	W06
@ 029   ----------------------------------------
	.byte		        As4 
	.byte	W06
	.byte		        As4 , v108
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn4 , v112
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As4 , v116
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn5 , v120
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Ds5 , v124
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        As5 , v127
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W24
	.byte		        Ds4 , v096
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 , v092
	.byte	W06
	.byte		        Fn4 , v088
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 , v084
	.byte	W06
	.byte		        Ds4 , v080
	.byte	W06
	.byte		        Fn4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 , v072
	.byte	W06
	.byte		        Ds4 , v068
	.byte	W06
	.byte		        Fn4 , v064
	.byte	W06
	.byte	GOTO
	 .word	mus_route104_8_B1
mus_route104_8_B2:
@ 033   ----------------------------------------
	.byte		VOICE , 46
	.byte		        46
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 9 (Midi-Chn.10) ****************@

mus_route104_9:
	.byte	KEYSH , mus_route104_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , En1 , v096
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W24
@ 001   ----------------------------------------
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 002   ----------------------------------------
mus_route104_9_002:
	.byte		N11   , En1 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte	PEND
mus_route104_9_B1:
@ 003   ----------------------------------------
mus_route104_9_003:
	.byte		N11   , En1 , v096
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
mus_route104_9_004:
	.byte		N11   , En1 , v096
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_9_002
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_9_003
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_9_004
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_9_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_9_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_9_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_9_002
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_9_003
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_9_004
@ 014   ----------------------------------------
	.byte		N11   , En1 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N56   , Gn0 , v127, gtp3
	.byte	W60
@ 015   ----------------------------------------
mus_route104_9_015:
	.byte		N32   , Fs0 , v127, gtp3
	.byte	W36
	.byte		N11   , En1 
	.byte	W36
	.byte		N23   , Bn0 , v096
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
mus_route104_9_016:
	.byte		N11   , Bn0 , v096
	.byte	W12
	.byte		        En1 , v127
	.byte	W24
	.byte		        Bn0 , v096
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
	.byte	W12
	.byte		        Bn0 , v096
	.byte	W12
	.byte		N23   
	.byte	W12
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		        Bn0 , v096
	.byte	W12
	.byte		        En1 , v127
	.byte	W24
	.byte		        En1 , v096
	.byte	W12
@ 018   ----------------------------------------
mus_route104_9_018:
	.byte		N23   , Bn0 , v096
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        En1 , v127
	.byte	W36
	.byte		N23   , Bn0 , v096
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_9_016
@ 020   ----------------------------------------
	.byte	W12
	.byte		N11   , Bn0 , v096
	.byte	W12
	.byte		N23   
	.byte	W12
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		        Bn0 , v096
	.byte	W12
	.byte		N05   , En1 , v127
	.byte	W06
	.byte		        En1 , v096
	.byte	W18
	.byte		N11   
	.byte	W12
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_9_015
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_9_016
@ 023   ----------------------------------------
	.byte	W12
	.byte		N11   , Bn0 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte		        Bn0 , v096
	.byte	W12
	.byte		        En1 , v127
	.byte	W24
	.byte		        En1 , v096
	.byte	W12
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_9_018
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_9_016
@ 026   ----------------------------------------
	.byte	W12
	.byte		N11   , Bn0 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte		        Bn0 , v096
	.byte	W12
	.byte		N05   , En1 , v127
	.byte	W06
	.byte		        En1 , v096
	.byte	W18
	.byte		N11   
	.byte	W12
@ 027   ----------------------------------------
	.byte		N32   , Fs0 , v127, gtp3
	.byte	W48
	.byte		N11   , En1 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W24
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_9_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_9_002
@ 030   ----------------------------------------
	.byte		N32   , Fs0 , v127, gtp3
	.byte	W36
	.byte		        En1 , v096, gtp3
	.byte	W36
	.byte		N17   
	.byte	W18
	.byte		N17   
	.byte	W06
@ 031   ----------------------------------------
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W24
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_9_002
	.byte	GOTO
	 .word	mus_route104_9_B1
mus_route104_9_B2:
@ 033   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_route104_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_route104:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_route104_pri	@ Priority
	.byte	mus_route104_rev	@ Reverb.

	.word	mus_route104_grp

	.word	mus_route104_1
	.word	mus_route104_2
	.word	mus_route104_3
	.word	mus_route104_4
	.word	mus_route104_5
	.word	mus_route104_6
	.word	mus_route104_7
	.word	mus_route104_8
	.word	mus_route104_9

	.end
