	.include "MPlayDef.s"

	.equ	mus_slateport_grp, voicegroup_slateport
	.equ	mus_slateport_pri, 0
	.equ	mus_slateport_rev, reverb_set+50
	.equ	mus_slateport_mvl, 70
	.equ	mus_slateport_key, 0
	.equ	mus_slateport_tbs, 1
	.equ	mus_slateport_exg, 1
	.equ	mus_slateport_cmp, 1

	.section .rodata
	.global	mus_slateport
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_slateport_1:
	.byte	KEYSH , mus_slateport_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 124*mus_slateport_tbs/2
	.byte		VOICE , 1
	.byte		VOL   , 127*mus_slateport_mvl/mxv
	.byte		PAN   , c_v+3
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W48
mus_slateport_1_B1:
	.byte	W48
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
	.byte		N12   , Fn4 , v127
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N24   , Dn5 
	.byte	W24
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N24   , As4 
	.byte	W12
@ 033   ----------------------------------------
	.byte	W12
	.byte		N36   , Cn5 
	.byte	W36
	.byte		        As4 
	.byte	W36
	.byte		N24   , Gs4 
	.byte	W12
@ 034   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		TIE   , Bn4 
	.byte	W48
@ 035   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 036   ----------------------------------------
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N24   , En5 
	.byte	W24
	.byte		N12   , Dn5 
	.byte	W12
	.byte		N24   , Cn5 
	.byte	W12
@ 037   ----------------------------------------
	.byte	W12
	.byte		N36   , Gn4 
	.byte	W36
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N24   , Bn4 
	.byte	W12
@ 038   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 039   ----------------------------------------
	.byte		        Gs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn4 
	.byte	W60
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W48
	.byte	GOTO
	 .word	mus_slateport_1_B1
mus_slateport_1_B2:
	.byte		VOICE , 1
	.byte		        1
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_slateport_2:
	.byte	KEYSH , mus_slateport_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		PAN   , c_v-54
	.byte		VOL   , 100*mus_slateport_mvl/mxv
	.byte		        100*mus_slateport_mvl/mxv
	.byte		        100*mus_slateport_mvl/mxv
	.byte		        100*mus_slateport_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W48
mus_slateport_2_B1:
	.byte	W12
	.byte		N03   , Gn5 , v064
	.byte	W24
	.byte		N03   
	.byte	W12
@ 001   ----------------------------------------
mus_slateport_2_001:
	.byte	W12
	.byte		N03   , Gn5 , v064
	.byte	W24
	.byte		N03   
	.byte	W24
	.byte		N03   
	.byte	W24
	.byte		N03   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_001
@ 004   ----------------------------------------
mus_slateport_2_004:
	.byte	W12
	.byte		N03   , Gn5 , v064
	.byte	W24
	.byte		N03   
	.byte	W12
	.byte		        Gn5 , v112
	.byte	W12
	.byte		        Gn5 , v076
	.byte	W12
	.byte		        Gn5 , v116
	.byte	W12
	.byte		        Gn5 , v112
	.byte	W06
	.byte		        Gn5 , v080
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_slateport_2_005:
	.byte		N03   , Gn5 , v112
	.byte	W12
	.byte		        Gn5 , v076
	.byte	W12
	.byte		        Gn5 , v072
	.byte	W12
	.byte		        Gn5 , v112
	.byte	W06
	.byte		        Gn5 , v080
	.byte	W06
	.byte		        Gn5 , v112
	.byte	W12
	.byte		        Gn5 , v076
	.byte	W12
	.byte		        Gn5 , v116
	.byte	W12
	.byte		        Gn5 , v112
	.byte	W06
	.byte		        Gn5 , v080
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_005
@ 007   ----------------------------------------
mus_slateport_2_007:
	.byte		N03   , Gn5 , v112
	.byte	W12
	.byte		        Gn5 , v076
	.byte	W12
	.byte		        Gn5 , v072
	.byte	W12
	.byte		        Gn5 , v080
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Gn5 , v112
	.byte	W12
	.byte		        Gn5 , v076
	.byte	W12
	.byte		        Gn5 , v116
	.byte	W12
	.byte		        Gn5 , v112
	.byte	W06
	.byte		        Gn5 , v080
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
mus_slateport_2_008:
	.byte		N03   , Gn5 , v112
	.byte	W12
	.byte		        Gn5 , v076
	.byte	W12
	.byte		        Gn5 , v072
	.byte	W24
	.byte		        Gn5 , v112
	.byte	W12
	.byte		        Gn5 , v076
	.byte	W12
	.byte		        Gn5 , v116
	.byte	W12
	.byte		        Gn5 , v112
	.byte	W06
	.byte		        Gn5 , v080
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_005
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_005
@ 012   ----------------------------------------
	.byte		N03   , Gn5 , v112
	.byte	W24
	.byte		        Gn5 , v072
	.byte	W24
	.byte		        Gn5 , v112
	.byte	W12
	.byte		        Gn5 , v076
	.byte	W12
	.byte		        Gn5 , v116
	.byte	W12
	.byte		        Gn5 , v112
	.byte	W06
	.byte		        Gn5 , v080
	.byte	W06
