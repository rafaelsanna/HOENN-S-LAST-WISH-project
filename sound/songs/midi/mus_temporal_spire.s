	.include "MPlayDef.s"

	.equ	mus_temporal_spire_grp, voicegroup_fly_me_to_the_moon
	.equ	mus_temporal_spire_pri, 0
	.equ	mus_temporal_spire_rev, reverb_set+50
	.equ	mus_temporal_spire_mvl, 100
	.equ	mus_temporal_spire_key, 0
	.equ	mus_temporal_spire_tbs, 1
	.equ	mus_temporal_spire_exg, 1
	.equ	mus_temporal_spire_cmp, 1

	.section .rodata
	.global	mus_temporal_spire
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_temporal_spire_1:
	.byte	KEYSH , mus_temporal_spire_key+0
mus_temporal_spire_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 120*mus_temporal_spire_tbs/2
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		VOICE , 0
	.byte		        0
	.byte		VOL   , 101*mus_temporal_spire_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 102*mus_temporal_spire_mvl/mxv
	.byte		        110*mus_temporal_spire_mvl/mxv
	.byte		        102*mus_temporal_spire_mvl/mxv
	.byte		        110*mus_temporal_spire_mvl/mxv
	.byte		N05   , Bn2 , v056
	.byte		N05   , En5 
	.byte	W12
	.byte		N04   , En2 , v052
	.byte		N04   , An4 
	.byte	W12
	.byte		TIE   , En1 , v040
	.byte		TIE   , Bn1 , v052
	.byte		N04   , Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        Gn4 , v048
	.byte	W12
@ 001   ----------------------------------------
mus_temporal_spire_1_001:
	.byte		N05   , En5 , v048
	.byte	W12
	.byte		N04   , An4 , v044
	.byte	W12
	.byte		        Gn4 , v040
	.byte	W12
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		        En5 , v036
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte		        An4 
	.byte	W05
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W03
	.byte		N80   , Gn4 , v032, gtp3
	.byte	W01
	.byte	TEMPO , 67*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 67*mus_temporal_spire_tbs/2
	.byte	W06
	.byte	PEND
	.byte		EOT   , Bn1 
	.byte	W01
@ 002   ----------------------------------------
mus_temporal_spire_1_002:
	.byte		N72   , Bn1 , v044
	.byte		N72   , En2 
	.byte		N72   , An2 , v056
	.byte	W06
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte	W64
	.byte	W01
	.byte	PEND
	.byte		EOT   , En1 
	.byte	W01
@ 003   ----------------------------------------
mus_temporal_spire_1_003:
	.byte		N72   , An2 , v044
	.byte		N72   , Dn3 , v056
	.byte	W72
	.byte	PEND
@ 004   ----------------------------------------
mus_temporal_spire_1_004:
	.byte		N05   , An2 , v056
	.byte		N05   , Dn5 
	.byte	W12
	.byte		N04   , Dn2 , v052
	.byte		N04   , Gn4 
	.byte	W12
	.byte		TIE   , Fn1 , v044
	.byte		TIE   , Cn2 , v052
	.byte		N04   , An4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 , v048
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_temporal_spire_1_005:
	.byte		N05   , Dn5 , v048
	.byte	W12
	.byte		N04   , Gn4 , v044
	.byte	W12
	.byte		        An4 , v040
	.byte	W12
	.byte		        Dn5 , v036
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N80   , An4 , v032, gtp3
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_temporal_spire_1_006:
	.byte		N72   , Dn2 , v044
	.byte		N72   , En2 
	.byte		N72   , An2 , v056
	.byte	W36
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W05
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W06
	.byte	PEND
	.byte		EOT   , Fn1 
	.byte		        Cn2 
	.byte	W01
@ 007   ----------------------------------------
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		N72   , An2 , v044
	.byte		N72   , Dn3 , v056
	.byte	W72
@ 008   ----------------------------------------
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		VOL   , 102*mus_temporal_spire_mvl/mxv
	.byte		        110*mus_temporal_spire_mvl/mxv
	.byte		        102*mus_temporal_spire_mvl/mxv
	.byte		        110*mus_temporal_spire_mvl/mxv
	.byte		N05   , Bn2 
	.byte		N05   , En5 
	.byte	W12
	.byte		N04   , En2 , v052
	.byte		N04   , An4 
	.byte	W12
	.byte		TIE   , En1 , v040
	.byte		TIE   , Bn1 , v052
	.byte		N04   , Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        Gn4 , v048
	.byte	W12
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_001
	.byte		EOT   , Bn1 
	.byte	W01
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_002
	.byte		EOT   , En1 
	.byte	W01
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_006
	.byte		EOT   , Fn1 
	.byte		        Cn2 
	.byte	W01
@ 015   ----------------------------------------
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		N96   , An2 , v044
	.byte		TIE   , Dn3 , v056
	.byte	W72
@ 016   ----------------------------------------
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		        En1 , v064
	.byte		TIE   , En6 , v068
	.byte	W06
	.byte		N92   , Bn1 , v064, gtp3
	.byte	W06
	.byte		N66   , En2 
	.byte		N23   , An5 
	.byte	W06
	.byte		N72   , Dn2 
	.byte	W06
	.byte		N18   , An2 
	.byte		TIE   , Gn5 
	.byte	W06
	.byte		N23   , Gn2 
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		TIE   
	.byte		TIE   , An5 
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		N92   , Bn2 , v064, gtp3
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		TIE   , An2 
	.byte	W06
	.byte		N18   , Fs2 
	.byte	W06
@ 017   ----------------------------------------
	.byte		TIE   , Gn2 , v068
	.byte	W06
	.byte		N17   , En2 , v064
	.byte	W06
	.byte		TIE   , Fs2 
	.byte	W06
	.byte		N17   , Dn2 
	.byte	W06
	.byte		N60   , En2 
	.byte	W06
	.byte		N18   , Bn1 
	.byte	W06
	.byte		N54   , Dn2 
	.byte	W06
	.byte		N17   , An1 
	.byte	W06
	.byte		N30   , Bn1 
	.byte	W06
	.byte		TIE   , Gn1 
	.byte	W06
	.byte		        An1 
	.byte	W12
	.byte		EOT   , En1 
@ 018   ----------------------------------------
mus_temporal_spire_1_018:
	.byte		TIE   , En1 , v064
	.byte		TIE   , Bn2 , v056
	.byte		TIE   , En3 
	.byte		TIE   , An3 , v068
	.byte	W06
	.byte		N92   , Bn1 , v064, gtp3
	.byte	W06
	.byte		N66   , En2 
	.byte	W06
	.byte		N72   , Dn2 
	.byte	W06
	.byte	PEND
	.byte		EOT   , An2 
	.byte		N18   
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		N32   , Dn3 , v064, gtp3
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		TIE   , Bn2 
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		N12   , An2 
	.byte	W05
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N18   
	.byte	W06
@ 019   ----------------------------------------
mus_temporal_spire_1_019:
	.byte		TIE   , Gn2 , v068
	.byte		N96   , An2 , v056
	.byte		TIE   , Dn3 , v068
	.byte	W06
	.byte		N17   , En2 , v064
	.byte	W06
	.byte		TIE   , Fs2 
	.byte	W06
	.byte		N17   , Dn2 
	.byte	W06
	.byte		N66   , En2 
	.byte	W06
	.byte		N18   , Bn1 
	.byte	W06
	.byte		TIE   , Dn2 
	.byte	W06
	.byte	PEND
	.byte		EOT   , An1 
	.byte		N17   
	.byte	W06
	.byte		TIE   , Bn1 
	.byte	W06
	.byte		EOT   , Gn1 
	.byte		TIE   
	.byte	W06
	.byte		        An1 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        Fn1 
	.byte		TIE   , Dn6 , v068
	.byte	W06
	.byte		N92   , Cn2 , v064, gtp3
	.byte	W06
	.byte		EOT   , Gn5 
	.byte		N52   , Fn2 , v064, gtp1
	.byte		TIE   , Gn5 
	.byte	W06
	.byte		N60   , En2 
	.byte	W06
	.byte		EOT   , An5 
	.byte		N18   , An2 
	.byte		TIE   , An5 
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		TIE   
	.byte		TIE   , Dn5 
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		EOT   
	.byte		TIE   
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		TIE   , An2 
	.byte	W06
	.byte		N18   , Fn2 
	.byte	W06
