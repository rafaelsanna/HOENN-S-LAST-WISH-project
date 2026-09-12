	.include "MPlayDef.s"

	.equ	mus_behelit_grp, voicegroup_diva_pop
	.equ	mus_behelit_pri, 0
	.equ	mus_behelit_rev, reverb_set+16
	.equ	mus_behelit_mvl, 90
	.equ	mus_behelit_key, 0
	.equ	mus_behelit_tbs, 1
	.equ	mus_behelit_exg, 0
	.equ	mus_behelit_cmp, 1

	.section .rodata
	.global	mus_behelit
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_behelit_1:
	.byte	KEYSH , mus_behelit_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*mus_behelit_tbs/2
	.byte		VOICE , 7
	.byte		VOL   , 96*mus_behelit_mvl/mxv
	.byte		PAN   , c_v+8
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		TIE   , Gn4 , v104
	.byte	W96
@ 005   ----------------------------------------
	.byte	W24
	.byte		EOT   
	.byte	W12
	.byte		N36   
	.byte	W48
	.byte		N12   , Fs4 
	.byte	W12
@ 006   ----------------------------------------
	.byte	W06
	.byte		        Gn4 , v100
	.byte	W18
	.byte		N06   , An4 , v104
	.byte	W18
	.byte		N18   , Gn4 
	.byte	W30
	.byte		N03   , Dn4 , v100
	.byte	W24
@ 007   ----------------------------------------
	.byte		N18   , Gn4 
	.byte	W18
	.byte		        Fs4 , v104
	.byte	W60
	.byte		N16   , An4 , v100
	.byte	W18
@ 008   ----------------------------------------
	.byte		N30   , Cn5 , v104
	.byte	W18
	.byte		N24   , Bn4 
	.byte	W30
	.byte	W01
	.byte		N16   , Bn4 , v100
	.byte	W32
	.byte	W03
	.byte		N32   , Dn4 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W24
	.byte		N18   , Fs4 , v104
	.byte	W24
	.byte		N44   , En4 , v100
	.byte	W48
@ 010   ----------------------------------------
	.byte	W06
	.byte		N14   , Fs4 , v104
	.byte	W18
	.byte		N42   , Gn4 
	.byte	W48
	.byte		N40   , Gn4 , v100
	.byte	W24
@ 011   ----------------------------------------
	.byte	W12
	.byte		N10   , An4 , v104
	.byte	W12
	.byte		N16   , Gn4 , v100
	.byte	W18
	.byte		N23   , An4 , v104
	.byte	W18
	.byte		N10   , Bn4 , v100
	.byte	W12
	.byte		N04   , Cn5 , v104
	.byte	W06
	.byte		N14   , Bn4 , v100
	.byte	W18
@ 012   ----------------------------------------
	.byte		N68   , Cn5 , v104
	.byte	W72
	.byte		N28   , Bn4 , v100
	.byte	W24
@ 013   ----------------------------------------
	.byte	W06
	.byte		N16   , An4 , v104
	.byte	W18
	.byte		N22   , An4 , v100
	.byte	W24
	.byte		        Gn4 , v104
	.byte	W24
	.byte		N32   , Gn4 , v100
	.byte	W24
@ 014   ----------------------------------------
	.byte	W12
	.byte		N60   , Fs4 , v104
	.byte	W48
	.byte		TIE   , En4 
	.byte	W36
@ 015   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte	W24
@ 016   ----------------------------------------
	.byte		N04   , En0 , v100
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte		N04   
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W06
	.byte		        Gn4 , v088
	.byte	W06
	.byte		        An4 , v092
	.byte	W06
	.byte		N03   , Gn4 , v088
	.byte	W06
	.byte		N04   , Bn4 , v092
	.byte	W06
	.byte		N03   , An4 , v088
	.byte	W06
	.byte		        Gn4 , v084
	.byte	W06
	.byte		N04   , En5 , v096
	.byte	W06
	.byte		        An4 , v088
	.byte	W06
	.byte		        Bn4 , v084
	.byte	W12
	.byte		        Gn4 , v088
	.byte	W06
	.byte		N05   , Bn4 , v092
	.byte	W06
	.byte		N04   , Gn4 , v088
	.byte	W06
	.byte		        En5 , v096
	.byte	W06
	.byte		        An4 , v088
	.byte	W06
@ 021   ----------------------------------------
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N03   , An4 , v092
	.byte	W06
	.byte		N05   , Gn4 , v088
	.byte	W06
	.byte		N03   , Bn4 , v092
	.byte	W06
	.byte		        An4 , v088
	.byte	W06
	.byte		N04   , Gn4 , v084
	.byte	W06
	.byte		        En5 , v096
	.byte	W06
	.byte		        An4 , v088
	.byte	W06
	.byte		N03   , Bn4 , v084
	.byte	W12
	.byte		        Gn4 , v088
	.byte	W06
	.byte		N04   , Bn4 , v092
	.byte	W06
	.byte		        Gn4 , v088
	.byte	W06
	.byte		N03   , En5 , v096
	.byte	W06
	.byte		N05   , An4 , v088
	.byte	W06
@ 022   ----------------------------------------
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N03   , An4 , v092
	.byte	W06
	.byte		        Gn4 , v088
	.byte	W06
	.byte		N05   , Bn4 , v092
	.byte	W06
	.byte		N04   , An4 , v088
	.byte	W06
	.byte		N03   , Gn4 , v084
	.byte	W06
	.byte		        En5 , v096
	.byte	W06
	.byte		N04   , An4 , v088
	.byte	W06
	.byte		N03   , Bn4 , v084
	.byte	W12
	.byte		N05   , Gn4 , v088
	.byte	W06
	.byte		N04   , Bn4 , v092
	.byte	W06
	.byte		        Gn4 , v088
	.byte	W06
	.byte		N05   , En5 , v096
	.byte	W06
	.byte		N04   , An4 , v088
	.byte	W06
@ 023   ----------------------------------------
	.byte	W06
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N03   , An4 , v092
	.byte	W06
	.byte		        Gn4 , v088
	.byte	W06
	.byte		        Bn4 , v092
	.byte	W06
	.byte		        An4 , v088
	.byte	W06
	.byte		N05   , Gn4 , v084
	.byte	W06
	.byte		N03   , En5 , v096
	.byte	W06
	.byte		        An4 , v088
	.byte	W06
	.byte		        Bn4 , v084
	.byte	W12
	.byte		N04   , Gn4 , v088
	.byte	W06
	.byte		        Bn4 , v092
	.byte	W06
	.byte		        Gn4 , v088
	.byte	W06
	.byte		        En5 , v096
	.byte	W06
	.byte		        An4 , v088
	.byte	W06
