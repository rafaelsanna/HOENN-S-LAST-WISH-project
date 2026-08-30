	.include "MPlayDef.s"

	.equ	mus_midnas_lament_grp, voicegroup_midnas_lament
	.equ	mus_midnas_lament_pri, 0
	.equ	mus_midnas_lament_rev, reverb_set+50
	.equ	mus_midnas_lament_mvl, 100
	.equ	mus_midnas_lament_key, 0
	.equ	mus_midnas_lament_tbs, 1
	.equ	mus_midnas_lament_exg, 1
	.equ	mus_midnas_lament_cmp, 1

	.section .rodata
	.global	mus_midnas_lament
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_midnas_lament_1:
	.byte	KEYSH , mus_midnas_lament_key+0
mus_midnas_lament_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 133*mus_midnas_lament_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 122*mus_midnas_lament_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W72
@ 002   ----------------------------------------
	.byte	W72
@ 003   ----------------------------------------
	.byte	W72
@ 004   ----------------------------------------
	.byte	W72
@ 005   ----------------------------------------
	.byte	W72
@ 006   ----------------------------------------
	.byte		N23   , Dn2 , v127
	.byte	W72
@ 007   ----------------------------------------
	.byte		N23   
	.byte	W72
@ 008   ----------------------------------------
	.byte		N23   
	.byte	W72
@ 009   ----------------------------------------
	.byte	W72
@ 010   ----------------------------------------
	.byte		N23   
	.byte	W72
@ 011   ----------------------------------------
	.byte		N23   
	.byte	W72
@ 012   ----------------------------------------
	.byte	W72
@ 013   ----------------------------------------
	.byte		N23   
	.byte	W72
@ 014   ----------------------------------------
	.byte		N23   
	.byte	W72
@ 015   ----------------------------------------
	.byte		N23   
	.byte	W72
@ 016   ----------------------------------------
	.byte		N23   
	.byte	W72
@ 017   ----------------------------------------
	.byte	W72
@ 018   ----------------------------------------
	.byte	W72
@ 019   ----------------------------------------
	.byte		N23   
	.byte	W72
@ 020   ----------------------------------------
	.byte	W72
@ 021   ----------------------------------------
	.byte		N23   
	.byte	W72
@ 022   ----------------------------------------
	.byte	W72
@ 023   ----------------------------------------
	.byte	W72
@ 024   ----------------------------------------
	.byte		        Ds2 
	.byte	W72
@ 025   ----------------------------------------
	.byte	W72
@ 026   ----------------------------------------
	.byte	W72
@ 027   ----------------------------------------
	.byte	W72
@ 028   ----------------------------------------
	.byte	W72
@ 029   ----------------------------------------
	.byte	W72
@ 030   ----------------------------------------
	.byte	W72
@ 031   ----------------------------------------
	.byte	W72
@ 032   ----------------------------------------
	.byte	W72
@ 033   ----------------------------------------
	.byte	W72
@ 034   ----------------------------------------
	.byte	W72
@ 035   ----------------------------------------
	.byte	W72
@ 036   ----------------------------------------
	.byte	W72
@ 037   ----------------------------------------
	.byte	W72
@ 038   ----------------------------------------
	.byte	W72
@ 039   ----------------------------------------
	.byte	W72
@ 040   ----------------------------------------
	.byte	W72
@ 041   ----------------------------------------
	.byte	W72
@ 042   ----------------------------------------
	.byte	W72
@ 043   ----------------------------------------
	.byte	W72
@ 044   ----------------------------------------
	.byte	W72
@ 045   ----------------------------------------
	.byte	W72
@ 046   ----------------------------------------
	.byte	W72
@ 047   ----------------------------------------
	.byte	W72
@ 048   ----------------------------------------
	.byte	W72
@ 049   ----------------------------------------
	.byte	W72
@ 050   ----------------------------------------
	.byte	W72
@ 051   ----------------------------------------
	.byte	W72
@ 052   ----------------------------------------
	.byte	W72
@ 053   ----------------------------------------
	.byte	W72
@ 054   ----------------------------------------
	.byte	W72
@ 055   ----------------------------------------
	.byte	W72
@ 056   ----------------------------------------
	.byte	W72
@ 057   ----------------------------------------
	.byte	W72
@ 058   ----------------------------------------
	.byte	W72
