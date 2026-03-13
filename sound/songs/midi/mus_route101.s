	.include "MPlayDef.s"

	.equ	mus_route101_grp, voicegroup_route101
	.equ	mus_route101_pri, 0
	.equ	mus_route101_rev, reverb_set+50
	.equ	mus_route101_mvl, 80
	.equ	mus_route101_key, 0
	.equ	mus_route101_tbs, 1
	.equ	mus_route101_exg, 1
	.equ	mus_route101_cmp, 1

	.section .rodata
	.global	mus_route101
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_route101_1:
	.byte	KEYSH , mus_route101_key+0
mus_route101_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 120*mus_route101_tbs/2
	.byte		VOICE , 73
	.byte		PAN   , c_v+33
	.byte		VOL   , 127*mus_route101_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N05   , An4 , v112
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N11   , Fs4 
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 002   ----------------------------------------
mus_route101_1_002:
	.byte		N05   , An4 , v112
	.byte	W12
	.byte		        Gn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Bn4 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W12
	.byte		N68   , An4 
	.byte	W84
@ 004   ----------------------------------------
mus_route101_1_004:
	.byte		N05   , Fs4 , v112
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte		N05   , An4 , v064
	.byte	W36
	.byte	PEND
@ 005   ----------------------------------------
	.byte		        An4 , v112
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N11   , Fs4 
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_1_002
@ 007   ----------------------------------------
	.byte	W12
	.byte		N68   , An4 , v112
	.byte	W84
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_1_004
@ 009   ----------------------------------------
	.byte		N05   , Cs5 , v112
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N22   , Dn5 
	.byte	W24
	.byte		        Dn4 
	.byte	W12
@ 010   ----------------------------------------
mus_route101_1_010:
	.byte	W12
	.byte		N05   , An4 , v112
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N32   , An4 , v112, gtp2
	.byte	W36
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W12
	.byte		N05   , Gn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N22   , Gn4 
	.byte	W24
	.byte		        Bn4 
	.byte	W12
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_1_010
@ 013   ----------------------------------------
	.byte	W12
	.byte		N05   , Bn4 , v112
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N22   , Dn5 
	.byte	W24
	.byte		        Gn4 
	.byte	W12
@ 014   ----------------------------------------
	.byte	W12
	.byte		N05   , Fs5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		N32   , Dn5 , v112, gtp2
	.byte	W36
@ 015   ----------------------------------------
	.byte	W12
	.byte		        Dn5 , v112, gtp2
	.byte	W36
	.byte		N11   , Cn5 
	.byte	W12
	.byte		N22   , As4 
	.byte	W24
	.byte		N11   , Fn4 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        Dn5 
	.byte	W12
	.byte		N78   , Cs5 , v112, gtp1
	.byte	W84
@ 017   ----------------------------------------
	.byte	W01
	.byte		VOICE , 73
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_route101_1_B1
mus_route101_1_B2:
	.byte		VOICE , 73
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_route101_2:
	.byte	KEYSH , mus_route101_key+0
mus_route101_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 12
	.byte		PAN   , c_v+12
	.byte		VOL   , 127*mus_route101_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N05   , An4 , v112
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N11   , Fs4 
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 001   ----------------------------------------
mus_route101_2_001:
	.byte		N05   , An4 , v112
	.byte	W12
	.byte		        Gn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Bn4 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_route101_2_002:
	.byte	W12
	.byte		N02   , An4 , v112
	.byte	W02
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W04
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N01   
	.byte	W03
	.byte		N01   
	.byte	W16
	.byte	PEND
@ 003   ----------------------------------------
mus_route101_2_003:
	.byte		N05   , Fs4 , v112
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W36
	.byte	PEND
@ 004   ----------------------------------------
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N11   , Fs4 
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_2_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_2_003
@ 008   ----------------------------------------
	.byte		N05   , Cs5 , v112
	.byte	W06
	.byte		        Dn5 
	.byte	W90
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
	.byte	W01
	.byte		VOICE , 12
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_route101_2_B1
mus_route101_2_B2:
	.byte		VOICE , 12
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_route101_3:
	.byte	KEYSH , mus_route101_key+0
mus_route101_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte		PAN   , c_v-13
	.byte		VOL   , 127*mus_route101_mvl/mxv
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
	.byte	W12
	.byte		N05   , Gn4 , v104
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 009   ----------------------------------------
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		N11   , An4 , v100
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N23   , Dn5 
	.byte	W24
	.byte		        Dn4 
	.byte	W12
