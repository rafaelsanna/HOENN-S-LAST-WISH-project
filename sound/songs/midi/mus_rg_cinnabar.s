	.include "MPlayDef.s"

	.equ	mus_rg_cinnabar_grp, voicegroup_rg_cinnabar
	.equ	mus_rg_cinnabar_pri, 0
	.equ	mus_rg_cinnabar_rev, reverb_set+50
	.equ	mus_rg_cinnabar_mvl, 100
	.equ	mus_rg_cinnabar_key, 0
	.equ	mus_rg_cinnabar_tbs, 1
	.equ	mus_rg_cinnabar_exg, 1
	.equ	mus_rg_cinnabar_cmp, 1

	.section .rodata
	.global	mus_rg_cinnabar
	.align	2

@**************** Track 1 (Midi-Chn.2) ****************@

mus_rg_cinnabar_1:
	.byte	KEYSH , mus_rg_cinnabar_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 140*mus_rg_cinnabar_tbs/2
	.byte		VOICE , 127
	.byte		PAN   , c_v-44
	.byte		VOL   , 100*mus_rg_cinnabar_mvl/mxv
	.byte		        100*mus_rg_cinnabar_mvl/mxv
	.byte		        100*mus_rg_cinnabar_mvl/mxv
	.byte		        100*mus_rg_cinnabar_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N24   , Gn4 , v076
	.byte	W24
	.byte		N12   
	.byte	W36
	.byte	W03
	.byte		N02   , Fn4 , v068
	.byte	W03
	.byte		        Fn4 , v060
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Fn4 , v076
	.byte	W13
	.byte		N11   
	.byte	W11
@ 002   ----------------------------------------
	.byte	W01
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		N11   
	.byte	W12
	.byte		N16   
	.byte	W48
@ 003   ----------------------------------------
mus_rg_cinnabar_1_003:
	.byte	W24
	.byte		N12   , Fn4 , v080
	.byte	W13
	.byte		N11   , Fn4 , v076
	.byte	W11
	.byte		N11   
	.byte	W13
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte		N17   
	.byte	W72
	.byte		N12   , Fn4 , v080
	.byte	W12
	.byte		N11   , Fn4 , v076
	.byte	W12
@ 005   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N16   
	.byte	W48
@ 006   ----------------------------------------
mus_rg_cinnabar_1_006:
	.byte	W24
	.byte		N12   , Fn4 , v080
	.byte	W13
	.byte		N11   , Fn4 , v076
	.byte	W11
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte		N17   
	.byte	W72
	.byte		N12   , Fn4 , v080
	.byte	W13
	.byte		N11   , Fn4 , v076
	.byte	W11
@ 008   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N11   
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte		N11   
	.byte	W13
	.byte		N15   
	.byte	W44
	.byte	W03
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_003
@ 010   ----------------------------------------
	.byte	W01
	.byte		N16   , Fn4 , v076
	.byte	W68
	.byte	W03
	.byte		N12   , Fn4 , v080
	.byte	W13
	.byte		N11   , Fn4 , v076
	.byte	W11
@ 011   ----------------------------------------
	.byte		N11   
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N17   
	.byte	W48
@ 012   ----------------------------------------
	.byte	W24
	.byte		N12   , Fn4 , v080
	.byte	W13
	.byte		N11   , Fn4 , v076
	.byte	W11
	.byte		N12   
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte		N03   
	.byte	W03
	.byte		N02   , Fn4 , v060
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N01   , Fn4 , v076
	.byte	W12
@ 013   ----------------------------------------
mus_rg_cinnabar_1_013:
	.byte		N36   , Fn4 , v076
	.byte	W72
	.byte		N12   , Fn4 , v080
	.byte	W13
	.byte		N11   , Fn4 , v076
	.byte	W11
	.byte	PEND
@ 014   ----------------------------------------
mus_rg_cinnabar_1_014:
	.byte	W01
	.byte		N11   , Fn4 , v076
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N36   
	.byte	W48
	.byte	PEND
@ 015   ----------------------------------------
	.byte	W24
	.byte		N12   , Fn4 , v080
	.byte	W13
	.byte		N11   , Fn4 , v076
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_013
@ 017   ----------------------------------------
	.byte		N11   , Fn4 , v076
	.byte	W13
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W48
@ 018   ----------------------------------------
mus_rg_cinnabar_1_018:
	.byte	W24
	.byte		N12   , Fn4 , v080
	.byte	W13
	.byte		N11   , Fn4 , v076
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_013
@ 020   ----------------------------------------
	.byte		N11   , Fn4 , v076
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte		N36   
	.byte	W48
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_018
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_013
@ 023   ----------------------------------------
	.byte	W01
	.byte		N11   , Fn4 , v076
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		N12   
	.byte	W12
	.byte		N36   
	.byte	W48
@ 024   ----------------------------------------
	.byte	W24
	.byte		N12   , Fn4 , v080
	.byte	W13
	.byte		N11   , Fn4 , v076
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		N06   
	.byte	W06
	.byte		N05   , Fn4 , v060
	.byte	W06
	.byte		N01   , Fn4 , v076
	.byte		N05   , Fn4 , v060
	.byte	W06
	.byte		N05   
	.byte	W06
@ 025   ----------------------------------------
	.byte		N01   , Fn4 , v076
	.byte	W60
	.byte	W03
	.byte		N02   , Fn4 , v068
	.byte	W03
	.byte		        Fn4 , v060
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Fn4 , v076
	.byte	W13
	.byte		N11   
	.byte	W11
@ 026   ----------------------------------------
	.byte	W01
	.byte		N11   
	.byte	W23
mus_rg_cinnabar_1_B1:
	.byte	W24
	.byte		N24   , Fn4 , v076
	.byte	W48
@ 027   ----------------------------------------
mus_rg_cinnabar_1_027:
	.byte	W15
	.byte		N02   , Fn4 , v068
	.byte	W03
	.byte		        Fn4 , v060
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Fn4 , v076
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte		N11   
	.byte	W48
	.byte	PEND
@ 028   ----------------------------------------
mus_rg_cinnabar_1_028:
	.byte		N24   , Fn4 , v076
	.byte	W60
	.byte	W03
	.byte		N02   , Fn4 , v068
	.byte	W03
	.byte		        Fn4 , v060
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N03   , Fn4 , v076
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	PEND
@ 029   ----------------------------------------
mus_rg_cinnabar_1_029:
	.byte	W01
	.byte		N11   , Fn4 , v076
	.byte	W44
	.byte	W03
	.byte		N24   
	.byte	W48
	.byte	PEND
@ 030   ----------------------------------------
mus_rg_cinnabar_1_030:
	.byte	W15
	.byte		N02   , Fn4 , v068
	.byte	W03
	.byte		        Fn4 , v060
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N03   , Fn4 , v076
	.byte	W13
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W44
	.byte	W03
	.byte	PEND
@ 031   ----------------------------------------
	.byte		N24   
	.byte	W60
	.byte	W03
	.byte		N02   , Fn4 , v068
	.byte	W03
	.byte		        Fn4 , v060
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N03   , Fn4 , v076
	.byte	W12
	.byte		N11   
	.byte	W12
@ 032   ----------------------------------------
	.byte		N11   
	.byte	W48
	.byte		N24   
	.byte	W48
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_027
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_028
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_029
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_030
@ 037   ----------------------------------------
	.byte		N24   , Fn4 , v076
	.byte	W54
	.byte	W01
	.byte		N05   , Gn4 , v068
	.byte	W06
	.byte		        Gn4 , v060
	.byte	W05
	.byte		N05   
	.byte	W06
	.byte		N07   , Gn4 , v076
	.byte	W24
@ 038   ----------------------------------------
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N23   
	.byte	W12
@ 039   ----------------------------------------
mus_rg_cinnabar_1_039:
	.byte	W12
	.byte		N11   , Gn4 , v076
	.byte	W12
	.byte		N24   , Gn4 , v080
	.byte	W24
	.byte	W01
	.byte		N11   , Gn4 , v076
	.byte	W12
	.byte		N23   
	.byte	W23
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
mus_rg_cinnabar_1_040:
	.byte		N23   , Gn4 , v076
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N24   , Gn4 , v080
	.byte	W24
	.byte	PEND
@ 041   ----------------------------------------
	.byte		N11   , Gn4 , v076
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W12
@ 042   ----------------------------------------
mus_rg_cinnabar_1_042:
	.byte	W12
	.byte		N11   , Gn4 , v076
	.byte	W12
	.byte		N24   , Gn4 , v080
	.byte	W24
	.byte		N11   , Gn4 , v076
	.byte	W13
	.byte		N23   
	.byte	W23
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 043   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N24   , Gn4 , v080
	.byte	W24
@ 044   ----------------------------------------
	.byte		N11   , Gn4 , v076
	.byte	W13
	.byte		N23   
	.byte	W23
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W12
@ 045   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N24   , Gn4 , v080
	.byte	W24
	.byte	W01
	.byte		N11   , Gn4 , v076
	.byte	W11
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_040
@ 047   ----------------------------------------
	.byte	W01
	.byte		N11   , Gn4 , v076
	.byte	W12
	.byte		N23   
	.byte	W23
	.byte		N12   
	.byte	W60
@ 048   ----------------------------------------
	.byte	W24
	.byte		N36   , Gn4 , v080
	.byte	W36
	.byte		N32   , Gn4 , v076, gtp3
	.byte	W36
