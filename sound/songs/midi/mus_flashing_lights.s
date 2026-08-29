	.include "MPlayDef.s"

	.equ	mus_flashing_lights_grp, voicegroup_flashing_lights
	.equ	mus_flashing_lights_pri, 0
	.equ	mus_flashing_lights_rev, reverb_set+50
	.equ	mus_flashing_lights_mvl, 100
	.equ	mus_flashing_lights_key, 0
	.equ	mus_flashing_lights_tbs, 1
	.equ	mus_flashing_lights_exg, 1
	.equ	mus_flashing_lights_cmp, 1

	.section .rodata
	.global	mus_flashing_lights
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_flashing_lights_1:
	.byte		VOL   , 127*mus_flashing_lights_mvl/mxv
	.byte	KEYSH , mus_flashing_lights_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 90*mus_flashing_lights_tbs/2
	.byte		VOICE , 48
	.byte		N06   , Fs0 , v052
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        En0 
	.byte		N06   , En1 
	.byte	W12
	.byte		        En0 
	.byte		N06   , En1 
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
@ 003   ----------------------------------------
	.byte		        Fs0 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte		N06   , Fs1 
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Dn0 
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Cs0 
	.byte		N06   , Cs1 
	.byte	W12
	.byte		        Cs0 
	.byte		N06   , Cs1 
	.byte	W12
	.byte		        Cs0 
	.byte		N06   , Cs1 
	.byte	W12
	.byte		        Cs0 
	.byte		N06   , Cs1 
	.byte	W12
@ 005   ----------------------------------------
mus_flashing_lights_1_005:
	.byte		N06   , Bn0 , v052
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Bn1 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_1_005
@ 007   ----------------------------------------
	.byte		N06   , Bn0 , v052
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Fs2 
	.byte	W12
@ 008   ----------------------------------------
	.byte		        Bn0 
	.byte		N06   , Bn1 
	.byte	W03
	.byte		N24   , Fs2 
	.byte		N24   , Fs3 
	.byte	W09
	.byte		N06   , Bn0 
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Bn1 
	.byte	W03
	.byte		N24   , An2 
	.byte		N24   , An3 
	.byte	W09
	.byte		N06   , Bn0 
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte		N06   , Bn1 
	.byte	W03
	.byte		N24   , Bn2 
	.byte		N24   , Bn3 
	.byte	W09
	.byte		N06   , Bn0 
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        Cs1 
	.byte		N06   , Cs2 
	.byte	W03
	.byte		N24   , Cs3 
	.byte		N24   , Cs4 
	.byte	W09
	.byte		N06   , Cs1 
	.byte		N06   , Cs2 
	.byte	W12
mus_flashing_lights_1_B1:
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
	.byte	GOTO
	 .word	mus_flashing_lights_1_B1
mus_flashing_lights_1_B2:
@ 025   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_flashing_lights_2:
	.byte		VOL   , 127*mus_flashing_lights_mvl/mxv
	.byte	KEYSH , mus_flashing_lights_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 40
	.byte		N72   , Fs2 , v052
	.byte		N72   , An2 
	.byte		N72   , Cs3 
	.byte		N72   , Fs3 
	.byte		N72   , Gs3 , v064
	.byte		N72   , Gs4 , v052
	.byte	W72
	.byte		N24   , Fs2 
	.byte		N24   , An2 
	.byte		N24   , Cs3 
	.byte		N24   , Fs3 , v064
	.byte	W24
@ 001   ----------------------------------------
mus_flashing_lights_2_001:
	.byte		N96   , Dn2 , v052
	.byte		N96   , Fs2 
	.byte		N96   , An2 
	.byte		N96   , Cs3 , v064
	.byte	W96
	.byte	PEND
