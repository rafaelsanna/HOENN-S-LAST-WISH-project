	.include "MPlayDef.s"

	.equ	mus_temporal_tower_grp, voicegroup_fly_me_to_the_moon
	.equ	mus_temporal_tower_pri, 0
	.equ	mus_temporal_tower_rev, reverb_set+50
	.equ	mus_temporal_tower_mvl, 100
	.equ	mus_temporal_tower_key, 0
	.equ	mus_temporal_tower_tbs, 1
	.equ	mus_temporal_tower_exg, 1
	.equ	mus_temporal_tower_cmp, 1

	.section .rodata
	.global	mus_temporal_tower
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_temporal_tower_1:
	.byte	KEYSH , mus_temporal_tower_key+0
mus_temporal_tower_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 115*mus_temporal_tower_tbs/2
	.byte	TEMPO , 115*mus_temporal_tower_tbs/2
	.byte	TEMPO , 115*mus_temporal_tower_tbs/2
	.byte		VOICE , 0
	.byte		        0
	.byte		VOL   , 101*mus_temporal_tower_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 102*mus_temporal_tower_mvl/mxv
	.byte		        110*mus_temporal_tower_mvl/mxv
	.byte		        102*mus_temporal_tower_mvl/mxv
	.byte		N18   , An0 , v072
	.byte		N18   , An1 , v088
	.byte	W18
	.byte		N17   , An0 , v068
	.byte		N17   , An1 , v080
	.byte	W18
	.byte		TIE   , An0 
	.byte		TIE   , An1 , v092
	.byte	W60
@ 001   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , An0 
	.byte		        An1 
	.byte	W01
@ 002   ----------------------------------------
	.byte		N18   , An0 , v072
	.byte		N18   , An1 , v084
	.byte	W18
	.byte		N17   , An0 , v068
	.byte		N17   , An1 , v080
	.byte	W18
	.byte		TIE   , An0 
	.byte		TIE   , An1 , v092
	.byte	W56
	.byte	W02
	.byte		VOL   , 110*mus_temporal_tower_mvl/mxv
	.byte	W02
@ 003   ----------------------------------------
	.byte		N96   , Dn3 , v080
	.byte		N96   , Gn3 
	.byte		N96   , Bn3 , v096
	.byte	W92
	.byte	W03
	.byte		EOT   , An0 
	.byte		        An1 
	.byte	W01
@ 004   ----------------------------------------
mus_temporal_tower_1_004:
	.byte	TEMPO , 115*mus_temporal_tower_tbs/2
	.byte		N18   , An1 , v096
	.byte		N96   , En2 , v080
	.byte		N60   , An2 , v096, gtp1
	.byte		N84   , Dn3 , v080
	.byte		N66   , En3 , v080, gtp1
	.byte		N36   , An3 , v096, gtp1
	.byte	W12
	.byte		N06   , An4 , v088
	.byte	W06
	.byte		N17   , An0 , v080
	.byte		N17   , An1 , v092
	.byte		N06   , Dn4 , v088
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N44   , An0 , v080, gtp3
	.byte		N44   , An1 , v092, gtp3
	.byte		N06   , Dn4 , v088
	.byte	W06
	.byte		N07   , Gn3 
	.byte	W06
	.byte		N06   , An3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N04   , An1 , v076
	.byte		N10   , En3 , v084
	.byte	W04
	.byte		N03   , An1 , v076
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte	PEND
@ 005   ----------------------------------------
mus_temporal_tower_1_005:
	.byte		N18   , An1 , v096
	.byte		N96   , En2 , v080
	.byte		N60   , An2 , v092
	.byte		N96   , Dn3 , v080
	.byte		N66   , En3 
	.byte		N48   , Gn3 
	.byte		N96   , Bn3 , v096
	.byte	W12
	.byte		N05   , An4 , v088
	.byte	W06
	.byte		N17   , An0 , v080
	.byte		N17   , An1 , v092
	.byte		N05   , Dn4 , v088
	.byte	W06
	.byte		        En4 , v092
	.byte	W06
	.byte		        An3 , v088
	.byte	W06
	.byte		N56   , An0 , v080, gtp3
	.byte		N56   , An1 , v092, gtp3
	.byte		N05   , Dn4 , v088
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 , v092
	.byte	W06
	.byte		        An2 , v088
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 , v092
	.byte	W06
	.byte		        Fs3 , v088
	.byte	W06
	.byte		N11   , En3 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte		N18   , An1 , v096
	.byte		N96   , En2 , v080
	.byte		N60   , An2 , v092
	.byte		N96   , Cn3 , v080
	.byte		N96   , Fn3 
	.byte		N96   , Cn4 , v096
	.byte	W12
	.byte		N05   , An4 , v088
	.byte	W06
	.byte		N17   , An0 , v080
	.byte		N17   , An1 , v092
	.byte		N05   , Dn4 , v088
	.byte	W06
	.byte		        En4 , v092
	.byte	W06
	.byte		        An3 , v088
	.byte	W06
	.byte		N44   , An0 , v080, gtp3
	.byte		N44   , An1 , v092, gtp3
	.byte		N05   , Dn4 , v088
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 , v092
	.byte	W06
	.byte		        An2 , v088
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 , v092
	.byte	W06
	.byte		        Dn3 , v088
	.byte	W06
	.byte		N04   , An1 , v076
	.byte		N11   , En3 , v088
	.byte	W04
	.byte		N03   , An1 , v076
	.byte	W04
	.byte		N04   
	.byte	W04
