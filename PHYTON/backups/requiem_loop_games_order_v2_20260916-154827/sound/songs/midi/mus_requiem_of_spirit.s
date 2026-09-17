	.include "MPlayDef.s"

	.equ	mus_requiem_of_spirit_grp, voicegroup_brothers
	.equ	mus_requiem_of_spirit_pri, 0
	.equ	mus_requiem_of_spirit_rev, reverb_set+18
	.equ	mus_requiem_of_spirit_mvl, 90
	.equ	mus_requiem_of_spirit_key, 0
	.equ	mus_requiem_of_spirit_tbs, 1
	.equ	mus_requiem_of_spirit_exg, 0
	.equ	mus_requiem_of_spirit_cmp, 1

	.section .rodata
	.global	mus_requiem_of_spirit
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_requiem_of_spirit_1:
	.byte	KEYSH , mus_requiem_of_spirit_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 100*mus_requiem_of_spirit_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 86*mus_requiem_of_spirit_mvl/mxv
	.byte		PAN   , c_v-10
	.byte		TIE   , Gn1 , v060
	.byte	W48
@ 002   ----------------------------------------
	.byte	W48
@ 003   ----------------------------------------
	.byte	TEMPO , 80*mus_requiem_of_spirit_tbs/2
	.byte	W48
	.byte		EOT   
@ 004   ----------------------------------------
	.byte		N48   , An1 , v064
	.byte	W48
@ 005   ----------------------------------------
	.byte		        As1 
	.byte	W48
@ 006   ----------------------------------------
	.byte		        An1 , v060
	.byte	W48
@ 007   ----------------------------------------
	.byte		        Gn1 
	.byte	W48
@ 008   ----------------------------------------
	.byte		        An1 , v064
	.byte	W48
@ 009   ----------------------------------------
	.byte		        As1 
	.byte	W48
@ 010   ----------------------------------------
	.byte		        An1 , v060
	.byte	W48
@ 011   ----------------------------------------
	.byte		N96   , As1 , v064
	.byte	W48
@ 012   ----------------------------------------
	.byte	W48
@ 013   ----------------------------------------
	.byte		TIE   , Gn1 
	.byte	W48
@ 014   ----------------------------------------
	.byte	W48
@ 015   ----------------------------------------
	.byte	W48
	.byte		EOT   
@ 016   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_requiem_of_spirit_2:
	.byte	KEYSH , mus_requiem_of_spirit_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 96*mus_requiem_of_spirit_mvl/mxv
	.byte		PAN   , c_v+16
	.byte	W48
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte		N24   , Gn3 , v064
	.byte	W24
	.byte		N12   , As3 , v072
	.byte	W12
	.byte		        Gn3 , v064
	.byte	W12
@ 003   ----------------------------------------
	.byte		N24   , Dn4 , v076
	.byte	W24
	.byte		        As3 , v064
	.byte	W24
@ 004   ----------------------------------------
	.byte		N96   , Gn3 
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
	.byte	W48
@ 008   ----------------------------------------
	.byte		N48   , Dn4 
	.byte	W48
@ 009   ----------------------------------------
	.byte		N12   , Ds4 , v068
	.byte	W12
	.byte		        Fn4 , v072
	.byte	W12
	.byte		        Ds4 , v068
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 010   ----------------------------------------
	.byte		N24   , Gn3 , v064
	.byte		N24   , Gn4 , v072
	.byte	W24
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gn3 , v068
	.byte		N12   , Gn4 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N24   , Dn4 , v076
	.byte		N24   , Dn5 , v080
	.byte	W24
	.byte		        As3 , v064
	.byte		N24   , As4 , v068
	.byte	W24
@ 012   ----------------------------------------
	.byte		TIE   , Gn3 
	.byte		TIE   , Gn4 , v064
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
@ 014   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gn3 
	.byte		        Gn4 
@ 015   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_requiem_of_spirit_3:
	.byte	KEYSH , mus_requiem_of_spirit_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 78*mus_requiem_of_spirit_mvl/mxv
	.byte		PAN   , c_v-18
	.byte	W48
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte		N48   , Gn2 , v052
	.byte		N48   , As2 
	.byte	W48
@ 003   ----------------------------------------
	.byte		        An2 , v056
	.byte		N48   , Cn3 
	.byte	W48
@ 004   ----------------------------------------
	.byte		        As2 
	.byte		N48   , Dn3 
	.byte	W48
@ 005   ----------------------------------------
	.byte		        An2 , v052
	.byte		N12   , Ds3 , v056
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 , v048
	.byte	W12
	.byte		        Ds3 , v060
	.byte	W12
@ 006   ----------------------------------------
	.byte		N48   , Gn2 , v052
	.byte		N48   , Dn3 , v056
	.byte		N24   , Gn3 , v052
	.byte	W24
	.byte		N12   , As3 , v056
	.byte	W12
	.byte		        Gn3 , v052
	.byte	W12
@ 007   ----------------------------------------
	.byte		N48   , An2 , v056
	.byte		N24   , Dn4 , v060
	.byte	W24
	.byte		        Gn2 , v056
	.byte		N24   , As3 , v052
	.byte	W24
@ 008   ----------------------------------------
	.byte		N48   , As2 , v056
	.byte		N72   , Dn3 , v060
	.byte		N96   , Gn3 , v052
	.byte	W48
@ 009   ----------------------------------------
	.byte		N48   , An2 , v056
	.byte	W24
	.byte		N24   , As2 , v052
	.byte	W24
@ 010   ----------------------------------------
	.byte		N96   , Gn2 
	.byte		N24   , Gn3 , v060
	.byte	W24
	.byte		N12   , Fn3 , v052
	.byte	W12
	.byte		        Ds3 , v056
	.byte	W12
@ 011   ----------------------------------------
	.byte		N24   , Ds3 , v052
	.byte	W24
	.byte		        Ds3 , v056
	.byte		TIE   , Dn4 
	.byte	W24
@ 012   ----------------------------------------
	.byte		        Gn2 , v052
	.byte		N48   , An2 , v056
	.byte	W48
@ 013   ----------------------------------------
	.byte		N96   , Bn2 
	.byte	W48
@ 014   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gn2 
	.byte		        Dn4 
@ 015   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_requiem_of_spirit:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_requiem_of_spirit_pri	@ Priority
	.byte	mus_requiem_of_spirit_rev	@ Reverb.

	.word	mus_requiem_of_spirit_grp

	.word	mus_requiem_of_spirit_1
	.word	mus_requiem_of_spirit_2
	.word	mus_requiem_of_spirit_3

	.end