@ 013   ----------------------------------------
	.byte		        Gn5 , v112
	.byte	W12
	.byte		        Gn5 , v076
	.byte	W12
	.byte		        Gn5 , v072
	.byte	W12
	.byte		        Gn5 , v112
	.byte	W06
	.byte		        Gn5 , v080
	.byte	W06
	.byte		        Gn5 , v112
	.byte	W06
	.byte		        Gn5 , v092
	.byte	W18
	.byte		        Gn5 , v116
	.byte	W12
	.byte		        Gn5 , v112
	.byte	W06
	.byte		        Gn5 , v080
	.byte	W06
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_005
@ 015   ----------------------------------------
	.byte		N03   , Gn5 , v112
	.byte	W06
	.byte		        Gn5 , v088
	.byte	W18
	.byte		        Gn5 , v072
	.byte	W12
	.byte		        Gn5 , v112
	.byte	W06
	.byte		        Gn5 , v080
	.byte	W06
	.byte		        Gn5 , v112
	.byte	W12
	.byte		        Gn5 , v076
	.byte	W12
	.byte		        Gn5 , v116
	.byte	W12
	.byte		        Gn5 , v112
	.byte	W06
	.byte		        Gn5 , v080
	.byte	W06
@ 016   ----------------------------------------
	.byte		        Gn5 , v112
	.byte	W24
	.byte		        Gn5 , v072
	.byte	W36
	.byte		        Gn5 , v064
	.byte	W24
	.byte		N03   
	.byte	W12
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_001
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_001
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_001
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_004
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_005
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_005
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_007
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_008
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_005
@ 036   ----------------------------------------
	.byte		N03   , Gn5 , v112
	.byte	W12
	.byte		        Gn5 , v076
	.byte	W12
	.byte		        Gn5 , v072
	.byte	W12
	.byte		        Gn5 , v112
	.byte	W06
	.byte		        Gn5 , v080
	.byte	W18
	.byte		        Gn5 , v064
	.byte	W24
	.byte		N03   
	.byte	W12
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_001
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_001
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_2_001
@ 042   ----------------------------------------
	.byte	W12
	.byte		N03   , Gn5 , v064
	.byte	W24
	.byte		N03   
	.byte	W12
	.byte	GOTO
	 .word	mus_slateport_2_B1
mus_slateport_2_B2:
	.byte		VOICE , 127
	.byte		        127
	.byte		VOL   , 100*mus_slateport_mvl/mxv
	.byte		        100*mus_slateport_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_slateport_3:
	.byte	KEYSH , mus_slateport_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 126
	.byte		PAN   , c_v+51
	.byte		VOL   , 100*mus_slateport_mvl/mxv
	.byte		        100*mus_slateport_mvl/mxv
	.byte		        100*mus_slateport_mvl/mxv
	.byte		        100*mus_slateport_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W48
mus_slateport_3_B1:
	.byte		N06   , En5 , v112
	.byte	W24
	.byte		        En5 , v080
	.byte	W24
@ 001   ----------------------------------------
mus_slateport_3_001:
	.byte		N06   , En5 , v112
	.byte	W24
	.byte		        En5 , v088
	.byte	W24
	.byte		        En5 , v112
	.byte	W24
	.byte		        En5 , v080
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_001
@ 004   ----------------------------------------
mus_slateport_3_004:
	.byte		N06   , En5 , v112
	.byte	W24
	.byte		        En5 , v088
	.byte	W72
	.byte	PEND
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W36
	.byte		N12   , En5 , v112
	.byte	W60
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W12
	.byte		        En5 , v092
	.byte	W24
	.byte		        En5 , v112
	.byte	W60
@ 013   ----------------------------------------
	.byte	W60
	.byte		        En5 , v092
	.byte	W36
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W12
	.byte		        En5 , v096
	.byte	W84
@ 016   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        En5 , v112
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		        En5 , v080
	.byte	W24
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_001
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_001
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_001
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_004
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W36
	.byte		N12   , En5 , v112
	.byte	W60
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W48
	.byte		N06   
	.byte	W24
	.byte		        En5 , v080
	.byte	W24
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_001
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_001
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_3_001
@ 042   ----------------------------------------
	.byte		N06   , En5 , v112
	.byte	W24
	.byte		        En5 , v088
	.byte	W24
	.byte	GOTO
	 .word	mus_slateport_3_B1
mus_slateport_3_B2:
	.byte		VOICE , 126
	.byte		        126
	.byte		VOL   , 100*mus_slateport_mvl/mxv
	.byte		        100*mus_slateport_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_slateport_4:
	.byte	KEYSH , mus_slateport_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		PAN   , c_v-26
	.byte		VOL   , 69*mus_slateport_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W48
