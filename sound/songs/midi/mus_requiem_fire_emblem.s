	.include "MPlayDef.s"

	.equ	mus_requiem_fire_emblem_grp, voicegroup_brothers
	.equ	mus_requiem_fire_emblem_pri, 0
	.equ	mus_requiem_fire_emblem_rev, reverb_set+20
	.equ	mus_requiem_fire_emblem_mvl, 90
	.equ	mus_requiem_fire_emblem_key, 0
	.equ	mus_requiem_fire_emblem_tbs, 1
	.equ	mus_requiem_fire_emblem_exg, 0
	.equ	mus_requiem_fire_emblem_cmp, 1

	.section .rodata
	.global	mus_requiem_fire_emblem
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_requiem_fire_emblem_1:
	.byte	KEYSH , mus_requiem_fire_emblem_key+0
mus_requiem_fire_emblem_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 87*mus_requiem_fire_emblem_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 88*mus_requiem_fire_emblem_mvl/mxv
	.byte		PAN   , c_v-10
	.byte		N12   , Dn3 , v056
	.byte		N48   , Fn4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        An4 
	.byte	W24
@ 002   ----------------------------------------
mus_requiem_fire_emblem_1_002:
	.byte		N12   , Dn3 , v056
	.byte		N48   , Gn4 
	.byte	W12
	.byte		N12   , As3 
	.byte	W12
	.byte		N24   , En4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
mus_requiem_fire_emblem_1_003:
	.byte		N12   , Dn3 , v056
	.byte		N48   , En4 
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N24   , En4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
mus_requiem_fire_emblem_1_004:
	.byte		N12   , Dn3 , v056
	.byte		N48   , Fn4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
mus_requiem_fire_emblem_1_005:
	.byte		N12   , Dn3 , v056
	.byte		N48   , An4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Dn4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
mus_requiem_fire_emblem_1_006:
	.byte		N12   , Dn3 , v056
	.byte		N48   , As4 
	.byte	W12
	.byte		N12   , As3 
	.byte	W12
	.byte		N24   , En4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
mus_requiem_fire_emblem_1_007:
	.byte		N12   , Dn3 , v056
	.byte		N48   , Gn4 
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N24   , En4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        As4 
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
mus_requiem_fire_emblem_1_008:
	.byte		N12   , Dn3 , v056
	.byte		N48   , An4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Dn4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
mus_requiem_fire_emblem_1_009:
	.byte		N24   , As3 , v056
	.byte		N48   , An4 
	.byte	W24
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
mus_requiem_fire_emblem_1_010:
	.byte		N12   , As3 , v056
	.byte		N48   , Fn4 
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , En4 
	.byte	W24
	.byte		        An4 
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_requiem_fire_emblem_1_011:
	.byte		N12   , An3 , v056
	.byte		N48   , Gn4 
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , En4 
	.byte	W24
	.byte		N12   , Cn4 
	.byte		N24   , Fn4 
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_requiem_fire_emblem_1_012:
	.byte		N12   , An3 , v056
	.byte		N36   , En4 
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte		N24   , Gn4 
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_requiem_fire_emblem_1_013:
	.byte		N12   , Gn3 , v056
	.byte		N48   , Fn4 
	.byte	W12
	.byte		N12   , As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Dn4 
	.byte		N24   , En4 
	.byte	W12
	.byte		N12   , As3 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
mus_requiem_fire_emblem_1_014:
	.byte		N12   , Gn3 , v056
	.byte		N36   , Dn4 
	.byte	W12
	.byte		N12   , As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Dn4 
	.byte		N24   , Fn4 
	.byte	W12
	.byte		N12   , As3 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_requiem_fire_emblem_1_015:
	.byte		N12   , En3 , v056
	.byte		N48   , En4 
	.byte	W12
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte		N24   , Dn4 
	.byte	W12
	.byte		N12   , Gs3 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_requiem_fire_emblem_1_016:
	.byte		N12   , An2 , v056
	.byte		N48   , Cs4 
	.byte	W12
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_requiem_fire_emblem_1_017:
	.byte		N12   , Gn4 , v056
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
mus_requiem_fire_emblem_1_018:
	.byte		N12   , Dn4 , v056
	.byte		N24   , Fn4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		        Dn4 
	.byte		N24   , Fn4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		        En4 
	.byte		N24   , Gn4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_018
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_018
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_018
@ 022   ----------------------------------------
mus_requiem_fire_emblem_1_022:
	.byte		N12   , Fn4 , v056
	.byte		N24   , An4 
	.byte	W12
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fn4 
	.byte		N24   , An4 
	.byte	W12
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fn4 
	.byte		N24   , An4 
	.byte	W12
	.byte		N12   , As3 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
