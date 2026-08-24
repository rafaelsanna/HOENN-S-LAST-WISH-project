	.include "MPlayDef.s"

	.equ	mus_hlw_vs_evil_grp, voicegroup_mus_hlw_vs_evil
	.equ	mus_hlw_vs_evil_pri, 0
	.equ	mus_hlw_vs_evil_rev, reverb_set+50
	.equ	mus_hlw_vs_evil_mvl, 70
	.equ	mus_hlw_vs_evil_key, 0
	.equ	mus_hlw_vs_evil_tbs, 1
	.equ	mus_hlw_vs_evil_exg, 1
	.equ	mus_hlw_vs_evil_cmp, 1

	.section .rodata
	.global	mus_hlw_vs_evil
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_hlw_vs_evil_1:
	.byte	KEYSH , mus_hlw_vs_evil_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 184*mus_hlw_vs_evil_tbs/2
	.byte		VOICE , 77
	.byte		PAN   , c_v+8
	.byte		MOD   , 0
	.byte		BENDR , 12
	.byte		LFOS  , 18
	.byte		VOL   , 108*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+62
	.byte		TIE   , Fs3 , v080
	.byte	W06
	.byte		BEND  , c_v+55
	.byte	W06
	.byte		        c_v+46
	.byte	W05
	.byte		        c_v+41
	.byte	W07
	.byte		        c_v+40
	.byte	W05
	.byte		        c_v+36
	.byte	W07
	.byte		        c_v+35
	.byte	W05
	.byte		        c_v+30
	.byte	W07
	.byte		        c_v+27
	.byte	W05
	.byte		        c_v+24
	.byte	W07
	.byte		        c_v+20
	.byte	W05
	.byte		        c_v+16
	.byte	W07
	.byte		        c_v+14
	.byte	W05
	.byte		        c_v+9
	.byte	W07
	.byte		        c_v+3
	.byte	W05
	.byte		        c_v-4
	.byte	W07
@ 001   ----------------------------------------
	.byte		        c_v-7
	.byte	W05
	.byte		        c_v-12
	.byte	W07
	.byte		        c_v-17
	.byte	W05
	.byte		        c_v-20
	.byte	W07
	.byte		        c_v-23
	.byte	W05
	.byte		        c_v-27
	.byte	W07
	.byte		        c_v-30
	.byte	W05
	.byte		        c_v-35
	.byte	W07
	.byte		        c_v-38
	.byte	W05
	.byte		        c_v-39
	.byte	W07
	.byte		        c_v-43
	.byte	W05
	.byte		        c_v-47
	.byte	W07
	.byte		        c_v-50
	.byte	W05
	.byte		        c_v-56
	.byte	W07
	.byte		        c_v-62
	.byte	W05
	.byte		        c_v-64
	.byte	W06
	.byte		EOT   
	.byte	W01
@ 002   ----------------------------------------
	.byte		VOICE , 92
	.byte		BEND  , c_v+62
	.byte		TIE   , Fs2 
	.byte	W06
	.byte		BEND  , c_v+55
	.byte	W06
	.byte		        c_v+46
	.byte	W05
	.byte		        c_v+41
	.byte	W07
	.byte		PAN   , c_v-1
	.byte		BEND  , c_v+40
	.byte	W05
	.byte		        c_v+36
	.byte	W07
	.byte		        c_v+35
	.byte	W05
	.byte		        c_v+30
	.byte	W07
	.byte		PAN   , c_v-11
	.byte		BEND  , c_v+27
	.byte	W05
	.byte		        c_v+24
	.byte	W07
	.byte		        c_v+20
	.byte	W05
	.byte		        c_v+16
	.byte	W07
	.byte		PAN   , c_v-21
	.byte		BEND  , c_v+14
	.byte	W05
	.byte		        c_v+9
	.byte	W07
	.byte		        c_v+3
	.byte	W05
	.byte		        c_v-4
	.byte	W07
@ 003   ----------------------------------------
	.byte		VOL   , 100*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-41
	.byte		BEND  , c_v-7
	.byte	W05
	.byte		        c_v-12
	.byte	W07
	.byte		        c_v-17
	.byte	W05
	.byte		        c_v-20
	.byte	W07
	.byte		VOL   , 93*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-23
	.byte	W05
	.byte		        c_v-27
	.byte	W07
	.byte		        c_v-30
	.byte	W05
	.byte		        c_v-35
	.byte	W07
	.byte		VOL   , 84*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-49
	.byte		BEND  , c_v-38
	.byte	W05
	.byte		        c_v-39
	.byte	W07
	.byte		        c_v-43
	.byte	W05
	.byte		        c_v-47
	.byte	W07
	.byte		VOL   , 73*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-50
	.byte	W05
	.byte		        c_v-56
	.byte	W07
	.byte		        c_v-62
	.byte	W05
	.byte		        c_v-64
	.byte	W03
	.byte		EOT   
	.byte	W04
@ 004   ----------------------------------------
	.byte		VOICE , 91
	.byte		BENDR , 12
	.byte		LFOS  , 18
	.byte		PAN   , c_v-52
	.byte		BEND  , c_v-44
	.byte	W18
	.byte		N28   , Cn3 , v076, gtp1
	.byte	W06
	.byte		VOL   , 56*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        96*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-36
	.byte	W03
	.byte		VOL   , 124*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        96*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+48
	.byte		N23   , Dn3 
	.byte	W06
	.byte		VOL   , 74*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        52*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        35*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        22*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        5*mus_hlw_vs_evil_mvl/mxv
	.byte	W18
@ 005   ----------------------------------------
	.byte		PAN   , c_v+48
	.byte		VOL   , 58*mus_hlw_vs_evil_mvl/mxv
	.byte	W18
	.byte		N52   , Ds2 , v076, gtp1
	.byte	W06
	.byte		VOL   , 68*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        82*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v+38
	.byte	W09
	.byte		VOL   , 100*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v+26
	.byte	W06
	.byte		        c_v+4
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		VOL   , 112*mus_hlw_vs_evil_mvl/mxv
	.byte		N23   , En2 
	.byte	W12
	.byte		VOL   , 56*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
@ 006   ----------------------------------------
	.byte		PAN   , c_v-44
	.byte		VOL   , 27*mus_hlw_vs_evil_mvl/mxv
	.byte		N56   , Bn2 , v080, gtp3
	.byte	W05
	.byte		VOL   , 43*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        64*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-28
	.byte	W05
	.byte		VOL   , 82*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        102*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-14
	.byte	W05
	.byte		VOL   , 104*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+30
	.byte	W12
	.byte		        c_v+40
	.byte	W12
	.byte		N20   , Gn2 , v112
	.byte	W06
	.byte		VOL   , 91*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        50*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        96*mus_hlw_vs_evil_mvl/mxv
	.byte		N02   , Dn6 , v084
	.byte	W06
	.byte		        Dn6 , v088
	.byte	W06
@ 007   ----------------------------------------
	.byte	W12
	.byte		        En6 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N08   , En6 , v080
	.byte	W24
	.byte		PAN   , c_v+29
	.byte		N02   , En6 , v092
	.byte	W06
	.byte		        En6 , v088
	.byte	W06
	.byte		N08   
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v+0
	.byte		N02   , Ds4 , v104
	.byte	W06
	.byte		        Ds4 , v108
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N05   
	.byte	W06
mus_hlw_vs_evil_1_B1:
@ 008   ----------------------------------------
	.byte		VOICE , 0
	.byte		PAN   , c_v+55
	.byte		VOL   , 107*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N11   , An0 , v092
	.byte	W12
	.byte		N02   , Fs1 , v096
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N02   , Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N11   , Cs2 
	.byte	W12
@ 009   ----------------------------------------
	.byte		PAN   , c_v+42
	.byte		N02   , An2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		PAN   , c_v+26
	.byte		N02   , Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v+18
	.byte		N11   , Gs2 , v108
	.byte	W12
	.byte		PAN   , c_v+10
	.byte		N02   , Ds3 , v096
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-6
	.byte		N02   , Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		PAN   , c_v-28
	.byte		N02   , Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		PAN   , c_v-44
	.byte		N05   , Gs2 , v112
	.byte	W06
	.byte		N02   , En2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 010   ----------------------------------------
	.byte		PAN   , c_v-48
	.byte		N02   , Cn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		PAN   , c_v-55
	.byte		N02   , Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N02   , Ds1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		PAN   , c_v-50
	.byte		N02   , Bn0 
	.byte	W06
	.byte		N05   , Gs0 
	.byte	W06
@ 011   ----------------------------------------
	.byte		PAN   , c_v-42
	.byte		N02   , Fn0 
	.byte	W06
	.byte		        Ds0 
	.byte	W06
	.byte		PAN   , c_v-36
	.byte		N11   , Cs0 
	.byte	W12
	.byte		PAN   , c_v-26
	.byte		N02   , En0 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N11   , As0 
	.byte	W12
	.byte		PAN   , c_v-58
	.byte		N03   , Cs0 
	.byte	W04
	.byte		        En0 
	.byte	W04
	.byte		        Gn0 
	.byte	W04
	.byte		PAN   , c_v-48
	.byte		N03   , As0 
	.byte	W04
	.byte		        Cn1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		PAN   , c_v-28
	.byte		N03   , Fn1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		PAN   , c_v+39
	.byte		N03   , En2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
@ 012   ----------------------------------------
	.byte		VOL   , 126*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		N68   , Ds2 , v116
	.byte	W12
	.byte		VOL   , 110*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        89*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        47*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        27*mus_hlw_vs_evil_mvl/mxv
	.byte	W36
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
	.byte		VOICE , 89
	.byte		PAN   , c_v-32
	.byte		VOL   , 122*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N11   , Cn1 , v127
	.byte	W11
	.byte	W01
	.byte		N05   , Cn2 
	.byte	W05
	.byte	W01
	.byte		        Dn2 
	.byte	W05
	.byte	W01
	.byte		        Ds2 
	.byte	W05
	.byte	W01
	.byte		        Cs2 
	.byte	W05
	.byte	W01
	.byte		        Ds2 
	.byte	W05
	.byte	W01
	.byte		        An1 
	.byte	W05
	.byte	W01
	.byte		        Fn1 
	.byte	W05
	.byte	W01
	.byte		        Cn2 
	.byte	W05
	.byte	W01
	.byte		        Dn2 
	.byte	W05
	.byte	W01
	.byte		        Cn2 
	.byte	W05
	.byte	W01
	.byte		        Fn1 
	.byte	W05
	.byte	W01
	.byte		        Cn2 
	.byte	W05
	.byte	W13
@ 029   ----------------------------------------
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		        Dn2 
	.byte	W05
	.byte	W01
	.byte		        As1 
	.byte	W05
	.byte	W01
	.byte		        Cs2 
	.byte	W05
	.byte	W01
	.byte		        Ds2 
	.byte	W05
	.byte	W01
	.byte		        An1 
	.byte	W05
	.byte	W01
	.byte		        Fn1 
	.byte	W05
	.byte	W01
	.byte		        Cn2 
	.byte	W05
	.byte	W01
	.byte		        Dn2 
	.byte	W05
	.byte	W01
	.byte		        Fn2 
	.byte	W05
	.byte	W36
	.byte	W01
@ 030   ----------------------------------------
	.byte		        Cn2 
	.byte	W05
	.byte	W01
	.byte		        Dn2 
	.byte	W05
	.byte	W01
	.byte		        As1 
	.byte	W05
	.byte	W01
	.byte		        Cs2 
	.byte	W05
	.byte	W01
	.byte		        Ds2 
	.byte	W05
	.byte	W01
	.byte		        An1 
	.byte	W05
	.byte	W01
	.byte		        Fn1 
	.byte	W05
	.byte	W01
	.byte		        Cn2 
	.byte	W05
	.byte	W01
	.byte		        Dn2 
	.byte	W05
	.byte	W01
	.byte		        Cn2 
	.byte	W05
	.byte	W01
	.byte		        Fn1 
	.byte	W05
	.byte	W01
	.byte		        Cn2 
	.byte	W05
	.byte	W24
	.byte	W01
@ 031   ----------------------------------------
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		        Dn2 
	.byte	W05
	.byte	W01
	.byte		        As1 
	.byte	W05
	.byte	W01
	.byte		        Cs2 
	.byte	W05
	.byte	W01
	.byte		        Ds2 
	.byte	W05
	.byte	W01
	.byte		        An1 
	.byte	W05
	.byte	W01
	.byte		        Fn1 
	.byte	W05
	.byte	W01
	.byte		        Cn2 
	.byte	W05
	.byte	W01
	.byte		        Dn2 
	.byte	W05
	.byte	W01
	.byte		        Fn2 , v112
	.byte	W05
	.byte	W36
	.byte	W01
@ 032   ----------------------------------------
	.byte		VOICE , 42
	.byte		VOL   , 119*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-39
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N11   , Ds1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N44   , Cs2 , v112, gtp3
	.byte	W24
@ 033   ----------------------------------------
	.byte	W24
	.byte		N05   , Cn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N11   , As1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N05   , Gs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
@ 034   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N32   , An1 , v112, gtp3
	.byte	W36
	.byte		N05   , Gs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 035   ----------------------------------------
	.byte		N84   , Fs1 , v112, gtp2
	.byte	W96
@ 036   ----------------------------------------
	.byte		BEND  , c_v+0
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W48
	.byte		VOL   , 101*mus_hlw_vs_evil_mvl/mxv
	.byte	W24
	.byte		VOICE , 90
	.byte		VOL   , 80*mus_hlw_vs_evil_mvl/mxv
	.byte		N20   , Ds4 
	.byte	W15
	.byte		BEND  , c_v-4
	.byte	W03
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-23
	.byte	W04
@ 040   ----------------------------------------
	.byte		        c_v+0
	.byte		N20   , Cn5 , v076
	.byte	W15
	.byte		BEND  , c_v-4
	.byte	W03
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-23
	.byte	W04
	.byte		PAN   , c_v+51
	.byte		BEND  , c_v+0
	.byte		N20   , Cn5 , v072
	.byte	W15
	.byte		BEND  , c_v-4
	.byte	W03
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-23
	.byte	W04
	.byte		PAN   , c_v-40
	.byte		BEND  , c_v+0
	.byte		N20   , Cn5 , v040
	.byte	W15
	.byte		BEND  , c_v-4
	.byte	W03
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-23
	.byte	W04
	.byte		VOICE , 58
	.byte		VOL   , 120*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+54
	.byte		BEND  , c_v+0
	.byte		N08   , Cn5 , v028
	.byte	W12
	.byte		N05   , Fn1 , v112
	.byte	W06
	.byte		        Fs1 
	.byte	W06
@ 041   ----------------------------------------
	.byte		VOL   , 120*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-39
	.byte		N32   , Gn1 , v112, gtp3
	.byte	W36
	.byte		N05   , Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N32   , Ds1 , v112, gtp3
	.byte	W36
	.byte		N05   , Cn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
@ 042   ----------------------------------------
	.byte	TEMPO , 187*mus_hlw_vs_evil_tbs/2
	.byte		N44   , Dn1 , v112, gtp3
	.byte	W24
	.byte		VOL   , 104*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        91*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        73*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        121*mus_hlw_vs_evil_mvl/mxv
	.byte		N44   , Cn1 , v112, gtp3
	.byte	W24
	.byte		VOL   , 104*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        91*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        74*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
@ 043   ----------------------------------------
	.byte		        121*mus_hlw_vs_evil_mvl/mxv
	.byte		N44   , As0 , v112, gtp3
	.byte	W24
	.byte		VOL   , 104*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        91*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        73*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        121*mus_hlw_vs_evil_mvl/mxv
	.byte		N44   , Dn1 , v112, gtp3
	.byte	W24
	.byte		VOL   , 104*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        91*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        76*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
@ 044   ----------------------------------------
	.byte	TEMPO , 181*mus_hlw_vs_evil_tbs/2
	.byte		VOICE , 92
	.byte		VOL   , 30*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+48
	.byte		N08   , Gs5 
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        Gn5 , v096
	.byte	W12
	.byte	TEMPO , 169*mus_hlw_vs_evil_tbs/2
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Ds5 , v076
	.byte	W12
@ 045   ----------------------------------------
	.byte	TEMPO , 163*mus_hlw_vs_evil_tbs/2
	.byte		        As5 , v112
	.byte	W12
	.byte		        As5 , v100
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte	TEMPO , 152*mus_hlw_vs_evil_tbs/2
	.byte		N08   
	.byte	W12
	.byte		        An5 , v096
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		N08   
	.byte	W12
@ 046   ----------------------------------------
	.byte	TEMPO , 187*mus_hlw_vs_evil_tbs/2
	.byte		PAN   , c_v-5
	.byte		VOL   , 42*mus_hlw_vs_evil_mvl/mxv
	.byte		N05   , Ds6 , v127
	.byte	W16
	.byte		        Ds6 , v048
	.byte	W08
	.byte		        Ds6 , v032
	.byte	W16
	.byte		        Ds6 , v024
	.byte	W08
	.byte		        Ds6 , v020
	.byte	W08
	.byte		        Ds6 , v016
	.byte	W08
	.byte		        Ds6 , v012
	.byte	W23
	.byte		        Ds6 , v104
	.byte	W09
@ 047   ----------------------------------------
	.byte	W07
	.byte		        Ds6 , v048
	.byte	W08
	.byte		        Ds6 , v032
	.byte	W16
	.byte		        Ds6 , v024
	.byte	W08
	.byte		        Ds6 , v020
	.byte	W08
	.byte		        Ds6 , v016
	.byte	W08
	.byte		        Ds6 , v012
	.byte	W32
	.byte		        Ds6 , v104
	.byte	W09
@ 048   ----------------------------------------
	.byte	W07
	.byte		        Ds6 , v048
	.byte	W08
	.byte		        Ds6 , v032
	.byte	W16
	.byte		        Ds6 , v024
	.byte	W08
	.byte		        Ds6 , v020
	.byte	W08
	.byte		        Ds6 , v016
	.byte	W16
	.byte		N02   , Ds6 , v088
	.byte	W08
	.byte		        Ds6 , v060
	.byte	W07
	.byte		TIE   , Ds6 , v100
	.byte	W18
@ 049   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
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
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_hlw_vs_evil_1_B1
mus_hlw_vs_evil_1_B2:
@ 088   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_hlw_vs_evil_2:
	.byte	KEYSH , mus_hlw_vs_evil_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 82
	.byte		PAN   , c_v+8
	.byte		VOL   , 104*mus_hlw_vs_evil_mvl/mxv
	.byte		MOD   , 0
	.byte		BENDR , 12
	.byte		LFOS  , 18
	.byte		BEND  , c_v+62
	.byte		TIE   , Ds3 , v080
	.byte	W06
	.byte		BEND  , c_v+55
	.byte	W06
	.byte		        c_v+46
	.byte	W05
	.byte		        c_v+41
	.byte	W07
	.byte		        c_v+40
	.byte	W05
	.byte		        c_v+36
	.byte	W07
	.byte		        c_v+35
	.byte	W05
	.byte		        c_v+30
	.byte	W07
	.byte		        c_v+27
	.byte	W05
	.byte		        c_v+24
	.byte	W07
	.byte		        c_v+20
	.byte	W05
	.byte		        c_v+16
	.byte	W07
	.byte		        c_v+14
	.byte	W05
	.byte		        c_v+9
	.byte	W07
	.byte		        c_v+3
	.byte	W05
	.byte		        c_v-4
	.byte	W07
@ 001   ----------------------------------------
	.byte		        c_v-7
	.byte	W05
	.byte		        c_v-12
	.byte	W07
	.byte		        c_v-17
	.byte	W05
	.byte		        c_v-20
	.byte	W07
	.byte		        c_v-23
	.byte	W05
	.byte		        c_v-27
	.byte	W07
	.byte		        c_v-30
	.byte	W05
	.byte		        c_v-35
	.byte	W07
	.byte		        c_v-38
	.byte	W05
	.byte		        c_v-39
	.byte	W07
	.byte		        c_v-43
	.byte	W05
	.byte		        c_v-47
	.byte	W07
	.byte		        c_v-50
	.byte	W05
	.byte		        c_v-56
	.byte	W07
	.byte		        c_v-62
	.byte	W05
	.byte		        c_v-64
	.byte	W06
	.byte		EOT   
	.byte	W01
@ 002   ----------------------------------------
	.byte		BEND  , c_v+62
	.byte		TIE   , Ds1 , v072
	.byte	W06
	.byte		BEND  , c_v+55
	.byte	W06
	.byte		        c_v+46
	.byte	W05
	.byte		        c_v+41
	.byte	W07
	.byte		        c_v+40
	.byte	W05
	.byte		        c_v+36
	.byte	W07
	.byte		        c_v+35
	.byte	W05
	.byte		        c_v+30
	.byte	W07
	.byte		PAN   , c_v+16
	.byte		BEND  , c_v+27
	.byte	W05
	.byte		        c_v+24
	.byte	W07
	.byte		        c_v+20
	.byte	W05
	.byte		        c_v+16
	.byte	W07
	.byte		VOL   , 102*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+24
	.byte		BEND  , c_v+14
	.byte	W05
	.byte		        c_v+9
	.byte	W07
	.byte		        c_v+3
	.byte	W05
	.byte		        c_v-4
	.byte	W07