@ 024   ----------------------------------------
	.byte		TIE   , Gn4 , v104
	.byte		N72   , Bn4 , v108
	.byte		N78   , En5 
	.byte		TIE   , Gn5 
	.byte	W96
@ 025   ----------------------------------------
	.byte	W11
	.byte		EOT   , Gn4 
	.byte	W02
	.byte		        Gn5 
	.byte	W23
	.byte		N36   , Gn4 
	.byte		N32   , En5 
	.byte		N36   , Gn5 
	.byte	W48
	.byte		N12   , Fs4 
	.byte		N12   , Fs5 
	.byte	W12
@ 026   ----------------------------------------
	.byte	W06
	.byte		        Gn4 , v104
	.byte		N12   , Gn5 
	.byte	W18
	.byte		N06   , An4 , v108
	.byte		N06   , An5 
	.byte	W18
	.byte		N28   , Gn4 
	.byte		N28   , Gn5 
	.byte	W01
	.byte		N24   , En5 
	.byte	W28
	.byte	W01
	.byte		N10   , Dn4 , v104
	.byte		N10   , Dn5 
	.byte	W24
@ 027   ----------------------------------------
	.byte		N18   , Gn4 
	.byte		N17   , En5 , v108
	.byte		N18   , Gn5 , v104
	.byte	W18
	.byte		        Fs4 , v108
	.byte		N17   , Dn5 
	.byte		N18   , Fs5 
	.byte	W60
	.byte		N16   , An4 , v104
	.byte		N16   , An5 
	.byte	W18
@ 028   ----------------------------------------
	.byte		N15   , Cn5 , v108
	.byte		N16   , En5 
	.byte		N16   , An5 
	.byte		N17   , Cn6 
	.byte	W18
	.byte		N24   , Bn4 
	.byte		N22   , En5 
	.byte		N22   , Gn5 
	.byte		N24   , Bn5 
	.byte	W30
	.byte	W01
	.byte		N16   , Bn4 , v104
	.byte		N16   , Bn5 
	.byte	W32
	.byte	W03
	.byte		N19   , Dn4 , v100
	.byte		N28   , Dn5 , v104
	.byte	W12
@ 029   ----------------------------------------
	.byte	W24
	.byte		N19   , Fs4 , v108
	.byte		N14   , Fs5 
	.byte	W23
	.byte		N42   , En4 
	.byte	W01
	.byte		N40   , Gn4 
	.byte		N44   , En5 
	.byte	W01
	.byte		        Bn4 
	.byte	W44
	.byte	W03
@ 030   ----------------------------------------
	.byte	W06
	.byte		N12   , Fs4 
	.byte		N12   , Fs5 
	.byte	W18
	.byte		N32   , Gn4 
	.byte		N24   , En5 
	.byte		N32   , Gn5 
	.byte	W48
	.byte		N23   , Gn4 , v104
	.byte		N24   , En5 
	.byte		N19   , Gn5 
	.byte	W24
@ 031   ----------------------------------------
	.byte	W13
	.byte		N07   , An4 , v108
	.byte		N10   , An5 
	.byte	W11
	.byte		N14   , Gn4 , v104
	.byte		N14   , En5 
	.byte		N13   , Gn5 
	.byte	W19
	.byte		        An4 , v108
	.byte		N15   , An5 
	.byte	W17
	.byte		N08   , Bn4 , v104
	.byte		N08   , Gn5 
	.byte		N08   , Bn5 
	.byte	W12
	.byte		N03   , Cn5 , v080
	.byte		N03   , Cn6 
	.byte	W06
	.byte		N09   , Bn4 , v104
	.byte		N13   , Gn5 
	.byte		N13   , Bn5 
	.byte	W18
@ 032   ----------------------------------------
	.byte		N40   , Cn5 , v108
	.byte		N60   , En5 
	.byte		N54   , Gn5 
	.byte		N56   , Cn6 
	.byte	W72
	.byte		N17   , Bn4 , v104
	.byte		N24   , Gn5 , v108
	.byte		N16   , Bn5 , v104
	.byte	W24
@ 033   ----------------------------------------
	.byte	W06
	.byte		N14   , An4 , v108
	.byte		N14   , Fs5 
	.byte		N13   , An5 
	.byte	W18
	.byte		N21   , An4 , v104
	.byte		N20   , Dn5 
	.byte		N16   , Fs5 
	.byte		N17   , An5 
	.byte	W24
	.byte		N16   , Gn4 , v108
	.byte		N13   , Dn5 
	.byte	W01
	.byte		N15   , Gn5 
	.byte	W23
	.byte		N28   , Gn4 , v104
	.byte		N19   , Bn4 
	.byte		N21   , Dn5 
	.byte		N28   , Gn5 
	.byte	W24
@ 034   ----------------------------------------
	.byte	W12
	.byte		N36   , Fs4 , v108
	.byte		N36   , Bn4 , v104
	.byte		N36   , Dn5 
	.byte		N40   , Fs5 , v108
	.byte	W48
	.byte		TIE   , En4 
	.byte		TIE   , Gn4 
	.byte		TIE   , Bn4 
	.byte		TIE   , En5 
	.byte	W36
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W36
	.byte		EOT   , En4 
	.byte	W21
	.byte		        Gn4 
	.byte	W11
	.byte		        Bn4 
	.byte	W08
	.byte		        En5 
	.byte	W20
@ 037   ----------------------------------------
	.byte		TIE   , En4 
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W54
	.byte		EOT   
	.byte	W42
@ 040   ----------------------------------------
	.byte		TIE   , Gn3 , v104
	.byte		TIE   , Bn3 , v108
	.byte		TIE   , En4 
	.byte		TIE   , Gn4 
	.byte	W96
@ 041   ----------------------------------------
	.byte	W11
	.byte		EOT   , Gn3 
	.byte	W02
	.byte		        Gn4 
	.byte	W09
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W08
	.byte		N36   , Gn3 
	.byte		N32   , En4 
	.byte		N36   , Gn4 
	.byte	W48
	.byte		N12   , Fs3 
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 042   ----------------------------------------
	.byte	W06
	.byte		        Gn3 , v104
	.byte		N12   , En4 
	.byte		N12   , Gn4 
	.byte	W18
	.byte		N06   , An3 , v108
	.byte		N06   , Fs4 
	.byte		N06   , An4 
	.byte	W17
	.byte		N24   , En4 
	.byte	W01
	.byte		N28   , Gn3 
	.byte		N28   , Gn4 
	.byte	W30
	.byte		N10   , Dn3 , v104
	.byte		N11   , Bn3 , v108
	.byte		N10   , Dn4 , v104
	.byte	W24