@ 002   ----------------------------------------
	.byte		        Fs2 , v052
	.byte		N96   , An2 
	.byte		N96   , Cs3 
	.byte		N72   , Fs3 
	.byte		N24   , Gs3 , v064
	.byte		N96   , Gs4 , v052
	.byte	W24
	.byte		N24   , An3 , v064
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
@ 003   ----------------------------------------
mus_flashing_lights_2_003:
	.byte		N48   , Dn2 , v052
	.byte		N48   , Fs2 
	.byte		N48   , An2 
	.byte		N48   , Cs3 , v064
	.byte		N48   , Cs4 , v052
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , Fs2 
	.byte		N48   , Gs2 
	.byte		N48   , Bn2 , v064
	.byte		N48   , Bn3 , v052
	.byte	W48
	.byte	PEND
@ 004   ----------------------------------------
	.byte		TIE   , Bn1 
	.byte		TIE   , Fs2 , v020
	.byte		TIE   , An2 , v052
	.byte		TIE   , Cs3 
	.byte		TIE   , An3 
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn1 
	.byte		        Fs2 
	.byte		        An2 
	.byte		        Cs3 
	.byte		        An3 
@ 006   ----------------------------------------
	.byte		N96   , Bn1 
	.byte		N96   , Fs2 , v020
	.byte		N96   , An2 , v052
	.byte		N96   , Cs3 
	.byte		N96   , Fs3 
	.byte		N96   , Cs4 
	.byte	W96
@ 007   ----------------------------------------
	.byte		N72   , Bn1 
	.byte		N24   , Fs2 
	.byte		N24   , Fs3 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        An2 
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , Bn3 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		        Cs2 
	.byte		N24   , Cs3 
	.byte		N24   , Cs4 
	.byte		N24   , Cs5 
	.byte	W24
mus_flashing_lights_2_B1:
@ 008   ----------------------------------------
mus_flashing_lights_2_008:
	.byte		VOICE , 40
	.byte		N96   , Fs2 , v052
	.byte		N96   , An2 
	.byte		N96   , Cs3 
	.byte		N96   , Fs3 
	.byte		N72   , Gs3 , v064
	.byte		N72   , Gs4 
	.byte	W96
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_2_001
@ 010   ----------------------------------------
mus_flashing_lights_2_010:
	.byte		N96   , Fs2 , v052
	.byte		N96   , An2 
	.byte		N96   , Cs3 
	.byte		N72   , Fs3 
	.byte		N24   , Gs3 , v064
	.byte		N96   , Gs4 
	.byte	W24
	.byte		N24   , An3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_2_003
@ 012   ----------------------------------------
mus_flashing_lights_2_012:
	.byte		VOICE , 41
	.byte		N09   , Bn2 , v052
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , An3 
	.byte	W12
	.byte		N03   , Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , An3 
	.byte	W06
	.byte		N09   , Bn2 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , An3 
	.byte	W12
	.byte		        Bn2 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , An3 
	.byte	W12
	.byte		N03   , Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , An3 
	.byte	W06
	.byte		N09   , Bn2 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , Cs4 
	.byte	W12
	.byte		N03   , Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , Cs4 
	.byte	W06
	.byte		N09   , Bn2 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , Cs4 
	.byte	W06
	.byte		N06   , As2 
	.byte	W06
	.byte		N03   , Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , Cs4 
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
mus_flashing_lights_2_013:
	.byte		N09   , Bn2 , v052
	.byte		N12   , Cn3 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , An3 
	.byte	W12
	.byte		N03   , Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , An3 
	.byte	W06
	.byte		N09   , Bn2 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , An3 
	.byte	W12
	.byte		        Bn2 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , An3 
	.byte	W12
	.byte		N03   , Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , An3 
	.byte	W06
	.byte		N09   , Bn2 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , Bn3 
	.byte	W12
	.byte		N03   , Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , Bn3 
	.byte	W06
	.byte		N09   , Bn2 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , Cs4 
	.byte	W06
	.byte		N06   , As2 
	.byte	W06
	.byte		N03   , Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , Cs4 
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_2_013
@ 015   ----------------------------------------
mus_flashing_lights_2_015:
	.byte		N09   , Bn2 , v052
	.byte		N12   , Cn3 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , An3 
	.byte	W12
	.byte		N03   , Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , An3 
	.byte	W06
	.byte		N09   , Bn2 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , An3 
	.byte	W12
	.byte		        Bn2 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , An3 
	.byte	W12
	.byte		N03   , Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , An3 
	.byte	W06
	.byte		N09   , Bn2 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , Bn3 
	.byte	W12
	.byte		N03   , Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , Bn3 
	.byte	W06
	.byte		N09   , Bn2 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , Cs4 
	.byte	W12
	.byte		N03   , Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , Cs4 
	.byte	W06
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_2_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_2_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_2_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_2_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_2_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_2_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_2_013
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_2_015
	.byte	GOTO
	 .word	mus_flashing_lights_2_B1
