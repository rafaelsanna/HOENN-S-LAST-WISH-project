	.include "MPlayDef.s"

	.equ	mus_blue_bird_grp, voicegroup_blue_bird
	.equ	mus_blue_bird_pri, 0
	.equ	mus_blue_bird_rev, reverb_set+50
	.equ	mus_blue_bird_mvl, 100
	.equ	mus_blue_bird_key, 0
	.equ	mus_blue_bird_tbs, 1
	.equ	mus_blue_bird_exg, 1
	.equ	mus_blue_bird_cmp, 1

	.section .rodata
	.global	mus_blue_bird
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_blue_bird_1:
	.byte	KEYSH , mus_blue_bird_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 150*mus_blue_bird_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_blue_bird_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W36
	.byte		N48   , Dn1 , v076
	.byte	W48
	.byte		        Cs1 
	.byte	W12
@ 002   ----------------------------------------
	.byte	W36
	.byte		N96   , Fs1 
	.byte	W60
@ 003   ----------------------------------------
	.byte	W36
	.byte		N48   , Bn0 
	.byte	W48
	.byte		        En1 
	.byte	W12
@ 004   ----------------------------------------
	.byte	W36
	.byte		N96   , An0 
	.byte	W60
@ 005   ----------------------------------------
	.byte	W36
	.byte		N48   , Dn1 
	.byte	W48
	.byte		        Cs1 
	.byte	W12
@ 006   ----------------------------------------
	.byte	W36
	.byte		N96   , Fs1 
	.byte	W60
@ 007   ----------------------------------------
	.byte	W36
mus_blue_bird_1_B1:
	.byte		N48   , Bn0 , v076
	.byte	W48
	.byte		        En1 
	.byte	W12
@ 008   ----------------------------------------
	.byte	W36
	.byte		N80   , Fs1 , v076, gtp3
	.byte	W60
@ 009   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N24   , Dn1 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N24   , Cs1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N24   , Fs1 
	.byte	W24
@ 011   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Bn0 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N24   , Bn0 
	.byte	W24
@ 012   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N24   , Cs1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N24   , Cs1 
	.byte	W24
@ 013   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N24   , Cs2 
	.byte	W24
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		N24   , En1 
	.byte	W24
@ 014   ----------------------------------------
mus_blue_bird_1_014:
	.byte		N12   , Bn1 , v076
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N24   , Dn1 
	.byte	W24
	.byte		N12   , An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N24   , Cs1 
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
	.byte		N12   , An1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N24   , An0 
	.byte	W24
@ 016   ----------------------------------------
	.byte		N12   , En1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N24   , Cs1 
	.byte	W24
@ 017   ----------------------------------------
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		N24   , En1 
	.byte	W24
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_1_014
@ 019   ----------------------------------------
	.byte		N12   , An1 , v076
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        Bn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N12   , Cs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N24   , Fs1 
	.byte	W12
@ 021   ----------------------------------------
	.byte	W36
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 022   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 023   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 024   ----------------------------------------
mus_blue_bird_1_024:
	.byte		N12   , Cs1 , v076
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 026   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 027   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N24   , Cs1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 028   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W12
@ 029   ----------------------------------------
	.byte	W36
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_1_024
@ 031   ----------------------------------------
mus_blue_bird_1_031:
	.byte		N12   , Fs1 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
mus_blue_bird_1_032:
	.byte		N12   , En1 , v076
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
mus_blue_bird_1_033:
	.byte		N12   , An0 , v076
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_1_024
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_1_031
@ 036   ----------------------------------------
mus_blue_bird_1_036:
	.byte		N12   , En1 , v076
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_1_024
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_1_031
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_1_032
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_1_033
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_1_024
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_1_031
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_1_036
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_1_031
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_1_036
@ 047   ----------------------------------------
	.byte		N12   , Fs1 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	GOTO
	 .word	mus_blue_bird_1_B1
mus_blue_bird_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_blue_bird_2:
	.byte	KEYSH , mus_blue_bird_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 58*mus_blue_bird_mvl/mxv
	.byte		PAN   , c_v-12
	.byte	W36
	.byte		N48   , Cs3 , v052
	.byte		N48   , Fs3 
	.byte	W48
	.byte		N36   , Bn2 
	.byte		N36   , Fn3 
	.byte	W12
@ 001   ----------------------------------------
	.byte	W36
	.byte		N48   , An2 
	.byte	W60
@ 002   ----------------------------------------
mus_blue_bird_2_002:
	.byte	W36
	.byte		N48   , An2 , v052
	.byte		N48   , Fs3 
	.byte	W48
	.byte		N12   , Dn3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W24
	.byte		        En3 
	.byte		N12   , Gs3 
	.byte	W24
	.byte		        En3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W36
