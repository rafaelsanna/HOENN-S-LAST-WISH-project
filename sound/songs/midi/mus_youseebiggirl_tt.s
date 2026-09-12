	.include "MPlayDef.s"

	.equ	mus_youseebiggirl_tt_grp, voicegroup_brothers
	.equ	mus_youseebiggirl_tt_pri, 0
	.equ	mus_youseebiggirl_tt_rev, reverb_set+20
	.equ	mus_youseebiggirl_tt_mvl, 90
	.equ	mus_youseebiggirl_tt_key, 0
	.equ	mus_youseebiggirl_tt_tbs, 1
	.equ	mus_youseebiggirl_tt_exg, 0
	.equ	mus_youseebiggirl_tt_cmp, 1

	.section .rodata
	.global	mus_youseebiggirl_tt
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_youseebiggirl_tt_1:
	.byte	KEYSH , mus_youseebiggirl_tt_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 160*mus_youseebiggirl_tt_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 94*mus_youseebiggirl_tt_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N48   , Cn2 , v044
	.byte	W48
	.byte		N48   
	.byte		N18   , Cn3 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N12   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
@ 001   ----------------------------------------
mus_youseebiggirl_tt_1_001:
	.byte		N48   , Cn2 , v044
	.byte		N18   , Cn3 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N12   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		N48   , Cn2 
	.byte		N18   , Cn3 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N12   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
	.byte		N48   , Cn2 
	.byte		N48   , Gn2 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N12   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
@ 003   ----------------------------------------
	.byte		N48   , Cn2 
	.byte		N18   , Cn3 
	.byte		N12   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N12   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
@ 004   ----------------------------------------
	.byte		N48   , Fn1 
	.byte	W48
	.byte		        Cn2 
	.byte		N12   , Cn3 
	.byte		N12   , Ds4 
	.byte	W06
	.byte		N06   , Cn3 
	.byte		N12   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
@ 005   ----------------------------------------
	.byte		N48   , Cn2 
	.byte		N12   , Cn3 
	.byte		N12   , Ds4 
	.byte	W06
	.byte		N06   , Cn3 
	.byte		N12   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N48   , Cn2 
	.byte		N48   , Gs2 
	.byte		N12   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N12   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
@ 006   ----------------------------------------
	.byte		N48   , Gn1 
	.byte		N48   , Gn2 
	.byte		N12   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N12   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
@ 007   ----------------------------------------
	.byte		N48   , Bn1 
	.byte		N12   , Bn2 
	.byte		N12   , Dn4 
	.byte	W06
	.byte		N06   , Bn2 
	.byte		N12   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
@ 008   ----------------------------------------
	.byte		N48   , Cn2 
	.byte	W48
	.byte		N48   
	.byte		N18   , Cn3 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N12   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_001
@ 010   ----------------------------------------
	.byte		N48   , Gs1 , v044
	.byte		N18   , Cn3 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N12   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		N48   , Cn2 
	.byte		N18   , Cn3 
	.byte		N12   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N12   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
@ 011   ----------------------------------------
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
@ 012   ----------------------------------------
	.byte		N48   , Gn1 
	.byte		N48   , Gn2 
	.byte		N12   , Fn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N12   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
@ 013   ----------------------------------------
	.byte		N48   , Bn1 
	.byte		N18   , Bn2 
	.byte		N12   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N12   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N48   , Bn1 
	.byte		N18   , Bn2 
	.byte		N12   , Ds4 
	.byte	W06
	.byte		        Bn2 
	.byte		N12   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
@ 014   ----------------------------------------
	.byte		N48   , As1 
	.byte		N18   , As2 
	.byte		N12   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N12   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
@ 015   ----------------------------------------
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
@ 016   ----------------------------------------
	.byte		N48   , Gs1 
	.byte		N18   , Gs2 
	.byte		N12   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N12   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
@ 017   ----------------------------------------
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
@ 018   ----------------------------------------
mus_youseebiggirl_tt_1_018:
	.byte		N12   , Gn4 , v044
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_youseebiggirl_tt_1_019:
	.byte		N12   , Cn5 , v044
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_youseebiggirl_tt_1_020:
	.byte		N12   , Ds5 , v044
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_youseebiggirl_tt_1_021:
	.byte		N12   , Cn5 , v044
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_youseebiggirl_tt_1_022:
	.byte		N12   , Gn3 , v044
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
mus_youseebiggirl_tt_1_023:
	.byte		N12   , Cn4 , v044
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
mus_youseebiggirl_tt_1_024:
	.byte		N12   , Ds4 , v044
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_youseebiggirl_tt_1_025:
	.byte		N12   , Cn4 , v044
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte		N48   , Cn2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		N48   , Fn3 
	.byte	W24
	.byte		        As2 
	.byte	W24
@ 027   ----------------------------------------
	.byte	W24
	.byte		        Ds2 
	.byte	W48
	.byte		        As2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 028   ----------------------------------------
	.byte		N48   , Gs1 
	.byte		N24   , Cn3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		N48   , Gn3 
	.byte	W48
@ 029   ----------------------------------------
	.byte	W48
	.byte		        Gn2 
	.byte	W48
@ 030   ----------------------------------------
	.byte		        As1 
	.byte		N48   , Gn2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		N48   , Fn3 
	.byte	W48
@ 031   ----------------------------------------
	.byte	W48
	.byte		        Fn2 
	.byte	W24
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 032   ----------------------------------------
	.byte		N48   , Ds2 
	.byte		N48   , Fn2 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		N48   , Cn3 
	.byte	W48
@ 033   ----------------------------------------
	.byte		        Cn2 
	.byte		N48   , Ds2 
	.byte	W48
	.byte		        Dn2 
	.byte		N48   , Gn2 
	.byte		N48   , Ds3 
	.byte	W48
@ 034   ----------------------------------------
	.byte		        Cn2 
	.byte		N48   , Gn2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N48   , As2 
	.byte	W72
@ 035   ----------------------------------------
	.byte	W72
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N48   , Gs1 
	.byte		N24   , As2 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		N48   , Ds2 
	.byte		N48   , As2 
	.byte		N48   , Ds3 
	.byte	W48
@ 037   ----------------------------------------
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N48   , Ds2 
	.byte	W72
@ 038   ----------------------------------------
	.byte		        As1 
	.byte		N48   , Gn2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N48   , As2 
	.byte	W72
@ 039   ----------------------------------------
	.byte	W72
	.byte		N12   , Fn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte	W12
@ 040   ----------------------------------------
	.byte		N48   , Gn1 
	.byte		N24   , Gn2 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Cn2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N48   , Fn2 
	.byte		N48   , Gn2 
	.byte		N48   , Fn3 
	.byte	W48
@ 041   ----------------------------------------
	.byte	W48
	.byte		        As2 
	.byte	W48
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_018
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_019
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_020
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_022
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_023
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_024
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_025
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_018
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_019
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_020
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_021
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_018
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_019
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_020
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_021
@ 058   ----------------------------------------
	.byte		N18   , Cn2 , v044
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Cn2 
	.byte		N12   , Gn4 
	.byte	W04
	.byte		N18   , Gn3 
	.byte	W08
	.byte		N12   , Cn2 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W08
	.byte		N18   , Dn3 
	.byte	W04
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		N06   , Cn2 
	.byte		N48   , Ds3 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Ds5 
	.byte	W12