@ 043   ----------------------------------------
	.byte		N18   , Gn3 
	.byte		N17   , En4 , v108
	.byte		N18   , Gn4 , v104
	.byte	W18
	.byte		N48   , Fs3 , v108
	.byte		N44   , Dn4 
	.byte		N48   , Fs4 
	.byte	W60
	.byte		N16   , An3 , v104
	.byte		N16   , An4 
	.byte	W01
	.byte		N13   , Fs4 , v108
	.byte	W17
@ 044   ----------------------------------------
	.byte		N15   , Cn4 
	.byte		N16   , En4 
	.byte		N16   , An4 
	.byte		N17   , Cn5 
	.byte	W18
	.byte		N24   , Bn3 
	.byte		N22   , En4 
	.byte		N22   , Gn4 
	.byte		N24   , Bn4 
	.byte	W30
	.byte		N13   , Gn4 
	.byte	W01
	.byte		N16   , Bn3 , v104
	.byte		N16   , Bn4 
	.byte	W32
	.byte	W03
	.byte		N19   , Dn3 , v100
	.byte		N28   , Dn4 , v104
	.byte	W12
@ 045   ----------------------------------------
	.byte	W24
	.byte		N19   , Fs3 , v108
	.byte		N13   , Dn4 
	.byte		N14   , Fs4 
	.byte	W23
	.byte		N32   , En3 
	.byte	W01
	.byte		N40   , Gn3 
	.byte		N44   , En4 
	.byte	W01
	.byte		        Bn3 
	.byte	W44
	.byte	W03
@ 046   ----------------------------------------
	.byte	W06
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W18
	.byte		N32   , Gn3 
	.byte		N24   , En4 
	.byte		N32   , Gn4 
	.byte	W48
	.byte		N23   , Gn3 , v104
	.byte		N24   , En4 
	.byte		N19   , Gn4 
	.byte	W24
@ 047   ----------------------------------------
	.byte	W13
	.byte		N07   , An3 , v108
	.byte		N10   , An4 
	.byte	W11
	.byte		N14   , Gn3 , v104
	.byte		N14   , En4 
	.byte		N13   , Gn4 
	.byte	W19
	.byte		        An3 , v108
	.byte		N15   , An4 
	.byte	W17
	.byte		N08   , Bn3 , v104
	.byte		N08   , Gn4 
	.byte		N08   , Bn4 
	.byte	W12
	.byte		N03   , Cn4 , v084
	.byte		N03   , Cn5 
	.byte	W06
	.byte		N09   , Bn3 , v104
	.byte		N13   , Gn4 
	.byte		N13   , Bn4 
	.byte	W18
@ 048   ----------------------------------------
	.byte		N40   , Cn4 , v108
	.byte		N60   , En4 
	.byte		N54   , Gn4 
	.byte		N56   , Cn5 
	.byte	W72
	.byte		N17   , Bn3 , v104
	.byte		N21   , En4 , v108
	.byte		N24   , Gn4 
	.byte		N16   , Bn4 , v104
	.byte	W24
@ 049   ----------------------------------------
	.byte	W06
	.byte		N14   , An3 , v108
	.byte		N14   , Fs4 
	.byte		N13   , An4 
	.byte	W18
	.byte		N21   , An3 , v104
	.byte		N20   , Dn4 
	.byte		N16   , Fs4 
	.byte		N17   , An4 
	.byte	W24
	.byte		N16   , Gn3 , v108
	.byte		N13   , Dn4 
	.byte	W01
	.byte		N15   , Gn4 
	.byte	W23
	.byte		N28   , Gn3 , v104
	.byte		N19   , Bn3 
	.byte		N21   , Dn4 
	.byte		N28   , Gn4 
	.byte	W24
@ 050   ----------------------------------------
	.byte	W12
	.byte		N36   , Fs3 , v108
	.byte		N36   , Bn3 , v104
	.byte		N36   , Dn4 
	.byte		N40   , Fs4 , v108
	.byte	W48
	.byte		N16   , En3 
	.byte		TIE   , Gn3 
	.byte		TIE   , Bn3 
	.byte		TIE   , En4 
	.byte	W36
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte		EOT   , Gn3 
	.byte	W11
	.byte		        Bn3 
	.byte	W08
	.byte		        En4 
	.byte	W40
@ 054   ----------------------------------------
	.byte		N04   , En4 , v088
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 , v092
	.byte	W06
	.byte		N03   , Gn4 , v088
	.byte	W06
	.byte		N04   , Bn4 , v092
	.byte	W06
	.byte		N03   , An4 , v088
	.byte	W06
	.byte		        Gn4 , v084
	.byte	W06
	.byte		N04   , En5 , v096
	.byte	W06
	.byte		        An4 , v088
	.byte	W06
	.byte		        Bn4 , v084
	.byte	W12
	.byte		        Gn4 , v088
	.byte	W06
	.byte		N05   , Bn4 , v092
	.byte	W06
	.byte		N04   , Gn4 , v088
	.byte	W06
	.byte		        En5 , v096
	.byte	W06
	.byte		        An4 , v088
	.byte	W06
@ 055   ----------------------------------------
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N03   , An4 , v092
	.byte	W06
	.byte		N05   , Gn4 , v084
	.byte	W06
	.byte		N03   , Bn4 , v092
	.byte	W06
	.byte		        An4 , v088
	.byte	W06
	.byte		N04   , Gn4 , v084
	.byte	W06
	.byte		        En5 , v096
	.byte	W06
	.byte		        An4 , v084
	.byte	W06
	.byte		N03   , Bn4 
	.byte	W12
	.byte		        Gn4 , v088
	.byte	W06
	.byte		N04   , Bn4 , v092
	.byte	W06
	.byte		        Gn4 , v088
	.byte	W06
	.byte		N03   , En5 , v096
	.byte	W06
	.byte		N05   , An4 , v088
	.byte	W06
@ 056   ----------------------------------------
	.byte		N04   , En4 , v084
	.byte	W06
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N03   , An4 , v088
	.byte	W06
	.byte		        Gn4 , v084
	.byte	W06
	.byte		N05   , Bn4 , v088
	.byte	W06
	.byte		N04   , An4 , v084
	.byte	W06
	.byte		N03   , Gn4 , v080
	.byte	W06
	.byte		        En5 , v092
	.byte	W06
	.byte		N04   , An4 , v084
	.byte	W06
	.byte		N03   , Bn4 , v080
	.byte	W12
	.byte		N05   , Gn4 , v084
	.byte	W06
	.byte		N04   , Bn4 , v088
	.byte	W06
	.byte		        Gn4 , v084
	.byte	W06
	.byte		N05   , En5 , v092
	.byte	W06
	.byte		N04   , An4 , v084
	.byte	W06
