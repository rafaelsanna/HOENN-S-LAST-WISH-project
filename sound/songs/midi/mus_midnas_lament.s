	.include "MPlayDef.s"

	.equ	mus_midnas_lament_grp, voicegroup_brothers
	.equ	mus_midnas_lament_pri, 0
	.equ	mus_midnas_lament_rev, reverb_set+20
	.equ	mus_midnas_lament_mvl, 90
	.equ	mus_midnas_lament_key, 0
	.equ	mus_midnas_lament_tbs, 1
	.equ	mus_midnas_lament_exg, 0
	.equ	mus_midnas_lament_cmp, 1

	.section .rodata
	.global	mus_midnas_lament
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_midnas_lament_1:
	.byte	KEYSH , mus_midnas_lament_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 133*mus_midnas_lament_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 94*mus_midnas_lament_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		N24   , Dn3 , v072
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
@ 002   ----------------------------------------
	.byte		N24   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N23   , Cn3 
	.byte	W11
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W01
@ 003   ----------------------------------------
	.byte	W11
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W01
@ 004   ----------------------------------------
	.byte	W11
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W01
@ 005   ----------------------------------------
	.byte		N48   , An3 
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W01
	.byte		        Fn4 
	.byte	W11
	.byte		N12   , En3 
	.byte	W12
	.byte		N01   , Dn3 
	.byte	W01
@ 006   ----------------------------------------
mus_midnas_lament_1_006:
	.byte		N23   , Dn2 , v060
	.byte		N48   , En4 , v072
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W01
	.byte		        Cn4 
	.byte	W11
	.byte		N12   , En3 
	.byte	W12
	.byte		N01   , Dn3 
	.byte	W01
	.byte	PEND
@ 007   ----------------------------------------
	.byte		N23   , Dn2 , v060
	.byte		N48   , Bn3 , v072
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W01
	.byte		N12   , An3 
	.byte	W11
	.byte		        En3 
	.byte	W01
	.byte		        Gn3 
	.byte	W11
	.byte		N01   , Dn3 
	.byte	W01
@ 008   ----------------------------------------
	.byte		N23   , Dn2 , v060
	.byte		N72   , Bn3 , v072
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte		N01   , Dn3 
	.byte	W01
@ 009   ----------------------------------------
mus_midnas_lament_1_009:
	.byte		N23   , Dn3 , v072
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte		N01   , Dn3 
	.byte	W01
	.byte	PEND
@ 010   ----------------------------------------
	.byte		N23   , Dn2 , v060
	.byte		N12   , Dn5 , v072
	.byte	W11
	.byte		N24   , En3 
	.byte	W01
	.byte		N12   , An4 
	.byte	W11
	.byte		N24   , Fn3 
	.byte	W01
	.byte		        En5 
	.byte	W11
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W01
	.byte		N12   , Dn5 
	.byte	W11
	.byte		        En3 
	.byte	W01
	.byte		        An4 
	.byte	W11
	.byte		N01   , Dn3 
	.byte	W01
@ 011   ----------------------------------------
mus_midnas_lament_1_011:
	.byte		N23   , Dn2 , v060
	.byte		TIE   , En5 , v072
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte		N01   , Dn3 
	.byte	W01
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_1_009
	.byte		EOT   , En5 
@ 013   ----------------------------------------
	.byte		N23   , Dn2 , v060
	.byte		N48   , An3 , v072
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W01
	.byte		        Fn4 
	.byte	W11
	.byte		N12   , En3 
	.byte	W12
	.byte		N01   , Dn3 
	.byte	W01
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_1_006
@ 015   ----------------------------------------
	.byte		N23   , Dn2 , v060
	.byte		N48   , Dn4 , v072
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W01
	.byte		N12   , En4 
	.byte	W11
	.byte		        En3 
	.byte	W01
	.byte		        Fn4 
	.byte	W11
	.byte		N01   , Dn3 
	.byte	W01
