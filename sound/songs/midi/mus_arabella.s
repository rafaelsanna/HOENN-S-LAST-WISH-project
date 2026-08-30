	.include "MPlayDef.s"

	.equ	mus_arabella_grp, voicegroup_arabella
	.equ	mus_arabella_pri, 0
	.equ	mus_arabella_rev, reverb_set+50
	.equ	mus_arabella_mvl, 100
	.equ	mus_arabella_key, 0
	.equ	mus_arabella_tbs, 1
	.equ	mus_arabella_exg, 1
	.equ	mus_arabella_cmp, 1

	.section .rodata
	.global	mus_arabella
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_arabella_1:
	.byte	KEYSH , mus_arabella_key+0
mus_arabella_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 90*mus_arabella_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_arabella_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N11   , En1 , v108
	.byte	W12
	.byte		N12   
	.byte	W78
	.byte		N05   , Gn0 
	.byte	W06
@ 002   ----------------------------------------
mus_arabella_1_002:
	.byte		N11   , An0 , v108
	.byte	W12
	.byte		N12   
	.byte	W30
	.byte		N05   , En1 
	.byte	W06
	.byte		N11   , Gn0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N17   , An0 
	.byte	W18
	.byte	PEND
@ 003   ----------------------------------------
mus_arabella_1_003:
	.byte		N05   , En1 , v108
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N12   , En1 
	.byte	W54
	.byte		N05   , Gn0 
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_002
@ 005   ----------------------------------------
mus_arabella_1_005:
	.byte		N11   , En1 , v108
	.byte	W12
	.byte		N12   
	.byte	W78
	.byte		N05   , Gn0 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_003
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_002
@ 015   ----------------------------------------
	.byte		N11   , En1 , v108
	.byte	W12
	.byte		N12   
	.byte	W60
	.byte		N12   
	.byte	W18
	.byte		N05   , Gn0 
	.byte	W06
@ 016   ----------------------------------------
mus_arabella_1_016:
	.byte		N11   , An0 , v108
	.byte	W12
	.byte		N12   
	.byte	W30
	.byte		N05   , En1 
	.byte	W06
	.byte		N11   , Gn0 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_arabella_1_017:
	.byte		N05   , Dn1 , v108
	.byte	W06
	.byte		N06   , En1 
	.byte	W90
	.byte	PEND
@ 018   ----------------------------------------
mus_arabella_1_018:
	.byte		N24   , An0 , v108
	.byte	W48
	.byte		        Gn0 
	.byte	W48
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_017
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_018
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_017
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
mus_arabella_1_025:
	.byte		N05   , Dn1 , v108
	.byte	W06
	.byte		N06   , En1 
	.byte	W18
	.byte		N23   , Gn1 
	.byte	W24
	.byte		N05   , Dn1 
	.byte	W06
	.byte		N06   , En1 
	.byte	W18
	.byte		N23   , An1 
	.byte	W24
	.byte	PEND
@ 026   ----------------------------------------
mus_arabella_1_026:
	.byte		N05   , Dn1 , v108
	.byte	W06
	.byte		N06   , En1 
	.byte	W18
	.byte		N23   , Gn1 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		N06   , En1 
	.byte	W18
	.byte		N23   , Bn1 
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_025
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_026
@ 029   ----------------------------------------
mus_arabella_1_029:
	.byte		N05   , Dn1 , v108
	.byte	W06
	.byte		N06   , En1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06   , En1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte	PEND
@ 030   ----------------------------------------
mus_arabella_1_030:
	.byte		N05   , Dn1 , v108
	.byte	W06
	.byte		N06   , En1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   , En1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N23   , Bn1 
	.byte	W24
	.byte	PEND
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_029
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_030
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_005
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_003
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_002
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_003
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_005
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_003
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_002
@ 043   ----------------------------------------
	.byte		N11   , En1 , v108
	.byte	W12
	.byte		N12   
	.byte	W60
	.byte		N05   , Fs1 
	.byte	W06
	.byte		N11   , An0 
	.byte	W12
	.byte		N05   , Gn0 
	.byte	W06
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_016
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_017
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_018
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_017
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_018
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_018
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_017
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_025
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_026
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_025
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_026
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_029
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_030
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_029
@ 060   ----------------------------------------
	.byte		N05   , Dn1 , v108
	.byte	W06
	.byte		N06   , En1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   , En1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N11   , An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 061   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		N05   , An0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   , An0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N11   , En2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 062   ----------------------------------------
mus_arabella_1_062:
	.byte		N11   , An0 , v108
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   , En1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		N11   , An0 
	.byte	W12
	.byte		N05   , En1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte	PEND
@ 063   ----------------------------------------
	.byte		N11   , En1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 064   ----------------------------------------
	.byte		N11   , Gn0 
	.byte	W12
	.byte		N05   , En1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   , En1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