@ 021   ----------------------------------------
mus_temporal_spire_1_021:
	.byte		TIE   , Gn2 , v068
	.byte	W06
	.byte		N17   , En2 , v064
	.byte	W06
	.byte		N72   , Fn2 
	.byte	W06
	.byte	PEND
	.byte		EOT   , Dn2 
	.byte		N17   
	.byte	W06
	.byte		N66   , En2 
	.byte	W06
	.byte		N18   , Cn2 
	.byte	W06
	.byte		TIE   , Dn2 
	.byte	W06
	.byte		EOT   , An1 
	.byte		N17   
	.byte	W06
	.byte		N30   , Cn2 
	.byte	W06
	.byte		EOT   , Gn1 
	.byte		TIE   
	.byte	W06
	.byte		        An1 
	.byte	W12
	.byte		EOT   , Fn1 
	.byte		        En3 
	.byte		        An3 
@ 022   ----------------------------------------
mus_temporal_spire_1_022:
	.byte		TIE   , Fn1 , v064
	.byte		TIE   , En3 , v056
	.byte		TIE   , An3 
	.byte		TIE   , Dn4 , v068
	.byte	W06
	.byte		N92   , Cn2 , v064, gtp3
	.byte	W06
	.byte		N52   , Fn2 , v064, gtp1
	.byte	W06
	.byte		N60   , En2 
	.byte	W06
	.byte	PEND
	.byte		EOT   , An2 
	.byte		N18   
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		N32   , Dn3 , v064, gtp3
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		TIE   
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		N12   , An2 
	.byte	W06
	.byte		N18   , Fn2 
	.byte	W06
@ 023   ----------------------------------------
mus_temporal_spire_1_023:
	.byte		TIE   , Gn2 , v068
	.byte		N96   , An2 , v056
	.byte		TIE   , Dn3 , v068
	.byte	W06
	.byte		N17   , En2 , v064
	.byte	W06
	.byte		TIE   , Fn2 
	.byte	W06
	.byte	PEND
	.byte		EOT   , Dn2 
	.byte		N17   
	.byte	W06
	.byte		N60   , En2 
	.byte	W06
	.byte		N18   , Cn2 
	.byte	W06
	.byte		N54   , Dn2 
	.byte	W06
	.byte		EOT   , An1 
	.byte		N17   
	.byte	W06
	.byte		TIE   , Cn2 
	.byte	W06
	.byte		EOT   , Gn1 
	.byte		TIE   
	.byte	W06
	.byte		        An1 
	.byte	W12
	.byte		EOT   , En1 
	.byte		        En6 
@ 024   ----------------------------------------
mus_temporal_spire_1_024:
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		TIE   , En1 , v064
	.byte		TIE   , En6 , v068
	.byte	W06
	.byte	PEND
	.byte		EOT   , Bn1 
	.byte		N92   , Bn1 , v064, gtp3
	.byte	W06
	.byte		EOT   , An5 
	.byte		N66   , En2 
	.byte		N23   , An5 
	.byte	W06
	.byte		N72   , Dn2 
	.byte	W05
	.byte		EOT   , Gn5 
	.byte	W01
	.byte		N18   , An2 
	.byte		TIE   , Gn5 
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		TIE   
	.byte		TIE   , An5 
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		N92   , Bn2 , v064, gtp3
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		TIE   , An2 
	.byte	W05
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N18   
	.byte	W06
@ 025   ----------------------------------------
mus_temporal_spire_1_025:
	.byte		TIE   , Gn2 , v068
	.byte	W06
	.byte		N17   , En2 , v064
	.byte	W06
	.byte		TIE   , Fs2 
	.byte	W06
	.byte		N17   , Dn2 
	.byte	W06
	.byte		N60   , En2 
	.byte	W06
	.byte		N18   , Bn1 
	.byte	W06
	.byte		N54   , Dn2 
	.byte	W06
	.byte	PEND
	.byte		EOT   , An1 
	.byte		N17   
	.byte	W06
	.byte		N30   , Bn1 
	.byte	W06
	.byte		EOT   , Gn1 
	.byte		TIE   
	.byte	W06
	.byte		        An1 
	.byte	W12
	.byte		EOT   , En1 
	.byte		        En3 
	.byte		        An3 
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_018
	.byte		EOT   , An2 
	.byte		N18   , An2 , v064
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		N32   , Dn3 , v064, gtp3
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		TIE   , Bn2 
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		N12   , An2 
	.byte	W05
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N18   
	.byte	W06
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_019
	.byte		EOT   , An1 
	.byte		N17   , An1 , v064
	.byte	W06
	.byte		TIE   , Bn1 
	.byte	W06
	.byte		EOT   , Gn1 
	.byte		TIE   
	.byte	W06
	.byte		        An1 
	.byte	W12
	.byte		EOT   , Fn1 
	.byte		        Dn6 
@ 028   ----------------------------------------
mus_temporal_spire_1_028:
	.byte		TIE   , Fn1 , v064
	.byte		TIE   , Dn6 , v068
	.byte	W06
	.byte	PEND
	.byte		EOT   , Cn2 
	.byte		N92   , Cn2 , v064, gtp3
	.byte	W06
	.byte		EOT   , Fn2 
	.byte		        Gn5 
	.byte		N52   , Fn2 , v064, gtp1
	.byte		TIE   , Gn5 
	.byte	W06
	.byte		N60   , En2 
	.byte	W06
	.byte		EOT   , An5 
	.byte		N18   , An2 
	.byte		TIE   , An5 
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		        Dn5 
	.byte		TIE   , Dn3 
	.byte		TIE   , Dn5 
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		EOT   
	.byte		TIE   
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		TIE   , An2 
	.byte	W06
	.byte		N18   , Fn2 
	.byte	W06
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_021
	.byte		EOT   , Dn2 
	.byte		N17   , Dn2 , v064
	.byte	W06
	.byte		N66   , En2 
	.byte	W06
	.byte		N18   , Cn2 
	.byte	W06
	.byte		TIE   , Dn2 
	.byte	W06
	.byte		EOT   , An1 
	.byte		N17   
	.byte	W06
	.byte		N30   , Cn2 
	.byte	W06
	.byte		EOT   , Gn1 
	.byte		TIE   
	.byte	W06
	.byte		        An1 
	.byte	W12
	.byte		EOT   , Fn1 
	.byte		        En3 
	.byte		        An3 
	.byte		        Dn4 
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_022
	.byte		EOT   , An2 
	.byte		N18   , An2 , v064
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		N32   , Dn3 , v064, gtp3
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		TIE   
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		N12   , An2 
	.byte	W06
	.byte		N18   , Fn2 
	.byte	W06
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_023
	.byte		EOT   , Dn2 
	.byte		N17   , Dn2 , v064
	.byte	W06
	.byte		N60   , En2 
	.byte	W06
	.byte		N18   , Cn2 
	.byte	W06
	.byte		N54   , Dn2 
	.byte	W06
	.byte		EOT   , An1 
	.byte		N17   
	.byte	W06
	.byte		TIE   , Cn2 
	.byte	W06
	.byte		EOT   , Gn1 
	.byte		N17   
	.byte	W06
	.byte		TIE   , An1 
	.byte	W07
	.byte		N40   , Bn3 
	.byte	W02
	.byte		N32   , Cn4 , v064, gtp1
	.byte	W01
	.byte		EOT   , Dn4 
	.byte		N24   , Dn4 , v064, gtp2
	.byte	W02
@ 032   ----------------------------------------
mus_temporal_spire_1_032:
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		N72   , Cn1 , v076
	.byte		N72   , Gn1 
	.byte		TIE   , En4 , v072
	.byte		TIE   , Bn4 , v076
	.byte	W06
	.byte	PEND
	.byte		EOT   , Bn1 
	.byte		N72   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N18   , An2 
	.byte		N08   , Dn4 
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte		TIE   , Cn4 
	.byte	W03
	.byte		        Dn4 
	.byte	W01
	.byte		        Cn4 
	.byte	W02
	.byte		EOT   , Dn3 
	.byte		N72   
	.byte		N23   , Bn3 , v072
	.byte	W06
	.byte		N17   , An2 , v076
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		N72   
	.byte		TIE   , Gn3 
	.byte	W06
	.byte		N48   , Gn2 
	.byte	W06
	.byte		N36   , An2 
	.byte		N44   , Bn3 , v076, gtp2
	.byte	W05
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N72   
	.byte	W03
	.byte		EOT   , An3 
	.byte		N03   
	.byte	W01
	.byte		N36   , Bn3 
	.byte	W02
@ 033   ----------------------------------------
mus_temporal_spire_1_033:
	.byte		TIE   , Cn1 , v076
	.byte		TIE   , Gn1 
	.byte		N32   , An3 , v072, gtp1
	.byte	W06
	.byte		N72   , Bn1 , v076
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N18   , An2 
	.byte	W06
	.byte		N23   , Gn2 
	.byte	W03
	.byte		N03   , An3 
	.byte	W01
	.byte		N84   , Bn3 , v076, gtp2
	.byte	W02
	.byte		N23   , Dn3 
	.byte		TIE   , An3 , v072
	.byte	W06
	.byte		N17   , An2 , v076
	.byte	W06
	.byte	PEND
	.byte		EOT   , En3 
	.byte		N72   , Bn2 
	.byte		N23   , En3 
	.byte	W06
	.byte		N48   , Gn2 
	.byte	W06
	.byte		N36   , An2 
	.byte		N48   , Dn3 
	.byte	W06
	.byte		N72   , Fs2 
	.byte	W06
	.byte		EOT   , An1 