@ 007   ----------------------------------------
	.byte		N18   , An1 , v096
	.byte		N96   , Gn2 , v088
	.byte		N96   , Bn2 , v080
	.byte		N48   , Gn3 
	.byte		N24   , Dn4 , v096
	.byte	W12
	.byte		N05   , An4 , v088
	.byte	W06
	.byte		N17   , An0 , v080
	.byte		N17   , An1 , v092
	.byte		N05   , Dn4 , v088
	.byte	W06
	.byte		        En4 , v092
	.byte	W06
	.byte		        An3 , v088
	.byte	W06
	.byte		N56   , An0 , v080, gtp3
	.byte		N56   , An1 , v092, gtp3
	.byte		N05   , Dn4 , v088
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 , v092
	.byte	W06
	.byte		        En3 , v088
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cn4 , v092
	.byte	W06
	.byte		        En3 , v088
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W12
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_005
@ 010   ----------------------------------------
	.byte		N18   , An1 , v096
	.byte		N96   , En2 , v080
	.byte		N96   , An2 , v096
	.byte		N96   , Cn3 , v080
	.byte		N96   , Fn3 
	.byte		N78   , Cn4 , v096
	.byte	W12
	.byte		N06   , An4 , v076
	.byte	W06
	.byte		N17   , An0 , v080
	.byte		N17   , An1 , v092
	.byte		N06   , Dn4 , v076
	.byte	W06
	.byte		        En4 , v080
	.byte	W06
	.byte		        An3 , v076
	.byte	W06
	.byte		N44   , An0 , v080, gtp3
	.byte		N44   , An1 , v092, gtp3
	.byte		N06   , Dn4 , v076
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        En3 , v076
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cn4 , v080
	.byte	W06
	.byte		        En3 , v076
	.byte	W06
	.byte		N04   , An1 
	.byte		N06   , Dn4 
	.byte	W04
	.byte		N03   , An1 
	.byte	W02
	.byte		N06   , Bn3 
	.byte	W02
	.byte		N04   , An1 
	.byte	W04
@ 011   ----------------------------------------
	.byte		N18   , An1 , v096
	.byte		N96   , Gn2 , v088
	.byte		N96   , Dn3 , v080
	.byte		N96   , Gn3 
	.byte		N01   , Bn3 , v096
	.byte		N07   , En4 , v084
	.byte	W07
	.byte		N06   , Dn4 , v076
	.byte	W05
	.byte		        Gn4 
	.byte	W06
	.byte		N17   , An0 , v080
	.byte		N17   , An1 , v092
	.byte		N06   , En4 , v076
	.byte	W06
	.byte		        An4 , v080
	.byte	W06
	.byte		        En4 , v076
	.byte	W06
	.byte		N56   , An0 , v080, gtp3
	.byte		N56   , An1 , v092, gtp3
	.byte		N06   , Bn4 , v076
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        En4 , v076
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En5 , v080
	.byte	W06
	.byte		        Bn4 , v076
	.byte	W06
	.byte		N11   , Fs5 , v088
	.byte	W11
	.byte		VOL   , 102*mus_temporal_tower_mvl/mxv
	.byte	W01
@ 012   ----------------------------------------
mus_temporal_tower_1_012:
	.byte	TEMPO , 115*mus_temporal_tower_tbs/2
	.byte		N18   , An1 , v096
	.byte		N72   , En2 , v080
	.byte		N72   , Gn2 
	.byte		N92   , Bn2 , v080, gtp3
	.byte		N48   , En3 , v096
	.byte		N18   , Bn3 
	.byte	W18
	.byte		N17   , An0 , v080
	.byte		N17   , An1 , v092
	.byte		N28   , En3 , v088, gtp1
	.byte	W18
	.byte		N56   , An0 , v080, gtp3
	.byte		N56   , An1 , v092, gtp3
	.byte		N56   , Dn3 , v088, gtp3
	.byte	W12
	.byte		N44   , En3 , v092, gtp3
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N32   , Bn4 , v088, gtp3
	.byte	W06
	.byte		N12   , En4 
	.byte	W06
	.byte		N23   , En2 , v084
	.byte		N23   , Gn2 
	.byte		N23   , An2 
	.byte		N23   , Gn3 , v096
	.byte	W06
	.byte		N17   , En4 , v088
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_temporal_tower_1_013:
	.byte		N18   , Bn1 , v096
	.byte		N72   , En2 , v080
	.byte		N72   , An2 
	.byte		N92   , En3 , v096, gtp3
	.byte		N18   , An3 , v088
	.byte		N18   , En4 , v100
	.byte	W18
	.byte		N17   , Bn0 , v080
	.byte		N17   , Bn1 , v092
	.byte		N76   , Dn3 , v088
	.byte	W18
	.byte		N56   , Bn0 , v080, gtp3
	.byte		N56   , Bn1 , v092, gtp3
	.byte		N56   , En3 , v088, gtp3
	.byte	W12
	.byte		N23   , An2 , v092
	.byte		N12   , An4 
	.byte	W12
	.byte		N32   , An4 , v088, gtp3
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W06
	.byte		N23   , En2 , v084
	.byte		N23   , Gn2 
	.byte		N23   , An2 
	.byte		N23   , Gn3 , v096
	.byte	W06
	.byte		N17   , Dn4 , v088
	.byte	W06
	.byte		N11   , En4 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
