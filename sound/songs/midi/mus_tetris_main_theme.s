	.include "MPlayDef.s"

	.equ	mus_tetris_main_theme_grp, voicegroup_tetris_main_theme
	.equ	mus_tetris_main_theme_pri, 0
	.equ	mus_tetris_main_theme_rev, reverb_set+50
	.equ	mus_tetris_main_theme_mvl, 100
	.equ	mus_tetris_main_theme_key, 0
	.equ	mus_tetris_main_theme_tbs, 1
	.equ	mus_tetris_main_theme_exg, 1
	.equ	mus_tetris_main_theme_cmp, 1

	.section .rodata
	.global	mus_tetris_main_theme
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_tetris_main_theme_1:
	.byte	KEYSH , mus_tetris_main_theme_key+0
mus_tetris_main_theme_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 120*mus_tetris_main_theme_tbs/2
	.byte	TEMPO , 120*mus_tetris_main_theme_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_tetris_main_theme_mvl/mxv
	.byte		N13   , En2 , v104
	.byte	W24
	.byte		N12   , En2 , v096
	.byte	W23
	.byte	TEMPO , 120*mus_tetris_main_theme_tbs/2
	.byte	W01
	.byte		        En2 , v100
	.byte	W05
	.byte	TEMPO , 118*mus_tetris_main_theme_tbs/2
	.byte	W06
	.byte	TEMPO , 118*mus_tetris_main_theme_tbs/2
	.byte	W06
	.byte	TEMPO , 117*mus_tetris_main_theme_tbs/2
	.byte	W06
	.byte	TEMPO , 117*mus_tetris_main_theme_tbs/2
	.byte	W01
	.byte		        En2 , v096
	.byte	W05
	.byte	TEMPO , 116*mus_tetris_main_theme_tbs/2
	.byte	W06
	.byte	TEMPO , 116*mus_tetris_main_theme_tbs/2
	.byte	W06
	.byte	TEMPO , 115*mus_tetris_main_theme_tbs/2
	.byte	W06
	.byte		N13   , An1 , v104
	.byte	W01
@ 001   ----------------------------------------
	.byte	W05
	.byte	TEMPO , 120*mus_tetris_main_theme_tbs/2
	.byte	W19
	.byte		N12   , An1 , v096
	.byte	W24
	.byte		        An1 , v100
	.byte	W24
	.byte		        An1 , v096
	.byte	W23
	.byte		N13   , Gs1 , v104
	.byte	W01
@ 002   ----------------------------------------
mus_tetris_main_theme_1_002:
	.byte	W24
	.byte		N12   , Gs1 , v096
	.byte	W24
	.byte		        Gs1 , v100
	.byte	W24
	.byte		        Gs1 , v096
	.byte	W23
	.byte		N13   , An1 , v104
	.byte	W01
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W24
	.byte		N12   , An1 , v096
	.byte	W24
	.byte		        An1 , v100
	.byte	W24
	.byte		N11   , Bn1 , v088
	.byte	W11
	.byte		        Cn2 
	.byte	W12
	.byte		N13   , Dn2 , v104
	.byte	W01
@ 004   ----------------------------------------
	.byte	W24
	.byte		N12   , Dn2 , v096
	.byte	W24
	.byte		        Dn2 , v100
	.byte	W24
	.byte		        Dn2 , v096
	.byte	W23
	.byte		N13   , Dn2 , v104
	.byte	W01
@ 005   ----------------------------------------
	.byte	W24
	.byte		N12   , Cn2 , v096
	.byte	W24
	.byte		        Cn2 , v100
	.byte	W24
	.byte		        Cn2 , v096
	.byte	W23
	.byte		N13   , Cn2 , v104
	.byte	W01
@ 006   ----------------------------------------
	.byte	W24
	.byte		N12   , Cn2 , v096
	.byte	W24
	.byte		        Gs1 , v100
	.byte	W24
	.byte		        Gs1 , v096
	.byte	W23
	.byte		N13   , Gs1 , v104
	.byte	W01
@ 007   ----------------------------------------
	.byte	W24
	.byte		N12   , Gs1 , v096
	.byte	W24
	.byte		        An1 , v100
	.byte	W24
	.byte		        An1 , v096
	.byte	W23
	.byte		N13   , An1 , v104
	.byte	W01
@ 008   ----------------------------------------
	.byte	W24
	.byte		N12   , An1 , v096
	.byte	W68
	.byte	W03
	.byte		N13   , An1 , v104
	.byte	W01
@ 009   ----------------------------------------
mus_tetris_main_theme_1_009:
	.byte	W24
	.byte		N12   , An1 , v096
	.byte	W24
	.byte		        An1 , v100
	.byte	W24
	.byte		        An1 , v096
	.byte	W23
	.byte		N13   , Gs1 , v104
	.byte	W01
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_tetris_main_theme_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_tetris_main_theme_1_009
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_tetris_main_theme_1_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_tetris_main_theme_1_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_tetris_main_theme_1_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_tetris_main_theme_1_009
@ 016   ----------------------------------------
	.byte	W24
	.byte		N12   , Gs1 , v096
	.byte	W24
	.byte		        Gs1 , v100
	.byte	W24
	.byte		        Gs1 , v096
	.byte	W24
	.byte	GOTO
	 .word	mus_tetris_main_theme_1_B1
mus_tetris_main_theme_1_B2:
@ 017   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_tetris_main_theme_2:
	.byte	KEYSH , mus_tetris_main_theme_key+0
mus_tetris_main_theme_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 56*mus_tetris_main_theme_mvl/mxv
	.byte	W12
	.byte		N12   , En3 , v060
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W23
	.byte		N12   
	.byte	W13