@ 003   ----------------------------------------
	.byte		VOL   , 95*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+36
	.byte		BEND  , c_v-7
	.byte	W05
	.byte		        c_v-12
	.byte	W07
	.byte		        c_v-17
	.byte	W05
	.byte		        c_v-20
	.byte	W07
	.byte		VOL   , 89*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+47
	.byte		BEND  , c_v-23
	.byte	W05
	.byte		        c_v-27
	.byte	W07
	.byte		        c_v-30
	.byte	W05
	.byte		        c_v-35
	.byte	W07
	.byte		VOL   , 82*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-38
	.byte	W05
	.byte		        c_v-39
	.byte	W07
	.byte		        c_v-43
	.byte	W05
	.byte		        c_v-47
	.byte	W07
	.byte		VOL   , 75*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-50
	.byte	W05
	.byte		        c_v-56
	.byte	W07
	.byte		        c_v-62
	.byte	W05
	.byte		        c_v-64
	.byte	W06
	.byte		EOT   
	.byte	W01
@ 004   ----------------------------------------
	.byte		BEND  , c_v-52
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 15*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		BEND  , c_v-7
	.byte		N32   , As4 , v112, gtp3
	.byte	W02
	.byte		VOL   , 18*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		        22*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		        31*mus_hlw_vs_evil_mvl/mxv
	.byte	W04
	.byte		        37*mus_hlw_vs_evil_mvl/mxv
	.byte	W02
	.byte		        47*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		        63*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		        71*mus_hlw_vs_evil_mvl/mxv
	.byte	W04
	.byte		PAN   , c_v+40
	.byte		VOL   , 76*mus_hlw_vs_evil_mvl/mxv
	.byte	W02
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte	W10
	.byte		        15*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+13
	.byte		N32   , Bn4 , v112, gtp3
	.byte	W02
	.byte		VOL   , 18*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		        22*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		        31*mus_hlw_vs_evil_mvl/mxv
	.byte	W04
	.byte		PAN   , c_v+32
	.byte		VOL   , 37*mus_hlw_vs_evil_mvl/mxv
	.byte	W02
	.byte		        47*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		        63*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		        71*mus_hlw_vs_evil_mvl/mxv
	.byte	W04
	.byte		        76*mus_hlw_vs_evil_mvl/mxv
	.byte	W02
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte	W10
	.byte		        15*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+48
	.byte		N32   , Fs4 , v112, gtp3
	.byte	W02
	.byte		VOL   , 18*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		        22*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		        31*mus_hlw_vs_evil_mvl/mxv
	.byte	W04
	.byte		        37*mus_hlw_vs_evil_mvl/mxv
	.byte	W02
	.byte		        47*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		        63*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		        71*mus_hlw_vs_evil_mvl/mxv
	.byte	W04
@ 007   ----------------------------------------
	.byte		        76*mus_hlw_vs_evil_mvl/mxv
	.byte	W02
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte	W10
	.byte		        15*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-52
	.byte		N32   , As4 , v112, gtp3
	.byte	W02
	.byte		VOL   , 18*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		        22*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		        31*mus_hlw_vs_evil_mvl/mxv
	.byte	W04
	.byte		        37*mus_hlw_vs_evil_mvl/mxv
	.byte	W02
	.byte		        47*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		        63*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		        71*mus_hlw_vs_evil_mvl/mxv
	.byte	W04
	.byte		        76*mus_hlw_vs_evil_mvl/mxv
	.byte	W02
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte	W10
	.byte		VOICE , 48
	.byte		PAN   , c_v+58
	.byte		BEND  , c_v+0
	.byte		N23   , Fn4 , v127
	.byte	W24
	.byte		        Fs4 
	.byte	W24
mus_hlw_vs_evil_2_B1:
@ 008   ----------------------------------------
	.byte		VOICE , 90
	.byte		PAN   , c_v+32
	.byte		VOL   , 96*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N11   , An0 , v092
	.byte	W12
	.byte		N02   , Fs1 , v096
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N02   , Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N11   , Cs2 
	.byte	W12
@ 009   ----------------------------------------
	.byte		BEND  , c_v+2
	.byte		N02   , An2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N11   , Gs2 , v108
	.byte	W12
	.byte		N02   , Ds3 , v096
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N05   , Gs2 , v112
	.byte	W06
	.byte		N02   , En2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 010   ----------------------------------------
	.byte		PAN   , c_v-46
	.byte		BEND  , c_v+4
	.byte		N02   , Cn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N02   , Ds1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N05   , Gs0 
	.byte	W06
@ 011   ----------------------------------------
	.byte		VOL   , 96*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+5
	.byte		N02   , Fn0 
	.byte	W06
	.byte		        Ds0 
	.byte	W06
	.byte		N11   , Cs0 
	.byte	W12
	.byte		N02   , En0 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		N11   , As0 
	.byte	W12
	.byte		N03   , Cs0 
	.byte	W04
	.byte		        En0 
	.byte	W04
	.byte		        Gn0 
	.byte	W04
	.byte		        As0 
	.byte	W04
	.byte		        Cn1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		PAN   , c_v-58
	.byte		N03   , Fn1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
@ 012   ----------------------------------------
	.byte		BEND  , c_v+0
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W48
	.byte		VOICE , 20
	.byte	W24
	.byte		PAN   , c_v-20
	.byte		VOL   , 124*mus_hlw_vs_evil_mvl/mxv
	.byte		N05   , Cn4 , v068
	.byte	W06
	.byte		        Fn4 , v076
	.byte	W06
	.byte		        Gn4 , v088
	.byte	W06
	.byte		        As4 , v104
	.byte	W06
@ 016   ----------------------------------------
	.byte		BEND  , c_v+0
	.byte		N05   , Cn5 , v108
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W12
	.byte		        Ds5 , v060
	.byte	W12
	.byte		        Gn4 , v108
	.byte	W06
	.byte		        Gn4 , v060
	.byte	W06
	.byte		        Gs4 , v108
	.byte	W06
	.byte		        Gs4 , v056
	.byte	W06
	.byte		BEND  , c_v-8
	.byte		N11   , As4 , v108
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		N05   , Gs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 017   ----------------------------------------
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Ds5 , v060
	.byte	W06
	.byte		        Gn4 , v108
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		BEND  , c_v-8
	.byte		N11   , As4 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		N05   , Gs4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
@ 018   ----------------------------------------
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W12
	.byte		        Ds5 , v060
	.byte	W12
	.byte		        Gn4 , v108
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		BEND  , c_v-10
	.byte		N11   , As4 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		N05   , Gs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 019   ----------------------------------------
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Ds5 , v060
	.byte	W06
	.byte		        Gn4 , v108
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		BEND  , c_v-8
	.byte		N11   , As4 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		VOL   , 103*mus_hlw_vs_evil_mvl/mxv
	.byte		N05   , Gs4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W12
	.byte		        Ds5 , v068
	.byte	W12
	.byte		        Gn4 , v108
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		BEND  , c_v-8
	.byte		N11   , As4 , v104
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		N05   , Gs4 , v108
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 021   ----------------------------------------
mus_hlw_vs_evil_2_021:
	.byte		N05   , Cn5 , v108
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		BEND  , c_v-8
	.byte		N11   , As4 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		N05   , Gs4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W12
	.byte		        Ds5 , v068
	.byte	W12
	.byte		        Gn4 , v108
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		BEND  , c_v-8
	.byte		N11   , As4 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		N05   , Gs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_2_021
@ 024   ----------------------------------------
	.byte		N05   , Cn5 , v112
	.byte	W12
	.byte		PAN   , c_v-49
	.byte		N05   , Cn5 , v088
	.byte	W12
	.byte		PAN   , c_v+40
	.byte		N05   , Cn5 , v068
	.byte	W12
	.byte		PAN   , c_v-51
	.byte		N05   , Cn5 , v056
	.byte	W12
	.byte		PAN   , c_v+47
	.byte		N05   , Cn5 , v036
	.byte	W12
	.byte		PAN   , c_v-49
	.byte		N05   , Cn5 , v016
	.byte	W36
@ 025   ----------------------------------------
	.byte		VOICE , 57
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte		        55
	.byte		N03   , Fs3 , v112
	.byte	W08
	.byte		N03   
	.byte	W08
	.byte		N03   
	.byte	W08
	.byte		N03   
	.byte	W08
	.byte		N03   
	.byte	W08
	.byte		N03   
	.byte	W08
	.byte		N07   
	.byte	W16
	.byte		N03   
	.byte	W08
	.byte		N15   
	.byte	W24
@ 028   ----------------------------------------
	.byte		VOICE , 48
	.byte		PAN   , c_v-35
	.byte		VOL   , 120*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N05   , Cn5 , v108
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W24
	.byte		        Gn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		BEND  , c_v-12
	.byte		N11   , As4 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		N05   , Gs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 029   ----------------------------------------
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		BEND  , c_v-11
	.byte		N11   , As4 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		N05   , Gs4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
@ 030   ----------------------------------------
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W24
	.byte		        Gn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		BEND  , c_v-12
	.byte		N11   , As4 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		N05   , Gs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 031   ----------------------------------------
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		BEND  , c_v-10
	.byte		N11   , As4 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		VOL   , 103*mus_hlw_vs_evil_mvl/mxv
	.byte		N05   , Gs4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W48
	.byte		VOL   , 96*mus_hlw_vs_evil_mvl/mxv
	.byte	W24
	.byte		VOICE , 29
	.byte		PAN   , c_v+40
	.byte		N02   , Fn4 , v127
	.byte	W06
	.byte		        Fs4 , v112
	.byte	W06
	.byte		        Fs4 , v127
	.byte	W06
	.byte		        Fs4 , v112
	.byte	W06
@ 035   ----------------------------------------
	.byte		BEND  , c_v+0
	.byte		N84   , Fs5 , v112, gtp2
	.byte	W24
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		PAN   , c_v+21
	.byte	W06
	.byte		        c_v+2
	.byte	W06
	.byte		        c_v-19
	.byte	W06
	.byte		        c_v-33
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W06
	.byte		        c_v-3
	.byte	W06
	.byte		        c_v-3
	.byte	W06
	.byte		        c_v-4
	.byte	W06
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-7
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v+0
	.byte		N05   , As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 036   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 120*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-27
	.byte		BEND  , c_v+0
	.byte		N11   , Cn1 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N11   , Fn1 
	.byte	W12
	.byte		N56   , Gs1 , v112, gtp3
	.byte	W12
@ 037   ----------------------------------------
	.byte	W24
	.byte		BEND  , c_v-2
	.byte	W06
	.byte		        c_v-3
	.byte	W06
	.byte		        c_v-3
	.byte	W06
	.byte		        c_v-5
	.byte	W06
	.byte		        c_v+0
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Ds1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
@ 038   ----------------------------------------
	.byte		BEND  , c_v+0
	.byte		N11   , Fn1 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N23   , Fs1 
	.byte	W09
	.byte		BEND  , c_v-2
	.byte	W03
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-7
	.byte	W03
	.byte		        c_v-8
	.byte	W04
	.byte		        c_v+0
	.byte		N44   , Fs1 , v112, gtp3
	.byte	W36
@ 039   ----------------------------------------
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-7
	.byte	W03
	.byte		        c_v-8
	.byte	W04
	.byte		        c_v+0
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N02   , Gs1 
	.byte	W12
	.byte		N11   , An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N11   , An1 
	.byte	W12
	.byte		N05   , As1 
	.byte	W12
@ 040   ----------------------------------------
	.byte		VOICE , 73
	.byte		PAN   , c_v-14
	.byte		VOL   , 110*mus_hlw_vs_evil_mvl/mxv
	.byte		N05   , Cn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N05   
	.byte	W12
@ 041   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N05   
	.byte	W12
@ 042   ----------------------------------------
mus_hlw_vs_evil_2_042:
	.byte		N05   , As4 , v112
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_2_042
@ 044   ----------------------------------------
	.byte		VOL   , 96*mus_hlw_vs_evil_mvl/mxv
	.byte		N08   , Gs5 , v112
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        Gn5 , v096
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Ds5 , v076
	.byte	W12
@ 045   ----------------------------------------
	.byte		        As5 , v112
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        An5 , v100
	.byte	W12
	.byte		        An5 , v096
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        Fn5 , v080
	.byte	W12
@ 046   ----------------------------------------
	.byte		VOICE , 42
	.byte		PAN   , c_v-45
	.byte		VOL   , 64*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N05   , Cn6 , v127
	.byte	W16
	.byte		        Cn6 , v048
	.byte	W08
	.byte		PAN   , c_v+43
	.byte		N05   , Cn6 , v032
	.byte	W16
	.byte		PAN   , c_v-49
	.byte		N05   , Cn6 , v024
	.byte	W08
	.byte		PAN   , c_v+41
	.byte		N05   , Cn6 , v020
	.byte	W08
	.byte		PAN   , c_v-57
	.byte		N05   , Cn6 , v016
	.byte	W08
	.byte		PAN   , c_v+55
	.byte		N05   , Cn6 , v012
	.byte	W23
	.byte		PAN   , c_v-45
	.byte		N05   , Cn6 , v104
	.byte	W09
@ 047   ----------------------------------------
	.byte	W07
	.byte		        Cn6 , v048
	.byte	W08
	.byte		PAN   , c_v+43
	.byte		N05   , Cn6 , v032
	.byte	W16
	.byte		PAN   , c_v-49
	.byte		N05   , Cn6 , v024
	.byte	W08
	.byte		PAN   , c_v+41
	.byte		N05   , Cn6 , v020
	.byte	W08
	.byte		PAN   , c_v-57
	.byte		N05   , Cn6 , v016
	.byte	W08
	.byte		PAN   , c_v+55
	.byte		N05   , Cn6 , v012
	.byte	W32
	.byte		PAN   , c_v-45
	.byte		N05   , Cn6 , v104
	.byte	W09
@ 048   ----------------------------------------
	.byte	W07
	.byte		        Cn6 , v048
	.byte	W08
	.byte		PAN   , c_v+43
	.byte		N05   , Cn6 , v032
	.byte	W16
	.byte		PAN   , c_v-49
	.byte		N05   , Cn6 , v024
	.byte	W08
	.byte		PAN   , c_v+41
	.byte		N05   , Cn6 , v020
	.byte	W08
	.byte		PAN   , c_v-57
	.byte		N05   , Cn6 , v016
	.byte	W09
	.byte		PAN   , c_v+0
	.byte	W07
	.byte		N02   , Cn6 , v088
	.byte	W08
	.byte		        Cn6 , v060
	.byte	W07
	.byte		TIE   , Cn6 , v100
	.byte	W18
@ 049   ----------------------------------------
	.byte	W48
	.byte		VOL   , 56*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        54*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        52*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        46*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        39*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        28*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        22*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        14*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		EOT   
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
	.byte		VOICE , 73
	.byte		VOL   , 80*mus_hlw_vs_evil_mvl/mxv
	.byte		N05   , Cn5 , v112
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 055   ----------------------------------------
	.byte		PAN   , c_v-23
	.byte		N05   , Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		PAN   , c_v+26
	.byte		N05   , Ds5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v-23
	.byte		N05   , Dn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v+25
	.byte		N05   , Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 056   ----------------------------------------
	.byte		PAN   , c_v-23
	.byte		N05   , Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		PAN   , c_v+26
	.byte		N05   , Ds5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v-23
	.byte		N05   , Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v+25
	.byte		N05   , Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 057   ----------------------------------------
	.byte		PAN   , c_v-23
	.byte		N05   , Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		PAN   , c_v+26
	.byte		N05   , Ds5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v-23
	.byte		N05   , Dn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v+25
	.byte		N05   , Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 058   ----------------------------------------
	.byte		        Cn6 
	.byte	W06
	.byte		        Dn6 
	.byte	W06
	.byte		VOICE , 85
	.byte		N05   , As5 
	.byte	W06
	.byte		        Cs6 
	.byte	W06
	.byte		        Ds6 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Dn6 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Dn6 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        As5 
	.byte	W06
@ 059   ----------------------------------------
	.byte		        Cn6 
	.byte	W06
	.byte		        Dn6 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Cs6 
	.byte	W06
	.byte		        Ds6 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Dn6 
	.byte	W06
	.byte		        Ds6 
	.byte	W06
	.byte		        Fn6 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Dn6 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        As5 
	.byte	W06
@ 060   ----------------------------------------
	.byte		        Cn6 
	.byte	W06
	.byte		        Dn6 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Cs6 
	.byte	W06
	.byte		        Ds6 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Dn6 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Dn6 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        As5 
	.byte	W06
@ 061   ----------------------------------------
	.byte		        Cn6 
	.byte	W06
	.byte		        Dn6 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Cs6 
	.byte	W06
	.byte		        Ds6 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Dn6 
	.byte	W06
	.byte		        Fn6 
	.byte	W06
	.byte		        Gn6 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Dn6 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        As5 
	.byte	W06
@ 062   ----------------------------------------
mus_hlw_vs_evil_2_062:
	.byte		N05   , Dn4 , v112
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte	PEND
@ 063   ----------------------------------------
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_2_062
@ 065   ----------------------------------------
	.byte		N05   , Dn4 , v112
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 066   ----------------------------------------
mus_hlw_vs_evil_2_066:
	.byte		N05   , Ds4 , v112
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte	PEND
@ 067   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_2_066
@ 069   ----------------------------------------
	.byte		N05   , Ds4 , v112
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 , v127
	.byte	W06
	.byte		        Cs4 , v112
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 070   ----------------------------------------
	.byte		VOL   , 95*mus_hlw_vs_evil_mvl/mxv
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte		VOICE , 81
	.byte		PAN   , c_v-17
	.byte		VOL   , 111*mus_hlw_vs_evil_mvl/mxv
	.byte		N32   , Cn3 , v112, gtp3
	.byte	W36
	.byte		N23   , Cs3 
	.byte	W24
	.byte		N32   , As2 , v112, gtp3
	.byte	W36
@ 075   ----------------------------------------
	.byte		N23   , Cn3 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		N32   , Cn3 , v112, gtp3
	.byte	W36
	.byte		N23   , Cs3 
	.byte	W12
@ 076   ----------------------------------------
	.byte	W12
	.byte		N32   , Bn2 , v112, gtp3
	.byte	W36
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 077   ----------------------------------------
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-26
	.byte		N32   , Gn3 , v112, gtp3
	.byte	W36
	.byte		N23   , Gs3 
	.byte	W24
	.byte		N32   , Fn3 , v112, gtp3
	.byte	W36
@ 078   ----------------------------------------
	.byte		N23   , Gn3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		N32   , Gn3 , v112, gtp3
	.byte	W36
	.byte		N23   , Gs3 
	.byte	W12
@ 079   ----------------------------------------
	.byte	W12
	.byte		N32   , Fs3 , v112, gtp3
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_hlw_vs_evil_2_B1
mus_hlw_vs_evil_2_B2:
@ 088   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_hlw_vs_evil_3:
	.byte	KEYSH , mus_hlw_vs_evil_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 77
	.byte		PAN   , c_v+8
	.byte		BENDR , 12
	.byte		LFOS  , 18
	.byte		MOD   , 0
	.byte		VOL   , 108*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+62
	.byte		TIE   , An2 , v080
	.byte	W06
	.byte		BEND  , c_v+55
	.byte	W06
	.byte		        c_v+46
	.byte	W05
	.byte		        c_v+41
	.byte	W07
	.byte		        c_v+40
	.byte	W05
	.byte		        c_v+36
	.byte	W07
	.byte		        c_v+35
	.byte	W05
	.byte		        c_v+30
	.byte	W07
	.byte		        c_v+27
	.byte	W05
	.byte		        c_v+24
	.byte	W07
	.byte		        c_v+20
	.byte	W05
	.byte		        c_v+16
	.byte	W07
	.byte		        c_v+14
	.byte	W05
	.byte		        c_v+9
	.byte	W07
	.byte		        c_v+3
	.byte	W05
	.byte		        c_v-4
	.byte	W07
@ 001   ----------------------------------------
	.byte		        c_v-7
	.byte	W05
	.byte		        c_v-12
	.byte	W07
	.byte		        c_v-17
	.byte	W05
	.byte		        c_v-20
	.byte	W07
	.byte		        c_v-23
	.byte	W05
	.byte		        c_v-27
	.byte	W07
	.byte		        c_v-30
	.byte	W05
	.byte		        c_v-35
	.byte	W07
	.byte		        c_v-38
	.byte	W05
	.byte		        c_v-39
	.byte	W07
	.byte		        c_v-43
	.byte	W05
	.byte		        c_v-47
	.byte	W07
	.byte		        c_v-50
	.byte	W05
	.byte		        c_v-56
	.byte	W07
	.byte		        c_v-62
	.byte	W05
	.byte		        c_v-64
	.byte	W06
	.byte		EOT   
	.byte	W01
