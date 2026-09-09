	.include "MPlayDef.s"

	.equ	mus_diamonds_rihanna_grp, voicegroup_fly_me_to_the_moon
	.equ	mus_diamonds_rihanna_pri, 0
	.equ	mus_diamonds_rihanna_rev, reverb_set+12
	.equ	mus_diamonds_rihanna_mvl, 84
	.equ	mus_diamonds_rihanna_key, 0
	.equ	mus_diamonds_rihanna_tbs, 1
	.equ	mus_diamonds_rihanna_exg, 1
	.equ	mus_diamonds_rihanna_cmp, 1

	.section .rodata
	.global	mus_diamonds_rihanna
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_diamonds_rihanna_1:
	.byte	KEYSH , mus_diamonds_rihanna_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 85*mus_diamonds_rihanna_tbs/2
	.byte		VOICE , 42
	.byte		VOL   , 101*mus_diamonds_rihanna_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 102*mus_diamonds_rihanna_mvl/mxv
	.byte		        110*mus_diamonds_rihanna_mvl/mxv
	.byte		        102*mus_diamonds_rihanna_mvl/mxv
	.byte		N24   , Dn2 , v064
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 , v072
	.byte	W24
	.byte		N23   , Dn2 , v060
	.byte		N23   , Gn2 
	.byte		N23   , Bn2 , v068
	.byte	W24
	.byte		        Dn2 , v060
	.byte		N23   , Gn2 
	.byte		N23   , Bn2 , v072
	.byte	W24
	.byte		        Dn2 , v060
	.byte		N23   , Gn2 , v068
	.byte		N23   , Bn2 , v064
	.byte	W23
	.byte		N24   , Dn2 
	.byte		N24   , Fs2 , v072
	.byte		N24   , Bn2 , v068
	.byte	W01
@ 001   ----------------------------------------
mus_diamonds_rihanna_1_001:
	.byte	W24
	.byte		N23   , Dn2 , v060
	.byte		N23   , Fs2 
	.byte		N23   , Bn2 , v068
	.byte	W24
	.byte		        Dn2 , v060
	.byte		N23   , Fs2 
	.byte		N23   , Bn2 , v072
	.byte	W24
	.byte		        Dn2 , v060
	.byte		N23   , Fs2 
	.byte		N23   , Bn2 , v072
	.byte	W23
	.byte		N24   , En2 , v064
	.byte		N24   , An2 
	.byte		N24   , Cs3 , v076
	.byte	W01
	.byte	PEND
@ 002   ----------------------------------------
mus_diamonds_rihanna_1_002:
	.byte	W24
	.byte		N23   , En2 , v060
	.byte		N23   , An2 
	.byte		N23   , Cs3 , v068
	.byte	W24
	.byte		        En2 , v060
	.byte		N23   , An2 
	.byte		N23   , Cs3 , v072
	.byte	W24
	.byte		        En2 , v060
	.byte		N23   , An2 
	.byte		N23   , Cs3 , v072
	.byte	W23
	.byte		N24   , An0 , v060
	.byte		N24   , An1 , v076
	.byte	W01
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W48
	.byte		N23   , Fs0 , v056
	.byte		N23   , Fs1 , v076
	.byte	W24
	.byte		        Fs0 , v056
	.byte		N23   , Fs1 , v072
	.byte	W23
	.byte		N24   , Dn2 , v064
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 , v076
	.byte	W01