mus_requiem_fire_emblem_1_023:
	.byte		N12   , Fn4 , v056
	.byte		N24   , An4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fn4 
	.byte		N24   , Gn4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fn4 
	.byte		N24   , An4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
mus_requiem_fire_emblem_1_024:
	.byte		N12   , Fn4 , v056
	.byte		N24   , An4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		        En4 
	.byte		N24   , Gn4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Fn4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_requiem_fire_emblem_1_025:
	.byte		N12   , Cs4 , v056
	.byte		N24   , En4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		N12   
	.byte		N24   , Cs4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		        Cs4 
	.byte		N24   , En4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte		        Dn3 
	.byte		N48   , Fn4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        An4 
	.byte	W24
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_002
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_003
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_004
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_005
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_006
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_007
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_008
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_009
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_010
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_011
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_012
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_013
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_014
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_015
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_016
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_017
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_018
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_018
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_018
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_018
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_022
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_023
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_024
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_1_025
	.byte	GOTO
	 .word	mus_requiem_fire_emblem_1_B1
mus_requiem_fire_emblem_1_B2:
@ 051   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_requiem_fire_emblem_2:
	.byte	KEYSH , mus_requiem_fire_emblem_key+0
mus_requiem_fire_emblem_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 94*mus_requiem_fire_emblem_mvl/mxv
	.byte		PAN   , c_v+16
	.byte	W72
@ 001   ----------------------------------------
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
	.byte	W72
@ 007   ----------------------------------------
	.byte	W72
@ 008   ----------------------------------------
	.byte		N96   , Dn4 , v060
	.byte	W72
@ 009   ----------------------------------------
mus_requiem_fire_emblem_2_009:
	.byte	W24
	.byte		N24   , En4 , v060
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
	.byte		N96   , En4 
	.byte	W72
@ 011   ----------------------------------------
mus_requiem_fire_emblem_2_011:
	.byte	W24
	.byte		N24   , Fn4 , v060
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
mus_requiem_fire_emblem_2_012:
	.byte		N48   , Fn4 , v060
	.byte	W48
	.byte		N24   , Gn4 
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
mus_requiem_fire_emblem_2_013:
	.byte		N36   , An4 , v060
	.byte	W36
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
mus_requiem_fire_emblem_2_014:
	.byte		N54   , En4 , v060
	.byte	W54
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte	PEND
@ 015   ----------------------------------------
	.byte		N72   , Cs4 
	.byte	W72
@ 016   ----------------------------------------
	.byte		        An4 
	.byte	W72
@ 017   ----------------------------------------
mus_requiem_fire_emblem_2_017:
	.byte		N09   , Dn3 , v060
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W36
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_2_017
@ 019   ----------------------------------------
mus_requiem_fire_emblem_2_019:
	.byte		N09   , Cn3 , v060
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W36
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_2_019
@ 021   ----------------------------------------
mus_requiem_fire_emblem_2_021:
	.byte		N09   , As2 , v060
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W36
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_2_021
@ 023   ----------------------------------------
mus_requiem_fire_emblem_2_023:
	.byte		N09   , An2 , v060
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W36
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_2_023
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
	.byte		N96   , Dn4 , v060
	.byte	W72
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_2_009
@ 035   ----------------------------------------
	.byte		N96   , En4 , v060
	.byte	W72
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_2_011
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_2_012
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_2_013
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_2_014
@ 040   ----------------------------------------
	.byte		N72   , Cs4 , v060
	.byte	W72
@ 041   ----------------------------------------
	.byte		        An4 
	.byte	W72
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_2_017
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_2_017
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_2_019
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_2_019
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_2_021
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_2_021
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_2_023
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_requiem_fire_emblem_2_023
	.byte	GOTO
	 .word	mus_requiem_fire_emblem_2_B1
mus_requiem_fire_emblem_2_B2:
@ 050   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_requiem_fire_emblem:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_requiem_fire_emblem_pri	@ Priority
	.byte	mus_requiem_fire_emblem_rev	@ Reverb.

	.word	mus_requiem_fire_emblem_grp

	.word	mus_requiem_fire_emblem_1
	.word	mus_requiem_fire_emblem_2

	.end