@ 034   ----------------------------------------
	.byte		N72   , Dn1 
	.byte		N72   , An1 
	.byte		TIE   , En3 
	.byte		TIE   , Gn4 , v080
	.byte	W06
	.byte		N72   , Bn1 , v076
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N18   , An2 
	.byte		N08   , Fs4 
	.byte	W06
	.byte		EOT   , En4 
	.byte		N23   , Gn2 
	.byte		N40   , En4 , v076, gtp1
	.byte	W03
	.byte		N24   , Fs4 , v076, gtp3
	.byte	W01
	.byte		N36   , En4 , v076, gtp1
	.byte	W02
	.byte		EOT   , Dn4 
	.byte		N72   , Dn3 
	.byte		N32   , Dn4 , v072
	.byte	W06
	.byte		N17   , An2 , v076
	.byte	W06
	.byte		N72   , Bn2 
	.byte		N90   , Bn3 , v076, gtp1
	.byte	W06
	.byte		N48   , Gn2 
	.byte	W06
	.byte		N36   , An2 
	.byte		N44   , Fs4 , v076, gtp2
	.byte	W06
	.byte		N72   , Fs2 
	.byte	W03
	.byte		        Dn4 , v076, gtp1
	.byte	W01
	.byte		N36   , Fs4 
	.byte	W02
@ 035   ----------------------------------------
	.byte		TIE   , Dn1 
	.byte		TIE   , An1 
	.byte		N32   , En4 , v072, gtp1
	.byte	W06
	.byte		N72   , Bn1 , v076
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N18   , An2 
	.byte	W06
	.byte		N23   , Gn2 
	.byte	W03
	.byte		N03   , En4 
	.byte	W01
	.byte		TIE   , Fs4 
	.byte	W02
	.byte		N72   , Dn3 
	.byte		N32   , En4 , v072, gtp3
	.byte	W06
	.byte		N17   , An2 , v076
	.byte	W06
	.byte		EOT   , Bn4 
	.byte		N72   , Bn2 
	.byte		N23   , Bn4 
	.byte	W06
	.byte		N48   , Gn2 
	.byte	W06
	.byte		N36   , An2 
	.byte		TIE   , An4 
	.byte	W06
	.byte		N72   , Fs2 
	.byte	W01
	.byte		N40   , Bn3 
	.byte	W01
	.byte		EOT   , Cn4 
	.byte		EOT   
	.byte	W01
	.byte		N32   , Cn4 , v076, gtp1
	.byte	W01
	.byte		N24   , Dn4 , v076, gtp2
	.byte	W02
	.byte		EOT   , Cn1 
	.byte		        Gn1 
@ 036   ----------------------------------------
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		N72   , Cn1 
	.byte		N72   , Gn1 
	.byte		TIE   , En4 , v072
	.byte		TIE   , Bn4 , v076
	.byte	W06
	.byte		N72   , Bn1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N18   , An2 
	.byte		N08   , Dn4 
	.byte	W06
	.byte		N23   , Gn2 
	.byte		TIE   , Cn4 
	.byte	W03
	.byte		        Dn4 
	.byte	W01
	.byte		        Cn4 
	.byte	W02
	.byte		N72   , Dn3 
	.byte		N23   , Bn3 , v072
	.byte	W06
	.byte		N17   , An2 , v076
	.byte	W06
	.byte		EOT   , Gn3 
	.byte		N72   , Bn2 
	.byte		TIE   , Gn3 
	.byte	W06
	.byte		N48   , Gn2 
	.byte	W06
	.byte		N36   , An2 
	.byte		N44   , Bn3 , v076, gtp2
	.byte	W06
	.byte		N72   , Fs2 
	.byte	W02
	.byte		EOT   , An3 
	.byte	W01
	.byte		N03   
	.byte	W01
	.byte		N36   , Bn3 
	.byte	W02
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_033
	.byte		EOT   , En3 
	.byte		N72   , Bn2 , v076
	.byte		N23   , En3 
	.byte	W06
	.byte		N48   , Gn2 
	.byte	W06
	.byte		N36   , An2 
	.byte		N48   , Dn3 
	.byte	W06
	.byte		N72   , Fs2 
	.byte	W06
	.byte		EOT   , Dn1 
	.byte		        An1 
	.byte		        Gn4 
@ 038   ----------------------------------------
mus_temporal_spire_1_038:
	.byte		N72   , Dn1 , v076
	.byte		N72   , An1 
	.byte		TIE   , En3 
	.byte		TIE   , Gn4 , v080
	.byte	W06
	.byte		N72   , Bn1 , v076
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte	PEND
	.byte		EOT   , Fs4 
	.byte		N18   , An2 
	.byte		N08   , Fs4 
	.byte	W06
	.byte		EOT   , En4 
	.byte		N23   , Gn2 
	.byte		N40   , En4 , v076, gtp1
	.byte	W03
	.byte		N24   , Fs4 , v076, gtp3
	.byte	W01
	.byte		N36   , En4 , v076, gtp1
	.byte	W02
	.byte		EOT   , Dn4 
	.byte		N72   , Dn3 
	.byte		N32   , Dn4 , v072
	.byte	W06
	.byte		N17   , An2 , v076
	.byte	W06
	.byte		N72   , Bn2 
	.byte		TIE   , Bn3 
	.byte	W06
	.byte		N48   , Gn2 
	.byte	W06
	.byte		N36   , An2 
	.byte		N44   , Fs4 , v076, gtp2
	.byte	W06
	.byte		N72   , Fs2 
	.byte	W03
	.byte		TIE   , Dn4 
	.byte	W01
	.byte		N36   , Fs4 
	.byte	W02
@ 039   ----------------------------------------
mus_temporal_spire_1_039:
	.byte		TIE   , Dn1 , v076
	.byte		TIE   , An1 
	.byte		N32   , En4 , v072, gtp1
	.byte	W06
	.byte		N72   , Bn1 , v076
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N18   , An2 
	.byte	W06
	.byte		N23   , Gn2 
	.byte	W03
	.byte		N03   , En4 
	.byte	W01
	.byte		TIE   , Fs4 
	.byte	W02
	.byte		N72   , Dn3 
	.byte		N48   , En4 , v072
	.byte	W06
	.byte		N17   , An2 , v076
	.byte	W06
	.byte	PEND
	.byte		EOT   , Bn4 
	.byte		N72   , Bn2 
	.byte		N23   , Bn4 
	.byte	W06
	.byte		N48   , Gn2 
	.byte	W06
	.byte		EOT   , An4 
	.byte		N36   , An2 
	.byte		TIE   , An4 
	.byte	W06
	.byte		N72   , Fs2 
	.byte	W06
	.byte		EOT   , Cn1 
	.byte		        Gn1 
@ 040   ----------------------------------------
mus_temporal_spire_1_040:
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		N72   , Cn1 , v076
	.byte		N72   , Gn1 
	.byte		TIE   , Bn4 , v080
	.byte	W06
	.byte		N92   , Bn1 , v076, gtp3
	.byte	W06
	.byte		N66   , En2 
	.byte		N23   , En4 
	.byte	W06
	.byte		N72   , Dn2 
	.byte	W06
	.byte	PEND
	.byte		EOT   , Dn4 
	.byte		N18   , An2 
	.byte		TIE   , Dn4 
	.byte	W06
	.byte		N23   , Gn2 
	.byte	W06
	.byte		N84   , Dn3 
	.byte		TIE   , En4 
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		TIE   , Bn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N18   , Fs2 
	.byte	W02
	.byte		EOT   , Gn3 
	.byte	W01
	.byte		N32   , Gn3 , v076, gtp1
	.byte	W01
	.byte		EOT   , An3 
	.byte		N24   , An3 , v076, gtp2
	.byte	W01
	.byte		EOT   , Bn3 
	.byte	W01
@ 041   ----------------------------------------
	.byte		TIE   , Cn1 
	.byte		TIE   , Gn1 
	.byte		TIE   , Bn3 , v072
	.byte	W06
	.byte		N17   , En2 , v076
	.byte	W06
	.byte		TIE   , Fs2 
	.byte	W06
	.byte		N17   , Dn2 
	.byte	W06
	.byte		N60   , En2 
	.byte		N08   , An3 
	.byte	W06
	.byte		N18   , Bn1 
	.byte		TIE   , Gn3 
	.byte	W03
	.byte		N72   , An3 , v076, gtp3
	.byte	W01
	.byte		TIE   , Gn3 
	.byte	W02
	.byte		N54   , Dn2 
	.byte		N23   , Fs3 , v072
	.byte	W06
	.byte		EOT   , An1 
	.byte		N17   , An1 , v076
	.byte	W06
	.byte		N30   , Bn1 
	.byte		N60   , Dn3 
	.byte	W06
	.byte		TIE   , Gn1 
	.byte	W06
	.byte		N12   , An1 
	.byte		TIE   , Fs3 
	.byte	W12
	.byte		EOT   , Dn1 
	.byte		        En3 
	.byte		        An4 