@ 049   ----------------------------------------
mus_rg_cinnabar_1_049:
	.byte		N36   , Gn4 , v076
	.byte	W72
	.byte		N12   , Fn4 , v080
	.byte	W13
	.byte		N11   , Fn4 , v076
	.byte	W11
	.byte	PEND
@ 050   ----------------------------------------
mus_rg_cinnabar_1_050:
	.byte	W01
	.byte		N11   , Fn4 , v076
	.byte	W30
	.byte		N05   , Fn4 , v060
	.byte	W06
	.byte		N05   
	.byte	W05
	.byte		N05   
	.byte	W06
	.byte		N07   , Fn4 , v076
	.byte	W48
	.byte	PEND
@ 051   ----------------------------------------
mus_rg_cinnabar_1_051:
	.byte	W24
	.byte		N12   , Fn4 , v080
	.byte	W13
	.byte		N11   , Fn4 , v076
	.byte	W12
	.byte		N11   
	.byte	W30
	.byte		N05   , Fn4 , v060
	.byte	W06
	.byte		N05   
	.byte	W05
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 052   ----------------------------------------
mus_rg_cinnabar_1_052:
	.byte		N07   , Fn4 , v076
	.byte	W72
	.byte		N12   , Fn4 , v080
	.byte	W13
	.byte		N11   , Fn4 , v076
	.byte	W11
	.byte	PEND
@ 053   ----------------------------------------
	.byte		N11   
	.byte	W30
	.byte	W01
	.byte		N05   , Fn4 , v060
	.byte	W06
	.byte		N05   
	.byte	W05
	.byte		N05   
	.byte	W06
	.byte		N07   , Fn4 , v076
	.byte	W48
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_051
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_052
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_050
@ 057   ----------------------------------------
	.byte	W24
	.byte		N12   , Fn4 , v080
	.byte	W13
	.byte		N11   , Fn4 , v076
	.byte	W11
	.byte		N11   
	.byte	W30
	.byte	W01
	.byte		N05   , Fn4 , v060
	.byte	W06
	.byte		N05   
	.byte	W05
	.byte		N05   
	.byte	W06
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_052
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_050
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_051
@ 061   ----------------------------------------
	.byte		N07   , Fn4 , v076
	.byte	W72
	.byte		N24   , Gn4 , v080
	.byte	W24
@ 062   ----------------------------------------
	.byte		N11   , Gn4 , v076
	.byte	W13
	.byte		N23   
	.byte	W23
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W12
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_039
@ 064   ----------------------------------------
	.byte	W01
	.byte		N23   , Gn4 , v076
	.byte	W23
	.byte		N12   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N24   , Gn4 , v080
	.byte	W24
@ 065   ----------------------------------------
	.byte	W01
	.byte		N11   , Gn4 , v076
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W11
	.byte		N23   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N23   
	.byte	W12
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_042
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_040
@ 068   ----------------------------------------
	.byte	W01
	.byte		N11   , Gn4 , v076
	.byte	W11
	.byte		N23   
	.byte	W24
	.byte		N12   
	.byte	W60
@ 069   ----------------------------------------
	.byte	W24
	.byte		N32   , Gn4 , v080, gtp3
	.byte	W36
	.byte	W01
	.byte		        Gn4 , v076, gtp3
	.byte	W32
	.byte	W03
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_049
@ 071   ----------------------------------------
	.byte	W01
	.byte		N11   , Fn4 , v076
	.byte	W11
	.byte		N12   
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte		N11   
	.byte	W12
	.byte		N36   
	.byte	W48
@ 072   ----------------------------------------
	.byte	W24
	.byte		N12   , Fn4 , v080
	.byte	W13
	.byte		N11   , Fn4 , v076
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		N11   
	.byte	W13
	.byte		N11   
	.byte	W11
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_013
@ 074   ----------------------------------------
	.byte		N12   , Fn4 , v076
	.byte	W13
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		N11   
	.byte	W12
	.byte		N36   
	.byte	W48
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_006
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_013
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_014
@ 078   ----------------------------------------
	.byte	W24
	.byte		N12   , Fn4 , v080
	.byte	W13
	.byte		N11   , Fn4 , v076
	.byte	W11
	.byte		N11   
	.byte	W13
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		N12   
	.byte	W12
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_1_013
@ 080   ----------------------------------------
	.byte		N11   , Fn4 , v076
	.byte	W13
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		N36   
	.byte	W48
@ 081   ----------------------------------------
	.byte	W24
	.byte		N12   , Fn4 , v080
	.byte	W13
	.byte		N11   , Fn4 , v076
	.byte	W11
	.byte		N11   
	.byte	W13
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte		        Fn4 , v060
	.byte	W06
	.byte		N01   , Fn4 , v076
	.byte		N05   , Fn4 , v060
	.byte	W06
	.byte		N05   
	.byte	W06
@ 082   ----------------------------------------
	.byte		N01   , Fn4 , v076
	.byte	W96
@ 083   ----------------------------------------
	.byte	W24
	.byte	GOTO
	 .word	mus_rg_cinnabar_1_B1
mus_rg_cinnabar_1_B2:
	.byte		VOICE , 127
	.byte		        127
	.byte		VOL   , 100*mus_rg_cinnabar_mvl/mxv
	.byte		        100*mus_rg_cinnabar_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_rg_cinnabar_2:
	.byte	KEYSH , mus_rg_cinnabar_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 126
	.byte		PAN   , c_v+42
	.byte		VOL   , 100*mus_rg_cinnabar_mvl/mxv
	.byte		        100*mus_rg_cinnabar_mvl/mxv
	.byte		        100*mus_rg_cinnabar_mvl/mxv
	.byte		        100*mus_rg_cinnabar_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W36
	.byte		N24   , As4 , v076
	.byte	W60
@ 001   ----------------------------------------
mus_rg_cinnabar_2_001:
	.byte	W66
	.byte	W01
	.byte		N05   , As4 , v060
	.byte	W05
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W05
	.byte		N07   , As4 , v076
	.byte	W13
	.byte	PEND
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
mus_rg_cinnabar_2_003:
	.byte	W19
	.byte		N05   , As4 , v060
	.byte	W05
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W05
	.byte		N07   , As4 , v076
	.byte	W60
	.byte	W01
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_001
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_003
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_001
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_001
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
mus_rg_cinnabar_2_012:
	.byte	W36
	.byte		N32   , As4 , v076, gtp3
	.byte	W60
	.byte	PEND
@ 013   ----------------------------------------
mus_rg_cinnabar_2_013:
	.byte	W84
	.byte		N32   , As4 , v076, gtp3
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_012
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_013
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_012
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_013
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_012
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_013
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W36
	.byte		N24   , As4 , v076
	.byte	W60
@ 025   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte	W12
mus_rg_cinnabar_2_B1:
	.byte	W60
	.byte		N24   , As4 , v076
	.byte	W12
@ 026   ----------------------------------------
	.byte	W60
	.byte		N23   
	.byte	W36
@ 027   ----------------------------------------
	.byte	W36
	.byte		N24   
	.byte	W60
@ 028   ----------------------------------------
mus_rg_cinnabar_2_028:
	.byte	W12
	.byte		N23   , As4 , v076
	.byte	W72
	.byte		N23   
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte	W60
	.byte		N23   
	.byte	W36
@ 030   ----------------------------------------
	.byte	W36
	.byte		N23   
	.byte	W60
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_028
@ 032   ----------------------------------------
	.byte	W60
	.byte		N23   , As4 , v076
	.byte	W36
@ 033   ----------------------------------------
	.byte	W36
	.byte		N23   
	.byte	W60
@ 034   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte	W72
	.byte		N24   
	.byte	W12
@ 035   ----------------------------------------
	.byte	W60
	.byte		N23   
	.byte	W36
@ 036   ----------------------------------------
	.byte	W36
	.byte		N18   
	.byte	W60
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
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_013
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_012
@ 049   ----------------------------------------
mus_rg_cinnabar_2_049:
	.byte	W12
	.byte		N16   , As4 , v076
	.byte	W72
	.byte		N23   
	.byte	W12
	.byte	PEND
@ 050   ----------------------------------------
	.byte	W60
	.byte		N17   
	.byte	W36
@ 051   ----------------------------------------
	.byte	W36
	.byte		N23   
	.byte	W60
@ 052   ----------------------------------------
mus_rg_cinnabar_2_052:
	.byte	W12
	.byte		N17   , As4 , v076
	.byte	W72
	.byte		N23   
	.byte	W12
	.byte	PEND
@ 053   ----------------------------------------
	.byte	W60
	.byte		N17   
	.byte	W36
@ 054   ----------------------------------------
	.byte	W36
	.byte		N23   
	.byte	W60
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_049
@ 056   ----------------------------------------
	.byte	W60
	.byte		N16   , As4 , v076
	.byte	W36
@ 057   ----------------------------------------
	.byte	W36
	.byte		N23   
	.byte	W60
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_052
@ 059   ----------------------------------------
	.byte	W60
	.byte		N17   , As4 , v076
	.byte	W36
@ 060   ----------------------------------------
	.byte	W36
	.byte		N23   
	.byte	W60
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_013
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_012
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_013
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_012
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_013
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_012
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_013
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_012
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_013
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_2_012
@ 082   ----------------------------------------
	.byte	W24
	.byte	GOTO
	 .word	mus_rg_cinnabar_2_B1
mus_rg_cinnabar_2_B2:
	.byte		VOICE , 126
	.byte		        126
	.byte		VOL   , 100*mus_rg_cinnabar_mvl/mxv
	.byte		        100*mus_rg_cinnabar_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.4) ****************@

