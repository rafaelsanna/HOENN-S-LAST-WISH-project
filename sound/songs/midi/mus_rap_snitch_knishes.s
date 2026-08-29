	.include "MPlayDef.s"

	.equ	mus_rap_snitch_knishes_grp, voicegroup_rap_snitch_knishes
	.equ	mus_rap_snitch_knishes_pri, 0
	.equ	mus_rap_snitch_knishes_rev, reverb_set+50
	.equ	mus_rap_snitch_knishes_mvl, 100
	.equ	mus_rap_snitch_knishes_key, 0
	.equ	mus_rap_snitch_knishes_tbs, 1
	.equ	mus_rap_snitch_knishes_exg, 1
	.equ	mus_rap_snitch_knishes_cmp, 1

	.section .rodata
	.global	mus_rap_snitch_knishes
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_rap_snitch_knishes_1:
	.byte		VOL   , 127*mus_rap_snitch_knishes_mvl/mxv
	.byte	KEYSH , mus_rap_snitch_knishes_key+0
mus_rap_snitch_knishes_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 95*mus_rap_snitch_knishes_tbs/2
	.byte		VOICE , 1
	.byte		N24   , Gn1 , v040
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte		N24   , Fs3 
	.byte	W36
	.byte		N60   , Gn1 
	.byte		N60   , Bn2 
	.byte		N60   , Dn3 
	.byte		N60   , Fs3 
	.byte	W60
@ 001   ----------------------------------------
	.byte	W06
	.byte		N06   , Fs1 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W24
	.byte		        Fs1 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W24
	.byte		        Fs1 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W24
	.byte		        Fs1 
	.byte		N06   , Cs3 
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W18
@ 002   ----------------------------------------
mus_rap_snitch_knishes_1_002:
	.byte		N96   , Bn0 , v040
	.byte		N48   , Bn1 
	.byte		N48   , Ds2 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Bn1 
	.byte		N48   , Bn2 
	.byte		N48   , Ds3 
	.byte		N48   , Fs3 
	.byte	W48
	.byte	PEND
@ 003   ----------------------------------------
	.byte		N72   , Dn1 
	.byte		N48   , An1 
	.byte		N48   , Dn2 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		N24   , An2 
	.byte		N24   , Dn3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N06   , Dn1 
	.byte		N24   , An1 
	.byte		N24   , Dn2 
	.byte		N24   , Fs2 
	.byte	W24
@ 004   ----------------------------------------
	.byte		N36   , Gn1 
	.byte		N36   , Bn2 
	.byte		N36   , Dn3 
	.byte		N36   , Fs3 
	.byte	W36
	.byte		N06   , Gn1 
	.byte		N60   , Bn2 
	.byte		N60   , Dn3 
	.byte		N60   , Fs3 
	.byte	W60
@ 005   ----------------------------------------
	.byte		N72   , Fs1 
	.byte		N72   , Cs3 
	.byte		N72   , En3 
	.byte		N72   , An3 
	.byte	W72
	.byte		N24   , Fs1 
	.byte		N24   , Cs3 
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W24
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rap_snitch_knishes_1_002
@ 007   ----------------------------------------
	.byte		N96   , Dn2 , v040
	.byte		N96   , An2 
	.byte		N96   , Dn3 
	.byte		N96   , Fs3 
	.byte	W96
	.byte	GOTO
	 .word	mus_rap_snitch_knishes_1_B1
mus_rap_snitch_knishes_1_B2:
@ 008   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_rap_snitch_knishes_2:
	.byte		VOL   , 127*mus_rap_snitch_knishes_mvl/mxv
	.byte	KEYSH , mus_rap_snitch_knishes_key+0
mus_rap_snitch_knishes_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 32
	.byte		N06   , Gn0 , v052
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W24
	.byte		        En1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N12   , Gn0 
	.byte	W24
@ 001   ----------------------------------------
mus_rap_snitch_knishes_2_001:
	.byte		N06   , Fs1 , v052
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Fs0 
	.byte	W30
	.byte		N06   
	.byte	W06
	.byte		        An0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_rap_snitch_knishes_2_002:
	.byte		N06   , Bn0 , v052
	.byte	W18
	.byte		        Fs1 
	.byte	W18
	.byte		N42   , Bn1 
	.byte	W48
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        Dn1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Bn0 
	.byte	W12
	.byte		        An0 
	.byte	W06
	.byte		        Dn1 
	.byte	W30
	.byte		        An0 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Gn0 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W24
	.byte		        En1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N12   , Gn0 
	.byte	W24
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_rap_snitch_knishes_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rap_snitch_knishes_2_002
@ 007   ----------------------------------------
	.byte		N06   , Dn1 , v052
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Bn0 
	.byte	W12
	.byte		        An0 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cs1 
	.byte	W12
	.byte		        Bn0 
	.byte	W06
	.byte		        En1 
	.byte	W12
	.byte	GOTO
	 .word	mus_rap_snitch_knishes_2_B1
mus_rap_snitch_knishes_2_B2:
@ 008   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_rap_snitch_knishes_3:
	.byte		VOL   , 127*mus_rap_snitch_knishes_mvl/mxv
	.byte	KEYSH , mus_rap_snitch_knishes_key+0