@ 059   ----------------------------------------
	.byte		N06   , Cn2 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , Cn2 
	.byte		N18   , Ds2 
	.byte		N18   , Ds3 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N18   , Gn2 
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Cn2 
	.byte		N18   , Dn3 
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , Cn2 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W04
	.byte		N18   , As2 
	.byte	W08
	.byte		N12   , Cn2 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W08
	.byte		N18   , Ds3 
	.byte	W04
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
@ 060   ----------------------------------------
	.byte		N18   , As1 
	.byte		N18   , Dn3 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N06   , As1 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W04
	.byte		N18   , Ds3 
	.byte	W08
	.byte		N12   , As1 
	.byte		N12   , Fn4 
	.byte	W08
	.byte		N18   , As2 
	.byte	W04
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N06   , As1 
	.byte		N48   , Fn2 
	.byte		N48   , Fn3 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , As1 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 061   ----------------------------------------
	.byte		N06   , As1 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , As1 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N06   , As1 
	.byte		N24   , Dn3 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , As1 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As1 
	.byte		N24   , Ds3 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Dn5 
	.byte	W12
@ 062   ----------------------------------------
	.byte		N18   , Gs1 
	.byte		N18   , Ds3 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Gs1 
	.byte		N12   , Gn4 
	.byte	W04
	.byte		N18   , Gn3 
	.byte	W08
	.byte		N12   , Gs1 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W08
	.byte		N18   , Dn3 
	.byte	W04
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		N06   , Gs1 
	.byte		N48   , Ds3 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N06   , Gs1 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Ds5 
	.byte	W12
@ 063   ----------------------------------------
	.byte		N06   , Gs1 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , Gs1 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Gs1 
	.byte		N24   , Ds3 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Gs1 
	.byte		N18   , Gn3 
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , Gs1 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W04
	.byte		N18   , Dn3 
	.byte	W08
	.byte		N12   , Gs1 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W08
	.byte		N18   , As2 
	.byte	W04
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
@ 064   ----------------------------------------
	.byte		N18   , Gn1 
	.byte		N48   , Gn2 
	.byte		N23   , Gn3 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N48   , Fn2 
	.byte		N48   , Fn3 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 065   ----------------------------------------
	.byte		N06   , Gn1 
	.byte		N48   , Fn3 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N48   , Dn3 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Dn5 
	.byte	W12
@ 066   ----------------------------------------
	.byte		N18   , Fn1 
	.byte		N12   , Gn3 
	.byte		N24   , Gs3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Fn1 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		N06   , Fn1 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N06   , Fn1 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn1 
	.byte		N24   , Gs3 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Ds5 
	.byte	W12
@ 067   ----------------------------------------
	.byte		N06   , Fn1 
	.byte		N48   , Gs3 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , Fn1 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Fn1 
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , Fn1 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fn1 
	.byte		N24   , Dn3 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Dn5 
	.byte	W12
@ 068   ----------------------------------------
	.byte		N18   , Gn1 
	.byte		N24   , Dn3 
	.byte		N23   , Gn3 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Gn1 
	.byte		N24   , Ds3 
	.byte		N24   , Gs3 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N24   , Ds3 
	.byte		N24   , Gs3 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Gn1 
	.byte		N24   , Dn3 
	.byte		N12   , Gn3 
	.byte		N11   
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 069   ----------------------------------------
	.byte		N06   , Gn1 
	.byte		N48   , Dn3 
	.byte		N48   , Gn3 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N18   , Gn2 
	.byte		N18   , Gn3 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , Gn1 
	.byte		N12   , Gn4 
	.byte	W04
	.byte		N02   , Gn3 
	.byte	W08
	.byte		N12   , Gn1 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W08
	.byte		N18   , Ds3 
	.byte	W04
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
@ 070   ----------------------------------------
	.byte		N18   , Gs1 
	.byte		N18   , Cn3 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Gs1 
	.byte		N12   , Gn4 
	.byte	W04
	.byte		N18   , Dn3 
	.byte	W08
	.byte		N12   , Gs1 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W08
	.byte		N18   , Ds2 
	.byte		N18   , Ds3 
	.byte	W04
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		N06   , Gs1 
	.byte		N48   , As2 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N06   , Gs1 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Gs1 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Ds5 
	.byte	W12
@ 071   ----------------------------------------
	.byte		N06   , Gs1 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , Gs1 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Gs1 
	.byte		N24   , As2 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Gs1 
	.byte		N18   , Cn3 
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , Gs1 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W04
	.byte		N18   , Ds3 
	.byte	W08
	.byte		N12   , Gs1 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W08
	.byte		N18   , Ds2 
	.byte		N02   , Ds3 
	.byte	W04
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
@ 072   ----------------------------------------
	.byte		N18   , As1 
	.byte		N48   , As2 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N06   , As1 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N06   , As1 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , As1 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 073   ----------------------------------------
	.byte		N06   , As1 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , As1 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N06   , As1 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , As1 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Dn5 
	.byte	W12
@ 074   ----------------------------------------
	.byte		N18   , Cn2 
	.byte		N18   , Ds2 
	.byte		N12   , Ds3 
	.byte		N11   
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte		N12   , Gn4 
	.byte	W04
	.byte		N18   , Gn2 
	.byte		N08   , Gn3 
	.byte		N07   
	.byte		N08   , Gn4 
	.byte	W02
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		N12   , Cn2 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W02
	.byte		N18   , Dn2 
	.byte		N10   , Dn3 
	.byte		N09   
	.byte		N10   , Dn4 
	.byte	W04
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte		N06   
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , Dn3 
	.byte		N05   , Dn4 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N48   , Gn2 
	.byte		N02   , Dn3 
	.byte		N17   , Ds3 
	.byte		N02   , Dn4 
	.byte		N12   , Ds4 
	.byte		N11   
	.byte		N12   , Ds5 
	.byte	W06
	.byte		        Ds3 
	.byte		N05   , Ds4 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Ds3 
	.byte		N12   , Gn3 
	.byte		N06   , Ds4 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N12   , Cn2 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte		N12   , Fn4 
	.byte	W06
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Ds3 
	.byte		N01   , Ds4 
	.byte		N06   
	.byte		N12   , Ds5 
	.byte	W06
	.byte		N06   , Ds3 
	.byte		N05   , Ds4 
	.byte	W06