@ 042   ----------------------------------------
	.byte		N72   , Dn1 
	.byte		N72   , An1 
	.byte		TIE   , En3 
	.byte		TIE   , An4 , v080
	.byte	W06
	.byte		N92   , Bn1 , v076, gtp3
	.byte	W06
	.byte		EOT   , Dn4 
	.byte		N66   , En2 
	.byte		TIE   , Dn4 
	.byte	W06
	.byte		N72   , Dn2 
	.byte	W06
	.byte		EOT   , An2 
	.byte		        En4 
	.byte		N18   , An2 
	.byte		TIE   , En4 
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte	W06
	.byte		N84   , Dn3 
	.byte		N32   , An3 , v076, gtp2
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		TIE   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W05
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N18   
	.byte	W02
	.byte		EOT   , Gn3 
	.byte		EOT   
	.byte	W01
	.byte		N32   , Gn3 , v076, gtp1
	.byte	W01
	.byte		N24   , An3 , v076, gtp2
	.byte	W02
	.byte		EOT   , Bn3 
@ 043   ----------------------------------------
	.byte		TIE   , Dn1 
	.byte		N60   , An1 
	.byte		TIE   , Bn3 , v072
	.byte	W06
	.byte		N17   , En2 , v076
	.byte	W06
	.byte		TIE   , Fs2 
	.byte	W06
	.byte		N17   , Dn2 
	.byte	W06
	.byte		N60   , En2 
	.byte		N08   , An3 
	.byte	W06
	.byte		N18   , Bn1 
	.byte		TIE   , Gn3 
	.byte	W03
	.byte		        An3 
	.byte	W01
	.byte		        Gn3 
	.byte	W02
	.byte		EOT   , Fs3 
	.byte		N54   , Dn2 
	.byte		N23   , Fs3 , v072
	.byte	W06
	.byte		N17   , An1 , v076
	.byte	W06
	.byte		N30   , Bn1 
	.byte		N60   , Dn3 
	.byte	W06
	.byte		EOT   , Gn1 
	.byte		EOT   
	.byte		N17   
	.byte	W06
	.byte		TIE   , An1 
	.byte		TIE   , Fs3 
	.byte	W12
	.byte		EOT   , Cn1 
	.byte		        Bn4 
@ 044   ----------------------------------------
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		N72   , Cn1 
	.byte		N72   , Gn1 
	.byte		TIE   , Bn4 , v080
	.byte	W06
	.byte		N92   , Bn1 , v076, gtp3
	.byte	W06
	.byte		EOT   , En4 
	.byte		N66   , En2 
	.byte		N23   , En4 
	.byte	W06
	.byte		N72   , Dn2 
	.byte	W05
	.byte		EOT   , Dn4 
	.byte	W01
	.byte		        An2 
	.byte		N18   
	.byte		TIE   , Dn4 
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte	W06
	.byte		N84   , Dn3 
	.byte		TIE   , En4 
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		TIE   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W05
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N18   
	.byte	W02
	.byte		EOT   , Gn3 
	.byte		EOT   
	.byte	W01
	.byte		N32   , Gn3 , v076, gtp1
	.byte	W01
	.byte		EOT   , An3 
	.byte		N24   , An3 , v076, gtp2
	.byte	W02
	.byte		EOT   , Bn3 
@ 045   ----------------------------------------
	.byte		TIE   , Cn1 
	.byte		TIE   , Gn1 
	.byte		TIE   , Bn3 , v072
	.byte	W06
	.byte		N17   , En2 , v076
	.byte	W06
	.byte		TIE   , Fs2 
	.byte	W06
	.byte		N17   , Dn2 
	.byte	W06
	.byte		N60   , En2 
	.byte		N08   , An3 
	.byte	W06
	.byte		N18   , Bn1 
	.byte		N40   , Gn3 , v076, gtp1
	.byte	W03
	.byte		TIE   , An3 
	.byte	W01
	.byte		N36   , Gn3 , v076, gtp1
	.byte	W02
	.byte		EOT   , Fs3 
	.byte		N54   , Dn2 
	.byte		N23   , Fs3 , v072
	.byte	W06
	.byte		EOT   , An1 
	.byte		N17   , An1 , v076
	.byte	W06
	.byte		N30   , Bn1 
	.byte		N56   , Dn3 , v076, gtp3
	.byte	W06
	.byte		TIE   , Gn1 
	.byte	W06
	.byte		N12   , An1 
	.byte		N36   , Fs3 
	.byte	W09
	.byte		EOT   , En3 
	.byte		N03   
	.byte	W01
	.byte		N24   , Fs3 , v076, gtp2
	.byte	W02
	.byte		EOT   , Dn1 
@ 046   ----------------------------------------
mus_temporal_spire_1_046:
	.byte		N72   , Dn1 , v076
	.byte		N72   , An1 
	.byte		N72   , En3 
	.byte		N68   , Gn3 , v072, gtp1
	.byte	W06
	.byte		N92   , Bn1 , v076, gtp3
	.byte	W06
	.byte		N66   , En2 , v080
	.byte	W06
	.byte		N72   , Dn2 
	.byte	W06
	.byte	PEND
	.byte		EOT   , An2 
	.byte		N18   
	.byte		N08   , Fs3 
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   , Gn2 , v084
	.byte		N40   , En3 , v080, gtp1
	.byte	W03
	.byte		N24   , Fs3 , v080, gtp3
	.byte	W01
	.byte		N36   , En3 , v080, gtp1
	.byte	W02
	.byte		N84   , Dn3 , v076
	.byte		N84   , Dn3 , v084
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		TIE   , Bn2 , v080
	.byte		TIE   , Bn2 , v084
	.byte	W06
	.byte		        Gn2 , v088
	.byte	W06
	.byte		        An2 
	.byte		N48   , Fs3 , v080
	.byte	W05
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N18   , Fs2 , v088
	.byte	W03
	.byte		N32   , Gn3 , v084, gtp1
	.byte	W01
	.byte		EOT   , An3 
	.byte		N24   , An3 , v084, gtp2
	.byte	W02
	.byte		EOT   , Bn3 
@ 047   ----------------------------------------
mus_temporal_spire_1_047:
	.byte		TIE   , Dn1 , v076
	.byte		N60   , An1 
	.byte		N72   , En3 
	.byte		TIE   , Bn3 
	.byte	W06
	.byte		N17   , En2 , v092
	.byte	W06
	.byte		TIE   , Fs2 
	.byte	W06
	.byte		N17   , Dn2 , v096
	.byte	W06
	.byte		N60   , En2 
	.byte		N08   , An3 , v084
	.byte	W06
	.byte		N18   , Bn1 , v096
	.byte		TIE   , Gn3 , v084
	.byte	W03
	.byte		        An3 
	.byte	W01
	.byte		        Gn3 
	.byte	W02
	.byte		N54   , Dn2 , v100
	.byte		N23   , Fs3 , v080
	.byte	W06
	.byte		N17   , An1 , v100
	.byte	W06
	.byte		N30   , Bn1 
	.byte		N60   , Dn3 , v088
	.byte	W06
	.byte	PEND
	.byte		EOT   , Gn1 
	.byte		EOT   
	.byte		TIE   , Gn1 , v100
	.byte	W06
	.byte		        An1 , v104
	.byte		TIE   , Fs3 , v088
	.byte	W09
	.byte		N03   , En3 , v076
	.byte	W01
	.byte		TIE   , Fs3 
	.byte	W02
	.byte		EOT   , En1 
@ 048   ----------------------------------------
@ 049   ----------------------------------------
mus_temporal_spire_1_049:
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		TIE   , En1 , v088
	.byte		TIE   , En3 , v084
	.byte	W07
	.byte		N92   , Bn1 , v116, gtp3
	.byte	W05
	.byte		N66   , En2 
	.byte	W06
	.byte		N72   , Dn2 
	.byte	W06
	.byte	PEND
	.byte		EOT   , An2 
	.byte		N18   , An2 , v080
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   , Gn2 , v076
	.byte	W06
	.byte		TIE   , Dn3 
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		EOT   
	.byte		TIE   , Bn2 , v080
	.byte	W06
	.byte		N17   , Gn2 , v076
	.byte	W06
	.byte		N80   , An2 , v076, gtp3
	.byte	W05
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N18   
	.byte	W06