mus_flashing_lights_2_B2:
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_flashing_lights_3:
	.byte		VOL   , 127*mus_flashing_lights_mvl/mxv
	.byte	KEYSH , mus_flashing_lights_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W03
	.byte		N06   , Fs1 , v096
	.byte		N06   , Fs3 
	.byte	W92
	.byte	W01
@ 004   ----------------------------------------
	.byte	W03
	.byte		N03   , Bn1 
	.byte		N03   , Bn3 
	.byte	W03
	.byte		        Cs2 
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Bn1 
	.byte		N03   , Bn3 
	.byte	W03
	.byte		        An1 
	.byte		N03   , An3 
	.byte	W84
@ 005   ----------------------------------------
	.byte	W03
	.byte		N06   , En2 
	.byte		N06   , En4 
	.byte	W92
	.byte	W01
@ 006   ----------------------------------------
	.byte	W03
	.byte		N03   , Fs2 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		        Gs2 
	.byte		N03   , Gs4 
	.byte	W03
	.byte		        Fs2 
	.byte		N03   , Fs4 
	.byte	W03
	.byte		        En2 
	.byte		N03   , En4 
	.byte	W84
@ 007   ----------------------------------------
	.byte	W03
	.byte		        Bn2 
	.byte		N03   , Bn4 
	.byte	W03
	.byte		        An2 
	.byte		N03   , An4 
	.byte	W03
	.byte		        Gs2 
	.byte		N03   , Gs4 
	.byte	W03
	.byte		        Fs2 
	.byte		N03   , Fs4 
	.byte	W60
	.byte	W03
	.byte		        Bn2 
	.byte		N03   , Bn4 
	.byte	W03
	.byte		        Cs3 
	.byte		N03   , Cs5 
	.byte	W18
mus_flashing_lights_3_B1:
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
mus_flashing_lights_3_012:
	.byte		N09   , Bn2 , v052
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , An3 
	.byte	W12
	.byte		N03   , Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , An3 
	.byte	W06
	.byte		N09   , Bn2 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , An3 
	.byte	W12
	.byte		        Bn2 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , An3 
	.byte	W12
	.byte		N03   , Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , An3 
	.byte	W06
	.byte		N09   , Bn2 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , Cs4 
	.byte	W12
	.byte		N03   , Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , Cs4 
	.byte	W06
	.byte		N09   , Bn2 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , Cs4 
	.byte	W12
	.byte		N03   , Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , Cs4 
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
mus_flashing_lights_3_013:
	.byte		N09   , Bn2 , v052
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , An3 
	.byte	W12
	.byte		N03   , Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , An3 
	.byte	W06
	.byte		N09   , Bn2 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , An3 
	.byte	W12
	.byte		        Bn2 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , An3 
	.byte	W12
	.byte		N03   , Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , An3 
	.byte	W06
	.byte		N09   , Bn2 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , Bn3 
	.byte	W12
	.byte		N03   , Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , Bn3 
	.byte	W06
	.byte		N09   , Bn2 
	.byte		N09   , Dn3 
	.byte		N09   , Fs3 
	.byte		N09   , Cs4 
	.byte	W12
	.byte		N03   , Bn2 
	.byte		N03   , Dn3 
	.byte		N03   , Fs3 
	.byte		N03   , Cs4 
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_3_013
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_3_013
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_3_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_3_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_3_013
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_3_013
	.byte	GOTO
	 .word	mus_flashing_lights_3_B1