mus_temporal_tower_1_014:
	.byte		N18   , Cn2 , v096
	.byte		N72   , Gn2 , v080
	.byte		N92   , Cn3 , v096, gtp3
	.byte		N18   , Dn3 , v088
	.byte		N18   , An3 , v100
	.byte	W18
	.byte		N17   , Cn1 , v080
	.byte		N17   , Cn2 , v092
	.byte		N28   , An2 , v088, gtp1
	.byte	W18
	.byte		N56   , Cn1 , v080, gtp3
	.byte		N56   , Cn2 , v092, gtp3
	.byte		N32   , Gn2 , v088, gtp3
	.byte	W12
	.byte		N44   , An2 , v092, gtp3
	.byte		N12   , En4 
	.byte	W12
	.byte		N32   , En4 , v088, gtp3
	.byte	W06
	.byte		N12   , An3 
	.byte	W06
	.byte		N23   , En2 , v084
	.byte		N23   , Gn2 
	.byte		N23   , Bn2 
	.byte		N23   , En3 , v096
	.byte	W06
	.byte		N17   , An3 , v088
	.byte	W06
	.byte		N11   , Cn4 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_temporal_tower_1_015:
	.byte		N18   , Dn2 , v096
	.byte		N92   , Fs2 , v080, gtp3
	.byte		N72   , An2 
	.byte		N72   , Bn2 , v096
	.byte		N18   , Dn3 , v088
	.byte		N18   , An3 , v100
	.byte	W18
	.byte		N17   , Dn1 , v080
	.byte		N17   , Dn2 , v092
	.byte		N28   , Gn2 , v088, gtp1
	.byte	W18
	.byte		N56   , Dn1 , v080, gtp3
	.byte		N56   , Dn2 , v092, gtp3
	.byte		N32   , An2 , v088, gtp3
	.byte	W12
	.byte	TEMPO , 115*mus_temporal_tower_tbs/2
	.byte		N44   , Gn2 , v092, gtp3
	.byte		N12   , Dn4 
	.byte	W06
	.byte	TEMPO , 114*mus_temporal_tower_tbs/2
	.byte	W06
	.byte	TEMPO , 114*mus_temporal_tower_tbs/2
	.byte		N32   , Dn4 , v088, gtp3
	.byte	W06
	.byte	TEMPO , 114*mus_temporal_tower_tbs/2
	.byte		N12   , Gn3 
	.byte	W06
	.byte	TEMPO , 113*mus_temporal_tower_tbs/2
	.byte		N23   , An2 , v084
	.byte		N23   , Bn2 
	.byte		N23   , Dn3 
	.byte		N23   , Fs3 , v096
	.byte	W06
	.byte	TEMPO , 113*mus_temporal_tower_tbs/2
	.byte		N17   , Gn3 , v088
	.byte	W06
	.byte	TEMPO , 113*mus_temporal_tower_tbs/2
	.byte		N11   , An3 
	.byte	W06
	.byte	TEMPO , 112*mus_temporal_tower_tbs/2
	.byte	W06
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_014
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_015
@ 020   ----------------------------------------
mus_temporal_tower_1_020:
	.byte	TEMPO , 115*mus_temporal_tower_tbs/2
	.byte		N18   , An1 , v096
	.byte		TIE   , Dn2 , v080
	.byte		TIE   , En2 
	.byte		TIE   , Gn2 , v092
	.byte		TIE   , Bn2 , v088
	.byte	W12
	.byte		N06   , An4 
	.byte	W06
	.byte		N17   , An0 , v080
	.byte		N17   , An1 , v092
	.byte		N06   , Dn4 , v088
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N44   , An0 , v080, gtp3
	.byte		N44   , An1 , v092, gtp3
	.byte		N06   , Dn4 , v088
	.byte	W06
	.byte		N07   , Gn3 
	.byte	W06
	.byte		N06   , An3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N04   , An1 , v076
	.byte		N10   , En3 , v084
	.byte	W04
	.byte		N03   , An1 , v076
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte	PEND
@ 021   ----------------------------------------
mus_temporal_tower_1_021:
	.byte		N18   , An0 , v072
	.byte		N18   , An1 , v084
	.byte	W12
	.byte		N06   , An4 , v088
	.byte	W06
	.byte		N17   , An0 , v068
	.byte		N17   , An1 , v080
	.byte		N06   , Dn4 , v088
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N32   , An0 , v080, gtp3
	.byte		N56   , An1 , v092, gtp3
	.byte		N06   , Dn4 , v088
	.byte	W06
	.byte		N07   , Gn3 
	.byte	W06
	.byte	PEND
	.byte		EOT   , Dn2 
	.byte		        En2 
	.byte		        Gn2 
	.byte		        Bn2 
	.byte		N06   , An3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N11   , Bn1 , v084
	.byte		N11   , Dn2 
	.byte		N11   , Fs2 
	.byte		N11   , An2 , v096
	.byte		N06   , Gn3 , v088
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N10   , En3 , v084
	.byte	W12
@ 022   ----------------------------------------
	.byte		N18   , An1 , v096
	.byte		TIE   , Dn2 , v080
	.byte		TIE   , En2 
	.byte		TIE   , Gn2 , v096
	.byte		TIE   , Bn2 , v088
	.byte	W12
	.byte		N05   , An4 
	.byte	W06
	.byte		N17   , An0 , v080
	.byte		N17   , An1 , v092
	.byte		N05   , Dn4 , v088
	.byte	W06
	.byte		        En4 , v092
	.byte	W06
	.byte		        An3 , v088
	.byte	W06
	.byte		N44   , An0 , v080, gtp3
	.byte		N44   , An1 , v092, gtp3
	.byte		N05   , Dn4 , v088
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 , v092
	.byte	W06
	.byte		        An2 , v088
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 , v092
	.byte	W06
	.byte		        Dn3 , v088
	.byte	W06
	.byte		N04   , An1 , v076
	.byte		N11   , En3 , v088
	.byte	W04
	.byte		N03   , An1 , v076
	.byte	W04
	.byte		N04   
	.byte	W04
@ 023   ----------------------------------------
	.byte		N18   , An0 , v072
	.byte		N18   , An1 , v084
	.byte	W12
	.byte		N05   , An4 , v088
	.byte	W06
	.byte		N17   , An0 , v068
	.byte		N17   , An1 , v080
	.byte		N05   , Dn4 , v088
	.byte	W06
	.byte		        En4 , v092
	.byte	W06
	.byte		        An3 , v088
	.byte	W06
	.byte		N32   , An0 , v080, gtp3
	.byte		N56   , An1 , v092, gtp3
	.byte		N05   , Dn4 , v088
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		EOT   , Dn2 
	.byte		        En2 
	.byte		        Gn2 
	.byte		        Bn2 
	.byte		N05   , An3 , v092
	.byte	W06
	.byte		        En3 , v088
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N11   , Bn1 , v084
	.byte		N11   , Dn2 
	.byte		N11   , Fs2 
	.byte		N11   , An2 , v096
	.byte		N05   , Cn4 , v092
	.byte	W06
	.byte		        En3 , v088
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W12
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_021
	.byte		EOT   , Dn2 
	.byte		        En2 
	.byte		        Gn2 
	.byte		        Bn2 
	.byte		N06   , An3 , v088
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N11   , Bn1 , v084
	.byte		N11   , Dn2 
	.byte		N11   , Fs2 
	.byte		N11   , An2 , v096
	.byte		N06   , Gn3 , v088
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N10   , En3 , v084
	.byte	W12
@ 026   ----------------------------------------
	.byte		N18   , An1 , v096
	.byte		TIE   , Dn2 , v080
	.byte		TIE   , En2 
	.byte		TIE   , Gn2 , v096
	.byte		TIE   , Bn2 , v088
	.byte	W12
	.byte		N06   , An4 , v076
	.byte	W06
	.byte		N17   , An0 , v080
	.byte		N17   , An1 , v092
	.byte		N06   , Dn4 , v076
	.byte	W06
	.byte		        En4 , v080
	.byte	W06
	.byte		        An3 , v076
	.byte	W06
	.byte		N44   , An0 , v080, gtp3
	.byte		N44   , An1 , v092, gtp3
	.byte		N06   , Dn4 , v076
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        En3 , v076
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cn4 , v080
	.byte	W06
	.byte		        En3 , v076
	.byte	W06
	.byte		N04   , An1 
	.byte		N06   , Dn4 
	.byte	W04
	.byte		N03   , An1 
	.byte	W02
	.byte		N06   , Bn3 
	.byte	W02
	.byte		N04   , An1 
	.byte	W04