@ 050   ----------------------------------------
mus_temporal_spire_1_050:
	.byte		TIE   , Gn2 , v084
	.byte	W07
	.byte		N17   , En2 , v076
	.byte	W05
	.byte		TIE   , Fs2 
	.byte	W06
	.byte		N18   , Dn2 
	.byte	W06
	.byte		N44   , En2 , v080, gtp3
	.byte	W06
	.byte		N17   , Bn1 , v076
	.byte	W06
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		N54   , Dn2 
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W02
	.byte	PEND
	.byte		EOT   , An1 
	.byte		N17   
	.byte	W02
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte		N30   , Bn1 , v080
	.byte	W05
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W01
	.byte		EOT   , Gn1 
	.byte		TIE   , Gn1 , v076
	.byte	W03
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W03
	.byte		        An1 
	.byte	W01
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W07
	.byte		EOT   , En1 
@ 051   ----------------------------------------
mus_temporal_spire_1_051:
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		TIE   , En1 , v052
	.byte		N78   , En2 , v044, gtp1
	.byte		N42   , An2 , v056
	.byte	W07
	.byte		N92   , Bn1 , v076, gtp3
	.byte	W05
	.byte		N66   , En2 
	.byte	W06
	.byte		N72   , Dn2 
	.byte	W06
	.byte		N18   , An2 , v080
	.byte	W06
	.byte	PEND
	.byte		EOT   , Gn2 
	.byte		N23   , Gn2 , v076
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		N32   , Dn3 , v076, gtp3
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		TIE   , Bn2 , v080
	.byte	W06
	.byte		N17   , Gn2 , v076
	.byte	W06
	.byte		N11   , An2 
	.byte	W05
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N18   
	.byte	W06
@ 052   ----------------------------------------
mus_temporal_spire_1_052:
	.byte		TIE   , Gn2 , v084
	.byte		N96   , An2 , v044
	.byte		TIE   , Dn3 , v056
	.byte	W07
	.byte		N17   , En2 , v076
	.byte	W05
	.byte		TIE   , Fs2 
	.byte	W06
	.byte		N18   , Dn2 
	.byte	W06
	.byte		N66   , En2 , v080
	.byte	W06
	.byte		N17   , Bn1 , v076
	.byte	W06
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		TIE   , Dn2 
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W02
	.byte	PEND
	.byte		EOT   , An1 
	.byte		N17   
	.byte	W02
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte		TIE   , Bn1 , v080
	.byte	W05
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W01
	.byte		EOT   , Gn1 
	.byte		TIE   , Gn1 , v076
	.byte	W03
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W03
	.byte		        An1 
	.byte	W01
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W06
	.byte		EOT   , Dn5 
	.byte	W01
	.byte		        Fn1 
@ 053   ----------------------------------------
mus_temporal_spire_1_053:
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		TIE   , Fn1 , v052
	.byte		N36   , Dn5 , v056
	.byte	W06
	.byte	PEND
	.byte		EOT   , Cn2 
	.byte	W01
	.byte		N92   , Cn2 , v076, gtp3
	.byte	W05
	.byte		EOT   , Fn2 
	.byte		        Gn4 
	.byte		N52   , Fn2 , v076, gtp1
	.byte		N32   , Gn4 , v052, gtp3
	.byte	W06
	.byte		N60   , En2 , v076
	.byte	W06
	.byte		EOT   , An4 
	.byte		N18   , An2 , v080
	.byte		N32   , An4 , v052, gtp3
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   , Gn2 , v076
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		TIE   
	.byte		N32   , Dn5 , v052, gtp3
	.byte	W06
	.byte		N17   , An2 , v076
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		TIE   , Bn2 , v080
	.byte		N36   , Gn4 , v052
	.byte	W06
	.byte		N17   , Gn2 , v076
	.byte	W06
	.byte		N80   , An2 , v076, gtp3
	.byte		N36   , An4 , v048
	.byte	W06
	.byte		N18   , Fn2 , v076
	.byte	W06
@ 054   ----------------------------------------
mus_temporal_spire_1_054:
	.byte		TIE   , Gn2 , v084
	.byte		N36   , Dn5 , v044
	.byte	W07
	.byte		N17   , En2 , v076
	.byte	W05
	.byte		N72   , Fn2 
	.byte		N32   , Gn4 , v040, gtp3
	.byte	W06
	.byte	PEND
	.byte		EOT   , Dn2 
	.byte		N18   , Dn2 , v076
	.byte	W06
	.byte		N66   , En2 , v080
	.byte		N32   , An4 , v036, gtp3
	.byte	W06
	.byte		N17   , Cn2 , v076
	.byte	W06
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		N32   , Dn2 , v076, gtp3
	.byte		TIE   , Dn5 , v036
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W02
	.byte		EOT   , An1 
	.byte		N17   , An1 , v076
	.byte	W02
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte		N30   , Cn2 , v080
	.byte		TIE   , Gn4 , v032
	.byte	W05
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W01
	.byte		EOT   , Gn1 
	.byte		TIE   , Gn1 , v076
	.byte	W03
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W03
	.byte		        An1 
	.byte		TIE   , An4 , v028
	.byte	W01
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W07
	.byte		EOT   , Fn1 
@ 055   ----------------------------------------
mus_temporal_spire_1_055:
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		TIE   , Fn1 , v052
	.byte		N90   , Dn2 , v044
	.byte		N42   , An2 , v056
	.byte	W07
	.byte		N92   , Cn2 , v052, gtp3
	.byte	W05
	.byte		N52   , Fn2 , v052, gtp1
	.byte	W06
	.byte		N60   , En2 
	.byte	W06
	.byte		N18   , An2 
	.byte	W06
	.byte	PEND
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		N32   , Dn3 , v052, gtp3
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		TIE   
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		N11   , An2 
	.byte	W06
	.byte		N18   , Fn2 
	.byte	W06
@ 056   ----------------------------------------
mus_temporal_spire_1_056:
	.byte		TIE   , Gn2 , v056
	.byte		N96   , An2 , v044
	.byte		TIE   , Dn3 , v056
	.byte	W07
	.byte		N17   , En2 , v052
	.byte	W05
	.byte		TIE   , Fn2 
	.byte	W06
	.byte		N18   , Dn2 
	.byte	W06
	.byte		N60   , En2 
	.byte	W06
	.byte		N17   , Cn2 
	.byte	W06
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		N54   , Dn2 
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W02
	.byte	PEND
	.byte		EOT   , An1 
	.byte		N17   
	.byte	W02
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte		TIE   , Cn2 
	.byte	W05
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W01
	.byte		EOT   , Gn1 
	.byte		TIE   
	.byte	W03
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W03
	.byte		        An1 
	.byte	W01
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W07
	.byte		EOT   , En1 
@ 057   ----------------------------------------
mus_temporal_spire_1_057:
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		TIE   , En1 , v052
	.byte		N72   , En5 , v056
	.byte	W06
	.byte	PEND
	.byte		EOT   , Bn1 
	.byte	W01
	.byte		N92   , Bn1 , v052, gtp3
	.byte	W05
	.byte		EOT   , An4 
	.byte		N66   , En2 
	.byte		N23   , An4 
	.byte	W06
	.byte		N72   , Dn2 
	.byte	W06
	.byte		EOT   , Gn4 
	.byte		N18   , An2 
	.byte		N32   , Gn4 , v052, gtp3
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		TIE   
	.byte		N12   , An4 
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		TIE   
	.byte		N36   , An4 
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		N80   , An2 , v052, gtp3
	.byte		N36   , Gn4 , v048
	.byte	W05
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N18   , Fs2 , v052
	.byte	W06
@ 058   ----------------------------------------
mus_temporal_spire_1_058:
	.byte		TIE   , Gn2 , v056
	.byte		N36   , En5 , v044
	.byte	W07
	.byte		N17   , En2 , v052
	.byte	W05
	.byte		TIE   , Fs2 
	.byte		N32   , An4 , v040, gtp3
	.byte	W06
	.byte		N18   , Dn2 , v052
	.byte	W06
	.byte		N44   , En2 , v052, gtp3
	.byte		N32   , Gn4 , v036, gtp3
	.byte	W06
	.byte		N17   , Bn1 , v052
	.byte	W06
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		N54   , Dn2 
	.byte		TIE   , En5 , v036
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W02
	.byte	PEND
	.byte		EOT   , An1 
	.byte		N17   , An1 , v052
	.byte	W02
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte		N30   , Bn1 
	.byte		TIE   , An4 , v032
	.byte	W05
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W01
	.byte		EOT   , Gn1 
	.byte		TIE   , Gn1 , v052
	.byte	W03
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W03
	.byte		        An1 
	.byte		TIE   , Gn4 , v028
	.byte	W01
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W07
	.byte		EOT   , En1 