@ 002   ----------------------------------------
	.byte		PAN   , c_v+13
	.byte		BEND  , c_v+62
	.byte		TIE   , An0 
	.byte	W06
	.byte		BEND  , c_v+55
	.byte	W06
	.byte		        c_v+46
	.byte	W05
	.byte		        c_v+41
	.byte	W07
	.byte		        c_v+40
	.byte	W05
	.byte		        c_v+36
	.byte	W07
	.byte		        c_v+35
	.byte	W05
	.byte		        c_v+30
	.byte	W07
	.byte		PAN   , c_v+25
	.byte		BEND  , c_v+27
	.byte	W05
	.byte		        c_v+24
	.byte	W07
	.byte		        c_v+20
	.byte	W05
	.byte		        c_v+16
	.byte	W07
	.byte		VOL   , 100*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+37
	.byte		BEND  , c_v+14
	.byte	W05
	.byte		        c_v+9
	.byte	W07
	.byte		        c_v+3
	.byte	W05
	.byte		        c_v-4
	.byte	W07
@ 003   ----------------------------------------
	.byte		VOL   , 91*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+48
	.byte		BEND  , c_v-7
	.byte	W05
	.byte		        c_v-12
	.byte	W07
	.byte		        c_v-17
	.byte	W05
	.byte		        c_v-20
	.byte	W07
	.byte		VOL   , 86*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-23
	.byte	W05
	.byte		        c_v-27
	.byte	W07
	.byte		        c_v-30
	.byte	W05
	.byte		        c_v-35
	.byte	W07
	.byte		VOL   , 82*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-38
	.byte	W05
	.byte		        c_v-39
	.byte	W07
	.byte		        c_v-43
	.byte	W05
	.byte		        c_v-47
	.byte	W07
	.byte		VOL   , 73*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-50
	.byte	W05
	.byte		        c_v-56
	.byte	W07
	.byte		        c_v-62
	.byte	W05
	.byte		        c_v-64
	.byte	W06
	.byte		EOT   
	.byte	W01
@ 004   ----------------------------------------
	.byte		VOICE , 73
	.byte		PAN   , c_v-42
	.byte		VOL   , 38*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N32   , Fs5 , v112, gtp3
	.byte	W06
	.byte		VOL   , 56*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        84*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        38*mus_hlw_vs_evil_mvl/mxv
	.byte		N32   , Gs5 , v112, gtp3
	.byte	W06
	.byte		VOL   , 56*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        84*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		VOL   , 38*mus_hlw_vs_evil_mvl/mxv
	.byte		N32   , Ds5 , v112, gtp3
	.byte	W06
	.byte		VOL   , 56*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        84*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
@ 005   ----------------------------------------
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        38*mus_hlw_vs_evil_mvl/mxv
	.byte		N32   , Fs5 , v112, gtp3
	.byte	W06
	.byte		VOL   , 56*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        84*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v-42
	.byte		VOL   , 34*mus_hlw_vs_evil_mvl/mxv
	.byte		N23   , Cs5 
	.byte	W05
	.byte		VOL   , 56*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        75*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        77*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		        89*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        32*mus_hlw_vs_evil_mvl/mxv
	.byte		N23   , Ds5 
	.byte	W05
	.byte		VOL   , 54*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        96*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
@ 006   ----------------------------------------
	.byte		        38*mus_hlw_vs_evil_mvl/mxv
	.byte		N32   , Fs5 , v112, gtp3
	.byte	W06
	.byte		VOL   , 56*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        84*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v-55
	.byte		VOL   , 38*mus_hlw_vs_evil_mvl/mxv
	.byte		N32   , Gs5 , v112, gtp3
	.byte	W06
	.byte		VOL   , 56*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        84*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        38*mus_hlw_vs_evil_mvl/mxv
	.byte		N32   , Ds5 , v124, gtp3
	.byte	W06
	.byte		VOL   , 56*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        84*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
@ 007   ----------------------------------------
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        38*mus_hlw_vs_evil_mvl/mxv
	.byte		N32   , Fs5 , v096, gtp3
	.byte	W06
	.byte		VOL   , 56*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        84*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		VOICE , 48
	.byte		N23   , Cs5 , v112
	.byte	W24
	.byte		        Ds5 , v127
	.byte	W24
mus_hlw_vs_evil_3_B1:
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 41*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+62
	.byte		BEND  , c_v+2
	.byte		N02   , An6 , v112
	.byte	W06
	.byte		        Cs6 
	.byte	W09
	.byte		        Gn6 
	.byte	W09
	.byte		PAN   , c_v+53
	.byte		N02   , Cn7 
	.byte	W12
	.byte		        An6 
	.byte	W12
	.byte		PAN   , c_v+47
	.byte		N02   , Gs5 
	.byte	W06
	.byte		        Fs6 
	.byte	W06
	.byte		        Ds6 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N02   , En6 
	.byte	W09
	.byte		        As5 
	.byte	W06
	.byte		        Cn6 
	.byte	W09
@ 013   ----------------------------------------
	.byte		PAN   , c_v+21
	.byte		BEND  , c_v-4
	.byte		N02   , En6 
	.byte	W03
	.byte		        Cs7 
	.byte	W09
	.byte		        Bn6 
	.byte	W06
	.byte		        Fn6 
	.byte	W03
	.byte		        Gn6 
	.byte	W03
	.byte		PAN   , c_v+12
	.byte	W03
	.byte		N02   , Bn5 
	.byte	W09
	.byte		        Fn6 
	.byte	W09
	.byte		        As6 
	.byte	W03
	.byte		PAN   , c_v-5
	.byte	W09
	.byte		N02   , Gn6 
	.byte	W12
	.byte		        Fs5 
	.byte	W03
	.byte		PAN   , c_v-16
	.byte	W03
	.byte		N02   , En6 
	.byte	W06
	.byte		        Cs6 
	.byte	W12
	.byte		        Dn6 
	.byte	W03
@ 014   ----------------------------------------
	.byte		PAN   , c_v-26
	.byte		BEND  , c_v+0
	.byte	W06
	.byte		N02   , Gs5 
	.byte	W06
	.byte		        As5 
	.byte	W09
	.byte		        Dn6 
	.byte	W03
	.byte		PAN   , c_v-34
	.byte		N02   , Bn6 
	.byte	W09
	.byte		        An6 
	.byte	W06
	.byte		        Ds6 
	.byte	W09
	.byte		PAN   , c_v-40
	.byte		N02   , An6 
	.byte	W06
	.byte		        Cs6 
	.byte	W09
	.byte		        Gn6 
	.byte	W09
	.byte		PAN   , c_v-48
	.byte		N02   , Cn7 
	.byte	W12
	.byte		        An6 
	.byte	W12
@ 015   ----------------------------------------
	.byte		PAN   , c_v-54
	.byte		BEND  , c_v-3
	.byte		N02   , Gs5 
	.byte	W06
	.byte		        Fs6 
	.byte	W06
	.byte		VOL   , 38*mus_hlw_vs_evil_mvl/mxv
	.byte		N02   , Ds6 
	.byte	W11
	.byte		VOL   , 31*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		N02   , En6 
	.byte	W09
	.byte		        As5 
	.byte	W02
	.byte		VOL   , 29*mus_hlw_vs_evil_mvl/mxv
	.byte	W04
	.byte		N02   , Cn6 
	.byte	W08
	.byte		VOL   , 25*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		N02   , En6 
	.byte	W03
	.byte		        Cs7 
	.byte	W08
	.byte		VOL   , 20*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		N02   , Bn6 
	.byte	W06
	.byte		        Fn6 
	.byte	W03
	.byte		        Gn6 
	.byte	W02
	.byte		VOL   , 13*mus_hlw_vs_evil_mvl/mxv
	.byte	W04
	.byte		N02   , Bn5 
	.byte	W08
	.byte		VOL   , 12*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		N02   , Fn6 
	.byte	W09
	.byte		        As6 
	.byte	W03
@ 016   ----------------------------------------
	.byte		VOICE , 7
	.byte		VOL   , 14*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+56
	.byte		BEND  , c_v+0
	.byte		N02   , Cn5 , v024
	.byte	W06
	.byte		        Dn5 , v112
	.byte	W05
	.byte		VOL   , 16*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		N02   , As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W05
	.byte		VOL   , 19*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-57
	.byte		N02   , Ds5 
	.byte	W06
	.byte		        An4 
	.byte	W05
	.byte		VOL   , 24*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		N02   , Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W05
	.byte		VOL   , 38*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+56
	.byte		N02   , Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W05
	.byte		VOL   , 56*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		N02   , Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W05
	.byte		VOL   , 78*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-57
	.byte		N02   , Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W05
	.byte		VOL   , 86*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		N02   , Gn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 017   ----------------------------------------
	.byte		PAN   , c_v+56
	.byte		VOL   , 85*mus_hlw_vs_evil_mvl/mxv
	.byte		N02   , Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		PAN   , c_v-57
	.byte		N02   , Ds5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v+56
	.byte		N02   , Dn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v-57
	.byte		N02   , Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 018   ----------------------------------------
	.byte		PAN   , c_v+56
	.byte		N02   , Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		PAN   , c_v-57
	.byte		N02   , Ds5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v+56
	.byte		N02   , Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v-57
	.byte		N02   , Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 019   ----------------------------------------
	.byte		PAN   , c_v+56
	.byte		N02   , Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		PAN   , c_v-57
	.byte		N02   , Ds5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v+56
	.byte		N02   , Dn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v-57
	.byte		N02   , Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 020   ----------------------------------------
	.byte		VOICE , 7
	.byte		VOL   , 91*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+47
	.byte		N02   , Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N02   , Ds5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v+47
	.byte		N02   , Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v-21
	.byte		N02   , Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 021   ----------------------------------------
	.byte		PAN   , c_v+48
	.byte		N02   , Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N02   , Ds5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v+50
	.byte		N02   , Dn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v-13
	.byte		N02   , Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 022   ----------------------------------------
	.byte		VOL   , 91*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+48
	.byte		N02   , Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		PAN   , c_v-10
	.byte		N02   , Ds5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N02   , Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N02   , Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 023   ----------------------------------------
	.byte		VOL   , 100*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+50
	.byte		N02   , Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		PAN   , c_v-10
	.byte		N02   , Ds5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		VOL   , 112*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+48
	.byte		N02   , Dn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v-5
	.byte		N02   , Dn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 024   ----------------------------------------
	.byte		VOICE , 20
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-7
	.byte		BEND  , c_v+0
	.byte		N32   , Gn2 , v112, gtp3
	.byte	W12
	.byte		MOD   , 15
	.byte	W24
	.byte		        0
	.byte		N32   , Cn3 , v112, gtp3
	.byte	W12
	.byte		MOD   , 15
	.byte	W24
	.byte		        0
	.byte		N32   , As2 , v112, gtp3
	.byte	W12
	.byte		MOD   , 15
	.byte	W12
@ 025   ----------------------------------------
	.byte	W12
	.byte		        0
	.byte		N32   , Cs3 , v112, gtp3
	.byte	W12
	.byte		MOD   , 15
	.byte	W24
	.byte		        0
	.byte		N23   , Cn3 
	.byte	W12
	.byte		MOD   , 15
	.byte	W12
	.byte		        0
	.byte		N23   , Gs2 
	.byte	W12
	.byte		MOD   , 15
	.byte	W12
@ 026   ----------------------------------------
	.byte		        0
	.byte		N32   , As2 , v112, gtp3
	.byte	W36
	.byte		TIE   , Bn2 , v120
	.byte	W36
	.byte		MOD   , 15
	.byte	W24
@ 027   ----------------------------------------
	.byte		VOL   , 122*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+2
	.byte	W12
	.byte		VOL   , 118*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+6
	.byte	W12
	.byte		VOL   , 110*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W12
	.byte		VOL   , 102*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+16
	.byte	W12
	.byte		VOL   , 98*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+21
	.byte	W12
	.byte		VOL   , 93*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+23
	.byte	W11
	.byte		EOT   
	.byte	W01
	.byte		MOD   , 0
	.byte	W24
@ 028   ----------------------------------------
	.byte		PAN   , c_v+24
	.byte		VOL   , 119*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W72
	.byte		N11   , Gn3 , v112
	.byte	W12
	.byte		N05   , Fs3 
	.byte	W12
@ 029   ----------------------------------------
	.byte	W60
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N05   , Fs3 
	.byte	W12
@ 030   ----------------------------------------
	.byte	W72
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W12
@ 031   ----------------------------------------
	.byte	W60
	.byte		N23   , Gs3 
	.byte	W24
	.byte		N05   , Gn3 
	.byte	W06
	.byte		PAN   , c_v+40
	.byte		N02   , Fn2 
	.byte	W03
	.byte		        Fs2 
	.byte	W03
@ 032   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 116*mus_hlw_vs_evil_mvl/mxv
	.byte		N32   , Gn2 , v112, gtp3
	.byte	W09
	.byte		MOD   , 15
	.byte	W24
	.byte		        0
	.byte	W03
	.byte		N32   , Cn3 , v112, gtp3
	.byte	W09
	.byte		MOD   , 15
	.byte	W24
	.byte		        0
	.byte	W03
	.byte		N32   , As2 , v112, gtp3
	.byte	W09
	.byte		MOD   , 15
	.byte	W15
@ 033   ----------------------------------------
	.byte	W09
	.byte		        0
	.byte	W03
	.byte		N32   , Cs3 , v112, gtp3
	.byte	W09
	.byte		MOD   , 15
	.byte	W24
	.byte		        0
	.byte	W03
	.byte		N23   , Cn3 
	.byte	W09
	.byte		MOD   , 15
	.byte	W12
	.byte		        0
	.byte	W03
	.byte		N23   , Gs2 
	.byte	W09
	.byte		MOD   , 15
	.byte	W12
	.byte		        0
	.byte	W03
@ 034   ----------------------------------------
	.byte		N32   , As2 , v112, gtp3
	.byte	W36
	.byte		TIE   , Bn2 
	.byte	W32
	.byte	W01
	.byte		MOD   , 15
	.byte	W24
	.byte	W03
@ 035   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		        0
	.byte	W02
	.byte		EOT   
	.byte	W24
	.byte	W01
@ 036   ----------------------------------------
	.byte		N32   , Gn2 , v112, gtp3
	.byte	W36
	.byte		        Cn3 , v112, gtp3
	.byte	W36
	.byte		N11   , As2 
	.byte	W12
	.byte		N56   , Cs3 , v112, gtp3
	.byte	W12
@ 037   ----------------------------------------
	.byte	W48
	.byte		N23   , Cn3 
	.byte	W24
	.byte		        Gs2 
	.byte	W24
@ 038   ----------------------------------------
	.byte		N32   , As2 , v112, gtp3
	.byte	W36
	.byte		N68   , Bn2 , v112, gtp3
	.byte	W60
@ 039   ----------------------------------------
	.byte	W12
	.byte		N23   , Cs3 
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N44   , Ds3 , v112, gtp3
	.byte	W48
@ 040   ----------------------------------------
	.byte		VOICE , 82
	.byte		VOL   , 89*mus_hlw_vs_evil_mvl/mxv
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N80   , Gn3 , v112, gtp3
	.byte	W84
@ 041   ----------------------------------------
	.byte		N36   , Cn4 , v112, gtp2
	.byte	W36
	.byte	W03
	.byte		N02   , Ds4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		N44   , Ds3 , v112, gtp3
	.byte	W48
@ 042   ----------------------------------------
	.byte		        Gn3 , v112, gtp3
	.byte	W48
	.byte		        Gs3 , v112, gtp3
	.byte	W48
@ 043   ----------------------------------------
	.byte		        Fn4 , v112, gtp3
	.byte	W48
	.byte		        Dn4 , v112, gtp3
	.byte	W48
@ 044   ----------------------------------------
	.byte		N23   , Gs1 
	.byte	W24
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Ds2 , v076
	.byte	W12
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
	.byte		VOICE , 83
	.byte		VOL   , 28*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+42
	.byte	W05
	.byte		VOL   , 44*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		N32   , Fs5 , v124, gtp3
	.byte	W05
	.byte		VOL   , 54*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        75*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        92*mus_hlw_vs_evil_mvl/mxv
	.byte	W13
	.byte		        16*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v-44
	.byte		N32   , Gs5 , v127, gtp3
	.byte	W06
	.byte		VOL   , 28*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        44*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        54*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        75*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        92*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		PAN   , c_v+42
	.byte		N32   , Ds5 , v127, gtp3
	.byte	W18
@ 055   ----------------------------------------
	.byte	W05
	.byte		VOL   , 54*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        75*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        92*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-45
	.byte		N32   , Fs5 , v127, gtp3
	.byte	W05
	.byte		VOL   , 96*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		        25*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        47*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        83*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        98*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        16*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+43
	.byte		N23   , Cs5 
	.byte	W12
	.byte		VOL   , 28*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        44*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        54*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-44
	.byte		N23   , Ds5 
	.byte	W05
	.byte		VOL   , 75*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        92*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        96*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
@ 056   ----------------------------------------
	.byte	W06
	.byte		        16*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+41
	.byte		N32   , As4 , v127, gtp3
	.byte	W12
	.byte		VOL   , 28*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        44*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        54*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        75*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        92*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-43
	.byte		N32   , Bn4 , v127, gtp3
	.byte	W05
	.byte		VOL   , 96*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		        25*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        47*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        83*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        98*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        16*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+44
	.byte		N32   , Fs4 , v127, gtp3
	.byte	W12
	.byte		VOL   , 62*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
@ 057   ----------------------------------------
	.byte	W05
	.byte		        82*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        99*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-44
	.byte	W05
	.byte		VOL   , 126*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		N32   , Gs4 , v127, gtp3
	.byte	W05
	.byte		VOL   , 96*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		        25*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        47*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		        104*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        120*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        16*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+43
	.byte		N23   , Ds4 
	.byte	W12
	.byte		VOL   , 64*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        84*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        104*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-48
	.byte		N17   , Fs4 
	.byte	W05
	.byte		VOL   , 123*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        96*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
@ 058   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 114*mus_hlw_vs_evil_mvl/mxv
	.byte		N05   , Cn2 , v112
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W24
@ 059   ----------------------------------------
	.byte		PAN   , c_v+40
	.byte		N05   
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Cn6 
	.byte	W24
@ 060   ----------------------------------------
	.byte		PAN   , c_v-51
	.byte		VOL   , 112*mus_hlw_vs_evil_mvl/mxv
	.byte		N05   , Cn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W24
@ 061   ----------------------------------------
	.byte		PAN   , c_v+45
	.byte		N05   
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        Cn6 
	.byte	W24
@ 062   ----------------------------------------
	.byte		VOL   , 120*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-23
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N68   , Dn4 , v112, gtp3
	.byte	W24
@ 063   ----------------------------------------
	.byte	W48
	.byte		N23   , As3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 064   ----------------------------------------
	.byte		BEND  , c_v+0
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N32   , Dn2 , v112, gtp3
	.byte	W36
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 065   ----------------------------------------
	.byte		N02   , An1 , v127
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   , An1 , v112
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N23   , Dn3 
	.byte	W24
	.byte		N11   , Dn2 
	.byte	W12
	.byte		N23   , Dn3 
	.byte	W24
@ 066   ----------------------------------------
	.byte		VOL   , 122*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N80   , Ds4 , v112, gtp3
	.byte	W24
@ 067   ----------------------------------------
	.byte	W60
	.byte		N32   , Gn4 , v112, gtp3
	.byte	W36
@ 068   ----------------------------------------
	.byte		VOICE , 91
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N11   , Ds2 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N23   , Ds1 
	.byte	W24
	.byte		N11   , Ds2 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N23   , Ds2 
	.byte	W12
@ 069   ----------------------------------------
	.byte	W12
	.byte		N11   , Ds1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N08   , Ds1 
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		BEND  , c_v+1
	.byte		N23   , Ds2 , v127
	.byte	W15
	.byte		BEND  , c_v-10
	.byte	W02
	.byte		        c_v-17
	.byte	W03
	.byte		        c_v-33
	.byte	W04
@ 070   ----------------------------------------
	.byte		VOICE , 60
	.byte		VOL   , 102*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N32   , Cn3 , v112, gtp3
	.byte	W36
	.byte		        Cs3 , v112, gtp3
	.byte	W36
	.byte		N23   , Ds3 
	.byte	W24
@ 071   ----------------------------------------
	.byte		N32   , En3 , v112, gtp3
	.byte	W36
	.byte		        Fs3 , v112, gtp3
	.byte	W36
	.byte		N23   , Gn3 
	.byte	W24
@ 072   ----------------------------------------
	.byte		VOICE , 60
	.byte		N32   , Cn4 , v112, gtp3
	.byte	W36
	.byte		        Cs4 , v112, gtp3
	.byte	W36
	.byte		N23   , Ds4 
	.byte	W24
@ 073   ----------------------------------------
	.byte		N32   , En4 , v112, gtp3
	.byte	W36
	.byte		        Fs4 , v112, gtp3
	.byte	W36
	.byte		N23   , Gn4 
	.byte	W24
@ 074   ----------------------------------------
	.byte		VOICE , 60
	.byte		N05   , Cn5 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N23   , Cs5 
	.byte	W24
	.byte		N05   , As4 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
