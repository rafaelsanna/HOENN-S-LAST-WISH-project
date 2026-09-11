	.include "MPlayDef.s"

	.equ	haruka_kanata_rock_metal_gba_grp, voicegroup_hlw_rock_metal
	.equ	haruka_kanata_rock_metal_gba_pri, 0
	.equ	haruka_kanata_rock_metal_gba_rev, reverb_set+12
	.equ	haruka_kanata_rock_metal_gba_mvl, 90
	.equ	haruka_kanata_rock_metal_gba_key, 0
	.equ	haruka_kanata_rock_metal_gba_tbs, 1
	.equ	haruka_kanata_rock_metal_gba_exg, 1
	.equ	haruka_kanata_rock_metal_gba_cmp, 1

	.section .rodata
	.global	haruka_kanata_rock_metal_gba
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

haruka_kanata_rock_metal_gba_1:
	.byte	KEYSH , haruka_kanata_rock_metal_gba_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 174*haruka_kanata_rock_metal_gba_tbs/2
	.byte		VOICE , 29
	.byte		VOL   , 90*haruka_kanata_rock_metal_gba_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N11   , En1 , v048
	.byte		N11   , Bn1 
	.byte		N11   , Gs2 , v044
	.byte	W12
	.byte		        En1 , v048
	.byte		N11   , Bn1 
	.byte		N11   , Gs2 , v044
	.byte	W60
	.byte		        En1 , v048
	.byte		N11   , Bn1 
	.byte		N11   , Gs2 , v044
	.byte	W12
	.byte		        En1 , v048
	.byte		N11   , Bn1 
	.byte		N11   , Gs2 , v044
	.byte	W12
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
haruka_kanata_rock_metal_gba_1_003:
	.byte		N11   , En1 , v048
	.byte		N11   , Bn1 
	.byte		N11   , Gs2 , v044
	.byte	W12
	.byte		        En1 , v048
	.byte		N11   , Bn1 
	.byte		N11   , Gs2 , v044
	.byte	W60
	.byte		        En1 , v048
	.byte		N11   , Bn1 
	.byte		N11   , Gs2 , v044
	.byte	W12
	.byte		        En1 , v048
	.byte		N11   , Bn1 
	.byte		N11   , Gs2 , v044
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
haruka_kanata_rock_metal_gba_1_005:
	.byte		N24   , Cs2 , v048
	.byte		N24   , Gs2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N24   , Cs2 , v048
	.byte		N24   , Gs2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 , v048
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte		        Cs2 , v048
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte		        Cs2 , v048
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte		N24   , Bn1 , v048
	.byte		N24   , Fs2 
	.byte		N12   , Ds3 , v044
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
haruka_kanata_rock_metal_gba_1_006:
	.byte	W12
	.byte		N12   , Bn1 , v048
	.byte		N12   , Fs2 
	.byte		N12   , Ds3 , v044
	.byte	W12
	.byte		N24   , Bn1 , v048
	.byte		N24   , Fs2 
	.byte		N12   , Ds3 , v044
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 , v048
	.byte		N12   , Fs2 
	.byte		N12   , Ds3 , v044
	.byte	W12
	.byte		        Bn1 , v048
	.byte		N12   , Fs2 
	.byte		N12   , Ds3 , v044
	.byte	W12
	.byte		N24   , Bn1 , v048
	.byte		N24   , Fs2 
	.byte		N12   , Ds3 , v044
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
haruka_kanata_rock_metal_gba_1_007:
	.byte		N24   , An1 , v048
	.byte		N24   , En2 
	.byte		N12   , En3 , v044
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		N24   , An1 , v048
	.byte		N24   , En2 
	.byte		N12   , En3 , v044
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , En3 , v044
	.byte	W12
	.byte		N24   , An1 , v048
	.byte		N24   , En2 
	.byte		N02   , En3 , v044
	.byte	W03
	.byte		N12   , Fs3 
	.byte	W09
	.byte		        An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		N24   , An1 , v048
	.byte		N24   , En2 
	.byte		N03   , Fs3 , v044
	.byte	W03
	.byte		N12   , Gs3 
	.byte	W09
	.byte	PEND
@ 008   ----------------------------------------
haruka_kanata_rock_metal_gba_1_008:
	.byte	W12
	.byte		N12   , An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Gs3 , v044
	.byte	W12
	.byte		N24   , An1 , v048
	.byte		N24   , En2 
	.byte		N12   , Fs3 , v044
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        An1 , v056
	.byte		N12   , En2 
	.byte		N12   , Fs3 , v044
	.byte	W12
	.byte		        An1 , v056
	.byte		N12   , En2 
	.byte		N12   , Fs3 , v044
	.byte	W36
	.byte	PEND
@ 009   ----------------------------------------
	.byte		TIE   , En1 , v048
	.byte		TIE   , En2 , v044
	.byte		TIE   , Bn2 
	.byte	W12
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 010   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 011   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W06
	.byte		EOT   , En2 
	.byte		        Bn2 
	.byte	W06
@ 012   ----------------------------------------
	.byte		N90   , En2 
	.byte		N90   , Bn2 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W06
	.byte		EOT   , En1 
	.byte	W06
@ 013   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_008
@ 017   ----------------------------------------
haruka_kanata_rock_metal_gba_1_017:
	.byte		N04   , En1 , v044
	.byte		N04   , Bn1 
	.byte	W12
	.byte		N05   , En1 
	.byte		N05   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N05   , Bn1 
	.byte	W06
	.byte		N04   , En1 
	.byte		N04   , Bn1 
	.byte	W12
	.byte		N05   , En1 
	.byte		N05   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N05   , Bn1 
	.byte	W06
	.byte		N04   , En1 
	.byte		N04   , Bn1 
	.byte	W12
	.byte		N05   , En1 
	.byte		N05   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N05   , Bn1 
	.byte	W06
	.byte		N04   , En1 
	.byte		N04   , Bn1 
	.byte	W12
	.byte		N05   , En1 
	.byte		N05   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N05   , Bn1 
	.byte	W06
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_017
@ 019   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_017
@ 020   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_017
@ 021   ----------------------------------------
haruka_kanata_rock_metal_gba_1_021:
	.byte		N24   , Cs2 , v048
	.byte		N24   , Gs2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N24   , Cs2 , v048
	.byte		N24   , Gs2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 , v048
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte		        Cs2 , v048
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte		        Cs2 , v048
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte		        Cs2 , v048
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
haruka_kanata_rock_metal_gba_1_022:
	.byte		N24   , Bn1 , v048
	.byte		N24   , Fs2 
	.byte		N12   , Ds3 , v044
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N24   , Bn1 , v048
	.byte		N24   , Fs2 
	.byte		N12   , Ds3 , v044
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 , v048
	.byte		N12   , Fs2 
	.byte		N12   , Ds3 , v044
	.byte	W12
	.byte		        Bn1 , v048
	.byte		N12   , Fs2 
	.byte		N12   , Ds3 , v044
	.byte	W12
	.byte		        Bn1 , v048
	.byte		N12   , Fs2 
	.byte		N12   , Ds3 , v044
	.byte	W12
	.byte		        Bn1 , v048
	.byte		N12   , Fs2 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_007
@ 024   ----------------------------------------
haruka_kanata_rock_metal_gba_1_024:
	.byte	W12
	.byte		N12   , An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Gs3 , v044
	.byte	W12
	.byte		N24   , An1 , v048
	.byte		N24   , En2 
	.byte		N12   , Fs3 , v044
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , En3 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , En3 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N11   , En3 , v044
	.byte	W12
	.byte		N12   , An1 , v048
	.byte		N12   , En2 
	.byte		N11   , En3 , v044
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_017
@ 026   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_017
@ 027   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_017
@ 028   ----------------------------------------
haruka_kanata_rock_metal_gba_1_028:
	.byte		N04   , En1 , v044
	.byte		N04   , Bn1 
	.byte	W12
	.byte		N05   , En1 
	.byte		N05   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N05   , Bn1 
	.byte	W06
	.byte		N04   , En1 
	.byte		N04   , Bn1 
	.byte	W12
	.byte		N05   , En1 
	.byte		N05   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N05   , Bn1 
	.byte	W06
	.byte		N04   , En1 
	.byte		N04   , Bn1 
	.byte	W12
	.byte		N05   , En1 
	.byte		N05   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N05   , Bn1 
	.byte	W06
	.byte		N11   , En1 
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_021
@ 030   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_022
@ 031   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_007
@ 032   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_024
@ 033   ----------------------------------------
haruka_kanata_rock_metal_gba_1_033:
	.byte		N20   , Cs2 , v048
	.byte		N20   , Gs2 
	.byte		N12   , Gs3 , v044
	.byte	W24
	.byte		N20   , Cs2 , v048
	.byte		N20   , Gs2 
	.byte		N12   , Bn3 , v044
	.byte	W24
	.byte		N20   , Cs2 , v048
	.byte		N20   , Gs2 
	.byte		N12   , Cs4 , v044
	.byte	W24
	.byte		N20   , Cs2 , v048
	.byte		N20   , Gs2 
	.byte		N12   , Bn3 , v044
	.byte	W24
	.byte	PEND