@ 065   ----------------------------------------
mus_arabella_1_065:
	.byte		N11   , Cn1 , v108
	.byte	W12
	.byte		N05   , An0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   , An0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   , An0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_062
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_065
@ 068   ----------------------------------------
	.byte		N05   , Dn1 , v108
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 069   ----------------------------------------
	.byte	W48
@ 070   ----------------------------------------
mus_arabella_1_070:
	.byte		N05   , Dn1 , v108
	.byte	W06
	.byte		N06   , En1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06   , En1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 071   ----------------------------------------
	.byte		        Dn1 
	.byte	W06
	.byte		N06   , En1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06   , En1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_070
@ 073   ----------------------------------------
	.byte		N05   , Dn1 , v108
	.byte	W06
	.byte		N06   , En1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_029
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_030
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_029
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_1_030
@ 078   ----------------------------------------
	.byte		N05   , Dn1 , v108
	.byte	W06
	.byte		N06   , En1 
	.byte	W06
	.byte	GOTO
	 .word	mus_arabella_1_B1
mus_arabella_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_arabella_2:
	.byte	KEYSH , mus_arabella_key+0
mus_arabella_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 62*mus_arabella_mvl/mxv
	.byte		PAN   , c_v-14
	.byte	W24
	.byte		N72   , An3 , v068
	.byte	W72
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
mus_arabella_2_002:
	.byte		N05   , En3 , v068
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W60
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W24
	.byte		N72   , An3 
	.byte	W72
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_002
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_002
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_002
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
mus_arabella_2_016:
	.byte		N05   , An2 , v068
	.byte	W06
	.byte		N18   , Bn2 
	.byte	W90
	.byte	PEND
@ 017   ----------------------------------------
mus_arabella_2_017:
	.byte		N24   , En2 , v068
	.byte	W48
	.byte		        Dn2 
	.byte	W48
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_016
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_017
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_016
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
mus_arabella_2_024:
	.byte		N05   , An2 , v068
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W18
	.byte		N23   , Dn2 
	.byte	W24
	.byte		N05   , An2 
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W18
	.byte		N23   , En2 
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
mus_arabella_2_025:
	.byte		N05   , An2 , v068
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W18
	.byte		N23   , Dn2 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		N06   , Bn1 
	.byte	W18
	.byte		N23   , Fs2 
	.byte	W24
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_024
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_025
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_024
@ 031   ----------------------------------------
	.byte		N05   , An2 , v068
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W18
	.byte		N23   , Dn2 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		N06   , Bn1 
	.byte	W18
	.byte		N24   , Fs2 
	.byte	W24
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_002
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
mus_arabella_2_036:
	.byte		N05   , En3 , v068
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 037   ----------------------------------------
mus_arabella_2_037:
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_037
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_037
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_036
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_037
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_037
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_037
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_016
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_017
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_016
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_017
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_016
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_024
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_025
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_024
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_025
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_024
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_024
@ 059   ----------------------------------------
	.byte		N05   , An2 , v068
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W18
	.byte		N23   , Dn2 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		N06   , Bn1 
	.byte	W18
	.byte		N11   , En2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 060   ----------------------------------------
mus_arabella_2_060:
	.byte		N05   , Cn3 , v068
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 061   ----------------------------------------
mus_arabella_2_061:
	.byte		N05   , An2 , v068
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 062   ----------------------------------------
	.byte		        En3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 063   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_060
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_061
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_060
@ 067   ----------------------------------------
	.byte		N05   , Dn3 , v068
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 068   ----------------------------------------
	.byte	W48
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_024
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_025
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_024
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_2_025
@ 077   ----------------------------------------
	.byte		N05   , An2 , v068
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W06
	.byte	GOTO
	 .word	mus_arabella_2_B1
mus_arabella_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_arabella_3:
	.byte	KEYSH , mus_arabella_key+0
mus_arabella_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 108*mus_arabella_mvl/mxv
	.byte		PAN   , c_v+14
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
@ 008   ----------------------------------------
	.byte	W96
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
mus_arabella_3_016:
	.byte		N05   , An2 , v096
	.byte	W06
	.byte		N18   , Bn2 
	.byte	W90
	.byte	PEND