@ 075   ----------------------------------------
mus_hlw_vs_evil_3_075:
	.byte		N23   , Cn5 , v112
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		N05   , Cn5 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N23   , Cs5 
	.byte	W12
	.byte	PEND
@ 076   ----------------------------------------
mus_hlw_vs_evil_3_076:
	.byte	W12
	.byte		N05   , Bn4 , v112
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N11   , Cn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte	PEND
@ 077   ----------------------------------------
	.byte		N05   , Cn5 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N23   , Cs5 
	.byte	W24
	.byte		N05   , As4 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_3_075
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_3_076
@ 080   ----------------------------------------
	.byte		VOL   , 90*mus_hlw_vs_evil_mvl/mxv
	.byte		N92   , Cn3 , v112, gtp3
	.byte	W96
@ 081   ----------------------------------------
	.byte		        Cs3 , v112, gtp3
	.byte	W96
@ 082   ----------------------------------------
	.byte		        As2 , v112, gtp3
	.byte	W96
@ 083   ----------------------------------------
	.byte		        As3 , v112, gtp3
	.byte	W96
@ 084   ----------------------------------------
	.byte		        Cn4 , v112, gtp3
	.byte	W96
@ 085   ----------------------------------------
	.byte		        Cs4 , v112, gtp3
	.byte	W96
@ 086   ----------------------------------------
	.byte		        As3 , v112, gtp3
	.byte	W96
@ 087   ----------------------------------------
	.byte		        As4 , v112, gtp3
	.byte	W96
	.byte	GOTO
	 .word	mus_hlw_vs_evil_3_B1
mus_hlw_vs_evil_3_B2:
@ 088   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_hlw_vs_evil_4:
	.byte	KEYSH , mus_hlw_vs_evil_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 14
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+55
	.byte		BENDR , 12
	.byte		LFOS  , 18
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N15   , Bn3 , v112
	.byte	W16
	.byte		PAN   , c_v-49
	.byte		N07   
	.byte	W08
	.byte		BEND  , c_v-2
	.byte		N15   , Bn3 , v084
	.byte	W16
	.byte		PAN   , c_v+54
	.byte		N07   
	.byte	W08
	.byte		BEND  , c_v-4
	.byte		N15   , Bn3 , v064
	.byte	W16
	.byte		PAN   , c_v-49
	.byte		N07   , Bn3 , v060
	.byte	W08
	.byte		BEND  , c_v-2
	.byte		N15   , Bn3 , v036
	.byte	W16
	.byte		PAN   , c_v+54
	.byte		N07   
	.byte	W08
@ 001   ----------------------------------------
	.byte		BEND  , c_v-2
	.byte	W16
	.byte		PAN   , c_v-49
	.byte	W24
	.byte		        c_v+54
	.byte	W24
	.byte		        c_v-49
	.byte	W24
	.byte		        c_v+54
	.byte	W08
@ 002   ----------------------------------------
	.byte		VOICE , 38
	.byte		PAN   , c_v+0
	.byte		N23   , Gn1 , v028
	.byte	W24
	.byte		N11   , Fn1 , v032
	.byte	W12
	.byte		        Dn1 , v040
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fn1 , v032
	.byte	W12
	.byte		        Gs1 , v040
	.byte	W12
@ 003   ----------------------------------------
	.byte		N23   , Fn1 
	.byte	W24
	.byte		N11   , Cs1 , v044
	.byte	W12
	.byte		        Gn1 , v048
	.byte	W12
	.byte		        Cn1 , v052
	.byte	W12
	.byte		        Cn2 , v060
	.byte	W12
	.byte		        Gs0 , v064
	.byte	W12
	.byte		        Gs1 , v076
	.byte	W12
@ 004   ----------------------------------------
	.byte		PAN   , c_v+22
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
mus_hlw_vs_evil_4_B1:
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 50*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+59
	.byte	W09
	.byte		N02   , An6 , v084
	.byte	W06
	.byte		        Cs6 
	.byte	W09
	.byte		PAN   , c_v+47
	.byte		N02   , Gn6 
	.byte	W09
	.byte		        Cn7 
	.byte	W12
	.byte		        An6 
	.byte	W03
	.byte		PAN   , c_v+41
	.byte	W09
	.byte		N02   , Gs5 
	.byte	W06
	.byte		        Fs6 
	.byte	W06
	.byte		        Ds6 
	.byte	W03
	.byte		PAN   , c_v+35
	.byte	W09
	.byte		N02   , En6 
	.byte	W09
	.byte		        As5 
	.byte	W06
@ 013   ----------------------------------------
	.byte		PAN   , c_v+24
	.byte		N02   , Cn6 
	.byte	W09
	.byte		        En6 
	.byte	W03
	.byte		        Cs7 
	.byte	W09
	.byte		        Bn6 
	.byte	W03
	.byte		PAN   , c_v+18
	.byte	W03
	.byte		N02   , Fn6 
	.byte	W03
	.byte		        Gn6 
	.byte	W06
	.byte		        Bn5 
	.byte	W09
	.byte		        Fn6 
	.byte	W03
	.byte		PAN   , c_v+9
	.byte	W06
	.byte		N02   , As6 
	.byte	W12
	.byte		        Gn6 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N02   , Fs5 
	.byte	W06
	.byte		        En6 
	.byte	W06
	.byte		        Cs6 
	.byte	W06
@ 014   ----------------------------------------
	.byte		PAN   , c_v-8
	.byte	W06
	.byte		N02   , Dn6 
	.byte	W09
	.byte		        Gs5 
	.byte	W06
	.byte		        As5 
	.byte	W03
	.byte		PAN   , c_v-18
	.byte	W06
	.byte		N02   , Dn6 
	.byte	W03
	.byte		        Bn6 
	.byte	W09
	.byte		        An6 
	.byte	W06
	.byte		PAN   , c_v-24
	.byte		N02   , Ds6 
	.byte	W09
	.byte		        An6 
	.byte	W06
	.byte		        Cs6 
	.byte	W09
	.byte		PAN   , c_v-32
	.byte		N02   , Gn6 
	.byte	W09
	.byte		        Cn7 
	.byte	W12
	.byte		        An6 
	.byte	W03
@ 015   ----------------------------------------
	.byte		PAN   , c_v-37
	.byte	W09
	.byte		N02   , Gs5 
	.byte	W03
	.byte		VOL   , 38*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		N02   , Fs6 
	.byte	W06
	.byte		        Ds6 
	.byte	W02
	.byte		VOL   , 31*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-45
	.byte	W09
	.byte		N02   , En6 
	.byte	W02
	.byte		VOL   , 29*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		N02   , As5 
	.byte	W05
	.byte		VOL   , 25*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		N02   , Cn6 
	.byte	W09
	.byte		        En6 
	.byte	W02
	.byte		VOL   , 20*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		N02   , Cs7 
	.byte	W09
	.byte		        Bn6 
	.byte	W02
	.byte		VOL   , 13*mus_hlw_vs_evil_mvl/mxv
	.byte	W04
	.byte		N02   , Fn6 
	.byte	W03
	.byte		        Gn6 
	.byte	W05
	.byte		VOL   , 12*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		N02   , Bn5 
	.byte	W09
	.byte		        Fn6 
	.byte	W03
@ 016   ----------------------------------------
	.byte		VOICE , 33
	.byte		PAN   , c_v+0
	.byte		VOL   , 93*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W72
	.byte		N05   , Cn2 , v076
	.byte	W06
	.byte		        Cn2 , v088
	.byte	W06
	.byte		        Cn2 , v100
	.byte	W06
	.byte		        Cn2 , v108
	.byte	W06
@ 017   ----------------------------------------
	.byte		VOICE , 47
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		TIE   , Ds1 , v112
	.byte	W96
@ 018   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte		EOT   
	.byte	W44
	.byte	W01
	.byte		VOICE , 86
	.byte	W24
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte		VOL   , 103*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-43
	.byte		N92   , Cn3 , v127, gtp3
	.byte	W28
	.byte	W01
	.byte		PAN   , c_v-30
	.byte	W06
	.byte		        c_v-14
	.byte	W06
	.byte		        c_v+2
	.byte	W06
	.byte		        c_v+16
	.byte	W06
	.byte		        c_v+29
	.byte	W42
	.byte	W01
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte		VOICE , 72
	.byte		VOL   , 116*mus_hlw_vs_evil_mvl/mxv
	.byte		MOD   , 0
	.byte		PAN   , c_v+13
	.byte		BEND  , c_v+0
	.byte		N32   , Cn2 , v080, gtp3
	.byte	W12
	.byte		MOD   , 15
	.byte	W24
	.byte		        0
	.byte		N32   , Gn2 , v080, gtp3
	.byte	W12
	.byte		MOD   , 15
	.byte	W24
	.byte		        0
	.byte		N32   , Fn2 , v080, gtp3
	.byte	W12
	.byte		MOD   , 15
	.byte	W12
@ 025   ----------------------------------------
	.byte	W12
	.byte		        0
	.byte		N32   , Gs2 , v080, gtp3
	.byte	W12
	.byte		MOD   , 15
	.byte	W24
	.byte		        0
	.byte		N23   , Gn2 
	.byte	W12
	.byte		MOD   , 15
	.byte	W12
	.byte		        0
	.byte		N23   , Ds2 
	.byte	W12
	.byte		MOD   , 15
	.byte	W12
@ 026   ----------------------------------------
	.byte		        0
	.byte		N32   , Fn2 , v080, gtp3
	.byte	W36
	.byte		TIE   , Fs2 
	.byte	W36
	.byte		MOD   , 15
	.byte	W15
	.byte		BEND  , c_v-2
	.byte	W09
@ 027   ----------------------------------------
	.byte		VOL   , 112*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-4
	.byte	W12
	.byte		VOL   , 106*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W12
	.byte		VOL   , 102*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-8
	.byte	W12
	.byte		VOL   , 98*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-10
	.byte	W12
	.byte		VOL   , 91*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-14
	.byte	W12
	.byte		VOL   , 84*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-17
	.byte	W11
	.byte		EOT   
	.byte	W01
	.byte		MOD   , 0
	.byte		VOL   , 80*mus_hlw_vs_evil_mvl/mxv
	.byte	W24
@ 028   ----------------------------------------
	.byte		VOICE , 60
	.byte		VOL   , 112*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+51
	.byte		BEND  , c_v+0
	.byte	W72
	.byte		N11   , Cn4 , v112
	.byte	W12
	.byte		N05   , Bn3 
	.byte	W12
@ 029   ----------------------------------------
	.byte	W60
	.byte		N23   , Cn4 
	.byte	W24
	.byte		N05   , Bn3 
	.byte	W12
@ 030   ----------------------------------------
	.byte	W72
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N05   , Cn4 
	.byte	W12
@ 031   ----------------------------------------
	.byte	W60
	.byte		N23   , Cs4 
	.byte	W24
	.byte		N05   , Cn4 , v120
	.byte	W06
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+26
	.byte		N02   , Gs2 
	.byte	W02
	.byte		VOICE , 17
	.byte	W01
	.byte		N02   , As2 
	.byte	W03
@ 032   ----------------------------------------
	.byte		N32   , Cn3 , v120, gtp3
	.byte	W09
	.byte		MOD   , 15
	.byte	W24
	.byte		        0
	.byte	W03
	.byte		N32   , Gn3 , v120, gtp3
	.byte	W09
	.byte		MOD   , 15
	.byte	W24
	.byte		        0
	.byte	W03
	.byte		N32   , Fn3 , v120, gtp3
	.byte	W09
	.byte		MOD   , 15
	.byte	W15
@ 033   ----------------------------------------
	.byte	W09
	.byte		        0
	.byte	W03
	.byte		N32   , Gs3 , v120, gtp3
	.byte	W09
	.byte		MOD   , 15
	.byte	W24
	.byte		        0
	.byte	W03
	.byte		N23   , Gn3 
	.byte	W09
	.byte		MOD   , 15
	.byte	W12
	.byte		        0
	.byte	W03
	.byte		N23   , Ds3 
	.byte	W09
	.byte		MOD   , 15
	.byte	W12
	.byte		        0
	.byte	W03
@ 034   ----------------------------------------
	.byte		BEND  , c_v+0
	.byte		N32   , Fn3 , v120, gtp3
	.byte	W36
	.byte		TIE   , Fs3 
	.byte	W32
	.byte	W01
	.byte		MOD   , 15
	.byte	W24
	.byte	W03
@ 035   ----------------------------------------
	.byte		BEND  , c_v-2
	.byte	W12
	.byte		VOL   , 122*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-3
	.byte	W12
	.byte		VOL   , 112*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-5
	.byte	W12
	.byte		VOL   , 104*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W12
	.byte		VOL   , 93*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-9
	.byte	W12
	.byte		VOL   , 84*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-11
	.byte	W09
	.byte		MOD   , 0
	.byte	W02
	.byte		EOT   
	.byte	W01
	.byte		VOL   , 73*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		VOICE , 89
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N05   , As1 , v127
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 036   ----------------------------------------
	.byte		PAN   , c_v+20
	.byte		N32   , Cn2 , v127, gtp3
	.byte	W36
	.byte		        Gn2 , v127, gtp3
	.byte	W36
	.byte		N11   , Fn2 
	.byte	W12
	.byte		N02   , Gn2 
	.byte	W03
	.byte		N56   , Gs2 
	.byte	W09
@ 037   ----------------------------------------
	.byte	W48
	.byte		N23   , Gn2 
	.byte	W24
	.byte		        Ds2 
	.byte	W24
@ 038   ----------------------------------------
	.byte		N32   , Fn2 , v127, gtp3
	.byte	W36
	.byte		N68   , Fs2 , v127, gtp3
	.byte	W60
@ 039   ----------------------------------------
	.byte	W12
	.byte		N23   , Gs2 
	.byte	W24
	.byte		N11   , An2 
	.byte	W60
@ 040   ----------------------------------------
	.byte		VOICE , 57
	.byte		VOL   , 89*mus_hlw_vs_evil_mvl/mxv
	.byte		N11   , Cn4 , v112
	.byte	W12
	.byte		N56   , Bn3 , v112, gtp3
	.byte	W60
	.byte		N02   , Gn3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
@ 041   ----------------------------------------
	.byte		N32   , Gn4 , v112, gtp3
	.byte	W48
	.byte		N44   , Gn3 , v112, gtp3
	.byte	W48
@ 042   ----------------------------------------
	.byte		VOICE , 48
	.byte		N44   , Dn4 , v112, gtp3
	.byte	W48
	.byte		N32   , Ds4 , v112, gtp3
	.byte	W36
	.byte		N02   , Dn4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
@ 043   ----------------------------------------
	.byte		N32   , As4 , v112, gtp3
	.byte	W36
	.byte		N02   , Gs4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N44   , As3 , v112, gtp3
	.byte	W48
@ 044   ----------------------------------------
	.byte		PAN   , c_v-26
	.byte		VOL   , 96*mus_hlw_vs_evil_mvl/mxv
	.byte		N23   , Ds2 
	.byte	W24
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gs2 , v076
	.byte	W12
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte		VOICE , 34
	.byte		N05   , Cn1 , v020
	.byte	W06
	.byte		        Ds1 , v032
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 , v036
	.byte	W06
	.byte		        Cn1 , v040
	.byte	W06
	.byte		        En1 , v048
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , Cn1 , v052
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 , v056
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn1 , v060
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
@ 047   ----------------------------------------
	.byte		BEND  , c_v+0
	.byte		N05   , Cn1 , v064
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 , v068
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N11   , Cs1 , v072
	.byte	W12
	.byte		N05   , Cn1 
	.byte	W06
	.byte		        Ds1 , v076
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 , v080
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , Fn1 
	.byte	W12
@ 048   ----------------------------------------
	.byte		BEND  , c_v+0
	.byte		N05   , Cn1 , v084
	.byte	W06
	.byte		        Ds1 , v088
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , Cn1 , v096
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 , v100
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn1 , v104
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
@ 049   ----------------------------------------
	.byte		BEND  , c_v+1
	.byte		N05   , Cn1 , v108
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 , v112
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 , v116
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		BEND  , c_v+2
	.byte		N05   , Cn1 , v120
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 , v124
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , Cn2 , v127
	.byte	W12
@ 050   ----------------------------------------
	.byte		VOICE , 38
	.byte		PAN   , c_v-48
	.byte		BEND  , c_v+0
	.byte		N05   , Cn2 , v024
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v+47
	.byte		N05   , En2 , v028
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N05   , Cn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		PAN   , c_v+47
	.byte		N11   , Cs2 , v032
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		N05   , Cn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v+47
	.byte		N05   , En2 , v036
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N05   , Cn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		PAN   , c_v+47
	.byte		N11   , En2 , v040
	.byte	W12
@ 051   ----------------------------------------
	.byte		PAN   , c_v-48
	.byte		N05   , Cn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v+47
	.byte		N05   , En2 , v044
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N05   , Cn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		PAN   , c_v+47
	.byte		N11   , Cs2 , v048
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		N05   , Cn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v+47
	.byte		N05   , En2 , v052
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N05   , Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		PAN   , c_v+47
	.byte		N11   , Fn2 , v056
	.byte	W12
@ 052   ----------------------------------------
	.byte		PAN   , c_v-48
	.byte		N05   , Cn2 , v064
	.byte	W06
	.byte		        Ds2 , v068
	.byte	W06
	.byte		PAN   , c_v+47
	.byte		N05   , En2 
	.byte	W06
	.byte		        Ds2 , v072
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N05   , Cn2 
	.byte	W06
	.byte		        En2 , v076
	.byte	W06
	.byte		PAN   , c_v+47
	.byte		N11   , Cs2 
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		N05   , Cn2 , v080
	.byte	W06
	.byte		        Ds2 , v084
	.byte	W06
	.byte		PAN   , c_v+47
	.byte		N05   , En2 
	.byte	W06
	.byte		        Ds2 , v088
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N05   , Cn2 
	.byte	W06
	.byte		        Fn2 , v092
	.byte	W06
	.byte		PAN   , c_v+47
	.byte		N11   , En2 
	.byte	W12
@ 053   ----------------------------------------
	.byte		PAN   , c_v-48
	.byte		N05   , Cn2 , v096
	.byte	W06
	.byte		        Ds2 , v100
	.byte	W06
	.byte		PAN   , c_v+47
	.byte		N05   , En2 
	.byte	W06
	.byte		        Ds2 , v104
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N05   , Cn2 
	.byte	W06
	.byte		        En2 , v108
	.byte	W06
	.byte		PAN   , c_v+47
	.byte		N11   , Cs2 
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		N05   , Cn2 , v112
	.byte	W06
	.byte		        Ds2 , v116
	.byte	W06
	.byte		PAN   , c_v+47
	.byte		N05   , En2 
	.byte	W06
	.byte		        Ds2 , v120
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N05   , Cn2 
	.byte	W06
	.byte		        Gn2 , v124
	.byte	W06
	.byte		PAN   , c_v+47
	.byte		N05   , Cn3 
	.byte	W12
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte		VOICE , 93
	.byte		VOL   , 108*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		N05   , Cn2 , v112
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W03
	.byte		PAN   , c_v+25
	.byte	W03
	.byte		VOICE , 11
	.byte		N05   , Ds6 
	.byte	W06
	.byte		PAN   , c_v+11
	.byte		N05   , Bn5 
	.byte	W06
@ 059   ----------------------------------------
	.byte		PAN   , c_v-17
	.byte		N05   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		PAN   , c_v-44
	.byte		N05   , Bn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N40   , An4 , v112, gtp1
	.byte	W36
@ 060   ----------------------------------------
	.byte		VOL   , 91*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		VOICE , 48
	.byte		PAN   , c_v+48
	.byte		N05   , Cn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		VOICE , 21
	.byte		VOL   , 108*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+18
	.byte		N05   , Ds6 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
@ 061   ----------------------------------------
	.byte		PAN   , c_v-7
	.byte	W06
	.byte		N05   , Bn5 
	.byte	W06
	.byte		PAN   , c_v-21
	.byte	W06
	.byte		N05   , Fn5 
	.byte	W06
	.byte		PAN   , c_v-38
	.byte		N05   , An5 
	.byte	W12
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gn4 
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		N05   , Dn5 
	.byte	W12
	.byte		        Gs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W06
@ 062   ----------------------------------------
	.byte		VOICE , 29
	.byte		PAN   , c_v-41
	.byte		VOL   , 114*mus_hlw_vs_evil_mvl/mxv
	.byte		N05   , An1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N68   , An3 , v112, gtp3
	.byte	W24
@ 063   ----------------------------------------
	.byte		VOL   , 114*mus_hlw_vs_evil_mvl/mxv
	.byte	W48
	.byte		N23   , Fn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 064   ----------------------------------------
	.byte		VOICE , 29
	.byte		PAN   , c_v+48
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N32   , An1 , v112, gtp3
	.byte	W36
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 065   ----------------------------------------
	.byte		N02   , En1 , v127
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   , En1 , v112
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N23   , Dn3 
	.byte	W24
	.byte		N11   , An1 
	.byte	W12
	.byte		N23   , Dn3 
	.byte	W24
