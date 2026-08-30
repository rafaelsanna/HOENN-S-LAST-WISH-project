	.include "MPlayDef.s"

	.equ	mus_shoushin_no_kiki_grp, voicegroup_shoushin_no_kiki
	.equ	mus_shoushin_no_kiki_pri, 0
	.equ	mus_shoushin_no_kiki_rev, reverb_set+50
	.equ	mus_shoushin_no_kiki_mvl, 100
	.equ	mus_shoushin_no_kiki_key, 0
	.equ	mus_shoushin_no_kiki_tbs, 1
	.equ	mus_shoushin_no_kiki_exg, 1
	.equ	mus_shoushin_no_kiki_cmp, 1

	.section .rodata
	.global	mus_shoushin_no_kiki
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_shoushin_no_kiki_1:
	.byte	KEYSH , mus_shoushin_no_kiki_key+0
mus_shoushin_no_kiki_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 96*mus_shoushin_no_kiki_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_shoushin_no_kiki_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N23   , An2 , v127
	.byte	W24
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W48
@ 001   ----------------------------------------
	.byte		N23   , Gs2 
	.byte	W24
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W48
@ 002   ----------------------------------------
	.byte		N23   , Gn2 
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W24
@ 003   ----------------------------------------
	.byte		N23   , Fs2 
	.byte	W24
	.byte		N32   , An2 , v127, gtp3
	.byte	W48
@ 004   ----------------------------------------
	.byte		N23   , Dn2 , v084
	.byte	W24
	.byte		N32   , An2 , v127, gtp3
	.byte	W48
@ 005   ----------------------------------------
	.byte		N19   , Gn2 
	.byte	W19
	.byte		N01   , Gn2 , v084
	.byte	W02
	.byte		N48   , Bn1 , v084, gtp2
	.byte	W48
	.byte	W03
@ 006   ----------------------------------------
	.byte		N11   , Cn2 
	.byte	W12
	.byte		        Gn2 , v127
	.byte	W12
	.byte		N23   , Bn1 
	.byte	W24
	.byte		N07   , Gn2 
	.byte	W24
@ 007   ----------------------------------------
	.byte		N11   , Cs2 , v084
	.byte	W12
	.byte		        Gn2 , v127
	.byte	W12
	.byte		N32   , As1 , v127, gtp3
	.byte	W48
@ 008   ----------------------------------------
	.byte		N23   , Dn2 , v084
	.byte	W24
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W48
@ 009   ----------------------------------------
	.byte		N23   , Gn2 
	.byte	W24
	.byte		N44   , Bn1 , v127, gtp3
	.byte	W48
@ 010   ----------------------------------------
	.byte		N24   , Gn2 , v084
	.byte	W72
@ 011   ----------------------------------------
	.byte		N68   , An2 , v127, gtp3
	.byte	W72
@ 012   ----------------------------------------
	.byte		N23   , Fn2 , v084
	.byte	W24
	.byte		N24   , An2 
	.byte	W48
@ 013   ----------------------------------------
	.byte		N23   , Fn2 
	.byte	W24
	.byte		N44   , An2 , v084, gtp3
	.byte	W48
@ 014   ----------------------------------------
	.byte		N23   , Gn2 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
@ 015   ----------------------------------------
	.byte		        Gs2 
	.byte	W24
	.byte		N24   , Bn1 
	.byte	W48
@ 016   ----------------------------------------
	.byte		N23   , An1 
	.byte	W24
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W48
@ 017   ----------------------------------------
	.byte		N23   , Gs1 
	.byte	W24
	.byte		N36   , Cn2 , v127, gtp2
	.byte	W48
@ 018   ----------------------------------------
	.byte		N23   , Gn1 
	.byte	W24
	.byte		N24   , Cn2 
	.byte	W48
@ 019   ----------------------------------------
	.byte		N23   , Fs1 
	.byte	W24
	.byte		N32   , An2 , v127, gtp3
	.byte	W48
@ 020   ----------------------------------------
	.byte		N23   , Dn1 , v084
	.byte	W24
	.byte		        An2 , v127
	.byte	W24
	.byte		N23   
	.byte	W24