@ 010   ----------------------------------------
	.byte	W12
	.byte		N05   , Gn4 , v104
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N23   , Gn4 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W12
	.byte		N05   , An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Ds5 
	.byte	W12
	.byte		        Dn5 
	.byte	W06
	.byte		N11   , Cs5 
	.byte	W12
@ 012   ----------------------------------------
	.byte		        An4 
	.byte	W12
	.byte		N05   , Gn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 013   ----------------------------------------
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		N11   , An4 , v100
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		        Dn5 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Fs5 
	.byte	W12
@ 014   ----------------------------------------
	.byte	W12
	.byte		N05   , As4 , v112
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N23   , Dn5 
	.byte	W60
@ 015   ----------------------------------------
	.byte	W12
	.byte		N05   , An4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N23   , An4 
	.byte	W60
@ 016   ----------------------------------------
	.byte	W01
	.byte		VOICE , 45
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_route101_3_B1
mus_route101_3_B2:
	.byte		VOICE , 45
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_route101_4:
	.byte	KEYSH , mus_route101_key+0
mus_route101_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 32
	.byte		VOL   , 127*mus_route101_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W12
	.byte		N12   , Dn1 , v120
	.byte	W42
	.byte		N06   , An1 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W36
@ 001   ----------------------------------------
mus_route101_4_001:
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		        En1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N09   , En2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 
	.byte	W36
	.byte	PEND
@ 002   ----------------------------------------
mus_route101_4_002:
	.byte		N12   , En1 , v120
	.byte	W12
	.byte		        An1 
	.byte	W42
	.byte		N06   , En1 
	.byte	W06
	.byte		N12   , An1 
	.byte	W36
	.byte	PEND
@ 003   ----------------------------------------
mus_route101_4_003:
	.byte		N06   , En2 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , An1 
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		        En1 
	.byte	W06
	.byte		N12   , An1 
	.byte	W24
	.byte		N06   , En2 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte		N12   , An1 
	.byte	W12
	.byte		        Dn1 
	.byte	W42
	.byte		N06   , An1 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W36
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_4_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_4_003
@ 008   ----------------------------------------
mus_route101_4_008:
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W36
	.byte	PEND
@ 009   ----------------------------------------
mus_route101_4_009:
	.byte		N06   , Gn1 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W18
	.byte		N06   , An1 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Fs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En1 
	.byte	W24
	.byte		        En2 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N06   , En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , An1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , An1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_4_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_4_009
@ 014   ----------------------------------------
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N15   , Fn1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N36   , Dn2 
	.byte	W36
	.byte		N12   , As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        As1 
	.byte	W12
	.byte		        An1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N60   , En2 
	.byte	W60
@ 016   ----------------------------------------
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_route101_4_B1
mus_route101_4_B2:
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_route101_5:
	.byte	KEYSH , mus_route101_key+0
mus_route101_5_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 71
	.byte		VOL   , 98*mus_route101_mvl/mxv
	.byte		PAN   , c_v-13
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W12
	.byte		N44   , Cs4 , v044, gtp3
	.byte	W48
	.byte		        Dn4 , v044, gtp3
	.byte	W36
@ 003   ----------------------------------------
mus_route101_5_003:
	.byte	W12
	.byte		N02   , Cs4 , v064
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N05   , Cs4 
	.byte	W12
	.byte		VOICE , 47
	.byte	W12
	.byte		N24   , Fs2 , v127
	.byte	W24
	.byte		        Fn2 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte		VOICE , 71
	.byte	W12
	.byte		N44   , Cs4 , v044, gtp3
	.byte	W48
	.byte		        Dn4 , v044, gtp3
	.byte	W36
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_5_003
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W42
	.byte		VOICE , 71
	.byte	W18
	.byte		N05   , Dn4 , v064
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
@ 010   ----------------------------------------
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N44   , Gn4 , v064, gtp3
	.byte	W48
	.byte		N23   , En4 
	.byte	W24
	.byte		        Dn4 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W12
	.byte		N05   , En4 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N32   , En4 , v064, gtp3
	.byte	W36
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W12
	.byte		        As4 , v064, gtp3
	.byte	W36
	.byte		N11   , An4 
	.byte	W12
	.byte		N23   , Gn4 
	.byte	W24
	.byte		N11   , Fn4 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        As4 
	.byte	W12
	.byte		N80   , An4 , v064, gtp3
	.byte	W84