@ 059   ----------------------------------------
mus_temporal_spire_1_059:
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		TIE   , En1 , v052
	.byte		N78   , En2 , v044, gtp1
	.byte		N42   , An2 , v056
	.byte	W07
	.byte		N92   , Bn1 , v052, gtp3
	.byte	W05
	.byte		N66   , En2 
	.byte	W06
	.byte		N72   , Dn2 
	.byte	W06
	.byte		N18   , An2 
	.byte	W06
	.byte	PEND
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		N32   , Dn3 , v052, gtp3
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		TIE   
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		N11   , An2 
	.byte	W05
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N18   
	.byte	W06
@ 060   ----------------------------------------
mus_temporal_spire_1_060:
	.byte		TIE   , Gn2 , v056
	.byte		N96   , An2 , v044
	.byte		TIE   , Dn3 , v056
	.byte	W07
	.byte		N17   , En2 , v052
	.byte	W05
	.byte		TIE   , Fs2 
	.byte	W06
	.byte		N18   , Dn2 
	.byte	W06
	.byte		N66   , En2 
	.byte	W06
	.byte		N17   , Bn1 
	.byte	W06
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		TIE   , Dn2 
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W02
	.byte	PEND
	.byte		EOT   , An1 
	.byte		N17   
	.byte	W02
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte		TIE   , Bn1 
	.byte	W05
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W01
	.byte		EOT   , Gn1 
	.byte		TIE   
	.byte	W03
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W03
	.byte		        An1 
	.byte	W01
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W06
	.byte		EOT   , Dn5 
	.byte	W01
	.byte		        Fn1 
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_053
	.byte		EOT   , Cn2 
	.byte	W01
	.byte		N92   , Cn2 , v052, gtp3
	.byte	W05
	.byte		EOT   , Fn2 
	.byte		        Gn4 
	.byte		N52   , Fn2 , v052, gtp1
	.byte		N32   , Gn4 , v052, gtp3
	.byte	W06
	.byte		N60   , En2 
	.byte	W06
	.byte		EOT   , An4 
	.byte		N18   , An2 
	.byte		N32   , An4 , v052, gtp3
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		TIE   
	.byte		N32   , Dn5 , v052, gtp3
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		TIE   
	.byte		N36   , Gn4 
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		N80   , An2 , v052, gtp3
	.byte		N36   , An4 , v048
	.byte	W06
	.byte		N18   , Fn2 , v052
	.byte	W06
@ 062   ----------------------------------------
mus_temporal_spire_1_062:
	.byte		TIE   , Gn2 , v056
	.byte		N36   , Dn5 , v044
	.byte	W07
	.byte		N17   , En2 , v052
	.byte	W05
	.byte		N72   , Fn2 
	.byte		N32   , Gn4 , v040, gtp3
	.byte	W06
	.byte	PEND
	.byte		EOT   , Dn2 
	.byte		N18   , Dn2 , v052
	.byte	W06
	.byte		N66   , En2 
	.byte		N32   , An4 , v036, gtp3
	.byte	W06
	.byte		N17   , Cn2 , v052
	.byte	W06
	.byte		N32   , Dn2 , v052, gtp3
	.byte		TIE   , Dn5 , v036
	.byte	W06
	.byte		EOT   , An1 
	.byte		N17   , An1 , v052
	.byte	W06
	.byte		N30   , Cn2 
	.byte		TIE   , Gn4 , v032
	.byte	W06
	.byte		EOT   , Gn1 
	.byte		TIE   , Gn1 , v052
	.byte	W06
	.byte		        An1 
	.byte		TIE   , An4 , v028
	.byte	W12
	.byte		EOT   , Fn1 
@ 063   ----------------------------------------
mus_temporal_spire_1_063:
	.byte		TIE   , Fn1 , v052
	.byte		N90   , Dn2 , v044
	.byte		N42   , An2 , v056
	.byte	W07
	.byte		N92   , Cn2 , v052, gtp3
	.byte	W05
	.byte		N52   , Fn2 , v052, gtp1
	.byte	W06
	.byte		N60   , En2 
	.byte	W06
	.byte		N18   , An2 
	.byte	W06
	.byte	PEND
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		N32   , Dn3 , v052, gtp3
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		TIE   
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		N11   , An2 
	.byte	W06
	.byte		N18   , Fn2 
	.byte	W06
@ 064   ----------------------------------------
	.byte		TIE   , Gn2 , v056
	.byte		N96   , An2 , v044
	.byte		TIE   , Dn3 , v056
	.byte	W07
	.byte		N17   , En2 , v052
	.byte	W05
	.byte		TIE   , Fn2 
	.byte	W06
	.byte		N18   , Dn2 
	.byte	W06
	.byte		N60   , En2 
	.byte	W06
	.byte		N17   , Cn2 
	.byte	W06
	.byte		N54   , Dn2 
	.byte	W06
	.byte		EOT   , An1 
	.byte		N17   
	.byte	W06
	.byte		TIE   , Cn2 
	.byte	W06
	.byte		EOT   , Gn1 
	.byte		TIE   
	.byte	W06
	.byte		        An1 
	.byte	W12
	.byte		EOT   , En1 
	.byte		        En6 
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_024
	.byte		EOT   , Bn1 
	.byte		N92   , Bn1 , v064, gtp3
	.byte	W06
	.byte		EOT   , An5 
	.byte		N66   , En2 
	.byte		N23   , An5 
	.byte	W06
	.byte		N72   , Dn2 
	.byte	W05
	.byte		EOT   , Gn5 
	.byte	W01
	.byte		N18   , An2 
	.byte		TIE   , Gn5 
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		TIE   
	.byte		TIE   , An5 
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		N92   , Bn2 , v064, gtp3
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		TIE   , An2 
	.byte	W05
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N18   
	.byte	W06
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_025
	.byte		EOT   , An1 
	.byte		N17   , An1 , v064
	.byte	W06
	.byte		N30   , Bn1 
	.byte	W05
	.byte		EOT   , Gn1 
	.byte	W01
	.byte		TIE   
	.byte	W06
	.byte		        An1 
	.byte	W12
	.byte		EOT   , En1 
	.byte		        En3 
	.byte		        An3 
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_018
	.byte		EOT   , An2 
	.byte		N18   , An2 , v064
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		N32   , Dn3 , v064, gtp3
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		TIE   , Bn2 
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		N12   , An2 
	.byte	W05
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N18   
	.byte	W06
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_019
	.byte		EOT   , An1 
	.byte		N17   , An1 , v064
	.byte	W06
	.byte		TIE   , Bn1 
	.byte	W06
	.byte		EOT   , Gn1 
	.byte		TIE   
	.byte	W06
	.byte		        An1 
	.byte	W12
	.byte		EOT   , Fn1 
	.byte		        Dn6 
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_028
	.byte		EOT   , Cn2 
	.byte		N92   , Cn2 , v064, gtp3
	.byte	W06
	.byte		EOT   , Fn2 
	.byte		        Gn5 
	.byte		N52   , Fn2 , v064, gtp1
	.byte		TIE   , Gn5 
	.byte	W06
	.byte		N60   , En2 
	.byte	W06
	.byte		EOT   , An5 
	.byte		N18   , An2 
	.byte		TIE   , An5 
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		        Dn5 
	.byte		TIE   , Dn3 
	.byte		TIE   , Dn5 
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		EOT   
	.byte		TIE   
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		TIE   , An2 
	.byte	W06
	.byte		N18   , Fn2 
	.byte	W06
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_021
	.byte		EOT   , Dn2 
	.byte		N17   , Dn2 , v064
	.byte	W06
	.byte		N66   , En2 
	.byte	W06
	.byte		N18   , Cn2 
	.byte	W06
	.byte		TIE   , Dn2 
	.byte	W06
	.byte		EOT   , An1 
	.byte		N17   
	.byte	W06
	.byte		N30   , Cn2 
	.byte	W06
	.byte		EOT   , Gn1 
	.byte		TIE   
	.byte	W06
	.byte		        An1 
	.byte	W11
	.byte		EOT   , Dn4 
	.byte	W01
	.byte		        Fn1 
	.byte		        En3 
	.byte		        An3 
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_022
	.byte		EOT   , An2 
	.byte		N18   , An2 , v064
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		N32   , Dn3 , v064, gtp3
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		TIE   
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		N12   , An2 
	.byte	W06
	.byte		N18   , Fn2 
	.byte	W06
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_023
	.byte		EOT   , Dn2 
	.byte		N17   , Dn2 , v064
	.byte	W06
	.byte		N60   , En2 
	.byte	W06
	.byte		N18   , Cn2 
	.byte	W06
	.byte		N54   , Dn2 
	.byte	W06
	.byte		EOT   , An1 
	.byte		N17   
	.byte	W06
	.byte		TIE   , Cn2 
	.byte	W06
	.byte		EOT   , Gn1 
	.byte		N17   
	.byte	W06
	.byte		TIE   , An1 
	.byte	W07
	.byte		EOT   , Bn3 
	.byte		N40   
	.byte	W01
	.byte		EOT   , Cn4 
	.byte		EOT   
	.byte	W01
	.byte		N32   , Cn4 , v064, gtp1
	.byte	W01
	.byte		EOT   , Dn4 
	.byte		N24   , Dn4 , v064, gtp2
	.byte	W01
	.byte		EOT   , En4 
	.byte	W01
	.byte		        Cn1 
	.byte		        Bn4 
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_032
	.byte		EOT   , Bn1 
	.byte		N72   , Bn1 , v076
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N18   , An2 
	.byte		N08   , Dn4 
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte		TIE   , Cn4 
	.byte	W03
	.byte		        Dn4 
	.byte	W01
	.byte		        Cn4 
	.byte	W02
	.byte		EOT   , Dn3 
	.byte		N72   
	.byte		N23   , Bn3 , v072
	.byte	W06
	.byte		N17   , An2 , v076
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		        Gn3 
	.byte		EOT   
	.byte		N72   , Bn2 
	.byte		TIE   , Gn3 
	.byte	W06
	.byte		N48   , Gn2 
	.byte	W06
	.byte		N36   , An2 
	.byte		N44   , Bn3 , v076, gtp2
	.byte	W05
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N72   
	.byte	W03
	.byte		EOT   , An3 
	.byte		N03   
	.byte	W01
	.byte		N36   , Bn3 
	.byte	W02
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_033
	.byte		EOT   , En3 
	.byte		N72   , Bn2 , v076
	.byte		N23   , En3 
	.byte	W06
	.byte		N48   , Gn2 
	.byte	W06
	.byte		N36   , An2 
	.byte		N48   , Dn3 
	.byte	W06
	.byte		N72   , Fs2 
	.byte	W05
	.byte		EOT   , Gn4 
	.byte	W01
	.byte		        Dn1 
	.byte		        An1 
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_038
	.byte		EOT   , Fs4 
	.byte		N18   , An2 , v076
	.byte		N08   , Fs4 
	.byte	W06
	.byte		EOT   , En4 
	.byte		N23   , Gn2 
	.byte		N40   , En4 , v076, gtp1
	.byte	W03
	.byte		N24   , Fs4 , v076, gtp3
	.byte	W01
	.byte		N36   , En4 , v076, gtp1
	.byte	W02
	.byte		EOT   , Dn4 
	.byte		N72   , Dn3 
	.byte		N32   , Dn4 , v072
	.byte	W06
	.byte		N17   , An2 , v076
	.byte	W06
	.byte		N72   , Bn2 
	.byte		TIE   , Bn3 
	.byte	W06
	.byte		N48   , Gn2 
	.byte	W06
	.byte		N36   , An2 
	.byte		N44   , Fs4 , v076, gtp2
	.byte	W06
	.byte		N72   , Fs2 
	.byte	W03
	.byte		TIE   , Dn4 
	.byte	W01
	.byte		N36   , Fs4 
	.byte	W02
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_039
	.byte		EOT   , Bn4 
	.byte		N72   , Bn2 , v076
	.byte		N23   , Bn4 
	.byte	W06
	.byte		N48   , Gn2 
	.byte	W05
	.byte		EOT   , An4 
	.byte	W01
	.byte		N36   , An2 
	.byte		TIE   , An4 
	.byte	W06
	.byte		N72   , Fs2 
	.byte	W06
	.byte		EOT   , Cn1 
	.byte		        Gn1 
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_040
	.byte		EOT   , Dn4 
	.byte		N18   , An2 , v076
	.byte		TIE   , Dn4 
	.byte	W06
	.byte		N23   , Gn2 
	.byte	W06
	.byte		N84   , Dn3 
	.byte		TIE   , En4 
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		TIE   , Bn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N18   , Fs2 
	.byte	W02
	.byte		EOT   , Gn3 
	.byte	W01
	.byte		N32   , Gn3 , v076, gtp1
	.byte	W01
	.byte		EOT   , An3 
	.byte		N24   , An3 , v076, gtp2
	.byte	W01
	.byte		EOT   , Bn3 
	.byte	W01