@ 075   ----------------------------------------
	.byte		N06   , Cn2 
	.byte		N48   , As2 
	.byte		N01   , Ds3 
	.byte		N12   , Cn4 
	.byte		N06   , Ds4 
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Cn2 
	.byte		N12   , Ds2 
	.byte		N11   
	.byte		N12   , Ds3 
	.byte		N11   
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N12   , Cn2 
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N18   , Gn1 
	.byte		N12   , Gn2 
	.byte		N11   
	.byte		N05   , Gn3 
	.byte		N05   
	.byte	W06
	.byte		N06   , Gn2 
	.byte		N06   , Gn3 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N06   , Gn2 
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Cn2 
	.byte		N48   , Fn2 
	.byte		N12   , Dn3 
	.byte		N11   
	.byte		N12   , As3 
	.byte		N12   , Dn4 
	.byte		N12   , As4 
	.byte	W06
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Cn2 
	.byte		N06   , Dn3 
	.byte		N01   , Dn4 
	.byte		N06   
	.byte		N12   , Dn5 
	.byte	W04
	.byte		N18   , As1 
	.byte		N08   , As2 
	.byte		N07   
	.byte		N08   , As3 
	.byte	W02
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn2 
	.byte		N06   , As2 
	.byte		N12   , Gn3 
	.byte		N06   , As3 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N04   , As2 
	.byte		N04   , As3 
	.byte	W02
	.byte		N18   , Ds2 
	.byte		N10   , Ds3 
	.byte		N09   
	.byte		N10   , Ds4 
	.byte	W04
	.byte		N06   , Ds3 
	.byte		N12   , Dn4 
	.byte		N06   , Ds4 
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
@ 076   ----------------------------------------
	.byte		N18   , As1 
	.byte		N18   , Dn2 
	.byte		N12   , Dn3 
	.byte		N11   
	.byte		N12   , Dn4 
	.byte		N01   , Ds4 
	.byte		N02   
	.byte		N12   , Ds5 
	.byte	W06
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Dn3 
	.byte		N12   , Gn3 
	.byte		N06   , Dn4 
	.byte		N12   , Gn4 
	.byte	W04
	.byte		N18   , Ds2 
	.byte		N08   , Ds3 
	.byte		N07   
	.byte		N08   , Ds4 
	.byte	W02
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N12   , As1 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte		N12   , Fn4 
	.byte	W06
	.byte		N04   , Ds3 
	.byte		N04   , Ds4 
	.byte	W02
	.byte		        As1 
	.byte		N10   , As2 
	.byte		N09   
	.byte		N10   , As3 
	.byte	W04
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W06
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N48   , Fn1 
	.byte		N12   , Fn2 
	.byte		N11   
	.byte		N12   , Fn3 
	.byte		N11   
	.byte		N02   , As3 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N12   , As1 
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Fn3 
	.byte		N12   , Fn4 
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte	W06
@ 077   ----------------------------------------
	.byte		        As1 
	.byte		N01   , Fn2 
	.byte		N48   , As2 
	.byte		N01   , Fn3 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N12   , As1 
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Fn3 
	.byte		N12   , Gs4 
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        As1 
	.byte		N48   , Gn2 
	.byte		N12   , Dn3 
	.byte		N11   
	.byte		N12   , Cn4 
	.byte		N12   , Dn4 
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N12   , As1 
	.byte		N24   , Ds2 
	.byte		N12   , Ds3 
	.byte		N11   
	.byte		N12   , Cn4 
	.byte		N12   , Ds4 
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Ds3 
	.byte		N12   , Dn4 
	.byte		N06   , Ds4 
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
@ 078   ----------------------------------------
	.byte		N18   , Gs1 
	.byte		N24   , As2 
	.byte		N01   , Ds3 
	.byte		N11   
	.byte		N12   , Gn3 
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte		N12   , Gn4 
	.byte	W04
	.byte		N18   , Gn2 
	.byte		N08   , Gn3 
	.byte		N07   
	.byte		N07   , Gn4 
	.byte	W02
	.byte		N06   , Gn3 
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N12   , Gs1 
	.byte		N12   , Cn3 
	.byte		N06   , Gn3 
	.byte		N12   , Cn4 
	.byte		N06   , Gn4 
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W02
	.byte		N18   , Dn2 
	.byte		N10   , Dn3 
	.byte		N09   
	.byte		N10   , Dn4 
	.byte	W04
	.byte		N48   , As2 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte		N06   
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , Dn3 
	.byte		N05   , Dn4 
	.byte	W06
	.byte		N06   , Gs1 
	.byte		N48   , Ds2 
	.byte		N02   , Dn3 
	.byte		N17   , Ds3 
	.byte		N02   , Dn4 
	.byte		N12   , Ds4 
	.byte		N11   
	.byte		N12   , Ds5 
	.byte	W06
	.byte		        Ds3 
	.byte		N05   , Ds4 
	.byte	W06
	.byte		N06   , Gs1 
	.byte		N06   , Ds3 
	.byte		N12   , Gn3 
	.byte		N06   , Ds4 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N12   , Gs1 
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte		N12   , Fn4 
	.byte	W06
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Ds3 
	.byte		N01   , Ds4 
	.byte		N06   
	.byte		N12   , Ds5 
	.byte	W06
	.byte		N06   , Ds3 
	.byte		N05   , Ds4 
	.byte	W06
@ 079   ----------------------------------------
	.byte		N06   , Gs1 
	.byte		N48   , Gn2 
	.byte		N01   , Ds3 
	.byte		N12   , Cn4 
	.byte		N06   , Ds4 
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Ds3 
	.byte		N12   , Dn4 
	.byte		N06   , Ds4 
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N12   , Gs1 
	.byte		N24   , Ds2 
	.byte		N12   , Ds3 
	.byte		N11   
	.byte		N12   , Gn3 
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Gs1 
	.byte		N48   , Gn2 
	.byte		N12   , Gn3 
	.byte		N11   
	.byte		N12   , As3 
	.byte		N12   , Gn4 
	.byte		N12   , As4 
	.byte	W06
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Gn3 
	.byte		N12   , Dn4 
	.byte		N06   , Gn4 
	.byte		N12   , Dn5 
	.byte	W04
	.byte		N18   , Dn2 
	.byte		N08   , Dn3 
	.byte		N07   
	.byte		N07   , Dn4 
	.byte	W02
	.byte		N06   , Dn3 
	.byte		N05   , Dn4 
	.byte	W06
	.byte		N12   , Gs1 
	.byte		N06   , Dn3 
	.byte		N12   , Gn3 
	.byte		N06   , Dn4 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N04   , Dn3 
	.byte		N04   , Dn4 
	.byte	W02
	.byte		N18   , As1 
	.byte		N10   , As2 
	.byte		N09   
	.byte		N10   , As3 
	.byte	W04
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
@ 080   ----------------------------------------
	.byte		N36   , Gn1 
	.byte		N01   , Gn2 
	.byte		N01   , As2 
	.byte		N12   , Gn3 
	.byte		N11   
	.byte		N02   , As3 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W06
	.byte		N06   , Gn2 
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N24   , Gn1 
	.byte		N06   , Gn2 
	.byte		N01   , Gn3 
	.byte		N06   
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N06   , Gn2 
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N12   , Gn1 
	.byte		N06   , Gn2 
	.byte		N05   
	.byte		N06   , Gn3 
	.byte		N12   , Fn4 
	.byte	W06
	.byte		N06   , Gn2 
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte		N06   , Gn3 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W06
	.byte		N06   , Gn2 
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N48   , Fn1 
	.byte		N12   , Fn2 
	.byte		N11   
	.byte		N12   , Fn3 
	.byte		N11   
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Gn1 
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N12   , Gn1 
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Fn2 
	.byte		N06   , Fn3 
	.byte		N12   , Fn4 
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Fn3 
	.byte	W06
@ 081   ----------------------------------------
	.byte		        Gn1 
	.byte		N48   , Fn2 
	.byte		N01   , Fn3 
	.byte		N11   
	.byte		N12   , Cn4 
	.byte		N12   , Fn4 
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Gn1 
	.byte		N06   , Fn3 
	.byte		N12   , Dn4 
	.byte		N06   , Fn4 
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N12   , Gn1 
	.byte		N06   , Fn3 
	.byte		N12   , Ds4 
	.byte		N06   , Fn4 
	.byte		N12   , Ds5 
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Fn4 
	.byte		N12   , Gs4 
	.byte	W06
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Gn1 
	.byte		N48   , Dn2 
	.byte		N12   , Dn3 
	.byte		N11   
	.byte		N12   , Cn4 
	.byte		N12   , Dn4 
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn1 
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N12   , Gn1 
	.byte		N06   , Dn3 
	.byte		N12   , Cn4 
	.byte		N06   , Dn4 
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Dn4 
	.byte		N06   
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , Dn3 
	.byte		N05   , Dn4 
	.byte	W06