@ 034   ----------------------------------------
haruka_kanata_rock_metal_gba_1_034:
	.byte		N20   , Cs2 , v048
	.byte		N20   , Gs2 
	.byte		N12   , Gs3 , v044
	.byte	W24
	.byte		N20   , Cs2 , v048
	.byte		N20   , Gs2 
	.byte		N12   , Bn3 , v044
	.byte	W24
	.byte		N20   , Cs2 , v048
	.byte		N20   , Gs2 
	.byte		N12   , Cs4 , v044
	.byte	W24
	.byte		        Cs2 , v048
	.byte		N12   , Gs2 
	.byte		N12   , Bn3 , v044
	.byte	W12
	.byte		        Cs2 , v048
	.byte		N12   , Gs2 
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
haruka_kanata_rock_metal_gba_1_035:
	.byte		N20   , Gs1 , v048
	.byte		N20   , Ds2 
	.byte		N12   , Gs3 , v044
	.byte	W24
	.byte		N20   , Gs1 , v048
	.byte		N20   , Ds2 
	.byte		N12   , Bn3 , v044
	.byte	W24
	.byte		N20   , Gs1 , v048
	.byte		N20   , Ds2 
	.byte		N12   , Cs4 , v044
	.byte	W24
	.byte		N20   , Gs1 , v048
	.byte		N20   , Ds2 
	.byte		N12   , Bn3 , v044
	.byte	W24
	.byte	PEND
@ 036   ----------------------------------------
haruka_kanata_rock_metal_gba_1_036:
	.byte		N20   , Gs1 , v048
	.byte		N20   , Ds2 
	.byte		N12   , Gs3 , v044
	.byte	W24
	.byte		N20   , Gs1 , v048
	.byte		N20   , Ds2 
	.byte		N12   , Bn3 , v044
	.byte	W24
	.byte		N20   , Gs1 , v048
	.byte		N20   , Ds2 
	.byte		N12   , Cs4 , v044
	.byte	W24
	.byte		        Gs1 , v048
	.byte		N12   , Ds2 
	.byte		N12   , Bn3 , v044
	.byte	W12
	.byte		        Gs1 , v048
	.byte		N12   , Ds2 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
haruka_kanata_rock_metal_gba_1_037:
	.byte		N20   , An1 , v048
	.byte		N20   , En2 
	.byte		N12   , Gs3 , v044
	.byte	W24
	.byte		N20   , An1 , v048
	.byte		N20   , En2 
	.byte		N12   , Bn3 , v044
	.byte	W24
	.byte		N20   , An1 , v048
	.byte		N20   , En2 
	.byte		N12   , Cs4 , v044
	.byte	W24
	.byte		N20   , An1 , v048
	.byte		N20   , En2 
	.byte		N12   , Bn3 , v044
	.byte	W24
	.byte	PEND
@ 038   ----------------------------------------
haruka_kanata_rock_metal_gba_1_038:
	.byte		N20   , An1 , v048
	.byte		N20   , En2 
	.byte		N12   , Gs3 , v044
	.byte	W24
	.byte		N20   , An1 , v048
	.byte		N20   , En2 
	.byte		N12   , Bn3 , v044
	.byte	W24
	.byte		N20   , An1 , v048
	.byte		N20   , En2 
	.byte		N12   , Cs4 , v044
	.byte	W24
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Bn3 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte	W12
	.byte	PEND
@ 039   ----------------------------------------
haruka_kanata_rock_metal_gba_1_039:
	.byte		N20   , En2 , v048
	.byte		N20   , Bn2 
	.byte		N12   , Gs3 , v044
	.byte	W24
	.byte		N20   , En2 , v048
	.byte		N20   , Bn2 
	.byte		N12   , Bn3 , v044
	.byte	W24
	.byte		N20   , En2 , v048
	.byte		N20   , Bn2 
	.byte		N12   , Cs4 , v044
	.byte	W24
	.byte		N20   , En2 , v048
	.byte		N20   , Bn2 
	.byte		N12   , Bn3 , v044
	.byte	W24
	.byte	PEND
@ 040   ----------------------------------------
haruka_kanata_rock_metal_gba_1_040:
	.byte		N20   , En2 , v048
	.byte		N20   , Bn2 
	.byte		N12   , Gs3 , v044
	.byte	W24
	.byte		        En2 , v048
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 , v044
	.byte	W12
	.byte		        En2 , v048
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N20   , Bn1 
	.byte		N20   , Fs2 
	.byte		N12   , Cs4 , v044
	.byte	W24
	.byte		        Bn1 
	.byte		N12   , Fs2 , v048
	.byte		N12   , Bn3 , v044
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Ds2 , v048
	.byte		N12   , Fs2 
	.byte	W12
	.byte	PEND
@ 041   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_033
@ 042   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_034
@ 043   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_036
@ 045   ----------------------------------------
haruka_kanata_rock_metal_gba_1_045:
	.byte		N36   , An1 , v048
	.byte		N36   , En2 
	.byte		N12   , An3 , v044
	.byte	W36
	.byte		N36   , Gs1 , v048
	.byte		N36   , Ds2 
	.byte		N12   , Gs3 , v044
	.byte	W36
	.byte		N36   , An1 , v048
	.byte		N36   , En2 
	.byte		N12   , An3 , v044
	.byte	W24
	.byte	PEND
@ 046   ----------------------------------------
haruka_kanata_rock_metal_gba_1_046:
	.byte	W12
	.byte		N36   , Gs1 , v048
	.byte		N36   , Ds2 
	.byte		N12   , Gs3 , v044
	.byte	W36
	.byte		N24   , An1 , v048
	.byte		N24   , En2 
	.byte		N12   , An3 , v044
	.byte	W24
	.byte		N24   , Gs1 , v048
	.byte		N24   , Ds2 
	.byte		N12   , Gs3 , v044
	.byte	W24
	.byte	PEND
@ 047   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_045
@ 048   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_046
@ 049   ----------------------------------------
haruka_kanata_rock_metal_gba_1_049:
	.byte		N12   , En1 , v048
	.byte		N12   , Bn1 
	.byte		N12   , En3 , v044
	.byte	W12
	.byte		        En1 , v048
	.byte		N12   , Bn1 
	.byte		N12   , En3 , v044
	.byte	W12
	.byte		        En1 , v048
	.byte		N12   , Bn1 
	.byte		N12   , En3 , v044
	.byte	W12
	.byte		        En1 , v048
	.byte		N12   , Bn1 
	.byte		N12   , En3 , v044
	.byte	W12
	.byte		        Bn1 , v048
	.byte		N12   , Fs2 
	.byte		N12   , Bn3 , v044
	.byte	W12
	.byte		        Bn1 , v048
	.byte		N12   , Fs2 
	.byte		N12   , Bn3 , v044
	.byte	W12
	.byte		        Bn1 , v048
	.byte		N12   , Fs2 
	.byte		N12   , Bn3 , v044
	.byte	W12
	.byte		        Bn1 , v048
	.byte		N12   , Fs2 
	.byte		N12   , Bn3 , v044
	.byte	W12
	.byte	PEND