@ 078   ----------------------------------------
	.byte		TIE   , Cn1 
	.byte		TIE   , Gn1 
	.byte		TIE   , Bn3 , v072
	.byte	W06
	.byte		N17   , En2 , v076
	.byte	W06
	.byte		TIE   , Fs2 
	.byte	W06
	.byte		N17   , Dn2 
	.byte	W06
	.byte		N60   , En2 
	.byte		N08   , An3 
	.byte	W06
	.byte		N18   , Bn1 
	.byte		N40   , Gn3 , v076, gtp1
	.byte	W03
	.byte		TIE   , An3 
	.byte	W01
	.byte		N36   , Gn3 , v076, gtp1
	.byte	W01
	.byte		EOT   , Fs3 
	.byte	W01
	.byte		EOT   
	.byte		N54   , Dn2 
	.byte		N23   , Fs3 , v072
	.byte	W06
	.byte		EOT   , An1 
	.byte		N17   , An1 , v076
	.byte	W06
	.byte		N30   , Bn1 
	.byte		N56   , Dn3 , v076, gtp3
	.byte	W06
	.byte		TIE   , Gn1 
	.byte	W06
	.byte		N12   , An1 
	.byte		N36   , Fs3 
	.byte	W09
	.byte		EOT   , En3 
	.byte		N03   
	.byte	W01
	.byte		N24   , Fs3 , v076, gtp2
	.byte	W02
	.byte		EOT   , Dn1 
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_046
	.byte		EOT   , An2 
	.byte		N18   , An2 , v080
	.byte		N08   , Fs3 
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   , Gn2 , v084
	.byte		N40   , En3 , v080, gtp1
	.byte	W03
	.byte		N24   , Fs3 , v080, gtp3
	.byte	W01
	.byte		N36   , En3 , v080, gtp1
	.byte	W02
	.byte		N84   , Dn3 , v076
	.byte		N84   , Dn3 , v084
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		TIE   , Bn2 , v080
	.byte		TIE   , Bn2 , v084
	.byte	W06
	.byte		        Gn2 , v088
	.byte	W06
	.byte		        An2 
	.byte		N48   , Fs3 , v080
	.byte	W05
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N18   , Fs2 , v088
	.byte	W03
	.byte		N32   , Gn3 , v084, gtp1
	.byte	W01
	.byte		EOT   , An3 
	.byte		N24   , An3 , v084, gtp2
	.byte	W02
	.byte		EOT   , Bn3 
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_047
	.byte		EOT   , Gn1 
	.byte		EOT   
	.byte		TIE   , Gn1 , v100
	.byte	W06
	.byte		        An1 , v104
	.byte		TIE   , Fs3 , v088
	.byte	W09
	.byte		N03   , En3 , v076
	.byte	W01
	.byte		TIE   , Fs3 
	.byte	W02
	.byte		EOT   , En1 