@ 016   ----------------------------------------
	.byte	W01
	.byte		VOICE , 71
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_route101_5_B1
mus_route101_5_B2:
	.byte		VOICE , 71
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_route101_6:
	.byte	KEYSH , mus_route101_key+0
mus_route101_6_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 4
	.byte		VOL   , 127*mus_route101_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W12
	.byte		N06   , Fs3 , v064
	.byte	W36
	.byte		N06   
	.byte	W48
@ 001   ----------------------------------------
	.byte	W24
	.byte		        Gn3 
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W24
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W12
@ 002   ----------------------------------------
	.byte	W60
	.byte		N24   , En3 
	.byte	W36
@ 003   ----------------------------------------
mus_route101_6_003:
	.byte	W12
	.byte		N03   , An3 , v064
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N06   , An3 
	.byte	W18
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W36
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W12
	.byte		        Fs3 
	.byte	W36
	.byte		N06   
	.byte	W48
@ 005   ----------------------------------------
	.byte	W24
	.byte		        Gn3 
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
@ 006   ----------------------------------------
	.byte	W60
	.byte		N24   , En3 
	.byte	W36
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_6_003
@ 008   ----------------------------------------
	.byte	W12
	.byte		N06   , Bn3 , v064
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte	W03
	.byte		N21   , Gn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W09
@ 009   ----------------------------------------
	.byte	W12
	.byte		N06   , An3 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte	W03
	.byte		N21   , Dn4 
	.byte	W24
	.byte		        Dn3 
	.byte	W09
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte		VOICE , 82
	.byte	W12
	.byte		N06   , Dn5 , v048
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N15   
	.byte	W12
@ 012   ----------------------------------------
	.byte		VOICE , 5
	.byte	W12
	.byte		N06   , Bn3 , v064
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte	W03
	.byte		N21   , Gn4 
	.byte	W24
	.byte		        Bn4 
	.byte	W09
@ 013   ----------------------------------------
	.byte	W12
	.byte		N06   , An3 
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte	W03
	.byte		N21   , Dn4 
	.byte	W15
	.byte		VOICE , 81
	.byte	W09
	.byte		N21   , Fs4 
	.byte	W09
@ 014   ----------------------------------------
	.byte	W12
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		VOICE , 82
	.byte		N12   , As3 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W24
@ 016   ----------------------------------------
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_route101_6_B1
mus_route101_6_B2:
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_route101_7:
	.byte	KEYSH , mus_route101_key+0
mus_route101_7_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		PAN   , c_v-19
	.byte		VOL   , 127*mus_route101_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W12
	.byte		N11   , Dn2 , v080
	.byte	W12
	.byte		N23   , An1 
	.byte	W24
	.byte		N05   , Fs1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W24
	.byte		N23   , Dn2 
	.byte	W12
@ 001   ----------------------------------------
	.byte	W12
	.byte		N11   , En2 
	.byte	W12
	.byte		N23   , Bn1 
	.byte	W24
	.byte		N05   , Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N11   , Gn1 
	.byte	W24
	.byte		N23   , En2 
	.byte	W12
@ 002   ----------------------------------------
mus_route101_7_002:
	.byte	W12
	.byte		N02   , An1 , v080
	.byte	W03
	.byte		        Cs2 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		N36   , En3 , v080, gtp2
	.byte	W36
	.byte	W03
	.byte		N02   , An2 
	.byte	W03
	.byte		N44   , Dn3 
	.byte	W32
	.byte	W01
	.byte	PEND
@ 003   ----------------------------------------
mus_route101_7_003:
	.byte	W12
	.byte		N02   , An2 , v080
	.byte	W03
	.byte		N44   , Cs3 
	.byte	W44
	.byte	W01
	.byte		N11   , An1 , v104
	.byte	W24
	.byte		N05   , En2 , v084
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte		N11   , An1 
	.byte	W12
	.byte		N05   , Dn2 , v080
	.byte	W12
	.byte		N11   , An1 
	.byte	W24
	.byte		N05   , Fs1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W24
	.byte		N23   , Dn2 , v088
	.byte	W12