@ 057   ----------------------------------------
	.byte	W06
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N03   , An4 , v088
	.byte	W06
	.byte		        Gn4 , v084
	.byte	W06
	.byte		        Bn4 , v088
	.byte	W06
	.byte		        An4 , v084
	.byte	W06
	.byte		N05   , Gn4 , v080
	.byte	W06
	.byte		N03   , En5 , v092
	.byte	W06
	.byte		        An4 , v084
	.byte	W06
	.byte		        Bn4 , v080
	.byte	W12
	.byte		N04   , Gn4 , v084
	.byte	W06
	.byte		        Bn4 , v088
	.byte	W06
	.byte		        Gn4 , v084
	.byte	W06
	.byte		        En5 , v092
	.byte	W06
	.byte		        An4 , v084
	.byte	W06
@ 058   ----------------------------------------
	.byte		        En4 , v080
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 , v084
	.byte	W06
	.byte		N03   , Gn4 , v080
	.byte	W06
	.byte		N04   , Bn4 , v084
	.byte	W06
	.byte		N03   , An4 , v080
	.byte	W06
	.byte		        Gn4 , v076
	.byte	W06
	.byte		N04   , En5 , v088
	.byte	W06
	.byte		        An4 , v080
	.byte	W06
	.byte		        Bn4 , v076
	.byte	W12
	.byte		        Gn4 , v080
	.byte	W06
	.byte		N05   , Bn4 , v084
	.byte	W06
	.byte		N04   , Gn4 , v080
	.byte	W06
	.byte		        En5 , v088
	.byte	W06
	.byte		        An4 , v080
	.byte	W06
@ 059   ----------------------------------------
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N03   , An4 , v084
	.byte	W06
	.byte		N05   , Gn4 , v076
	.byte	W06
	.byte		N03   , Bn4 , v084
	.byte	W06
	.byte		        An4 , v080
	.byte	W06
	.byte		N04   , Gn4 , v076
	.byte	W06
	.byte		        En5 , v088
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		N03   , Bn4 
	.byte	W12
	.byte		        Gn4 , v080
	.byte	W06
	.byte		N04   , Bn4 , v084
	.byte	W06
	.byte		        Gn4 , v080
	.byte	W06
	.byte		N03   , En5 , v088
	.byte	W06
	.byte		N05   , An4 , v080
	.byte	W06
@ 060   ----------------------------------------
	.byte		N04   , En4 , v076
	.byte	W06
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N03   , An4 , v080
	.byte	W06
	.byte		        Gn4 , v076
	.byte	W06
	.byte		N05   , Bn4 , v080
	.byte	W06
	.byte		N04   , An4 , v076
	.byte	W06
	.byte		N03   , Gn4 , v072
	.byte	W06
	.byte		        En5 , v084
	.byte	W06
	.byte		N04   , An4 , v076
	.byte	W06
	.byte		N03   , Bn4 , v072
	.byte	W12
	.byte		N05   , Gn4 , v076
	.byte	W06
	.byte		N04   , Bn4 , v080
	.byte	W06
	.byte		        Gn4 , v076
	.byte	W06
	.byte		N05   , En5 , v084
	.byte	W06
	.byte		N04   , An4 , v076
	.byte	W06
@ 061   ----------------------------------------
	.byte	W06
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N03   , An4 , v080
	.byte	W06
	.byte		        Gn4 , v076
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N05   , Gn4 , v068
	.byte	W06
	.byte		N03   , En5 , v080
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		        Bn4 , v068
	.byte	W12
	.byte		N04   , Gn4 , v076
	.byte	W06
	.byte		        Bn4 , v080
	.byte	W06
	.byte		        Gn4 , v076
	.byte	W06
	.byte		        En5 , v084
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
@ 062   ----------------------------------------
	.byte		        En4 , v072
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		N03   , Gn4 , v072
	.byte	W06
	.byte		N04   , Bn4 , v076
	.byte	W06
	.byte		N03   , An4 , v072
	.byte	W06
	.byte		        Gn4 , v068
	.byte	W06
	.byte		N04   , En5 , v080
	.byte	W06
	.byte		        An4 , v072
	.byte	W06
	.byte		        Bn4 , v068
	.byte	W12
	.byte		        Gn4 , v072
	.byte	W06
	.byte		N05   , Bn4 , v076
	.byte	W06
	.byte		N04   , Gn4 , v072
	.byte	W06
	.byte		        En5 , v080
	.byte	W06
	.byte		        An4 , v072
	.byte	W06
@ 063   ----------------------------------------
	.byte	W06
	.byte		        Gn4 , v068
	.byte	W06
	.byte		N03   , An4 , v072
	.byte	W06
	.byte		N05   , Gn4 , v068
	.byte	W06
	.byte		N03   , Bn4 , v072
	.byte	W06
	.byte		        An4 , v068
	.byte	W06
	.byte		N04   , Gn4 , v064
	.byte	W06
	.byte		        En5 , v076
	.byte	W06
	.byte		        An4 , v068
	.byte	W06
	.byte		N03   , Bn4 , v064
	.byte	W12
	.byte		        Gn4 , v068
	.byte	W06
	.byte		N04   , Bn4 , v072
	.byte	W06
	.byte		        Gn4 , v068
	.byte	W06
	.byte		N03   , En5 , v076
	.byte	W06
	.byte		N05   , An4 , v068
	.byte	W06
@ 064   ----------------------------------------
	.byte		N04   , En4 , v064
	.byte	W06
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N03   , An4 , v068
	.byte	W06
	.byte		        Gn4 , v064
	.byte	W06
	.byte		N05   , Bn4 , v068
	.byte	W06
	.byte		N04   , An4 , v064
	.byte	W06
	.byte		N03   , Gn4 , v060
	.byte	W06
	.byte		        En5 , v072
	.byte	W06
	.byte		N04   , An4 , v064
	.byte	W06
	.byte		N03   , Bn4 , v060
	.byte	W12
	.byte		N05   , Gn4 , v064
	.byte	W06
	.byte		N04   , Bn4 , v068
	.byte	W06
	.byte		        Gn4 , v064
	.byte	W06
	.byte		N05   , En5 , v072
	.byte	W06
	.byte		N04   , An4 , v064
	.byte	W06