@ 004   ----------------------------------------
mus_diamonds_rihanna_1_004:
	.byte	W24
	.byte		N23   , Dn2 , v060
	.byte		N23   , Gn2 
	.byte		N23   , Bn2 , v068
	.byte	W24
	.byte		        Dn2 , v060
	.byte		N23   , Gn2 
	.byte		N23   , Bn2 , v072
	.byte	W24
	.byte		        Dn2 , v060
	.byte		N23   , Gn2 , v068
	.byte		N23   , Bn2 , v064
	.byte	W23
	.byte		N24   , Dn2 
	.byte		N24   , Fs2 , v072
	.byte		N24   , Bn2 , v068
	.byte	W01
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_diamonds_rihanna_1_001
@ 006   ----------------------------------------
mus_diamonds_rihanna_1_006:
	.byte	W24
	.byte		N23   , En2 , v060
	.byte		N23   , An2 
	.byte		N23   , Cs3 , v068
	.byte	W24
	.byte		        En2 , v060
	.byte		N23   , An2 
	.byte		N23   , Cs3 , v072
	.byte	W24
	.byte		        En2 , v060
	.byte		N23   , An2 
	.byte		N23   , Cs3 , v072
	.byte	W23
	.byte		N48   , An0 , v060
	.byte		N48   , An1 , v076
	.byte	W01
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W48
	.byte		N44   , Fs2 , v060, gtp3
	.byte		N44   , An2 , v060, gtp3
	.byte		N44   , Cs3 , v060, gtp3
	.byte		N44   , Fs3 , v076, gtp3
	.byte	W44
	.byte	W03
	.byte		N24   , Dn2 , v064
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 , v076
	.byte	W01
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_diamonds_rihanna_1_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_diamonds_rihanna_1_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_diamonds_rihanna_1_006
@ 011   ----------------------------------------
	.byte	W48
	.byte		N23   , Fs2 , v060
	.byte		N23   , An2 
	.byte		N23   , Cs3 
	.byte		N23   , Fs3 , v076
	.byte	W24
	.byte		        Fs0 , v056
	.byte		N23   , Fs1 , v072
	.byte	W23
	.byte		N12   , Gn1 , v052
	.byte		N12   , Dn2 , v064
	.byte	W01
@ 012   ----------------------------------------
mus_diamonds_rihanna_1_012:
	.byte	W12
	.byte		N11   , Gn1 , v044
	.byte		N11   , Dn2 , v056
	.byte	W12
	.byte		        Gn1 , v048
	.byte		N11   , Dn2 , v056
	.byte	W12
	.byte		        Gn1 , v044
	.byte		N11   , Dn2 , v056
	.byte	W12
	.byte		        Gn1 , v048
	.byte		N11   , Dn2 , v060
	.byte	W12
	.byte		        Gn1 , v044
	.byte		N11   , Dn2 , v056
	.byte	W12
	.byte		N12   , Gn1 , v048
	.byte		N11   , Dn2 , v060
	.byte	W11
	.byte		N12   , An1 , v044
	.byte		N11   , En2 , v060
	.byte	W12
	.byte		N12   , Bn1 , v052
	.byte		N12   , Fs2 , v064
	.byte	W01
	.byte	PEND
@ 013   ----------------------------------------
mus_diamonds_rihanna_1_013:
	.byte	W12
	.byte		N11   , Bn1 , v044
	.byte		N11   , Fs2 , v056
	.byte	W12
	.byte		        Bn1 , v048
	.byte		N11   , Fs2 , v056
	.byte	W12
	.byte		        Bn1 , v044
	.byte		N11   , Fs2 , v056
	.byte	W12
	.byte		        Bn1 , v048
	.byte		N11   , Fs2 , v060
	.byte	W12
	.byte		        Bn1 , v044
	.byte		N11   , Fs2 , v056
	.byte	W12
	.byte		N12   , Bn1 , v048
	.byte		N11   , Fs2 , v060
	.byte	W11
	.byte		N12   , Dn2 , v044
	.byte		N11   , An2 , v060
	.byte	W12
	.byte		N12   , An1 , v052
	.byte		N12   , En2 , v064
	.byte	W01
	.byte	PEND
@ 014   ----------------------------------------
	.byte	W12
	.byte		N11   , An1 , v044
	.byte		N11   , En2 , v056
	.byte	W12
	.byte		        An1 , v048
	.byte		N11   , En2 , v056
	.byte	W12
	.byte		        An1 , v044
	.byte		N11   , En2 , v056
	.byte	W12
	.byte		        An1 , v048
	.byte		N11   , En2 , v060
	.byte	W12
	.byte		        An1 , v044
	.byte		N11   , En2 , v056
	.byte	W12
	.byte		        An1 , v048
	.byte		N11   , En2 , v056
	.byte	W11
	.byte		        An1 , v044
	.byte		N11   , En2 , v056
	.byte	W12
	.byte		N24   , An1 , v064
	.byte		N24   , En2 , v072
	.byte	W01