mus_slateport_4_B1:
	.byte		N06   , An3 , v092
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 001   ----------------------------------------
mus_slateport_4_001:
	.byte		N06   , An4 , v092
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
mus_slateport_4_002:
	.byte		N06   , Bn4 , v092
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N18   , An3 
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
@ 004   ----------------------------------------
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W42
	.byte		        Bn4 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 005   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N06   , As4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N24   , Cs5 
	.byte	W24
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N06   , An4 
	.byte	W12
	.byte		N24   , En4 
	.byte	W24
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N36   , Cn4 
	.byte	W36
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 007   ----------------------------------------
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
@ 008   ----------------------------------------
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N30   , Gn3 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 009   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N36   , Cs4 
	.byte	W12
@ 010   ----------------------------------------
	.byte	W36
	.byte		N06   , As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N30   , Dn4 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 011   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		N24   , En4 
	.byte	W24
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N48   , Cs4 
	.byte	W48
@ 012   ----------------------------------------
	.byte		N24   , En4 
	.byte	W24
	.byte		        Gn4 
	.byte	W72
@ 013   ----------------------------------------
	.byte		N12   , En5 
	.byte	W12
	.byte		N06   , Dn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		N24   , Dn5 
	.byte	W24
	.byte		N06   , En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		N24   , Cs5 
	.byte	W24
@ 014   ----------------------------------------
	.byte		        Gn4 
	.byte	W24
	.byte		N06   , An4 
	.byte	W12
	.byte		N42   , Cn5 
	.byte	W48
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 015   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		N24   , En5 
	.byte	W24
	.byte		N06   , Fs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		N24   , Ds5 
	.byte	W24
@ 016   ----------------------------------------
	.byte		        Bn4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
@ 017   ----------------------------------------
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
@ 018   ----------------------------------------
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		N78   , An5 
	.byte	W54
@ 019   ----------------------------------------
	.byte	W48
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
@ 020   ----------------------------------------
	.byte		N06   
	.byte	W18
	.byte		        Gn5 
	.byte	W06
	.byte		        An5 
	.byte	W12
	.byte		N12   , En5 
	.byte	W12
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_4_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_4_002
@ 023   ----------------------------------------
mus_slateport_4_023:
	.byte		N06   , Dn4 , v092
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte	PEND
@ 024   ----------------------------------------
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_4_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_4_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_4_023
@ 028   ----------------------------------------
	.byte		N24   , Dn3 , v092
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
@ 029   ----------------------------------------
	.byte		        Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W36
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
@ 030   ----------------------------------------
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		TIE   , En4 
	.byte	W54
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
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
	.byte	W48
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 039   ----------------------------------------
	.byte		        Bn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 040   ----------------------------------------
	.byte		        Cs5 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 041   ----------------------------------------
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W18
	.byte		N12   , An4 
	.byte	W12
	.byte		N24   , Gs4 
	.byte	W24
@ 042   ----------------------------------------
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte	GOTO
	 .word	mus_slateport_4_B1
mus_slateport_4_B2:
	.byte		VOICE , 80
	.byte		        80
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_slateport_5:
	.byte	KEYSH , mus_slateport_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 82
	.byte		VOL   , 81*mus_slateport_mvl/mxv
	.byte		PAN   , c_v+18
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W48
mus_slateport_5_B1:
	.byte	W48
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W48
	.byte		N48   , En3 , v064
	.byte	W48
@ 005   ----------------------------------------
	.byte		N12   , En4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		N48   , Gn3 
	.byte	W48
@ 006   ----------------------------------------
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		N24   , Gn5 
	.byte	W24
	.byte		        En3 
	.byte	W24
@ 007   ----------------------------------------
	.byte		        Cn3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N36   , Ds3 
	.byte	W36
	.byte		N24   , Fs3 
	.byte	W24
@ 008   ----------------------------------------
	.byte		        Ds3 
	.byte	W48
	.byte		N96   , Dn3 
	.byte	W48
@ 009   ----------------------------------------
	.byte	W48
	.byte		N48   , Cs3 
	.byte	W48
@ 010   ----------------------------------------
	.byte		        Gn3 
	.byte	W48
	.byte		N42   , An3 
	.byte	W48
@ 011   ----------------------------------------
	.byte		N48   , Gn3 
	.byte	W48
	.byte		        An3 
	.byte	W48
@ 012   ----------------------------------------
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W12
@ 014   ----------------------------------------
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N24   , An4 
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , An4 
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        Ds4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N24   , En4 
	.byte	W12
@ 017   ----------------------------------------
	.byte	W12
	.byte		N36   , Bn3 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W12
@ 018   ----------------------------------------
	.byte	W12
	.byte		N36   , En4 
	.byte	W36
	.byte		        Bn3 
	.byte	W36
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 019   ----------------------------------------
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
@ 020   ----------------------------------------
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W54
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
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06   , En4 
	.byte	W12
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N24   , Dn5 
	.byte	W24
	.byte		N06   , Cn5 
	.byte	W12
	.byte		N24   , As4 
	.byte	W12