@ 021   ----------------------------------------
	.byte		N68   , Gn1 , v127, gtp3
	.byte	W72
@ 022   ----------------------------------------
	.byte		        Fn1 , v127, gtp3
	.byte	W72
@ 023   ----------------------------------------
	.byte		        An1 , v084, gtp3
	.byte	W72
@ 024   ----------------------------------------
	.byte		        Dn1 , v084, gtp3
	.byte	W72
@ 025   ----------------------------------------
	.byte		N19   , Cn1 , v127
	.byte	W20
	.byte		N01   , Fs2 , v084
	.byte	W02
	.byte		        An2 , v127
	.byte	W02
	.byte		N40   , Bn1 
	.byte	W48
@ 026   ----------------------------------------
	.byte		N19   , Bn0 
	.byte	W19
	.byte		N01   , An2 
	.byte	W01
	.byte		N05   , Fs2 , v084
	.byte	W05
	.byte		N21   , Bn1 , v127
	.byte	W23
	.byte		N23   , En1 
	.byte	W24
@ 027   ----------------------------------------
	.byte		N05   , Ds1 , v084
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N42   , Cn2 , v127, gtp1
	.byte	W54
@ 028   ----------------------------------------
	.byte		N19   , Fn2 , v084
	.byte	W19
	.byte		N01   , Cn2 , v127
	.byte	W01
	.byte		N48   , An2 , v084, gtp3
	.byte	W52
@ 029   ----------------------------------------
	.byte		N19   , Gn2 
	.byte	W20
	.byte		N48   , Bn1 , v084, gtp3
	.byte	W52
@ 030   ----------------------------------------
	.byte		N19   , An2 
	.byte	W20
	.byte		N48   , Cn2 , v084, gtp3
	.byte	W52
@ 031   ----------------------------------------
	.byte		TIE   , Bn1 
	.byte	W72
@ 032   ----------------------------------------
	.byte	W72
@ 033   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte	GOTO
	 .word	mus_shoushin_no_kiki_1_B1
mus_shoushin_no_kiki_1_B2:
@ 034   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_shoushin_no_kiki_2:
	.byte	KEYSH , mus_shoushin_no_kiki_key+0
mus_shoushin_no_kiki_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 48*mus_shoushin_no_kiki_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N23   , En4 , v076
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 001   ----------------------------------------
	.byte		N23   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 002   ----------------------------------------
	.byte		N23   , En4 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 003   ----------------------------------------
	.byte		N23   , Cn4 
	.byte	W24
	.byte		        Cn3 
	.byte		N23   , En3 
	.byte	W24
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N23   
	.byte		N23   , Bn3 
	.byte	W24
	.byte		        Cn3 
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N19   , An3 
	.byte	W19
	.byte		N04   , Dn3 
	.byte	W05
	.byte		N32   , Fn3 , v076, gtp3
	.byte		N32   , Bn3 , v076, gtp3
	.byte	W36
	.byte		N11   , An3 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N23   , En4 
	.byte	W24
	.byte		        En3 , v048
	.byte		N23   , Bn3 , v076
	.byte	W24
	.byte		        Fn3 , v048
	.byte	W24
@ 007   ----------------------------------------
	.byte		        Gn3 
	.byte	W24
	.byte		        En3 , v076
	.byte		N23   , As3 , v048
	.byte	W24
	.byte		        Cs4 
	.byte	W24
@ 008   ----------------------------------------
	.byte		        Cn4 , v076
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 009   ----------------------------------------
	.byte		N23   , Bn3 
	.byte	W24
	.byte		N44   , Fn3 , v076, gtp3
	.byte	W48
@ 010   ----------------------------------------
	.byte		N23   , Dn4 
	.byte	W24
	.byte		N20   , Dn3 
	.byte		N20   , Gn3 
	.byte	W24
	.byte		N11   , Dn3 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W24
	.byte		N20   , En3 
	.byte		N20   , An3 
	.byte	W24
	.byte		        En3 
	.byte		N20   , An3 
	.byte	W24