@ 050   ----------------------------------------
haruka_kanata_rock_metal_gba_1_050:
	.byte		N12   , Cs2 , v048
	.byte		N12   , Gs2 
	.byte		N12   , Cs4 , v044
	.byte	W12
	.byte		        Cs2 , v048
	.byte		N12   , Gs2 
	.byte		N12   , Cs4 , v044
	.byte	W12
	.byte		        Cs2 , v048
	.byte		N12   , Gs2 
	.byte		N12   , Cs4 , v044
	.byte	W12
	.byte		        Cs2 , v048
	.byte		N12   , Gs2 
	.byte		N12   , Cs4 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , An3 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , An3 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , An3 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , An3 , v044
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_049
@ 052   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_050
@ 053   ----------------------------------------
haruka_kanata_rock_metal_gba_1_053:
	.byte		N24   , En2 , v048
	.byte		N24   , Bn2 
	.byte		N12   , En3 , v044
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N24   , En2 , v048
	.byte		N24   , Bn2 
	.byte		N12   , En3 , v044
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 , v048
	.byte		N12   , Bn2 
	.byte		N11   , En3 , v044
	.byte	W12
	.byte		N12   , En2 , v048
	.byte		N12   , Bn2 
	.byte		N11   , En3 , v044
	.byte	W12
	.byte		N12   , En2 , v048
	.byte		N12   , Bn2 
	.byte		N11   , En3 , v044
	.byte	W12
	.byte		N24   , En2 , v048
	.byte		N24   , Bn2 
	.byte		N12   , En3 , v044
	.byte	W12
	.byte	PEND
@ 054   ----------------------------------------
haruka_kanata_rock_metal_gba_1_054:
	.byte	W12
	.byte		N12   , En2 , v048
	.byte		N12   , Bn2 
	.byte		N11   , En3 , v044
	.byte	W12
	.byte		N24   , En2 , v048
	.byte		N24   , Bn2 
	.byte		N12   , En3 , v044
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En2 , v048
	.byte		N12   , Bn2 
	.byte		N11   , En3 , v044
	.byte	W12
	.byte		N12   , En2 , v048
	.byte		N12   , Bn2 
	.byte		N11   , En3 , v044
	.byte	W12
	.byte		N24   , En2 , v048
	.byte		N24   , Bn2 
	.byte		N12   , En3 , v044
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte	PEND
@ 055   ----------------------------------------
haruka_kanata_rock_metal_gba_1_055:
	.byte		N24   , Bn1 , v048
	.byte		N24   , Fs2 
	.byte		N12   , Ds3 , v044
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N24   , Bn1 , v048
	.byte		N24   , Fs2 
	.byte		N12   , Ds3 , v044
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 , v048
	.byte		N12   , Fs2 
	.byte		N11   , Ds3 , v044
	.byte	W12
	.byte		N12   , Bn1 , v048
	.byte		N12   , Fs2 
	.byte		N11   , Ds3 , v044
	.byte	W12
	.byte		N12   , Bn1 , v048
	.byte		N12   , Fs2 
	.byte		N11   , Ds3 , v044
	.byte	W12
	.byte		N24   , Bn1 , v048
	.byte		N24   , Fs2 
	.byte		N12   , Ds3 , v044
	.byte	W12
	.byte	PEND
@ 056   ----------------------------------------
haruka_kanata_rock_metal_gba_1_056:
	.byte	W12
	.byte		N12   , Bn1 , v048
	.byte		N12   , Fs2 
	.byte		N11   , Ds3 , v044
	.byte	W12
	.byte		N24   , Bn1 , v048
	.byte		N24   , Fs2 
	.byte		N12   , Ds3 , v044
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 , v048
	.byte		N12   , Fs2 
	.byte		N11   , Ds3 , v044
	.byte	W12
	.byte		N12   , Bn1 , v048
	.byte		N12   , Fs2 
	.byte		N11   , Ds3 , v044
	.byte	W12
	.byte		N24   , Bn1 , v048
	.byte		N24   , Fs2 
	.byte		N12   , Ds3 , v044
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte	PEND
@ 057   ----------------------------------------
haruka_kanata_rock_metal_gba_1_057:
	.byte		N24   , Cs2 , v048
	.byte		N24   , Gs2 
	.byte		N12   , En3 , v044
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N24   , Cs2 , v048
	.byte		N24   , Gs2 
	.byte		N12   , En3 , v044
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 , v048
	.byte		N12   , Gs2 
	.byte		N11   , En3 , v044
	.byte	W12
	.byte		N12   , Cs2 , v048
	.byte		N12   , Gs2 
	.byte		N11   , En3 , v044
	.byte	W12
	.byte		N12   , Cs2 , v048
	.byte		N12   , Gs2 
	.byte		N11   , En3 , v044
	.byte	W12
	.byte		N24   , Bn1 , v048
	.byte		N24   , Fs2 
	.byte		N12   , Ds3 , v044
	.byte	W12
	.byte	PEND
@ 058   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_056
@ 059   ----------------------------------------
haruka_kanata_rock_metal_gba_1_059:
	.byte		N24   , An1 , v048
	.byte		N24   , En2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		N24   , An1 , v048
	.byte		N24   , En2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N11   , Cs3 , v044
	.byte	W12
	.byte		N12   , An1 , v048
	.byte		N12   , En2 
	.byte		N11   , Cs3 , v044
	.byte	W12
	.byte		N12   , An1 , v048
	.byte		N12   , En2 
	.byte		N11   , Cs3 , v044
	.byte	W12
	.byte		N24   , An1 , v048
	.byte		N24   , En2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte	PEND
@ 060   ----------------------------------------
haruka_kanata_rock_metal_gba_1_060:
	.byte	W12
	.byte		N12   , An1 , v048
	.byte		N12   , En2 
	.byte		N11   , Cs3 , v044
	.byte	W12
	.byte		N24   , An1 , v048
	.byte		N24   , En2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N11   , Cs3 , v044
	.byte	W12
	.byte		N12   , An1 , v048
	.byte		N12   , En2 
	.byte		N11   , Cs3 , v044
	.byte	W12
	.byte		N24   , An1 , v048
	.byte		N24   , En2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte	W12
	.byte	PEND
@ 061   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_053
@ 062   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_054
@ 063   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_055
@ 064   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_056
@ 065   ----------------------------------------
haruka_kanata_rock_metal_gba_1_065:
	.byte		N24   , Cs2 , v048
	.byte		N24   , Gs2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N24   , Cs2 , v048
	.byte		N24   , Gs2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 , v048
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte		        Cs2 , v048
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte		        Cs2 , v048
	.byte		N12   , Gs2 
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte		N24   , Bn1 , v048
	.byte		N24   , Fs2 
	.byte		N12   , Bn2 , v044
	.byte	W12
	.byte	PEND
@ 066   ----------------------------------------
haruka_kanata_rock_metal_gba_1_066:
	.byte	W12
	.byte		N12   , Bn1 , v048
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 , v044
	.byte	W12
	.byte		N24   , Bn1 , v048
	.byte		N24   , Fs2 
	.byte		N12   , Bn2 , v044
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 , v048
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 , v044
	.byte	W12
	.byte		        Bn1 , v048
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 , v044
	.byte	W12
	.byte		N24   , Bn1 , v048
	.byte		N24   , Fs2 
	.byte		N12   , Bn2 , v044
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte	PEND
@ 067   ----------------------------------------
	.byte		        An1 , v056
	.byte		N12   , En2 
	.byte		N12   , An2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte		N12   , An2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte	W12
	.byte		        An1 , v056
	.byte		N12   , En2 
	.byte		N12   , An2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , An2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , An2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , An2 , v044
	.byte	W12
@ 068   ----------------------------------------
	.byte		        An1 , v056
	.byte		N12   , En2 
	.byte		N12   , An2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , An2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , An2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte	W12
	.byte		        An1 , v056
	.byte		N12   , En2 
	.byte		N12   , An2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , An2 , v044
	.byte	W12
	.byte		        An1 , v056
	.byte		N12   , En2 
	.byte		N12   , An2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte	W12
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_003
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_017
@ 074   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_017
@ 075   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_017
@ 076   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_017
@ 077   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_021
@ 078   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_022
@ 079   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_007
@ 080   ----------------------------------------
	.byte	W12
	.byte		N12   , An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Gs3 , v044
	.byte	W12
	.byte		N24   , An1 , v048
	.byte		N24   , En2 
	.byte		N12   , Fs3 , v044
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		N20   , An1 , v048
	.byte		N20   , En2 
	.byte		N12   , En3 , v044
	.byte	W48