@ 016   ----------------------------------------
	.byte		N23   , Dn2 , v060
	.byte		N72   , Gn4 , v072
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte		N01   , Dn3 
	.byte	W01
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_1_009
@ 018   ----------------------------------------
	.byte		N23   , Dn3 , v072
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W01
	.byte		N12   , Fn4 
	.byte	W11
	.byte		N24   , An2 
	.byte	W01
	.byte		N12   , Cn5 
	.byte	W11
	.byte		N24   , Cn3 
	.byte	W01
	.byte		N12   , Gn4 
	.byte	W11
	.byte		        En3 
	.byte	W01
	.byte		        Fn4 
	.byte	W11
	.byte		N01   , Dn3 
	.byte	W01
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_1_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_1_009
	.byte		EOT   , En5 
@ 021   ----------------------------------------
	.byte		N23   , Dn2 , v060
	.byte		TIE   , An4 , v072
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte		N01   , Dn3 
	.byte	W01
@ 022   ----------------------------------------
	.byte		N23   
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Ds3 
	.byte	W01
	.byte		EOT   , An4 
@ 023   ----------------------------------------
	.byte		N36   , Ds4 
	.byte	W11
	.byte		N24   , Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W01
	.byte		N36   , As4 
	.byte	W11
	.byte		N24   , Dn3 
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N01   , Ds3 
	.byte	W01
@ 024   ----------------------------------------
	.byte		N23   , Ds2 , v060
	.byte		N36   , An4 , v072
	.byte	W11
	.byte		N24   , Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W01
	.byte		N36   , Fn4 
	.byte	W11
	.byte		N24   , Dn3 
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W13
@ 025   ----------------------------------------
	.byte		N24   , Gs2 
	.byte		TIE   , Gn4 
	.byte	W12
	.byte		N24   , Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
@ 026   ----------------------------------------
	.byte		N24   , Gs2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		EOT   , Gn4 
	.byte		N24   , Gs2 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , Gn4 
	.byte	W12
@ 027   ----------------------------------------
	.byte		N24   , An2 
	.byte		TIE   , En4 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N12   , Cs3 
	.byte	W12
@ 028   ----------------------------------------
	.byte		N24   , An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N12   , Cs3 
	.byte	W12
	.byte		EOT   , En4 
@ 029   ----------------------------------------
mus_midnas_lament_1_029:
	.byte		N24   , Dn3 , v072
	.byte		N48   , An3 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte		N24   , Fn4 
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
mus_midnas_lament_1_030:
	.byte		N24   , Dn3 , v072
	.byte		N48   , En4 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte		N24   , Cn4 
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte		N24   , Dn3 
	.byte		N48   , Bn3 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Gn3 
	.byte	W12
@ 032   ----------------------------------------
	.byte		N24   , Dn3 
	.byte		N72   , Bn3 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
@ 033   ----------------------------------------
mus_midnas_lament_1_033:
	.byte		N24   , Dn3 , v072
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
	.byte		N24   , Dn3 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		N24   , En3 
	.byte		N12   , An4 
	.byte	W12
	.byte		N24   , Fn3 
	.byte		N24   , En5 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        En3 
	.byte		N12   , An4 
	.byte	W12
@ 035   ----------------------------------------
mus_midnas_lament_1_035:
	.byte		N24   , Dn3 , v072
	.byte		TIE   , En5 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_1_033
	.byte		EOT   , En5 
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_1_029
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_1_030
@ 039   ----------------------------------------
	.byte		N24   , Dn3 , v072
	.byte		N48   , Dn4 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Fn4 
	.byte	W12
@ 040   ----------------------------------------
	.byte		N24   , Dn3 
	.byte		N72   , Gn4 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_1_033
@ 042   ----------------------------------------
	.byte		N24   , Dn3 , v072
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N24   , An2 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N24   , Cn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Fn4 
	.byte	W12
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_1_035
@ 044   ----------------------------------------
	.byte		N24   , Dn3 , v072
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		EOT   , En5 
	.byte		N24   , Cn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Bn3 
	.byte	W12
@ 045   ----------------------------------------
	.byte		N24   , An2 
	.byte		TIE   , Cn4 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
@ 046   ----------------------------------------
	.byte		N24   , An2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		EOT   , Cn4 
	.byte		N24   , Cn3 
	.byte		N24   , En4 
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
@ 047   ----------------------------------------
	.byte		N24   , Gn2 
	.byte		N36   , Dn4 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn2 
	.byte		TIE   , Gn3 
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
@ 048   ----------------------------------------
	.byte		N24   , Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		EOT   , Gn3 
