	.include "MPlayDef.s"

	.equ	mus_the_world_grp, voicegroup_hlw_rock_metal
	.equ	mus_the_world_pri, 0
	.equ	mus_the_world_rev, reverb_set+12
	.equ	mus_the_world_mvl, 90
	.equ	mus_the_world_key, 0
	.equ	mus_the_world_tbs, 1
	.equ	mus_the_world_exg, 1
	.equ	mus_the_world_cmp, 1

	.section .rodata
	.global	mus_the_world
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_the_world_1:
	.byte		VOL   , 127*mus_the_world_mvl/mxv
	.byte	KEYSH , mus_the_world_key+0
mus_the_world_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 119*mus_the_world_tbs/2
	.byte		VOICE , 1
	.byte	W30
	.byte		N06   , Bn3 , v060
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N30   , Fs4 
	.byte	W30
	.byte		N06   , An4 
	.byte	W06
	.byte		N12   , Gn4 
	.byte	W12
@ 001   ----------------------------------------
	.byte		N30   , Fs4 
	.byte	W30
	.byte		N06   , En4 
	.byte	W06
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N30   , Dn4 
	.byte	W30
	.byte		N06   , En4 
	.byte	W06
	.byte		N24   , Fs4 
	.byte	W12
@ 002   ----------------------------------------
	.byte	W12
	.byte		N18   , En4 
	.byte	W18
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N30   , Fs4 
	.byte	W30
	.byte		N18   , Gn4 
	.byte	W18
@ 003   ----------------------------------------
	.byte		        Fs4 
	.byte	W18
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N42   , Dn4 
	.byte	W42
	.byte		N06   , En4 
	.byte	W06
@ 004   ----------------------------------------
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N18   , Fs4 
	.byte	W18
	.byte		        Gn4 
	.byte	W18
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
@ 005   ----------------------------------------
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W18
	.byte		N12   , Fs4 
	.byte	W06
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N30   , En4 
	.byte	W18
@ 007   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N48   , Bn3 
	.byte	W48
@ 008   ----------------------------------------
	.byte		        Fs3 
	.byte	W36
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N18   , Bn3 
	.byte	W18
	.byte		        An3 
	.byte	W18
	.byte		N48   , Gn3 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W60
	.byte		N12   , Fs4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N42   , En4 
	.byte	W06
	.byte		N36   , En3 
	.byte	W36
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 011   ----------------------------------------
	.byte		N36   , Bn3 
	.byte	W36
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N54   , Dn4 
	.byte	W30
	.byte		N24   , Dn3 
	.byte	W24
@ 012   ----------------------------------------
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N12   , En4 
	.byte	W12
	.byte		N48   , Cs4 
	.byte	W48
@ 013   ----------------------------------------
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte	W24
	.byte		N18   , Dn3 
	.byte	W24
@ 014   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   , Fs4 
	.byte	W24
	.byte		N18   , Cs3 
	.byte	W24
@ 015   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W48
	.byte		        Fs4 
	.byte	W24
@ 016   ----------------------------------------
	.byte		        En4 
	.byte	W24
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N42   , An4 
	.byte	W42
	.byte		N12   , Fs4 
	.byte	W12
@ 017   ----------------------------------------
	.byte		        An4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N06   , En4 
	.byte	W06
	.byte		N54   , Cs4 
	.byte	W54