@ 005   ----------------------------------------
	.byte	W12
	.byte		N05   , En2 , v080
	.byte	W12
	.byte		N11   , Bn1 
	.byte	W24
	.byte		N05   , Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Gn1 
	.byte	W24
	.byte		N23   , En2 , v088
	.byte	W12
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_7_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_7_003
@ 008   ----------------------------------------
	.byte		N17   , An1 , v084
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W12
	.byte		N92   , Bn1 , v080, gtp3
	.byte	W84
@ 011   ----------------------------------------
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N44   , Cs2 , v080, gtp3
	.byte	W36
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W12
	.byte		N92   , As1 , v060, gtp3
	.byte	W84
@ 015   ----------------------------------------
	.byte	W12
	.byte		N84   , An1 , v060, gtp1
	.byte	W84
@ 016   ----------------------------------------
	.byte	W01
	.byte		VOICE , 80
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_route101_7_B1
mus_route101_7_B2:
	.byte		VOICE , 80
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_route101_8:
	.byte	KEYSH , mus_route101_key+0
mus_route101_8_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_route101_mvl/mxv
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
	.byte	W12
	.byte		N06   , Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
@ 009   ----------------------------------------
mus_route101_8_009:
	.byte		N06   , Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_8_009
@ 011   ----------------------------------------
	.byte		N06   , Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W12
	.byte		        Gs4 , v032
	.byte	W12
	.byte		        Gs4 , v040
	.byte	W12
	.byte		        Gs4 , v032
	.byte	W12
	.byte		        Gs4 , v040
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 012   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_8_009
@ 014   ----------------------------------------
	.byte		N06   , Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W36
	.byte		        Gs4 , v032
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
@ 015   ----------------------------------------
	.byte		        Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W36
	.byte		        Gs4 , v032
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W12
@ 016   ----------------------------------------
	.byte	W01
	.byte		VOICE , 127
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_route101_8_B1
mus_route101_8_B2:
	.byte		VOICE , 127
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 9 (Midi-Chn.10) ****************@

mus_route101_9:
	.byte	KEYSH , mus_route101_key+0
mus_route101_9_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_route101_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W12
	.byte		N05   , En3 , v088
	.byte	W24
	.byte		        Fs2 , v092
	.byte	W18
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 , v088
	.byte	W24
	.byte		        Fs2 , v092
	.byte	W12
@ 001   ----------------------------------------
mus_route101_9_001:
	.byte		N05   , Dn3 , v092
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En3 , v088
	.byte	W24
	.byte		        Fs2 , v092
	.byte	W24
	.byte		        En3 , v088
	.byte	W12
	.byte		        Fs2 , v092
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_route101_9_002:
	.byte		N05   , Dn3 , v092
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En3 , v088
	.byte	W24
	.byte		        Fs2 , v092
	.byte	W18
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 , v088
	.byte	W24
	.byte		        Fs2 , v092
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_9_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_9_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_9_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_9_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_9_001
@ 008   ----------------------------------------
	.byte		N05   , Cn1 , v120
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N05   , Cn1 
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W12
@ 009   ----------------------------------------
mus_route101_9_009:
	.byte		N05   , Cn1 , v120
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N05   , Cn1 
	.byte	W12
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_route101_9_010:
	.byte		N05   , Cn1 , v120
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N05   , Cn1 
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_9_009
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_9_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_route101_9_009
@ 014   ----------------------------------------
	.byte		N05   , Cn1 , v120
	.byte	W12
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N05   , Fs2 , v092
	.byte	W06
	.byte		        Fs2 , v072
	.byte	W06
	.byte		        Fs2 , v092
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N05   , Fs2 , v092
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N05   , Fs2 , v092
	.byte	W06
	.byte		        Fs2 , v072
	.byte	W06
	.byte		        Fs2 , v092
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 
	.byte	W12
@ 016   ----------------------------------------
	.byte	W01
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	GOTO
	 .word	mus_route101_9_B1
mus_route101_9_B2:
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_route101:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_route101_pri	@ Priority
	.byte	mus_route101_rev	@ Reverb.

	.word	mus_route101_grp

	.word	mus_route101_1
	.word	mus_route101_2
	.word	mus_route101_3
	.word	mus_route101_4
	.word	mus_route101_5
	.word	mus_route101_6
	.word	mus_route101_7
	.word	mus_route101_8
	.word	mus_route101_9

	.end