@ 066   ----------------------------------------
	.byte		PAN   , c_v-29
	.byte		VOL   , 118*mus_hlw_vs_evil_mvl/mxv
	.byte		N05   , As1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N80   , As3 , v112, gtp3
	.byte	W24
@ 067   ----------------------------------------
	.byte	W48
	.byte		BEND  , c_v+1
	.byte	W12
	.byte		N32   , Gn4 , v112, gtp3
	.byte	W36
@ 068   ----------------------------------------
	.byte		VOICE , 29
	.byte		PAN   , c_v+50
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N11   , Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N02   , Ds2 , v120
	.byte	W06
	.byte		        Ds2 , v124
	.byte	W06
	.byte		N11   , Ds2 , v127
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Ds2 , v120
	.byte	W12
	.byte		N23   , Ds3 , v108
	.byte	W12
@ 069   ----------------------------------------
	.byte	W12
	.byte		N11   , Ds2 
	.byte	W12
	.byte		        Ds3 , v120
	.byte	W12
	.byte		N08   , Ds2 , v127
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N23   , Ds3 
	.byte	W15
	.byte		BEND  , c_v-13
	.byte	W02
	.byte		        c_v-17
	.byte	W03
	.byte		        c_v-33
	.byte	W03
	.byte		        c_v-36
	.byte	W01
@ 070   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 90*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N32   , Gn2 , v112, gtp3
	.byte	W36
	.byte		        Gs2 , v112, gtp3
	.byte	W36
	.byte		N23   , As2 
	.byte	W24
@ 071   ----------------------------------------
	.byte		N32   , Bn2 , v112, gtp3
	.byte	W36
	.byte		        Cs3 , v112, gtp3
	.byte	W36
	.byte		N23   , Dn3 
	.byte	W24
@ 072   ----------------------------------------
	.byte		VOICE , 72
	.byte		VOL   , 99*mus_hlw_vs_evil_mvl/mxv
	.byte		N32   , Gn3 , v112, gtp3
	.byte	W36
	.byte		        Gs3 , v112, gtp3
	.byte	W36
	.byte		N23   , As3 
	.byte	W24
@ 073   ----------------------------------------
	.byte		N32   , Bn3 , v112, gtp3
	.byte	W36
	.byte		        Cs4 , v112, gtp3
	.byte	W36
	.byte		N23   , Dn4 
	.byte	W24
@ 074   ----------------------------------------
	.byte		VOICE , 94
	.byte		N05   , Gn4 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N23   , Gs4 
	.byte	W24
	.byte		N05   , Fn4 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
@ 075   ----------------------------------------
mus_hlw_vs_evil_4_075:
	.byte		N23   , Gn4 , v112
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N05   , Gn3 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N23   , Gs3 
	.byte	W12
	.byte	PEND
@ 076   ----------------------------------------
mus_hlw_vs_evil_4_076:
	.byte	W12
	.byte		N05   , Fs3 , v112
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	PEND
@ 077   ----------------------------------------
	.byte		N05   , Gn4 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N23   , Gs4 
	.byte	W24
	.byte		N05   , Fn4 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_4_075
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_4_076
@ 080   ----------------------------------------
	.byte		VOL   , 90*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+20
	.byte		N92   , Gn2 , v112, gtp3
	.byte	W96
@ 081   ----------------------------------------
	.byte		        Gs2 , v112, gtp3
	.byte	W96
@ 082   ----------------------------------------
	.byte		        Fn2 , v112, gtp3
	.byte	W96
@ 083   ----------------------------------------
	.byte		        Fn3 , v112, gtp3
	.byte	W96
@ 084   ----------------------------------------
	.byte		        Gn3 , v112, gtp3
	.byte	W96
@ 085   ----------------------------------------
	.byte		        Gs3 , v112, gtp3
	.byte	W96
@ 086   ----------------------------------------
	.byte		        Fn3 , v112, gtp3
	.byte	W96
@ 087   ----------------------------------------
	.byte		        Fn4 , v112, gtp3
	.byte	W96
	.byte	GOTO
	 .word	mus_hlw_vs_evil_4_B1
mus_hlw_vs_evil_4_B2:
@ 088   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_hlw_vs_evil_5:
	.byte	KEYSH , mus_hlw_vs_evil_key+0
@ 000   ----------------------------------------
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		VOICE , 82
	.byte		VOL   , 76*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W30
	.byte		N12   , Fs5 , v096
	.byte	W12
	.byte		        Fs6 
	.byte	W06
	.byte		PAN   , c_v+34
	.byte	W06
	.byte	W12
	.byte		N12   , Gs5 , v112
	.byte	W12
	.byte		        Gs6 
	.byte	W12
	.byte	W06
@ 005   ----------------------------------------
	.byte		PAN   , c_v-44
	.byte	W06
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Ds6 
	.byte	W12
	.byte	W12
	.byte		        Fs5 
	.byte	W06
	.byte		PAN   , c_v-44
	.byte	W06
	.byte		N12   , Fs6 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Cs6 
	.byte	W12
	.byte		        Ds5 
	.byte	W06
@ 006   ----------------------------------------
	.byte		PAN   , c_v-44
	.byte	W06
	.byte		N12   , Ds6 
	.byte	W12
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		        Fs6 
	.byte	W06
	.byte		PAN   , c_v+34
	.byte	W06
	.byte	W12
	.byte		N12   , Gs5 
	.byte	W12
	.byte		        Gs6 
	.byte	W12
	.byte	W06
@ 007   ----------------------------------------
	.byte		PAN   , c_v-48
	.byte	W06
	.byte		N12   , Ds5 , v096
	.byte	W12
	.byte		        Ds6 
	.byte	W12
	.byte	W12
	.byte		        Fs5 , v112
	.byte	W06
	.byte		VOICE , 82
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-48
	.byte		N23   , Cs4 , v127
	.byte	W06
	.byte	W18
	.byte		        Ds4 
	.byte	W24
mus_hlw_vs_evil_5_B1:
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte		VOICE , 72
	.byte		VOL   , 94*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+56
	.byte		BEND  , c_v+0
	.byte		N23   , Cn6 , v060
	.byte	W24
	.byte		TIE   , Gn6 
	.byte	W72
@ 013   ----------------------------------------
	.byte	W60
	.byte	W02
	.byte		EOT   
	.byte	W10
	.byte		N08   
	.byte	W24
@ 014   ----------------------------------------
	.byte		N11   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N08   
	.byte	W09
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W06
@ 015   ----------------------------------------
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		N02   
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N02   
	.byte	W03
	.byte		BEND  , c_v+2
	.byte		N02   
	.byte	W02
	.byte		BEND  , c_v+5
	.byte	W01
	.byte		N02   , Gn6 , v056
	.byte	W02
	.byte		BEND  , c_v+7
	.byte	W01
	.byte		N02   , Gn6 , v060
	.byte	W02
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		N02   , Gn6 , v056
	.byte	W03
	.byte		PAN   , c_v+39
	.byte		BEND  , c_v+13
	.byte		N02   
	.byte	W02
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		N02   
	.byte	W02
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		N02   
	.byte	W02
	.byte		BEND  , c_v+23
	.byte	W01
	.byte		N02   
	.byte	W03
	.byte		PAN   , c_v+24
	.byte		BEND  , c_v+26
	.byte		N02   
	.byte	W02
	.byte		BEND  , c_v+29
	.byte	W01
	.byte		N02   , Gn6 , v064
	.byte	W02
	.byte		BEND  , c_v+33
	.byte	W01
	.byte		N02   
	.byte	W02
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		N02   
	.byte	W03
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+38
	.byte		N02   
	.byte	W02
	.byte		BEND  , c_v+41
	.byte	W01
	.byte		N02   
	.byte	W02
	.byte		BEND  , c_v+45
	.byte	W01
	.byte		N02   
	.byte	W02
	.byte		BEND  , c_v+50
	.byte	W01
	.byte		N02   
	.byte	W03
	.byte		PAN   , c_v-16
	.byte		BEND  , c_v+52
	.byte		N02   
	.byte	W02
	.byte		BEND  , c_v+56
	.byte	W01
	.byte		N02   
	.byte	W02
	.byte		BEND  , c_v+60
	.byte	W01
	.byte		PAN   , c_v-36
	.byte		N02   , Gn6 , v060
	.byte	W02
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		N02   
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		N02   , Gn7 
	.byte	W03
	.byte		BEND  , c_v+6
	.byte		N02   
	.byte	W03
	.byte		PAN   , c_v-54
	.byte		BEND  , c_v+14
	.byte		N02   , Gn7 , v072
	.byte	W03
	.byte		BEND  , c_v+31
	.byte		N02   
	.byte	W03
	.byte		BEND  , c_v+35
	.byte		N02   , Gn7 , v080
	.byte	W03
	.byte		BEND  , c_v+47
	.byte		N02   , Gn7 , v064
	.byte	W03
	.byte		BEND  , c_v+56
	.byte		N02   , Gn7 , v084
	.byte	W03
	.byte		BEND  , c_v+62
	.byte		N02   , Gn7 , v064
	.byte	W03
@ 016   ----------------------------------------
	.byte		VOICE , 91
	.byte		VOL   , 86*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+50
	.byte		BEND  , c_v+0
	.byte		N02   , Cn3 , v112
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		PAN   , c_v-42
	.byte		N02   , Ds3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v+45
	.byte		N02   , Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v-53
	.byte		N02   , Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 017   ----------------------------------------
	.byte		PAN   , c_v+47
	.byte		N02   , Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		PAN   , c_v-49
	.byte		N02   , Ds3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v+45
	.byte		N02   , Dn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v-42
	.byte		N02   , Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 018   ----------------------------------------
	.byte		PAN   , c_v+47
	.byte		N02   , Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		PAN   , c_v-53
	.byte		N02   , Ds3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v+45
	.byte		N02   , Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v-49
	.byte		N02   , Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 019   ----------------------------------------
	.byte		PAN   , c_v+47
	.byte		N02   , Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		PAN   , c_v-53
	.byte		VOL   , 64*mus_hlw_vs_evil_mvl/mxv
	.byte		N02   , Ds3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fn2 
	.byte	W03
	.byte		VOL   , 53*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		N02   , Cn3 
	.byte	W06
	.byte		PAN   , c_v+45
	.byte		N02   , Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		VOL   , 44*mus_hlw_vs_evil_mvl/mxv
	.byte		N02   , Gn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N02   , Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W03
	.byte		VOL   , 27*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		N02   , Gn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 020   ----------------------------------------
	.byte		VOICE , 91
	.byte		VOL   , 108*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N05   , Cn4 , v108
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W12
	.byte		        Ds4 , v068
	.byte	W12
	.byte		        Gn3 , v108
	.byte	W12
	.byte		PAN   , c_v+50
	.byte		N05   , Gs3 
	.byte	W12
	.byte		BEND  , c_v-8
	.byte		N11   , As3 , v104
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		N05   , Gs3 , v108
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 021   ----------------------------------------
	.byte		PAN   , c_v-48
	.byte		BEND  , c_v+0
	.byte		N05   , Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		PAN   , c_v+53
	.byte		N05   , Gs3 
	.byte	W12
	.byte		BEND  , c_v-11
	.byte		N11   , As3 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		N05   , Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 022   ----------------------------------------
	.byte		PAN   , c_v-48
	.byte		BEND  , c_v+0
	.byte		N05   , Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W12
	.byte		        Ds4 , v068
	.byte	W12
	.byte		        Gn3 , v108
	.byte	W12
	.byte		PAN   , c_v+53
	.byte		N05   , Gs3 
	.byte	W12
	.byte		BEND  , c_v-10
	.byte		N11   , As3 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		N05   , Gs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 023   ----------------------------------------
	.byte		PAN   , c_v-48
	.byte		BEND  , c_v+1
	.byte		N05   , Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		PAN   , c_v+53
	.byte		N05   , Gs3 
	.byte	W12
	.byte		BEND  , c_v-8
	.byte		N11   , As3 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		N05   , Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 024   ----------------------------------------
	.byte		        Cn4 , v112
	.byte	W12
	.byte		        Cn4 , v088
	.byte	W12
	.byte		        Cn4 , v068
	.byte	W12
	.byte		        Cn4 , v056
	.byte	W12
	.byte		        Cn4 , v036
	.byte	W12
	.byte		        Cn4 , v016
	.byte	W36
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W72
	.byte		VOICE , 81
	.byte		PAN   , c_v-44
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		N23   , Bn2 , v112
	.byte	W24
@ 028   ----------------------------------------
	.byte		PAN   , c_v-28
	.byte		N68   , Cn3 , v112, gtp3
	.byte	W36
	.byte		VOL   , 117*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        108*mus_hlw_vs_evil_mvl/mxv
	.byte	W09
	.byte		        96*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W09
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte		N23   , Gn2 
	.byte	W24
@ 029   ----------------------------------------
	.byte		N68   , Cn2 , v127, gtp3
	.byte	W32
	.byte	W01
	.byte		VOL   , 114*mus_hlw_vs_evil_mvl/mxv
	.byte	W15
	.byte		        99*mus_hlw_vs_evil_mvl/mxv
	.byte	W09
	.byte		        88*mus_hlw_vs_evil_mvl/mxv
	.byte	W09
	.byte		        83*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		N23   , Gn2 , v112
	.byte	W24
@ 030   ----------------------------------------
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		N68   , Cs3 , v112, gtp3
	.byte	W72
	.byte		N23   , Gs2 
	.byte	W24
@ 031   ----------------------------------------
	.byte		N92   , Cs2 , v127, gtp3
	.byte	W36
	.byte		VOL   , 117*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        108*mus_hlw_vs_evil_mvl/mxv
	.byte	W09
	.byte		        96*mus_hlw_vs_evil_mvl/mxv
	.byte	W09
	.byte		        78*mus_hlw_vs_evil_mvl/mxv
	.byte	W15
	.byte		        64*mus_hlw_vs_evil_mvl/mxv
	.byte	W15
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W48
	.byte		        108*mus_hlw_vs_evil_mvl/mxv
	.byte	W24
	.byte		VOICE , 29
	.byte		PAN   , c_v+36
	.byte		N02   , Dn4 
	.byte	W06
	.byte		        Ds4 , v112
	.byte	W06
	.byte		        Ds4 , v127
	.byte	W06
	.byte		        Ds4 , v112
	.byte	W06
@ 035   ----------------------------------------
	.byte		VOICE , 29
	.byte		BEND  , c_v+0
	.byte		N11   , Ds5 , v088
	.byte	W12
	.byte		PAN   , c_v-51
	.byte		N11   , As1 , v112
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N11   , Bn1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N02   , Fn2 
	.byte	W03
	.byte		N20   , Fs2 
	.byte	W21
@ 036   ----------------------------------------
	.byte		VOICE , 29
	.byte		PAN   , c_v+52
	.byte		N32   , Gn2 
	.byte	W36
	.byte		        Cn3 , v112, gtp3
	.byte	W36
	.byte		N08   , As2 
	.byte	W12
	.byte		N56   , Cs3 , v112, gtp3
	.byte	W12
@ 037   ----------------------------------------
	.byte	W24
	.byte		BEND  , c_v-2
	.byte	W06
	.byte		        c_v-3
	.byte	W06
	.byte		        c_v-3
	.byte	W06
	.byte		        c_v-5
	.byte	W06
	.byte		        c_v+0
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Gs2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
@ 038   ----------------------------------------
	.byte		        As2 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N68   , Bn2 , v112, gtp3
	.byte	W60
@ 039   ----------------------------------------
	.byte	W12
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		VOICE , 29
	.byte		N23   , Cn5 
	.byte	W15
	.byte		BEND  , c_v-4
	.byte	W03
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-23
	.byte	W04
@ 040   ----------------------------------------
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		VOL   , 108*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N68   , Cn3 , v112, gtp3
	.byte	W72
	.byte		N23   , Gn2 , v088
	.byte	W24
@ 041   ----------------------------------------
	.byte		N92   , Cn3 , v112, gtp3
	.byte	W96
@ 042   ----------------------------------------
	.byte		        As2 , v112, gtp3
	.byte	W96
@ 043   ----------------------------------------
	.byte		        As2 , v112, gtp3
	.byte	W96
@ 044   ----------------------------------------
	.byte		VOL   , 109*mus_hlw_vs_evil_mvl/mxv
	.byte	W96
@ 045   ----------------------------------------
	.byte		VOICE , 32
	.byte		VOL   , 122*mus_hlw_vs_evil_mvl/mxv
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
	.byte		VOICE , 92
	.byte		VOL   , 28*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+42
	.byte	W05
	.byte		VOL   , 44*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		N32   , Fs5 , v084, gtp3
	.byte	W05
	.byte		VOL   , 54*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        75*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        92*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        96*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        16*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v-44
	.byte		N32   , Gs5 , v084, gtp3
	.byte	W06
	.byte		VOL   , 28*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        44*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        54*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        75*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        92*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        96*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+42
	.byte		N32   , Ds5 , v084, gtp3
	.byte	W18
@ 055   ----------------------------------------
	.byte		BEND  , c_v+1
	.byte	W05
	.byte		VOL   , 54*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        75*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        92*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-45
	.byte		N32   , Fs5 , v084, gtp3
	.byte	W05
	.byte		VOL   , 96*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		        25*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        47*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        83*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        98*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        16*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+43
	.byte		N23   , Cs5 
	.byte	W12
	.byte		VOL   , 28*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        44*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        54*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-44
	.byte		N23   , Ds5 
	.byte	W05
	.byte		VOL   , 75*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        92*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        96*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
@ 056   ----------------------------------------
	.byte		BEND  , c_v+3
	.byte	W06
	.byte		VOL   , 16*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+41
	.byte		N32   , As4 , v084, gtp3
	.byte	W12
	.byte		VOL   , 28*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        44*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        54*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        75*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        92*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-43
	.byte		N32   , Bn4 , v084, gtp3
	.byte	W05
	.byte		VOL   , 96*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		        25*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        47*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        83*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        98*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        16*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+44
	.byte		N32   , Fs4 , v108, gtp3
	.byte	W12
	.byte		VOL   , 28*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        44*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
@ 057   ----------------------------------------
	.byte		BEND  , c_v+5
	.byte	W05
	.byte		VOL   , 54*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        75*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-44
	.byte	W05
	.byte		VOL   , 92*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		N32   , Gs4 , v108, gtp3
	.byte	W05
	.byte		VOL   , 96*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		        25*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        47*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        83*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        98*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+8
	.byte	W06
	.byte		VOL   , 16*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+43
	.byte		N23   , Ds4 
	.byte	W12
	.byte		VOL   , 28*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        44*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        54*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-48
	.byte		N17   , Fs4 
	.byte	W05
	.byte		VOL   , 75*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        92*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        96*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
@ 058   ----------------------------------------
	.byte		BEND  , c_v+0
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W72
	.byte		VOICE , 81
	.byte	W12
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		N05   , An2 , v112
	.byte	W12
@ 062   ----------------------------------------
	.byte		PAN   , c_v+56
	.byte		N92   , Dn3 , v124, gtp3
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte		        Ds3 , v127, gtp3
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
	.byte		VOICE , 60
	.byte	W48
	.byte		N11   , Gs3 , v080
	.byte	W12
	.byte		        Bn3 , v084
	.byte	W12
	.byte		VOICE , 60
	.byte		N05   , Dn4 , v080
	.byte	W06
	.byte		        Fs4 , v084
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
@ 074   ----------------------------------------
	.byte		VOICE , 55
	.byte		PAN   , c_v-48
	.byte		N32   , Cn3 , v112, gtp3
	.byte	W12
	.byte		VOL   , 121*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        109*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        95*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        79*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte		N23   , Cs3 
	.byte	W12
	.byte		VOL   , 121*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        109*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte		N32   , As2 , v112, gtp3
	.byte	W12
	.byte		VOL   , 121*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        109*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        95*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        79*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
@ 075   ----------------------------------------
mus_hlw_vs_evil_5_075:
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		N23   , Cn3 , v112
	.byte	W12
	.byte		VOL   , 121*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        109*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte		N23   , Gn2 
	.byte	W12
	.byte		VOL   , 121*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        109*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte		N32   , Cn3 , v112, gtp3
	.byte	W12
	.byte		VOL   , 121*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        109*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        95*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        79*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte		N23   , Cs3 
	.byte	W12
	.byte	PEND
@ 076   ----------------------------------------
mus_hlw_vs_evil_5_076:
	.byte		VOL   , 121*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        109*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte		N32   , Bn2 , v112, gtp3
	.byte	W12
	.byte		VOL   , 121*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        109*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        95*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        79*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte	PEND