@ 081   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_017
@ 082   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_017
@ 083   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_017
@ 084   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_028
@ 085   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_021
@ 086   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_022
@ 087   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_007
@ 088   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_024
@ 089   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_033
@ 090   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_034
@ 091   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_035
@ 092   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_036
@ 093   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_037
@ 094   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_038
@ 095   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_039
@ 096   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_040
@ 097   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_033
@ 098   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_034
@ 099   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_035
@ 100   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_036
@ 101   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_045
@ 102   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_046
@ 103   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_045
@ 104   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_046
@ 105   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_049
@ 106   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_050
@ 107   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_049
@ 108   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_050
@ 109   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_053
@ 110   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_054
@ 111   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_055
@ 112   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_056
@ 113   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_057
@ 114   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_056
@ 115   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_059
@ 116   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_060
@ 117   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_053
@ 118   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_054
@ 119   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_055
@ 120   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_056
@ 121   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_065
@ 122   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_066
@ 123   ----------------------------------------
	.byte	TEMPO , 168*haruka_kanata_rock_metal_gba_tbs/2
	.byte		N16   , An1 , v048
	.byte		N16   , En2 
	.byte		N12   , An2 , v044
	.byte	W16
	.byte		N16   , Gs1 , v048
	.byte		N16   , Ds2 
	.byte		N12   , Gs2 , v044
	.byte	W16
	.byte		N16   , En1 , v048
	.byte		N16   , Bn1 
	.byte		N12   , En2 , v044
	.byte	W16
	.byte		N16   , An1 , v048
	.byte		N16   , En2 
	.byte		N12   , An2 , v044
	.byte	W16
	.byte		N16   , Gs1 , v048
	.byte		N16   , Ds2 
	.byte		N12   , Gs2 , v044
	.byte	W16
	.byte		N16   , En1 , v048
	.byte		N16   , Bn1 
	.byte		N12   , En2 , v044
	.byte	W16
@ 124   ----------------------------------------
	.byte		N16   , An1 , v048
	.byte		N16   , En2 
	.byte		N12   , An2 , v044
	.byte	W16
	.byte		N16   , Gs1 , v048
	.byte		N16   , Ds2 
	.byte		N12   , Gs2 , v044
	.byte	W16
	.byte		N16   , En1 , v048
	.byte		N16   , Bn1 
	.byte		N12   , En2 , v044
	.byte	W16
	.byte		N16   , Gs1 , v048
	.byte		N16   , Ds2 
	.byte		N12   , Gs2 , v044
	.byte	W16
	.byte		N16   , An1 , v048
	.byte		N16   , En2 
	.byte		N12   , An2 , v044
	.byte	W16
	.byte		N16   , Bn1 , v048
	.byte		N16   , Fs2 
	.byte		N12   , Bn2 , v044
	.byte	W16
@ 125   ----------------------------------------
@ 126   ----------------------------------------
	.byte	TEMPO , 126*haruka_kanata_rock_metal_gba_tbs/2
	.byte		TIE   , En1 , v048
	.byte		TIE   , Bn1 
	.byte		N12   , En2 , v044
	.byte	W96
	.byte	W48
@ 127   ----------------------------------------
haruka_kanata_rock_metal_gba_1_127:
	.byte	W36
	.byte		N12   , En3 , v044
	.byte	W36
	.byte		        Bn2 
	.byte	W36
	.byte		        Gs2 
	.byte	W30
	.byte	PEND
	.byte		EOT   , En1 
	.byte		        Bn1 
	.byte	W06
@ 128   ----------------------------------------
haruka_kanata_rock_metal_gba_1_128:
	.byte		N12   , Cs2 , v048
	.byte		N12   , En2 , v044
	.byte		N12   , Gs2 , v048
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , En2 , v044
	.byte		N12   , Gs2 , v048
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , En2 , v044
	.byte		N12   , Gs2 , v048
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , En2 , v044
	.byte		N12   , Gs2 , v048
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , En2 , v044
	.byte		N12   , Gs2 , v048
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , En2 , v044
	.byte		N12   , Gs2 , v048
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte	PEND
@ 129   ----------------------------------------
	.byte		        An1 
	.byte		N12   , En2 
	.byte		N12   , Gs2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Gs2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Gs2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Gs2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Gs2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Gs2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Fs2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Fs2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Fs2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Fs2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Fs2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Fs2 , v044
	.byte	W12
@ 130   ----------------------------------------
	.byte		TIE   , En1 , v048
	.byte		TIE   , Bn1 
	.byte		N12   , En2 , v044
	.byte	W96
	.byte	W48
@ 131   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_127
	.byte		EOT   , En1 
	.byte		        Bn1 
	.byte	W06
@ 132   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_128
@ 133   ----------------------------------------
	.byte		N12   , An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Gs2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Gs2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Gs2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Gs2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Gs2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , Gs2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , An2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , An2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , An2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , An2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , An2 , v044
	.byte	W12
	.byte		        An1 , v048
	.byte		N12   , En2 
	.byte		N12   , An2 , v044
	.byte	W12
@ 134   ----------------------------------------
haruka_kanata_rock_metal_gba_1_134:
	.byte		N72   , Gs1 , v048
	.byte		N72   , Ds2 
	.byte	W36
	.byte		N36   , Ds2 , v044
	.byte		N36   , Gs2 
	.byte		N12   , Cn3 
	.byte	W36
	.byte		N72   , Gs1 , v048
	.byte		N72   , Ds2 
	.byte	W36
	.byte		N36   , Ds2 , v044
	.byte		N36   , Gs2 
	.byte		N12   , Cn3 
	.byte	W36
	.byte	PEND
@ 135   ----------------------------------------
haruka_kanata_rock_metal_gba_1_135:
	.byte		N72   , Cs2 , v048
	.byte		N72   , Gs2 
	.byte	W36
	.byte		N36   , Gs2 , v044
	.byte		N36   , Cs3 
	.byte	W36
	.byte		N72   , Cs2 , v048
	.byte		N72   , Gs2 
	.byte	W36
	.byte		N36   , Gs2 , v044
	.byte		N36   , Cs3 
	.byte	W36
	.byte	PEND
@ 136   ----------------------------------------
	.byte		N72   , An1 , v048
	.byte		N72   , En2 
	.byte	W36
	.byte		N36   , En2 , v044
	.byte		N36   , An2 
	.byte		N12   , Cs3 
	.byte	W36
	.byte		N72   , An1 , v048
	.byte		N72   , En2 
	.byte	W36
	.byte		N36   , En2 , v044
	.byte		N36   , An2 
	.byte		N12   , Cs3 
	.byte	W36
@ 137   ----------------------------------------
	.byte		N72   , Bn1 , v048
	.byte		N72   , Fs2 
	.byte	W36
	.byte		N36   , Fs2 , v044
	.byte		N36   , Bn2 
	.byte		N12   , Ds3 
	.byte	W36
	.byte		N72   , An1 , v048
	.byte		N72   , Fs2 
	.byte	W36
	.byte		N36   , Fs2 , v044
	.byte		N36   , Bn2 
	.byte		N12   , Ds3 
	.byte	W36
@ 138   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_134
@ 139   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_1_135
@ 140   ----------------------------------------
	.byte		N11   , An1 , v048
	.byte		N11   , En2 
	.byte	W12
	.byte		N04   , En1 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N11   , An1 
	.byte		N11   , En2 
	.byte	W12
	.byte		N04   , En1 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N11   , An1 
	.byte		N11   , En2 
	.byte	W12
	.byte		N04   , En1 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N11   , An1 
	.byte		N11   , En2 
	.byte	W12
	.byte		N04   , En1 
	.byte	W12
	.byte		N04   
	.byte	W12