@ 012   ----------------------------------------
	.byte	W48
	.byte		N44   , Ds3 , v076, gtp3
	.byte	W24
@ 013   ----------------------------------------
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N68   , Ds3 , v076, gtp3
	.byte	W24
@ 014   ----------------------------------------
	.byte	W48
	.byte		        Dn3 , v076, gtp3
	.byte	W24
@ 015   ----------------------------------------
	.byte	W48
	.byte		N23   , En3 
	.byte	W24
@ 016   ----------------------------------------
	.byte		        An2 , v048
	.byte		N23   , Bn2 , v076
	.byte	W24
	.byte		N44   , En3 , v076, gtp3
	.byte	W48
@ 017   ----------------------------------------
	.byte		N23   , Gs2 , v048
	.byte	W24
	.byte		N36   , En3 , v076, gtp2
	.byte	W48
@ 018   ----------------------------------------
	.byte		N23   , Gn2 , v048
	.byte	W24
	.byte		N24   , En3 , v076
	.byte	W48
@ 019   ----------------------------------------
	.byte		N23   , Fs2 , v048
	.byte	W24
	.byte		N32   , Cn3 , v076, gtp3
	.byte		N32   , En3 , v076, gtp3
	.byte	W48
@ 020   ----------------------------------------
	.byte		N23   , Dn2 , v048
	.byte	W24
	.byte		        Cn3 , v076
	.byte		N23   , Fn3 
	.byte	W24
	.byte		        Cn3 
	.byte		N23   , Fn3 
	.byte	W24
@ 021   ----------------------------------------
	.byte		N48   , Gn2 , v048, gtp3
	.byte	W48
	.byte	W03
	.byte		N07   , Dn4 , v076
	.byte	W09
	.byte		        Fn4 
	.byte	W07
	.byte		N03   , An3 
	.byte	W05
@ 022   ----------------------------------------
	.byte		N11   , Bn3 
	.byte		N11   , Gn4 
	.byte	W12
	.byte		        An3 
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        En4 
	.byte		N11   , Gn4 
	.byte	W12
	.byte		N13   , Dn4 
	.byte		N17   , Fn4 
	.byte	W24
	.byte		N11   , As3 
	.byte		N11   , Dn4 
	.byte	W12
@ 023   ----------------------------------------
	.byte		N23   , An3 
	.byte		N23   , Cs4 
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N32   , Dn2 , v048, gtp3
	.byte	W36
	.byte		N11   , Fn3 , v076
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 025   ----------------------------------------
	.byte		N68   , Cn2 , v076, gtp3
	.byte	W72
@ 026   ----------------------------------------
	.byte		N44   , Bn1 , v076, gtp3
	.byte	W48
	.byte		N23   , En2 
	.byte	W24
@ 027   ----------------------------------------
	.byte		        Ds2 , v048
	.byte	W24
	.byte		N05   , Ds3 , v076
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N30   , An3 , v076, gtp1
	.byte	W36
@ 028   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		N44   , En3 , v076, gtp2
	.byte	W44
	.byte	W03
@ 029   ----------------------------------------
	.byte	W19
	.byte		N05   , Dn3 
	.byte	W06
	.byte		N44   , Fn3 , v076, gtp2
	.byte	W44
	.byte	W03
@ 030   ----------------------------------------
	.byte	W19
	.byte		N05   , En3 
	.byte	W06
	.byte		N44   , Gn3 , v076, gtp2
	.byte	W44
	.byte	W03
@ 031   ----------------------------------------
	.byte	W44
	.byte		N01   , Dn3 , v048
	.byte	W02
	.byte		        Gn3 , v076
	.byte	W02
	.byte		TIE   , Bn3 
	.byte	W24
@ 032   ----------------------------------------
	.byte	W72
@ 033   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte	GOTO
	 .word	mus_shoushin_no_kiki_2_B1
mus_shoushin_no_kiki_2_B2:
@ 034   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_shoushin_no_kiki_3:
	.byte	KEYSH , mus_shoushin_no_kiki_key+0