@ 049   ----------------------------------------
	.byte		N24   , Fn3 
	.byte		N24   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
@ 050   ----------------------------------------
	.byte		N24   , Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N11   , Fn3 
	.byte	W12
	.byte		N24   , An2 
	.byte		N24   , Cn4 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
@ 051   ----------------------------------------
	.byte		N24   , En3 
	.byte		N36   , Bn3 
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte		N24   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
@ 052   ----------------------------------------
	.byte		N24   , En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
@ 053   ----------------------------------------
	.byte		N24   , Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , An2 
	.byte		N24   , An3 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
@ 054   ----------------------------------------
	.byte		N24   , Fn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Cn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Dn3 
	.byte		N48   , An3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
@ 055   ----------------------------------------
	.byte		N24   , Fs3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , An2 
	.byte		N96   , An3 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
@ 056   ----------------------------------------
	.byte		N24   , Fs3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
@ 057   ----------------------------------------
	.byte		N24   , Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Gn2 
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Bn2 
	.byte		N24   , Bn3 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
@ 058   ----------------------------------------
	.byte		N24   , Gn2 
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , En3 
	.byte		N72   , Bn3 
	.byte	W12
	.byte		N24   , Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
@ 059   ----------------------------------------
	.byte		N24   , Gs2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , Gs2 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , Bn2 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Cn4 
	.byte	W12
@ 060   ----------------------------------------
	.byte		N24   , Gs2 
	.byte		N72   , Bn3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
@ 061   ----------------------------------------
mus_midnas_lament_1_061:
	.byte		N24   , An2 , v072
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
	.byte		N24   , An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N23   , Gn2 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_1_061
@ 064   ----------------------------------------
	.byte		N24   , Dn3 , v072
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
@ 065   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_midnas_lament_2:
	.byte	KEYSH , mus_midnas_lament_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 64*mus_midnas_lament_mvl/mxv
	.byte		PAN   , c_v+20
	.byte		N24   , Dn3 , v052
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
@ 001   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N23   , Cn3 
	.byte	W23
	.byte		N24   , Dn3 
	.byte	W01
@ 002   ----------------------------------------
	.byte	W11
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W01
@ 003   ----------------------------------------
	.byte	W11
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W24
	.byte		        Dn3 
	.byte	W01
@ 004   ----------------------------------------
mus_midnas_lament_2_004:
	.byte		N48   , An3 , v052
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Cn3 
	.byte	W01
	.byte		        Fn4 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
mus_midnas_lament_2_005:
	.byte		N48   , En4 , v052
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W01
	.byte		        Cn4 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte		N48   , Bn3 
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
	.byte	W01
@ 007   ----------------------------------------
	.byte		N72   , Bn3 
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
	.byte	W01
@ 008   ----------------------------------------
mus_midnas_lament_2_008:
	.byte		N23   , Dn3 , v052
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
	.byte	W01
	.byte	PEND
@ 009   ----------------------------------------
	.byte	W11
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W01
	.byte		        En4 
	.byte	W11
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
	.byte	W01
@ 010   ----------------------------------------
mus_midnas_lament_2_010:
	.byte		TIE   , En4 , v052
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
	.byte	W01
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_008
	.byte		EOT   , En4 
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_005
@ 014   ----------------------------------------
	.byte		N48   , Dn4 , v052
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
	.byte	W01
@ 015   ----------------------------------------
	.byte		N72   , Gn4 
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
	.byte	W01
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_008
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_008
	.byte		EOT   , En4 
@ 020   ----------------------------------------
	.byte		TIE   , An4 , v052
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
	.byte	W01
@ 021   ----------------------------------------
	.byte		N23   , Dn3 
	.byte	W11
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
	.byte		        Ds3 
	.byte	W01
	.byte		EOT   , An4 
@ 022   ----------------------------------------
	.byte		N36   , Ds4 
	.byte	W11
	.byte		N24   , Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As2 
	.byte	W01
	.byte		N36   , As3 
	.byte	W11
	.byte		N24   , Dn3 
	.byte	W24
	.byte	W01
@ 023   ----------------------------------------
	.byte		N36   , An4 
	.byte	W11
	.byte		N24   , Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As2 
	.byte	W01
	.byte		N36   , Fn4 
	.byte	W11
	.byte		N24   , Dn3 
	.byte	W24
	.byte	W01