@ 077   ----------------------------------------
	.byte		VOICE , 55
	.byte		N32   , Cn3 , v112, gtp3
	.byte	W12
	.byte		VOL   , 121*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        109*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        95*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        79*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte		N23   , Cs3 
	.byte	W12
	.byte		VOL   , 121*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        109*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte		N32   , As2 , v112, gtp3
	.byte	W12
	.byte		VOL   , 121*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        109*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        95*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        79*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_5_075
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_5_076
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_hlw_vs_evil_5_B1
mus_hlw_vs_evil_5_B2:
@ 088   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_hlw_vs_evil_6:
	.byte	KEYSH , mus_hlw_vs_evil_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 89
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*mus_hlw_vs_evil_mvl/mxv
	.byte		BENDR , 12
	.byte		LFOS  , 18
	.byte		MOD   , 0
	.byte		BEND  , c_v-63
	.byte		TIE   , Cn1 , v127
	.byte	W28
	.byte	W01
	.byte		BEND  , c_v-62
	.byte	W07
	.byte		        c_v-59
	.byte	W05
	.byte		        c_v-58
	.byte	W07
	.byte		        c_v-56
	.byte	W05
	.byte		        c_v-55
	.byte	W07
	.byte		        c_v-51
	.byte	W05
	.byte		        c_v-48
	.byte	W07
	.byte		        c_v-44
	.byte	W05
	.byte		        c_v-41
	.byte	W07
	.byte		        c_v-39
	.byte	W05
	.byte		        c_v-32
	.byte	W07
@ 001   ----------------------------------------
	.byte		        c_v-28
	.byte	W05
	.byte		        c_v-21
	.byte	W07
	.byte		        c_v-12
	.byte	W05
	.byte		        c_v-8
	.byte	W07
	.byte		        c_v+0
	.byte	W05
	.byte		        c_v+7
	.byte	W07
	.byte		        c_v+14
	.byte	W05
	.byte		        c_v+25
	.byte	W07
	.byte		        c_v+32
	.byte	W05
	.byte		        c_v+40
	.byte	W07
	.byte		EOT   
	.byte		BEND  , c_v+49
	.byte	W05
	.byte		        c_v+56
	.byte	W07
	.byte		        c_v+62
	.byte	W05
	.byte		        c_v+63
	.byte	W19
@ 002   ----------------------------------------
	.byte		VOICE , 83
	.byte		BENDR , 12
	.byte		LFOS  , 18
	.byte		PAN   , c_v+32
	.byte		VOL   , 22*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W30
	.byte		N12   , Fs5 , v096
	.byte	W12
	.byte		        Fs6 
	.byte	W06
	.byte		VOL   , 40*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte	W12
	.byte		N12   , Gs5 , v112
	.byte	W12
	.byte		        Gs6 
	.byte	W12
	.byte	W06
@ 003   ----------------------------------------
	.byte		PAN   , c_v-44
	.byte		VOL   , 63*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Ds6 
	.byte	W12
	.byte	W12
	.byte		        Fs5 
	.byte	W06
	.byte		VOL   , 76*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		N12   , Fs6 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Cs6 
	.byte	W12
	.byte		        Ds5 
	.byte	W06
@ 004   ----------------------------------------
	.byte		PAN   , c_v-44
	.byte		VOL   , 96*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		N12   , Ds6 
	.byte	W12
	.byte	W78
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
mus_hlw_vs_evil_6_B1:
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
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_hlw_vs_evil_6_B1
mus_hlw_vs_evil_6_B2:
@ 088   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_hlw_vs_evil_7:
	.byte	KEYSH , mus_hlw_vs_evil_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 14
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+55
	.byte		BENDR , 12
	.byte		LFOS  , 18
	.byte		MOD   , 0
	.byte		BEND  , c_v+1
	.byte		N15   , Bn4 , v112
	.byte	W16
	.byte		PAN   , c_v-49
	.byte		N07   
	.byte	W08
	.byte		BEND  , c_v+2
	.byte		N15   , Bn4 , v084
	.byte	W16
	.byte		PAN   , c_v+54
	.byte		N07   
	.byte	W08
	.byte		BEND  , c_v+1
	.byte		N15   , Bn4 , v064
	.byte	W16
	.byte		PAN   , c_v-49
	.byte		N07   , Bn4 , v060
	.byte	W08
	.byte		BEND  , c_v+5
	.byte		N15   , Bn4 , v036
	.byte	W16
	.byte		PAN   , c_v+54
	.byte		N07   
	.byte	W08
@ 001   ----------------------------------------
	.byte		BEND  , c_v+0
	.byte	W16
	.byte		PAN   , c_v-49
	.byte	W24
	.byte		        c_v+54
	.byte	W24
	.byte		        c_v-49
	.byte	W24
	.byte		        c_v+54
	.byte	W08
@ 002   ----------------------------------------
	.byte		VOICE , 77
	.byte		VOL   , 36*mus_hlw_vs_evil_mvl/mxv
	.byte		N32   , Fs4 , v064, gtp3
	.byte	W05
	.byte		VOL   , 62*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        84*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        102*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        36*mus_hlw_vs_evil_mvl/mxv
	.byte		N32   , Gs4 , v060, gtp3
	.byte	W05
	.byte		VOL   , 62*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        84*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        102*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        36*mus_hlw_vs_evil_mvl/mxv
	.byte		N32   , Ds4 , v064, gtp3
	.byte	W05
	.byte		VOL   , 62*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        84*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        102*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
@ 003   ----------------------------------------
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        36*mus_hlw_vs_evil_mvl/mxv
	.byte		N32   , Fs4 , v080, gtp3
	.byte	W05
	.byte		VOL   , 62*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        84*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        102*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        127*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        40*mus_hlw_vs_evil_mvl/mxv
	.byte		N23   , Cs4 
	.byte	W05
	.byte		VOL   , 56*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        86*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        43*mus_hlw_vs_evil_mvl/mxv
	.byte		N23   , Ds4 
	.byte	W05
	.byte		VOL   , 58*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
	.byte		        75*mus_hlw_vs_evil_mvl/mxv
	.byte	W05
	.byte		        91*mus_hlw_vs_evil_mvl/mxv
	.byte	W07
@ 004   ----------------------------------------
	.byte		        73*mus_hlw_vs_evil_mvl/mxv
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
mus_hlw_vs_evil_7_B1:
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
	.byte		VOICE , 55
	.byte		VOL   , 80*mus_hlw_vs_evil_mvl/mxv
	.byte		N03   , Bn3 , v112
	.byte	W08
	.byte		N03   
	.byte	W08
	.byte		N03   
	.byte	W08
	.byte		N03   
	.byte	W08
	.byte		N03   
	.byte	W08
	.byte		N03   
	.byte	W08
	.byte		N07   
	.byte	W16
	.byte		N03   
	.byte	W08
	.byte		N15   
	.byte	W24
@ 028   ----------------------------------------
	.byte		VOL   , 72*mus_hlw_vs_evil_mvl/mxv
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
	.byte	W96
@ 043   ----------------------------------------
	.byte		PAN   , c_v-1
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
	.byte	W72
	.byte		VOICE , 21
	.byte		VOL   , 86*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-33
	.byte	W06
	.byte		TIE   , As6 , v100
	.byte	W18
@ 049   ----------------------------------------
	.byte	W60
	.byte		VOL   , 72*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        54*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        40*mus_hlw_vs_evil_mvl/mxv
	.byte	W11
	.byte		EOT   
	.byte	W01
@ 050   ----------------------------------------
	.byte		PAN   , c_v+0
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
	.byte		VOICE , 29
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte		        29
	.byte		VOL   , 96*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-38
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte		VOL   , 108*mus_hlw_vs_evil_mvl/mxv
	.byte	W72
	.byte		N68   , Dn5 , v112, gtp3
	.byte	W24
@ 063   ----------------------------------------
	.byte	W48
	.byte		N23   , An4 , v068
	.byte	W24
	.byte		        An5 , v096
	.byte	W24
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte		PAN   , c_v-39
	.byte	W36
	.byte		BEND  , c_v+1
	.byte		N23   , Dn5 , v104
	.byte	W36
	.byte		BEND  , c_v+0
	.byte	W24
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W60
	.byte		N32   , As5 , v100, gtp3
	.byte	W12
	.byte		BEND  , c_v+2
	.byte	W15
	.byte		        c_v-5
	.byte	W02
	.byte		        c_v-9
	.byte	W03
	.byte		        c_v-15
	.byte	W03
	.byte		        c_v-17
	.byte	W01
@ 068   ----------------------------------------
	.byte		PAN   , c_v+45
	.byte		VOL   , 125*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W96
@ 069   ----------------------------------------
	.byte	W36
	.byte		VOICE , 42
	.byte	W18
	.byte		N02   , Ds2 , v112
	.byte	W18
	.byte		PAN   , c_v+0
	.byte		VOL   , 87*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N23   , Ds5 , v127
	.byte	W15
	.byte		BEND  , c_v-2
	.byte	W02
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-19
	.byte	W04
@ 070   ----------------------------------------
	.byte		PAN   , c_v-45
	.byte		BEND  , c_v+0
	.byte		N23   , Ds5 , v096
	.byte	W15
	.byte		BEND  , c_v-13
	.byte	W02
	.byte		        c_v-17
	.byte	W03
	.byte		        c_v-33
	.byte	W04
	.byte		PAN   , c_v+48
	.byte		BEND  , c_v+0
	.byte		N23   , Ds5 , v072
	.byte	W15
	.byte		BEND  , c_v-13
	.byte	W02
	.byte		        c_v-17
	.byte	W03
	.byte		        c_v-33
	.byte	W04
	.byte		PAN   , c_v-46
	.byte		BEND  , c_v+0
	.byte		N23   , Ds5 , v064
	.byte	W15
	.byte		BEND  , c_v-13
	.byte	W02
	.byte		        c_v-17
	.byte	W03
	.byte		        c_v-33
	.byte	W04
	.byte		PAN   , c_v+52
	.byte		BEND  , c_v+0
	.byte		N23   , Ds5 , v040
	.byte	W15
	.byte		BEND  , c_v-13
	.byte	W02
	.byte		        c_v-17
	.byte	W03
	.byte		        c_v-33
	.byte	W04
@ 071   ----------------------------------------
	.byte		        c_v+0
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte		VOICE , 60
	.byte	W48
	.byte		VOL   , 120*mus_hlw_vs_evil_mvl/mxv
	.byte		N11   , Dn4 , v080
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N05   , Gn4 , v084
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
@ 074   ----------------------------------------
	.byte		BEND  , c_v+0
	.byte		N11   , Cn2 , v112
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Cs2 
	.byte	W24
	.byte		N11   , As1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 075   ----------------------------------------
mus_hlw_vs_evil_7_075:
	.byte		N23   , Cn2 , v112
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		N11   , Cn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Cs2 
	.byte	W12
	.byte	PEND
@ 076   ----------------------------------------
mus_hlw_vs_evil_7_076:
	.byte	W12
	.byte		N11   , Bn1 , v112
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte	PEND
@ 077   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Cs2 
	.byte	W24
	.byte		N11   , As1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_7_075
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_7_076
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_hlw_vs_evil_7_B1
mus_hlw_vs_evil_7_B2:
@ 088   ----------------------------------------
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_hlw_vs_evil_8:
	.byte	KEYSH , mus_hlw_vs_evil_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 83
	.byte		PAN   , c_v-44
	.byte		VOL   , 104*mus_hlw_vs_evil_mvl/mxv
	.byte		BENDR , 12
	.byte		LFOS  , 18
	.byte		MOD   , 0
	.byte		BEND  , c_v-56
	.byte		N92   , Bn4 , v096, gtp3
	.byte	W05
	.byte		BEND  , c_v-47
	.byte	W07
	.byte		        c_v-41
	.byte	W05
	.byte		        c_v-30
	.byte	W07
	.byte		        c_v-22
	.byte	W05
	.byte		        c_v-11
	.byte	W07
	.byte		        c_v+0
	.byte	W05
	.byte		        c_v+12
	.byte	W07
	.byte		        c_v+24
	.byte	W05
	.byte		        c_v+36
	.byte	W07
	.byte		        c_v+49
	.byte	W05
	.byte		        c_v+62
	.byte	W07
	.byte		        c_v+63
	.byte	W24
@ 001   ----------------------------------------
	.byte		        c_v-43
	.byte		N23   
	.byte	W04
	.byte		BEND  , c_v-17
	.byte	W04
	.byte		        c_v+10
	.byte	W04
	.byte		        c_v+24
	.byte	W04
	.byte		        c_v+29
	.byte	W08
	.byte		PAN   , c_v+54
	.byte		BEND  , c_v-16
	.byte		N23   , Cs5 , v088
	.byte	W04
	.byte		BEND  , c_v+4
	.byte	W04
	.byte		        c_v+26
	.byte	W04
	.byte		        c_v+39
	.byte	W04
	.byte		        c_v+48
	.byte	W04
	.byte		        c_v+49
	.byte	W04
	.byte		PAN   , c_v-38
	.byte		BEND  , c_v-16
	.byte		N11   , En5 , v072
	.byte	W04
	.byte		BEND  , c_v-4
	.byte	W04
	.byte		        c_v+11
	.byte	W04
	.byte		        c_v+26
	.byte		N11   , Fn5 
	.byte	W04
	.byte		BEND  , c_v+33
	.byte	W04
	.byte		        c_v+39
	.byte	W04
	.byte		PAN   , c_v+57
	.byte		BEND  , c_v-11
	.byte		N05   , Fs5 , v064
	.byte	W04
	.byte		BEND  , c_v+21
	.byte	W02
	.byte		PAN   , c_v-42
	.byte		N05   , Gn5 
	.byte	W02
	.byte		BEND  , c_v+39
	.byte	W04
	.byte		PAN   , c_v+55
	.byte		BEND  , c_v+55
	.byte		N02   , Gs5 , v076
	.byte	W03
	.byte		PAN   , c_v-38
	.byte		N02   , An5 , v080
	.byte	W01
	.byte		BEND  , c_v+63
	.byte	W02
	.byte		PAN   , c_v+46
	.byte		N02   , As5 , v092
	.byte	W03
	.byte		PAN   , c_v-38
	.byte		N02   , Bn5 
	.byte	W03
@ 002   ----------------------------------------
	.byte		BEND  , c_v-2
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		VOICE , 38
	.byte		PAN   , c_v+20
	.byte		VOL   , 36*mus_hlw_vs_evil_mvl/mxv
	.byte		N23   , Gn0 , v112
	.byte	W12
	.byte		VOL   , 54*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        66*mus_hlw_vs_evil_mvl/mxv
	.byte		N11   , Gn1 
	.byte	W12
	.byte		VOL   , 84*mus_hlw_vs_evil_mvl/mxv
	.byte		N11   , Fn1 
	.byte	W12
	.byte		VOL   , 91*mus_hlw_vs_evil_mvl/mxv
	.byte		N11   , Gn0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		VOL   , 104*mus_hlw_vs_evil_mvl/mxv
	.byte		N11   , Gs0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 005   ----------------------------------------
	.byte		VOL   , 112*mus_hlw_vs_evil_mvl/mxv
	.byte		N23   , Fn1 
	.byte	W24
	.byte		N11   , Cs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N23   , Gn1 
	.byte	W24
	.byte		N11   , Fn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 007   ----------------------------------------
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		N23   , Fn1 
	.byte	W24
	.byte		PAN   , c_v+34
	.byte		N11   , Cs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		VOICE , 39
	.byte		PAN   , c_v-11
	.byte		N11   , Cn1 , v127
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
mus_hlw_vs_evil_8_B1:
@ 008   ----------------------------------------
	.byte		VOICE , 39
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+23
	.byte		BEND  , c_v+0
	.byte		N23   , Gn0 , v112
	.byte	W24
	.byte		N11   , Gn1 , v127
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 009   ----------------------------------------
	.byte		VOICE , 39
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N23   , Fn1 
	.byte	W24
	.byte		N11   , Cs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn0 , v120
	.byte	W12
	.byte		        Dn1 , v127
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 010   ----------------------------------------
	.byte		N23   , Gn1 
	.byte	W24
	.byte		N11   , Fn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N23   , Fn1 
	.byte	W24
	.byte		N11   , Cs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 012   ----------------------------------------
	.byte		N14   , Gn1 
	.byte	W96
@ 013   ----------------------------------------
	.byte		VOICE , 85
	.byte		PAN   , c_v+37
	.byte		VOL   , 22*mus_hlw_vs_evil_mvl/mxv
	.byte		N06   , Cn3 , v024
	.byte	W06
	.byte		        Dn3 , v112
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		VOL   , 24*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-42
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		VOL   , 32*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+37
	.byte		N06   , Cn3 , v024
	.byte	W06
	.byte		        Dn3 , v112
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		VOL   , 41*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-53
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 014   ----------------------------------------
	.byte		VOL   , 44*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+42
	.byte		N06   , Cn3 , v024
	.byte	W06
	.byte		        Dn3 , v112
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		VOL   , 56*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-49
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v+37
	.byte		VOL   , 70*mus_hlw_vs_evil_mvl/mxv
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v-42
	.byte		VOL   , 88*mus_hlw_vs_evil_mvl/mxv
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 015   ----------------------------------------
	.byte		PAN   , c_v+37
	.byte		VOL   , 86*mus_hlw_vs_evil_mvl/mxv
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		PAN   , c_v-53
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v+42
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v-49
	.byte		VOL   , 93*mus_hlw_vs_evil_mvl/mxv
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 016   ----------------------------------------
	.byte	W72
	.byte		VOICE , 60
	.byte		VOL   , 126*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N05   , As1 , v096
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
@ 017   ----------------------------------------
	.byte		N32   , Gs1 , v096, gtp3
	.byte	W36
	.byte		        As1 , v096, gtp3
	.byte	W36
	.byte		N23   , Gs1 
	.byte	W24
@ 018   ----------------------------------------
	.byte		N44   , Gn1 , v096, gtp3
	.byte	W48
	.byte		TIE   , Cn1 
	.byte	W48
@ 019   ----------------------------------------
	.byte	W24
	.byte		VOL   , 120*mus_hlw_vs_evil_mvl/mxv
	.byte	W15
	.byte		        118*mus_hlw_vs_evil_mvl/mxv
	.byte	W09
	.byte		        108*mus_hlw_vs_evil_mvl/mxv
	.byte	W09
	.byte		        95*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        88*mus_hlw_vs_evil_mvl/mxv
	.byte	W06
	.byte		        75*mus_hlw_vs_evil_mvl/mxv
	.byte	W08
	.byte		EOT   
	.byte	W01
	.byte		VOICE , 47
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-40
	.byte		N05   , Gn1 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
@ 020   ----------------------------------------
	.byte		N32   , Cn2 , v127, gtp3
	.byte	W36
	.byte		PAN   , c_v+51
	.byte		N32   , Gn1 , v127, gtp3
	.byte	W36
	.byte		        Cn2 , v127, gtp3
	.byte	W24
@ 021   ----------------------------------------
	.byte	W12
	.byte		PAN   , c_v-38
	.byte		N32   , Gn1 , v127, gtp3
	.byte	W36
	.byte		N23   , Cn2 
	.byte	W24
	.byte		        Ds2 
	.byte	W24
@ 022   ----------------------------------------
mus_hlw_vs_evil_8_022:
	.byte		N32   , Cn2 , v127, gtp3
	.byte	W36
	.byte		PAN   , c_v+47
	.byte		N32   , Gn1 , v127, gtp3
	.byte	W36
	.byte		        Cn2 , v127, gtp3
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
	.byte	W12
	.byte		        Gn1 , v127, gtp3
	.byte	W36
	.byte		PAN   , c_v-42
	.byte		N23   , Cn2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
@ 024   ----------------------------------------
	.byte		VOICE , 85
	.byte		N32   , Cn2 , v127, gtp3
	.byte	W36
	.byte		PAN   , c_v+51
	.byte		N32   , Gn1 , v127, gtp3
	.byte	W36
	.byte		        Cn2 , v127, gtp3
	.byte	W24
@ 025   ----------------------------------------
	.byte	W12
	.byte		PAN   , c_v-39
	.byte		N32   , Gn1 , v127, gtp3
	.byte	W36
	.byte		N23   , Cn2 
	.byte	W24
	.byte		        Ds2 
	.byte	W24
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_8_022
@ 027   ----------------------------------------
	.byte	W12
	.byte		N32   , Gn1 , v127, gtp3
	.byte	W36
	.byte		PAN   , c_v-39
	.byte		N23   , Cn2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
@ 028   ----------------------------------------
	.byte		N68   , Cn2 , v112, gtp3
	.byte	W72
	.byte		N23   , Gn2 
	.byte	W24
@ 029   ----------------------------------------
	.byte		PAN   , c_v+47
	.byte		N68   , Cn2 , v112, gtp3
	.byte	W72
	.byte		PAN   , c_v-39
	.byte		N23   , Gn2 
	.byte	W24
@ 030   ----------------------------------------
	.byte		PAN   , c_v+47
	.byte		N68   , Cn2 , v112, gtp3
	.byte	W72
	.byte		PAN   , c_v-51
	.byte		N23   , Gs2 
	.byte	W24
@ 031   ----------------------------------------
	.byte		PAN   , c_v+47
	.byte		N68   , Cn2 , v112, gtp3
	.byte	W72
	.byte		PAN   , c_v-51
	.byte		N23   , Gn2 
	.byte	W24
@ 032   ----------------------------------------
	.byte		PAN   , c_v+47
	.byte		N32   , Cn2 , v127, gtp3
	.byte	W36
	.byte		        Gn1 , v127, gtp3
	.byte	W36
	.byte		        Cn2 , v127, gtp3
	.byte	W24