@ 032   ----------------------------------------
	.byte	W12
	.byte		N06   , Cn5 
	.byte	W36
	.byte		N36   , As4 
	.byte	W36
	.byte		N24   , Gs4 
	.byte	W12
@ 033   ----------------------------------------
	.byte	W12
	.byte		N06   , Gn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N72   , Bn4 
	.byte	W48
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , Bn4 
	.byte	W12
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , Dn5 
	.byte	W12
	.byte		N24   , En5 
	.byte	W24
	.byte		N06   , Dn5 
	.byte	W12
	.byte		N24   , Cn5 
	.byte	W12
@ 036   ----------------------------------------
	.byte	W12
	.byte		N06   , Gn4 
	.byte	W36
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N24   , Bn4 
	.byte	W12
@ 037   ----------------------------------------
	.byte	W12
	.byte		N06   , Cn5 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , Gn4 
	.byte	W12
@ 038   ----------------------------------------
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N06   , An4 
	.byte	W12
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W60
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W48
	.byte	GOTO
	 .word	mus_slateport_5_B1
mus_slateport_5_B2:
	.byte		VOICE , 82
	.byte		        82
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_slateport_6:
	.byte	KEYSH , mus_slateport_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 87
	.byte		VOL   , 113*mus_slateport_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W48
mus_slateport_6_B1:
	.byte		N06   , Dn2 , v108
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 001   ----------------------------------------
mus_slateport_6_001:
	.byte		N06   , Cs2 , v108
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N30   , Gn1 
	.byte	W36
	.byte		N06   , An1 
	.byte	W12
@ 003   ----------------------------------------
	.byte		N30   , Fs1 
	.byte	W36
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N24   
	.byte	W24
@ 004   ----------------------------------------
	.byte		        Gn1 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		N06   , En1 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 005   ----------------------------------------
mus_slateport_6_005:
	.byte		N06   , En1 , v108
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 007   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N06   , Ds1 
	.byte	W12
	.byte		        Fs1 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 008   ----------------------------------------
	.byte		        Ds1 
	.byte	W12
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N06   , As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N06   , En1 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 009   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		N18   , Dn1 
	.byte	W24
	.byte		N06   , Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 010   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		N18   
	.byte	W24
	.byte		N06   , Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 011   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W24
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 012   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N06   , En1 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_6_005
@ 014   ----------------------------------------
	.byte		N06   , Gn1 , v108
	.byte	W12
	.byte		N18   , An1 
	.byte	W24
	.byte		N06   , Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 015   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		N18   , Fs1 
	.byte	W24
	.byte		N06   , En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 016   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N06   , Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 017   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 018   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , An2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 019   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 020   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_6_001
@ 022   ----------------------------------------
	.byte		N06   , An1 , v108
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N30   , Gn1 
	.byte	W36
	.byte		N06   , An1 
	.byte	W12
@ 023   ----------------------------------------
	.byte		N30   , Fs1 
	.byte	W36
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
@ 024   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        En1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N24   , Cs2 
	.byte	W24
	.byte		N06   , Dn2 
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Cs2 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N06   , An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 026   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 027   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N24   
	.byte	W24
@ 028   ----------------------------------------
	.byte		        Gn1 
	.byte	W24
	.byte		N12   , An1 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N24   
	.byte	W24
@ 029   ----------------------------------------
	.byte		        Gn1 
	.byte	W24
	.byte		N18   , An1 
	.byte	W24
	.byte		N06   , En1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N24   
	.byte	W24
@ 030   ----------------------------------------
	.byte		        Gs1 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		N06   , As1 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 031   ----------------------------------------
	.byte		        Fn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , As1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        An1 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 032   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 033   ----------------------------------------
	.byte		        Ds1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gn1 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 034   ----------------------------------------
	.byte		        Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        As1 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 035   ----------------------------------------
	.byte		        Fn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , As1 
	.byte	W24
	.byte		        Cn2 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 036   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 037   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , An2 
	.byte	W12
	.byte		N12   , An1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 038   ----------------------------------------
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N30   , En2 
	.byte	W36
	.byte		N06   
	.byte	W12
@ 039   ----------------------------------------
	.byte		N30   , Ds2 
	.byte	W36
	.byte		N06   
	.byte	W12
	.byte		N30   , Cs2 
	.byte	W36
	.byte		N06   
	.byte	W12
@ 040   ----------------------------------------
	.byte		N30   , Bn1 
	.byte	W36
	.byte		N06   
	.byte	W12
	.byte		N30   , An1 
	.byte	W36
	.byte		N06   
	.byte	W12
@ 041   ----------------------------------------
	.byte		N30   , Gs1 
	.byte	W36
	.byte		N06   
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N24   
	.byte	W24
@ 042   ----------------------------------------
	.byte		        Gn1 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte	GOTO
	 .word	mus_slateport_6_B1