@ 024   ----------------------------------------
	.byte		        Gs3 
	.byte		TIE   , Gn4 
	.byte	W12
	.byte		N24   , Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W24
@ 025   ----------------------------------------
	.byte		N24   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		EOT   , Gn4 
	.byte		N24   , Gs3 
	.byte	W24
@ 026   ----------------------------------------
	.byte		        An3 
	.byte		TIE   , En4 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W24
@ 027   ----------------------------------------
	.byte		N24   
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W24
	.byte		EOT   , En4 
@ 028   ----------------------------------------
	.byte		N24   , Dn3 
	.byte		N01   , An3 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N11   , An3 
	.byte	W12
	.byte		N24   , Cn3 
	.byte		N24   , Fn4 
	.byte	W24
@ 029   ----------------------------------------
mus_midnas_lament_2_029:
	.byte		N24   , Dn3 , v052
	.byte		N48   , En4 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
	.byte		        Dn3 
	.byte		N48   , Bn3 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
@ 031   ----------------------------------------
	.byte		        Dn3 
	.byte		N72   , Bn3 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
@ 032   ----------------------------------------
mus_midnas_lament_2_032:
	.byte		N24   , Dn3 , v052
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
	.byte	PEND
@ 033   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte		N24   , En4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
@ 034   ----------------------------------------
mus_midnas_lament_2_034:
	.byte		N24   , Dn3 , v052
	.byte		TIE   , En4 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_032
	.byte		EOT   , En4 
@ 036   ----------------------------------------
	.byte		N24   , Dn3 , v052
	.byte		N48   , An3 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N11   , An3 
	.byte	W12
	.byte		N24   , Cn3 
	.byte		N24   , Fn4 
	.byte	W24
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_029
@ 038   ----------------------------------------
	.byte		N24   , Dn3 , v052
	.byte		N48   , Dn4 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
@ 039   ----------------------------------------
	.byte		        Dn3 
	.byte		N72   , Gn4 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_032
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_032
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_034
@ 043   ----------------------------------------
	.byte		N24   , Dn3 , v052
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		EOT   , En4 
	.byte		N24   , Cn3 
	.byte	W24
@ 044   ----------------------------------------
	.byte		        An3 
	.byte		TIE   , Cn4 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
@ 045   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		EOT   , Cn4 
	.byte		N24   , Cn3 
	.byte		N24   , En4 
	.byte	W24
@ 046   ----------------------------------------
	.byte		        Gn3 
	.byte		N36   , Dn4 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W24
@ 047   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W24
@ 048   ----------------------------------------
	.byte		        Fn3 
	.byte		N24   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W24
@ 049   ----------------------------------------
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N11   , Fn3 
	.byte	W12
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
@ 050   ----------------------------------------
	.byte		        En3 
	.byte		N36   , Bn3 
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte		N24   
	.byte	W12
	.byte		        Gn3 
	.byte	W24
@ 051   ----------------------------------------
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W24
@ 052   ----------------------------------------
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W24
@ 053   ----------------------------------------
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte		N48   , An3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W12
	.byte		N23   , An3 
	.byte	W24
@ 054   ----------------------------------------
	.byte		N24   , Fs3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte		N24   
	.byte	W24
@ 055   ----------------------------------------
	.byte		        Fs3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N23   , An3 
	.byte	W24
@ 056   ----------------------------------------
	.byte		N24   , Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N24   , Bn3 
	.byte	W24
@ 057   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte		N72   , Bn3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W24
@ 058   ----------------------------------------
	.byte		        Gs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W24
@ 059   ----------------------------------------
	.byte		        Gs3 
	.byte		N72   , Bn3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W24
@ 060   ----------------------------------------
mus_midnas_lament_2_060:
	.byte		N24   , An3 , v052
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W24
	.byte	PEND
@ 061   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_060
@ 063   ----------------------------------------
	.byte		N24   , Dn3 , v052
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
@ 064   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_midnas_lament:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_midnas_lament_pri	@ Priority
	.byte	mus_midnas_lament_rev	@ Reverb.

	.word	mus_midnas_lament_grp

	.word	mus_midnas_lament_1
	.word	mus_midnas_lament_2

	.end