@ 001   ----------------------------------------
mus_tetris_main_theme_2_001:
	.byte	W12
	.byte		N12   , An2 , v060
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W23
	.byte		N12   
	.byte	W13
	.byte	PEND
@ 002   ----------------------------------------
mus_tetris_main_theme_2_002:
	.byte	W12
	.byte		N12   , Gs2 , v060
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W23
	.byte		N12   
	.byte	W13
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W12
	.byte		        An2 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W36
@ 004   ----------------------------------------
	.byte	W12
	.byte		        Dn3 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W23
	.byte		N12   
	.byte	W13
@ 005   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		N12   
	.byte	W23
	.byte		N12   
	.byte	W13
@ 006   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Gs2 
	.byte	W23
	.byte		N12   
	.byte	W13
@ 007   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        An2 
	.byte	W23
	.byte		N12   
	.byte	W13
@ 008   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W60
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_tetris_main_theme_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_tetris_main_theme_2_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_tetris_main_theme_2_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_tetris_main_theme_2_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_tetris_main_theme_2_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_tetris_main_theme_2_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_tetris_main_theme_2_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_tetris_main_theme_2_002
	.byte	GOTO
	 .word	mus_tetris_main_theme_2_B1
mus_tetris_main_theme_2_B2:
@ 017   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_tetris_main_theme_3:
	.byte	KEYSH , mus_tetris_main_theme_key+0
mus_tetris_main_theme_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 110*mus_tetris_main_theme_mvl/mxv
	.byte		N24   , En4 , v108
	.byte	W24
	.byte		N11   , Bn3 , v104
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N23   , Dn4 , v108
	.byte	W24
	.byte		N11   , Cn4 , v104
	.byte	W11
	.byte		        Bn3 
	.byte	W12
	.byte		N24   , An3 , v108
	.byte	W01
@ 001   ----------------------------------------
	.byte	W24
	.byte		N11   , An3 , v104
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N23   , En4 , v108
	.byte	W24
	.byte		N11   , Dn4 , v104
	.byte	W11
	.byte		        Cn4 
	.byte	W12
	.byte		N24   , Bn3 , v108
	.byte	W01
@ 002   ----------------------------------------
	.byte	W24
	.byte		N11   , Bn3 , v104
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N23   , Dn4 , v108
	.byte	W24
	.byte		        En4 , v104
	.byte	W23
	.byte		N24   , Cn4 , v108
	.byte	W01
@ 003   ----------------------------------------
	.byte	W24
	.byte		N23   , An3 , v104
	.byte	W24
	.byte		        An3 , v108
	.byte	W24
	.byte		N10   , Bn2 , v100
	.byte	W11
	.byte		        Cn3 
	.byte	W13
@ 004   ----------------------------------------
	.byte	W24
	.byte		N23   , Dn4 , v104
	.byte	W24
	.byte		N11   , Fn4 , v108
	.byte	W12
	.byte		N22   , An4 , v104
	.byte	W32
	.byte	W03
	.byte		N11   , Gn4 , v108
	.byte	W01
@ 005   ----------------------------------------
	.byte	W12
	.byte		        Fn4 , v104
	.byte	W12
	.byte		N44   , En4 , v104, gtp3
	.byte	W48
	.byte		N11   , Cn4 
	.byte	W11
	.byte		N36   , En4 
	.byte	W13
@ 006   ----------------------------------------
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N32   , Bn3 , v108, gtp3
	.byte	W32
	.byte	W03
	.byte		N11   , Cn4 , v104
	.byte	W12
	.byte		N23   , Dn4 , v108
	.byte	W01
@ 007   ----------------------------------------
	.byte	W24
	.byte		        En4 , v104
	.byte	W24
	.byte		        Cn4 , v108
	.byte	W24
	.byte		        An3 , v104
	.byte	W23
	.byte		N24   , An3 , v108
	.byte	W01
@ 008   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N48   , En4 
	.byte	W01
@ 009   ----------------------------------------
mus_tetris_main_theme_3_009:
	.byte	W48
	.byte		N44   , Cn4 , v108, gtp3
	.byte	W44
	.byte	W03
	.byte		N48   , Dn4 
	.byte	W01
	.byte	PEND
@ 010   ----------------------------------------
	.byte	W48
	.byte		N44   , Bn3 , v108, gtp3
	.byte	W44
	.byte	W03
	.byte		N48   , Cn4 
	.byte	W01
@ 011   ----------------------------------------
	.byte	W48
	.byte		N44   , An3 , v108, gtp3
	.byte	W44
	.byte	W03
	.byte		N48   , Gs3 
	.byte	W01
@ 012   ----------------------------------------
	.byte	W48
	.byte		N44   , Bn3 , v108, gtp3
	.byte	W44
	.byte	W03
	.byte		N48   , En4 
	.byte	W01
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_tetris_main_theme_3_009
@ 014   ----------------------------------------
	.byte	W48
	.byte		N44   , Bn3 , v108, gtp3
	.byte	W44
	.byte	W03
	.byte		N24   , Cn4 
	.byte	W01
@ 015   ----------------------------------------
	.byte	W24
	.byte		N23   , En4 , v104
	.byte	W24
	.byte		N44   , An4 , v108, gtp3
	.byte	W44
	.byte	W03
	.byte		N92   , Gs4 , v104, gtp3
	.byte	W01
@ 016   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_tetris_main_theme_3_B1
mus_tetris_main_theme_3_B2:
@ 017   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_tetris_main_theme:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_tetris_main_theme_pri	@ Priority
	.byte	mus_tetris_main_theme_rev	@ Reverb.

	.word	mus_tetris_main_theme_grp

	.word	mus_tetris_main_theme_1
	.word	mus_tetris_main_theme_2
	.word	mus_tetris_main_theme_3

	.end