@ 018   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N06   , En4 
	.byte	W06
	.byte		N12   , Fs4 
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W12
@ 019   ----------------------------------------
	.byte		        Fs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W54
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
@ 020   ----------------------------------------
	.byte		N30   , Fs4 
	.byte	W30
	.byte		N06   , An4 
	.byte	W06
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N30   , Fs4 
	.byte	W30
	.byte		N06   , En4 
	.byte	W06
	.byte		N12   , Fs4 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N30   , Dn4 
	.byte	W30
	.byte		N06   , En4 
	.byte	W06
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N18   , En4 
	.byte	W18
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
@ 022   ----------------------------------------
	.byte		N30   , Fs4 
	.byte	W30
	.byte		N18   , Gn4 
	.byte	W18
	.byte		        Fs4 
	.byte	W18
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
@ 023   ----------------------------------------
	.byte		N42   , Dn4 
	.byte	W42
	.byte		N06   , En4 
	.byte	W06
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
@ 024   ----------------------------------------
	.byte		N42   , Bn3 
	.byte	W42
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N30   , En4 
	.byte	W30
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
@ 025   ----------------------------------------
	.byte		N30   , Bn3 
	.byte	W30
	.byte		N18   , Dn4 
	.byte	W18
	.byte		N36   , En4 
	.byte	W36
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 026   ----------------------------------------
	.byte		N30   , Bn3 
	.byte	W30
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N48   , En4 
	.byte	W48
@ 027   ----------------------------------------
	.byte	W24
	.byte		N12   , An4 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N84   , Fs4 
	.byte	W36
@ 028   ----------------------------------------
	.byte	W48
	.byte		N42   , Dn4 
	.byte	W42
	.byte		N06   , En4 
	.byte	W06
@ 029   ----------------------------------------
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , En4 
	.byte	W18
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N18   , Bn3 
	.byte	W18
	.byte		        An3 
	.byte	W18
	.byte		TIE   , Dn4 
	.byte	W12
@ 030   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	GOTO
	 .word	mus_the_world_1_B1
mus_the_world_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_the_world_2:
	.byte		VOL   , 127*mus_the_world_mvl/mxv
	.byte	KEYSH , mus_the_world_key+0
mus_the_world_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 31
	.byte	W36
	.byte		N06   , Dn3 , v044
	.byte	W12
	.byte		N12   , Bn1 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Dn2 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Gn3 
	.byte	W12
@ 001   ----------------------------------------
	.byte		        An1 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An1 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N06   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Fs3 
	.byte	W12
@ 002   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , An3 
	.byte	W24
	.byte		        As1 
	.byte		N06   , Dn3 
	.byte	W12
	.byte		N12   , Bn1 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Dn2 
	.byte		N06   , Fs3 
	.byte	W24
@ 003   ----------------------------------------
	.byte		N12   , An1 
	.byte		N12   , Fs3 
	.byte	W24
	.byte		N06   , An1 
	.byte		N06   , En3 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W36
	.byte		N06   , Dn2 
	.byte		N06   , Dn3 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs3 
	.byte	W36
	.byte		N06   , Bn1 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N06   
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , En2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N12   
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N06   , An2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W36
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Fs3 
	.byte	W48
@ 007   ----------------------------------------
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Fs3 
	.byte	W48
@ 008   ----------------------------------------
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W48
	.byte		N06   , Bn1 
	.byte		N06   , Fs3 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Gn3 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W60
	.byte		N06   , Fs2 
	.byte	W36
@ 010   ----------------------------------------
	.byte		N12   , Bn1 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Dn2 
	.byte		N06   , En3 
	.byte	W48
	.byte		N12   , Bn2 
	.byte	W12
@ 011   ----------------------------------------
	.byte		        Gn3 
	.byte	W36
	.byte		        Dn2 
	.byte		N06   , En3 
	.byte	W12
	.byte		N12   , Dn2 
	.byte		N12   , Fs3 
	.byte	W48
@ 012   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W48
@ 013   ----------------------------------------
	.byte		N06   , Fs2 
	.byte		N12   , Gn3 
	.byte	W24
	.byte		N06   , Fs2 
	.byte		N12   , An3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte	W24
@ 014   ----------------------------------------
	.byte	W24
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte	W24
	.byte		        An1 
	.byte		N12   , Fs3 
	.byte	W24
	.byte		        En2 
	.byte		N12   , Cs3 
	.byte	W24