@ 004   ----------------------------------------
mus_blue_bird_2_004:
	.byte	W36
	.byte		N48   , Cs3 , v052
	.byte		N48   , Fs3 
	.byte	W48
	.byte		N36   , Bn2 
	.byte		N36   , Fn3 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	W36
	.byte		N48   , An2 
	.byte	W60
@ 006   ----------------------------------------
mus_blue_bird_2_006:
	.byte	W24
	.byte		N12   , Dn3 , v052
	.byte		N12   , Fs3 
	.byte	W12
	.byte	PEND
mus_blue_bird_2_B1:
	.byte	W36
	.byte		N12   , Dn3 , v052
	.byte		N12   , Gs3 
	.byte	W24
@ 007   ----------------------------------------
	.byte	W48
	.byte		        An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N48   , An2 
	.byte		N48   , Cs3 
	.byte	W36
@ 008   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte		N48   , An3 
	.byte	W48
	.byte		        Bn2 
	.byte		N48   , Gs3 
	.byte	W24
@ 009   ----------------------------------------
	.byte	W24
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W48
	.byte		N48   , Cs3 
	.byte		N48   , Fs3 
	.byte	W24
@ 010   ----------------------------------------
	.byte	W24
	.byte		N24   , An2 
	.byte		N24   , Fs3 
	.byte	W72
@ 011   ----------------------------------------
	.byte	W24
	.byte		N48   , Gs2 
	.byte		N48   , Bn2 
	.byte	W48
	.byte		N24   , Gs2 
	.byte		N24   , Bn2 
	.byte	W24
@ 012   ----------------------------------------
	.byte	W36
	.byte		N12   , Fs3 
	.byte	W36
	.byte		N24   , Bn2 
	.byte	W24
@ 013   ----------------------------------------
	.byte	W72
	.byte		        An2 
	.byte	W24
@ 014   ----------------------------------------
	.byte	W36
	.byte		N12   
	.byte	W36
	.byte		N24   , Cs3 
	.byte	W24
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W72
	.byte		        Bn2 
	.byte	W24
@ 017   ----------------------------------------
	.byte	W24
	.byte		        An2 
	.byte		N24   , Dn3 
	.byte	W48
	.byte		        An2 
	.byte	W24
@ 018   ----------------------------------------
	.byte	W36
	.byte		N24   
	.byte	W48
	.byte		N12   , Bn2 
	.byte	W12
@ 019   ----------------------------------------
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte	W36
@ 020   ----------------------------------------
	.byte	W36
	.byte		N24   
	.byte		N24   , Fs3 
	.byte	W60
@ 021   ----------------------------------------
	.byte	W12
	.byte		        Cs3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , En3 
	.byte	W36
	.byte		        Bn2 
	.byte		N24   , En3 
	.byte	W24
@ 022   ----------------------------------------
	.byte	W36
	.byte		        Bn2 
	.byte		N24   , Gs3 
	.byte	W60
@ 023   ----------------------------------------
	.byte	W12
	.byte		        Bn2 
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Cs3 
	.byte		N24   , Fs3 
	.byte	W36
	.byte		        Cs3 
	.byte	W24
@ 024   ----------------------------------------
	.byte	W36
	.byte		        Dn3 
	.byte		N24   , An3 
	.byte	W60
@ 025   ----------------------------------------
	.byte	W24
	.byte		N48   , Dn3 
	.byte		N48   , An3 
	.byte	W72
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W24
	.byte		N24   , Fn3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Fn3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_2_004
@ 029   ----------------------------------------
mus_blue_bird_2_029:
	.byte	W24
	.byte		N12   , An2 , v052
	.byte		N12   , Cs3 
	.byte	W72
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_2_002
@ 031   ----------------------------------------
	.byte	W24
	.byte		N12   , Gs3 , v052
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W36
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_2_004
@ 033   ----------------------------------------
	.byte	W36
	.byte		N48   , An2 , v052
	.byte	W60