@ 082   ----------------------------------------
	.byte		N18   , Fn1 
	.byte		N24   , Gs2 
	.byte		N12   , Gn3 
	.byte		N12   , Gs3 
	.byte		N11   
	.byte		N12   , Gn4 
	.byte		N12   , Gs4 
	.byte	W06
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Gs3 
	.byte		N12   , Gn4 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N12   , Fn1 
	.byte		N24   , As2 
	.byte		N12   , As3 
	.byte		N12   , Cn4 
	.byte		N12   , As4 
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N06   , As3 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte		N06   , As4 
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , As3 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Fn1 
	.byte		N48   , Gs2 
	.byte		N24   , As2 
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte		N12   , As4 
	.byte		N12   , Ds5 
	.byte	W06
	.byte		N06   , As3 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Fn1 
	.byte		N12   , Gn3 
	.byte		N06   , As3 
	.byte		N12   , Gn4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , As4 
	.byte	W06
	.byte		N12   , Fn1 
	.byte		N24   , Gs2 
	.byte		N12   , Gs3 
	.byte		N11   
	.byte		N12   , Fn4 
	.byte		N12   , Gs4 
	.byte	W06
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Gs3 
	.byte		N12   , Ds4 
	.byte		N06   , Gs4 
	.byte		N12   , Ds5 
	.byte	W06
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
@ 083   ----------------------------------------
	.byte		        Fn1 
	.byte		N48   , Gs2 
	.byte		N01   , Gs3 
	.byte		N11   
	.byte		N12   , Cn4 
	.byte		N12   , Gs4 
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Gs3 
	.byte		N12   , Dn4 
	.byte		N06   , Gs4 
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N12   , Fn1 
	.byte		N12   , Gn3 
	.byte		N06   , Gs3 
	.byte		N12   , Gn4 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Gs3 
	.byte		N12   , Gn4 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Fn1 
	.byte		N48   , Cn2 
	.byte		N48   , Gs2 
	.byte		N01   , Gs3 
	.byte		N12   , As3 
	.byte		N06   , Gs4 
	.byte		N12   , As4 
	.byte	W06
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Gs3 
	.byte		N12   , Dn4 
	.byte		N06   , Gs4 
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N12   , Fn1 
	.byte		N24   , Dn2 
	.byte		N12   , Dn3 
	.byte		N11   
	.byte		N12   , Gn3 
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte		N01   , Dn4 
	.byte		N06   
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , Dn3 
	.byte		N05   , Dn4 
	.byte	W06
@ 084   ----------------------------------------
	.byte		N18   , Gn1 
	.byte		N24   , Dn3 
	.byte		N12   , Gn3 
	.byte		N11   
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
	.byte		N12   , Ds5 
	.byte	W06
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Gn1 
	.byte		N01   , Gn3 
	.byte		N06   
	.byte		N01   , Gn4 
	.byte		N06   
	.byte	W06
	.byte		N05   , Gn3 
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N12   , Gn1 
	.byte		N24   , Ds3 
	.byte		N12   , Gs3 
	.byte		N11   
	.byte		N12   , Fn4 
	.byte		N12   , Gs4 
	.byte	W06
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Gs3 
	.byte		N12   , Ds4 
	.byte		N06   , Gs4 
	.byte		N12   , Ds5 
	.byte	W06
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Gn1 
	.byte		N24   , Gs2 
	.byte		N01   , Gs3 
	.byte		N11   
	.byte		N12   , Cn4 
	.byte		N12   , Gs4 
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Gn1 
	.byte		N06   , Gs3 
	.byte		N12   , Dn4 
	.byte		N06   , Gs4 
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N12   , Gn1 
	.byte		N24   , Dn3 
	.byte		N12   , Gn3 
	.byte		N11   
	.byte		N11   
	.byte		N12   , Gn4 
	.byte		N11   
	.byte	W06
	.byte		N05   , Gn3 
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N06   , Gn3 
	.byte		N12   , Fn4 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Gn3 
	.byte		N06   , Gn4 
	.byte	W06
@ 085   ----------------------------------------
	.byte		        Gn1 
	.byte		N48   , Gs2 
	.byte		N01   , Gn3 
	.byte		N11   
	.byte		N12   , Cn4 
	.byte		N12   , Gn4 
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Gn1 
	.byte		N06   , Gn3 
	.byte		N12   , Dn4 
	.byte		N06   , Gn4 
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		N12   , Gn1 
	.byte		N06   , Gn3 
	.byte		N12   , Ds4 
	.byte		N06   , Gn4 
	.byte		N12   , Ds5 
	.byte	W06
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Gn3 
	.byte		N06   , Gn4 
	.byte		N12   , Gs4 
	.byte	W06
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		N18   , Gn1 
	.byte		N12   , Gn2 
	.byte		N11   
	.byte		N01   , Gn3 
	.byte		N11   
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N06   , Gn2 
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Gn1 
	.byte		N06   , Gn2 
	.byte		N06   , Gn3 
	.byte		N12   , Gn4 
	.byte	W04
	.byte		N01   , Gn2 
	.byte		N02   , Gn3 
	.byte		N01   
	.byte		N07   , Gn4 
	.byte	W02
	.byte		N01   , Gn3 
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N12   , Gn1 
	.byte		N06   , Gn3 
	.byte		N12   , Cn4 
	.byte		N06   , Gn4 
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N04   , Gn3 
	.byte		N04   , Gn4 
	.byte	W02
	.byte		N18   , Ds2 
	.byte		N10   , Ds3 
	.byte		N09   
	.byte		N10   , Ds4 
	.byte	W04
	.byte		N06   , Ds3 
	.byte		N12   , Dn4 
	.byte		N06   , Ds4 
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
@ 086   ----------------------------------------
	.byte		N18   , Gs1 
	.byte		N18   , Cn2 
	.byte		N12   , Cn3 
	.byte		N11   
	.byte		N12   , Gn3 
	.byte		N12   , Cn4 
	.byte		N02   , Ds4 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte		N12   , Gn4 
	.byte	W04
	.byte		N18   , Dn2 
	.byte		N08   , Dn3 
	.byte		N07   
	.byte		N08   , Dn4 
	.byte	W02
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N12   , Gs1 
	.byte		N06   , Dn3 
	.byte		N12   , Cn4 
	.byte		N06   , Dn4 
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N04   , Dn3 
	.byte		N04   , Dn4 
	.byte	W02
	.byte		N10   , Ds2 
	.byte		N09   
	.byte		N10   , Ds3 
	.byte		N09   
	.byte	W04
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs1 
	.byte		N48   , Cn2 
	.byte		N02   , Ds2 
	.byte		N17   , As2 
	.byte		N02   , Ds3 
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W06
	.byte		        As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , As2 
	.byte		N12   , Gn3 
	.byte		N06   , As3 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Gs1 
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte		N12   , Fn4 
	.byte	W06
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        As2 
	.byte		N06   , As3 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W06
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
@ 087   ----------------------------------------
	.byte		        Gs1 
	.byte		N48   , Dn2 
	.byte		N48   , Gn2 
	.byte		N01   , As2 
	.byte		N06   , As3 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W06
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Gs1 
	.byte		N24   , As1 
	.byte		N12   , As2 
	.byte		N11   
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        As2 
	.byte		N06   , As3 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Gs1 
	.byte		N32   , Ds2 
	.byte		N12   , Cn3 
	.byte		N11   
	.byte		N01   , As3 
	.byte		N12   , Cn4 
	.byte		N12   , As4 
	.byte	W06
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Cn3 
	.byte		N06   , Cn4 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W04
	.byte		N18   , Ds2 
	.byte		N08   , Ds3 
	.byte		N07   
	.byte		N08   , Ds4 
	.byte	W02
	.byte		N06   , Ds3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N12   , Gs1 
	.byte		N06   , Ds3 
	.byte		N12   , Gn3 
	.byte		N06   , Ds4 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N04   , Ds3 
	.byte		N04   , Ds4 
	.byte	W02
	.byte		N02   , Ds2 
	.byte		N02   
	.byte		N02   , Ds3 
	.byte		N01   
	.byte	W04
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Ds3 
	.byte	W06