@ 141   ----------------------------------------
	.byte		        An1 
	.byte		N04   , En2 
	.byte	W12
	.byte		        An1 
	.byte		N04   , En2 
	.byte	W12
	.byte		        An1 
	.byte		N04   , En2 
	.byte	W12
	.byte		N11   , An1 
	.byte		N11   , En2 
	.byte	W12
	.byte		        An1 
	.byte		N11   , En2 
	.byte	W12
	.byte		        An1 
	.byte		N11   , En2 
	.byte	W12
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte	W12
@ 142   ----------------------------------------
	.byte		TIE   , En1 
	.byte		TIE   , Bn1 
	.byte		N12   , Gs2 , v044
	.byte	W96
	.byte	W48
@ 143   ----------------------------------------
	.byte	W96
	.byte	W48
@ 144   ----------------------------------------
	.byte		TIE   , En1 
	.byte		TIE   , Bn1 
	.byte	W96
	.byte	W48
@ 145   ----------------------------------------
	.byte	W96
	.byte	W48
	.byte		EOT   , En1 
	.byte		EOT   
	.byte		EOT   , Bn1 
	.byte		EOT   
@ 146   ----------------------------------------
	.byte		N12   , Cs2 , v048
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Bn1 
	.byte		N11   , Ds2 , v044
	.byte		N12   , Fs2 , v048
	.byte	W12
	.byte		        Bn1 
	.byte		N11   , Ds2 , v044
	.byte		N12   , Fs2 , v048
	.byte	W12
	.byte		        Bn1 
	.byte		N11   , Ds2 , v044
	.byte		N12   , Fs2 , v048
	.byte	W12
	.byte		        Bn1 
	.byte		N11   , Ds2 , v044
	.byte		N12   , Fs2 , v048
	.byte	W12
	.byte		        Bn1 
	.byte		N11   , Ds2 , v044
	.byte		N12   , Fs2 , v048
	.byte	W12
	.byte		        Bn1 
	.byte		N11   , Ds2 , v044
	.byte		N12   , Fs2 , v048
	.byte	W12
@ 147   ----------------------------------------
	.byte		N09   , An1 
	.byte		N09   , En2 
	.byte	W09
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

haruka_kanata_rock_metal_gba_2:
	.byte	KEYSH , haruka_kanata_rock_metal_gba_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 90*haruka_kanata_rock_metal_gba_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N11   , En0 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
@ 001   ----------------------------------------
haruka_kanata_rock_metal_gba_2_001:
	.byte		N11   , En0 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_001
@ 004   ----------------------------------------
haruka_kanata_rock_metal_gba_2_004:
	.byte		N11   , Cs1 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Bn0 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
haruka_kanata_rock_metal_gba_2_005:
	.byte	W12
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
haruka_kanata_rock_metal_gba_2_006:
	.byte		N11   , An0 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
haruka_kanata_rock_metal_gba_2_007:
	.byte		N11   , An0 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An0 , v068
	.byte	W12
	.byte		N04   
	.byte	W36
	.byte	PEND
@ 008   ----------------------------------------
haruka_kanata_rock_metal_gba_2_008:
	.byte		N11   , En0 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 011   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 018   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 019   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 020   ----------------------------------------
haruka_kanata_rock_metal_gba_2_020:
	.byte		N11   , Cs1 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
haruka_kanata_rock_metal_gba_2_021:
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_006
@ 023   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_006
@ 024   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 026   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 027   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 028   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_021
@ 030   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_006
@ 031   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_006
@ 032   ----------------------------------------
haruka_kanata_rock_metal_gba_2_032:
	.byte		N20   , Cs1 , v060
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
haruka_kanata_rock_metal_gba_2_033:
	.byte		N20   , Cs1 , v060
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte	PEND
@ 034   ----------------------------------------
haruka_kanata_rock_metal_gba_2_034:
	.byte		N20   , Gs0 , v060
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
haruka_kanata_rock_metal_gba_2_035:
	.byte		N20   , Gs0 , v060
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		N20   , Gs0 
	.byte	W24
	.byte	PEND
@ 036   ----------------------------------------
haruka_kanata_rock_metal_gba_2_036:
	.byte		N20   , An0 , v060
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte	PEND
@ 037   ----------------------------------------
haruka_kanata_rock_metal_gba_2_037:
	.byte		N20   , An0 , v060
	.byte	W24
	.byte		        Bn0 
	.byte	W24
	.byte		        Cs1 
	.byte	W24
	.byte		        An0 
	.byte	W24
	.byte	PEND
@ 038   ----------------------------------------
haruka_kanata_rock_metal_gba_2_038:
	.byte		N20   , En1 , v060
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 039   ----------------------------------------
haruka_kanata_rock_metal_gba_2_039:
	.byte		N20   , En1 , v060
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte	PEND
@ 040   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_032
@ 041   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_033
@ 042   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_034
@ 043   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_035
@ 044   ----------------------------------------
haruka_kanata_rock_metal_gba_2_044:
	.byte		N32   , An0 , v060, gtp3
	.byte	W36
	.byte		        Gs0 
	.byte	W36
	.byte		        An0 , v060, gtp3
	.byte	W24
	.byte	PEND
@ 045   ----------------------------------------
haruka_kanata_rock_metal_gba_2_045:
	.byte	W12
	.byte		N32   , Gs0 , v060
	.byte	W36
	.byte		N20   , An0 
	.byte	W24
	.byte		        Gs0 
	.byte	W24
	.byte	PEND
@ 046   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_044
@ 047   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_045
@ 048   ----------------------------------------
	.byte		TIE   , En0 , v068
	.byte	W96
@ 049   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	W06
@ 050   ----------------------------------------
	.byte		TIE   , En1 , v060
	.byte	W96
@ 051   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	W06
@ 052   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 053   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 054   ----------------------------------------
haruka_kanata_rock_metal_gba_2_054:
	.byte		N11   , Ds1 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 055   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_054
@ 056   ----------------------------------------
haruka_kanata_rock_metal_gba_2_056:
	.byte		N11   , Cs1 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte	PEND
@ 057   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_021
@ 058   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_006
@ 059   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_006
@ 060   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 061   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 062   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_054
@ 063   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_054
@ 064   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_056
@ 065   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_021
@ 066   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_006
@ 067   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_006
@ 068   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_001
@ 069   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_001
@ 070   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_001
@ 071   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_001
@ 072   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 073   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 074   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 075   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 076   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_020
@ 077   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_021
@ 078   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_006
@ 079   ----------------------------------------
	.byte		N11   , An0 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N20   
	.byte	W48
@ 080   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 081   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 082   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 083   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 084   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_020
@ 085   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_021
@ 086   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_006
@ 087   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_006
@ 088   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_032
@ 089   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_033
@ 090   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_034
@ 091   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_035
@ 092   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_036
@ 093   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_037
@ 094   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_038
@ 095   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_039
@ 096   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_032
@ 097   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_033
@ 098   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_034
@ 099   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_035
@ 100   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_044
@ 101   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_045
@ 102   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_044
@ 103   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_045
@ 104   ----------------------------------------
	.byte		TIE   , En0 , v068
	.byte	W96
@ 105   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	W06
@ 106   ----------------------------------------
	.byte		TIE   , En1 , v060
	.byte	W96
@ 107   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	W06
@ 108   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 109   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 110   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_054
@ 111   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_054
@ 112   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_056
@ 113   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_021
@ 114   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_006
@ 115   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_006
@ 116   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 117   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_008
@ 118   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_054
@ 119   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_054
@ 120   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_056
@ 121   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_021
@ 122   ----------------------------------------
	.byte		N15   , An0 , v060
	.byte	W16
	.byte		        Gs0 
	.byte	W16
	.byte		        En0 
	.byte	W16
	.byte		        An0 
	.byte	W16
	.byte		        Gs0 
	.byte	W16
	.byte		        En0 
	.byte	W16
@ 123   ----------------------------------------
	.byte		        An0 
	.byte	W16
	.byte		        Gs0 
	.byte	W16
	.byte		        En0 
	.byte	W16
	.byte		        Gs0 
	.byte	W16
	.byte		        An0 
	.byte	W16
	.byte		        Bn0 
	.byte	W16
@ 124   ----------------------------------------
haruka_kanata_rock_metal_gba_2_124:
	.byte		TIE   , En0 , v060
	.byte	W96
	.byte	W32
	.byte	PEND
	.byte		EOT   
	.byte	W04
	.byte		N11   , Bn0 
	.byte	W12