@ 015   ----------------------------------------
	.byte	W24
	.byte		N23   , An1 , v060
	.byte		N23   , En2 , v072
	.byte	W24
	.byte		        Fs1 , v060
	.byte		N23   , Cs2 , v076
	.byte	W24
	.byte		        Fs1 , v060
	.byte		N23   , Cs2 , v072
	.byte	W23
	.byte		N12   , Gn1 , v052
	.byte		N12   , Dn2 , v064
	.byte	W01
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_diamonds_rihanna_1_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_diamonds_rihanna_1_013
@ 018   ----------------------------------------
	.byte	W12
	.byte		N11   , An1 , v044
	.byte		N11   , En2 , v056
	.byte	W12
	.byte		        An1 , v048
	.byte		N11   , En2 , v056
	.byte	W12
	.byte		        An1 , v044
	.byte		N11   , En2 , v056
	.byte	W12
	.byte		        An1 , v048
	.byte		N11   , En2 , v060
	.byte	W12
	.byte		        An1 , v044
	.byte		N11   , En2 , v056
	.byte	W12
	.byte		        An1 , v048
	.byte		N11   , En2 , v056
	.byte	W11
	.byte		N12   , An1 , v044
	.byte		N11   , En2 , v060
	.byte	W12
	.byte		N12   , Fs1 , v052
	.byte		N12   , Cs2 , v064
	.byte	W01
@ 019   ----------------------------------------
	.byte	W12
	.byte		N11   , Fs1 , v044
	.byte		N11   , Cs2 , v056
	.byte	W12
	.byte		        Fs1 , v048
	.byte		N11   , Cs2 , v056
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N11   , Cs2 , v056
	.byte	W12
	.byte		        Fs1 , v048
	.byte		N11   , Cs2 , v060
	.byte	W12
	.byte		N12   , Fs1 , v044
	.byte		N12   , Cs2 , v060
	.byte	W32
	.byte	W03
	.byte		N24   , Gn0 
	.byte		N24   , Gn1 , v076
	.byte	W01
@ 020   ----------------------------------------
mus_diamonds_rihanna_1_020:
	.byte	W24
	.byte		N23   , Gn0 , v056
	.byte		N23   , Gn1 , v068
	.byte	W24
	.byte		        Gn0 , v056
	.byte		N23   , Gn1 , v076
	.byte	W24
	.byte		        An0 , v056
	.byte		N23   , An1 , v072
	.byte	W23
	.byte		N24   , Bn0 , v060
	.byte		N24   , Bn1 , v076
	.byte	W01
	.byte	PEND
@ 021   ----------------------------------------
mus_diamonds_rihanna_1_021:
	.byte	W24
	.byte		N23   , Bn0 , v056
	.byte		N23   , Bn1 , v068
	.byte	W23
	.byte	TEMPO , 85*mus_diamonds_rihanna_tbs/2
	.byte	W01
	.byte		        Bn0 , v060
	.byte		N23   , Bn1 , v076
	.byte	W05
	.byte	TEMPO , 84*mus_diamonds_rihanna_tbs/2
	.byte	W06
	.byte	TEMPO , 84*mus_diamonds_rihanna_tbs/2
	.byte	W06
	.byte	TEMPO , 83*mus_diamonds_rihanna_tbs/2
	.byte	W06
	.byte	TEMPO , 83*mus_diamonds_rihanna_tbs/2
	.byte	W01
	.byte		        Dn1 , v056
	.byte		N23   , Dn2 , v072
	.byte	W05
	.byte	TEMPO , 82*mus_diamonds_rihanna_tbs/2
	.byte	W06
	.byte	TEMPO , 82*mus_diamonds_rihanna_tbs/2
	.byte	W06
	.byte	TEMPO , 81*mus_diamonds_rihanna_tbs/2
	.byte	W06
	.byte		N24   , An0 , v060
	.byte		N24   , An1 , v076
	.byte	W01
	.byte	PEND
@ 022   ----------------------------------------
mus_diamonds_rihanna_1_022:
	.byte	W05
	.byte	TEMPO , 85*mus_diamonds_rihanna_tbs/2
	.byte	W19
	.byte		N23   , An0 , v056
	.byte		N23   , An1 , v068
	.byte	W24
	.byte		        An0 , v056
	.byte		N23   , An1 , v072
	.byte	W24
	.byte		        An0 , v056
	.byte		N23   , An1 , v068
	.byte	W23
	.byte		N24   , An0 , v060
	.byte		N24   , An1 , v072
	.byte	W01
	.byte	PEND