mus_shoushin_no_kiki_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 106*mus_shoushin_no_kiki_mvl/mxv
	.byte		PAN   , c_v+10
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
	.byte		N44   , As3 , v124, gtp3
	.byte	W48
	.byte		N23   , En4 
	.byte	W24
@ 008   ----------------------------------------
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N23   , En4 
	.byte	W24
@ 009   ----------------------------------------
	.byte		N44   , Dn4 , v124, gtp3
	.byte	W48
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N23   , Gn4 
	.byte	W24
@ 011   ----------------------------------------
	.byte		N44   , Cn4 , v124, gtp3
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 012   ----------------------------------------
	.byte		N44   , En4 , v124, gtp3
	.byte	W48
	.byte		N01   , Bn3 
	.byte		N01   , Cn4 
	.byte	W06
	.byte		N15   , An3 , v080
	.byte	W15
	.byte		N07   , Ds4 , v124
	.byte	W03
@ 013   ----------------------------------------
	.byte	W06
	.byte		N40   , En4 , v080
	.byte	W40
	.byte		N01   , En4 , v124
	.byte	W02
	.byte		        Dn4 
	.byte	W04
	.byte		        Dn4 , v080
	.byte	W02
	.byte		N17   , Cn4 
	.byte	W18
@ 014   ----------------------------------------
	.byte		N68   , Dn4 , v124, gtp3
	.byte	W72
@ 015   ----------------------------------------
	.byte		N64   , En4 , v124, gtp1
	.byte	W72
@ 016   ----------------------------------------
	.byte		N44   , En4 , v124, gtp3
	.byte	W48
	.byte		N11   , An3 , v080
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 017   ----------------------------------------
mus_shoushin_no_kiki_3_017:
	.byte		N44   , Cn4 , v080, gtp3
	.byte	W48
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte		N44   , En4 , v080, gtp3
	.byte	W48
	.byte		N11   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_shoushin_no_kiki_3_017
@ 020   ----------------------------------------
	.byte		N44   , An4 , v124, gtp3
	.byte	W48
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N56   , An4 , v124, gtp3
	.byte	W60
	.byte		N11   
	.byte	W12
@ 022   ----------------------------------------
	.byte		N68   , En4 , v124, gtp3
	.byte	W72
@ 023   ----------------------------------------
	.byte	W72
@ 024   ----------------------------------------
	.byte		N32   , En4 , v124, gtp3
	.byte	W36
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        En5 
	.byte	W12
@ 025   ----------------------------------------
	.byte		N44   , Fn4 , v124, gtp3
	.byte	W48
	.byte		N23   , En5 
	.byte	W24
@ 026   ----------------------------------------
	.byte		        Dn5 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
@ 027   ----------------------------------------
	.byte		N68   , Cn5 , v124, gtp3
	.byte	W72
@ 028   ----------------------------------------
mus_shoushin_no_kiki_3_028:
	.byte		N44   , An4 , v124, gtp3
	.byte	W48
	.byte		N23   , Cn5 
	.byte	W24
	.byte	PEND
@ 029   ----------------------------------------
	.byte		N44   , Bn4 , v124, gtp3
	.byte	W48
	.byte		N23   , En4 
	.byte	W24
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_shoushin_no_kiki_3_028
@ 031   ----------------------------------------
	.byte		N44   , Bn4 , v124, gtp3
	.byte	W48
	.byte		N23   , Gn4 
	.byte	W24
@ 032   ----------------------------------------
	.byte		TIE   , An4 
	.byte	W72
@ 033   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte	GOTO
	 .word	mus_shoushin_no_kiki_3_B1
mus_shoushin_no_kiki_3_B2:
@ 034   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_shoushin_no_kiki:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_shoushin_no_kiki_pri	@ Priority
	.byte	mus_shoushin_no_kiki_rev	@ Reverb.

	.word	mus_shoushin_no_kiki_grp

	.word	mus_shoushin_no_kiki_1
	.word	mus_shoushin_no_kiki_2
	.word	mus_shoushin_no_kiki_3

	.end