@ 017   ----------------------------------------
	.byte		N24   , En3 
	.byte	W48
	.byte		        Dn3 
	.byte	W48
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_016
@ 019   ----------------------------------------
	.byte		N24   , En3 , v096
	.byte	W48
	.byte		        Dn3 
	.byte	W48
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_016
@ 021   ----------------------------------------
	.byte		N24   , En3 , v096
	.byte	W48
	.byte		        Dn3 
	.byte	W48
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_016
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
mus_arabella_3_024:
	.byte		N05   , An2 , v096
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W18
	.byte		N23   , Dn3 
	.byte	W24
	.byte		N05   , An2 
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W18
	.byte		N23   , En3 
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
mus_arabella_3_025:
	.byte		N05   , An2 , v096
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W18
	.byte		N23   , Dn3 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W18
	.byte		N23   , Fs3 
	.byte	W24
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_024
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_025
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_024
@ 031   ----------------------------------------
	.byte		N05   , An2 , v096
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W18
	.byte		N23   , Dn3 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W18
	.byte		N24   , Fs3 
	.byte	W24
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_016
@ 045   ----------------------------------------
	.byte		N24   , En3 , v096
	.byte	W48
	.byte		        Dn3 
	.byte	W48
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_016
@ 047   ----------------------------------------
	.byte		N24   , En3 , v096
	.byte	W48
	.byte		        Dn3 
	.byte	W48
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_016
@ 049   ----------------------------------------
	.byte		N24   , En3 , v096
	.byte	W48
	.byte		        Dn3 
	.byte	W48
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_016
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_024
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_025
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_024
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_025
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_024
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_024
@ 059   ----------------------------------------
	.byte		N05   , An2 , v096
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W18
	.byte		N23   , Dn3 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W18
	.byte		N11   , En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 060   ----------------------------------------
mus_arabella_3_060:
	.byte		N05   , En3 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 061   ----------------------------------------
mus_arabella_3_061:
	.byte		N05   , An2 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_060
@ 063   ----------------------------------------
	.byte		N05   , Gn2 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_060
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_061
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_060
@ 067   ----------------------------------------
	.byte		N05   , Dn3 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 068   ----------------------------------------
	.byte	W48
@ 069   ----------------------------------------
	.byte		N03   , An3 
	.byte	W06
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N03   , An3 
	.byte	W06
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N03   , An3 
	.byte	W06
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N03   , An3 
	.byte	W06
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N03   , An3 
	.byte	W06
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N03   , An3 
	.byte	W06
@ 070   ----------------------------------------
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N03   , An3 
	.byte	W06
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N11   , En3 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N05   , Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 071   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N05   , An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 072   ----------------------------------------
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N05   , Gn3 
	.byte	W06
@ 073   ----------------------------------------
	.byte		        En3 
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W18
	.byte		N23   , Dn3 
	.byte	W24
	.byte		N05   , An2 
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W18
	.byte		N23   , En3 
	.byte	W24
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_025
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_024
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_3_025
@ 077   ----------------------------------------
	.byte		N05   , An2 , v096
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W06
	.byte	GOTO
	 .word	mus_arabella_3_B1
mus_arabella_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_arabella_4:
	.byte	KEYSH , mus_arabella_key+0
mus_arabella_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 96*mus_arabella_mvl/mxv
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W24
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W24
@ 001   ----------------------------------------
mus_arabella_4_001:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs1 
	.byte	W24
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_arabella_4_002:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W24
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_002
@ 015   ----------------------------------------
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs1 
	.byte	W24
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 016   ----------------------------------------
mus_arabella_4_016:
	.byte		N01   , Dn1 , v068
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_arabella_4_017:
	.byte		N01   , An1 , v068
	.byte	W01
	.byte		        Gs1 
	.byte		N01   , An1 
	.byte	W11
	.byte		        Gs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W10
	.byte		        An1 
	.byte	W02
	.byte		        Gn1 
	.byte		N01   , Gs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_016
@ 019   ----------------------------------------
	.byte		N01   , An1 , v068
	.byte	W01
	.byte		        Gs1 
	.byte		N01   , An1 
	.byte	W11
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte		N01   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N01   , Gs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W01
	.byte		N01   
	.byte		N01   , Gs1 
	.byte	W11
	.byte		N01   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N01   
	.byte		N01   , Gs1 
	.byte	W12
	.byte		        Gn1 
	.byte		N01   , An1 
	.byte	W12
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_016
@ 021   ----------------------------------------
	.byte		N01   , An1 , v068
	.byte	W01
	.byte		        Gs1 
	.byte		N01   , An1 
	.byte	W11
	.byte		        Gs1 
	.byte		N01   , An1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Gs1 
	.byte		N01   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte		N01   , Gs1 
	.byte	W12
	.byte		        Gn1 
	.byte		N01   , Gs1 
	.byte	W12
	.byte		N01   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N01   
	.byte		N01   , Gs1 
	.byte	W12
	.byte		        Gn1 
	.byte		N01   , Gs1 
	.byte	W12
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_016
@ 023   ----------------------------------------
mus_arabella_4_023:
	.byte		N01   , Gs1 , v068
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte	PEND
@ 024   ----------------------------------------
mus_arabella_4_024:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Cs2 
	.byte	W06
	.byte		        Cn1 
	.byte	W18
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W24
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W06
	.byte		        Cn1 
	.byte	W18
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
mus_arabella_4_025:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Cs2 
	.byte	W06
	.byte		        Cn1 
	.byte	W18
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W18
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_024
@ 027   ----------------------------------------
	.byte		N01   , Cn1 , v068
	.byte		N01   , Cs2 
	.byte	W06
	.byte		        Cn1 
	.byte	W18
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W18
	.byte		        Dn1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