@ 023   ----------------------------------------
	.byte	W24
	.byte		N23   , An0 , v056
	.byte		N23   , An1 , v072
	.byte	W24
	.byte		        Fs0 , v056
	.byte		N23   , Fs1 , v076
	.byte	W24
	.byte		        Fs0 , v056
	.byte		N23   , Fs1 , v072
	.byte	W23
	.byte		N24   , Gn0 , v060
	.byte		N24   , Gn1 , v076
	.byte	W01
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_diamonds_rihanna_1_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_diamonds_rihanna_1_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_diamonds_rihanna_1_022
@ 027   ----------------------------------------
	.byte	W24
	.byte		N23   , An0 , v056
	.byte		N23   , An1 , v072
	.byte	W24
	.byte		        Fs0 , v056
	.byte		N23   , Fs1 , v076
	.byte	W24
	.byte		        Fs0 , v056
	.byte		N23   , Fs1 , v072
	.byte	W23
	.byte		N24   , Dn2 , v064
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 , v076
	.byte	W01
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_diamonds_rihanna_1_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_diamonds_rihanna_1_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_diamonds_rihanna_1_002
@ 031   ----------------------------------------
	.byte	W48
	.byte		N23   , Fs0 , v056
	.byte		N23   , Fs1 , v076
	.byte	W24
	.byte		        Fs0 , v056
	.byte		N23   , Fs1 , v068
	.byte	W23
	.byte		N92   , Gn0 , v064, gtp3
	.byte	W01
@ 032   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte	FINE

@**************** Track 2 (Midi-Chn.1) ****************@

mus_diamonds_rihanna_2:
	.byte	KEYSH , mus_diamonds_rihanna_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 42
	.byte		VOL   , 101*mus_diamonds_rihanna_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 102*mus_diamonds_rihanna_mvl/mxv
	.byte		        110*mus_diamonds_rihanna_mvl/mxv
	.byte	W36
	.byte		N11   , Bn4 , v064
	.byte	W12
	.byte		        Fs5 , v068
	.byte	W12
	.byte		N05   , Dn5 , v064
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N11   , Fs5 , v056
	.byte	W11
	.byte		N12   , Fs5 , v052
	.byte	W13
@ 001   ----------------------------------------
mus_diamonds_rihanna_2_001:
	.byte	W24
	.byte		N11   , Fs5 , v056
	.byte	W12
	.byte		        Fs5 , v052
	.byte	W12
	.byte		        Fs5 , v056
	.byte	W12
	.byte		        Fs5 , v052
	.byte	W12
	.byte		N12   , Fs5 , v056
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_diamonds_rihanna_2_002:
	.byte	W36
	.byte		N11   , Bn4 , v064
	.byte	W12
	.byte		        Fs5 , v068
	.byte	W12
	.byte		N05   , Dn5 , v064
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N11   , Fs5 , v056
	.byte	W11
	.byte		        Fs5 , v052
	.byte	W12
	.byte		N12   , Fs5 , v060
	.byte	W01
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W12
	.byte		N11   , Fs5 , v052
	.byte	W12
	.byte		        Fs5 , v056
	.byte	W12
	.byte		N12   , Fs5 , v052
	.byte	W12
	.byte		N23   , Cs4 , v060
	.byte		N23   , Fs4 , v076
	.byte	W24
	.byte		        Fs4 , v068
	.byte	W24
@ 004   ----------------------------------------
	.byte	W36
	.byte		N11   , Fs4 , v052
	.byte	W12
	.byte		N12   , Fs4 , v056
	.byte	W12
	.byte		N05   , Bn3 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn4 , v068
	.byte	W06
	.byte		        En4 , v064
	.byte	W05
	.byte		N36   , Fs4 
	.byte	W13
@ 005   ----------------------------------------
	.byte	W24
	.byte		N11   , Fs4 , v056
	.byte	W12
	.byte		        Fs4 , v052
	.byte	W12
	.byte		        Fs4 , v056
	.byte	W12
	.byte		N05   , Fs4 , v064
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N17   , En4 
	.byte	W18