mus_slateport_6_B2:
	.byte		VOICE , 87
	.byte		        87
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_slateport_7:
	.byte	KEYSH , mus_slateport_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 14
	.byte		VOL   , 127*mus_slateport_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W48
mus_slateport_7_B1:
	.byte		N36   , Fs4 , v127
	.byte	W24
	.byte		N24   , Dn4 
	.byte	W24
@ 001   ----------------------------------------
mus_slateport_7_001:
	.byte		N24   , En4 , v127
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_slateport_7_002:
	.byte		N24   , En4 , v127
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
mus_slateport_7_003:
	.byte		N24   , An4 , v127
	.byte	W24
	.byte		        Fs4 
	.byte	W72
	.byte	PEND
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
	.byte	W48
	.byte		        An4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
@ 020   ----------------------------------------
	.byte		        Fs4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_7_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_7_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_7_003
@ 024   ----------------------------------------
	.byte	W48
	.byte		N24   , Fs4 , v100
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 025   ----------------------------------------
	.byte		        En4 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 026   ----------------------------------------
	.byte		        En4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
@ 027   ----------------------------------------
	.byte		        An4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
@ 028   ----------------------------------------
	.byte		        Dn4 
	.byte	W24
	.byte		        En4 
	.byte	W72
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
	.byte	W48
	.byte	GOTO
	 .word	mus_slateport_7_B1
mus_slateport_7_B2:
	.byte		VOICE , 14
	.byte		        14
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_slateport_8:
	.byte	KEYSH , mus_slateport_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 127*mus_slateport_mvl/mxv
	.byte		PAN   , c_v-13
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W48
mus_slateport_8_B1:
	.byte	W48
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
	.byte	W48
	.byte		N24   , An4 , v100
	.byte	W24
	.byte		        Gn4 
	.byte	W24
@ 020   ----------------------------------------
	.byte		        Fs4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 021   ----------------------------------------
mus_slateport_8_021:
	.byte		N24   , En4 , v100
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
mus_slateport_8_022:
	.byte		N24   , En4 , v100
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
	.byte		        An4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
@ 024   ----------------------------------------
	.byte		        Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_8_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_8_022
@ 027   ----------------------------------------
	.byte		N24   , An4 , v100
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
@ 028   ----------------------------------------
	.byte		        Dn4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
@ 029   ----------------------------------------
	.byte		        Dn4 
	.byte	W24
	.byte		        En4 
	.byte	W36
	.byte		N06   , Gn3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
@ 030   ----------------------------------------
	.byte		        Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W72
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
	.byte	W48
	.byte	GOTO
	 .word	mus_slateport_8_B1
mus_slateport_8_B2:
	.byte		VOICE , 48
	.byte		        48
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 9 (Midi-Chn.9) ****************@

mus_slateport_9:
	.byte	KEYSH , mus_slateport_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 17
	.byte		VOL   , 127*mus_slateport_mvl/mxv
	.byte		PAN   , c_v+15
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W48
mus_slateport_9_B1:
	.byte		N36   , Fs4 , v112
	.byte	W24
	.byte		N24   , Dn4 
	.byte	W24
@ 001   ----------------------------------------
	.byte		        En4 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 002   ----------------------------------------
	.byte		        En4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
@ 003   ----------------------------------------
	.byte		        An4 
	.byte	W24
	.byte		        Fs4 
	.byte	W72
@ 004   ----------------------------------------
	.byte	W84
	.byte		N06   , Dn5 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
@ 005   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N06   , Cs5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N24   , En5 
	.byte	W24
	.byte		N06   , Fs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N06   , Cs5 
	.byte	W12
	.byte		N24   , An4 
	.byte	W24
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N36   , An4 
	.byte	W36
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 007   ----------------------------------------
	.byte		N12   , An4 
	.byte	W12
	.byte		N06   , Bn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N12   , An4 
	.byte	W12
	.byte		N06   , Gn4 
	.byte	W12
@ 008   ----------------------------------------
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N24   , En4 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 009   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N12   , En5 
	.byte	W12
	.byte		N06   , Dn5 
	.byte	W12
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N06   , Bn4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		N36   , An4 
	.byte	W12
@ 010   ----------------------------------------
	.byte	W36
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N30   , An4 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 011   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N06   , En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N96   , An4 
	.byte	W48
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
	.byte	W48
	.byte	GOTO
	 .word	mus_slateport_9_B1
mus_slateport_9_B2:
	.byte		VOICE , 17
	.byte		        17
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 10 (Midi-Chn.10) ****************@

mus_slateport_10:
	.byte	KEYSH , mus_slateport_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_slateport_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_slateport_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_slateport_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_slateport_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N12   , Cn1 , v100
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 , v127
	.byte	W12