@ 125   ----------------------------------------
	.byte		N66   , En1 
	.byte	W72
	.byte		N11   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 126   ----------------------------------------
haruka_kanata_rock_metal_gba_2_126:
	.byte		N11   , Cs1 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 127   ----------------------------------------
haruka_kanata_rock_metal_gba_2_127:
	.byte		N11   , An0 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 128   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_124
	.byte		EOT   , En0 
	.byte	W04
	.byte		N11   , Bn0 , v060
	.byte	W12
@ 129   ----------------------------------------
	.byte		N66   , En1 
	.byte	W72
	.byte		N11   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 130   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_126
@ 131   ----------------------------------------
	.byte		N11   , An0 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
@ 132   ----------------------------------------
haruka_kanata_rock_metal_gba_2_132:
	.byte		N11   , Gs0 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 133   ----------------------------------------
haruka_kanata_rock_metal_gba_2_133:
	.byte		N11   , Cs1 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 134   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_127
@ 135   ----------------------------------------
	.byte		N11   , Bn0 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 136   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_132
@ 137   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_133
@ 138   ----------------------------------------
	.byte		N11   , An0 , v068
	.byte	W12
	.byte		        En0 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An0 , v068
	.byte	W12
	.byte		        En0 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An0 , v068
	.byte	W12
	.byte		        En0 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An0 , v068
	.byte	W12
	.byte		        En0 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
@ 139   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
@ 140   ----------------------------------------
	.byte		TIE   , En1 
	.byte	W96
	.byte	W42
	.byte		EOT   
	.byte	W06
@ 141   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_124
	.byte		EOT   , En0 
	.byte	W04
	.byte		N11   , En0 , v060
	.byte	W12
@ 142   ----------------------------------------
haruka_kanata_rock_metal_gba_2_142:
	.byte		N44   , En0 , v060, gtp3
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N44   , En0 , v060, gtp3
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 143   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_142
@ 144   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_2_126
@ 145   ----------------------------------------
	.byte		N09   , An0 , v060
	.byte	W09
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

haruka_kanata_rock_metal_gba_3:
	.byte	KEYSH , haruka_kanata_rock_metal_gba_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 96*haruka_kanata_rock_metal_gba_mvl/mxv
	.byte		PAN   , c_v+16
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
	.byte	W84
	.byte		N11   , Cs4 , v064
	.byte	W12
@ 016   ----------------------------------------
haruka_kanata_rock_metal_gba_3_016:
	.byte		N20   , Bn3 , v064
	.byte	W36
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N20   , Bn3 
	.byte	W36
	.byte		N11   , Cs4 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
haruka_kanata_rock_metal_gba_3_017:
	.byte		N20   , Ds4 , v064
	.byte	W24
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N20   , Bn3 
	.byte	W48
	.byte		N11   , Cs4 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_016
@ 019   ----------------------------------------
haruka_kanata_rock_metal_gba_3_019:
	.byte		N20   , Bn3 , v064
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		N11   , En4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
haruka_kanata_rock_metal_gba_3_020:
	.byte		N66   , En4 , v064
	.byte	W72
	.byte		N20   , Fs4 
	.byte	W24
	.byte	PEND
@ 021   ----------------------------------------
haruka_kanata_rock_metal_gba_3_021:
	.byte		N20   , Gs4 , v064
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
	.byte		TIE   , En4 
	.byte	W96
@ 023   ----------------------------------------
	.byte	W42
	.byte		EOT   
	.byte	W42
	.byte		N11   , Cs4 
	.byte	W12
@ 024   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_016
@ 025   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_017
@ 026   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_016
@ 027   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_021
@ 030   ----------------------------------------
	.byte		TIE   , En4 , v064
	.byte	W96
@ 031   ----------------------------------------
	.byte	W42
	.byte		EOT   
	.byte	W54
@ 032   ----------------------------------------
haruka_kanata_rock_metal_gba_3_032:
	.byte	W72
	.byte		N11   , Cs4 , v064
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
haruka_kanata_rock_metal_gba_3_033:
	.byte		N20   , Cs4 , v064
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte	PEND
@ 034   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_032
@ 035   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_033
@ 036   ----------------------------------------
	.byte	W72
	.byte		N20   , Cs4 , v064
	.byte	W24
@ 037   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_033
@ 038   ----------------------------------------
	.byte		N90   , Gs4 , v064
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_032
@ 041   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_033
@ 042   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_032
@ 043   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_033
@ 044   ----------------------------------------
	.byte		TIE   , En4 , v064
	.byte	W96
@ 045   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
@ 046   ----------------------------------------
	.byte		TIE   , Gs4 
	.byte	W96
@ 047   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
haruka_kanata_rock_metal_gba_3_051:
	.byte	W60
	.byte		N11   , En4 , v064
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 052   ----------------------------------------
haruka_kanata_rock_metal_gba_3_052:
	.byte		N20   , En4 , v064
	.byte	W24
	.byte		TIE   , Gs4 
	.byte	W72
	.byte	PEND
@ 053   ----------------------------------------
	.byte	W42
	.byte		EOT   
	.byte	W18
	.byte		N11   , En4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 054   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_052
@ 055   ----------------------------------------
	.byte	W42
	.byte		EOT   , Gs4 
	.byte	W30
	.byte		N11   , En4 , v064
	.byte	W12
	.byte		        Fs4 
	.byte	W12
@ 056   ----------------------------------------
haruka_kanata_rock_metal_gba_3_056:
	.byte		N11   , Gs4 , v064
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte	PEND
@ 057   ----------------------------------------
haruka_kanata_rock_metal_gba_3_057:
	.byte		N20   , Gs4 , v064
	.byte	W24
	.byte		N11   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N11   , Fs4 
	.byte	W12
	.byte	PEND
@ 058   ----------------------------------------
haruka_kanata_rock_metal_gba_3_058:
	.byte		N20   , En4 , v064
	.byte	W36
	.byte		N11   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W24
	.byte		        Fs4 
	.byte	W12
	.byte		N54   , En4 
	.byte	W12
	.byte	PEND
@ 059   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_051
@ 060   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_052
@ 061   ----------------------------------------
	.byte	W42
	.byte		EOT   , Gs4 
	.byte	W18
	.byte		N11   , En4 , v064
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 062   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_052
@ 063   ----------------------------------------
	.byte	W42
	.byte		EOT   , Gs4 
	.byte	W18
	.byte		N11   , En4 , v064
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
@ 064   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_056
@ 065   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_056
@ 066   ----------------------------------------
	.byte		N20   , En4 , v064
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N20   
	.byte	W24
@ 067   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N20   , En4 
	.byte	W24
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W84
	.byte		N11   , Cs4 
	.byte	W12
@ 072   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_016
@ 073   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_017
@ 074   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_016
@ 075   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_019
@ 076   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_020
@ 077   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_021
@ 078   ----------------------------------------
	.byte		TIE   , En4 , v064
	.byte	W96
@ 079   ----------------------------------------
	.byte	W42
	.byte		EOT   
	.byte	W42
	.byte		N11   , Cs4 
	.byte	W12
@ 080   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_016
@ 081   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_017
@ 082   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_016
@ 083   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_019
@ 084   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_020
@ 085   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_021
@ 086   ----------------------------------------
	.byte		TIE   , En4 , v064
	.byte	W96
@ 087   ----------------------------------------
	.byte	W42
	.byte		EOT   
	.byte	W54
@ 088   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_032
@ 089   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_033
@ 090   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_032
@ 091   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_033
@ 092   ----------------------------------------
	.byte	W72
	.byte		N20   , Cs4 , v064
	.byte	W24
@ 093   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_033
@ 094   ----------------------------------------
	.byte		N90   , Gs4 , v064
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_032
@ 097   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_033
@ 098   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_032
@ 099   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_033
@ 100   ----------------------------------------
	.byte		TIE   , En4 , v064
	.byte	W96
@ 101   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
@ 102   ----------------------------------------
	.byte		TIE   , Gs4 
	.byte	W96