@ 006   ----------------------------------------
	.byte	W24
	.byte		N11   , Dn4 , v068
	.byte	W12
	.byte		N05   , En4 , v052
	.byte	W06
	.byte		N06   
	.byte	W30
	.byte		N11   , Dn4 , v068
	.byte	W11
	.byte		N05   , En4 , v052
	.byte	W06
	.byte		N30   
	.byte	W07
@ 007   ----------------------------------------
	.byte	W24
	.byte		N11   , Dn4 , v068
	.byte	W12
	.byte		        Dn4 , v064
	.byte	W12
	.byte		        En4 , v068
	.byte	W12
	.byte		        En4 , v064
	.byte	W12
	.byte		        En4 , v068
	.byte	W11
	.byte		        Fs4 , v064
	.byte	W13
@ 008   ----------------------------------------
	.byte	W36
	.byte		        Fs4 , v052
	.byte	W12
	.byte		N12   , Fs4 , v056
	.byte	W12
	.byte		N05   , Bn3 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn4 , v068
	.byte	W06
	.byte		        En4 , v064
	.byte	W05
	.byte		N24   , Fs4 , v052
	.byte	W13
@ 009   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   , Fs4 , v056
	.byte	W06
	.byte		        Fs4 , v052
	.byte	W06
	.byte		N11   , Fs4 , v064
	.byte	W12
	.byte		        Fs4 , v068
	.byte	W12
	.byte		        En4 , v064
	.byte	W12
	.byte		        En4 , v068
	.byte	W24
@ 010   ----------------------------------------
	.byte	W12
	.byte		N05   , Cs4 , v064
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N11   , En4 , v056
	.byte	W12
	.byte		N12   , En4 , v052
	.byte	W56
	.byte	W03
	.byte		N24   , En4 , v072
	.byte	W01
@ 011   ----------------------------------------
	.byte	W24
	.byte		N11   , Dn4 , v068
	.byte	W12
	.byte		        Dn4 , v064
	.byte	W12
	.byte		        En4 , v068
	.byte	W12
	.byte		        En4 , v064
	.byte	W12
	.byte		        En4 , v068
	.byte	W11
	.byte		        Fs4 , v064
	.byte	W12
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 , v076
	.byte	W01
@ 012   ----------------------------------------
mus_diamonds_rihanna_2_012:
	.byte	W24
	.byte		N23   , Fs4 , v068
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Gn4 
	.byte	W23
	.byte		N24   , Dn4 , v064
	.byte		N24   , Fs4 , v076
	.byte	W01
	.byte	PEND
@ 013   ----------------------------------------
mus_diamonds_rihanna_2_013:
	.byte	W24
	.byte		N23   , Bn3 , v068
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Fs4 
	.byte	W23
	.byte		N11   , Fs4 , v072
	.byte	W01
	.byte	PEND
@ 014   ----------------------------------------
	.byte	W12
	.byte		N05   , En4 , v052
	.byte	W06
	.byte		N06   
	.byte	W64
	.byte	W01
	.byte		N11   , Gn4 
	.byte	W12
	.byte		N13   , Gn4 , v060
	.byte	W01
@ 015   ----------------------------------------
	.byte	W12
	.byte		N05   , Fs4 , v052
	.byte	W06
	.byte		N06   
	.byte	W30
	.byte		N23   , Cs3 , v060
	.byte		N23   , Fs3 , v072
	.byte	W24
	.byte		        Cs3 , v060
	.byte		N23   , Fs3 , v072
	.byte	W23
	.byte		N24   , Gn2 , v064
	.byte		N24   , Bn2 , v076
	.byte	W01
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_diamonds_rihanna_2_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_diamonds_rihanna_2_013
@ 018   ----------------------------------------
	.byte	W12
	.byte		N05   , En4 , v052
	.byte	W06
	.byte		N06   
	.byte	W64
	.byte	W01
	.byte		N11   , Gn4 , v064
	.byte	W12
	.byte		N12   , Cs4 
	.byte		N12   , Fs4 , v072
	.byte	W01