@ 059   ----------------------------------------
	.byte	W72
@ 060   ----------------------------------------
	.byte	W72
@ 061   ----------------------------------------
	.byte	W72
@ 062   ----------------------------------------
	.byte	W72
@ 063   ----------------------------------------
	.byte	W72
@ 064   ----------------------------------------
	.byte	W72
	.byte	GOTO
	 .word	mus_midnas_lament_1_B1
mus_midnas_lament_1_B2:
@ 065   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_midnas_lament_2:
	.byte	KEYSH , mus_midnas_lament_key+0
mus_midnas_lament_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_midnas_lament_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N24   , Dn3 , v127
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
@ 001   ----------------------------------------
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
@ 002   ----------------------------------------
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
@ 003   ----------------------------------------
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
@ 004   ----------------------------------------
mus_midnas_lament_2_004:
	.byte		N48   , An3 , v127
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
	.byte	PEND
@ 005   ----------------------------------------
mus_midnas_lament_2_005:
	.byte		N48   , En4 , v127
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
@ 006   ----------------------------------------
	.byte		N48   , Bn3 
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
@ 007   ----------------------------------------
	.byte		N72   , Bn3 
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
@ 008   ----------------------------------------
mus_midnas_lament_2_008:
	.byte		N23   , Dn3 , v127
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
@ 009   ----------------------------------------
	.byte		N12   , Dn5 
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
@ 010   ----------------------------------------
mus_midnas_lament_2_010:
	.byte		TIE   , En5 , v127
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
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_008
	.byte		EOT   , En5 
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_005
@ 014   ----------------------------------------
	.byte		N48   , Dn4 , v127
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
@ 015   ----------------------------------------
	.byte		N72   , Gn4 
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
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_008
@ 017   ----------------------------------------
	.byte		N23   , Dn3 , v127
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
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_008
	.byte		EOT   , En5 
@ 020   ----------------------------------------
	.byte		TIE   , An4 , v127
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
@ 021   ----------------------------------------
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
@ 022   ----------------------------------------
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
@ 023   ----------------------------------------
	.byte		N36   , An4 
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
@ 024   ----------------------------------------
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
@ 025   ----------------------------------------
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
@ 026   ----------------------------------------
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
@ 027   ----------------------------------------
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
@ 028   ----------------------------------------
mus_midnas_lament_2_028:
	.byte		N24   , Dn3 , v127
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
@ 029   ----------------------------------------
mus_midnas_lament_2_029:
	.byte		N24   , Dn3 , v127
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
@ 030   ----------------------------------------
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
@ 031   ----------------------------------------
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
@ 032   ----------------------------------------
mus_midnas_lament_2_032:
	.byte		N24   , Dn3 , v127
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
@ 033   ----------------------------------------
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
@ 034   ----------------------------------------
mus_midnas_lament_2_034:
	.byte		N24   , Dn3 , v127
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
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_032
	.byte		EOT   , En5 
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_028
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_029
@ 038   ----------------------------------------
	.byte		N24   , Dn3 , v127
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
@ 039   ----------------------------------------
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
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_032
@ 041   ----------------------------------------
	.byte		N24   , Dn3 , v127
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
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_034
@ 043   ----------------------------------------
	.byte		N24   , Dn3 , v127
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
@ 044   ----------------------------------------
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
@ 045   ----------------------------------------
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
@ 046   ----------------------------------------
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
@ 047   ----------------------------------------
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
@ 048   ----------------------------------------
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
@ 049   ----------------------------------------
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
@ 050   ----------------------------------------
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
@ 051   ----------------------------------------
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
@ 052   ----------------------------------------
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
@ 053   ----------------------------------------
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
@ 054   ----------------------------------------
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
@ 055   ----------------------------------------
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
@ 056   ----------------------------------------
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
@ 057   ----------------------------------------
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
@ 058   ----------------------------------------
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
@ 059   ----------------------------------------
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
@ 060   ----------------------------------------
mus_midnas_lament_2_060:
	.byte		N24   , An2 , v127
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
@ 061   ----------------------------------------
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
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_midnas_lament_2_060
@ 063   ----------------------------------------
	.byte		N24   , Dn3 , v127
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
	.byte	GOTO
	 .word	mus_midnas_lament_2_B1
mus_midnas_lament_2_B2:
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