mus_rg_cinnabar_3:
	.byte	KEYSH , mus_rg_cinnabar_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 47
	.byte		VOL   , 127*mus_rg_cinnabar_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W48
	.byte		N32   , Gn0 , v076, gtp3
	.byte	W36
	.byte		        Gn0 , v076, gtp3
	.byte	W12
@ 001   ----------------------------------------
mus_rg_cinnabar_3_001:
	.byte	W24
	.byte		N24   , Cn1 , v080
	.byte	W24
	.byte		N12   , Cn1 , v076
	.byte	W48
	.byte	PEND
@ 002   ----------------------------------------
mus_rg_cinnabar_3_002:
	.byte		N32   , Cn1 , v076, gtp3
	.byte	W36
	.byte		        Cn1 , v076, gtp3
	.byte	W36
	.byte		N24   , Dn1 , v080
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte		N12   , Dn1 , v076
	.byte	W48
	.byte	W01
	.byte		N32   , Dn1 , v076, gtp3
	.byte	W32
	.byte	W03
	.byte		        Dn1 , v076, gtp3
	.byte	W12
@ 004   ----------------------------------------
mus_rg_cinnabar_3_004:
	.byte	W24
	.byte		N24   , Ds1 , v080
	.byte	W24
	.byte		N12   , Ds1 , v076
	.byte	W48
	.byte	PEND
@ 005   ----------------------------------------
mus_rg_cinnabar_3_005:
	.byte		N32   , Ds1 , v076, gtp3
	.byte	W36
	.byte		        Ds1 , v076, gtp3
	.byte	W36
	.byte		N24   , Fn1 , v080
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte		N12   , Fn1 , v076
	.byte	W48
	.byte		N32   , Gn0 , v076, gtp3
	.byte	W36
	.byte		        Gn0 , v076, gtp3
	.byte	W12
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_002
@ 009   ----------------------------------------
	.byte		N12   , Dn1 , v076
	.byte	W48
	.byte		N32   , Dn1 , v076, gtp3
	.byte	W36
	.byte		        Dn1 , v076, gtp3
	.byte	W12
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_005
@ 012   ----------------------------------------
	.byte		N12   , Fn1 , v076
	.byte	W48
	.byte	W01
	.byte		N32   , Gn0 , v076, gtp3
	.byte	W32
	.byte	W03
	.byte		        Gn0 , v076, gtp3
	.byte	W12
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_001
@ 014   ----------------------------------------
mus_rg_cinnabar_3_014:
	.byte	W36
	.byte		N32   , Cn1 , v076, gtp3
	.byte	W36
	.byte		N24   , As0 , v080
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
mus_rg_cinnabar_3_015:
	.byte		N12   , As0 , v076
	.byte	W84
	.byte		N32   , As0 , v076, gtp3
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_rg_cinnabar_3_016:
	.byte	W24
	.byte		N24   , An0 , v080
	.byte	W24
	.byte		N12   , An0 , v076
	.byte	W48
	.byte	PEND
@ 017   ----------------------------------------
mus_rg_cinnabar_3_017:
	.byte	W36
	.byte		N32   , An0 , v076, gtp3
	.byte	W36
	.byte		N24   , As0 , v080
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
mus_rg_cinnabar_3_018:
	.byte		N12   , As0 , v076
	.byte	W36
	.byte		        Fn0 
	.byte	W12
	.byte		N36   , Gn0 
	.byte	W36
	.byte		N32   , As0 , v076, gtp3
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_014
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_015
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_016
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_017
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_018
@ 025   ----------------------------------------
	.byte	W24
mus_rg_cinnabar_3_B1:
	.byte		N24   , Gs0 , v080
	.byte	W24
	.byte		N12   , Gs0 , v076
	.byte	W48
@ 026   ----------------------------------------
	.byte		N32   , Gs0 , v076, gtp3
	.byte	W36
	.byte		        Gs0 , v076, gtp3
	.byte	W36
	.byte		N23   , As0 , v080
	.byte	W24
@ 027   ----------------------------------------
mus_rg_cinnabar_3_027:
	.byte		N12   , As0 , v076
	.byte	W48
	.byte		N32   , As0 , v076, gtp3
	.byte	W36
	.byte		        As0 , v076, gtp3
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_001
@ 029   ----------------------------------------
	.byte		N36   , Cn1 , v076
	.byte	W36
	.byte		N32   , Gn0 , v076, gtp3
	.byte	W36
	.byte		N24   , Cn1 , v080
	.byte	W24
@ 030   ----------------------------------------
mus_rg_cinnabar_3_030:
	.byte		N12   , Cn1 , v076
	.byte	W48
	.byte		N36   
	.byte	W36
	.byte		N32   , As0 , v076, gtp3
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte	W24
	.byte		N23   , Gs0 , v080
	.byte	W24
	.byte		N12   , Gs0 , v076
	.byte	W48
@ 032   ----------------------------------------
mus_rg_cinnabar_3_032:
	.byte	W01
	.byte		N32   , Gs0 , v076, gtp3
	.byte	W32
	.byte	W03
	.byte		        Gs0 , v076, gtp3
	.byte	W36
	.byte		N24   , As0 , v080
	.byte	W24
	.byte	PEND
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_027
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_001
@ 035   ----------------------------------------
	.byte		N36   , Cn1 , v076
	.byte	W36
	.byte		N32   , Gn0 , v076, gtp3
	.byte	W36
	.byte		N23   , Cn1 , v080
	.byte	W24
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_030
@ 037   ----------------------------------------
mus_rg_cinnabar_3_037:
	.byte	W24
	.byte		N24   , Gs0 , v080
	.byte	W24
	.byte		N12   , Gs0 , v076
	.byte	W48
	.byte	PEND
@ 038   ----------------------------------------
	.byte	W72
	.byte		N24   , As0 , v080
	.byte	W24
@ 039   ----------------------------------------
	.byte		N12   , As0 , v076
	.byte	W96
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_001
@ 041   ----------------------------------------
	.byte	W72
	.byte		N24   , As0 , v080
	.byte	W24
@ 042   ----------------------------------------
	.byte		N12   , As0 , v076
	.byte	W96
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_037
@ 044   ----------------------------------------
	.byte	W72
	.byte		N24   , As0 , v080
	.byte	W24
@ 045   ----------------------------------------
	.byte		N12   , As0 , v076
	.byte	W96
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_001
@ 047   ----------------------------------------
	.byte	W72
	.byte		N24   , As0 , v080
	.byte	W24
@ 048   ----------------------------------------
	.byte		N12   , As0 , v076
	.byte	W96
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_037
@ 050   ----------------------------------------
	.byte		N32   , Gs0 , v076, gtp3
	.byte	W36
	.byte		        Gs0 , v076, gtp3
	.byte	W36
	.byte		N24   , As0 , v080
	.byte	W24
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_027
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_001
@ 053   ----------------------------------------
	.byte	W01
	.byte		N32   , Cn1 , v076, gtp3
	.byte	W32
	.byte	W03
	.byte		        Cn1 , v076, gtp3
	.byte	W36
	.byte		N24   , As0 , v080
	.byte	W24
@ 054   ----------------------------------------
	.byte		N12   , As0 , v076
	.byte	W48
	.byte	W01
	.byte		N32   , As0 , v076, gtp3
	.byte	W32
	.byte	W03
	.byte		        As0 , v076, gtp3
	.byte	W12
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_037
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_032
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_027
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_001
@ 059   ----------------------------------------
	.byte		N32   , Cn1 , v076, gtp3
	.byte	W36
	.byte		        Cn1 , v076, gtp3
	.byte	W36
	.byte		N24   , As0 , v080
	.byte	W24
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_027
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_037
@ 062   ----------------------------------------
	.byte	W72
	.byte		N24   , As0 , v080
	.byte	W24
@ 063   ----------------------------------------
	.byte		N12   , As0 , v076
	.byte	W96
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_001
@ 065   ----------------------------------------
	.byte	W72
	.byte		N24   , As0 , v080
	.byte	W24
@ 066   ----------------------------------------
	.byte		N12   , As0 , v076
	.byte	W96
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_037
@ 068   ----------------------------------------
	.byte	W72
	.byte		N24   , As0 , v080
	.byte	W24
@ 069   ----------------------------------------
	.byte		N12   , As0 , v076
	.byte	W96
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_001
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_014
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_015
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_016
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_017
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_018
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_001
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_014
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_015
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_016
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_017
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_3_018
@ 082   ----------------------------------------
	.byte	W24
	.byte	GOTO
	 .word	mus_rg_cinnabar_3_B1
mus_rg_cinnabar_3_B2:
	.byte		VOICE , 47
	.byte		        47
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.5) ****************@