@ 088   ----------------------------------------
	.byte		N01   , Ds2 
	.byte		N02   , Ds3 
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W01
	.byte		N36   , As1 
	.byte		N17   , As2 
	.byte	W05
	.byte		N12   
	.byte		N06   , As3 
	.byte	W06
	.byte		        As2 
	.byte		N12   , Gn3 
	.byte		N06   , As3 
	.byte		N12   , Gn4 
	.byte	W01
	.byte		N24   , As1 
	.byte	W05
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        As2 
	.byte		N06   , As3 
	.byte		N12   , Fn4 
	.byte	W01
	.byte		        As1 
	.byte	W05
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        As2 
	.byte		N06   , As3 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W06
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N01   , As2 
	.byte		N06   , As3 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W01
	.byte		N06   , As1 
	.byte		N48   , Cn2 
	.byte		N48   , Fn2 
	.byte	W05
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        As2 
	.byte		N06   , As3 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W01
	.byte		N06   , As1 
	.byte	W05
	.byte		        As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        As2 
	.byte		N12   , Gn3 
	.byte		N06   , As3 
	.byte		N12   , Gn4 
	.byte	W01
	.byte		        As1 
	.byte	W05
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        As2 
	.byte		N06   , As3 
	.byte		N12   , Fn4 
	.byte	W06
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
@ 089   ----------------------------------------
	.byte		        As2 
	.byte		N06   , As3 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W01
	.byte		N06   , As1 
	.byte		N48   , Dn2 
	.byte		N48   , Gn2 
	.byte	W05
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        As2 
	.byte		N06   , As3 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W01
	.byte		N06   , As1 
	.byte	W05
	.byte		        As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        As2 
	.byte		N06   , As3 
	.byte		N12   , Ds4 
	.byte		N12   , Ds5 
	.byte	W01
	.byte		        As1 
	.byte	W05
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        As2 
	.byte		N06   , As3 
	.byte		N12   , Gs4 
	.byte	W06
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        As2 
	.byte		N06   , As3 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W01
	.byte		N06   , As1 
	.byte		N48   , Ds2 
	.byte		N05   , As2 
	.byte	W05
	.byte		N06   
	.byte		N06   , As3 
	.byte	W06
	.byte		        As2 
	.byte		N06   , As3 
	.byte		N12   , Gn4 
	.byte	W01
	.byte		N06   , As1 
	.byte	W05
	.byte		        As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        As2 
	.byte		N06   , As3 
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W01
	.byte		        As1 
	.byte	W05
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        As2 
	.byte		N06   , As3 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W06
	.byte		N06   , As2 
	.byte		N06   , As3 
	.byte	W06
@ 090   ----------------------------------------
mus_youseebiggirl_tt_1_090:
	.byte		N12   , Gn4 , v044
	.byte	W01
	.byte		N48   , Cn2 
	.byte	W11
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte	PEND
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_019
@ 092   ----------------------------------------
	.byte		N12   , Ds5 , v044
	.byte	W01
	.byte		N24   , Ds2 
	.byte	W11
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W01
	.byte		N24   , Fn1 
	.byte	W11
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Cn5 
	.byte	W01
	.byte		N48   , Ds2 
	.byte	W11
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 093   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W01
	.byte		N48   , Dn2 
	.byte	W11
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_090
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_019
@ 096   ----------------------------------------
	.byte		N12   , Ds5 , v044
	.byte	W01
	.byte		N24   , Gn1 
	.byte	W11
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W01
	.byte		N24   , Gs1 
	.byte	W11
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Cn5 
	.byte	W01
	.byte		N48   , Gn1 
	.byte	W11
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 097   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W01
	.byte		N24   , As1 
	.byte	W11
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W01
	.byte		N24   , Ds2 
	.byte	W11
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W01
	.byte		N24   , Dn2 
	.byte	W11
	.byte		N12   , Dn5 
	.byte	W12
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_090
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_019
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_020
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_1_021
@ 102   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_youseebiggirl_tt_2:
	.byte	KEYSH , mus_youseebiggirl_tt_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 84*mus_youseebiggirl_tt_mvl/mxv
	.byte		PAN   , c_v+18
	.byte	W48
	.byte		N48   , Cn3 , v048
	.byte		N48   , Gn4 
	.byte	W48
@ 001   ----------------------------------------
mus_youseebiggirl_tt_2_001:
	.byte		N48   , Cn3 , v048
	.byte		N48   , Gn4 
	.byte	W48
	.byte		        Cn3 
	.byte		N48   , Gn4 
	.byte	W48
	.byte	PEND
@ 002   ----------------------------------------
	.byte		N72   , Cn3 
	.byte		N72   , Gn4 
	.byte	W96
@ 003   ----------------------------------------
	.byte		        Cn3 
	.byte		N72   , Fn4 
	.byte	W96
@ 004   ----------------------------------------
	.byte	W48
	.byte		N48   , Cn3 
	.byte		N48   , Ds4 
	.byte	W48
@ 005   ----------------------------------------
	.byte		        Cn3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte		        Cn3 
	.byte		N48   , Fn4 
	.byte	W48
@ 006   ----------------------------------------
	.byte		N72   , Cn3 
	.byte		N72   , Fn4 
	.byte	W96
@ 007   ----------------------------------------
	.byte		        Bn2 
	.byte		N72   , Dn4 
	.byte	W96
@ 008   ----------------------------------------
	.byte	W48
	.byte		N48   , Cn3 
	.byte		N48   , Gn4 
	.byte	W48
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_2_001
@ 010   ----------------------------------------
	.byte		N48   , Cn3 , v048
	.byte		N48   , Gn4 
	.byte	W48
	.byte		N72   , Cn3 
	.byte		N72   , Gs4 
	.byte	W48
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte		        Bn2 
	.byte		N72   , Fn4 
	.byte	W96
@ 013   ----------------------------------------
	.byte		N48   , Bn2 
	.byte		N48   , Dn5 
	.byte	W48
	.byte		        Bn2 
	.byte		N48   , Ds5 
	.byte	W48
@ 014   ----------------------------------------
	.byte		N72   , As2 
	.byte		N72   , Dn5 
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte		        Gs2 
	.byte		N72   , Cn5 
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
mus_youseebiggirl_tt_2_034:
	.byte		N24   , Cn3 , v048
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N72   , As3 
	.byte		N72   , As4 
	.byte	W72
	.byte	PEND
@ 035   ----------------------------------------
	.byte	W72
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , As4 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N24   , As3 
	.byte		N24   , As4 
	.byte	W24
	.byte		        Cn4 
	.byte		N24   , Cn5 
	.byte	W24
	.byte		N72   , Ds3 
	.byte		N72   , Ds4 
	.byte	W48
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_2_034
@ 039   ----------------------------------------
	.byte	W72
	.byte		N12   , Fn3 , v048
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
@ 040   ----------------------------------------
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Cn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N72   , Fn3 
	.byte		N72   , Fn4 
	.byte	W48
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
mus_youseebiggirl_tt_2_058:
	.byte		N06   , Cn3 , v048
	.byte		N18   , Ds5 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W04
	.byte		N18   , Gn4 
	.byte	W08
	.byte		N12   , Cn3 
	.byte	W08
	.byte		N18   , Dn4 
	.byte		N18   , Dn5 
	.byte	W16
	.byte		N06   , Cn3 
	.byte		N60   , Ds5 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 059   ----------------------------------------
mus_youseebiggirl_tt_2_059:
	.byte		N06   , Cn3 , v048
	.byte	W12
	.byte		N06   
	.byte		N18   , Ds4 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N18   , Gn3 
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N06   , Cn3 
	.byte		N18   , Dn5 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W04
	.byte		N18   , As3 
	.byte		N18   , As4 
	.byte	W08
	.byte		N12   , Cn3 
	.byte	W08
	.byte		N18   , Ds4 
	.byte		N18   , Ds5 
	.byte	W16
	.byte	PEND
@ 060   ----------------------------------------
mus_youseebiggirl_tt_2_060:
	.byte		N06   , As2 , v048
	.byte		N18   , Dn5 
	.byte	W12
	.byte		N06   , As2 
	.byte	W04
	.byte		N18   , Ds4 
	.byte		N18   , Ds5 
	.byte	W08
	.byte		N12   , As2 
	.byte	W08
	.byte		N18   , As3 
	.byte		N18   , As4 
	.byte	W16
	.byte		N06   , As2 
	.byte		N72   , Fn4 
	.byte	W12
	.byte		N06   , As2 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 061   ----------------------------------------