@ 027   ----------------------------------------
	.byte		N18   , An0 , v072
	.byte		N18   , An1 , v084
	.byte		N07   , En4 
	.byte	W07
	.byte		N06   , Dn4 , v076
	.byte	W05
	.byte		        Gn4 
	.byte	W06
	.byte		N17   , An0 , v068
	.byte		N17   , An1 , v080
	.byte		N06   , En4 , v076
	.byte	W06
	.byte		        An4 , v080
	.byte	W06
	.byte		        En4 , v076
	.byte	W06
	.byte		N32   , An0 , v080, gtp3
	.byte		N56   , An1 , v092, gtp3
	.byte		N06   , Bn4 , v076
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		EOT   , Dn2 
	.byte		        En2 
	.byte		        Gn2 
	.byte		        Bn2 
	.byte		N06   , Cn5 , v080
	.byte	W06
	.byte		        En4 , v076
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N11   , Bn1 , v084
	.byte		N11   , Dn2 
	.byte		N11   , Fs2 
	.byte		N11   , An2 , v096
	.byte		N06   , En5 , v080
	.byte	W06
	.byte		        Bn4 , v076
	.byte	W06
	.byte		N11   , Fs5 , v088
	.byte	W12
@ 028   ----------------------------------------
	.byte		N18   , Cn2 , v096
	.byte		N80   , Gn2 , v088, gtp3
	.byte		N48   , En3 , v100
	.byte		N48   , Bn3 , v088
	.byte		N80   , En4 , v100, gtp3
	.byte		N80   , Bn4 , v096, gtp3
	.byte	W18
	.byte		N17   , Cn1 , v080
	.byte		N17   , Cn2 , v092
	.byte	W18
	.byte		N44   , Cn1 , v080, gtp3
	.byte		N44   , Cn2 , v092, gtp3
	.byte		N44   , An4 , v088, gtp3
	.byte	W06
	.byte		N40   , Gn4 , v088, gtp1
	.byte	W06
	.byte		N44   , Bn2 , v084, gtp3
	.byte		N44   , En3 , v100, gtp3
	.byte		N44   , Gn3 , v084, gtp3
	.byte		N44   , Bn3 , v100, gtp3
	.byte		N32   , Fs4 , v092, gtp3
	.byte	W18
	.byte		N17   , Dn4 , v088
	.byte	W18
	.byte		N04   , Cn2 , v076
	.byte		N11   , Fs4 , v088
	.byte	W04
	.byte		N03   , Cn2 , v076
	.byte	W04
	.byte		N04   
	.byte	W04
@ 029   ----------------------------------------
mus_temporal_tower_1_029:
	.byte		N18   , Dn2 , v096
	.byte		N48   , Bn2 , v088
	.byte		N48   , Dn3 , v100
	.byte		N48   , Fs3 , v088
	.byte		N48   , An3 , v100
	.byte		N48   , En4 , v096
	.byte	W18
	.byte		N17   , Dn1 , v080
	.byte		N17   , Dn2 , v092
	.byte	W18
	.byte		N11   , Dn1 , v080
	.byte		N56   , Dn2 , v092, gtp3
	.byte	W12
	.byte	TEMPO , 115*mus_temporal_tower_tbs/2
	.byte		N44   , An2 , v092, gtp3
	.byte		N44   , Fs3 , v084, gtp3
	.byte		N44   , An3 , v084, gtp2
	.byte		N44   , Dn4 , v100, gtp3
	.byte		N17   , En4 , v092
	.byte	W06
	.byte	TEMPO , 114*mus_temporal_tower_tbs/2
	.byte	W06
	.byte	TEMPO , 114*mus_temporal_tower_tbs/2
	.byte	W06
	.byte	TEMPO , 114*mus_temporal_tower_tbs/2
	.byte		        Bn3 , v088
	.byte	W06
	.byte	TEMPO , 113*mus_temporal_tower_tbs/2
	.byte	W06
	.byte	TEMPO , 113*mus_temporal_tower_tbs/2
	.byte	W06
	.byte	TEMPO , 113*mus_temporal_tower_tbs/2
	.byte		N11   , An3 
	.byte	W06
	.byte	TEMPO , 112*mus_temporal_tower_tbs/2
	.byte	W03
	.byte		N48   , Bn3 , v088, gtp3
	.byte	W03
	.byte	PEND
@ 030   ----------------------------------------
mus_temporal_tower_1_030:
	.byte	TEMPO , 115*mus_temporal_tower_tbs/2
	.byte		N18   , En2 , v096
	.byte		N80   , Gn2 , v088, gtp3
	.byte		N80   , Bn2 , v088, gtp3
	.byte		N80   , En3 , v100, gtp3
	.byte		N80   , Bn5 , v100, gtp3
	.byte	W18
	.byte		N17   , En1 , v080
	.byte		N17   , En2 , v092
	.byte	W18
	.byte		N44   , En1 , v080, gtp3
	.byte		N44   , En2 , v092, gtp3
	.byte		N44   , An5 , v088, gtp3
	.byte	W06
	.byte		N40   , Gn5 , v088, gtp1
	.byte	W06
	.byte	TEMPO , 115*mus_temporal_tower_tbs/2
	.byte		TIE   , Gn3 , v084
	.byte		TIE   , Bn3 
	.byte		N96   , Dn4 
	.byte		TIE   , Gn4 , v100
	.byte		N32   , Fs5 , v092, gtp3
	.byte	W06
	.byte	TEMPO , 114*mus_temporal_tower_tbs/2
	.byte	W06
	.byte	TEMPO , 114*mus_temporal_tower_tbs/2
	.byte	W06
	.byte	TEMPO , 114*mus_temporal_tower_tbs/2
	.byte		N17   , Dn5 , v088
	.byte	W06
	.byte	TEMPO , 113*mus_temporal_tower_tbs/2
	.byte	W06
	.byte	TEMPO , 113*mus_temporal_tower_tbs/2
	.byte	W06
	.byte	TEMPO , 113*mus_temporal_tower_tbs/2
	.byte		N04   , En2 , v076
	.byte		N11   , Fs5 , v088
	.byte	W04
	.byte		N03   , En2 , v076
	.byte	W02
	.byte	TEMPO , 112*mus_temporal_tower_tbs/2
	.byte	W02
	.byte		TIE   
	.byte	W04
	.byte	PEND