mus_rg_cinnabar_4:
	.byte	KEYSH , mus_rg_cinnabar_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		PAN   , c_v-63
	.byte		VOL   , 100*mus_rg_cinnabar_mvl/mxv
	.byte		        100*mus_rg_cinnabar_mvl/mxv
	.byte		        100*mus_rg_cinnabar_mvl/mxv
	.byte		        100*mus_rg_cinnabar_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
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
mus_rg_cinnabar_4_013:
	.byte	W24
	.byte		N05   , Fn3 , v088
	.byte	W12
	.byte		N04   , Gn3 , v084
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N05   , Cn4 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
mus_rg_cinnabar_4_014:
	.byte		N05   , Fn3 , v084
	.byte	W12
	.byte		N04   , Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W11
	.byte		N05   , Cn4 
	.byte	W13
	.byte		        Fn3 , v088
	.byte	W12
	.byte		N04   , Gn3 , v084
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_rg_cinnabar_4_015:
	.byte		N04   , Cn4 , v084
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N05   , Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N04   , Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_rg_cinnabar_4_016:
	.byte		N04   , Gn3 , v084
	.byte	W11
	.byte		N05   , Cn4 
	.byte	W13
	.byte		        Fn3 , v088
	.byte	W12
	.byte		N04   , Gn3 , v084
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N05   , Cn4 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_014
@ 018   ----------------------------------------
mus_rg_cinnabar_4_018:
	.byte		N04   , Cn4 , v084
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N05   , Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N04   , Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_rg_cinnabar_4_019:
	.byte		N04   , Fn4 , v084
	.byte	W11
	.byte		N05   , Gn4 
	.byte	W13
	.byte		        Fn3 , v088
	.byte	W12
	.byte		N04   , Gn3 , v084
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N05   , Cn4 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_014
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_015
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_016
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_014
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_018
@ 025   ----------------------------------------
	.byte		N04   , Fn4 , v084
	.byte	W11
	.byte		N05   , Gn4 
	.byte	W13
mus_rg_cinnabar_4_B1:
	.byte		N05   , Fn3 , v088
	.byte	W12
	.byte		N04   , Gn3 , v084
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N05   , Cn4 
	.byte	W12
@ 026   ----------------------------------------
mus_rg_cinnabar_4_026:
	.byte		N05   , Fn3 , v084
	.byte	W12
	.byte		N04   , Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W11
	.byte		N05   , Gn4 
	.byte	W13
	.byte		        Fn3 , v088
	.byte	W12
	.byte		N04   , Gn3 , v084
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_018
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_019
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_026
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_018
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_019
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_026
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_018
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_019
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_026
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_018
@ 037   ----------------------------------------
mus_rg_cinnabar_4_037:
	.byte		N04   , Fn4 , v084
	.byte	W11
	.byte		        Gn4 
	.byte	W84
	.byte	W01
	.byte	PEND
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
	.byte	PATT
	 .word	mus_rg_cinnabar_4_013
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_014
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_015
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_014
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_018
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_019
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_014
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_015
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_016
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_014
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_018
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_037
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_013
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_014
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_015
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_016
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_014
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_018
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_019
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_014
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_015
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_016
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_014
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_4_018
@ 082   ----------------------------------------
	.byte		N04   , Fn4 , v084
	.byte	W11
	.byte		        Gn4 
	.byte	W13
	.byte	GOTO
	 .word	mus_rg_cinnabar_4_B1
mus_rg_cinnabar_4_B2:
	.byte		VOICE , 80
	.byte		        80
	.byte		VOL   , 100*mus_rg_cinnabar_mvl/mxv
	.byte		        100*mus_rg_cinnabar_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.6) ****************@

mus_rg_cinnabar_5:
	.byte	KEYSH , mus_rg_cinnabar_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 87
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_cinnabar_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_cinnabar_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_cinnabar_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_cinnabar_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
mus_rg_cinnabar_5_001:
	.byte	W24
	.byte		N24   , Cn1 , v080
	.byte	W24
	.byte		N10   , Cn1 , v076
	.byte	W36
	.byte		        Gn0 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_rg_cinnabar_5_002:
	.byte		N09   , Cn1 , v076
	.byte	W24
	.byte		        Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W11
	.byte		N10   , Cn1 
	.byte	W13
	.byte		N24   , Dn1 , v080
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
mus_rg_cinnabar_5_003:
	.byte		N10   , Dn1 , v076
	.byte	W36
	.byte		        Gn0 
	.byte	W12
	.byte		N09   , Dn1 
	.byte	W24
	.byte		        Gn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte		        Gn0 
	.byte	W11
	.byte		N10   , Dn1 
	.byte	W13
	.byte		N24   , Ds1 , v080
	.byte	W24
	.byte		N10   , Ds1 , v076
	.byte	W36
	.byte		        Gn0 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N09   , Ds1 
	.byte	W24
	.byte		        Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W11
	.byte		N10   , Gn1 
	.byte	W13
	.byte		N24   , Fn1 , v080
	.byte	W24
@ 006   ----------------------------------------
	.byte		N10   , Fn1 , v076
	.byte	W36
	.byte		        Fn0 
	.byte	W12
	.byte		N14   , Gn0 
	.byte	W36
	.byte		N32   , Gn0 , v076, gtp1
	.byte	W12
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_003
@ 010   ----------------------------------------
	.byte		N09   , Gn0 , v076
	.byte	W11
	.byte		N10   , Dn1 
	.byte	W13
	.byte		N24   , Ds1 , v080
	.byte	W24
	.byte		N10   , Ds1 , v076
	.byte	W36
	.byte		        Gn0 , v088
	.byte	W12
@ 011   ----------------------------------------
	.byte		N09   , Ds1 
	.byte	W24
	.byte		        Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W11
	.byte		N10   , Gn1 
	.byte	W13
	.byte		N24   , Fn1 , v092
	.byte	W24
@ 012   ----------------------------------------
	.byte		N10   , Fn1 , v088
	.byte	W36
	.byte		        Fn0 
	.byte	W12
	.byte		N14   , Gn0 
	.byte	W36
	.byte		N16   
	.byte	W12
@ 013   ----------------------------------------
mus_rg_cinnabar_5_013:
	.byte	W24
	.byte		N68   , Cn1 , v092, gtp2
	.byte	W72
	.byte	PEND
@ 014   ----------------------------------------
mus_rg_cinnabar_5_014:
	.byte	W12
	.byte		N09   , Gn1 , v088
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Cn1 
	.byte	W23
	.byte		N10   , Gn0 
	.byte	W13
	.byte		N68   , As0 , v092, gtp2
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
mus_rg_cinnabar_5_015:
	.byte	W60
	.byte		N09   , Fn1 , v088
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_rg_cinnabar_5_016:
	.byte	W11
	.byte		N10   , Gn0 , v088
	.byte	W13
	.byte		N68   , An0 , v092, gtp2
	.byte	W72
	.byte	PEND
@ 017   ----------------------------------------
mus_rg_cinnabar_5_017:
	.byte	W12
	.byte		N09   , Fn0 , v088
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        An0 
	.byte	W23
	.byte		N10   
	.byte	W13
	.byte		N68   , As0 , v092, gtp2
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
mus_rg_cinnabar_5_018:
	.byte	W60
	.byte		N09   , Gn0 , v088
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_rg_cinnabar_5_019:
	.byte	W11
	.byte		N10   , Gn1 , v088
	.byte	W13
	.byte		N68   , Cn1 , v092, gtp2
	.byte	W72
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_014
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_015
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_016
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_017
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_018
@ 025   ----------------------------------------
	.byte	W11
	.byte		N10   , Gn1 , v088
	.byte	W13
mus_rg_cinnabar_5_B1:
	.byte		N24   , Gs0 , v092
	.byte	W24
	.byte		N10   , Gs0 , v088
	.byte	W36
	.byte		        Gn0 , v076
	.byte	W12
@ 026   ----------------------------------------
mus_rg_cinnabar_5_026:
	.byte		N09   , Gs0 , v076
	.byte	W24
	.byte		        Gn0 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Dn0 
	.byte	W11
	.byte		N10   , Gs0 
	.byte	W13
	.byte		N24   , As0 , v080
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
mus_rg_cinnabar_5_027:
	.byte		N10   , As0 , v076
	.byte	W36
	.byte		        Gn0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		N09   , Gn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_rg_cinnabar_5_028:
	.byte	W11
	.byte		N10   , As0 , v076
	.byte	W13
	.byte		N24   , Cn1 , v080
	.byte	W24
	.byte		N10   , Cn1 , v076
	.byte	W36
	.byte		        Gn0 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte		N09   , Cn1 
	.byte	W24
	.byte		        Fn0 
	.byte	W12
	.byte		        Gn0 
	.byte	W23
	.byte		N10   , As0 
	.byte	W13
	.byte		N24   , Cn1 , v080
	.byte	W24
@ 030   ----------------------------------------
mus_rg_cinnabar_5_030:
	.byte		N10   , Cn1 , v076
	.byte	W36
	.byte		        Gn0 
	.byte	W12
	.byte		N09   , Cn1 
	.byte	W24
	.byte		        Fn0 
	.byte	W12
	.byte		N32   , As0 , v076, gtp1
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
mus_rg_cinnabar_5_031:
	.byte	W24
	.byte		N24   , Gs0 , v080
	.byte	W24
	.byte		N10   , Gs0 , v076
	.byte	W36
	.byte		        Gn0 
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_026
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_027
@ 034   ----------------------------------------
mus_rg_cinnabar_5_034:
	.byte	W11
	.byte		N10   , As0 , v076
	.byte	W13
	.byte		N24   , Cn1 , v080
	.byte	W24
	.byte		N10   , Cn1 , v076
	.byte	W36
	.byte		        Gn0 , v088
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
	.byte		N09   , Cn1 
	.byte	W24
	.byte		        Fn0 
	.byte	W12
	.byte		        Gn0 
	.byte	W23
	.byte		N10   , As0 
	.byte	W13
	.byte		N24   , Cn1 , v092
	.byte	W24