mus_rap_snitch_knishes_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 27
	.byte		N12   , Bn4 , v040
	.byte	W12
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 001   ----------------------------------------
	.byte		N09   , Fs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N03   , Ds4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		N06   , An3 
	.byte	W06
	.byte		N03   , Cs4 
	.byte	W03
	.byte		N16   , Bn3 
	.byte	W15
	.byte		N07   , An3 
	.byte	W06
	.byte		N18   , Bn3 
	.byte	W18
@ 002   ----------------------------------------
	.byte		N07   , Ds4 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N30   , Ds4 
	.byte	W30
	.byte		N09   
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N30   , Ds4 
	.byte	W30
@ 003   ----------------------------------------
	.byte		N03   , Cs4 
	.byte	W03
	.byte		N06   , Dn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn4 
	.byte		N06   , Fs4 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 004   ----------------------------------------
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N03   , En4 
	.byte	W03
	.byte		N09   , Fs4 
	.byte	W09
	.byte		N06   , En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 005   ----------------------------------------
	.byte		N09   , Fs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N03   , Dn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N06   , An3 
	.byte	W06
	.byte		N18   , Bn3 
	.byte	W18
@ 006   ----------------------------------------
	.byte		N06   , Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W06
	.byte		N30   , Ds4 
	.byte	W30
	.byte		N03   , Cs4 
	.byte	W03
	.byte		N06   , Ds4 
	.byte	W09
	.byte		        Fs4 
	.byte	W06
	.byte		N30   , Ds4 
	.byte	W30
@ 007   ----------------------------------------
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Gs4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N24   , Bn3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte	GOTO
	 .word	mus_rap_snitch_knishes_3_B1
mus_rap_snitch_knishes_3_B2:
@ 008   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_rap_snitch_knishes_4:
	.byte		VOL   , 127*mus_rap_snitch_knishes_mvl/mxv
	.byte	KEYSH , mus_rap_snitch_knishes_key+0
mus_rap_snitch_knishes_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 30
	.byte		N12   , Bn4 , v036
	.byte	W12
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 001   ----------------------------------------
	.byte		N09   , Fs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N03   , Ds4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		N06   , An3 
	.byte	W06
	.byte		N03   , Cs4 
	.byte	W03
	.byte		N16   , Bn3 
	.byte	W15
	.byte		N07   , An3 
	.byte	W06
	.byte		N18   , Bn3 
	.byte	W18
@ 002   ----------------------------------------
	.byte		N07   , Ds4 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N30   , Ds4 
	.byte	W30
	.byte		N09   
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N30   , Ds4 
	.byte	W30
@ 003   ----------------------------------------
	.byte		N03   , Cs4 
	.byte	W03
	.byte		N06   , Dn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn4 
	.byte		N06   , Fs4 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 004   ----------------------------------------
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N03   , En4 
	.byte	W03
	.byte		N09   , Fs4 
	.byte	W09
	.byte		N06   , En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 005   ----------------------------------------
	.byte		N09   , Fs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N03   , Dn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N06   , An3 
	.byte	W06
	.byte		N18   , Bn3 
	.byte	W18
@ 006   ----------------------------------------
	.byte		N06   , Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W06
	.byte		N30   , Ds4 
	.byte	W30
	.byte		N03   , Cs4 
	.byte	W03
	.byte		N06   , Ds4 
	.byte	W09
	.byte		        Fs4 
	.byte	W06
	.byte		N30   , Ds4 
	.byte	W30
@ 007   ----------------------------------------
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Gs4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N24   , Bn3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte	GOTO
	 .word	mus_rap_snitch_knishes_4_B1
mus_rap_snitch_knishes_4_B2:
@ 008   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_rap_snitch_knishes_5:
	.byte		VOL   , 127*mus_rap_snitch_knishes_mvl/mxv
	.byte	KEYSH , mus_rap_snitch_knishes_key+0
mus_rap_snitch_knishes_5_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		N06   , Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 001   ----------------------------------------
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , As1 
	.byte	W12
	.byte		        Dn1 
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 002   ----------------------------------------
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 003   ----------------------------------------
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , As1 
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte		N06   , Cs2 
	.byte		N06   , An2 
	.byte	W06
@ 004   ----------------------------------------
mus_rap_snitch_knishes_5_004:
	.byte		N06   , Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Gs1 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Fs1 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , Gs1 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Gs1 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , Gs1 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Gs1 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , Gs1 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Fs1 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , As1 
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn1 
	.byte		N06   , Gs1 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rap_snitch_knishes_5_004
@ 007   ----------------------------------------
	.byte		N06   , Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Gs1 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , Gs1 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Fs1 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Bn0 , v012
	.byte		N06   , Bn0 , v100
	.byte		N06   , Cn1 
	.byte		N06   
	.byte		N06   , Gs1 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn1 
	.byte		N06   , Gs1 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte	GOTO
	 .word	mus_rap_snitch_knishes_5_B1
mus_rap_snitch_knishes_5_B2:
@ 008   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_rap_snitch_knishes:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_rap_snitch_knishes_pri	@ Priority
	.byte	mus_rap_snitch_knishes_rev	@ Reverb.

	.word	mus_rap_snitch_knishes_grp

	.word	mus_rap_snitch_knishes_1
	.word	mus_rap_snitch_knishes_2
	.word	mus_rap_snitch_knishes_3
	.word	mus_rap_snitch_knishes_4
	.word	mus_rap_snitch_knishes_5

	.end