@ 103   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	W96
@ 107   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_051
@ 108   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_052
@ 109   ----------------------------------------
	.byte	W42
	.byte		EOT   , Gs4 
	.byte	W18
	.byte		N11   , En4 , v064
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 110   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_052
@ 111   ----------------------------------------
	.byte	W42
	.byte		EOT   , Gs4 
	.byte	W30
	.byte		N11   , En4 , v064
	.byte	W12
	.byte		        Fs4 
	.byte	W12
@ 112   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_056
@ 113   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_057
@ 114   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_058
@ 115   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_051
@ 116   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_052
@ 117   ----------------------------------------
	.byte	W42
	.byte		EOT   , Gs4 
	.byte	W18
	.byte		N11   , En4 , v064
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 118   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_052
@ 119   ----------------------------------------
	.byte	W42
	.byte		EOT   , Gs4 
	.byte	W18
	.byte		N11   , En4 , v064
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
@ 120   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_056
@ 121   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_056
@ 122   ----------------------------------------
	.byte		N90   , En4 , v064
	.byte	W96
@ 123   ----------------------------------------
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		        Fs4 
	.byte	W16
	.byte		        Gs4 
	.byte	W16
	.byte		        Fs4 
	.byte	W16
	.byte		        En4 
	.byte	W16
@ 124   ----------------------------------------
haruka_kanata_rock_metal_gba_3_124:
	.byte		TIE   , En4 , v064
	.byte	W96
	.byte	W42
	.byte	PEND
	.byte		EOT   
	.byte	W06
@ 125   ----------------------------------------
	.byte	W96
	.byte	W48
@ 126   ----------------------------------------
	.byte	W96
	.byte	W48
@ 127   ----------------------------------------
	.byte	W96
	.byte	W48
@ 128   ----------------------------------------
	.byte	W96
	.byte	W48
@ 129   ----------------------------------------
	.byte	W96
	.byte	W48
@ 130   ----------------------------------------
	.byte	W96
	.byte	W48
@ 131   ----------------------------------------
	.byte	W96
	.byte	W48
@ 132   ----------------------------------------
haruka_kanata_rock_metal_gba_3_132:
	.byte	W36
	.byte		N20   , Ds4 , v064
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N32   
	.byte	W36
	.byte		        Fs4 
	.byte	W36
	.byte	PEND
@ 133   ----------------------------------------
haruka_kanata_rock_metal_gba_3_133:
	.byte		N36   , En4 , v064
	.byte	W60
	.byte		N11   , Fs4 
	.byte	W12
	.byte		N32   , Gs4 
	.byte	W36
	.byte		N20   , Fs4 
	.byte	W24
	.byte		N11   , En4 
	.byte	W12
	.byte	PEND
@ 134   ----------------------------------------
	.byte		N32   
	.byte	W36
	.byte		N20   , Cs4 
	.byte	W24
	.byte		N11   , En4 
	.byte	W12
	.byte		N20   , Gs4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N20   , Fs4 
	.byte	W24
	.byte		N11   , En4 
	.byte	W12
@ 135   ----------------------------------------
	.byte		TIE   , Fs4 
	.byte	W96
	.byte	W12
	.byte		EOT   
	.byte	W36
@ 136   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_132
@ 137   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_133
@ 138   ----------------------------------------
	.byte		N32   , En4 , v064
	.byte	W96
	.byte	W36
	.byte		N11   
	.byte	W12
@ 139   ----------------------------------------
	.byte		N80   , En4 , v064, gtp3
	.byte	W84
	.byte		N56   , Fs4 
	.byte	W60
@ 140   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_3_124
	.byte		EOT   , En4 
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

haruka_kanata_rock_metal_gba_4:
	.byte	KEYSH , haruka_kanata_rock_metal_gba_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 94*haruka_kanata_rock_metal_gba_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N04   , Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   
	.byte		N04   , Fs1 , v040
	.byte	W36
	.byte		N04   
	.byte	W12
	.byte		        Cn1 , v060
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte		N04   , En1 
	.byte		N04   
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   
	.byte		N04   , Fs1 , v040
	.byte	W12
@ 001   ----------------------------------------
haruka_kanata_rock_metal_gba_4_001:
	.byte	W72
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
haruka_kanata_rock_metal_gba_4_002:
	.byte		N04   , Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   
	.byte		N04   , Fs1 , v040
	.byte	W36
	.byte		N04   
	.byte	W12
	.byte		        Cn1 , v060
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte		N04   , En1 
	.byte		N04   
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W48
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   , Fs1 , v040
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte		N04   
	.byte	W24
@ 004   ----------------------------------------
haruka_kanata_rock_metal_gba_4_004:
	.byte		N04   , Cn1 , v060
	.byte		N04   , En1 
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v036
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
haruka_kanata_rock_metal_gba_4_005:
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_004
@ 007   ----------------------------------------
haruka_kanata_rock_metal_gba_4_007:
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v036
	.byte	W06
	.byte		        Cn1 , v060
	.byte	W06
	.byte		N04   
	.byte		N04   , En1 
	.byte		N04   
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   
	.byte		N04   , Fs1 , v040
	.byte	W36
	.byte	PEND
@ 008   ----------------------------------------
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v028
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
@ 009   ----------------------------------------
haruka_kanata_rock_metal_gba_4_009:
	.byte		N04   , Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v028
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_009
@ 011   ----------------------------------------
	.byte		N04   , Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v028
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v028
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        En1 , v060
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
@ 012   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_007
@ 016   ----------------------------------------
haruka_kanata_rock_metal_gba_4_016:
	.byte		N04   , Cn1 , v060
	.byte		N04   , En1 
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
haruka_kanata_rock_metal_gba_4_017:
	.byte		N04   , Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
haruka_kanata_rock_metal_gba_4_018:
	.byte		N04   , Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
haruka_kanata_rock_metal_gba_4_019:
	.byte		N04   , Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
haruka_kanata_rock_metal_gba_4_020:
	.byte		N04   , Cn1 , v060
	.byte		N04   , En1 
	.byte	W24
	.byte		N04   
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_020
@ 022   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_020
@ 023   ----------------------------------------
	.byte		N04   , Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 024   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_016
@ 025   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_017
@ 026   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_020
@ 030   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_020
@ 031   ----------------------------------------
haruka_kanata_rock_metal_gba_4_031:
	.byte		N04   , Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W12
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
@ 032   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_016
@ 033   ----------------------------------------
haruka_kanata_rock_metal_gba_4_033:
	.byte		N04   , Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_018
@ 035   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_033
@ 036   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_018
@ 037   ----------------------------------------
haruka_kanata_rock_metal_gba_4_037:
	.byte		N04   , Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v036
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_018
@ 039   ----------------------------------------
haruka_kanata_rock_metal_gba_4_039:
	.byte		N04   , Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
@ 040   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_016
@ 041   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_033
@ 042   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_018
@ 043   ----------------------------------------
haruka_kanata_rock_metal_gba_4_043:
	.byte		N04   , Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte	W12
	.byte		N04   
	.byte		N04   , En1 
	.byte		N04   , Fs1 , v040
	.byte	W24
	.byte	PEND
@ 044   ----------------------------------------
haruka_kanata_rock_metal_gba_4_044:
	.byte		N04   , Cn1 , v060
	.byte		N04   , En1 
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W24
	.byte	PEND
@ 045   ----------------------------------------
haruka_kanata_rock_metal_gba_4_045:
	.byte		N04   , En1 , v060
	.byte	W12
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W24
	.byte		        Cn1 
	.byte		N04   , Fs1 , v040
	.byte	W24
	.byte	PEND
@ 046   ----------------------------------------
haruka_kanata_rock_metal_gba_4_046:
	.byte		N04   , Cn1 , v060
	.byte		N04   , En1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
@ 047   ----------------------------------------
haruka_kanata_rock_metal_gba_4_047:
	.byte		N04   , En1 , v060
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte		N04   
	.byte	W24
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte		N04   
	.byte	W24
	.byte	PEND
@ 048   ----------------------------------------
haruka_kanata_rock_metal_gba_4_048:
	.byte		N04   , Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   
	.byte	W96
	.byte	PEND
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
haruka_kanata_rock_metal_gba_4_051:
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte	W12
	.byte	PEND