@ 033   ----------------------------------------
	.byte	W12
	.byte		        Gn1 , v127, gtp3
	.byte	W36
	.byte		N23   , Cn2 
	.byte	W24
	.byte		        Ds2 
	.byte	W24
@ 034   ----------------------------------------
mus_hlw_vs_evil_8_034:
	.byte		N32   , Cn2 , v127, gtp3
	.byte	W36
	.byte		        Gn1 , v127, gtp3
	.byte	W36
	.byte		        Cn2 , v127, gtp3
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
mus_hlw_vs_evil_8_035:
	.byte	W12
	.byte		N32   , Gn1 , v127, gtp3
	.byte	W36
	.byte		N23   , Cn2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte	PEND
@ 036   ----------------------------------------
	.byte		N32   , Cn2 , v127, gtp3
	.byte	W36
	.byte		        Gn1 , v127, gtp3
	.byte	W36
	.byte		N11   
	.byte	W15
	.byte		N56   , Cn2 
	.byte	W09
@ 037   ----------------------------------------
	.byte	W48
	.byte		N23   
	.byte	W24
	.byte		        Ds2 
	.byte	W24
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_8_034
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_8_035
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte		VOICE , 42
	.byte	W96
@ 044   ----------------------------------------
	.byte		        42
	.byte		VOL   , 32*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N08   , Gs5 , v112
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		VOL   , 44*mus_hlw_vs_evil_mvl/mxv
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Ds5 , v076
	.byte	W12
@ 045   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 62*mus_hlw_vs_evil_mvl/mxv
	.byte		N08   , En5 
	.byte	W12
	.byte		        Fn5 , v124
	.byte	W12
	.byte		        An5 , v127
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		VOL   , 80*mus_hlw_vs_evil_mvl/mxv
	.byte		N08   , Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        En5 
	.byte	W12
@ 046   ----------------------------------------
	.byte		VOICE , 47
	.byte		VOL   , 32*mus_hlw_vs_evil_mvl/mxv
	.byte		N05   , Cn6 
	.byte	W16
	.byte		PAN   , c_v-48
	.byte		N05   
	.byte	W08
	.byte		PAN   , c_v+43
	.byte		N05   
	.byte	W16
	.byte		PAN   , c_v-49
	.byte		N05   , Cn6 , v024
	.byte	W08
	.byte		PAN   , c_v+41
	.byte		N05   , Cn6 , v020
	.byte	W08
	.byte		PAN   , c_v-57
	.byte		N05   , Cn6 , v016
	.byte	W08
	.byte		PAN   , c_v+55
	.byte		N05   , Cn6 , v012
	.byte	W23
	.byte		        Cn6 , v092
	.byte	W09
@ 047   ----------------------------------------
	.byte	W07
	.byte		PAN   , c_v-48
	.byte		N05   , Cn6 , v048
	.byte	W08
	.byte		PAN   , c_v+43
	.byte		N05   , Cn6 , v032
	.byte	W16
	.byte		PAN   , c_v-49
	.byte		N05   , Cn6 , v024
	.byte	W08
	.byte		PAN   , c_v+41
	.byte		N05   , Cn6 , v020
	.byte	W08
	.byte		PAN   , c_v-57
	.byte		N05   , Cn6 , v016
	.byte	W08
	.byte		PAN   , c_v+55
	.byte		N05   , Cn6 , v012
	.byte	W32
	.byte		        Cn6 , v096
	.byte	W09
@ 048   ----------------------------------------
	.byte	W07
	.byte		PAN   , c_v-48
	.byte		N05   , Cn6 , v048
	.byte	W08
	.byte		PAN   , c_v+43
	.byte		N05   , Cn6 , v032
	.byte	W16
	.byte		PAN   , c_v-49
	.byte		N05   , Cn6 , v092
	.byte	W08
	.byte		PAN   , c_v+41
	.byte		N05   , Cn6 , v044
	.byte	W08
	.byte		PAN   , c_v-57
	.byte		N05   , Cn6 , v016
	.byte	W24
	.byte	W01
	.byte		PAN   , c_v-24
	.byte	W06
	.byte		TIE   , Cn6 , v112
	.byte	W06
	.byte		VOL   , 60*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
@ 049   ----------------------------------------
	.byte	W48
	.byte		        48*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        41*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        32*mus_hlw_vs_evil_mvl/mxv
	.byte	W15
	.byte		        22*mus_hlw_vs_evil_mvl/mxv
	.byte	W08
	.byte		EOT   
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
	.byte		VOICE , 5
	.byte		VOL   , 74*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-44
	.byte	W30
	.byte		N05   , Fs5 , v096
	.byte	W12
	.byte		        Fs6 
	.byte	W18
	.byte		PAN   , c_v+42
	.byte	W06
	.byte		N05   , Gs5 , v112
	.byte	W12
	.byte		        Gs6 
	.byte	W18
@ 055   ----------------------------------------
	.byte		PAN   , c_v-44
	.byte	W06
	.byte		N05   , Ds5 
	.byte	W12
	.byte		        Ds6 
	.byte	W24
	.byte		        Fs5 
	.byte	W12
	.byte		        Fs6 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Cs6 
	.byte	W12
	.byte		        Ds5 
	.byte	W06
@ 056   ----------------------------------------
	.byte	W06
	.byte		        Ds6 
	.byte	W24
	.byte		        Fs5 
	.byte	W12
	.byte		        Fs6 
	.byte	W18
	.byte		PAN   , c_v+45
	.byte	W06
	.byte		N05   , Gs5 
	.byte	W12
	.byte		        Gs6 
	.byte	W18
@ 057   ----------------------------------------
	.byte		PAN   , c_v-48
	.byte	W06
	.byte		N05   , Ds5 , v096
	.byte	W12
	.byte		        Ds6 
	.byte	W24
	.byte		        Fs5 , v112
	.byte	W54
@ 058   ----------------------------------------
	.byte		VOICE , 90
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W60
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+48
	.byte		N11   , Dn2 , v127
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 062   ----------------------------------------
	.byte		N32   , Dn2 , v127, gtp3
	.byte	W36
	.byte		        An1 , v127, gtp3
	.byte	W36
	.byte		        Dn2 , v127, gtp3
	.byte	W24
@ 063   ----------------------------------------
	.byte	W12
	.byte		        An1 , v127, gtp3
	.byte	W36
	.byte		N23   , Dn2 
	.byte	W24
	.byte		        En2 
	.byte	W24
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte		N32   , Ds2 , v127, gtp3
	.byte	W36
	.byte		        As1 , v127, gtp3
	.byte	W36
	.byte		        Ds2 , v127, gtp3
	.byte	W24
@ 067   ----------------------------------------
	.byte	W12
	.byte		        As1 , v127, gtp3
	.byte	W36
	.byte		N23   , Ds2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
mus_hlw_vs_evil_8_070:
	.byte		N11   , Cn2 , v120
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N32   , Cn2 , v120, gtp3
	.byte	W72
	.byte	PEND
@ 071   ----------------------------------------
mus_hlw_vs_evil_8_071:
	.byte	W12
	.byte		N23   , Gn1 , v120
	.byte	W24
	.byte		N11   , Cn2 
	.byte	W12
	.byte		N44   , Gn1 , v120, gtp3
	.byte	W48
	.byte	PEND
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_8_070
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_8_071
@ 074   ----------------------------------------
	.byte		VOICE , 47
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		N11   , Cn2 , v120
	.byte	W12
	.byte		VOICE , 82
	.byte		N11   , Cn2 , v112
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Cs2 
	.byte	W24
	.byte		N11   , As1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 075   ----------------------------------------
mus_hlw_vs_evil_8_075:
	.byte		N23   , Cn2 , v112
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		N11   , Cn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Cs2 
	.byte	W12
	.byte	PEND
@ 076   ----------------------------------------
mus_hlw_vs_evil_8_076:
	.byte	W12
	.byte		N11   , Bn1 , v112
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte	PEND
@ 077   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Cs2 
	.byte	W24
	.byte		N11   , As1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_8_075
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_8_076
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_hlw_vs_evil_8_B1
mus_hlw_vs_evil_8_B2:
@ 088   ----------------------------------------
	.byte	FINE

@**************** Track 9 (Midi-Chn.9) ****************@

mus_hlw_vs_evil_9:
	.byte	KEYSH , mus_hlw_vs_evil_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		PAN   , c_v+0
	.byte		BENDR , 12
	.byte		LFOS  , 18
	.byte		MOD   , 0
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , BnM1, v127
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W12
	.byte		VOL   , 122*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        120*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        112*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        104*mus_hlw_vs_evil_mvl/mxv
	.byte	W15
	.byte		        95*mus_hlw_vs_evil_mvl/mxv
	.byte	W09
	.byte		        88*mus_hlw_vs_evil_mvl/mxv
	.byte	W15
	.byte		        84*mus_hlw_vs_evil_mvl/mxv
	.byte	W09
@ 003   ----------------------------------------
	.byte		        77*mus_hlw_vs_evil_mvl/mxv
	.byte	W15
	.byte		        73*mus_hlw_vs_evil_mvl/mxv
	.byte	W09
	.byte		        66*mus_hlw_vs_evil_mvl/mxv
	.byte	W15
	.byte		        58*mus_hlw_vs_evil_mvl/mxv
	.byte	W09
	.byte		        50*mus_hlw_vs_evil_mvl/mxv
	.byte	W15
	.byte		        45*mus_hlw_vs_evil_mvl/mxv
	.byte	W09
	.byte		        38*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        34*mus_hlw_vs_evil_mvl/mxv
	.byte	W11
	.byte		EOT   
	.byte	W01
@ 004   ----------------------------------------
	.byte		VOICE , 34
	.byte		PAN   , c_v-43
	.byte		VOL   , 126*mus_hlw_vs_evil_mvl/mxv
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W48
	.byte		VOICE , 3
	.byte		VOL   , 126*mus_hlw_vs_evil_mvl/mxv
	.byte	W48
mus_hlw_vs_evil_9_B1:
@ 008   ----------------------------------------
	.byte		VOICE , 3
	.byte		BEND  , c_v+0
	.byte	W96
@ 009   ----------------------------------------
	.byte		PAN   , c_v-45
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte		VOICE , 37
	.byte		PAN   , c_v+14
	.byte		BEND  , c_v+1
	.byte	W12
	.byte		N11   , Gn0 , v112
	.byte	W12
	.byte		VOL   , 82*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		VOICE , 50
	.byte	W06
	.byte		N56   , En0 , v127, gtp3
	.byte	W15
	.byte		VOL   , 93*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+44
	.byte	W09
	.byte		BEND  , c_v+6
	.byte	W02
	.byte		        c_v+8
	.byte	W07
	.byte		PAN   , c_v+24
	.byte		BEND  , c_v+12
	.byte	W06
	.byte		VOL   , 102*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+17
	.byte	W03
	.byte		        c_v+22
	.byte	W03
	.byte		        c_v+28
	.byte	W03
	.byte		        c_v+32
	.byte	W03
	.byte		PAN   , c_v+2
	.byte		BEND  , c_v+32
	.byte	W03
	.byte		        c_v+34
	.byte	W03
	.byte		        c_v+36
	.byte	W03
	.byte		N56   , Gn1 , v127, gtp3
	.byte	W03
@ 013   ----------------------------------------
	.byte		VOL   , 110*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-20
	.byte	W18
	.byte		        c_v-38
	.byte	W09
	.byte		BEND  , c_v+30
	.byte	W02
	.byte		        c_v+25
	.byte	W04
	.byte		        c_v+7
	.byte	W02
	.byte		        c_v-13
	.byte	W03
	.byte		        c_v-27
	.byte	W03
	.byte		        c_v-38
	.byte	W04
	.byte		        c_v-46
	.byte	W02
	.byte		        c_v-53
	.byte	W03
	.byte		        c_v-61
	.byte	W03
	.byte		        c_v-61
	.byte	W04
	.byte		        c_v+0
	.byte	W03
	.byte		PAN   , c_v+46
	.byte		VOL   , 64*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		N56   , En0 , v127, gtp3
	.byte	W09
	.byte		VOL   , 91*mus_hlw_vs_evil_mvl/mxv
	.byte	W15
	.byte		BEND  , c_v+6
	.byte	W02
	.byte		        c_v+8
	.byte	W07
@ 014   ----------------------------------------
	.byte		VOL   , 108*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W06
	.byte		        c_v+17
	.byte	W03
	.byte		        c_v+22
	.byte	W03
	.byte		        c_v+28
	.byte	W03
	.byte		        c_v+32
	.byte	W03
	.byte		        c_v+32
	.byte	W03
	.byte		        c_v+34
	.byte	W03
	.byte		        c_v+36
	.byte	W03
	.byte		N56   , Gn1 , v127, gtp3
	.byte	W30
	.byte		BEND  , c_v+30
	.byte	W02
	.byte		        c_v+25
	.byte	W01
	.byte		VOL   , 100*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		BEND  , c_v+7
	.byte	W02
	.byte		        c_v-13
	.byte	W03
	.byte		        c_v-27
	.byte	W03
	.byte		VOL   , 84*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-38
	.byte	W04
	.byte		        c_v-46
	.byte	W02
	.byte		        c_v-53
	.byte	W03
	.byte		        c_v-61
	.byte	W03
	.byte		VOL   , 64*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-61
	.byte	W01
	.byte		PAN   , c_v+46
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W08
	.byte		VOL   , 62*mus_hlw_vs_evil_mvl/mxv
	.byte	W01
@ 015   ----------------------------------------
	.byte		PAN   , c_v+32
	.byte		VOL   , 112*mus_hlw_vs_evil_mvl/mxv
	.byte	W03
	.byte		N56   , En0 , v127, gtp3
	.byte	W15
	.byte		PAN   , c_v+14
	.byte	W09
	.byte		BEND  , c_v+6
	.byte	W02
	.byte		        c_v+8
	.byte	W01
	.byte		PAN   , c_v-4
	.byte	W06
	.byte		BEND  , c_v+12
	.byte	W06
	.byte		        c_v+17
	.byte	W03
	.byte		        c_v+22
	.byte	W03
	.byte		        c_v+28
	.byte	W03
	.byte		        c_v+32
	.byte	W03
	.byte		PAN   , c_v-26
	.byte		BEND  , c_v+32
	.byte	W03
	.byte		        c_v+34
	.byte	W03
	.byte		        c_v+36
	.byte	W03
	.byte		N56   , Gn1 , v127, gtp3
	.byte	W03
	.byte		PAN   , c_v-36
	.byte	W24
	.byte	W03
	.byte		BEND  , c_v+30
	.byte	W02
	.byte		        c_v+25
	.byte	W01
@ 016   ----------------------------------------
	.byte	W03
	.byte		        c_v+7
	.byte	W02
	.byte		        c_v-13
	.byte	W03
	.byte		        c_v-27
	.byte	W03
	.byte		        c_v-38
	.byte	W04
	.byte		        c_v-46
	.byte	W02
	.byte		        c_v-53
	.byte	W03
	.byte		        c_v-61
	.byte	W03
	.byte		        c_v-61
	.byte	W04
	.byte		        c_v+0
	.byte	W44
	.byte	W01
	.byte		VOICE , 49
	.byte		PAN   , c_v+18
	.byte		VOL   , 104*mus_hlw_vs_evil_mvl/mxv
	.byte		N05   , As3 , v112
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 017   ----------------------------------------
	.byte		PAN   , c_v+18
	.byte		N32   , Gs3 , v112, gtp3
	.byte	W36
	.byte		        As3 , v112, gtp3
	.byte	W36
	.byte		N23   , Gs3 
	.byte	W24
@ 018   ----------------------------------------
	.byte		N44   , Gn3 , v112, gtp3
	.byte	W48
	.byte		TIE   , Cn3 
	.byte	W48
@ 019   ----------------------------------------
	.byte	W48
	.byte		VOL   , 95*mus_hlw_vs_evil_mvl/mxv
	.byte	W15
	.byte		        89*mus_hlw_vs_evil_mvl/mxv
	.byte	W09
	.byte		        80*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        72*mus_hlw_vs_evil_mvl/mxv
	.byte	W11
	.byte		EOT   
	.byte	W01
@ 020   ----------------------------------------
	.byte		VOICE , 39
	.byte		PAN   , c_v+0
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N05   , Cn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , Cn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
@ 021   ----------------------------------------
mus_hlw_vs_evil_9_021:
	.byte		N05   , Cn1 , v112
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , Cn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , Fn1 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_hlw_vs_evil_9_022:
	.byte		N05   , Cn1 , v112
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , Cn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
mus_hlw_vs_evil_9_023:
	.byte		N05   , Cn1 , v112
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , Cn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , Cn2 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
	.byte		VOICE , 35
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		N05   , Cn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , Cn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_022
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_023
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_022
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_021
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_022
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_023
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_022
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_021
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_022
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_023
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_022
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_021
@ 038   ----------------------------------------
	.byte		VOICE , 5
	.byte		PAN   , c_v-1
	.byte		N05   , Cn2 , v112
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N11   , Cs2 
	.byte	W12
	.byte		N05   , Cn2 , v108
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cn2 , v116
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N11   , En2 , v120
	.byte	W12
@ 039   ----------------------------------------
	.byte		N05   , Cn2 , v124
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cn2 , v127
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N11   , Cs2 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N05   , Cn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W12
@ 040   ----------------------------------------
	.byte		VOICE , 34
	.byte		N11   , Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 041   ----------------------------------------
	.byte		        Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 042   ----------------------------------------
mus_hlw_vs_evil_9_042:
	.byte		N11   , Fn0 , v127
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte	PEND
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_042
@ 044   ----------------------------------------
	.byte		N11   , Ds0 , v127
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Ds0 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Ds0 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Ds0 
	.byte	W12
	.byte		        Gs0 , v076
	.byte	W12
@ 045   ----------------------------------------
	.byte		        Fn0 
	.byte	W12
	.byte		        As0 , v124
	.byte	W12
	.byte		        Fn0 , v127
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn0 
	.byte	W12
	.byte		        As0 
	.byte	W12
@ 046   ----------------------------------------
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		N05   , Cn1 , v020
	.byte	W06
	.byte		        Ds1 , v028
	.byte	W06
	.byte		        En1 , v032
	.byte	W06
	.byte		        Ds1 , v040
	.byte	W06
	.byte		        Cn1 , v044
	.byte	W06
	.byte		        En1 , v048
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , Cn1 , v052
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 , v056
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn1 , v060
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
@ 047   ----------------------------------------
	.byte		N05   , Cn1 , v064
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 , v068
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N11   , Cs1 , v072
	.byte	W12
	.byte		N05   , Cn1 
	.byte	W06
	.byte		        Ds1 , v076
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 , v080
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , Fn1 
	.byte	W12
@ 048   ----------------------------------------
	.byte		N05   , Cn1 , v084
	.byte	W06
	.byte		        Ds1 , v088
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , Cn1 , v096
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 , v100
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn1 , v104
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
@ 049   ----------------------------------------
	.byte		N05   , Cn1 , v108
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 , v112
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 , v116
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , Cn1 , v120
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 , v124
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , Cn2 , v127
	.byte	W12
@ 050   ----------------------------------------
	.byte		VOICE , 39
	.byte		N05   , Cn1 , v112
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , Cn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_021
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_022
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_023
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_022
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_021
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_022
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_023
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_022
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_021
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_022
@ 061   ----------------------------------------
	.byte		N05   , Cn1 , v112
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , Cn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
@ 062   ----------------------------------------
mus_hlw_vs_evil_9_062:
	.byte		N05   , Dn1 , v112
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte	PEND
@ 063   ----------------------------------------
	.byte		N05   , Dn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N11   , Gn1 
	.byte	W12
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_062
@ 065   ----------------------------------------
	.byte		N05   , Dn1 , v112
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N11   , Dn2 
	.byte	W12
@ 066   ----------------------------------------
mus_hlw_vs_evil_9_066:
	.byte		N05   , Ds1 , v112
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
	.byte		N05   , Ds1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N11   , Gn1 
	.byte	W12
	.byte	PEND
@ 067   ----------------------------------------
	.byte		N05   , Ds1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
	.byte		N05   , Ds1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N11   , Gs1 
	.byte	W12
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_066
@ 069   ----------------------------------------
	.byte		N05   , Ds1 , v112
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
	.byte		N05   , En0 , v127
	.byte	W06
	.byte		        Fn0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
@ 070   ----------------------------------------
mus_hlw_vs_evil_9_070:
	.byte		N11   , Cn1 , v127
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte	PEND
@ 071   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_070
@ 073   ----------------------------------------
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 074   ----------------------------------------
mus_hlw_vs_evil_9_074:
	.byte	W06
	.byte		N05   , Cn1 , v124
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N23   , Cs1 
	.byte	W24
	.byte		N05   , As0 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 075   ----------------------------------------
mus_hlw_vs_evil_9_075:
	.byte	W06
	.byte		N23   , Cn1 , v124
	.byte	W24
	.byte		        Gn0 
	.byte	W24
	.byte		N05   , Cn0 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N23   , Cs0 
	.byte	W06
	.byte	PEND