@ 065   ----------------------------------------
	.byte	W06
	.byte		N05   , Gn4 , v060
	.byte	W06
	.byte		N03   , An4 , v064
	.byte	W06
	.byte		        Gn4 , v060
	.byte	W06
	.byte		        Bn4 , v064
	.byte	W06
	.byte		        An4 , v060
	.byte	W06
	.byte		N05   , Gn4 , v056
	.byte	W06
	.byte		N03   , En5 , v068
	.byte	W06
	.byte		        An4 , v060
	.byte	W06
	.byte		        Bn4 , v056
	.byte	W12
	.byte		N04   , Gn4 , v060
	.byte	W06
	.byte		        Bn4 , v064
	.byte	W06
	.byte		        Gn4 , v060
	.byte	W06
	.byte		        En5 , v068
	.byte	W06
	.byte		        An4 , v060
	.byte	W04
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_behelit_2:
	.byte	KEYSH , mus_behelit_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 7
	.byte		VOL   , 84*mus_behelit_mvl/mxv
	.byte		PAN   , c_v-8
	.byte		N05   , En2 , v080
	.byte	W06
	.byte		N03   , Gn2 , v072
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		N05   , Gn2 , v072
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte		N05   , Gn2 , v068
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte		        Bn2 , v068
	.byte	W06
	.byte		        En2 , v064
	.byte	W06
	.byte		N03   , Gn2 , v072
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		N03   , En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
@ 001   ----------------------------------------
mus_behelit_2_001:
	.byte		N05   , En2 , v072
	.byte	W06
	.byte		N04   , Gn2 
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N05   , Bn2 , v076
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte		        Gn2 , v068
	.byte	W06
	.byte		N03   , En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Bn2 , v068
	.byte	W06
	.byte		        En2 , v064
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		N03   , An2 , v072
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
mus_behelit_2_002:
	.byte		N05   , En2 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N03   , Bn2 , v076
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Gn2 , v068
	.byte	W06
	.byte		N04   , En3 , v080
	.byte	W06
	.byte		N03   , An2 , v072
	.byte	W06
	.byte		N04   , Bn2 , v068
	.byte	W06
	.byte		N05   , En2 
	.byte	W06
	.byte		N03   , Gn2 , v072
	.byte	W06
	.byte		N04   , Bn2 , v076
	.byte	W06
	.byte		N05   , Gn2 , v072
	.byte	W06
	.byte		N03   , En3 , v080
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
mus_behelit_2_003:
	.byte		N04   , En2 , v064
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N03   , An2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N05   , Bn2 , v076
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte		        Gn2 , v068
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		N03   , Bn2 , v068
	.byte	W06
	.byte		        En2 , v064
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		N03   , Gn2 , v072
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
	.byte		N05   , En2 , v080
	.byte	W06
	.byte		N03   , Gn2 , v072
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		N05   , Gn2 , v072
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte		N05   , Gn2 , v068
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte		        Bn2 , v068
	.byte	W06
	.byte		        En2 , v064
	.byte	W06
	.byte		N03   , Gn2 , v072
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		N03   , En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_003
@ 008   ----------------------------------------
	.byte		N05   , En2 , v080
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		N03   , Gn2 , v072
	.byte	W06
	.byte		N04   , Bn2 , v076
	.byte	W06
	.byte		N03   , An2 , v072
	.byte	W06
	.byte		        Gn2 , v068
	.byte	W06
	.byte		N04   , En3 , v080
	.byte	W06
	.byte		N03   , An2 , v072
	.byte	W06
	.byte		N04   , Bn2 , v068
	.byte	W06
	.byte		N05   , En2 , v072
	.byte	W06
	.byte		N04   , Gn2 , v068
	.byte	W06
	.byte		N05   , Bn2 , v076
	.byte	W06
	.byte		N03   , Gn2 , v072
	.byte	W06
	.byte		N04   , En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
@ 009   ----------------------------------------
	.byte		N03   , En2 , v068
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		N03   , An2 , v076
	.byte	W06
	.byte		N05   , Gn2 , v072
	.byte	W06
	.byte		N03   , Bn2 , v076
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		N04   , Gn2 , v068
	.byte	W06
	.byte		        En2 , v064
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		N03   , Bn2 , v068
	.byte	W06
	.byte		N04   , En2 , v076
	.byte	W06
	.byte		N03   , Gn2 , v072
	.byte	W06
	.byte		N04   , Bn2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N03   , En3 , v080
	.byte	W06
	.byte		N05   , An2 , v072
	.byte	W06
@ 010   ----------------------------------------
mus_behelit_2_010:
	.byte		N05   , En2 , v072
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N03   , An2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N05   , Bn2 , v076
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte		N03   , Gn2 , v068
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Bn2 , v068
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N05   , En3 , v080
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
mus_behelit_2_011:
	.byte		N05   , En2 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		N03   , An2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		N04   , Gn2 , v068
	.byte	W06
	.byte		N03   , En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Bn2 , v068
	.byte	W06
	.byte		N05   , En2 , v072
	.byte	W06
	.byte		N04   , Gn2 
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
mus_behelit_2_012:
	.byte		N05   , En2 , v080
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		N03   , Gn2 , v072
	.byte	W06
	.byte		N04   , Bn2 , v076
	.byte	W06
	.byte		N03   , An2 , v072
	.byte	W06
	.byte		N04   , Gn2 , v068
	.byte	W06
	.byte		N03   , En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		N05   , Bn2 , v068
	.byte	W06
	.byte		N03   , En2 , v080
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		N05   , Gn2 , v072
	.byte	W06
	.byte		N04   , En3 , v080
	.byte	W06
	.byte		N03   , An2 , v072
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
mus_behelit_2_013:
	.byte		N04   , En2 , v076
	.byte	W06
	.byte		        Gn2 , v068
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N05   , Bn2 , v076
	.byte	W06
	.byte		N03   , An2 , v072
	.byte	W06
	.byte		        Gn2 , v068
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		N05   , An2 , v072
	.byte	W06
	.byte		N03   , Bn2 , v068
	.byte	W06
	.byte		N05   , En2 , v080
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
	.byte		N05   , En2 , v080
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N03   , An2 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		N05   , Bn2 , v076
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte		        Gn2 , v068
	.byte	W06
	.byte		N05   , En2 , v072
	.byte	W06
	.byte		N04   , An2 
	.byte	W06
	.byte		        Bn2 , v068
	.byte	W06
	.byte		N05   , En2 
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		N03   , Bn2 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		        En3 , v076
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
@ 015   ----------------------------------------
mus_behelit_2_015:
	.byte		N04   , En2 , v072
	.byte	W06
	.byte		N03   , Gn2 
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		N03   , An2 , v072
	.byte	W06
	.byte		        Gn2 , v068
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte		N03   , Bn2 , v068
	.byte	W06
	.byte		N04   , En2 
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N03   , Bn2 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		N05   , En3 , v080
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte	PEND
@ 016   ----------------------------------------
mus_behelit_2_016:
	.byte		N05   , En2 , v080
	.byte	W06
	.byte		N03   , Gn2 , v072
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		N05   , Gn2 , v072
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte		N05   , Gn2 , v068
	.byte	W06
	.byte		N04   , En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Bn2 , v068
	.byte	W06
	.byte		        En2 , v076
	.byte	W06
	.byte		N03   , Gn2 , v072
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		N03   , En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte	PEND
@ 017   ----------------------------------------
mus_behelit_2_017:
	.byte		N05   , En2 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N05   , Bn2 , v076
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		N04   , Gn2 , v068
	.byte	W06
	.byte		N03   , En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Bn2 , v068
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		N03   , An2 , v072
	.byte	W06
	.byte	PEND