@ 036   ----------------------------------------
mus_rg_cinnabar_5_036:
	.byte		N10   , Cn1 , v088
	.byte	W36
	.byte		        Gn0 
	.byte	W12
	.byte		N09   , Cn1 
	.byte	W24
	.byte		        Fn0 
	.byte	W12
	.byte		N32   , As0 , v088, gtp1
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_rg_cinnabar_5_037:
	.byte	W24
	.byte		N68   , Gs0 , v092, gtp2
	.byte	W72
	.byte	PEND
@ 038   ----------------------------------------
mus_rg_cinnabar_5_038:
	.byte	W12
	.byte		N09   , Fn0 , v088
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gs0 
	.byte	W23
	.byte		N10   
	.byte	W13
	.byte		N68   , As0 , v092, gtp2
	.byte	W24
	.byte	PEND
@ 039   ----------------------------------------
mus_rg_cinnabar_5_039:
	.byte	W60
	.byte		N09   , Gn0 , v088
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
mus_rg_cinnabar_5_040:
	.byte	W11
	.byte		N10   , As0 , v088
	.byte	W13
	.byte		N68   , Cn1 , v092, gtp2
	.byte	W72
	.byte	PEND
@ 041   ----------------------------------------
mus_rg_cinnabar_5_041:
	.byte	W12
	.byte		N09   , Gn0 , v088
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W11
	.byte		N10   , Cn1 
	.byte	W13
	.byte		N68   , As0 , v092, gtp2
	.byte	W24
	.byte	PEND
@ 042   ----------------------------------------
mus_rg_cinnabar_5_042:
	.byte	W60
	.byte		N09   , Gn1 , v088
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte	PEND
@ 043   ----------------------------------------
mus_rg_cinnabar_5_043:
	.byte	W11
	.byte		N10   , As0 , v088
	.byte	W13
	.byte		N68   , Gs0 , v092, gtp2
	.byte	W72
	.byte	PEND
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_038
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_039
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_040
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_041
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_042
@ 049   ----------------------------------------
	.byte	W11
	.byte		N10   , As0 , v088
	.byte	W13
	.byte		N24   , Gs0 , v092
	.byte	W24
	.byte		N10   , Gs0 , v088
	.byte	W36
	.byte		        Gn0 , v076
	.byte	W12
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_026
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_027
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_028
@ 053   ----------------------------------------
	.byte		N09   , Cn1 , v076
	.byte	W24
	.byte		        Fn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn0 
	.byte	W11
	.byte		N10   , Gn0 
	.byte	W13
	.byte		N24   , Cn1 , v080
	.byte	W24
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_030
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_031
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_026
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_027
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_034
@ 059   ----------------------------------------
	.byte		N09   , Cn1 , v088
	.byte	W24
	.byte		        Fn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn0 
	.byte	W11
	.byte		N10   , Gn0 
	.byte	W13
	.byte		N24   , Cn1 , v092
	.byte	W24
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_036
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_037
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_038
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_039
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_040
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_041
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_042
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_043
@ 068   ----------------------------------------
	.byte	W12
	.byte		N09   , Fn0 , v088
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gs0 
	.byte	W23
	.byte		N10   
	.byte	W13
	.byte		N22   , As0 , v092
	.byte	W24
@ 069   ----------------------------------------
	.byte	W12
	.byte		N10   , As0 , v088
	.byte	W12
	.byte		N09   , Gn0 
	.byte	W12
	.byte		N10   , Gs0 
	.byte	W12
	.byte		N14   , As0 
	.byte	W36
	.byte		N32   , As0 , v088, gtp1
	.byte	W12
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_013
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_014
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_015
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_016
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_017
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_018
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_019
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_014
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_015
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_016
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_017
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_5_018
@ 082   ----------------------------------------
	.byte	W11
	.byte		N10   , Gn1 , v088
	.byte	W13
	.byte	GOTO
	 .word	mus_rg_cinnabar_5_B1
mus_rg_cinnabar_5_B2:
	.byte		VOICE , 87
	.byte		        87
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_cinnabar_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_cinnabar_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.7) ****************@

mus_rg_cinnabar_6:
	.byte	KEYSH , mus_rg_cinnabar_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 38
	.byte		VOL   , 127*mus_rg_cinnabar_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
mus_rg_cinnabar_6_001:
	.byte	W24
	.byte		N24   , Gn1 , v080
	.byte		N24   , Cn2 , v096
	.byte	W24
	.byte		N04   , Gn1 , v076
	.byte		N04   , Cn2 , v088
	.byte	W48
	.byte	PEND
@ 002   ----------------------------------------
mus_rg_cinnabar_6_002:
	.byte	W36
	.byte		N09   , Gn1 , v076
	.byte		N09   , Cn2 , v088
	.byte	W23
	.byte		N10   , Gn1 , v076
	.byte		N10   , Cn2 , v088
	.byte	W13
	.byte		N24   , An1 , v080
	.byte		N24   , Dn2 , v096
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
mus_rg_cinnabar_6_003:
	.byte		N04   , An1 , v076
	.byte		N04   , Dn2 , v088
	.byte	W84
	.byte		N09   , An1 , v076
	.byte		N09   , Dn2 , v088
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_rg_cinnabar_6_004:
	.byte	W11
	.byte		N10   , An1 , v076
	.byte		N10   , Dn2 , v088
	.byte	W13
	.byte		N24   , As1 , v080
	.byte		N24   , Ds2 , v096
	.byte	W24
	.byte		N04   , As1 , v076
	.byte		N04   , Ds2 , v088
	.byte	W48
	.byte	PEND
@ 005   ----------------------------------------
mus_rg_cinnabar_6_005:
	.byte	W36
	.byte		N09   , As1 , v076
	.byte		N09   , Ds2 , v088
	.byte	W23
	.byte		N10   , As1 , v076
	.byte		N10   , Ds2 , v088
	.byte	W13
	.byte		N24   , Cn2 , v080
	.byte		N24   , Fn2 , v096
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte		N04   , Cn2 , v076
	.byte		N04   , Fn2 , v088
	.byte	W36
	.byte		        Gn1 , v076
	.byte		N04   , Ds2 , v088
	.byte	W06
	.byte		        As1 , v076
	.byte		N04   , Fn2 , v088
	.byte	W06
	.byte		N14   , Cn2 , v076
	.byte		N14   , Gn2 , v088
	.byte	W36
	.byte		N32   , Gn1 , v076, gtp3
	.byte		N32   , As1 , v088, gtp1
	.byte	W12
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_6_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_6_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_6_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_6_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_6_005
@ 012   ----------------------------------------
	.byte		N04   , Cn2 , v076
	.byte		N04   , Fn2 , v088
	.byte	W36
	.byte		        Gn1 , v076
	.byte		N04   , Ds2 , v088
	.byte	W06
	.byte		        As1 , v076
	.byte		N04   , Fn2 , v088
	.byte	W06
	.byte		N14   , Cn2 , v076
	.byte		N14   , Gn2 , v088
	.byte	W36
	.byte		N32   , Gn1 , v076, gtp1
	.byte		N32   , As1 , v088, gtp1
	.byte	W12
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
@ 025   ----------------------------------------
	.byte	W24
mus_rg_cinnabar_6_B1:
	.byte		N24   , Cn2 , v068
	.byte		N24   , Ds2 , v080
	.byte	W24
	.byte		N04   , Cn2 , v064
	.byte		N04   , Ds2 , v076
	.byte	W48
@ 026   ----------------------------------------
mus_rg_cinnabar_6_026:
	.byte		N14   , Cn2 , v064
	.byte		N14   , Ds2 , v076
	.byte	W36
	.byte		N32   , Cn2 , v064, gtp1
	.byte		N32   , Ds2 , v076, gtp1
	.byte	W36
	.byte		N24   , As1 , v068
	.byte		N24   , Dn2 , v080
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
mus_rg_cinnabar_6_027:
	.byte		N04   , As1 , v064
	.byte		N04   , Dn2 , v076
	.byte	W48
	.byte		N14   , As1 , v064
	.byte		N14   , Dn2 , v076
	.byte	W36
	.byte		N32   , As1 , v064, gtp1
	.byte		N32   , Dn2 , v076, gtp1
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
	.byte	W24
	.byte		N24   , Gn1 , v068
	.byte		N24   , Cn2 , v080
	.byte	W24
	.byte		N04   , Gn1 , v064
	.byte		N04   , Cn2 , v076
	.byte	W48
@ 029   ----------------------------------------
	.byte		N14   , Gn1 , v064
	.byte		N14   , Cn2 , v076
	.byte	W36
	.byte		N32   , Gn1 , v064, gtp1
	.byte		N32   , As1 , v076, gtp1
	.byte	W36
	.byte		N24   , Fn1 , v068
	.byte		N24   , Cn2 , v080
	.byte	W24
@ 030   ----------------------------------------
	.byte		N04   , Fn1 , v064
	.byte		N04   , Cn2 , v076
	.byte	W48
	.byte		N14   , Fn1 , v064
	.byte		N14   , Cn2 , v076
	.byte	W36
	.byte		N32   , Fn1 , v064, gtp1
	.byte		N32   , As1 , v076, gtp1
	.byte	W12
@ 031   ----------------------------------------
	.byte	W24
	.byte		N24   , Cn2 , v068
	.byte		N24   , Ds2 , v080
	.byte	W24
	.byte		N04   , Cn2 , v064
	.byte		N04   , Ds2 , v076
	.byte	W48
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_6_026
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_6_027
@ 034   ----------------------------------------
	.byte	W24
	.byte		N24   , Cn2 , v068
	.byte		N24   , Fn2 , v080
	.byte	W24
	.byte		N04   , Cn2 , v064
	.byte		N04   , Fn2 , v076
	.byte	W48