@ 015   ----------------------------------------
	.byte	W24
	.byte		        En2 
	.byte		N12   , Cs3 
	.byte	W36
	.byte		        Dn2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Bn2 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        En3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte	W24
	.byte		        Dn2 
	.byte		N12   , Fs3 
	.byte	W12
@ 017   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N06   , En3 
	.byte	W60
@ 018   ----------------------------------------
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte		N06   , En3 
	.byte	W60
@ 019   ----------------------------------------
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W24
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N06   , En2 
	.byte	W36
@ 020   ----------------------------------------
	.byte		N12   , Bn1 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N12   , Bn1 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        An1 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        An1 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N12   , An1 
	.byte		N12   , Fs3 
	.byte	W12
@ 021   ----------------------------------------
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As1 
	.byte		N12   , An3 
	.byte	W24
	.byte		        As1 
	.byte		N06   , Dn3 
	.byte	W12
@ 022   ----------------------------------------
	.byte		N12   , Bn1 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N12   , Bn1 
	.byte		N06   , Fs3 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , Fs3 
	.byte	W24
	.byte		N06   , An1 
	.byte		N06   , En3 
	.byte	W12
	.byte		N12   , An1 
	.byte		N12   , En3 
	.byte	W12
@ 023   ----------------------------------------
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W36
	.byte		N06   , Dn2 
	.byte		N06   , Dn3 
	.byte	W12
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Fs3 
	.byte	W36
@ 024   ----------------------------------------
	.byte		        Bn2 
	.byte		N12   , Fs3 
	.byte	W48
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W36
	.byte		        Cs3 
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Bn1 
	.byte		N12   , Fs3 
	.byte	W48
	.byte		        An1 
	.byte		N12   , An3 
	.byte	W36
	.byte		N06   , Bn1 
	.byte		N06   , Bn2 
	.byte	W12
@ 026   ----------------------------------------
	.byte		N12   
	.byte		N12   , Fs3 
	.byte	W48
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W48
@ 027   ----------------------------------------
	.byte	W48
	.byte		        Bn1 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte		N12   , Fs3 
	.byte	W36
@ 028   ----------------------------------------
	.byte		        An1 
	.byte		N12   , Fs3 
	.byte	W48
	.byte		        Dn3 
	.byte		N12   , An3 
	.byte	W36
	.byte		N06   , An1 
	.byte		N06   , Dn3 
	.byte	W12
@ 029   ----------------------------------------
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        As1 
	.byte		N12   , An3 
	.byte	W36
	.byte		N06   , Bn1 
	.byte		N06   , Bn2 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 030   ----------------------------------------
	.byte	W90
	.byte	GOTO
	 .word	mus_the_world_2_B1
mus_the_world_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_the_world_3:
	.byte		VOL   , 127*mus_the_world_mvl/mxv
	.byte	KEYSH , mus_the_world_key+0
mus_the_world_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		N48   , Fs1 , v060
	.byte	W48
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
@ 001   ----------------------------------------
	.byte		N18   , An1 
	.byte	W18
	.byte		N06   , En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N18   , Gn1 
	.byte	W18
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 002   ----------------------------------------
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N12   , As0 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
@ 003   ----------------------------------------
	.byte		N18   , An1 
	.byte	W18
	.byte		N06   , En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
@ 004   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N18   , Bn1 
	.byte	W18
	.byte		        Cs1 
	.byte	W18
	.byte		N06   , Bn0 
	.byte	W06
	.byte		        Fs1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        En2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N24   
	.byte	W18
@ 006   ----------------------------------------
	.byte	W06
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N18   , Dn1 
	.byte	W06
@ 007   ----------------------------------------
	.byte	W12
	.byte		N12   , Cs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		N66   , Fs1 
	.byte	W54
@ 008   ----------------------------------------
	.byte	W12
	.byte		N12   , As1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N06   , Bn0 
	.byte	W06
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		N48   , Dn1 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W48
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W36
@ 010   ----------------------------------------
	.byte		N12   , Bn1 
	.byte	W24
	.byte		        Fs1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