@ 031   ----------------------------------------
	.byte	TEMPO , 115*mus_temporal_tower_tbs/2
	.byte		N18   , Dn2 , v096
	.byte		TIE   , An2 , v088
	.byte		N48   , Bn2 , v100
	.byte		TIE   , Fs4 , v096
	.byte		N48   , En5 
	.byte	W18
	.byte		N17   , Dn1 , v080
	.byte		N17   , Dn2 , v092
	.byte	W18
	.byte		TIE   , Dn1 , v080
	.byte		TIE   , Dn2 , v092
	.byte	W12
	.byte	TEMPO , 115*mus_temporal_tower_tbs/2
	.byte		N96   , Bn2 , v084
	.byte		TIE   , Fs3 , v100
	.byte		TIE   , Dn4 , v092
	.byte		TIE   , En5 
	.byte	W06
	.byte	TEMPO , 114*mus_temporal_tower_tbs/2
	.byte	W06
	.byte	TEMPO , 114*mus_temporal_tower_tbs/2
	.byte	W06
	.byte	TEMPO , 114*mus_temporal_tower_tbs/2
	.byte		N28   , Bn5 , v088, gtp1
	.byte	W06
	.byte	TEMPO , 113*mus_temporal_tower_tbs/2
	.byte	W06
	.byte	TEMPO , 113*mus_temporal_tower_tbs/2
	.byte	W06
	.byte	TEMPO , 113*mus_temporal_tower_tbs/2
	.byte		N92   , An5 , v088, gtp3
	.byte	W06
	.byte	TEMPO , 112*mus_temporal_tower_tbs/2
	.byte	W06
@ 032   ----------------------------------------
	.byte	TEMPO , 115*mus_temporal_tower_tbs/2
	.byte		N18   , Cn2 , v096
	.byte		N80   , Gn2 , v088, gtp3
	.byte		N48   , En3 , v100
	.byte		N80   , Bn4 , v088, gtp3
	.byte		N80   , Bn5 , v100, gtp3
	.byte	W18
	.byte		N17   , Cn1 , v080
	.byte		N17   , Cn2 , v092
	.byte	W18
	.byte		N44   , Cn1 , v080, gtp3
	.byte		N44   , Cn2 , v092, gtp3
	.byte		N44   , An4 , v088, gtp3
	.byte	W05
	.byte		EOT   , Gn4 
	.byte	W01
	.byte		N40   , Gn4 , v088, gtp1
	.byte	W06
	.byte		EOT   , Gn3 
	.byte		        Bn3 
	.byte		        Fs4 
	.byte		N44   , Bn2 , v084, gtp3
	.byte		N44   , En3 , v100, gtp3
	.byte		N44   , Gn3 , v084, gtp3
	.byte		N44   , Bn3 , v100, gtp3
	.byte		N32   , Fs4 , v092, gtp3
	.byte	W17
	.byte		EOT   , Dn4 
	.byte	W01
	.byte		N17   , Dn4 , v088
	.byte	W17
	.byte		EOT   , Dn1 
	.byte		        Dn2 
	.byte		        En2 
	.byte		        An2 
	.byte		        Fs3 
	.byte		        En5 
	.byte	W01
	.byte		N04   , Cn2 , v076
	.byte		N11   , Fs4 , v088
	.byte	W04
	.byte		N03   , Cn2 , v076
	.byte	W04
	.byte		N04   
	.byte	W04
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_029
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_030
@ 035   ----------------------------------------
	.byte	TEMPO , 115*mus_temporal_tower_tbs/2
	.byte		N18   , Dn2 , v096
	.byte		N92   , An2 , v088, gtp3
	.byte		N48   , Bn2 , v100
	.byte		N92   , Fs4 , v096, gtp3
	.byte		N48   , En5 
	.byte	W18
	.byte		N17   , Dn1 , v080
	.byte		N17   , Dn2 , v092
	.byte	W18
	.byte		N56   , Dn1 , v080, gtp3
	.byte		N56   , Dn2 , v092, gtp3
	.byte	W12
	.byte	TEMPO , 115*mus_temporal_tower_tbs/2
	.byte		N44   , Bn2 , v084, gtp3
	.byte		N44   , Fs3 , v100, gtp3
	.byte		N44   , Dn4 , v092, gtp3
	.byte		N44   , En5 , v092, gtp3
	.byte	W06
	.byte	TEMPO , 114*mus_temporal_tower_tbs/2
	.byte	W06
	.byte	TEMPO , 114*mus_temporal_tower_tbs/2
	.byte	W06
	.byte	TEMPO , 114*mus_temporal_tower_tbs/2
	.byte		N28   , Bn5 , v088, gtp1
	.byte	W06
	.byte	TEMPO , 113*mus_temporal_tower_tbs/2
	.byte	W06
	.byte	TEMPO , 113*mus_temporal_tower_tbs/2
	.byte	W06
	.byte	TEMPO , 113*mus_temporal_tower_tbs/2
	.byte		N11   , An5 
	.byte	W06
	.byte	TEMPO , 112*mus_temporal_tower_tbs/2
	.byte	W02
	.byte		EOT   , Bn3 
	.byte	W01
	.byte		N21   
	.byte	W02
	.byte		EOT   , En2 
	.byte		        Gn3 
	.byte		        Gn4 
	.byte	W01