@ 035   ----------------------------------------
	.byte		N14   , Dn2 , v064
	.byte		N14   , Gn2 , v076
	.byte	W36
	.byte		N32   , As1 , v064, gtp1
	.byte		N32   , Ds2 , v076, gtp1
	.byte	W36
	.byte		N24   , Cn2 , v068
	.byte		N24   , Fn2 , v080
	.byte	W24
@ 036   ----------------------------------------
	.byte		N04   , Cn2 , v064
	.byte		N04   , Fn2 , v076
	.byte	W48
	.byte		N14   , Dn2 , v064
	.byte		N14   , Gn2 , v076
	.byte	W36
	.byte		N32   , As1 , v064, gtp1
	.byte		N32   , Fn2 , v076, gtp1
	.byte	W12
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
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
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
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W24
	.byte	GOTO
	 .word	mus_rg_cinnabar_6_B1
mus_rg_cinnabar_6_B2:
	.byte		VOICE , 38
	.byte		        38
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 7 (Midi-Chn.8) ****************@

mus_rg_cinnabar_7:
	.byte	KEYSH , mus_rg_cinnabar_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 59
	.byte		VOL   , 76*mus_rg_cinnabar_mvl/mxv
	.byte		PAN   , c_v+20
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
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
	.byte	W96
@ 017   ----------------------------------------
mus_rg_cinnabar_7_017:
	.byte	W12
	.byte		N04   , Cn5 , v088
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W11
	.byte		N05   , Ds4 
	.byte	W13
	.byte		N32   , Cn4 , v096, gtp2
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
mus_rg_cinnabar_7_018:
	.byte	W36
	.byte		N04   , As3 , v088
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N32   , As3 , v088, gtp1
	.byte	W48
	.byte	PEND
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_7_017
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_7_018
@ 025   ----------------------------------------
	.byte	W24
mus_rg_cinnabar_7_B1:
	.byte	W72
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
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
mus_rg_cinnabar_7_036:
	.byte	W12
	.byte		N04   , Cn4 , v096
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N05   , Gn4 
	.byte	W12
	.byte		N56   , As4 , v096, gtp1
	.byte	W48
	.byte	PEND
@ 037   ----------------------------------------
mus_rg_cinnabar_7_037:
	.byte	W12
	.byte		N04   , An4 , v096
	.byte	W03
	.byte		        As4 
	.byte	W04
	.byte		        An4 
	.byte	W05
	.byte		TIE   , Gn4 
	.byte	W72
	.byte	PEND
@ 038   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		EOT   
	.byte	W24
	.byte	W03
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_7_036
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_7_037
@ 044   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		EOT   , Gn4 
	.byte	W24
	.byte	W03
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
mus_rg_cinnabar_7_048:
	.byte	W84
	.byte		N32   , Dn4 , v084, gtp1
	.byte		N32   , Gn4 , v096, gtp1
	.byte	W12
	.byte	PEND
@ 049   ----------------------------------------
mus_rg_cinnabar_7_049:
	.byte	W24
	.byte		TIE   , Gn4 , v088
	.byte		TIE   , Cn5 , v100
	.byte	W72
	.byte	PEND
@ 050   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		EOT   , Gn4 
	.byte		        Cn5 
	.byte	W02
	.byte		N32   , Dn5 , v084, gtp1
	.byte		N32   , Gn5 , v096, gtp1
	.byte	W36
	.byte		N68   , Cn5 , v088, gtp2
	.byte		N68   , Fn5 , v100, gtp2
	.byte	W24
@ 051   ----------------------------------------
mus_rg_cinnabar_7_051:
	.byte	W48
	.byte		N68   , An4 , v084, gtp1
	.byte		N68   , Dn5 , v096, gtp1
	.byte	W48
	.byte	PEND
@ 052   ----------------------------------------
mus_rg_cinnabar_7_052:
	.byte	W24
	.byte		TIE   , Gn4 , v084
	.byte		TIE   , Cn5 , v096
	.byte	W72
	.byte	PEND
@ 053   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		EOT   , Gn4 
	.byte		        Cn5 
	.byte	W24
	.byte	W03
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_7_048
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_7_049
@ 056   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		EOT   , Gn4 
	.byte		        Cn5 
	.byte	W02
	.byte		N32   , Dn5 , v084, gtp1
	.byte		N32   , Gn5 , v096, gtp1
	.byte	W36
	.byte		N68   , Cn5 , v088, gtp2
	.byte		N68   , Fn5 , v100, gtp2
	.byte	W24
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_7_051
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_7_052
@ 059   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		EOT   , Gn4 
	.byte		        Cn5 
	.byte	W24
	.byte	W03
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_7_048
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_7_049
@ 062   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		EOT   , Gn4 
	.byte		        Cn5 
	.byte	W02
	.byte		N32   , Dn5 , v084, gtp1
	.byte		N32   , Gn5 , v096, gtp1
	.byte	W36
	.byte		N68   , Cn5 , v088, gtp2
	.byte		N68   , Fn5 , v100, gtp2
	.byte	W24
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_7_051
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_7_052
@ 065   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		EOT   , Gn4 
	.byte		        Cn5 
	.byte	W24
	.byte	W03
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_7_048
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_7_049
@ 068   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		EOT   , Gn4 
	.byte		        Cn5 
	.byte	W02
	.byte		N32   , Dn5 , v084, gtp1
	.byte		N32   , Gn5 , v096, gtp1
	.byte	W36
	.byte		N68   , Cn5 , v088, gtp2
	.byte		N68   , Fn5 , v100, gtp2
	.byte	W24
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_7_051
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_7_052
@ 071   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		EOT   , Gn4 
	.byte		        Cn5 
	.byte	W24
	.byte	W03
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_7_017
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_7_018
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_7_017
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_7_018
@ 082   ----------------------------------------
	.byte	W24
	.byte	GOTO
	 .word	mus_rg_cinnabar_7_B1
mus_rg_cinnabar_7_B2:
	.byte		VOICE , 59
	.byte		        59
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 8 (Midi-Chn.9) ****************@

mus_rg_cinnabar_8:
	.byte	KEYSH , mus_rg_cinnabar_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 127*mus_rg_cinnabar_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
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
mus_rg_cinnabar_8_013:
	.byte	W24
	.byte		N12   , Fn3 , v080
	.byte	W12
	.byte		N11   , Gn3 , v076
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
mus_rg_cinnabar_8_014:
	.byte		N11   , Fn3 , v076
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W11
	.byte		        Fn4 
	.byte	W13
	.byte		N12   , Fn3 , v080
	.byte	W12
	.byte		N11   , Gn3 , v076
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_rg_cinnabar_8_015:
	.byte		N11   , Cn4 , v076
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_rg_cinnabar_8_016:
	.byte		N11   , Gn4 , v076
	.byte	W11
	.byte		        Fn4 
	.byte	W13
	.byte		N12   , Fn3 , v080
	.byte	W12
	.byte		N11   , Gn3 , v076
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_8_014
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_8_015
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_8_016
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_8_014
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_8_015
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_8_016
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_8_014
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_8_015
@ 025   ----------------------------------------
	.byte		N11   , Gn4 , v076
	.byte	W11
	.byte		        Fn4 
	.byte	W13
mus_rg_cinnabar_8_B1:
	.byte	W72
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
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_8_013
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_8_014
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_8_015
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_8_016
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_8_014
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_8_015
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_8_016
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_8_014
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_8_015
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_8_016
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_8_014
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_8_015
@ 049   ----------------------------------------
	.byte		N11   , Gn4 , v076
	.byte	W11
	.byte		        Fn4 
	.byte	W84
	.byte	W01
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
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
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
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W24
	.byte	GOTO
	 .word	mus_rg_cinnabar_8_B1
mus_rg_cinnabar_8_B2:
	.byte		VOICE , 1
	.byte		        1
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 9 (Midi-Chn.10) ****************@

mus_rg_cinnabar_9:
	.byte	KEYSH , mus_rg_cinnabar_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_rg_cinnabar_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W12
	.byte		N03   , Cn1 , v076
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N23   , An4 
	.byte	W24
	.byte		N12   , Cn1 
	.byte	W12
@ 002   ----------------------------------------
mus_rg_cinnabar_9_002:
	.byte		N32   , Cn1 , v076, gtp3
	.byte	W36
	.byte		N01   
	.byte		N23   , An4 
	.byte	W24
	.byte		N11   , Cn1 
	.byte	W12
	.byte		N12   , Cn1 , v080
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        Cn1 , v076
	.byte	W12
	.byte		N23   , An4 
	.byte	W24
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N32   , Cn1 , v076, gtp3
	.byte	W36
	.byte		N01   
	.byte		N23   , An4 
	.byte	W12
@ 004   ----------------------------------------
mus_rg_cinnabar_9_004:
	.byte	W12
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		N12   , Cn1 , v080
	.byte	W24
	.byte		        Cn1 , v076
	.byte	W12
	.byte		N23   , An4 
	.byte	W24
	.byte		N11   , Cn1 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_rg_cinnabar_9_005:
	.byte	W01
	.byte		N32   , Cn1 , v076, gtp3
	.byte	W32
	.byte	W03
	.byte		N01   
	.byte		N23   , An4 
	.byte	W24
	.byte		N11   , Cn1 
	.byte	W12
	.byte		N12   , Cn1 , v080
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte		        Cn1 , v076
	.byte	W12
	.byte		N23   , An4 
	.byte	W24
	.byte		N11   , Cn1 
	.byte	W13
	.byte		N32   , Cn1 , v076, gtp3
	.byte	W32
	.byte	W03
	.byte		N01   
	.byte		N23   , An4 
	.byte	W12