@ 081   ----------------------------------------
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_049
	.byte		EOT   , An2 
	.byte		N18   , An2 , v080
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   , Gn2 , v076
	.byte	W06
	.byte		TIE   , Dn3 
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		EOT   
	.byte		TIE   , Bn2 , v080
	.byte	W06
	.byte		N17   , Gn2 , v076
	.byte	W06
	.byte		N80   , An2 , v076, gtp3
	.byte	W05
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N18   
	.byte	W06
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_050
	.byte		EOT   , An1 
	.byte		N17   , An1 , v076
	.byte	W02
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte		N30   , Bn1 , v080
	.byte	W05
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W01
	.byte		EOT   , Gn1 
	.byte		TIE   , Gn1 , v076
	.byte	W03
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W03
	.byte		        An1 
	.byte	W01
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W07
	.byte		EOT   , En1 
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_051
	.byte		EOT   , Gn2 
	.byte		N23   , Gn2 , v076
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		N32   , Dn3 , v076, gtp3
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		TIE   , Bn2 , v080
	.byte	W06
	.byte		N17   , Gn2 , v076
	.byte	W06
	.byte		N11   , An2 
	.byte	W05
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N18   
	.byte	W06
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_052
	.byte		EOT   , An1 
	.byte		N17   , An1 , v076
	.byte	W02
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte		TIE   , Bn1 , v080
	.byte	W05
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W01
	.byte		EOT   , Gn1 
	.byte		TIE   , Gn1 , v076
	.byte	W03
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W03
	.byte		        An1 
	.byte	W01
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W06
	.byte		EOT   , Dn5 
	.byte	W01
	.byte		        Fn1 
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_053
	.byte		EOT   , Cn2 
	.byte	W01
	.byte		N92   , Cn2 , v076, gtp3
	.byte	W05
	.byte		EOT   , Fn2 
	.byte		        Gn4 
	.byte		N52   , Fn2 , v076, gtp1
	.byte		N32   , Gn4 , v052, gtp3
	.byte	W06
	.byte		N60   , En2 , v076
	.byte	W06
	.byte		EOT   , An4 
	.byte		N18   , An2 , v080
	.byte		N32   , An4 , v052, gtp3
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   , Gn2 , v076
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		TIE   
	.byte		N32   , Dn5 , v052, gtp3
	.byte	W06
	.byte		N17   , An2 , v076
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		TIE   , Bn2 , v080
	.byte		N36   , Gn4 , v052
	.byte	W06
	.byte		N17   , Gn2 , v076
	.byte	W06
	.byte		N80   , An2 , v076, gtp3
	.byte		N36   , An4 , v048
	.byte	W06
	.byte		N18   , Fn2 , v076
	.byte	W06
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_054
	.byte		EOT   , Dn2 
	.byte		N18   , Dn2 , v076
	.byte	W06
	.byte		N66   , En2 , v080
	.byte		N32   , An4 , v036, gtp3
	.byte	W06
	.byte		N17   , Cn2 , v076
	.byte	W06
	.byte	TEMPO , 70*mus_temporal_spire_tbs/2
	.byte		N32   , Dn2 , v076, gtp3
	.byte		TIE   , Dn5 , v036
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W02
	.byte		EOT   , An1 
	.byte		N17   , An1 , v076
	.byte	W02
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte		N30   , Cn2 , v080
	.byte		TIE   , Gn4 , v032
	.byte	W05
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W01
	.byte		EOT   , Gn1 
	.byte		TIE   , Gn1 , v076
	.byte	W03
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W03
	.byte		        An1 
	.byte		TIE   , An4 , v028
	.byte	W01
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W07
	.byte		EOT   , Fn1 
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_055
	.byte		EOT   , Gn2 
	.byte		N23   , Gn2 , v052
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		N32   , Dn3 , v052, gtp3
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		TIE   
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		N11   , An2 
	.byte	W06
	.byte		N18   , Fn2 
	.byte	W06
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_056
	.byte		EOT   , An1 
	.byte		N17   , An1 , v052
	.byte	W02
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte		TIE   , Cn2 
	.byte	W05
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W01
	.byte		EOT   , Gn1 
	.byte		TIE   
	.byte	W03
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W03
	.byte		        An1 
	.byte	W01
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W06
	.byte		EOT   , En5 
	.byte	W01
	.byte		        En1 
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_057
	.byte		EOT   , Bn1 
	.byte	W01
	.byte		N92   , Bn1 , v052, gtp3
	.byte	W05
	.byte		EOT   , An4 
	.byte		N66   , En2 
	.byte		N23   , An4 
	.byte	W06
	.byte		N72   , Dn2 
	.byte	W06
	.byte		EOT   , Gn4 
	.byte		N18   , An2 
	.byte		N32   , Gn4 , v052, gtp3
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		TIE   
	.byte		N12   , An4 
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		TIE   
	.byte		N36   , An4 
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		N80   , An2 , v052, gtp3
	.byte		N36   , Gn4 , v048
	.byte	W05
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N18   , Fs2 , v052
	.byte	W06
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_058
	.byte		EOT   , An1 
	.byte		N17   , An1 , v052
	.byte	W02
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte		N30   , Bn1 
	.byte		TIE   , An4 , v032
	.byte	W05
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W01
	.byte		EOT   , Gn1 
	.byte		TIE   , Gn1 , v052
	.byte	W03
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W03
	.byte		        An1 
	.byte		TIE   , Gn4 , v028
	.byte	W01
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W07
	.byte		EOT   , En1 
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_059
	.byte		EOT   , Gn2 
	.byte		N23   , Gn2 , v052
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		N32   , Dn3 , v052, gtp3
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		TIE   
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		N11   , An2 
	.byte	W05
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N18   
	.byte	W06
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_060
	.byte		EOT   , An1 
	.byte		N17   , An1 , v052
	.byte	W02
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte		TIE   , Bn1 
	.byte	W05
	.byte	TEMPO , 69*mus_temporal_spire_tbs/2
	.byte	W01
	.byte		EOT   , Gn1 
	.byte		TIE   
	.byte	W03
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W03
	.byte		        An1 
	.byte	W01
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W04
	.byte	TEMPO , 68*mus_temporal_spire_tbs/2
	.byte	W06
	.byte		EOT   , Dn5 
	.byte	W01
	.byte		        Fn1 
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_053
	.byte		EOT   , Cn2 
	.byte	W01
	.byte		N92   , Cn2 , v052, gtp3
	.byte	W05
	.byte		EOT   , Fn2 
	.byte		        Gn4 
	.byte		N52   , Fn2 , v052, gtp1
	.byte		N32   , Gn4 , v052, gtp3
	.byte	W06
	.byte		N60   , En2 
	.byte	W06
	.byte		EOT   , An4 
	.byte		N18   , An2 
	.byte		N32   , An4 , v052, gtp3
	.byte	W06
	.byte		EOT   , Gn2 
	.byte		N23   
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		TIE   
	.byte		N32   , Dn5 , v052, gtp3
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		TIE   
	.byte		N36   , Gn4 
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		N80   , An2 , v052, gtp3
	.byte		N36   , An4 , v048
	.byte	W06
	.byte		N18   , Fn2 , v052
	.byte	W06
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_062
	.byte		EOT   , Dn2 
	.byte		N18   , Dn2 , v052
	.byte	W06
	.byte		N66   , En2 
	.byte		N32   , An4 , v036, gtp3
	.byte	W06
	.byte		N17   , Cn2 , v052
	.byte	W06
	.byte		N32   , Dn2 , v052, gtp3
	.byte		TIE   , Dn5 , v036
	.byte	W06
	.byte		EOT   , An1 
	.byte		N17   , An1 , v052
	.byte	W06
	.byte		N30   , Cn2 
	.byte		TIE   , Gn4 , v032
	.byte	W06
	.byte		EOT   , Gn1 
	.byte		TIE   , Gn1 , v052
	.byte	W06
	.byte		        An1 
	.byte		TIE   , An4 , v028
	.byte	W12
	.byte		EOT   , Fn1 
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_spire_1_063
	.byte		EOT   , Gn2 
	.byte		N23   , Gn2 , v052
	.byte	W06
	.byte		EOT   , Dn3 
	.byte		N32   , Dn3 , v052, gtp3
	.byte	W06
	.byte		N17   , An2 
	.byte	W06
	.byte		EOT   , Bn2 
	.byte		N92   , Bn2 , v052, gtp3
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W06
	.byte		N11   , An2 
	.byte	W06
	.byte		N18   , Fn2 
	.byte	W06
@ 097   ----------------------------------------
	.byte		N72   , Gn2 , v056
	.byte		N72   , An2 , v044
	.byte		N72   , Dn3 , v056
	.byte	W07
	.byte		N17   , En2 , v052
	.byte	W05
	.byte		N56   , Fn2 , v052, gtp3
	.byte	W06
	.byte		N18   , Dn2 
	.byte	W06
	.byte		N44   , En2 , v052, gtp3
	.byte	W06
	.byte		N17   , Cn2 
	.byte	W06
	.byte		N32   , Dn2 , v052, gtp3
	.byte	W06
	.byte		EOT   , An1 
	.byte		N17   
	.byte	W06
	.byte		N23   , Cn2 
	.byte	W06
	.byte		EOT   , Gn1 
	.byte		N17   
	.byte	W06
	.byte		N11   , An1 
	.byte	W11
	.byte		EOT   , Bn1 
	.byte		        Fs2 
	.byte		        Fs3 
	.byte		        Gn3 
	.byte		EOT   
	.byte		EOT   , Cn4 
	.byte		EOT   
	.byte		EOT   , Dn4 
	.byte		        En4 
	.byte		        Fs4 
	.byte		        Gn4 
	.byte		        An4 
	.byte		        Dn5 
	.byte		        En5 
	.byte		        Gn5 
	.byte		        An5 
	.byte	W01
	.byte		        Cn1 
	.byte		        Dn1 
	.byte		        En1 
	.byte		        Fn1 
	.byte		        En3 
	.byte		        Fs3 
	.byte		        An3 
	.byte		        Bn3 
	.byte		        Bn4 
	.byte		        Dn6 
	.byte		        En6 
	.byte	GOTO
	 .word	mus_temporal_spire_1_B1
mus_temporal_spire_1_B2:
@ 098   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_temporal_spire:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_temporal_spire_pri	@ Priority
	.byte	mus_temporal_spire_rev	@ Reverb.

	.word	mus_temporal_spire_grp

	.word	mus_temporal_spire_1

	.end