@ 036   ----------------------------------------
	.byte	TEMPO , 115*mus_temporal_tower_tbs/2
	.byte		N18   , An1 , v096
	.byte		N48   , En3 , v080
	.byte		N72   , Gn3 , v096
	.byte		N18   , Bn5 , v100
	.byte	W18
	.byte		N17   , An0 , v080
	.byte		N17   , An1 , v092
	.byte		N28   , En3 , v088, gtp1
	.byte	W18
	.byte		N56   , An0 , v080, gtp3
	.byte		N56   , An1 , v092, gtp3
	.byte		N56   , Dn3 , v088, gtp3
	.byte	W12
	.byte		N44   , En3 , v092, gtp3
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N32   , Bn4 , v088, gtp3
	.byte	W06
	.byte		N12   , En4 
	.byte	W06
	.byte		N23   , En2 , v084
	.byte		N23   , Gn2 
	.byte		N23   , An2 
	.byte		N23   , Gn3 , v096
	.byte	W06
	.byte		N17   , En4 , v088
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W12
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_013
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_014
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_015
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_012
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_013
@ 042   ----------------------------------------
	.byte		N18   , Cn2 , v096
	.byte		N72   , Gn2 , v080
	.byte		TIE   , Cn3 , v096
	.byte		N18   , Dn3 , v088
	.byte		N18   , An3 , v100
	.byte	W18
	.byte		N17   , Cn1 , v080
	.byte		N17   , Cn2 , v092
	.byte		N28   , An2 , v088, gtp1
	.byte	W18
	.byte		TIE   , Cn1 , v080
	.byte		TIE   , Cn2 , v092
	.byte		N32   , Gn2 , v088, gtp3
	.byte	W12
	.byte		N44   , An2 , v092, gtp3
	.byte		N12   , En4 
	.byte	W12
	.byte		TIE   , En4 , v088
	.byte	W06
	.byte		N12   , An3 
	.byte	W06
	.byte		TIE   , En2 , v084
	.byte		N42   , Gn2 
	.byte		N23   , Bn2 
	.byte		TIE   , En3 , v096
	.byte	W06
	.byte		N17   , An3 , v088
	.byte	W06
	.byte		TIE   , Cn4 
	.byte	W12
@ 043   ----------------------------------------
	.byte		N18   , Dn2 , v096
	.byte		N88   , Fs2 , v080, gtp1
	.byte		N72   , An2 
	.byte		N72   , Bn2 , v096
	.byte		N72   , Dn3 , v088
	.byte		N88   , An3 , v100, gtp1
	.byte	W18
	.byte		N17   , Dn1 , v080
	.byte		N17   , Dn2 , v092
	.byte		N28   , Gn2 , v088, gtp1
	.byte	W18
	.byte		N52   , Dn1 , v080
	.byte		N52   , Dn2 , v096
	.byte		N32   , An2 , v088, gtp3
	.byte	W12
	.byte		N40   , Gn2 , v092
	.byte		N40   , Dn4 
	.byte	W18
	.byte		N23   , Gn3 , v088
	.byte	W06
	.byte		        An2 , v084
	.byte		N23   , Bn2 
	.byte		N23   , Dn3 
	.byte		N23   , Fs3 , v096
	.byte		N17   , En5 , v092
	.byte	W06
	.byte		N11   , Fs5 , v088
	.byte	W06
	.byte		        An4 
	.byte		N05   , Gn5 
	.byte	W04
	.byte		EOT   , Cn1 
	.byte		        Cn2 
	.byte		        En4 
	.byte	W01
	.byte		        En2 
	.byte		        Cn3 
	.byte		        En3 
	.byte		        Cn4 
	.byte	W01
	.byte		N05   , An5 
	.byte	W06
@ 044   ----------------------------------------
	.byte		N84   , Dn3 , v080
	.byte		N66   , En3 , v080, gtp1
	.byte		N48   , Gn3 , v080, gtp1
	.byte		TIE   , Bn3 , v096
	.byte		N36   , Bn5 
	.byte	W12
	.byte		N06   , An4 , v088
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte		N05   , An5 
	.byte	W06
	.byte		N07   , Gn3 
	.byte		N05   , Gn5 
	.byte	W06
	.byte		N06   , An3 
	.byte		N17   , Fs5 , v092
	.byte	W06
	.byte		N06   , An2 , v088
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte		N17   , Dn5 
	.byte	W06
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N10   , En3 , v084
	.byte		N11   , Fs5 , v088
	.byte	W12
@ 045   ----------------------------------------
	.byte		N18   , En5 , v096
	.byte	W12
	.byte		N06   , An4 , v088
	.byte	W06
	.byte		        Dn4 
	.byte		N17   , Bn4 
	.byte	W06
	.byte		N06   , En4 
	.byte	W06
	.byte		N17   , An3 
	.byte	W06
	.byte		N06   , Dn4 
	.byte		N01   , An4 
	.byte	W06
	.byte		N06   , Gn3 
	.byte	W06
	.byte		EOT   , Bn3 
	.byte		N06   , An3 
	.byte		N23   , Bn4 , v092
	.byte	W06
	.byte		N06   , An2 , v088
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N04   , An3 , v084
	.byte	W06
	.byte		N11   , Bn2 
	.byte		N11   , Dn3 
	.byte		N11   , Fs3 
	.byte		N11   , An3 , v096
	.byte		N05   , En5 , v092
	.byte	W06
	.byte		        Fs5 , v088
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
@ 046   ----------------------------------------
mus_temporal_tower_1_046:
	.byte		N80   , Dn3 , v080, gtp3
	.byte		N66   , En3 
	.byte		N48   , Gn3 
	.byte		TIE   , Bn3 , v096
	.byte		N36   , Bn5 
	.byte	W12
	.byte		N05   , An4 , v088
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 , v092
	.byte	W06
	.byte		        An3 , v088
	.byte	W06
	.byte		        Dn4 
	.byte		N05   , An5 
	.byte	W06
	.byte		        Gn3 
	.byte		N05   , Gn5 
	.byte	W06
	.byte		        An3 , v092
	.byte		N17   , Fs5 
	.byte	W06
	.byte		N05   , An2 , v088
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte		N17   , Dn5 
	.byte	W06
	.byte		N05   , Gn3 , v092
	.byte	W06
	.byte		        Dn3 , v088
	.byte	W06
	.byte		N11   , En3 
	.byte		N11   , Fs5 
	.byte	W12
	.byte	PEND
@ 047   ----------------------------------------
	.byte		N18   , En5 , v096
	.byte	W12
	.byte		N05   , An4 , v088
	.byte	W06
	.byte		        Dn4 
	.byte		N17   , Bn5 
	.byte	W06
	.byte		N05   , En4 , v092
	.byte	W06
	.byte		        An3 , v088
	.byte	W06
	.byte		        Dn4 
	.byte		N11   , An5 
	.byte	W06
	.byte		N05   , Gn3 
	.byte	W06
	.byte		EOT   , Bn3 
	.byte		N05   , An3 , v092
	.byte		N23   , Bn5 
	.byte	W06
	.byte		N05   , En3 , v088
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N11   , Bn2 , v084
	.byte		N11   , Dn3 
	.byte		N11   , Fs3 
	.byte		N11   , An3 , v096
	.byte		N05   , Cn4 , v092
	.byte		N05   , En5 
	.byte	W06
	.byte		        En3 , v088
	.byte		N05   , Fs5 
	.byte	W06
	.byte		N11   , Dn4 
	.byte		N05   , Gn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_046