@ 034   ----------------------------------------
mus_blue_bird_2_034:
	.byte	W24
	.byte		N12   , Dn3 , v052
	.byte		N12   , Fs3 
	.byte	W48
	.byte		        Dn3 
	.byte		N12   , Gs3 
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
mus_blue_bird_2_035:
	.byte	W48
	.byte		N12   , An2 , v052
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte	W36
	.byte	PEND
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_2_004
@ 037   ----------------------------------------
	.byte	W36
	.byte		N48   , An2 , v052
	.byte	W60
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_2_002
@ 039   ----------------------------------------
	.byte	W24
	.byte		N12   , En3 , v052
	.byte		N12   , Gs3 
	.byte	W24
	.byte		        En3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W36
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_2_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_2_029
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_2_034
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_2_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_2_034
@ 045   ----------------------------------------
	.byte	W48
	.byte		N12   , An2 , v052
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        An2 
	.byte		N12   , Cs3 
	.byte	W36
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_2_006
	.byte	GOTO
	 .word	mus_blue_bird_2_B1
mus_blue_bird_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_blue_bird_3:
	.byte	KEYSH , mus_blue_bird_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 108*mus_blue_bird_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N12   , Cs3 , v064
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N48   , An3 
	.byte	W48
	.byte		N36   , Gs3 
	.byte	W12
@ 001   ----------------------------------------
mus_blue_bird_3_001:
	.byte	W24
	.byte		N72   , Fs3 , v064
	.byte	W12
	.byte		N48   , Cs3 
	.byte	W60
	.byte	PEND
@ 002   ----------------------------------------
mus_blue_bird_3_002:
	.byte		N12   , Cs3 , v064
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N48   , An3 
	.byte	W48
	.byte		N12   , Bn3 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cs4 
	.byte	W36
@ 004   ----------------------------------------
mus_blue_bird_3_004:
	.byte		N12   , Cs3 , v064
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N48   , An3 
	.byte	W48
	.byte		N36   , Gs3 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_3_001
@ 006   ----------------------------------------
mus_blue_bird_3_006:
	.byte		N12   , Fs3 , v064
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte	PEND
mus_blue_bird_3_B1:
	.byte	W12
	.byte		N12   , Fs3 , v064
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W24
@ 007   ----------------------------------------
	.byte		        En3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N48   
	.byte	W36
@ 008   ----------------------------------------
	.byte	W24
	.byte		        Cs4 
	.byte	W48
	.byte		        Bn3 
	.byte	W24
@ 009   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N48   , An3 
	.byte	W24
@ 010   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
@ 011   ----------------------------------------
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N48   , Fs3 
	.byte	W48
	.byte		N24   , Fn3 
	.byte	W24
@ 012   ----------------------------------------
mus_blue_bird_3_012:
	.byte		N12   , Cs3 , v064
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Gs3 
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
mus_blue_bird_3_013:
	.byte		N12   , Fs3 , v064
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N24   , En3 
	.byte	W24
@ 015   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Gs3 
	.byte	W24
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_3_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_3_013
@ 018   ----------------------------------------
	.byte		N12   , Cs3 , v064
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N12   , Gs3 
	.byte	W12
@ 019   ----------------------------------------
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N24   
	.byte	W36
@ 020   ----------------------------------------
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W60
@ 021   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Gs3 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W60
@ 023   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
@ 024   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W24
@ 025   ----------------------------------------
	.byte		        Bn3 
	.byte	W24
	.byte		N48   , Cs4 
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		N24   , En4 
	.byte	W12
@ 026   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 027   ----------------------------------------
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_3_004
@ 029   ----------------------------------------
	.byte	W24
	.byte		N12   , Fs3 , v064
	.byte	W72
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_3_002
@ 031   ----------------------------------------
mus_blue_bird_3_031:
	.byte		N12   , An3 , v064
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W36
	.byte	PEND
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_3_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_3_001
@ 034   ----------------------------------------
mus_blue_bird_3_034:
	.byte		N12   , Fs3 , v064
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
mus_blue_bird_3_035:
	.byte		N12   , En3 , v064
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N24   
	.byte	W36
	.byte	PEND
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_3_004
@ 037   ----------------------------------------
	.byte	W24
	.byte		N60   , Fs3 , v064
	.byte	W12
	.byte		N48   , Cs3 
	.byte	W60
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_3_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_3_031
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_3_004
@ 041   ----------------------------------------
	.byte	W24
	.byte		N12   , Fs3 , v064
	.byte	W72
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_3_034
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_3_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_3_034
@ 045   ----------------------------------------
	.byte		N12   , En3 , v064
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N12   
	.byte	W36
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_blue_bird_3_006
	.byte	GOTO
	 .word	mus_blue_bird_3_B1
mus_blue_bird_3_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_blue_bird:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_blue_bird_pri	@ Priority
	.byte	mus_blue_bird_rev	@ Reverb.

	.word	mus_blue_bird_grp

	.word	mus_blue_bird_1
	.word	mus_blue_bird_2
	.word	mus_blue_bird_3

	.end