@ 007   ----------------------------------------
	.byte	W12
	.byte		N11   , Cn1 
	.byte	W12
	.byte		N12   , Cn1 , v080
	.byte	W24
	.byte		        Cn1 , v076
	.byte	W12
	.byte		N23   , An4 
	.byte	W24
	.byte	W01
	.byte		N11   , Cn1 
	.byte	W11
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_005
@ 009   ----------------------------------------
	.byte		N12   , Cn1 , v076
	.byte	W12
	.byte		N23   , An4 
	.byte	W24
	.byte	W01
	.byte		N11   , Cn1 
	.byte	W11
	.byte		N32   , Cn1 , v076, gtp3
	.byte	W36
	.byte		N01   
	.byte		N23   , An4 
	.byte	W12
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_002
@ 012   ----------------------------------------
	.byte		N12   , Cn1 , v076
	.byte	W12
	.byte		N23   , An4 
	.byte	W12
	.byte		N03   , Cn1 
	.byte	W12
	.byte		N12   
	.byte	W13
	.byte		N23   , Ds1 , v088
	.byte	W32
	.byte	W03
	.byte		N23   
	.byte	W12
@ 013   ----------------------------------------
	.byte	W60
	.byte		        An4 , v076
	.byte	W36
@ 014   ----------------------------------------
mus_rg_cinnabar_9_014:
	.byte		N24   , Ds1 , v088
	.byte	W36
	.byte		N23   , An4 , v076
	.byte	W60
	.byte	PEND
@ 015   ----------------------------------------
mus_rg_cinnabar_9_015:
	.byte	W12
	.byte		N23   , An4 , v076
	.byte	W36
	.byte		N24   , Ds1 , v088
	.byte	W36
	.byte		N23   , An4 , v076
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
	.byte	W60
	.byte		N23   
	.byte	W36
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_014
@ 018   ----------------------------------------
mus_rg_cinnabar_9_018:
	.byte	W12
	.byte		N23   , An4 , v076
	.byte	W36
	.byte		        Ds1 , v088
	.byte	W36
	.byte		N23   
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte	W60
	.byte		        An4 , v076
	.byte	W36
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_014
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_015
@ 022   ----------------------------------------
	.byte	W60
	.byte		N23   , An4 , v076
	.byte	W36
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_014
@ 024   ----------------------------------------
mus_rg_cinnabar_9_024:
	.byte	W36
	.byte		N03   , Cn1 , v076
	.byte	W12
	.byte		N23   , Ds1 , v088
	.byte	W36
	.byte		N23   
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
	.byte	W24
mus_rg_cinnabar_9_B1:
	.byte		N12   , Cn1 , v076
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N23   , Ds1 , v088
	.byte	W24
	.byte		N12   , Cn1 , v076
	.byte	W12
@ 026   ----------------------------------------
mus_rg_cinnabar_9_026:
	.byte	W24
	.byte		N12   , Cn1 , v076
	.byte	W12
	.byte		N23   , Ds1 , v088
	.byte	W36
	.byte		N12   , Cn1 , v076
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
mus_rg_cinnabar_9_027:
	.byte		N12   , Cn1 , v076
	.byte	W12
	.byte		N23   , Ds1 , v088
	.byte	W24
	.byte		N12   , Cn1 , v076
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N23   , Ds1 , v088
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_rg_cinnabar_9_028:
	.byte	W24
	.byte		N12   , Cn1 , v076
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N23   , Ds1 , v088
	.byte	W24
	.byte		N12   , Cn1 , v076
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_026
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_027
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_028
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_026
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_027
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_028
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_026
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_027
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte		N36   , Fs2 , v076
	.byte	W96
@ 039   ----------------------------------------
mus_rg_cinnabar_9_039:
	.byte	W12
	.byte		N23   , An4 , v076
	.byte	W36
	.byte		N36   , Fs2 
	.byte	W48
	.byte	PEND
@ 040   ----------------------------------------
	.byte	W60
	.byte		N23   , An4 
	.byte	W36
@ 041   ----------------------------------------
	.byte		N36   , Fs2 
	.byte	W96
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_039
@ 043   ----------------------------------------
	.byte	W60
	.byte		N23   , An4 , v076
	.byte	W36
@ 044   ----------------------------------------
	.byte		N36   , Fs2 
	.byte	W96
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_039
@ 046   ----------------------------------------
	.byte	W60
	.byte		N23   , An4 , v076
	.byte	W36
@ 047   ----------------------------------------
	.byte		N36   , Fs2 
	.byte	W96
@ 048   ----------------------------------------
	.byte	W48
	.byte		N23   , Ds1 , v088
	.byte	W36
	.byte		N23   
	.byte	W12
@ 049   ----------------------------------------
	.byte	W24
	.byte		N12   , Cn1 , v080
	.byte	W24
	.byte		        Cn1 , v076
	.byte	W12
	.byte		N23   , Ds1 , v088
	.byte	W24
	.byte		N03   , Cn1 , v076
	.byte	W12
@ 050   ----------------------------------------
mus_rg_cinnabar_9_050:
	.byte		N24   , Cn1 , v076
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N23   , Ds1 , v088
	.byte	W24
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		N12   , Cn1 , v080
	.byte	W24
	.byte	PEND
@ 051   ----------------------------------------
mus_rg_cinnabar_9_051:
	.byte		N12   , Cn1 , v076
	.byte	W12
	.byte		N23   , Ds1 , v088
	.byte	W24
	.byte		N03   , Cn1 , v076
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N23   , Ds1 , v088
	.byte	W12
	.byte	PEND
@ 052   ----------------------------------------
mus_rg_cinnabar_9_052:
	.byte	W12
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		N12   , Cn1 , v080
	.byte	W24
	.byte		        Cn1 , v076
	.byte	W12
	.byte		N23   , Ds1 , v088
	.byte	W24
	.byte		N03   , Cn1 , v076
	.byte	W12
	.byte	PEND
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_050
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_051
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_052
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_050
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_051
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_052
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_050
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_051
@ 061   ----------------------------------------
	.byte	W11
	.byte		N12   , Cn1 , v076
	.byte	W84
	.byte	W01
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W13
	.byte		N11   , Ds1 , v088
	.byte	W23
	.byte		N12   , Ds1 , v100
	.byte	W13
	.byte		N32   , Fs2 , v076, gtp3
	.byte	W32
	.byte	W03
	.byte		        Fs2 , v076, gtp3
	.byte	W12
@ 070   ----------------------------------------
	.byte	W60
	.byte		N23   , An4 
	.byte	W36
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_014
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_015
@ 073   ----------------------------------------
	.byte	W60
	.byte		N23   , An4 , v076
	.byte	W36
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_014
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_018
@ 076   ----------------------------------------
	.byte	W60
	.byte		N23   , An4 , v076
	.byte	W36
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_014
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_015
@ 079   ----------------------------------------
	.byte	W60
	.byte		N23   , An4 , v076
	.byte	W36
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_014
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_9_024
@ 082   ----------------------------------------
	.byte	W24
	.byte	GOTO
	 .word	mus_rg_cinnabar_9_B1
mus_rg_cinnabar_9_B2:
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 10 (Midi-Chn.11) ****************@

mus_rg_cinnabar_10:
	.byte	KEYSH , mus_rg_cinnabar_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte		VOL   , 127*mus_rg_cinnabar_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
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
	.byte	W84
	.byte		N32   , Gn2 , v096, gtp1
	.byte	W12
@ 013   ----------------------------------------
mus_rg_cinnabar_10_013:
	.byte	W24
	.byte		TIE   , Cn3 , v100
	.byte	W72
	.byte	PEND
@ 014   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		N32   , Gn3 , v096, gtp1
	.byte	W36
	.byte		N68   , Fn3 , v100, gtp2
	.byte	W24
@ 015   ----------------------------------------
mus_rg_cinnabar_10_015:
	.byte	W48
	.byte		N68   , Dn3 , v096, gtp1
	.byte	W48
	.byte	PEND
@ 016   ----------------------------------------
mus_rg_cinnabar_10_016:
	.byte	W24
	.byte		TIE   , Cn3 , v096
	.byte	W72
	.byte	PEND
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W10
	.byte		EOT   
	.byte	W72
	.byte	W02
	.byte		N32   , Gn2 , v096, gtp1
	.byte	W12
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_10_013
@ 020   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		EOT   , Cn3 
	.byte	W02
	.byte		N32   , Gn3 , v096, gtp1
	.byte	W36
	.byte		N68   , Fn3 , v100, gtp2
	.byte	W24
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_10_015
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_10_016
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W10
	.byte		EOT   , Cn3 
	.byte	W72
	.byte	W02
	.byte		N32   , Gn3 , v096, gtp1
	.byte	W12
@ 025   ----------------------------------------
	.byte	W24
mus_rg_cinnabar_10_B1:
	.byte		TIE   , Cn4 , v100
	.byte	W72
@ 026   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		N32   , Gn4 , v096, gtp1
	.byte	W36
	.byte		N68   , Fn4 , v100, gtp2
	.byte	W24