mus_youseebiggirl_tt_2_061:
	.byte		N06   , As2 , v048
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte		N24   , Dn5 
	.byte	W12
	.byte		N06   , As2 
	.byte	W12
	.byte		N12   
	.byte		N24   , Ds5 
	.byte	W24
	.byte	PEND
@ 062   ----------------------------------------
mus_youseebiggirl_tt_2_062:
	.byte		N06   , Gs2 , v048
	.byte		N18   , Ds5 
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W04
	.byte		N18   , Gn4 
	.byte	W08
	.byte		N12   , Gs2 
	.byte	W08
	.byte		N18   , Dn4 
	.byte		N18   , Dn5 
	.byte	W16
	.byte		N06   , Gs2 
	.byte		N72   , Ds5 
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 063   ----------------------------------------
mus_youseebiggirl_tt_2_063:
	.byte		N06   , Gs2 , v048
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte		N24   , Ds5 
	.byte	W24
	.byte		N06   , Gs2 
	.byte		N18   , Gn4 
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W04
	.byte		N18   , Dn4 
	.byte		N18   , Dn5 
	.byte	W08
	.byte		N12   , Gs2 
	.byte	W08
	.byte		N18   , As3 
	.byte		N18   , As4 
	.byte	W16
	.byte	PEND
@ 064   ----------------------------------------
mus_youseebiggirl_tt_2_064:
	.byte		N06   , Gn2 , v048
	.byte		N48   , Gn4 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte		N48   , Fn4 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 065   ----------------------------------------
mus_youseebiggirl_tt_2_065:
	.byte		N06   , Gn2 , v048
	.byte		N48   , Fn4 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte		N48   , Dn5 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 066   ----------------------------------------
mus_youseebiggirl_tt_2_066:
	.byte		N06   , Fn3 , v048
	.byte		N24   , Gs4 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W12
	.byte		N12   
	.byte		N24   , As4 
	.byte	W24
	.byte		N06   , Fn3 
	.byte		N24   , As4 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W12
	.byte		N12   
	.byte		N24   , Gs4 
	.byte	W24
	.byte	PEND
@ 067   ----------------------------------------
mus_youseebiggirl_tt_2_067:
	.byte		N06   , Fn3 , v048
	.byte		N72   , Gs4 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte		N24   , Dn5 
	.byte	W24
	.byte	PEND
@ 068   ----------------------------------------
mus_youseebiggirl_tt_2_068:
	.byte		N06   , Gn2 , v048
	.byte		N24   , Gn4 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W12
	.byte		N12   
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N06   , Gn2 
	.byte		N24   , Gs4 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W12
	.byte		N12   
	.byte		N24   , Gn4 
	.byte	W24
	.byte	PEND
@ 069   ----------------------------------------
mus_youseebiggirl_tt_2_069:
	.byte		N06   , Gn2 , v048
	.byte		N48   , Gn4 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte		N18   , Gn4 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W04
	.byte		N02   , Gn4 
	.byte	W08
	.byte		N12   , Gn2 
	.byte	W08
	.byte		N18   , Ds4 
	.byte		N18   , Ds5 
	.byte	W16
	.byte	PEND
@ 070   ----------------------------------------
mus_youseebiggirl_tt_2_070:
	.byte		N06   , Gs2 , v048
	.byte		N18   , Cn5 
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W04
	.byte		N18   , Dn4 
	.byte		N18   , Dn5 
	.byte	W08
	.byte		N12   , Gs2 
	.byte	W08
	.byte		N18   , Ds3 
	.byte		N18   , Ds4 
	.byte	W16
	.byte		N06   , Gs2 
	.byte		N72   , As4 
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 071   ----------------------------------------
mus_youseebiggirl_tt_2_071:
	.byte		N06   , Gs2 , v048
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte		N24   , As4 
	.byte	W24
	.byte		N06   , Gs2 
	.byte		N18   , Cn5 
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W04
	.byte		N18   , Ds4 
	.byte		N18   , Ds5 
	.byte	W08
	.byte		N12   , Gs2 
	.byte	W08
	.byte		N18   , Ds3 
	.byte		N02   , Ds4 
	.byte	W16
	.byte	PEND
@ 072   ----------------------------------------
	.byte		N06   , As2 
	.byte		N72   , As4 
	.byte	W12
	.byte		N06   , As2 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
@ 073   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_2_058
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_2_059
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_2_060
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_2_061
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_2_062
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_2_063
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_2_064
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_2_065
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_2_066
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_2_067
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_2_068
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_2_069
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_2_070
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_2_071
@ 088   ----------------------------------------
	.byte	W01
	.byte		N06   , As2 , v048
	.byte		N72   , As4 
	.byte	W12
	.byte		N06   , As2 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W23
@ 089   ----------------------------------------
	.byte	W01
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_youseebiggirl_tt_3:
	.byte	KEYSH , mus_youseebiggirl_tt_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 82*mus_youseebiggirl_tt_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N96   , Cn1 , v044
	.byte		N96   , Cn2 
	.byte	W48
	.byte		N48   , Ds3 
	.byte		N48   , Gn3 
	.byte		N48   , Cn4 
	.byte	W48
@ 001   ----------------------------------------
mus_youseebiggirl_tt_3_001:
	.byte		N48   , Ds3 , v044
	.byte		N48   , Gn3 
	.byte		N48   , Cn4 
	.byte	W48
	.byte		        Ds3 
	.byte		N48   , Gn3 
	.byte		N48   , Cn4 
	.byte	W48
	.byte	PEND
@ 002   ----------------------------------------
	.byte		N96   , Dn1 
	.byte		N96   , Fn3 
	.byte		N96   , Cn4 
	.byte	W96
@ 003   ----------------------------------------
	.byte		        Fn3 
	.byte		N96   , Cn4 
	.byte	W96
@ 004   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Fn2 
	.byte	W48
	.byte		N48   , Ds3 
	.byte		N48   , Gs3 
	.byte	W48
@ 005   ----------------------------------------
	.byte		        Ds3 
	.byte		N48   , Gs3 
	.byte	W48
	.byte		        Ds3 
	.byte		N48   , Fn3 
	.byte		N48   , Gs3 
	.byte	W48
@ 006   ----------------------------------------
	.byte		N96   , Gn1 
	.byte		N96   , Dn3 
	.byte		N96   , Gn3 
	.byte	W96
@ 007   ----------------------------------------
	.byte		        Dn3 
	.byte		N96   , Gn3 
	.byte	W96
@ 008   ----------------------------------------
	.byte		        Cn1 
	.byte		N96   , Cn2 
	.byte	W48
	.byte		N48   , Ds3 
	.byte		N48   , Gn3 
	.byte		N48   , Cn4 
	.byte	W48
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_3_001
@ 010   ----------------------------------------
	.byte		N96   , Gs1 , v044
	.byte		N48   , Ds3 
	.byte		N48   , Cn4 
	.byte	W48
	.byte		N96   , Ds3 
	.byte		N96   , Gs3 
	.byte		N96   , Cn4 
	.byte	W48
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte		        Gn1 
	.byte		N96   , Dn3 
	.byte		N96   , Bn3 
	.byte	W96
@ 013   ----------------------------------------
	.byte		N48   , Dn3 
	.byte		N48   , Bn3 
	.byte	W48
	.byte		        Ds3 
	.byte		N48   , Bn3 
	.byte	W48
@ 014   ----------------------------------------
	.byte		N96   , As1 
	.byte		N96   , Dn3 
	.byte		N96   , As3 
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte		        Gs1 
	.byte		N96   , Cn3 
	.byte		N96   , Gs3 
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
	.byte		        Cn1 
	.byte		N96   , Cn2 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		N96   , Fn3 
	.byte	W24
	.byte		N48   , As3 
	.byte	W24
@ 027   ----------------------------------------
	.byte	W24
	.byte		        Ds3 
	.byte	W48
	.byte		N12   
	.byte		N96   , As3 
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W12
@ 028   ----------------------------------------
	.byte		N96   , Gs1 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		N96   , Gn3 
	.byte	W48
