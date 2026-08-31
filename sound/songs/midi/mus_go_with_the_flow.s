	.include "MPlayDef.s"

	.equ	mus_go_with_the_flow_grp, voicegroup_hlw_rock_metal
	.equ	mus_go_with_the_flow_pri, 0
	.equ	mus_go_with_the_flow_rev, reverb_set+25
	.equ	mus_go_with_the_flow_mvl, 99
	.equ	mus_go_with_the_flow_key, 0
	.equ	mus_go_with_the_flow_tbs, 1
	.equ	mus_go_with_the_flow_exg, 1
	.equ	mus_go_with_the_flow_cmp, 1

	.section .rodata
	.global	mus_go_with_the_flow
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_go_with_the_flow_1:
	.byte	KEYSH , mus_go_with_the_flow_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 159*mus_go_with_the_flow_tbs/2
	.byte		VOICE , 30
	.byte		VOL   , 127*mus_go_with_the_flow_mvl/mxv
	.byte		N12   , En1 , v096
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
@ 002   ----------------------------------------
mus_go_with_the_flow_1_002:
	.byte		N12   , En1 , v096
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_go_with_the_flow_1_003:
	.byte		N12   , Cn2 , v096
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_go_with_the_flow_1_004:
	.byte		N12   , An1 , v096
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 036   ----------------------------------------
mus_go_with_the_flow_1_036:
	.byte		N12   , Dn2 , v096
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_036
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_036
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_036
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_004
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_004
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_004
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_004
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_004
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_004
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_036
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_036
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_036
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_036
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 099   ----------------------------------------
	.byte	TEMPO , 162*mus_go_with_the_flow_tbs/2
	.byte		N12   , Cn2 , v096
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_036
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_036
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_036
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_036
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_036
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_003
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_036
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_1_002
@ 122   ----------------------------------------
	.byte		N12   , En1 , v096
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_go_with_the_flow_2:
	.byte	KEYSH , mus_go_with_the_flow_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 30
	.byte		VOL   , 127*mus_go_with_the_flow_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W36
	.byte		N12   , En3 , v096
	.byte	W12
	.byte		N18   , En4 
	.byte	W18
	.byte		N06   , En4 , v116
	.byte	W06
	.byte		N12   , Fs4 , v096
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 003   ----------------------------------------
	.byte	W48
	.byte		N48   
	.byte	W48
@ 004   ----------------------------------------
	.byte		N96   , Bn3 
	.byte	W96
@ 005   ----------------------------------------
mus_go_with_the_flow_2_005:
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Bn3 
	.byte	W36
	.byte	PEND
@ 006   ----------------------------------------
	.byte	W36
	.byte		N12   , En3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W24
	.byte		N12   
	.byte	W12
@ 007   ----------------------------------------
	.byte	W72
	.byte		N24   , En4 
	.byte	W24
@ 008   ----------------------------------------
	.byte		        An4 
	.byte	W96
@ 009   ----------------------------------------
	.byte		N24   
	.byte	W72
	.byte		N12   , Bn4 , v108
	.byte	W24
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_2_005
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte		N96   , Gn4 , v096
	.byte	W96
@ 019   ----------------------------------------
	.byte		        Bn3 
	.byte	W96
@ 020   ----------------------------------------
	.byte		        En4 
	.byte	W96
@ 021   ----------------------------------------
	.byte	W84
	.byte		N12   , En4 , v116
	.byte	W12
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte		N96   , Cn4 , v096
	.byte	W96
@ 027   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 028   ----------------------------------------
	.byte		        Bn3 
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
	.byte		        En4 , v088
	.byte	W96
@ 035   ----------------------------------------
	.byte		        Dn4 
	.byte	W96
@ 036   ----------------------------------------
	.byte		        Bn3 
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte		        En4 
	.byte	W96
@ 039   ----------------------------------------
	.byte		        Dn4 
	.byte	W96
@ 040   ----------------------------------------
	.byte		        Bn3 
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte		        En4 
	.byte	W96
@ 043   ----------------------------------------
	.byte		        Dn4 
	.byte	W96
@ 044   ----------------------------------------
	.byte		        Bn3 
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte		        En4 
	.byte	W96
@ 047   ----------------------------------------
	.byte		        Dn4 
	.byte	W96
@ 048   ----------------------------------------
	.byte		        Bn3 
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W84
	.byte		N12   , En3 , v096
	.byte	W12
@ 053   ----------------------------------------
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N48   , Gs3 
	.byte	W60
@ 054   ----------------------------------------
	.byte		N96   , Gn3 
	.byte	W96
@ 055   ----------------------------------------
	.byte		        Fs3 
	.byte	W96
@ 056   ----------------------------------------
	.byte		        En3 
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte		        Gn4 
	.byte	W96
@ 063   ----------------------------------------
	.byte		        Bn3 
	.byte	W96