mus_slateport_10_B1:
	.byte		N24   , En1 , v127
	.byte		N24   , An2 , v100
	.byte	W24
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
@ 001   ----------------------------------------
mus_slateport_10_001:
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		N12   , En1 , v127
	.byte		N12   , Gn2 , v100
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N24   , En1 , v127
	.byte		N24   , An2 , v100
	.byte	W24
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_slateport_10_002:
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        En1 , v127
	.byte		N06   , Gn2 , v100
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W12
	.byte		N24   , En1 , v127
	.byte		N24   , An2 , v100
	.byte	W24
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		N12   , En1 , v127
	.byte		N12   , Gn2 , v100
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 , v127
	.byte	W12
@ 004   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        En1 , v127
	.byte		N06   , Gn2 , v100
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 005   ----------------------------------------
mus_slateport_10_005:
	.byte		N06   , Cn1 , v100
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Dn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_10_005
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_10_005
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_10_005
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_10_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_10_005
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_10_005
@ 012   ----------------------------------------
	.byte		N06   , Dn1 , v100
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N24   , Cn1 
	.byte		N24   , An2 
	.byte	W24
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_10_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_10_005
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_10_005
@ 016   ----------------------------------------
	.byte		N06   , Cn1 , v100
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 017   ----------------------------------------
mus_slateport_10_017:
	.byte		N06   , Dn1 , v100
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_10_017
@ 019   ----------------------------------------
	.byte		N06   , Dn1 , v100
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N24   , En1 , v127
	.byte		N24   , An2 , v100
	.byte	W24
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_10_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_10_002
@ 023   ----------------------------------------
mus_slateport_10_023:
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		N12   , En1 , v127
	.byte		N12   , Gn2 , v100
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N24   , En1 , v127
	.byte		N24   , An2 , v100
	.byte	W24
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 , v127
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_10_002
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_10_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_10_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_10_023
@ 028   ----------------------------------------
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        En1 , v127
	.byte		N06   , Gn2 , v100
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W12
	.byte		N24   , En1 , v127
	.byte		N24   , An2 , v100
	.byte	W24
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 , v127
	.byte	W12
@ 029   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        En1 , v127
	.byte		N06   , Gn2 , v100
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W12
	.byte		N12   
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 , v127
	.byte	W12
@ 030   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        En1 , v127
	.byte		N06   , An2 , v100
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		        En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
@ 031   ----------------------------------------
mus_slateport_10_031:
	.byte		N06   , Cn1 , v100
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        En1 , v127
	.byte	W24
	.byte		        Cn1 , v100
	.byte	W24
	.byte		        En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte	PEND
@ 032   ----------------------------------------
	.byte		        Cn1 , v100
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        En1 , v127
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W18
	.byte		        Cn1 
	.byte	W24
	.byte		        En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
@ 033   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        En1 , v127
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
@ 034   ----------------------------------------
	.byte		        En1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        En1 , v127
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W24
	.byte		        En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_10_031
@ 036   ----------------------------------------
	.byte		N06   , Cn1 , v100
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        En1 , v127
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
@ 037   ----------------------------------------
	.byte		        En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        En1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        En1 , v127
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
@ 038   ----------------------------------------
	.byte		        En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        En1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W12
	.byte		N24   , En1 , v127
	.byte		N24   , An2 , v100
	.byte	W24
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_10_001
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_10_002
@ 041   ----------------------------------------
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		N12   , En1 , v127
	.byte		N12   , Gn2 , v100
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N12   
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 , v127
	.byte	W12
@ 042   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		        En1 , v127
	.byte		N06   , An2 , v100
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W12
	.byte	GOTO
	 .word	mus_slateport_10_B1
mus_slateport_10_B2:
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_slateport_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_slateport_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 11 (Midi-Chn.11) ****************@

mus_slateport_11:
	.byte	KEYSH , mus_slateport_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 12
	.byte		VOL   , 127*mus_slateport_mvl/mxv
	.byte		PAN   , c_v-20
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W48
mus_slateport_11_B1:
	.byte	W48
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W48
	.byte		VOICE , 12
	.byte	W12
	.byte		N12   , Gn4 , v127
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
@ 004   ----------------------------------------
	.byte		        Dn4 
	.byte	W24
	.byte		N02   , En4 
	.byte	W03
	.byte		        En4 , v124
	.byte	W03
	.byte		        En4 , v116
	.byte	W03
	.byte		        En4 , v108
	.byte	W03
	.byte		        En4 , v100
	.byte	W03
	.byte		        En4 , v092
	.byte	W03
	.byte		        En4 , v076
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        En4 , v056
	.byte	W03
	.byte		        En4 , v052
	.byte	W32
	.byte	W01
	.byte		N06   , Dn5 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
@ 005   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N06   , Cs5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N24   , En5 
	.byte	W24
	.byte		N06   , Fs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N06   , Cs5 
	.byte	W12
	.byte		N24   , An4 
	.byte	W24
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N36   , An4 
	.byte	W36
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 007   ----------------------------------------
	.byte		N12   , An4 
	.byte	W12
	.byte		N06   , Bn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N12   , An4 
	.byte	W12
	.byte		N06   , Gn4 
	.byte	W12