@ 018   ----------------------------------------
mus_behelit_2_018:
	.byte		N05   , En2 , v080
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N03   , Bn2 , v076
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Gn2 , v068
	.byte	W06
	.byte		N04   , En3 , v080
	.byte	W06
	.byte		N03   , An2 , v072
	.byte	W06
	.byte		N04   , Bn2 , v068
	.byte	W06
	.byte		N05   , En2 , v072
	.byte	W06
	.byte		N04   , Gn2 
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		N05   , Gn2 , v072
	.byte	W06
	.byte		N03   , En3 , v080
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
mus_behelit_2_019:
	.byte		N04   , En2 , v068
	.byte	W06
	.byte		N05   , Gn2 , v072
	.byte	W06
	.byte		N03   , An2 , v076
	.byte	W06
	.byte		        Gn2 , v068
	.byte	W06
	.byte		N05   , Bn2 , v076
	.byte	W06
	.byte		N04   , An2 , v068
	.byte	W06
	.byte		N05   , Gn2 
	.byte	W06
	.byte		N04   , En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		N03   , Bn2 , v068
	.byte	W06
	.byte		        En2 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		N03   , Gn2 , v072
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
	.byte		N05   , En2 , v080
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		N03   , Gn2 , v072
	.byte	W06
	.byte		N04   , Bn2 , v076
	.byte	W06
	.byte		N03   , An2 , v072
	.byte	W06
	.byte		        Gn2 , v068
	.byte	W06
	.byte		N04   , En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Bn2 , v068
	.byte	W06
	.byte		N05   , En2 
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		N05   , Bn2 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
@ 021   ----------------------------------------
	.byte		N03   , En2 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		N03   , An2 , v076
	.byte	W06
	.byte		N05   , Gn2 , v072
	.byte	W06
	.byte		N03   , Bn2 , v076
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		N04   , Gn2 , v068
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		N03   , Bn2 , v068
	.byte	W06
	.byte		N04   , En2 
	.byte	W06
	.byte		N03   , Gn2 , v072
	.byte	W06
	.byte		N04   , Bn2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N03   , En3 , v080
	.byte	W06
	.byte		N05   , An2 , v072
	.byte	W06
@ 022   ----------------------------------------
	.byte		        En2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N03   , An2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N05   , Bn2 , v076
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte		N03   , Gn2 , v068
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte		N03   , Bn2 , v068
	.byte	W06
	.byte		        En2 , v072
	.byte	W06
	.byte		N05   , Gn2 
	.byte	W06
	.byte		N04   , Bn2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N05   , En3 , v080
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
@ 023   ----------------------------------------
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N03   , An2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		N05   , Gn2 , v068
	.byte	W06
	.byte		N03   , En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Bn2 , v068
	.byte	W06
	.byte		N05   , En2 , v064
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
@ 024   ----------------------------------------
	.byte		N14   , En0 , v092
	.byte		N20   , En1 
	.byte	W24
	.byte		N05   , Bn2 , v076
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte		N05   , Gn2 , v068
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte		        Bn2 , v068
	.byte	W06
	.byte		        En2 , v064
	.byte	W06
	.byte		N03   , Gn2 , v072
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		N03   , En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_001
@ 026   ----------------------------------------
mus_behelit_2_026:
	.byte		N04   , En2 , v088
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N03   , Bn2 , v076
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Gn2 , v068
	.byte	W06
	.byte		N04   , En3 , v080
	.byte	W06
	.byte		N03   , An2 , v072
	.byte	W06
	.byte		N04   , Bn2 , v068
	.byte	W06
	.byte		N05   , En2 
	.byte	W06
	.byte		N03   , Gn2 , v072
	.byte	W06
	.byte		N04   , Bn2 , v076
	.byte	W06
	.byte		N05   , Gn2 , v072
	.byte	W06
	.byte		N03   , En3 , v080
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_003
@ 028   ----------------------------------------
mus_behelit_2_028:
	.byte		N05   , En2 , v080
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		N03   , Gn2 , v072
	.byte	W06
	.byte		N04   , Bn2 , v076
	.byte	W06
	.byte		N03   , An2 , v072
	.byte	W06
	.byte		        Gn2 , v068
	.byte	W06
	.byte		N04   , En3 , v080
	.byte	W06
	.byte		N03   , An2 , v072
	.byte	W06
	.byte		N04   , Bn2 , v068
	.byte	W06
	.byte		N05   , En2 , v072
	.byte	W06
	.byte		N04   , Gn2 , v068
	.byte	W06
	.byte		N05   , Bn2 , v076
	.byte	W06
	.byte		N03   , Gn2 , v072
	.byte	W06
	.byte		N04   , En2 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte	PEND