mus_flashing_lights_3_B2:
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_flashing_lights_4:
	.byte		VOL   , 127*mus_flashing_lights_mvl/mxv
	.byte	KEYSH , mus_flashing_lights_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 82
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
mus_flashing_lights_4_B1:
@ 008   ----------------------------------------
	.byte		N96   , Fs1 , v052
	.byte	W96
@ 009   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 010   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 011   ----------------------------------------
	.byte		N48   , Dn1 
	.byte	W96
@ 012   ----------------------------------------
mus_flashing_lights_4_012:
	.byte		N12   , Bn0 , v052
	.byte		N12   , Bn1 
	.byte	W24
	.byte		        Bn0 
	.byte		N12   , Bn1 
	.byte	W24
	.byte		        Bn0 
	.byte		N12   , Bn1 
	.byte	W18
	.byte		N06   , Fs1 
	.byte		N06   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , An2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
mus_flashing_lights_4_013:
	.byte		N12   , Bn1 , v052
	.byte		N12   , Bn2 
	.byte	W24
	.byte		        Bn0 
	.byte		N12   , Bn1 
	.byte	W24
	.byte		        Bn0 
	.byte		N12   , Bn1 
	.byte	W18
	.byte		N06   , Fs1 
	.byte		N06   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , An2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Fs2 
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_4_013
@ 015   ----------------------------------------
mus_flashing_lights_4_015:
	.byte		N12   , Bn1 , v052
	.byte		N12   , Bn2 
	.byte	W24
	.byte		        Bn0 
	.byte	W24
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
	.byte		N96   , Fs1 
	.byte	W96
@ 017   ----------------------------------------
	.byte		        Dn1 
	.byte	W96
@ 018   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 019   ----------------------------------------
	.byte		N48   , Dn1 
	.byte	W96
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_4_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_4_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_4_013
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_4_015
	.byte	GOTO
	 .word	mus_flashing_lights_4_B1