@ 029   ----------------------------------------
	.byte	W48
	.byte		N48   
	.byte	W48
@ 030   ----------------------------------------
	.byte		N96   , As0 
	.byte		N48   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		N96   , Fn3 
	.byte	W48
@ 031   ----------------------------------------
	.byte	W48
	.byte		N48   
	.byte	W24
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 032   ----------------------------------------
	.byte		N96   , Ds1 
	.byte		N96   , Ds2 
	.byte		N96   , Fn3 
	.byte	W24
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N96   , Cn4 
	.byte	W48
@ 033   ----------------------------------------
	.byte		N48   , Ds1 
	.byte		N48   , Ds2 
	.byte		N48   , Cn3 
	.byte	W48
	.byte		        Dn1 
	.byte		N48   , Ds3 
	.byte		N48   , Gn3 
	.byte	W48
@ 034   ----------------------------------------
	.byte		N96   , Cn1 
	.byte		N96   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N96   , As3 
	.byte	W72
@ 035   ----------------------------------------
	.byte	W72
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N96   , Gs1 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		N96   , Ds3 
	.byte		N48   , As3 
	.byte	W48
@ 037   ----------------------------------------
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        Ds3 
	.byte	W72
@ 038   ----------------------------------------
	.byte		N96   , As0 
	.byte		N96   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N96   , As3 
	.byte	W72
@ 039   ----------------------------------------
	.byte	W72
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 040   ----------------------------------------
	.byte		N96   , Gn1 
	.byte		N48   , Fn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		N96   , Fn3 
	.byte		N96   , Gn3 
	.byte	W48
@ 041   ----------------------------------------
	.byte	W48
	.byte		N48   , As3 
	.byte	W48
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte		N18   , Cn1 
	.byte		N06   , Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte	W12
	.byte		N12   , Cn1 
	.byte		N12   , Cn2 
	.byte	W24
	.byte		N06   , Cn1 
	.byte		N06   , Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte	W12
	.byte		N12   , Cn1 
	.byte		N12   , Cn2 
	.byte	W24
@ 059   ----------------------------------------
	.byte		N06   , Cn1 
	.byte		N06   , Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte	W12
	.byte		N12   , Cn1 
	.byte		N12   , Cn2 
	.byte	W24
	.byte		N06   , Cn1 
	.byte		N06   , Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Cn2 
	.byte	W12
	.byte		N12   , Cn1 
	.byte		N12   , Cn2 
	.byte	W24
@ 060   ----------------------------------------
	.byte		N18   , As0 
	.byte		N06   , As1 
	.byte	W12
	.byte		        As0 
	.byte		N06   , As1 
	.byte	W12
	.byte		N12   , As0 
	.byte		N12   , As1 
	.byte	W24
	.byte		N06   , As0 
	.byte		N06   , As1 
	.byte	W12
	.byte		        As0 
	.byte		N06   , As1 
	.byte	W12
	.byte		N12   , As0 
	.byte		N12   , As1 
	.byte	W24
@ 061   ----------------------------------------
	.byte		N06   , As0 
	.byte		N06   , As1 
	.byte	W12
	.byte		        As0 
	.byte		N06   , As1 
	.byte	W12
	.byte		N12   , As0 
	.byte		N12   , As1 
	.byte	W24
	.byte		N06   , As0 
	.byte		N06   , As1 
	.byte	W12
	.byte		        As0 
	.byte		N06   , As1 
	.byte	W12
	.byte		N12   , As0 
	.byte		N12   , As1 
	.byte	W24
@ 062   ----------------------------------------
mus_youseebiggirl_tt_3_062:
	.byte		N18   , Gs1 , v044
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 063   ----------------------------------------
mus_youseebiggirl_tt_3_063:
	.byte		N06   , Gs1 , v044
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 064   ----------------------------------------
mus_youseebiggirl_tt_3_064:
	.byte		N18   , Gn1 , v044
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 065   ----------------------------------------
mus_youseebiggirl_tt_3_065:
	.byte		N06   , Gn1 , v044
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 066   ----------------------------------------
	.byte		N18   , Fn1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
@ 067   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_3_064
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_3_065
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_3_062
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_3_063
@ 072   ----------------------------------------
	.byte		N18   , As0 , v044
	.byte		N96   , As1 
	.byte	W12
	.byte		N06   , As0 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
@ 073   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
@ 074   ----------------------------------------
	.byte		N18   , Cn1 
	.byte		N96   , Cn2 
	.byte		N18   , Ds3 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W04
	.byte		N18   , Gn3 
	.byte	W08
	.byte		N12   , Cn1 
	.byte	W08
	.byte		N18   , Dn3 
	.byte	W16
	.byte		N06   , Cn1 
	.byte		N60   , Ds3 
	.byte		N48   , Gn3 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N12   
	.byte	W24
@ 075   ----------------------------------------
	.byte		N06   
	.byte		N48   , As3 
	.byte	W12
	.byte		N06   , Cn1 
	.byte		N18   , Ds2 
	.byte	W12
	.byte		N12   , Cn1 
	.byte	W06
	.byte		N18   , Gn2 
	.byte	W18
	.byte		N06   , Cn1 
	.byte		N18   , Dn3 
	.byte		N48   , Fn3 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W04
	.byte		N18   , As2 
	.byte	W08
	.byte		N12   , Cn1 
	.byte	W08
	.byte		N18   , Ds3 
	.byte	W16
@ 076   ----------------------------------------
	.byte		        As0 
	.byte		N96   , As1 
	.byte		N92   
	.byte		N18   , Dn3 
	.byte	W12
	.byte		N06   , As0 
	.byte	W04
	.byte		N18   , Ds3 
	.byte	W08
	.byte		N12   , As0 
	.byte	W08
	.byte		N18   , As2 
	.byte	W16
	.byte		N06   , As0 
	.byte		N96   , Fn2 
	.byte		N48   , Gn3 
	.byte	W12
	.byte		N06   , As0 
	.byte	W12
	.byte		N12   
	.byte	W24
@ 077   ----------------------------------------
	.byte		N06   
	.byte		N48   , As3 
	.byte	W12
	.byte		N06   , As0 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte		N24   , Dn3 
	.byte		N48   , Gn3 
	.byte	W12
	.byte		N06   , As0 
	.byte	W12
	.byte		N12   
	.byte		N24   , Ds3 
	.byte	W24
@ 078   ----------------------------------------
	.byte		N18   , Gs1 
	.byte		N17   
	.byte		N18   , Ds3 
	.byte		N24   , As3 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W04
	.byte		N18   , Gn3 
	.byte	W08
	.byte		N12   , Gs1 
	.byte		N12   , Cn4 
	.byte	W08
	.byte		N18   , Dn3 
	.byte	W04
	.byte		N60   , As3 
	.byte	W12
	.byte		N06   , Gs1 
	.byte		N72   , Ds3 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W24
@ 079   ----------------------------------------
	.byte		N01   
	.byte		N66   , Gn3 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W12
	.byte		N12   
	.byte		N24   , Ds3 
	.byte	W24
	.byte		N06   , Gs1 
	.byte		N18   , Gn3 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W04
	.byte		N18   , Dn3 
	.byte	W08
	.byte		N12   , Gs1 
	.byte	W08
	.byte		N18   , As2 
	.byte	W16
@ 080   ----------------------------------------
	.byte		        Gn1 
	.byte		N17   
	.byte		N48   , Gn2 
	.byte		N24   , As3 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N12   
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N06   , Gn1 
	.byte		N48   , Fn2 
	.byte		N48   , Fn3 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N12   
	.byte	W24
@ 081   ----------------------------------------
	.byte		N01   
	.byte		N48   , Fn3 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte		N48   , Dn3 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N12   
	.byte	W24