@ 011   ----------------------------------------
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W24
	.byte		N12   
	.byte	W12
@ 012   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N78   , Fs1 
	.byte	W48
@ 013   ----------------------------------------
	.byte	W30
	.byte		N06   , En1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N96   , Gn1 
	.byte	W48
@ 014   ----------------------------------------
	.byte	W42
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N24   , An1 
	.byte	W24
	.byte		N18   , En2 
	.byte	W18
	.byte		N30   , An1 
	.byte	W06
@ 015   ----------------------------------------
	.byte	W24
	.byte		N24   , En2 
	.byte	W24
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 017   ----------------------------------------
	.byte		        Dn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W18
	.byte		N18   , Fs1 
	.byte	W18
	.byte		N06   , Fn1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N06   , Fn1 
	.byte	W06
@ 018   ----------------------------------------
	.byte		N48   , Fs1 
	.byte	W54
	.byte		N12   
	.byte	W24
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W06
@ 019   ----------------------------------------
	.byte	W06
	.byte		N84   , Fs1 
	.byte	W66
	.byte		N06   , Cs2 
	.byte	W24
@ 020   ----------------------------------------
mus_the_world_3_020:
	.byte		N12   , Bn0 , v060
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N18   , Bn1 
	.byte	W18
	.byte		N06   , Dn2 
	.byte	W06
	.byte		N18   , An1 
	.byte	W18
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte		N18   , Gn1 
	.byte	W18
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N12   , As0 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_3_020
@ 023   ----------------------------------------
	.byte		N12   , Gn1 , v060
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N18   , Bn1 
	.byte	W18
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
@ 024   ----------------------------------------
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N18   , Fs1 
	.byte	W18
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 025   ----------------------------------------
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
@ 026   ----------------------------------------
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N48   , Fs1 
	.byte	W48
@ 027   ----------------------------------------
	.byte	W48
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 028   ----------------------------------------
	.byte		N18   , An1 
	.byte	W18
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N06   , An1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 029   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		N42   , Bn0 
	.byte	W42
	.byte		N18   , An1 
	.byte	W18
	.byte		TIE   , Gn1 
	.byte	W12
@ 030   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	GOTO
	 .word	mus_the_world_3_B1
mus_the_world_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_the_world_4:
	.byte		VOL   , 127*mus_the_world_mvl/mxv
	.byte	KEYSH , mus_the_world_key+0
mus_the_world_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W36
	.byte		N03   , Cn1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        En1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        Cn1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
@ 001   ----------------------------------------
mus_the_world_4_001:
	.byte		N03   , Fs1 , v028
	.byte	W12
	.byte		        En1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        Cn1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        En1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        Cn1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_the_world_4_002:
	.byte		N03   , Cn1 , v048
	.byte		N03   , Fs1 , v028
	.byte	W12
	.byte		        En1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        Cn1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        En1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        Cn1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_001
@ 004   ----------------------------------------
mus_the_world_4_004:
	.byte		N03   , Cn1 , v048
	.byte		N03   , Fs1 , v028
	.byte	W12
	.byte		        En1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        En1 , v052
	.byte		N03   , Fs1 , v028
	.byte	W06
	.byte		        En1 , v052
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        En1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        Cn1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_001
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_the_world_4_001
@ 030   ----------------------------------------
	.byte		N03   , Cn1 , v048
	.byte		N03   , Fs1 , v028
	.byte	W12
	.byte		        En1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        Cn1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        En1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        Cn1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W06
	.byte	GOTO
	 .word	mus_the_world_4_B1
mus_the_world_4_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_the_world:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_the_world_pri	@ Priority
	.byte	mus_the_world_rev	@ Reverb.

	.word	mus_the_world_grp

	.word	mus_the_world_1
	.word	mus_the_world_2
	.word	mus_the_world_3
	.word	mus_the_world_4

	.end