@ 049   ----------------------------------------
	.byte		N18   , En5 , v096
	.byte	W12
	.byte		N05   , An4 , v088
	.byte	W06
	.byte		        Dn4 
	.byte		N17   , Bn4 
	.byte	W06
	.byte		N05   , En4 , v092
	.byte	W06
	.byte		        An3 , v088
	.byte	W06
	.byte		        Dn4 
	.byte		N11   , An4 
	.byte	W06
	.byte		N05   , Gn3 
	.byte	W06
	.byte		EOT   , Bn3 
	.byte		N05   , An3 , v092
	.byte		N17   , Bn4 
	.byte	W06
	.byte		N05   , An2 , v088
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N17   , An3 
	.byte		N05   , An4 
	.byte	W06
	.byte		N11   , Bn2 , v084
	.byte		N11   , Dn3 
	.byte		N11   , Fs3 
	.byte		N11   , An3 , v096
	.byte	W12
	.byte		        Gn4 , v088
	.byte	W12
@ 050   ----------------------------------------
mus_temporal_tower_1_050:
	.byte	TEMPO , 115*mus_temporal_tower_tbs/2
	.byte		TIE   , Fn1 , v088
	.byte		TIE   , Cn2 , v080
	.byte		TIE   , Gn2 
	.byte		N36   , En3 
	.byte		N88   , Gn3 , v092, gtp1
	.byte		N18   , Bn3 , v088
	.byte		N18   , En4 , v100
	.byte	W12
	.byte		N06   , An4 , v076
	.byte	W06
	.byte		N17   , En3 , v088
	.byte		N06   , Dn4 , v076
	.byte	W06
	.byte		        En4 , v080
	.byte	W06
	.byte		        An3 , v076
	.byte	W06
	.byte		N11   , Dn3 , v088
	.byte		N06   , Dn4 , v076
	.byte	W06
	.byte		N44   , Gn3 , v076, gtp3
	.byte	W06
	.byte		N17   , En3 , v092
	.byte		N40   , An3 , v080
	.byte		N12   , Bn4 , v092
	.byte	W06
	.byte		N11   , En3 , v076
	.byte	W06
	.byte		N28   , Bn3 
	.byte		N28   , Bn4 , v088
	.byte	W06
	.byte		N12   , En3 , v076
	.byte		N12   , En4 , v088
	.byte	W06
	.byte		N17   , Cn4 , v080
	.byte	W06
	.byte		N11   , En3 , v076
	.byte		N11   , En4 , v088
	.byte	W06
	.byte		N06   , Dn4 , v076
	.byte		N06   , Dn4 , v088
	.byte	W06
	.byte		        Bn3 , v076
	.byte	W06
	.byte	PEND
@ 051   ----------------------------------------
mus_temporal_tower_1_051:
	.byte		N18   , An3 , v096
	.byte		N07   , En4 , v084
	.byte	W07
	.byte		N06   , Dn4 , v076
	.byte	W05
	.byte		        Gn4 
	.byte	W06
	.byte		N17   , Dn3 , v088
	.byte		N06   , En4 , v076
	.byte	W06
	.byte		        An4 , v080
	.byte	W06
	.byte		        En4 , v076
	.byte	W06
	.byte		N11   , En3 , v088
	.byte		N06   , Bn4 , v076
	.byte	W06
	.byte		N12   , En4 
	.byte	W06
	.byte		        An4 , v092
	.byte		N32   , Cn5 , v080, gtp3
	.byte	W06
	.byte		N28   , En4 , v076
	.byte	W06
	.byte		N05   , An4 , v088
	.byte		N23   , Dn5 , v076
	.byte	W06
	.byte		N12   , Dn4 , v088
	.byte		N17   , An4 , v076
	.byte	W06
	.byte		N11   , En5 , v080
	.byte	W06
	.byte		N05   , Dn4 , v088
	.byte		N06   , Bn4 , v076
	.byte	W06
	.byte		N11   , En4 , v088
	.byte		N11   , Fs5 
	.byte	W12
	.byte	PEND
	.byte		EOT   , Fn1 
	.byte		        Cn2 
	.byte		        Gn2 
@ 052   ----------------------------------------
mus_temporal_tower_1_052:
	.byte		TIE   , Gn1 , v088
	.byte		TIE   , Dn2 , v080
	.byte		N36   , An2 
	.byte		N18   , Dn3 , v096
	.byte		TIE   , Fs3 
	.byte	W12
	.byte		N06   , An4 , v076
	.byte	W06
	.byte		N17   , An2 , v088
	.byte		N06   , Dn4 , v076
	.byte	W06
	.byte		        En4 , v080
	.byte	W06
	.byte		        An3 , v076
	.byte	W06
	.byte		N11   , Gn2 , v088
	.byte		N06   , Dn4 , v076
	.byte	W06
	.byte		N44   , Gn3 , v076, gtp3
	.byte	W06
	.byte		N40   , An2 , v092
	.byte		N17   , An3 , v080
	.byte		N12   , En4 , v092
	.byte	W06
	.byte		N11   , En3 , v076
	.byte	W06
	.byte		N28   , Bn3 
	.byte		N28   , En4 , v088
	.byte	W06
	.byte		N12   , En3 , v076
	.byte		N23   , An3 , v088
	.byte	W06
	.byte		N11   , Cn4 , v080
	.byte	W06
	.byte		        En3 , v076
	.byte		N05   , Cn4 , v088
	.byte	W06
	.byte		N11   
	.byte		N06   , Dn4 , v076
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte	PEND
@ 053   ----------------------------------------
mus_temporal_tower_1_053:
	.byte		N18   , Dn3 , v096
	.byte		N18   , En3 , v092
	.byte		N07   , En4 , v084
	.byte	W07
	.byte		N06   , Dn4 , v076
	.byte	W05
	.byte		        Gn4 
	.byte	W06
	.byte		N17   , Gn2 , v080
	.byte		N17   , En3 , v096
	.byte		N06   , En4 , v076
	.byte	W06
	.byte		        An4 , v080
	.byte	W06
	.byte		        En4 , v076
	.byte	W06
	.byte		N11   , An2 , v080
	.byte		N28   , Gn3 , v096, gtp1
	.byte		N06   , Bn4 , v076
	.byte	W06
	.byte		N12   , En4 
	.byte	W06
	.byte		N32   , Fs3 , v092, gtp3
	.byte		N12   , Dn4 
	.byte		N32   , Cn5 , v080, gtp3
	.byte	W06
	.byte		N28   , En4 , v076
	.byte	W06
	.byte		N23   , Dn4 , v088
	.byte		N23   , Dn5 , v076
	.byte	W06
	.byte		N12   , Gn3 , v088
	.byte		N12   
	.byte		N17   , An4 , v076
	.byte	W06
	.byte		N11   , En5 , v080
	.byte	W06
	.byte		N05   , Gn3 , v088
	.byte		N06   , Bn4 , v076
	.byte	W05
	.byte	PEND
	.byte		EOT   , Fs3 
	.byte	W01
	.byte		N11   , An3 , v088
	.byte		N11   
	.byte		N11   , Fs5 
	.byte	W12
	.byte		EOT   , Gn1 
	.byte		        Dn2 
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_050
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_051
	.byte		EOT   , Fn1 
	.byte		        Cn2 
	.byte		        Gn2 
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_052
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_053
	.byte		EOT   , Fs3 
	.byte	W01
	.byte		N11   , An3 , v088
	.byte		N11   
	.byte		N11   , Fs5 
	.byte	W12
	.byte		EOT   , Gn1 
	.byte		        Dn2 