mus_flashing_lights_4_B2:
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_flashing_lights_5:
	.byte		VOL   , 127*mus_flashing_lights_mvl/mxv
	.byte	KEYSH , mus_flashing_lights_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 81
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
mus_flashing_lights_5_B1:
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
mus_flashing_lights_5_012:
	.byte		N09   , Bn1 , v052
	.byte		N09   , Dn2 
	.byte		N09   , Fs2 
	.byte		N09   , An3 
	.byte	W12
	.byte		N03   , Bn1 
	.byte		N03   , Dn2 
	.byte		N03   , Fs2 
	.byte		N03   , An3 
	.byte	W06
	.byte		        Bn1 
	.byte		N03   , Dn2 
	.byte		N03   , Fs2 
	.byte		N03   , An3 
	.byte	W06
	.byte		N09   , Bn1 
	.byte		N09   , Dn2 
	.byte		N09   , Fs2 
	.byte		N09   , An3 
	.byte	W12
	.byte		        Bn1 
	.byte		N09   , Dn2 
	.byte		N09   , Fs2 
	.byte		N09   , An3 
	.byte	W12
	.byte		N03   , Bn1 
	.byte		N03   , Dn2 
	.byte		N03   , Fs2 
	.byte		N03   , An3 
	.byte	W06
	.byte		        Bn1 
	.byte		N03   , Dn2 
	.byte		N03   , Fs2 
	.byte		N03   , An3 
	.byte	W06
	.byte		N09   , Bn1 
	.byte		N09   , Dn2 
	.byte		N09   , Fs2 
	.byte		N09   , Cs4 
	.byte	W12
	.byte		N03   , Bn1 
	.byte		N03   , Dn2 
	.byte		N03   , Fs2 
	.byte		N03   , Cs4 
	.byte	W06
	.byte		N09   , Bn1 
	.byte		N09   , Dn2 
	.byte		N09   , Fs2 
	.byte		N09   , Cs4 
	.byte	W12
	.byte		N03   , Bn1 
	.byte		N03   , Dn2 
	.byte		N03   , Fs2 
	.byte		N03   , Cs4 
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
mus_flashing_lights_5_013:
	.byte		N09   , Bn1 , v052
	.byte		N09   , Dn2 
	.byte		N09   , Fs2 
	.byte		N09   , An3 
	.byte	W12
	.byte		N03   , Bn1 
	.byte		N03   , Dn2 
	.byte		N03   , Fs2 
	.byte		N03   , An3 
	.byte	W06
	.byte		        Bn1 
	.byte		N03   , Dn2 
	.byte		N03   , Fs2 
	.byte		N03   , An3 
	.byte	W06
	.byte		N09   , Bn1 
	.byte		N09   , Dn2 
	.byte		N09   , Fs2 
	.byte		N09   , An3 
	.byte	W12
	.byte		        Bn1 
	.byte		N09   , Dn2 
	.byte		N09   , Fs2 
	.byte		N09   , An3 
	.byte	W12
	.byte		N03   , Bn1 
	.byte		N03   , Dn2 
	.byte		N03   , Fs2 
	.byte		N03   , An3 
	.byte	W06
	.byte		        Bn1 
	.byte		N03   , Dn2 
	.byte		N03   , Fs2 
	.byte		N03   , An3 
	.byte	W06
	.byte		N09   , Bn1 
	.byte		N09   , Dn2 
	.byte		N09   , Fs2 
	.byte		N09   , Bn3 
	.byte	W12
	.byte		N03   , Bn1 
	.byte		N03   , Dn2 
	.byte		N03   , Fs2 
	.byte		N03   , Bn3 
	.byte	W06
	.byte		N09   , Bn1 
	.byte		N09   , Dn2 
	.byte		N09   , Fs2 
	.byte		N09   , Cs4 
	.byte	W12
	.byte		N03   , Bn1 
	.byte		N03   , Dn2 
	.byte		N03   , Fs2 
	.byte		N03   , Cs4 
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_5_013
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_5_013
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_5_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_5_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_5_013
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_5_013
	.byte	GOTO
	 .word	mus_flashing_lights_5_B1
mus_flashing_lights_5_B2:
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.10) ****************@

mus_flashing_lights_6:
	.byte		VOL   , 127*mus_flashing_lights_mvl/mxv
	.byte	KEYSH , mus_flashing_lights_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
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
mus_flashing_lights_6_B1:
@ 008   ----------------------------------------
mus_flashing_lights_6_008:
	.byte		N06   , Cn1 , v096
	.byte	W24
	.byte		N06   
	.byte		N06   , Ds1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		N06   
	.byte		N06   , Ds1 
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_6_008
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_6_008
@ 011   ----------------------------------------
mus_flashing_lights_6_011:
	.byte		N06   , Cn1 , v096
	.byte	W24
	.byte		N06   
	.byte		N06   , Ds1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Ds1 
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_6_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_6_008
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_6_008
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_6_008
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_6_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_6_008
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_6_008
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_6_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_6_008
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_6_008
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_6_008
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_flashing_lights_6_008
	.byte	GOTO
	 .word	mus_flashing_lights_6_B1
mus_flashing_lights_6_B2:
@ 024   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_flashing_lights:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_flashing_lights_pri	@ Priority
	.byte	mus_flashing_lights_rev	@ Reverb.

	.word	mus_flashing_lights_grp

	.word	mus_flashing_lights_1
	.word	mus_flashing_lights_2
	.word	mus_flashing_lights_3
	.word	mus_flashing_lights_4
	.word	mus_flashing_lights_5
	.word	mus_flashing_lights_6

	.end