@ 029   ----------------------------------------
	.byte		N03   , En2 , v068
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		N03   , An2 , v076
	.byte	W06
	.byte		N05   , Gn2 , v072
	.byte	W06
	.byte		N03   , Bn2 , v076
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		N04   , Gn2 , v068
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N15   , En0 , v092
	.byte		N16   , En1 , v088
	.byte	W24
	.byte		N04   , Bn2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N03   , En3 , v080
	.byte	W06
	.byte		N05   , An2 , v072
	.byte	W06
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_011
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_012
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_013
@ 034   ----------------------------------------
	.byte		N05   , En2 , v080
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N03   , An2 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		N05   , Bn2 , v076
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte		        Gn2 , v068
	.byte	W06
	.byte		N05   , En2 , v072
	.byte	W06
	.byte		N04   , An2 
	.byte	W06
	.byte		        Bn1 , v068
	.byte	W06
	.byte		N08   , En0 , v092
	.byte		N07   , En1 , v088
	.byte	W12
	.byte		N03   , Bn1 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		        En3 , v076
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_015
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_016
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_017
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_018
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_019
@ 040   ----------------------------------------
	.byte		N14   , En0 , v096
	.byte		N20   , En1 
	.byte	W24
	.byte		N05   , Bn2 , v076
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte		N05   , Gn2 , v068
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte		        Bn2 , v068
	.byte	W06
	.byte		        En2 , v064
	.byte	W06
	.byte		N03   , Gn2 , v072
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		N03   , En3 , v080
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_026
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_028
@ 045   ----------------------------------------
	.byte		N03   , En2 , v068
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		N03   , An2 , v076
	.byte	W06
	.byte		N05   , Gn2 , v072
	.byte	W06
	.byte		N03   , Bn2 , v076
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		N04   , Gn2 , v068
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N15   , En0 , v096
	.byte		N16   , En1 
	.byte	W24
	.byte		N04   , Bn2 , v076
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N03   , En3 , v080
	.byte	W06
	.byte		N05   , An2 , v072
	.byte	W06
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_010
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_011
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_012
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_013
@ 050   ----------------------------------------
	.byte		N05   , En2 , v080
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N03   , An2 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		N05   , Bn2 , v076
	.byte	W06
	.byte		N04   , An2 , v072
	.byte	W06
	.byte		        Gn2 , v068
	.byte	W06
	.byte		N05   , En2 , v072
	.byte	W06
	.byte		N04   , An2 
	.byte	W06
	.byte		        Bn1 , v068
	.byte	W06
	.byte		N08   , En0 , v096
	.byte		N07   , En1 
	.byte	W12
	.byte		N03   , Bn1 , v076
	.byte	W06
	.byte		N04   , Gn2 , v072
	.byte	W06
	.byte		        En3 , v076
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_015
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_017
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_behelit_2_018
@ 055   ----------------------------------------
	.byte		N04   , En2 , v068
	.byte	W06
	.byte		N05   , Gn2 
	.byte	W06
	.byte		N03   , An2 , v072
	.byte	W06
	.byte		        Gn2 , v068
	.byte	W06
	.byte		N05   , Bn2 , v072
	.byte	W06
	.byte		N04   , An2 , v068
	.byte	W06
	.byte		N05   , Gn2 , v064
	.byte	W06
	.byte		N04   , En3 , v076
	.byte	W06
	.byte		        An2 , v068
	.byte	W06
	.byte		N03   , Bn2 , v064
	.byte	W06
	.byte		        En2 , v076
	.byte	W06
	.byte		N04   , Gn2 , v068
	.byte	W06
	.byte		        Bn2 , v072
	.byte	W06
	.byte		N03   , Gn2 , v068
	.byte	W06
	.byte		        En3 , v076
	.byte	W06
	.byte		        An2 , v068
	.byte	W06
@ 056   ----------------------------------------
	.byte		N05   , En2 , v072
	.byte	W06
	.byte		N04   , Gn2 , v068
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Gn2 , v068
	.byte	W06
	.byte		N05   , Bn2 , v072
	.byte	W06
	.byte		        An2 , v068
	.byte	W06
	.byte		N04   , Gn2 , v064
	.byte	W06
	.byte		N03   , En3 , v076
	.byte	W06
	.byte		        An2 , v068
	.byte	W06
	.byte		        Bn2 , v064
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 , v068
	.byte	W06
	.byte		        Bn2 , v072
	.byte	W06
	.byte		N04   , Gn2 , v068
	.byte	W06
	.byte		        En3 , v076
	.byte	W06
	.byte		N03   , An2 , v068
	.byte	W06
@ 057   ----------------------------------------
	.byte		N05   , En2 , v072
	.byte	W06
	.byte		N04   , Gn2 , v064
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        Gn2 , v068
	.byte	W06
	.byte		N03   , Bn2 , v072
	.byte	W06
	.byte		        An2 , v068
	.byte	W06
	.byte		        Gn2 , v064
	.byte	W06
	.byte		N04   , En3 , v076
	.byte	W06
	.byte		N03   , An2 , v068
	.byte	W06
	.byte		N04   , Bn2 , v064
	.byte	W06
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		N04   , Gn2 
	.byte	W06
	.byte		        Bn2 , v072
	.byte	W06
	.byte		N05   , Gn2 , v068
	.byte	W06
	.byte		N03   , En3 , v076
	.byte	W06
	.byte		N04   , An2 , v068
	.byte	W06
@ 058   ----------------------------------------
	.byte		N05   , En2 , v072
	.byte	W06
	.byte		N04   , Gn2 , v064
	.byte	W06
	.byte		        An2 , v068
	.byte	W06
	.byte		        Gn2 , v064
	.byte	W06
	.byte		N03   , Bn2 , v068
	.byte	W06
	.byte		        An2 , v064
	.byte	W06
	.byte		        Gn2 , v060
	.byte	W06
	.byte		N04   , En3 , v072
	.byte	W06
	.byte		N03   , An2 , v064
	.byte	W06
	.byte		N04   , Bn2 , v060
	.byte	W06
	.byte		N05   , En2 , v064
	.byte	W06
	.byte		N04   , Gn2 
	.byte	W06
	.byte		        Bn2 , v068
	.byte	W06
	.byte		N05   , Gn2 , v064
	.byte	W06
	.byte		N03   , En3 , v072
	.byte	W06
	.byte		N04   , An2 , v064
	.byte	W06
@ 059   ----------------------------------------
	.byte		        En2 , v060
	.byte	W06
	.byte		N05   , Gn2 
	.byte	W06
	.byte		N03   , An2 , v064
	.byte	W06
	.byte		        Gn2 , v060
	.byte	W06
	.byte		N05   , Bn2 , v064
	.byte	W06
	.byte		N04   , An2 , v060
	.byte	W06
	.byte		N05   , Gn2 , v056
	.byte	W06
	.byte		N04   , En3 , v068
	.byte	W06
	.byte		        An2 , v060
	.byte	W06
	.byte		N03   , Bn2 , v056
	.byte	W06
	.byte		        En2 , v068
	.byte	W06
	.byte		N04   , Gn2 , v060
	.byte	W06
	.byte		        Bn2 , v064
	.byte	W06
	.byte		N03   , Gn2 , v060
	.byte	W06
	.byte		        En3 , v068
	.byte	W06
	.byte		        An2 , v060
	.byte	W06
@ 060   ----------------------------------------
	.byte		N05   , En2 , v064
	.byte	W06
	.byte		N04   , Gn2 , v060
	.byte	W06
	.byte		        An2 , v064
	.byte	W06
	.byte		        Gn2 , v060
	.byte	W06
	.byte		N05   , Bn2 , v064
	.byte	W06
	.byte		        An2 , v060
	.byte	W06
	.byte		N04   , Gn2 , v056
	.byte	W06
	.byte		N03   , En3 , v068
	.byte	W06
	.byte		        An2 , v060
	.byte	W06
	.byte		        Bn2 , v056
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 , v060
	.byte	W06
	.byte		        Bn2 , v064
	.byte	W06
	.byte		N04   , Gn2 , v060
	.byte	W06
	.byte		        En3 , v068
	.byte	W06
	.byte		N03   , An2 , v060
	.byte	W06