@ 028   ----------------------------------------
mus_arabella_4_028:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte	PEND
@ 029   ----------------------------------------
mus_arabella_4_029:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_028
@ 031   ----------------------------------------
mus_arabella_4_031:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte	PEND
@ 032   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W24
	.byte		        Dn1 
	.byte		N01   , Fs1 
	.byte	W24
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_002
@ 035   ----------------------------------------
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs1 
	.byte	W24
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W18
	.byte		        Dn1 
	.byte	W06
@ 036   ----------------------------------------
	.byte		N01   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Fs1 
	.byte	W24
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W24
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_001
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_016
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_017
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_016
@ 047   ----------------------------------------
	.byte		N01   , An1 , v068
	.byte	W01
	.byte		        Gs1 
	.byte		N01   , An1 
	.byte	W11
	.byte		        Gs1 
	.byte		N01   , An1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gn1 
	.byte		N01   , Gs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W01
	.byte		        Cn1 
	.byte		N01   , Gs1 
	.byte	W11
	.byte		N01   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N01   
	.byte		N01   , Gs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W01
	.byte		N01   
	.byte		N01   , Gs1 
	.byte	W11
@ 048   ----------------------------------------
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Gs1 
	.byte	W12
	.byte		N01   
	.byte		N01   , An1 
	.byte	W12
	.byte		        Gs1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
@ 049   ----------------------------------------
	.byte		N01   
	.byte		N01   , Gs1 
	.byte	W12
	.byte		N01   
	.byte		N01   , An1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Gs1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Gs1 
	.byte	W04
	.byte		        Dn1 
	.byte	W04
	.byte		N01   
	.byte	W04
	.byte		        Gs1 
	.byte		N01   , Bn1 
	.byte	W12
	.byte		        Gs1 
	.byte		N01   , An1 
	.byte	W04
	.byte		N01   
	.byte	W04
	.byte		N01   
	.byte	W04
	.byte		        Gn1 
	.byte		N01   , Gs1 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		N01   
	.byte	W04
	.byte		        Gs1 
	.byte		N01   , An1 
	.byte	W04
	.byte		N01   
	.byte	W04
	.byte		N01   
	.byte	W04
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_016
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_023
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_024
@ 053   ----------------------------------------
	.byte		N01   , Cn1 , v068
	.byte		N01   , Cs2 
	.byte	W06
	.byte		        Cn1 
	.byte	W18
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W18
	.byte		        Dn1 
	.byte	W06
	.byte		N01   
	.byte		N01   , Cs2 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_024
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_025
@ 056   ----------------------------------------
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Fn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
@ 057   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Fn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_031
@ 059   ----------------------------------------
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
@ 060   ----------------------------------------
mus_arabella_4_060:
	.byte		N01   , Dn1 , v068
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        As1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        As1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte	PEND
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_060
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_060
@ 063   ----------------------------------------
	.byte		N01   , Dn1 , v068
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        As1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Gn1 
	.byte		N01   , Fs2 
	.byte	W06
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_060
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_060
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_060
@ 067   ----------------------------------------
	.byte		N01   , Dn1 , v068
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        As1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        As1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
@ 068   ----------------------------------------
	.byte		        Dn1 
	.byte	W04
	.byte		N01   
	.byte	W04
	.byte		N01   
	.byte	W04
	.byte		N01   
	.byte	W04
	.byte		N01   
	.byte	W04
	.byte		N01   
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Dn1 
	.byte	W04
	.byte		N01   
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		N01   
	.byte	W04
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_028
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_029
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_028
@ 072   ----------------------------------------
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Gn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Gn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
@ 073   ----------------------------------------
mus_arabella_4_073:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte	PEND
@ 074   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W06
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_073
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_arabella_4_073
@ 077   ----------------------------------------
	.byte		N01   , Cn1 , v068
	.byte		N01   , Cs2 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W06
	.byte	GOTO
	 .word	mus_arabella_4_B1
mus_arabella_4_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_arabella:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_arabella_pri	@ Priority
	.byte	mus_arabella_rev	@ Reverb.

	.word	mus_arabella_grp

	.word	mus_arabella_1
	.word	mus_arabella_2
	.word	mus_arabella_3
	.word	mus_arabella_4

	.end