@ 052   ----------------------------------------
haruka_kanata_rock_metal_gba_4_052:
	.byte		N04   , Cn1 , v060
	.byte		N04   , En1 
	.byte	W24
	.byte		N04   
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v036
	.byte	W12
	.byte	PEND
@ 053   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_018
@ 054   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_020
@ 055   ----------------------------------------
haruka_kanata_rock_metal_gba_4_055:
	.byte		N04   , Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v036
	.byte	W12
	.byte	PEND
@ 056   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_052
@ 057   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_018
@ 058   ----------------------------------------
haruka_kanata_rock_metal_gba_4_058:
	.byte		N04   , Cn1 , v060
	.byte		N04   , En1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
@ 059   ----------------------------------------
haruka_kanata_rock_metal_gba_4_059:
	.byte		N04   , Cn1 , v060
	.byte		N04   , En1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        En1 , v060
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte	PEND
@ 060   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_052
@ 061   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_018
@ 062   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_020
@ 063   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_055
@ 064   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_052
@ 065   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_018
@ 066   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_058
@ 067   ----------------------------------------
	.byte		N04   , Cn1 , v060
	.byte		N04   , En1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N04   , En1 
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N04   , En1 
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
@ 068   ----------------------------------------
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte		N04   , Fs1 , v040
	.byte	W96
@ 069   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_001
@ 070   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_002
@ 071   ----------------------------------------
	.byte	W48
	.byte		N04   , Fs1 , v040
	.byte	W24
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   , Fs1 , v040
	.byte	W24
@ 072   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_016
@ 073   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_017
@ 074   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_018
@ 075   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_019
@ 076   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_020
@ 077   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_020
@ 078   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_020
@ 079   ----------------------------------------
	.byte		N04   , Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v036
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte		N04   
	.byte	W12
	.byte		        Fs1 , v036
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   
	.byte	W48
@ 080   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_016
@ 081   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_017
@ 082   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_018
@ 083   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_019
@ 084   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_020
@ 085   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_020
@ 086   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_020
@ 087   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_031
@ 088   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_016
@ 089   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_033
@ 090   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_018
@ 091   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_033
@ 092   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_018
@ 093   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_037
@ 094   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_018
@ 095   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_039
@ 096   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_016
@ 097   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_033
@ 098   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_018
@ 099   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_043
@ 100   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_044
@ 101   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_045
@ 102   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_046
@ 103   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_047
@ 104   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_048
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	W96
@ 107   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_051
@ 108   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_052
@ 109   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_018
@ 110   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_020
@ 111   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_055
@ 112   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_052
@ 113   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_018
@ 114   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_058
@ 115   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_059
@ 116   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_052
@ 117   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_018
@ 118   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_020
@ 119   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_055
@ 120   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_052
@ 121   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_018
@ 122   ----------------------------------------
	.byte		N04   , En1 , v060
	.byte	W16
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W16
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W16
	.byte		N04   
	.byte	W16
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W16
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W16
@ 123   ----------------------------------------
	.byte		N04   
	.byte	W16
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W16
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W16
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W16
	.byte		N04   
	.byte		N04   
	.byte	W16
	.byte		N04   
	.byte		N04   
	.byte	W16
@ 124   ----------------------------------------
haruka_kanata_rock_metal_gba_4_124:
	.byte		N04   , Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		        En1 , v052
	.byte	W06
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		        En1 , v052
	.byte	W06
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		        En1 , v052
	.byte	W06
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte	PEND
@ 125   ----------------------------------------
haruka_kanata_rock_metal_gba_4_125:
	.byte		N04   , Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		        En1 , v052
	.byte	W06
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		        En1 , v052
	.byte	W06
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        En1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W06
	.byte		        En1 , v052
	.byte	W06
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   , Fs1 , v040
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte	PEND
@ 126   ----------------------------------------
haruka_kanata_rock_metal_gba_4_126:
	.byte		N04   , Cn1 , v060
	.byte		N04   , En1 , v056
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v056
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v056
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v056
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v056
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   , En1 , v056
	.byte		N04   
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte		N04   , En1 , v056
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   , En1 , v056
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte		N04   , En1 , v056
	.byte	W12
	.byte	PEND
@ 127   ----------------------------------------
haruka_kanata_rock_metal_gba_4_127:
	.byte		N04   , Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   , En1 , v056
	.byte		N04   
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v056
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v056
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v056
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v056
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v056
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   , En1 , v056
	.byte		N04   
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
@ 128   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_124
@ 129   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_125
@ 130   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_126
@ 131   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_127
@ 132   ----------------------------------------
haruka_kanata_rock_metal_gba_4_132:
	.byte		N04   , Cn1 , v060
	.byte		N04   , En1 
	.byte	W12
	.byte		        Fs1 , v040
	.byte	W06
	.byte		        Cn1 , v060
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		        Cn1 , v060
	.byte	W06
	.byte		        En1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		        Cn1 , v060
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		        Cn1 , v060
	.byte	W06
	.byte		        En1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte	PEND
@ 133   ----------------------------------------
haruka_kanata_rock_metal_gba_4_133:
	.byte		N04   , Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		        Cn1 , v060
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		        Cn1 , v060
	.byte	W06
	.byte		        En1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		        Cn1 , v060
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		        Cn1 , v060
	.byte	W06
	.byte		        En1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte	PEND
@ 134   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_133
@ 135   ----------------------------------------
	.byte		N04   , Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		        Cn1 , v060
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		        Cn1 , v060
	.byte	W06
	.byte		        En1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		        Cn1 , v060
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		        Cn1 , v060
	.byte	W06
	.byte		        En1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W12
@ 136   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_132
@ 137   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_133
@ 138   ----------------------------------------
	.byte		N04   , Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   
	.byte	W12
	.byte		        Cn1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   
	.byte	W12
	.byte		        Cn1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   
	.byte	W12
	.byte		        Cn1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   
	.byte	W12
	.byte		        Cn1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , Fs1 , v040
	.byte	W12
@ 139   ----------------------------------------
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   
	.byte	W36
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte		N04   , En1 
	.byte	W12
@ 140   ----------------------------------------
	.byte		        Cn1 
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		        En1 , v052
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N04   , Cn1 , v060
	.byte		N02   , En1 , v052
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v052
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		        En1 , v052
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N04   , Cn1 , v060
	.byte		N02   , En1 , v052
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v052
	.byte	W06
	.byte		N04   
	.byte	W06
@ 141   ----------------------------------------
haruka_kanata_rock_metal_gba_4_141:
	.byte		N04   , Cn1 , v060
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N04   , Cn1 , v060
	.byte		N02   , En1 , v052
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v052
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		        En1 , v052
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N04   , Cn1 , v060
	.byte		N02   , En1 , v052
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v052
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
@ 142   ----------------------------------------
	.byte	PATT
	 .word	haruka_kanata_rock_metal_gba_4_141
@ 143   ----------------------------------------
	.byte		N04   , Cn1 , v060
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N04   , Cn1 , v060
	.byte		N02   , En1 , v052
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v052
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		N02   , En1 , v052
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N04   , Cn1 , v060
	.byte		N02   , En1 , v052
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N04   , Cn1 , v060
	.byte		N02   , En1 , v052
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N04   , Cn1 , v060
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn1 , v060
	.byte		N04   , En1 , v056
	.byte	W06
	.byte		N04   
	.byte	W06
@ 144   ----------------------------------------
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   , Fs1 , v040
	.byte	W12
@ 145   ----------------------------------------
	.byte		        Cn1 , v060
	.byte		N04   , En1 
	.byte		N04   , Fs1 , v040
	.byte	W12
	.byte		N04   
	.byte	W04
	.byte	FINE

@******************************************************@
	.align	2

haruka_kanata_rock_metal_gba:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	haruka_kanata_rock_metal_gba_pri	@ Priority
	.byte	haruka_kanata_rock_metal_gba_rev	@ Reverb.

	.word	haruka_kanata_rock_metal_gba_grp

	.word	haruka_kanata_rock_metal_gba_1
	.word	haruka_kanata_rock_metal_gba_2
	.word	haruka_kanata_rock_metal_gba_3
	.word	haruka_kanata_rock_metal_gba_4

	.end