@ 061   ----------------------------------------
	.byte		N05   , En2 , v064
	.byte	W06
	.byte		N04   , Gn2 , v056
	.byte	W06
	.byte		        An2 , v064
	.byte	W06
	.byte		        Gn2 , v060
	.byte	W06
	.byte		N03   , Bn2 , v064
	.byte	W06
	.byte		        An2 , v060
	.byte	W06
	.byte		        Gn2 , v056
	.byte	W06
	.byte		N04   , En3 , v068
	.byte	W06
	.byte		N03   , An2 , v060
	.byte	W06
	.byte		N04   , Bn2 , v056
	.byte	W06
	.byte		N05   , En2 , v060
	.byte	W06
	.byte		N04   , Gn2 
	.byte	W06
	.byte		        Bn2 , v064
	.byte	W06
	.byte		N05   , Gn2 , v060
	.byte	W06
	.byte		N03   , En3 , v068
	.byte	W06
	.byte		N04   , An2 , v060
	.byte	W06
@ 062   ----------------------------------------
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		N04   , Gn2 , v060
	.byte	W06
	.byte		        An2 , v068
	.byte	W06
	.byte		        Gn2 , v064
	.byte	W06
	.byte		N03   , Bn2 , v068
	.byte	W06
	.byte		        An2 , v064
	.byte	W06
	.byte		        Gn2 , v060
	.byte	W06
	.byte		N04   , En3 , v072
	.byte	W06
	.byte		N03   , An2 , v064
	.byte	W06
	.byte		N04   , Bn2 , v060
	.byte	W06
	.byte		N05   , En2 , v064
	.byte	W06
	.byte		N04   , Gn2 
	.byte	W06
	.byte		        Bn2 , v068
	.byte	W06
	.byte		N05   , Gn2 , v064
	.byte	W06
	.byte		N03   , En3 , v072
	.byte	W06
	.byte		N04   , An2 , v060
	.byte	W06
@ 063   ----------------------------------------
	.byte		        En2 , v056
	.byte	W06
	.byte		N05   , Gn2 
	.byte	W06
	.byte		N03   , An2 , v060
	.byte	W06
	.byte		        Gn2 , v056
	.byte	W06
	.byte		N05   , Bn2 , v060
	.byte	W06
	.byte		N04   , An2 , v056
	.byte	W06
	.byte		N05   , Gn2 , v052
	.byte	W06
	.byte		N04   , En3 , v064
	.byte	W06
	.byte		        An2 , v056
	.byte	W06
	.byte		N03   , Bn2 , v052
	.byte	W06
	.byte		        En2 , v064
	.byte	W06
	.byte		N04   , Gn2 , v056
	.byte	W06
	.byte		        Bn2 , v060
	.byte	W06
	.byte		N03   , Gn2 , v056
	.byte	W06
	.byte		        En3 , v064
	.byte	W06
	.byte		        An2 , v056
	.byte	W06
@ 064   ----------------------------------------
	.byte		N05   , En2 , v060
	.byte	W06
	.byte		N04   , Gn2 , v056
	.byte	W06
	.byte		        An2 , v060
	.byte	W06
	.byte		        Gn2 , v052
	.byte	W06
	.byte		N05   , Bn2 , v060
	.byte	W06
	.byte		        An2 , v056
	.byte	W06
	.byte		N04   , Gn2 , v052
	.byte	W06
	.byte		N03   , En3 , v064
	.byte	W06
	.byte		        An2 , v056
	.byte	W06
	.byte		        Bn2 , v052
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 , v056
	.byte	W06
	.byte		        Bn2 , v060
	.byte	W06
	.byte		N04   , Gn2 , v056
	.byte	W06
	.byte		        En3 , v064
	.byte	W06
	.byte		N03   , An2 , v056
	.byte	W06
@ 065   ----------------------------------------
	.byte		N05   , En2 
	.byte	W06
	.byte		N04   , Gn2 , v048
	.byte	W06
	.byte		        An2 , v056
	.byte	W06
	.byte		        Gn2 , v052
	.byte	W06
	.byte		N03   , Bn2 , v056
	.byte	W06
	.byte		        An2 , v052
	.byte	W06
	.byte		        Gn2 , v048
	.byte	W06
	.byte		N04   , En3 , v060
	.byte	W06
	.byte		N03   , An2 , v052
	.byte	W06
	.byte		N04   , Bn2 , v048
	.byte	W06
	.byte		N05   , En2 , v052
	.byte	W06
	.byte		N04   , Gn2 
	.byte	W06
	.byte		        Bn2 , v056
	.byte	W06
	.byte		N05   , Gn2 , v052
	.byte	W06
	.byte		N03   , En3 , v060
	.byte	W06
	.byte		N04   , An2 , v052
	.byte	W04
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_behelit_3:
	.byte	KEYSH , mus_behelit_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 9
	.byte		VOL   , 58*mus_behelit_mvl/mxv
	.byte		PAN   , c_v+22
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		TIE   , Gn3 , v052
	.byte	W96
@ 005   ----------------------------------------
	.byte	W24
	.byte		EOT   
	.byte	W12
	.byte		N36   , Gn3 , v048
	.byte	W60
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W48
	.byte		N44   , En3 
	.byte	W48
@ 010   ----------------------------------------
	.byte	W24
	.byte		N42   , Gn3 , v052
	.byte	W48
	.byte		N40   , Gn3 , v048
	.byte	W24
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte		N68   , Cn4 , v052
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W12
	.byte		N44   , Fs3 , v048
	.byte	W48
	.byte		TIE   , En3 , v052
	.byte	W36
@ 015   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte	W24
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
	.byte		TIE   , Gn3 , v048
	.byte	W96
@ 025   ----------------------------------------
	.byte	W11
	.byte		EOT   
	.byte	W24
	.byte	W01
	.byte		N36   , Gn3 , v052
	.byte	W60
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W48
	.byte		N40   
	.byte	W48
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte		N54   , Gn3 , v056
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W12
	.byte		N36   , Fs3 , v052
	.byte	W48
	.byte		TIE   , Gn3 
	.byte	W36
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		EOT   
	.byte	W36
	.byte	W03
@ 037   ----------------------------------------
	.byte		TIE   , En3 
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W54
	.byte		EOT   
	.byte	W42
@ 040   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 041   ----------------------------------------
	.byte	W28
	.byte		EOT   
	.byte	W08
	.byte		N36   , Gn3 
	.byte	W60
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W18
	.byte		N48   , Fs3 
	.byte	W78
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W48
	.byte		N44   , En3 , v056
	.byte	W48
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte		N60   , En3 , v052
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W12
	.byte		N36   , Fs3 
	.byte	W48
	.byte		TIE   , En3 , v056
	.byte	W36
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W56
	.byte		EOT   
	.byte	FINE

@******************************************************@
	.align	2

mus_behelit:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_behelit_pri	@ Priority
	.byte	mus_behelit_rev	@ Reverb.

	.word	mus_behelit_grp

	.word	mus_behelit_1
	.word	mus_behelit_2
	.word	mus_behelit_3

	.end