@ 027   ----------------------------------------
	.byte	W48
	.byte		        Dn4 , v096
	.byte	W48
@ 028   ----------------------------------------
	.byte	W18
	.byte		N03   , Ds4 
	.byte	W03
	.byte		N01   , Dn4 
	.byte	W03
	.byte		TIE   , Cn4 
	.byte	W72
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W10
	.byte		EOT   
	.byte	W84
	.byte	W02
@ 031   ----------------------------------------
	.byte	W24
	.byte		TIE   , Cn4 , v100
	.byte	W72
@ 032   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		N32   , Gn4 , v096, gtp1
	.byte	W36
	.byte		N68   , Fn4 , v100, gtp2
	.byte	W24
@ 033   ----------------------------------------
	.byte	W48
	.byte		N64   , As4 , v096, gtp1
	.byte	W48
@ 034   ----------------------------------------
	.byte	W15
	.byte		N03   , An4 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		TIE   , Gn4 
	.byte	W72
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W80
	.byte	W02
	.byte		EOT   
	.byte	W14
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
mus_rg_cinnabar_10_049:
	.byte	W24
	.byte		TIE   , Gn3 , v096
	.byte	W72
	.byte	PEND
@ 050   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , An3 
	.byte	W24
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W21
	.byte		EOT   
	.byte	W03
	.byte		N68   , As3 , v100, gtp2
	.byte	W72
@ 053   ----------------------------------------
mus_rg_cinnabar_10_053:
	.byte		N68   , Gn3 , v096, gtp1
	.byte	W72
	.byte		        Cn4 , v100, gtp2
	.byte	W24
	.byte	PEND
@ 054   ----------------------------------------
mus_rg_cinnabar_10_054:
	.byte	W48
	.byte		N68   , An3 , v096, gtp1
	.byte	W48
	.byte	PEND
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_10_049
@ 056   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		EOT   , Gn3 
	.byte	W03
	.byte		TIE   , An3 , v096
	.byte	W24
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W21
	.byte		EOT   
	.byte	W03
	.byte		N68   , As3 , v100, gtp2
	.byte	W72
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_10_053
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_10_054
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_10_049
@ 062   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		EOT   , Gn3 
	.byte	W03
	.byte		TIE   , An3 , v096
	.byte	W24
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W21
	.byte		EOT   
	.byte	W03
	.byte		N68   , As3 , v100, gtp2
	.byte	W72
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_10_053
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_10_054
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_10_049
@ 068   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		EOT   , Gn3 
	.byte	W03
	.byte		TIE   , An3 , v096
	.byte	W24
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W21
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Cn3 , v100
	.byte	W72
@ 071   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		N32   , Gn3 , v096, gtp1
	.byte	W36
	.byte		N68   , Fn3 , v100, gtp2
	.byte	W24
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_10_015
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_10_016
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W10
	.byte		EOT   , Cn3 
	.byte	W72
	.byte	W02
	.byte		N32   , Gn2 , v096, gtp1
	.byte	W12
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_10_013
@ 077   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		EOT   , Cn3 
	.byte	W02
	.byte		N32   , Gn3 , v096, gtp1
	.byte	W36
	.byte		N68   , Fn3 , v100, gtp2
	.byte	W24
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_10_015
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_10_016
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W10
	.byte		EOT   , Cn3 
	.byte	W72
	.byte	W02
	.byte		N32   , Gn3 , v088, gtp1
	.byte	W12
@ 082   ----------------------------------------
	.byte	W24
	.byte	GOTO
	 .word	mus_rg_cinnabar_10_B1
mus_rg_cinnabar_10_B2:
	.byte		VOICE , 73
	.byte		        73
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 11 (Midi-Chn.12) ****************@

mus_rg_cinnabar_11:
	.byte	KEYSH , mus_rg_cinnabar_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 52
	.byte		VOL   , 127*mus_rg_cinnabar_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
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
	.byte	W24
mus_rg_cinnabar_11_B1:
	.byte	W72
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
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
mus_rg_cinnabar_11_037:
	.byte	W24
	.byte		N68   , Cn3 , v084, gtp2
	.byte	W72
	.byte	PEND
@ 038   ----------------------------------------
mus_rg_cinnabar_11_038:
	.byte		N68   , Dn3 , v080, gtp1
	.byte	W72
	.byte		        Fn3 , v084, gtp2
	.byte	W24
	.byte	PEND
@ 039   ----------------------------------------
mus_rg_cinnabar_11_039:
	.byte	W48
	.byte		N68   , Gn3 , v080, gtp1
	.byte	W48
	.byte	PEND
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_11_037
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_11_038
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_11_039
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_11_037
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_11_038
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_11_039
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_11_037
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_11_038
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_11_039
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
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
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
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W24
	.byte	GOTO
	 .word	mus_rg_cinnabar_11_B1
mus_rg_cinnabar_11_B2:
	.byte		VOICE , 52
	.byte		        52
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 12 (Midi-Chn.13) ****************@

mus_rg_cinnabar_12:
	.byte	KEYSH , mus_rg_cinnabar_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 81
	.byte		PAN   , c_v+61
	.byte		VOL   , 100*mus_rg_cinnabar_mvl/mxv
	.byte		        100*mus_rg_cinnabar_mvl/mxv
	.byte		        100*mus_rg_cinnabar_mvl/mxv
	.byte		        100*mus_rg_cinnabar_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
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
mus_rg_cinnabar_12_013:
	.byte	W24
	.byte		N05   , Cn3 , v072
	.byte	W13
	.byte		N04   , Dn3 , v068
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W11
	.byte		N05   , Gn3 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
mus_rg_cinnabar_12_014:
	.byte		N05   , Cn3 , v068
	.byte	W13
	.byte		N04   , Dn3 
	.byte	W11
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W12
	.byte		        Cn3 , v072
	.byte	W13
	.byte		N04   , Dn3 , v068
	.byte	W11
	.byte	PEND
@ 015   ----------------------------------------
mus_rg_cinnabar_12_015:
	.byte	W01
	.byte		N04   , Gn3 , v068
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W11
	.byte		N05   , Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W13
	.byte		N04   , Dn3 
	.byte	W11
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_rg_cinnabar_12_016:
	.byte		N04   , Dn3 , v068
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W12
	.byte		        Cn3 , v072
	.byte	W13
	.byte		N04   , Dn3 , v068
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W11
	.byte		N05   , Gn3 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_014
@ 018   ----------------------------------------
mus_rg_cinnabar_12_018:
	.byte	W01
	.byte		N04   , Gn3 , v068
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W11
	.byte		N05   , Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W13
	.byte		N04   , Dn3 
	.byte	W11
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_rg_cinnabar_12_019:
	.byte		N04   , Cn4 , v068
	.byte	W12
	.byte		N05   , Dn4 
	.byte	W12
	.byte		        Cn3 , v072
	.byte	W13
	.byte		N04   , Dn3 , v068
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W11
	.byte		N05   , Gn3 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_014
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_015
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_016
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_014
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_018
@ 025   ----------------------------------------
mus_rg_cinnabar_12_025:
	.byte		N04   , Cn4 , v068
	.byte	W12
	.byte		N05   , Dn4 
	.byte	W12
	.byte	PEND
mus_rg_cinnabar_12_B1:
	.byte		N05   , Cn3 , v072
	.byte	W13
	.byte		N04   , Dn3 , v068
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W11
	.byte		N05   , Gn3 
	.byte	W12
@ 026   ----------------------------------------
mus_rg_cinnabar_12_026:
	.byte		N05   , Cn3 , v068
	.byte	W13
	.byte		N04   , Dn3 
	.byte	W11
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N05   , Dn4 
	.byte	W12
	.byte		        Cn3 , v072
	.byte	W13
	.byte		N04   , Dn3 , v068
	.byte	W11
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_018
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_019
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_026
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_018
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_019
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_026
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_018
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_019
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_026
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_018
@ 037   ----------------------------------------
mus_rg_cinnabar_12_037:
	.byte		N04   , Cn4 , v068
	.byte	W12
	.byte		N05   , Dn4 
	.byte	W84
	.byte	PEND
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
	.byte	PATT
	 .word	mus_rg_cinnabar_12_013
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_014
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_015
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_014
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_018
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_019
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_014
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_015
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_016
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_014
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_018
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_037
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_013
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_014
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_015
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_016
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_014
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_018
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_019
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_014
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_015
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_016
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_014
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_018
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_cinnabar_12_025
	.byte	GOTO
	 .word	mus_rg_cinnabar_12_B1
mus_rg_cinnabar_12_B2:
	.byte		VOICE , 81
	.byte		        81
	.byte		VOL   , 100*mus_rg_cinnabar_mvl/mxv
	.byte		        100*mus_rg_cinnabar_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_rg_cinnabar:
	.byte	12	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_rg_cinnabar_pri	@ Priority
	.byte	mus_rg_cinnabar_rev	@ Reverb.

	.word	mus_rg_cinnabar_grp

	.word	mus_rg_cinnabar_1
	.word	mus_rg_cinnabar_2
	.word	mus_rg_cinnabar_3
	.word	mus_rg_cinnabar_4
	.word	mus_rg_cinnabar_5
	.word	mus_rg_cinnabar_6
	.word	mus_rg_cinnabar_7
	.word	mus_rg_cinnabar_8
	.word	mus_rg_cinnabar_9
	.word	mus_rg_cinnabar_10
	.word	mus_rg_cinnabar_11
	.word	mus_rg_cinnabar_12

	.end