@ 064   ----------------------------------------
	.byte		N48   , En4 
	.byte	W72
	.byte		N12   , En4 , v116
	.byte	W12
	.byte		        En3 , v096
	.byte	W12
@ 065   ----------------------------------------
	.byte		N24   , As3 
	.byte	W36
	.byte		N12   , An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 066   ----------------------------------------
	.byte		N96   , En2 
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte		        En3 , v088
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte		        Gn4 , v096
	.byte	W96
@ 079   ----------------------------------------
	.byte		        Fs4 
	.byte	W96
@ 080   ----------------------------------------
	.byte		        En4 
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte		        En4 , v088
	.byte	W96
@ 083   ----------------------------------------
	.byte		        Dn4 
	.byte	W96
@ 084   ----------------------------------------
	.byte		        Bn3 
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte		        En4 
	.byte	W96
@ 087   ----------------------------------------
	.byte		        Dn4 
	.byte	W96
@ 088   ----------------------------------------
	.byte		        Bn3 
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte		        En4 
	.byte	W96
@ 091   ----------------------------------------
	.byte		        Dn4 
	.byte	W96
@ 092   ----------------------------------------
	.byte		        Bn3 
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte		        En4 
	.byte	W96
@ 095   ----------------------------------------
	.byte		        Dn4 
	.byte	W96
@ 096   ----------------------------------------
	.byte		        Bn3 
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte		        Gn4 , v096
	.byte	W96
@ 099   ----------------------------------------
	.byte		        Bn3 
	.byte	W96
@ 100   ----------------------------------------
	.byte		        En4 
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte		        Gn4 
	.byte	W96
@ 103   ----------------------------------------
	.byte		        Bn3 
	.byte	W96
@ 104   ----------------------------------------
	.byte		        En4 
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte		        Gn4 
	.byte	W96
@ 107   ----------------------------------------
	.byte		        An4 
	.byte	W96
@ 108   ----------------------------------------
	.byte		        Gs4 
	.byte	W96
@ 109   ----------------------------------------
	.byte	W96
@ 110   ----------------------------------------
	.byte		        Gn4 
	.byte	W96
@ 111   ----------------------------------------
	.byte		        An4 
	.byte	W96
@ 112   ----------------------------------------
	.byte		        Gs4 
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte		        Gn4 
	.byte	W96
@ 115   ----------------------------------------
	.byte		        An4 
	.byte	W96
@ 116   ----------------------------------------
	.byte		        Gs4 
	.byte	W96
@ 117   ----------------------------------------
	.byte	W96
@ 118   ----------------------------------------
	.byte		        Gn4 
	.byte	W96
@ 119   ----------------------------------------
	.byte		        An4 
	.byte	W96
@ 120   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 121   ----------------------------------------
	.byte	W60
	.byte	FINE

@**************** Track 3 (Midi-Chn.5) ****************@

mus_go_with_the_flow_3:
	.byte	KEYSH , mus_go_with_the_flow_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 118*mus_go_with_the_flow_mvl/mxv
	.byte		N12   , En0 , v104
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
@ 001   ----------------------------------------
mus_go_with_the_flow_3_001:
	.byte		N12   , En0 , v104
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
	.byte	PEND
@ 002   ----------------------------------------
mus_go_with_the_flow_3_002:
	.byte		N12   , Cn1 , v104
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
	.byte	PEND
@ 003   ----------------------------------------
mus_go_with_the_flow_3_003:
	.byte		N12   , An0 , v104
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
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 007   ----------------------------------------
mus_go_with_the_flow_3_007:
	.byte		N12   , An0 , v104
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
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_go_with_the_flow_3_008:
	.byte		N12   , En1 , v104
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
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_008
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_008
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_008
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_007
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_008
@ 025   ----------------------------------------
mus_go_with_the_flow_3_025:
	.byte		N12   , En1 , v104
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 034   ----------------------------------------
mus_go_with_the_flow_3_034:
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N48   , Cn1 
	.byte	W48
	.byte	PEND
@ 035   ----------------------------------------
mus_go_with_the_flow_3_035:
	.byte		N12   , An1 , v104
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_034
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_035
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_034
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_034
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_035
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_007
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_008
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_007
@ 060   ----------------------------------------
	.byte		N12   , En1 , v104
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 061   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_003
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_003
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_008
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_008
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_003
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_003
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_008
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_003
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_034
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_035
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_034
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_035
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_034
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_035
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_034
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_035
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 099   ----------------------------------------
mus_go_with_the_flow_3_099:
	.byte		N12   , Dn1 , v104
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
	.byte	PEND
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_008
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_008
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_099
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_008
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_008
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_099
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_008
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_008
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_099
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_008
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_008
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_099
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_008
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_008
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_002
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_099
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_3_001
@ 121   ----------------------------------------
	.byte		N12   , En1 , v104
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	FINE