@ 076   ----------------------------------------
mus_hlw_vs_evil_9_076:
	.byte	W18
	.byte		N05   , BnM1, v124
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N11   , Cn0 
	.byte	W12
	.byte		        Ds0 
	.byte	W12
	.byte		        Dn0 
	.byte	W12
	.byte		        Cs0 
	.byte	W06
	.byte	PEND
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_074
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_075
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_9_076
@ 080   ----------------------------------------
	.byte		N11   , Cn1 , v112
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 081   ----------------------------------------
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 082   ----------------------------------------
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 083   ----------------------------------------
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
@ 084   ----------------------------------------
	.byte		N23   , Gn0 
	.byte	W24
	.byte		N11   , Gn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 085   ----------------------------------------
	.byte		N23   , Fn1 
	.byte	W24
	.byte		N11   , Cs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 086   ----------------------------------------
	.byte		N23   , Gn1 
	.byte	W24
	.byte		N11   , Fn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 087   ----------------------------------------
	.byte		N23   , Fn1 
	.byte	W24
	.byte		N11   , Cs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte	GOTO
	 .word	mus_hlw_vs_evil_9_B1
mus_hlw_vs_evil_9_B2:
@ 088   ----------------------------------------
	.byte	FINE

@**************** Track 10 (Midi-Chn.10) ****************@

mus_hlw_vs_evil_10:
	.byte	KEYSH , mus_hlw_vs_evil_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		BENDR , 12
	.byte		LFOS  , 18
	.byte		MOD   , 0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v-64
	.byte		N96   , Cs2 , v127
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		VOL   , 120*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		VOL   , 112*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        104*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        98*mus_hlw_vs_evil_mvl/mxv
	.byte		N11   , Bn0 , v100
	.byte	W12
	.byte		VOL   , 92*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        86*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        80*mus_hlw_vs_evil_mvl/mxv
	.byte		N11   
	.byte	W12
	.byte		VOL   , 72*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
@ 005   ----------------------------------------
	.byte		        63*mus_hlw_vs_evil_mvl/mxv
	.byte		N11   
	.byte	W12
	.byte		VOL   , 57*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        48*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        44*mus_hlw_vs_evil_mvl/mxv
	.byte		N11   
	.byte	W12
	.byte		VOL   , 41*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        38*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        37*mus_hlw_vs_evil_mvl/mxv
	.byte		N11   
	.byte	W12
	.byte		VOL   , 41*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
@ 006   ----------------------------------------
	.byte		        44*mus_hlw_vs_evil_mvl/mxv
	.byte		N11   
	.byte	W12
	.byte		VOL   , 51*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        57*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        64*mus_hlw_vs_evil_mvl/mxv
	.byte		N11   
	.byte	W12
	.byte		VOL   , 71*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        78*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		        85*mus_hlw_vs_evil_mvl/mxv
	.byte		N11   
	.byte	W12
	.byte		VOL   , 94*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
@ 007   ----------------------------------------
	.byte		        111*mus_hlw_vs_evil_mvl/mxv
	.byte		N92   , Gn0 , v127, gtp3
	.byte		N11   , Bn0 , v100
	.byte	W12
	.byte		PAN   , c_v+45
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v+30
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		PAN   , c_v-13
	.byte	W12
	.byte		N05   , Dn1 , v127
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		PAN   , c_v-41
	.byte		N11   , Ds1 
	.byte	W12
mus_hlw_vs_evil_10_B1:
@ 008   ----------------------------------------
	.byte		VOL   , 109*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N68   , Cs2 , v116, gtp3
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+30
	.byte		N06   , An2 , v112
	.byte	W06
	.byte		N72   , Cs2 
	.byte	W90
@ 013   ----------------------------------------
	.byte		PAN   , c_v+30
	.byte	W96
@ 014   ----------------------------------------
	.byte		        c_v+15
	.byte		BEND  , c_v-56
	.byte	W12
	.byte		        c_v+0
	.byte	W12
	.byte		        c_v-60
	.byte	W24
	.byte		PAN   , c_v-23
	.byte	W48
@ 015   ----------------------------------------
	.byte		        c_v-33
	.byte		BEND  , c_v-2
	.byte		N92   , Gn0 , v112, gtp3
	.byte	W48
	.byte		BEND  , c_v-56
	.byte	W12
	.byte		        c_v+0
	.byte	W36
@ 016   ----------------------------------------
	.byte		VOL   , 116*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N92   , En2 , v112, gtp3
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W48
	.byte		PAN   , c_v-51
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N08   , Dn1 , v127
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn1 , v120
	.byte	W12
@ 020   ----------------------------------------
	.byte		PAN   , c_v+0
	.byte		N11   , Bn0 , v100
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 021   ----------------------------------------
mus_hlw_vs_evil_10_021:
	.byte		N11   , Bn0 , v100
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_hlw_vs_evil_10_022:
	.byte		N11   , Bn0 , v100
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_021
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_022
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_021
@ 026   ----------------------------------------
mus_hlw_vs_evil_10_026:
	.byte		N11   , Bn0 , v100
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_021
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_026
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_021
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_026
@ 031   ----------------------------------------
	.byte		N11   , Bn0 , v100
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_026
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_021
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_026
@ 035   ----------------------------------------
	.byte		N11   , Bn0 , v100
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N11   
	.byte	W24
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_026
@ 037   ----------------------------------------
	.byte		N11   , Bn0 , v100
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn1 , v068
	.byte	W12
@ 038   ----------------------------------------
	.byte		        Bn0 , v100
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte		N11   , Dn1 
	.byte	W36
	.byte		        Bn0 
	.byte		N11   , Dn1 
	.byte	W12
@ 039   ----------------------------------------
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 , v064
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 040   ----------------------------------------
	.byte		        BnM2
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
@ 041   ----------------------------------------
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		        Cn1 
	.byte	W12
	.byte		        BnM2
	.byte	W11
	.byte	W01
	.byte		        Cn1 
	.byte	W12
@ 042   ----------------------------------------
	.byte		        BnM2
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
@ 043   ----------------------------------------
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		        Cn1 
	.byte	W12
	.byte		        BnM2
	.byte	W11
	.byte	W01
	.byte		        Cn1 
	.byte	W12
@ 044   ----------------------------------------
	.byte		        BnM2, v112
	.byte	W11
	.byte	W13
	.byte		        BnM2, v108
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		        BnM2, v104
	.byte	W11
	.byte	W13
@ 045   ----------------------------------------
	.byte		        BnM2, v076
	.byte	W11
	.byte	W13
	.byte		        BnM2, v127
	.byte	W11
	.byte	W60
	.byte	W01
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W48
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Dn1 , v108
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
@ 050   ----------------------------------------
	.byte		BEND  , c_v-49
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		BEND  , c_v-33
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
@ 051   ----------------------------------------
	.byte		BEND  , c_v-25
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		BEND  , c_v-16
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		N05   
	.byte	W06
@ 052   ----------------------------------------
	.byte		BEND  , c_v-10
	.byte		N11   
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		BEND  , c_v-4
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
@ 053   ----------------------------------------
	.byte		BEND  , c_v+1
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		N05   
	.byte	W06
@ 054   ----------------------------------------
	.byte		BEND  , c_v+0
	.byte		N11   
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
@ 055   ----------------------------------------
mus_hlw_vs_evil_10_055:
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 056   ----------------------------------------
mus_hlw_vs_evil_10_056:
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_055
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_056
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_055
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_056
@ 061   ----------------------------------------
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn1 
	.byte		N23   , Bn1 
	.byte	W12
	.byte		N11   , Dn1 
	.byte	W11
	.byte	W01
@ 062   ----------------------------------------
	.byte		        Cn1 
	.byte		N23   , Cs2 
	.byte	W12
	.byte		N11   , Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn1 , v100
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
@ 063   ----------------------------------------
mus_hlw_vs_evil_10_063:
	.byte		N11   , Cn1 , v100
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn1 , v100
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N05   , Dn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_056
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_055
@ 066   ----------------------------------------
	.byte		N11   , Cn1 , v100
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn1 , v100
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn1 , v100
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_063
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_056
@ 069   ----------------------------------------
	.byte		N11   , Cn1 , v100
	.byte	W12
	.byte		N05   , Dn1 , v064
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N11   
	.byte		N11   , Bn1 
	.byte	W11
	.byte	W01
	.byte		        Bn0 
	.byte	W12
	.byte		        Bn0 , v127
	.byte		N11   , Bn1 
	.byte	W11
	.byte	W01
	.byte		N05   , Dn1 , v100
	.byte	W06
	.byte		N05   
	.byte	W06
@ 070   ----------------------------------------
	.byte		N11   , Bn0 
	.byte		N23   , An2 
	.byte	W24
	.byte		N11   , Bn0 
	.byte		N11   , Dn1 
	.byte	W24
	.byte		        Bn0 
	.byte	W24
	.byte		N11   
	.byte		N11   , Dn1 
	.byte	W24
@ 071   ----------------------------------------
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte		N11   , Bn1 
	.byte	W11
	.byte	W01
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 072   ----------------------------------------
	.byte		        Bn0 
	.byte	W24
	.byte		N11   
	.byte		N11   , Dn1 
	.byte	W24
	.byte		        Bn0 
	.byte	W24
	.byte		N11   
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 073   ----------------------------------------
	.byte		N11   
	.byte	W24
	.byte		        Bn0 
	.byte		N11   , Dn1 
	.byte		N11   , Bn1 
	.byte	W11
	.byte	W01
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N11   
	.byte		N11   , Bn1 
	.byte	W11
	.byte	W01
	.byte		        Dn1 
	.byte		N11   , Bn1 
	.byte	W11
	.byte	W01
@ 074   ----------------------------------------
	.byte		PAN   , c_v-40
	.byte		N11   , Bn0 
	.byte		N11   , Cs2 
	.byte	W12
	.byte		        Bn0 
	.byte		N11   , Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte		N11   , Dn1 
	.byte	W36
	.byte		        Bn0 
	.byte		N11   , Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte		N11   , Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte		N11   , Dn1 
	.byte	W12
@ 075   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N02   , Dn1 , v112
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N11   , Cs0 , v127
	.byte	W11
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W13
@ 076   ----------------------------------------
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cs0 
	.byte		N08   , En2 
	.byte	W11
	.byte	W01
	.byte		N11   , Cs0 
	.byte		N08   , En2 
	.byte	W11
	.byte	W01
	.byte		N02   , Dn1 , v112
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
@ 077   ----------------------------------------
	.byte		BEND  , c_v+38
	.byte		N11   , Cs0 , v127
	.byte		N08   , Cs2 
	.byte	W11
	.byte	W01
	.byte		N11   , Cs0 
	.byte		N08   , Cs2 
	.byte	W11
	.byte	W01
	.byte		N11   , Cs0 
	.byte		N08   , Cs2 
	.byte	W11
	.byte	W01
	.byte		PAN   , c_v+46
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		        c_v+0
	.byte	W12
	.byte		PAN   , c_v-40
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 078   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N02   , Dn1 , v112
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		PAN   , c_v+47
	.byte		N11   , Cs0 , v127
	.byte	W11
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		PAN   , c_v-40
	.byte	W12
@ 079   ----------------------------------------
	.byte	W12
	.byte		N11   , Cs2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N08   , En2 
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N02   , Dn1 , v112
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
@ 080   ----------------------------------------
	.byte		PAN   , c_v+0
	.byte		N92   , En2 , v127, gtp3
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W24
	.byte		N11   , Cn1 , v100
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
@ 084   ----------------------------------------
mus_hlw_vs_evil_10_084:
	.byte		N11   , Cn1 , v100
	.byte	W24
	.byte		        Bn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte	PEND
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_084
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_hlw_vs_evil_10_084
@ 087   ----------------------------------------
	.byte		N11   , Cn1 , v100
	.byte	W24
	.byte		        Bn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte		N05   , Dn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	GOTO
	 .word	mus_hlw_vs_evil_10_B1
mus_hlw_vs_evil_10_B2:
@ 088   ----------------------------------------
	.byte	FINE

@**************** Track 11 (Midi-Chn.11) ****************@

mus_hlw_vs_evil_11:
	.byte	KEYSH , mus_hlw_vs_evil_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*mus_hlw_vs_evil_mvl/mxv
	.byte		BENDR , 12
	.byte		LFOS  , 18
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W12
	.byte		N05   , Cs4 , v064
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		PAN   , c_v+47
	.byte		BEND  , c_v+48
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		BEND  , c_v-49
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
@ 005   ----------------------------------------
	.byte		PAN   , c_v-49
	.byte		BEND  , c_v+48
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		BEND  , c_v-50
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		PAN   , c_v+47
	.byte		BEND  , c_v+0
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
@ 006   ----------------------------------------
	.byte		PAN   , c_v-49
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		PAN   , c_v+47
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
@ 007   ----------------------------------------
	.byte		VOL   , 127*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v-49
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		PAN   , c_v+47
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		        Cs4 , v092
	.byte	W05
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		        Cs4 , v088
	.byte	W05
	.byte	W01
mus_hlw_vs_evil_11_B1:
@ 008   ----------------------------------------
	.byte		PAN   , c_v+62
	.byte		VOL   , 111*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , Cs5 , v080
	.byte	W06
	.byte	W18
	.byte		        Cs5 , v072
	.byte	W06
	.byte	W18
	.byte		        Cs5 , v076
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
@ 009   ----------------------------------------
	.byte		        Cs5 , v092
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
@ 010   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
@ 011   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
@ 012   ----------------------------------------
	.byte		PAN   , c_v+44
	.byte		N06   
	.byte	W06
	.byte	W18
	.byte		PAN   , c_v-29
	.byte		BEND  , c_v+19
	.byte		N07   , Gn3 , v076
	.byte	W07
	.byte	W09
	.byte		N07   
	.byte	W07
	.byte	W01
	.byte		BEND  , c_v+30
	.byte		N07   
	.byte	W07
	.byte	W08
	.byte		BEND  , c_v+44
	.byte	W01
	.byte		N07   
	.byte	W07
	.byte	W01
	.byte		BEND  , c_v+58
	.byte		N07   
	.byte	W07
	.byte	W17
@ 013   ----------------------------------------
	.byte		PAN   , c_v-20
	.byte	W24
	.byte		BEND  , c_v+5
	.byte		N07   
	.byte	W07
	.byte	W01
	.byte		N07   
	.byte	W07
	.byte	W01
	.byte		N07   
	.byte	W07
	.byte	W01
	.byte		PAN   , c_v+18
	.byte		BEND  , c_v+23
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		BEND  , c_v+28
	.byte	W04
	.byte		N07   
	.byte	W07
	.byte	W01
	.byte		BEND  , c_v+56
	.byte		N07   
	.byte	W07
	.byte	W17
@ 014   ----------------------------------------
	.byte		PAN   , c_v+26
	.byte	W24
	.byte		BEND  , c_v+6
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		BEND  , c_v+26
	.byte	W04
	.byte		N07   
	.byte	W07
	.byte	W01
	.byte		BEND  , c_v+40
	.byte		N07   
	.byte	W07
	.byte	W09
	.byte		N07   
	.byte	W02
	.byte		BEND  , c_v+53
	.byte	W05
	.byte	W01
	.byte		PAN   , c_v+47
	.byte		N07   
	.byte	W07
	.byte	W17
@ 015   ----------------------------------------
	.byte	W24
	.byte		BEND  , c_v+6
	.byte		N07   
	.byte	W07
	.byte	W01
	.byte		N07   
	.byte	W07
	.byte	W01
	.byte		N07   
	.byte	W07
	.byte	W01
	.byte		BEND  , c_v+28
	.byte		N07   
	.byte	W07
	.byte	W05
	.byte		BEND  , c_v+53
	.byte	W04
	.byte		N07   
	.byte	W07
	.byte	W01
	.byte		BEND  , c_v+59
	.byte		N07   
	.byte	W07
	.byte	W17
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W48
	.byte		VOL   , 119*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W48
@ 020   ----------------------------------------
	.byte		VOL   , 112*mus_hlw_vs_evil_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N11   , Fn4 , v064
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
@ 021   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte	W18
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W42
@ 022   ----------------------------------------
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
@ 023   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte	W18
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W42
@ 024   ----------------------------------------
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
@ 025   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte	W18
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W42
@ 026   ----------------------------------------
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
@ 027   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte	W18
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W42
@ 028   ----------------------------------------
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
@ 029   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte	W18
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W42
@ 030   ----------------------------------------
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
@ 031   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte	W18
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W60
	.byte	W01
@ 032   ----------------------------------------
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
@ 033   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte	W18
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W42
@ 034   ----------------------------------------
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
@ 035   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte	W18
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W42
@ 036   ----------------------------------------
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
@ 037   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte	W18
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
@ 038   ----------------------------------------
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W60
	.byte	W01
@ 039   ----------------------------------------
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W90
@ 040   ----------------------------------------
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
@ 041   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte	W18
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W42
@ 042   ----------------------------------------
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	W18
@ 043   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte	W18
	.byte		N11   , Fn4 
	.byte	W11
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte	W42
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
	.byte		N23   , Fn4 , v052
	.byte	W23
	.byte	W01
	.byte		        Fn4 , v060
	.byte	W23
	.byte	W01
	.byte		PAN   , c_v-32
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		        Ds5 , v060
	.byte	W05
	.byte	W01
	.byte		        Ds5 , v056
	.byte	W05
	.byte	W01
	.byte		        Ds5 , v052
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
@ 050   ----------------------------------------
	.byte		VOL   , 109*mus_hlw_vs_evil_mvl/mxv
	.byte		PAN   , c_v+47
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		PAN   , c_v-46
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		PAN   , c_v+48
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
@ 051   ----------------------------------------
	.byte		PAN   , c_v-46
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		PAN   , c_v+47
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		PAN   , c_v-47
	.byte		N05   , Ds5 , v044
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
@ 052   ----------------------------------------
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		PAN   , c_v+48
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		PAN   , c_v-48
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
@ 053   ----------------------------------------
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		        Ds5 , v044
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
@ 054   ----------------------------------------
	.byte		PAN   , c_v+47
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		PAN   , c_v-46
	.byte		BEND  , c_v+48
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		BEND  , c_v-50
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		PAN   , c_v+48
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		BEND  , c_v+48
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
@ 055   ----------------------------------------
	.byte		PAN   , c_v-46
	.byte		BEND  , c_v-49
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		PAN   , c_v+47
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		BEND  , c_v+48
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		BEND  , c_v-49
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		PAN   , c_v-47
	.byte		N05   , Ds5 , v044
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
@ 056   ----------------------------------------
	.byte		BEND  , c_v+48
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		PAN   , c_v+48
	.byte		BEND  , c_v-50
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		PAN   , c_v-48
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
@ 057   ----------------------------------------
	.byte		PAN   , c_v+48
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		        Ds5 , v044
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
@ 058   ----------------------------------------
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
@ 059   ----------------------------------------
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		        Ds5 , v044
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
@ 060   ----------------------------------------
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		N11   , Ds5 , v044
	.byte	W11
	.byte	W01
	.byte		N11   
	.byte	W11
	.byte	W01
	.byte		N05   , Ds5 , v008
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte	W01
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
	.byte		PAN   , c_v+14
	.byte		BEND  , c_v+0
	.byte	W96
@ 075   ----------------------------------------
	.byte	W24
	.byte		N02   , Dn1 , v112
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W48
	.byte	W03
@ 076   ----------------------------------------
	.byte	W48
	.byte		PAN   , c_v-37
	.byte	W24
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte		PAN   , c_v+40
	.byte	W24
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W48
	.byte	W03
@ 079   ----------------------------------------
	.byte		PAN   , c_v-53
	.byte	W48
	.byte		N11   , Dn1 , v127
	.byte	W12
	.byte		BEND  , c_v-52
	.byte		N11   
	.byte	W12
	.byte		BEND  , c_v+13
	.byte		N02   , Dn1 , v112
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
@ 080   ----------------------------------------
	.byte		PAN   , c_v+47
	.byte		BEND  , c_v+0
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W12
	.byte		N03   , Bn4 , v028
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 085   ----------------------------------------
	.byte	W12
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 086   ----------------------------------------
	.byte	W12
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 087   ----------------------------------------
	.byte	W12
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte	W24
	.byte	W03
	.byte	GOTO
	 .word	mus_hlw_vs_evil_11_B1
mus_hlw_vs_evil_11_B2:
@ 088   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_hlw_vs_evil:
	.byte	11	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_hlw_vs_evil_pri	@ Priority
	.byte	mus_hlw_vs_evil_rev	@ Reverb.

	.word	mus_hlw_vs_evil_grp

	.word	mus_hlw_vs_evil_1
	.word	mus_hlw_vs_evil_2
	.word	mus_hlw_vs_evil_3
	.word	mus_hlw_vs_evil_4
	.word	mus_hlw_vs_evil_5
	.word	mus_hlw_vs_evil_6
	.word	mus_hlw_vs_evil_7
	.word	mus_hlw_vs_evil_8
	.word	mus_hlw_vs_evil_9
	.word	mus_hlw_vs_evil_10
	.word	mus_hlw_vs_evil_11

	.end