@ 008   ----------------------------------------
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N24   , En4 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 009   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N12   , En5 
	.byte	W12
	.byte		N06   , Dn5 
	.byte	W12
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N06   , Bn4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		N36   , An4 
	.byte	W12
@ 010   ----------------------------------------
	.byte	W36
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N30   , An4 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 011   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N06   , En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N96   , An4 
	.byte	W48
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte		VOICE , 9
	.byte		N12   , Gn4 , v044
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N24   , En4 
	.byte	W24
@ 014   ----------------------------------------
	.byte		        Cs4 
	.byte	W24
	.byte		N06   , En4 
	.byte	W12
	.byte		N42   , Fs4 
	.byte	W48
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 015   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N24   , Fs4 
	.byte	W24
@ 016   ----------------------------------------
	.byte		        En4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W18
	.byte		N06   , Fs4 
	.byte	W18
	.byte		N48   , En4 
	.byte	W12
@ 017   ----------------------------------------
	.byte	W48
	.byte		N12   , Gn4 
	.byte	W18
	.byte		N06   , Fs4 
	.byte	W18
	.byte		N48   , En4 
	.byte	W12
@ 018   ----------------------------------------
	.byte	W36
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N78   , En4 
	.byte	W54
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
	.byte	W48
	.byte	GOTO
	 .word	mus_slateport_11_B1
mus_slateport_11_B2:
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 12 (Midi-Chn.12) ****************@

mus_slateport_12:
	.byte	KEYSH , mus_slateport_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 46
	.byte		VOL   , 116*mus_slateport_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W48
mus_slateport_12_B1:
	.byte		N06   , An4 , v127
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
@ 001   ----------------------------------------
mus_slateport_12_001:
	.byte		N06   , An5 , v127
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
mus_slateport_12_002:
	.byte		N06   , Bn5 , v127
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        Dn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W18
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
@ 004   ----------------------------------------
	.byte		        Dn4 
	.byte	W24
	.byte		        En4 
	.byte	W72
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
	.byte	W48
	.byte		N06   , An4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_12_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_12_002
@ 023   ----------------------------------------
	.byte		N06   , Dn5 , v127
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
@ 024   ----------------------------------------
	.byte		        En3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N06   , An4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_12_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_slateport_12_002
@ 027   ----------------------------------------
	.byte		N06   , Dn5 , v127
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W54
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
	.byte	W48
	.byte		        Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N06   
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , Bn3 
	.byte	W06
@ 034   ----------------------------------------
	.byte		        Gn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Gn3 
	.byte		N06   , Ds4 
	.byte	W54
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W48
	.byte		        Bn4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Bn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
@ 039   ----------------------------------------
	.byte		        Bn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Bn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Bn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Bn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
@ 040   ----------------------------------------
	.byte		        Cs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Bn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Bn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
@ 041   ----------------------------------------
	.byte		        En5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W18
	.byte		N12   , An4 
	.byte	W12
	.byte		N24   , Gs4 
	.byte	W24
@ 042   ----------------------------------------
	.byte		        Dn4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte	GOTO
	 .word	mus_slateport_12_B1
mus_slateport_12_B2:
	.byte		VOICE , 46
	.byte		        46
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 13 (Midi-Chn.13) ****************@

mus_slateport_13:
	.byte	KEYSH , mus_slateport_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 24
	.byte		VOL   , 82*mus_slateport_mvl/mxv
	.byte		PAN   , c_v-13
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W48
mus_slateport_13_B1:
	.byte	W48
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W48
	.byte		N30   , Bn3 , v127
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 005   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N06   , As3 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 006   ----------------------------------------
	.byte		N24   , An3 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N36   , Cn4 
	.byte	W36
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 007   ----------------------------------------
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N36   , Bn3 
	.byte	W36
	.byte		N06   , Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 008   ----------------------------------------
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N06   , Fs4 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 009   ----------------------------------------
	.byte		        Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N06   , An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
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
	.byte	W48
	.byte		        En3 
	.byte		N06   , An4 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N06   
	.byte		N06   , Gn4 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N06   
	.byte		N06   , Fs4 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N06   
	.byte		N06   , Gn4 
	.byte	W12
	.byte		        En3 
	.byte	W60
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
	.byte	W48
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
@ 028   ----------------------------------------
	.byte		        Dn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 029   ----------------------------------------
	.byte		        Bn3 
	.byte	W24
	.byte		        En4 
	.byte	W36
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
@ 030   ----------------------------------------
	.byte		        Dn4 
	.byte	W24
	.byte		        An4 
	.byte	W72
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
	.byte	W96
@ 038   ----------------------------------------
	.byte	W48
	.byte		        Gs4 , v100
	.byte	W24
	.byte		        En4 
	.byte	W24
@ 039   ----------------------------------------
	.byte		        Fs4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        Gs4 
	.byte	W24
	.byte		        En4 
	.byte	W24
@ 040   ----------------------------------------
	.byte		        Fs4 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		        An4 
	.byte	W24