@**************** Track 4 (Midi-Chn.7) ****************@

mus_go_with_the_flow_4:
	.byte	KEYSH , mus_go_with_the_flow_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 82*mus_go_with_the_flow_mvl/mxv
	.byte		N12   , En3 , v060
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
@ 001   ----------------------------------------
mus_go_with_the_flow_4_001:
	.byte		N12   , En3 , v060
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_4_001
@ 121   ----------------------------------------
	.byte		N12   , En3 , v060
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_go_with_the_flow_5:
	.byte	KEYSH , mus_go_with_the_flow_key+0
@ 000   ----------------------------------------
	.byte		VOL   , 120*mus_go_with_the_flow_mvl/mxv
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Dn1 , v084
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Dn1 , v084
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
@ 001   ----------------------------------------
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Dn1 , v084
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v104
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An1 , v088
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
@ 002   ----------------------------------------
mus_go_with_the_flow_5_002:
	.byte		N12   , Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte		N12   , An2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v104
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v104
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_go_with_the_flow_5_003:
	.byte		N12   , Dn1 , v104
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v104
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v104
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_go_with_the_flow_5_004:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_go_with_the_flow_5_005:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_go_with_the_flow_5_006:
	.byte		N12   , Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v104
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v104
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte		        Dn1 , v104
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v104
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v104
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v104
	.byte	W12
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_006
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_006
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_006
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_006
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_004
@ 033   ----------------------------------------
	.byte		N12   , Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , An2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
@ 034   ----------------------------------------
mus_go_with_the_flow_5_034:
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Gn1 , v088
	.byte		N12   , An1 
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , An2 , v072
	.byte	W36
	.byte		        Cn1 , v096
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
mus_go_with_the_flow_5_035:
	.byte		N12   , Dn1 , v104
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Gn1 , v088
	.byte		N12   , An1 
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , An2 , v072
	.byte	W24
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v104
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
mus_go_with_the_flow_5_036:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Dn1 , v084
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Dn1 , v084
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_go_with_the_flow_5_037:
	.byte		N12   , Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Dn1 , v084
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Dn1 , v084
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , As1 , v068
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_034
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_035
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_036
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_037
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_034
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_036
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_037
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_034
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_035
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_036
@ 049   ----------------------------------------
	.byte		N12   , Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Dn1 , v084
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , As1 , v068
	.byte	W12
	.byte		N06   , Dn1 , v104
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 , v068
	.byte		N06   , An1 , v080
	.byte	W06
	.byte		        An1 , v088
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_005
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_006
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_003
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_004
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_005
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_006
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_005
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_006
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_003
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_004
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_005
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_006
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_003
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_004
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_005
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_006
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_003
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_004
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_005
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_006
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_003
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_004
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_005
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_006
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_003
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_004
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_005
@ 082   ----------------------------------------
mus_go_with_the_flow_5_082:
	.byte		N12   , Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Gn1 , v088
	.byte		N12   , An1 
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , An2 , v072
	.byte	W36
	.byte		        Cn1 , v096
	.byte	W12
	.byte	PEND
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_035
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_036
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_037
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_082
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_035
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_036
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_037
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_082
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_035
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_036
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_037
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_082
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_035
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_036
@ 097   ----------------------------------------
	.byte		N12   , Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Dn1 , v084
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		N06   , Dn1 , v104
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 098   ----------------------------------------
mus_go_with_the_flow_5_098:
	.byte		N12   , Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Dn1 , v084
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Dn1 , v084
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_098
@ 100   ----------------------------------------
	.byte		N12   , Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Dn1 , v084
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Dn1 , v084
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		N12   
	.byte	W12
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_098
@ 102   ----------------------------------------
mus_go_with_the_flow_5_102:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Dn1 , v084
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Dn1 , v084
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_102
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_102
@ 105   ----------------------------------------
	.byte		N12   , Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Dn1 , v084
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		N06   , Dn1 , v104
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_102
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_102
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_102
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_098
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_102
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_102
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_102
@ 113   ----------------------------------------
	.byte		N12   , Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Dn1 , v084
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		N06   , Dn1 , v104
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_102
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_102
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_102
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_098
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_102
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_102
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_go_with_the_flow_5_036
@ 121   ----------------------------------------
	.byte		N12   , Dn1 , v092
	.byte		N12   , An2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , An2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , An2 , v072
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

mus_go_with_the_flow:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_go_with_the_flow_pri	@ Priority
	.byte	mus_go_with_the_flow_rev	@ Reverb.

	.word	mus_go_with_the_flow_grp

	.word	mus_go_with_the_flow_1
	.word	mus_go_with_the_flow_2
	.word	mus_go_with_the_flow_3
	.word	mus_go_with_the_flow_4
	.word	mus_go_with_the_flow_5

	.end