@ 058   ----------------------------------------
	.byte		TIE   , An1 
	.byte		N60   , An2 , v088, gtp1
	.byte		N66   , En3 , v112, gtp1
	.byte	W12
	.byte		N06   , An4 , v088
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N07   , Gn3 
	.byte	W06
	.byte		N06   , An3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N10   , En3 , v084
	.byte	W12
@ 059   ----------------------------------------
	.byte		N96   , An0 , v080
	.byte	W12
	.byte		N06   , An4 , v088
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N07   , Gn3 
	.byte	W06
	.byte		N06   , An3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N10   , En3 , v084
	.byte	W12
	.byte		EOT   , An1 
@ 060   ----------------------------------------
mus_temporal_tower_1_060:
	.byte		N96   , An1 , v080
	.byte		N60   , An2 , v096
	.byte	W12
	.byte		N05   , An4 , v088
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 , v092
	.byte	W06
	.byte		        An3 , v088
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 , v092
	.byte	W06
	.byte		        An2 , v088
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 , v092
	.byte	W06
	.byte		        Dn3 , v088
	.byte	W06
	.byte		N11   , En3 
	.byte	W12
	.byte	PEND
@ 061   ----------------------------------------
	.byte		N96   , An0 , v080
	.byte		N96   , An1 , v096
	.byte	W12
	.byte		N05   , An4 , v088
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 , v092
	.byte	W06
	.byte		        An3 , v088
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 , v092
	.byte	W06
	.byte		        En3 , v088
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cn4 , v092
	.byte	W06
	.byte		        En3 , v088
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W12
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_060
@ 063   ----------------------------------------
	.byte		N96   , An0 , v080
	.byte		N96   , An1 , v096
	.byte	W12
	.byte		N05   , An4 , v088
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 , v092
	.byte	W06
	.byte		        An3 , v088
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 , v092
	.byte	W06
	.byte		        An2 , v088
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 , v092
	.byte	W06
	.byte		        Fs3 , v088
	.byte	W06
	.byte		N11   , En3 
	.byte	W12
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_temporal_tower_1_060
@ 065   ----------------------------------------
	.byte		N18   , An0 , v080
	.byte		N96   , An1 , v088
	.byte		N96   , Dn3 , v104
	.byte		N48   , Gn3 
	.byte		N66   , Bn3 , v112
	.byte	W12
	.byte		N06   , An4 , v076
	.byte	W06
	.byte		N17   , An0 
	.byte		N06   , Dn4 , v080
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N56   , An0 , v088, gtp3
	.byte		N06   , Dn4 , v080
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 , v084
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 066   ----------------------------------------
	.byte		N18   , An1 , v100
	.byte		N96   , Gn2 
	.byte		N96   , Dn3 , v088
	.byte		N96   , Gn3 
	.byte		N01   , Bn3 , v104
	.byte		N07   , En4 , v084
	.byte	W07
	.byte		N06   , Dn4 , v088
	.byte	W05
	.byte		        Gn4 
	.byte	W06
	.byte		N17   , An0 
	.byte		N17   , An1 , v104
	.byte		N06   , En4 , v088
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N56   , An0 , v092, gtp3
	.byte		N56   , An1 , v104, gtp3
	.byte		N06   , Bn4 , v088
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte	TEMPO , 115*mus_temporal_tower_tbs/2
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn5 
	.byte	W01
	.byte	TEMPO , 109*mus_temporal_tower_tbs/2
	.byte	W05
	.byte		        An4 
	.byte	W06
	.byte		        En5 
	.byte	W03
	.byte	TEMPO , 104*mus_temporal_tower_tbs/2
	.byte	W03
	.byte		        Bn4 
	.byte	W06
	.byte		N11   , Fs5 , v104
	.byte	W04
	.byte	TEMPO , 98*mus_temporal_tower_tbs/2
	.byte	W08
@ 067   ----------------------------------------
	.byte		N32   , En5 , v096
	.byte	W06
	.byte	TEMPO , 93*mus_temporal_tower_tbs/2
	.byte	W13
	.byte	TEMPO , 87*mus_temporal_tower_tbs/2
	.byte	W14
	.byte	TEMPO , 82*mus_temporal_tower_tbs/2
	.byte	W13
	.byte	TEMPO , 76*mus_temporal_tower_tbs/2
	.byte	W02
	.byte	TEMPO , 46*mus_temporal_tower_tbs/2
	.byte		TIE   , En0 , v056
	.byte		TIE   , En1 , v068
	.byte		TIE   , Bn1 , v060
	.byte		TIE   , En2 , v068
	.byte	W48
@ 068   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , En0 
	.byte		        En1 
	.byte		        Bn1 
	.byte		        En2 
	.byte	W01
	.byte	GOTO
	 .word	mus_temporal_tower_1_B1
mus_temporal_tower_1_B2:
@ 069   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_temporal_tower:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_temporal_tower_pri	@ Priority
	.byte	mus_temporal_tower_rev	@ Reverb.

	.word	mus_temporal_tower_grp

	.word	mus_temporal_tower_1

	.end