@ 041   ----------------------------------------
	.byte		        Bn4 
	.byte	W24
	.byte		        Gs4 
	.byte	W36
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Gs3 
	.byte	W24
@ 042   ----------------------------------------
	.byte		        Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte	GOTO
	 .word	mus_slateport_13_B1
mus_slateport_13_B2:
	.byte		VOICE , 24
	.byte		        24
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 14 (Midi-Chn.14) ****************@

mus_slateport_14:
	.byte	KEYSH , mus_slateport_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 60
	.byte		VOL   , 110*mus_slateport_mvl/mxv
	.byte		PAN   , c_v+17
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W48
mus_slateport_14_B1:
	.byte	W48
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
	.byte	W48
	.byte		N84   , Bn2 , v104
	.byte	W48
@ 013   ----------------------------------------
	.byte	W36
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N48   , Cs3 
	.byte	W48
@ 014   ----------------------------------------
	.byte		N24   , En3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		N84   , Cn3 
	.byte	W48
@ 015   ----------------------------------------
	.byte	W36
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N48   , Bn2 
	.byte	W48
@ 016   ----------------------------------------
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		N96   , Gn3 
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
	.byte		N96   
	.byte	W48
@ 018   ----------------------------------------
	.byte	W48
	.byte		        An3 
	.byte	W48
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
	.byte	W48
	.byte		N84   , Dn3 , v108
	.byte	W48
@ 031   ----------------------------------------
	.byte	W36
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N96   , Cn3 
	.byte	W48
@ 032   ----------------------------------------
	.byte	W48
	.byte		        Ds3 
	.byte	W48
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W48
	.byte		N84   , Dn4 , v127
	.byte	W48
@ 035   ----------------------------------------
	.byte	W36
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N96   , En4 
	.byte	W48
@ 036   ----------------------------------------
	.byte	W48
	.byte		        Cn4 
	.byte	W48
@ 037   ----------------------------------------
	.byte	W48
	.byte		N48   , Dn4 
	.byte	W48
@ 038   ----------------------------------------
	.byte		        Fs4 
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W48
	.byte	GOTO
	 .word	mus_slateport_14_B1
mus_slateport_14_B2:
	.byte		VOICE , 60
	.byte		        60
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 15 (Midi-Chn.15) ****************@

mus_slateport_15:
	.byte	KEYSH , mus_slateport_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 59
	.byte		PAN   , c_v+6
	.byte		VOL   , 67*mus_slateport_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W48
mus_slateport_15_B1:
	.byte	W48
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
	.byte		N06   , En4 , v088
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 011   ----------------------------------------
	.byte		N24   , En4 
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N36   
	.byte	W36
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
@ 012   ----------------------------------------
	.byte		N24   , An3 
	.byte	W24
	.byte		        Cs4 
	.byte	W72
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
	.byte	W48
	.byte	GOTO
	 .word	mus_slateport_15_B1
mus_slateport_15_B2:
	.byte		VOICE , 59
	.byte		        59
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 16 (Midi-Chn.16) ****************@

mus_slateport_16:
	.byte	KEYSH , mus_slateport_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 21
	.byte		VOL   , 127*mus_slateport_mvl/mxv
	.byte		PAN   , c_v+17
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W48
mus_slateport_16_B1:
	.byte	W48
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
	.byte		N12   , Gn4 , v127
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N24   , En4 
	.byte	W24
@ 014   ----------------------------------------
	.byte		        Cs4 
	.byte	W24
	.byte		N06   , En4 
	.byte	W12
	.byte		N42   , Fs4 
	.byte	W48
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 015   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N24   , Fs4 
	.byte	W24
@ 016   ----------------------------------------
	.byte		        En4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W18
	.byte		N06   , Fs4 
	.byte	W18
	.byte		N48   , En4 
	.byte	W12
@ 017   ----------------------------------------
	.byte	W48
	.byte		N12   , Gn4 
	.byte	W18
	.byte		N06   , Fs4 
	.byte	W18
	.byte		N48   , En4 
	.byte	W12
@ 018   ----------------------------------------
	.byte	W36
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N78   , En4 
	.byte	W54
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
	.byte	W48
	.byte	GOTO
	 .word	mus_slateport_16_B1
mus_slateport_16_B2:
	.byte		VOICE , 21
	.byte		        21
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_slateport:
	.byte	16	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_slateport_pri	@ Priority
	.byte	mus_slateport_rev	@ Reverb.

	.word	mus_slateport_grp

	.word	mus_slateport_1
	.word	mus_slateport_2
	.word	mus_slateport_3
	.word	mus_slateport_4
	.word	mus_slateport_5
	.word	mus_slateport_6
	.word	mus_slateport_7
	.word	mus_slateport_8
	.word	mus_slateport_9
	.word	mus_slateport_10
	.word	mus_slateport_11
	.word	mus_slateport_12
	.word	mus_slateport_13
	.word	mus_slateport_14
	.word	mus_slateport_15
	.word	mus_slateport_16

	.end