@ 082   ----------------------------------------
	.byte		N18   , Fn1 
	.byte		N17   
	.byte		N24   , Gs3 
	.byte	W12
	.byte		N06   , Fn1 
	.byte	W12
	.byte		N12   
	.byte		N24   , As3 
	.byte	W24
	.byte		N06   , Fn1 
	.byte		N48   , Cn3 
	.byte		N48   , Gs3 
	.byte		N24   , As3 
	.byte	W12
	.byte		N06   , Fn1 
	.byte	W12
	.byte		N12   
	.byte		N24   , Gs3 
	.byte	W24
@ 083   ----------------------------------------
	.byte		N01   , Fn1 
	.byte		N48   , Cn3 
	.byte		N72   , Gs3 
	.byte		N48   , As3 
	.byte	W12
	.byte		N06   , Fn1 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte		N48   , Cn3 
	.byte		N24   , Gs3 
	.byte	W12
	.byte		N06   , Fn1 
	.byte	W12
	.byte		N12   
	.byte		N24   , Dn3 
	.byte	W24
@ 084   ----------------------------------------
	.byte		N18   , Gn1 
	.byte		N17   
	.byte		N24   , Gn3 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N12   
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N06   , Gn1 
	.byte		N48   , Cn3 
	.byte		N48   , Gn3 
	.byte		N24   , Gs3 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N12   
	.byte		N24   , Gn3 
	.byte	W24
@ 085   ----------------------------------------
	.byte		N01   , Gn1 
	.byte		N48   , Cn3 
	.byte		N48   , Gn3 
	.byte		N48   , Gs3 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte		N18   , Gn2 
	.byte		N48   , Cn3 
	.byte		N32   , Gn3 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W04
	.byte		N18   , Gn3 
	.byte	W08
	.byte		N12   , Gn1 
	.byte	W08
	.byte		N18   , Ds3 
	.byte	W16
@ 086   ----------------------------------------
	.byte		        Gs1 
	.byte		N17   
	.byte		N18   , Cn3 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W04
	.byte		N18   , Dn3 
	.byte	W08
	.byte		N12   , Gs1 
	.byte	W08
	.byte		N18   , Ds2 
	.byte	W16
	.byte		N06   , Gs1 
	.byte		N72   , As2 
	.byte		N48   , Cn3 
	.byte		N48   , Ds3 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W24
@ 087   ----------------------------------------
	.byte		N01   
	.byte		N48   , Dn3 
	.byte		N48   , Gn3 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W12
	.byte		N12   
	.byte		N24   , As2 
	.byte	W24
	.byte		N06   , Gs1 
	.byte		N18   , Cn3 
	.byte		N32   , Ds3 
	.byte		N48   , As3 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W04
	.byte		N18   , Ds3 
	.byte	W08
	.byte		N12   , Gs1 
	.byte	W08
	.byte		N18   , Ds2 
	.byte	W16
@ 088   ----------------------------------------
	.byte		        As0 
	.byte		N96   , As1 
	.byte		N92   
	.byte		N96   , As2 
	.byte	W12
	.byte		N06   , As0 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte		N48   , Cn3 
	.byte		N48   , Fn3 
	.byte	W12
	.byte		N06   , As0 
	.byte	W12
	.byte		N12   
	.byte	W24
@ 089   ----------------------------------------
	.byte		N06   
	.byte		N48   , Dn3 
	.byte		N48   , Gn3 
	.byte	W12
	.byte		N06   , As0 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte		N48   , Ds3 
	.byte		N48   , As3 
	.byte	W12
	.byte		N06   , As0 
	.byte	W12
	.byte		N12   
	.byte	W24
@ 090   ----------------------------------------
	.byte		N96   , Cn1 
	.byte		N96   , Cn2 
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte		N24   , Ds1 
	.byte		N24   , Ds2 
	.byte	W24
	.byte		        Fn1 
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N96   , Ds1 
	.byte		N96   , Ds2 
	.byte	W48
@ 093   ----------------------------------------
	.byte	W48
	.byte		N48   , Dn1 
	.byte		N48   , Dn2 
	.byte	W48
@ 094   ----------------------------------------
	.byte		N96   , Cn1 
	.byte		N96   , Cn2 
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte		N24   , Gn1 
	.byte		N24   , Gn2 
	.byte	W24
	.byte		        Gs1 
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N72   , Gn1 
	.byte		N72   , Gn2 
	.byte	W48
@ 097   ----------------------------------------
	.byte	W24
	.byte		N24   , As1 
	.byte		N24   , As2 
	.byte	W24
	.byte		        Ds1 
	.byte		N24   , Ds2 
	.byte	W24
	.byte		        Dn1 
	.byte		N24   , Dn2 
	.byte	W24
@ 098   ----------------------------------------
	.byte		N96   , Cn1 
	.byte		N96   , Cn2 
	.byte	W96
@ 099   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_youseebiggirl_tt_4:
	.byte	KEYSH , mus_youseebiggirl_tt_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 96*mus_youseebiggirl_tt_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v064
	.byte	W48
	.byte		        En1 , v072
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W24
@ 001   ----------------------------------------
mus_youseebiggirl_tt_4_001:
	.byte		N02   , En1 , v072
	.byte	W48
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W48
	.byte	PEND
@ 002   ----------------------------------------
mus_youseebiggirl_tt_4_002:
	.byte		N02   , Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W48
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_002
@ 004   ----------------------------------------
mus_youseebiggirl_tt_4_004:
	.byte		N02   , Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W48
	.byte		        En1 , v072
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
mus_youseebiggirl_tt_4_005:
	.byte		N02   , En1 , v072
	.byte	W48
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W36
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_004
@ 007   ----------------------------------------
mus_youseebiggirl_tt_4_007:
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        En1 , v072
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_002
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_001
@ 018   ----------------------------------------
mus_youseebiggirl_tt_4_018:
	.byte		N02   , Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W24
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_018
@ 021   ----------------------------------------
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W24
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_018
@ 023   ----------------------------------------
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_018
@ 025   ----------------------------------------
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		N02   
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte	W24
@ 026   ----------------------------------------
mus_youseebiggirl_tt_4_026:
	.byte		N02   , Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
mus_youseebiggirl_tt_4_027:
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		N02   
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 029   ----------------------------------------
mus_youseebiggirl_tt_4_029:
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 031   ----------------------------------------
mus_youseebiggirl_tt_4_031:
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 033   ----------------------------------------
mus_youseebiggirl_tt_4_033:
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        En1 , v072
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte	PEND
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_027
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_029
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_031
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_033
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
mus_youseebiggirl_tt_4_046:
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte	PEND
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_046
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_046
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_046
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_046
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_046
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_046
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_046
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_046
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_046
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_004
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_001
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_004
@ 061   ----------------------------------------
mus_youseebiggirl_tt_4_061:
	.byte		N02   , En1 , v072
	.byte	W48
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte	PEND
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_004
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_005
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_004
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_007
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_004
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_001
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_004
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_061
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_004
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_005
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_004
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_007
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_027
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_029
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_031
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 081   ----------------------------------------
mus_youseebiggirl_tt_4_081:
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte	PEND
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_027
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_029
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_031
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_081
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_027
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_029
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_031
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_081
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_027
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_029
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_031
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_youseebiggirl_tt_4_026
@ 105   ----------------------------------------
	.byte		N02   , En1 , v072
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , En1 , v072
	.byte		N02   , Fs1 , v048
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

mus_youseebiggirl_tt:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_youseebiggirl_tt_pri	@ Priority
	.byte	mus_youseebiggirl_tt_rev	@ Reverb.

	.word	mus_youseebiggirl_tt_grp

	.word	mus_youseebiggirl_tt_1
	.word	mus_youseebiggirl_tt_2
	.word	mus_youseebiggirl_tt_3
	.word	mus_youseebiggirl_tt_4

	.end