@ 019   ----------------------------------------
	.byte	W12
	.byte		N05   , Cs4 , v056
	.byte		N05   , Fs4 , v068
	.byte	W06
	.byte		N17   , Cs4 , v056
	.byte		N17   , Fs4 , v068
	.byte	W18
	.byte		N11   , Cs4 , v044
	.byte		N11   , Fs4 , v056
	.byte	W12
	.byte		        Cs4 , v048
	.byte		N11   , Fs4 , v060
	.byte	W12
	.byte		N12   , Cs4 , v044
	.byte		N11   , Fs4 , v056
	.byte	W12
	.byte		N23   , Gn4 , v068
	.byte	W23
	.byte		N72   , Dn4 , v056
	.byte		N72   , Fs4 , v072
	.byte	W01
@ 020   ----------------------------------------
mus_diamonds_rihanna_2_020:
	.byte	W72
	.byte		N23   , Gn3 , v060
	.byte		N23   , Gn4 , v072
	.byte	W23
	.byte		N72   , Dn4 , v056
	.byte		N72   , Fs4 , v072
	.byte	W01
	.byte	PEND
@ 021   ----------------------------------------
mus_diamonds_rihanna_2_021:
	.byte	W72
	.byte		N23   , Gn3 , v060
	.byte		N23   , Gn4 , v072
	.byte	W23
	.byte		N72   , An3 , v056
	.byte		N72   , Cs4 , v072
	.byte	W01
	.byte	PEND
@ 022   ----------------------------------------
mus_diamonds_rihanna_2_022:
	.byte	W72
	.byte		N23   , Dn3 , v060
	.byte		N23   , Dn4 , v072
	.byte	W23
	.byte		N12   , Cs4 , v064
	.byte		N12   , Fs4 , v076
	.byte	W01
	.byte	PEND
@ 023   ----------------------------------------
	.byte	W12
	.byte		N05   , Cs4 , v056
	.byte		N05   , Fs4 , v068
	.byte	W06
	.byte		N17   , Cs4 , v056
	.byte		N17   , Fs4 , v068
	.byte	W18
	.byte		N11   , Cs4 , v056
	.byte		N11   , Fs4 , v068
	.byte	W12
	.byte		        Cs4 , v060
	.byte		N11   , Fs4 , v072
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N11   , Fs4 , v068
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		        En4 , v064
	.byte	W12
	.byte		N72   , Gn3 , v056
	.byte		N72   , Bn3 , v072
	.byte	W01
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_diamonds_rihanna_2_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_diamonds_rihanna_2_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_diamonds_rihanna_2_022
@ 027   ----------------------------------------
	.byte	W12
	.byte		N05   , Cs4 , v056
	.byte		N05   , Fs4 , v068
	.byte	W06
	.byte		N17   , Cs4 , v056
	.byte		N17   , Fs4 , v068
	.byte	W18
	.byte		N11   , Cs4 , v056
	.byte		N11   , Fs4 , v068
	.byte	W12
	.byte		        Cs4 , v060
	.byte		N11   , Fs4 , v072
	.byte	W12
	.byte		        Cs4 , v056
	.byte		N11   , Fs4 , v068
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		        En4 , v064
	.byte	W13
@ 028   ----------------------------------------
	.byte	W36
	.byte		        Bn4 
	.byte	W12
	.byte		        Fs5 , v068
	.byte	W12
	.byte		N05   , Dn5 , v064
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N11   , Fs5 , v056
	.byte	W11
	.byte		N12   , Fs5 , v052
	.byte	W13
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_diamonds_rihanna_2_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_diamonds_rihanna_2_002
@ 031   ----------------------------------------
	.byte	W12
	.byte		N11   , Fs5 , v052
	.byte	W12
	.byte		        Fs5 , v056
	.byte	W12
	.byte		N12   , Fs5 , v052
	.byte	W12
	.byte		N23   , Cs4 , v060
	.byte		N23   , Fs4 , v076
	.byte	W24
	.byte		        Fs4 , v068
	.byte	W23
	.byte		N92   , Gn2 , v056, gtp3
	.byte		N92   , Bn2 , v072, gtp3
	.byte	W01
@ 032   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

mus_diamonds_rihanna:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_diamonds_rihanna_pri	@ Priority
	.byte	mus_diamonds_rihanna_rev	@ Reverb.

	.word	mus_diamonds_rihanna_grp

	.word	mus_diamonds_rihanna_1
	.word	mus_diamonds_rihanna_2

	.end
