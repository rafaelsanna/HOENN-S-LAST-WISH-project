	.include "MPlayDef.s"

	.equ	mus_knockin_on_heavens_door_grp, voicegroup_hlw_classic_rock
	.equ	mus_knockin_on_heavens_door_pri, 0
	.equ	mus_knockin_on_heavens_door_rev, reverb_set+28
	.equ	mus_knockin_on_heavens_door_mvl, 96
	.equ	mus_knockin_on_heavens_door_key, 0
	.equ	mus_knockin_on_heavens_door_tbs, 1
	.equ	mus_knockin_on_heavens_door_exg, 1
	.equ	mus_knockin_on_heavens_door_cmp, 1

	.section .rodata
	.global	mus_knockin_on_heavens_door
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_knockin_on_heavens_door_1:
	.byte	KEYSH , mus_knockin_on_heavens_door_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 73*mus_knockin_on_heavens_door_tbs/2
	.byte		VOICE , 1
	.byte		PAN   , c_v-20
	.byte		VOL   , 87*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W09
	.byte		N48   , Gn1 , v052, gtp3
	.byte	W13
	.byte		N36   , Bn2 , v064, gtp2
	.byte	W13
	.byte		N24   , Dn3 , v076, gtp1
	.byte	W14
	.byte		N11   , Gn3 , v064
	.byte	W12
	.byte		N24   , Dn3 , v076, gtp1
	.byte		N48   , Fs3 , v072, gtp3
	.byte	W01
	.byte		        Dn2 , v056, gtp3
	.byte		N11   , An2 , v072
	.byte	W12
	.byte		N24   , An2 , v060, gtp1
	.byte	W13
	.byte		        Dn3 , v072, gtp1
	.byte	W09
@ 002   ----------------------------------------
	.byte	W05
	.byte		N12   , An2 , v068
	.byte	W13
	.byte		N48   , An1 , v052, gtp3
	.byte	W13
	.byte		N36   , Gn2 , v060, gtp2
	.byte	W13
	.byte		N24   , Cn3 , v076, gtp1
	.byte	W13
	.byte		N12   , En3 , v068
	.byte	W13
	.byte		N48   , An2 , v072, gtp3
	.byte	W14
	.byte		N36   , En3 , v064, gtp2
	.byte	W12
@ 003   ----------------------------------------
	.byte	W01
	.byte		N24   , Cn3 , v076, gtp1
	.byte	W13
	.byte		N11   , Gn2 , v064
	.byte	W13
	.byte		N52   , Gn2 , v056
	.byte	W13
	.byte		N36   , Dn3 , v068, gtp2
	.byte	W14
	.byte		N24   , Bn3 , v076, gtp1
	.byte	W06
	.byte		N19   , Gn3 , v060
	.byte	W06
	.byte		N12   , Dn4 , v064
	.byte	W13
	.byte		N52   , Dn2 , v056
	.byte	W14
	.byte		N36   , Fs3 , v064, gtp2
	.byte	W03
@ 004   ----------------------------------------
	.byte	W10
	.byte		N24   , An3 , v076
	.byte	W13
	.byte		N12   , Dn4 , v064
	.byte	W13
	.byte		N52   , Cn2 , v052
	.byte	W13
	.byte		N18   , Gn3 , v064
	.byte	W07
	.byte		N32   , Cn4 , v060
	.byte	W06
	.byte		N24   , En4 , v076, gtp1
	.byte	W08
	.byte		N18   , Gn3 , v056
	.byte	W06
	.byte		N12   , Cn3 , v064
	.byte	W13
	.byte		N48   , Cn2 , v052, gtp3
	.byte		N48   , Cn4 , v076, gtp3
	.byte	W06
	.byte		N44   , Gn3 , v060, gtp1
	.byte	W01
@ 005   ----------------------------------------
	.byte	W06
	.byte		N36   , Cn3 , v068, gtp2
	.byte	W07
	.byte		N11   , Fs4 , v064
	.byte	W12
	.byte		N12   , Gn4 , v060
	.byte	W14
	.byte		N05   , An4 
	.byte	W06
	.byte		N48   , Gn1 , v056, gtp3
	.byte		N48   , Bn4 , v076, gtp3
	.byte	W13
	.byte		N36   , Bn2 , v064, gtp2
	.byte	W14
	.byte		N24   , Dn3 , v076, gtp1
	.byte	W13
	.byte		N12   , Gn3 , v064
	.byte	W11
@ 006   ----------------------------------------
	.byte	W02
	.byte		N48   , Dn2 , v052, gtp3
	.byte		N48   , Fs3 , v072, gtp3
	.byte	W13
	.byte		N24   , An2 , v064, gtp1
	.byte	W13
	.byte		        Dn3 , v072, gtp1
	.byte	W14
	.byte		N12   , An2 , v064
	.byte	W13
	.byte		N48   , An1 , v052, gtp3
	.byte	W13
	.byte		N36   , Gn2 , v064, gtp2
	.byte	W12
	.byte		N06   , Cn4 , v076
	.byte	W01
	.byte		N05   , En4 
	.byte		N05   , An4 , v072
	.byte	W06
	.byte		        Cn4 , v060
	.byte		N05   , En4 , v056
	.byte	W01
	.byte		        An4 , v060
	.byte	W06
	.byte		        Cn4 , v064
	.byte		N05   , En4 , v068
	.byte		N05   , Gn4 , v064
	.byte	W02
@ 007   ----------------------------------------
	.byte	W04
	.byte		        En4 , v072
	.byte	W01
	.byte		        Cn4 
	.byte		N05   , An4 , v068
	.byte	W06
	.byte		N48   , An2 , v076, gtp3
	.byte		N48   , An3 , v072, gtp3
	.byte		N48   , Cn4 , v072, gtp3
	.byte		N48   , En4 , v076, gtp3
	.byte	W13
	.byte		N36   , En3 , v064, gtp2
	.byte	W14
	.byte		N24   , Cn3 , v076, gtp1
	.byte	W12
	.byte		N12   , Gn2 , v064
	.byte	W13
	.byte		N48   , Gn2 , v056, gtp3
	.byte	W14
	.byte		N36   , Dn3 , v068, gtp2
	.byte	W13
	.byte		N24   , Gn4 , v076, gtp1
	.byte	W06
@ 008   ----------------------------------------
	.byte	W01
	.byte		N18   , Bn4 , v056
	.byte	W19
	.byte		N48   , Dn2 , v056, gtp3
	.byte	W14
	.byte		N36   , Fs3 , v064, gtp2
	.byte	W13
	.byte		N05   , Fs5 , v072
	.byte	W03
	.byte		N22   , Gn5 
	.byte	W03
	.byte		N18   , Fs5 , v060
	.byte	W04
	.byte		N15   , Dn5 , v064
	.byte	W03
	.byte		N12   , An4 
	.byte	W13
	.byte		N48   , Cn2 , v056, gtp3
	.byte	W13
	.byte		N36   , Gn3 , v060, gtp2
	.byte	W10
@ 009   ----------------------------------------
	.byte	W03
	.byte		N24   , Cn4 , v072, gtp1
	.byte	W13
	.byte		N12   , En4 , v064
	.byte	W14
	.byte		N48   , Cn2 , v048, gtp3
	.byte		N48   , Cn4 , v076, gtp3
	.byte	W13
	.byte		N36   , Gn3 , v068, gtp2
	.byte	W12
	.byte		N24   , Cn3 , v076, gtp1
	.byte	W13
	.byte		N12   , En3 , v060
	.byte	W14
	.byte		N48   , Gn2 , v056, gtp3
	.byte		N18   , Gn3 , v076
	.byte	W06
	.byte		N32   , Bn3 , v060
	.byte	W07
	.byte		N12   , Dn4 , v064
	.byte	W01
@ 010   ----------------------------------------
	.byte	W06
	.byte		N11   , Gn3 
	.byte	W06
	.byte		N24   , Dn4 , v076, gtp1
	.byte	W07
	.byte		N12   , Gn3 , v060
	.byte	W06
	.byte		        Bn3 , v064
	.byte	W07
	.byte		N05   , Gn3 , v072
	.byte	W06
	.byte		N24   , Dn4 , v076, gtp1
	.byte	W01
	.byte		N48   , Dn2 , v052, gtp3
	.byte	W07
	.byte		N24   , Fs3 , v060
	.byte	W13
	.byte		N18   , An3 , v064
	.byte	W06
	.byte		N24   , Dn4 , v072, gtp1
	.byte	W07
	.byte		N18   , Fs3 , v060
	.byte	W07
	.byte		N11   , An3 , v064
	.byte	W06
	.byte		N05   , Dn3 
	.byte	W06
	.byte		N48   , An2 , v076, gtp3
	.byte	W05
@ 011   ----------------------------------------
	.byte	W08
	.byte		N36   , An3 , v064, gtp2
	.byte	W07
	.byte		N18   , Cn4 
	.byte	W07
	.byte		N24   , En4 , v072, gtp1
	.byte	W06
	.byte		N19   , Gn3 , v060
	.byte	W07
	.byte		N12   , Cn4 , v068
	.byte	W06
	.byte		N05   , En3 , v072
	.byte	W07
	.byte	TEMPO , 74*mus_knockin_on_heavens_door_tbs/2
	.byte		N48   , An1 , v052, gtp3
	.byte	W13
	.byte		N36   , Gn3 , v068, gtp2
	.byte	W07
	.byte		N18   , Cn4 , v064
	.byte	W06
	.byte		N24   , Gn4 , v076, gtp1
	.byte	W14
	.byte		N11   , Cn4 , v060
	.byte	W08
@ 012   ----------------------------------------
	.byte	W04
	.byte		N48   , Bn3 , v076, gtp3
	.byte	W01
	.byte		        Gn2 , v056, gtp3
	.byte	W13
	.byte		N36   , Dn3 , v068, gtp2
	.byte	W06
	.byte		N24   , Gn3 , v060, gtp1
	.byte	W06
	.byte		        Bn4 , v076, gtp1
	.byte	W14
	.byte		N12   , Dn4 , v064
	.byte	W07
	.byte		N05   , Gn3 , v072
	.byte	W06
	.byte		N48   , Dn3 , v076, gtp3
	.byte		N18   , Dn4 
	.byte	W06
	.byte		N44   , Fs3 , v064, gtp1
	.byte	W02
	.byte		VOL   , 81*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W05
	.byte		N36   , An3 , v064, gtp2
	.byte	W06
	.byte		VOL   , 76*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W01
	.byte		N18   , Dn4 
	.byte	W06
	.byte		N24   , Fs4 , v072, gtp1
	.byte	W05
	.byte		VOL   , 70*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W08
@ 013   ----------------------------------------
	.byte		N12   , Dn4 , v064
	.byte	W03
	.byte		VOL   , 65*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W11
	.byte	TEMPO , 76*mus_knockin_on_heavens_door_tbs/2
	.byte		        59*mus_knockin_on_heavens_door_mvl/mxv
	.byte		N48   , Cn2 , v052, gtp3
	.byte		N48   , Cn3 , v080, gtp3
	.byte	W06
	.byte		N24   , En3 , v056, gtp1
	.byte	W05
	.byte		VOL   , 54*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W01
	.byte		N24   , Gn3 , v060, gtp1
	.byte	W08
	.byte		        Cn4 , v064
	.byte	W03
	.byte		VOL   , 48*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W03
	.byte		N24   , En4 , v076, gtp1
	.byte	W06
	.byte		N18   , En3 , v060
	.byte	W02
	.byte		VOL   , 43*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W05
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		VOL   , 38*mus_knockin_on_heavens_door_mvl/mxv
	.byte		N06   , Cn4 , v068
	.byte	W07
	.byte		N48   , Cn2 , v052, gtp3
	.byte	W01
	.byte		N24   , En4 , v076
	.byte	W04
	.byte		VOL   , 32*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W09
	.byte		N24   , Gn3 , v068
	.byte	W02
	.byte		VOL   , 27*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W04
	.byte		N11   , Cn4 , v064
	.byte	W06
	.byte		N24   , En4 , v076, gtp1
	.byte	W01
	.byte		VOL   , 21*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W03
@ 014   ----------------------------------------
	.byte	W03
	.byte		N18   , Cn4 , v060
	.byte	W06
	.byte		VOL   , 16*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W01
	.byte		N12   , Gn3 , v064
	.byte	W10
	.byte		VOL   , 10*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W02
	.byte		N24   , Dn4 , v080, gtp1
	.byte	W01
	.byte	TEMPO , 74*mus_knockin_on_heavens_door_tbs/2
	.byte		N30   , Gn2 , v052, gtp1
	.byte	W06
	.byte		N12   , Bn3 , v060
	.byte	W02
	.byte		VOL   , 5*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W05
	.byte		N19   , Gn3 , v064
	.byte	W06
	.byte		VOL   , 0*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W01
	.byte		N12   , Bn3 
	.byte	W06
	.byte		N05   , Dn4 , v076
	.byte	W06
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_knockin_on_heavens_door_2:
	.byte	KEYSH , mus_knockin_on_heavens_door_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		PAN   , c_v+0
	.byte		VOL   , 98*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W09
	.byte		N52   , Gn0 , v080
	.byte	W52
	.byte		        Dn1 
	.byte	W32
	.byte	W03
@ 002   ----------------------------------------
	.byte	W18
	.byte		N78   , An0 , v084
	.byte	W78
@ 003   ----------------------------------------
	.byte	W14
	.byte		N12   , En0 , v076
	.byte	W13
	.byte		N36   , Gn0 , v080, gtp2
	.byte	W40
	.byte		N02   , Gn0 , v076
	.byte	W06
	.byte		N03   
	.byte	W07
	.byte		N36   , Dn1 , v080, gtp2
	.byte	W16
@ 004   ----------------------------------------
	.byte	W30
	.byte		N05   , Dn1 , v076
	.byte	W06
	.byte		N36   , Cn1 , v084, gtp2
	.byte	W52
	.byte	W01
	.byte		N06   , Cn1 , v080
	.byte	W07
@ 005   ----------------------------------------
	.byte	W06
	.byte		        Dn1 
	.byte	W13
	.byte		N05   , En1 , v084
	.byte	W13
	.byte		        Fs2 , v076
	.byte	W14
	.byte		        Gn2 , v084
	.byte	W13
	.byte		N02   , Dn1 , v076
	.byte	W06
	.byte		N03   , Bn0 , v072
	.byte	W07
	.byte		N12   , Gn0 , v080
	.byte	W13
	.byte		N02   , Bn0 , v076
	.byte	W06
	.byte		        Cn1 
	.byte	W05
@ 006   ----------------------------------------
	.byte	W02
	.byte		N36   , Dn1 , v080, gtp2
	.byte	W36
	.byte	W03
	.byte		N06   , Dn1 , v076
	.byte	W14
	.byte		N24   , An0 , v084, gtp1
	.byte	W40
	.byte	W01
@ 007   ----------------------------------------
	.byte	W11
	.byte		N02   , An0 , v080
	.byte	W07
	.byte		        Bn0 , v076
	.byte	W05
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N12   , En1 
	.byte	W05
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-32
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v+0
	.byte	W05
	.byte		        c_v-64
	.byte		N04   , An1 , v084
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W04
	.byte		N03   , Gn1 , v076
	.byte	W07
	.byte		N05   , En1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06   , Gn0 , v080
	.byte	W32
	.byte	W01
@ 008   ----------------------------------------
	.byte	W07
	.byte		N02   , Bn0 , v076
	.byte	W07
	.byte		        Cn1 , v080
	.byte	W06
	.byte		N05   , Dn1 
	.byte	W44
	.byte	W02
	.byte		N06   , Bn0 , v076
	.byte	W07
	.byte		        Cn1 , v084
	.byte	W23
@ 009   ----------------------------------------
	.byte	W23
	.byte		N05   , Gn0 , v080
	.byte	W06
	.byte		N06   , Cn1 
	.byte	W14
	.byte		N05   , Dn1 
	.byte	W13
	.byte		N06   , En1 , v084
	.byte	W12
	.byte		        Fs1 , v076
	.byte	W14
	.byte		N05   , Gn1 , v084
	.byte	W14
@ 010   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		N04   , Bn0 , v076
	.byte	W07
	.byte		N03   , Cn1 , v080
	.byte	W07
	.byte		N05   , Dn1 
	.byte	W44
	.byte	W02
	.byte		N03   , Gn0 
	.byte	W06
	.byte		N06   , An0 , v084
	.byte	W05
@ 011   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		N05   , An0 , v080
	.byte	W32
	.byte	W01
	.byte		N04   , An0 , v084
	.byte	W07
	.byte		N03   , Gn0 , v072
	.byte	W07
	.byte		N12   , En0 , v076
	.byte	W08
@ 012   ----------------------------------------
	.byte	W04
	.byte		N06   , Gn0 , v080
	.byte	W40
	.byte		N04   , Bn0 , v076
	.byte	W06
	.byte		        Cn1 , v080
	.byte	W07
	.byte		N05   , Dn1 
	.byte	W08
	.byte		VOL   , 91*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W11
	.byte		        85*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W12
	.byte		        79*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W08
@ 013   ----------------------------------------
	.byte	W03
	.byte		        73*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W04
	.byte		N03   , Gn0 , v076
	.byte	W07
	.byte		VOL   , 67*mus_knockin_on_heavens_door_mvl/mxv
	.byte		N05   , Cn1 , v084
	.byte	W11
	.byte		VOL   , 61*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W12
	.byte		        55*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W11
	.byte		        49*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W11
	.byte		        42*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W01
	.byte		N05   , Gn0 , v080
	.byte	W06
	.byte		N06   , Cn1 
	.byte	W05
	.byte		VOL   , 36*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W08
	.byte		N06   , Dn1 , v076
	.byte	W03
	.byte		VOL   , 30*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W10
	.byte		N06   , En1 , v084
	.byte	W01
	.byte		VOL   , 24*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W03
@ 014   ----------------------------------------
	.byte	W09
	.byte		        18*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W01
	.byte		N05   , Fs1 , v076
	.byte	W10
	.byte		VOL   , 12*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W03
	.byte		N05   , Gn1 , v084
	.byte	W08
	.byte		VOL   , 6*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W11
	.byte		        0*mus_knockin_on_heavens_door_mvl/mxv
	.byte		N04   , Dn1 , v076
	.byte	W07
	.byte		N05   , Gn0 , v080
	.byte	W06
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_knockin_on_heavens_door_3:
	.byte	KEYSH , mus_knockin_on_heavens_door_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 25
	.byte		PAN   , c_v+0
	.byte		VOL   , 87*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W09
	.byte		N12   , Dn2 , v080
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 , v084
	.byte		N12   , Gn3 
	.byte	W13
	.byte		        Dn2 , v064
	.byte		N12   , Gn2 , v060
	.byte		N12   , Bn2 , v064
	.byte		N12   , Gn3 
	.byte	W13
	.byte		        Dn2 , v080
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 , v084
	.byte		N12   , Gn3 , v080
	.byte	W13
	.byte		        Dn2 , v060
	.byte		N12   , Gn2 , v064
	.byte		N12   , Bn2 
	.byte		N12   , Gn3 , v060
	.byte	W13
	.byte		        Dn2 , v080
	.byte		N12   , An2 
	.byte		N12   , Fs3 
	.byte	W01
	.byte		        Dn3 , v084
	.byte	W12
	.byte		        Dn3 , v064
	.byte		N12   , Fs3 
	.byte	W01
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 , v084
	.byte	W01
	.byte		        An2 , v080
	.byte		N12   , Dn3 , v084
	.byte		N12   , Fs3 , v080
	.byte	W08
@ 002   ----------------------------------------
	.byte	W04
	.byte		        Dn2 , v060
	.byte		N12   , An2 , v064
	.byte		N12   , Dn3 , v060
	.byte		N12   , Fs3 , v064
	.byte	W14
	.byte		        En2 , v080
	.byte		N12   , An2 
	.byte		N12   , Cn3 , v084
	.byte		N12   , En3 
	.byte	W13
	.byte		        En2 , v060
	.byte		N12   , An2 , v064
	.byte		N12   , Cn3 , v060
	.byte		N12   , En3 , v064
	.byte	W13
	.byte		        En2 , v080
	.byte		N12   , An2 , v084
	.byte		N12   , Cn3 , v080
	.byte		N12   , En3 
	.byte	W13
	.byte		N24   , Cn3 , v076, gtp1
	.byte		N24   , En3 , v076, gtp1
	.byte	W01
	.byte		        En2 , v076, gtp1
	.byte		N24   , An2 , v076, gtp1
	.byte	W24
	.byte	W01
	.byte		N12   , En2 , v064
	.byte	W01
	.byte		        An2 
	.byte		N12   , Cn3 , v060
	.byte		N12   , En3 
	.byte	W12
@ 003   ----------------------------------------
	.byte		        En2 , v084
	.byte	W01
	.byte		        An2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 , v080
	.byte	W13
	.byte		        En2 , v064
	.byte		N12   , An2 , v060
	.byte		N12   , Cn3 , v064
	.byte		N12   , En3 , v060
	.byte	W13
	.byte		        Dn2 , v084
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 
	.byte		N12   , Gn3 
	.byte	W13
	.byte		N05   , Dn2 , v060
	.byte		N06   , Gn2 , v064
	.byte		N05   , Bn2 
	.byte		N06   , Gn3 
	.byte	W07
	.byte		N05   , Dn2 
	.byte		N05   , Gn2 , v060
	.byte		N06   , Bn2 
	.byte		N05   , Gn3 , v064
	.byte	W06
	.byte		N12   , Dn2 , v080
	.byte		N12   , Gn2 , v084
	.byte		N12   , Bn2 
	.byte		N12   , Gn3 , v080
	.byte	W13
	.byte		        Gn2 , v064
	.byte		N12   , Gn3 
	.byte	W01
	.byte		        Dn2 , v060
	.byte		N12   , Bn2 , v064
	.byte	W12
	.byte		        An2 , v084
	.byte		N12   , Fs3 , v080
	.byte	W01
	.byte		        Dn2 , v084
	.byte		N12   , Dn3 
	.byte	W13
	.byte		N05   , Dn2 , v060
	.byte		N05   , An2 
	.byte		N05   , Dn3 
	.byte		N05   , Fs3 
	.byte	W03
@ 004   ----------------------------------------
	.byte	W03
	.byte		N06   , Dn2 
	.byte		N06   , Fs3 
	.byte	W01
	.byte		N05   , An2 , v064
	.byte		N05   , Dn3 
	.byte	W06
	.byte		N12   , Dn2 , v084
	.byte		N12   , An2 , v080
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W13
	.byte		N05   , Dn2 , v064
	.byte		N06   , An2 
	.byte		N05   , Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Dn3 
	.byte	W01
	.byte		N05   , An2 
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N12   , Cn2 , v080
	.byte		N12   , En3 
	.byte	W01
	.byte		N11   , Gn2 , v084
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N05   , Cn2 , v060
	.byte		N05   , Gn2 
	.byte		N05   , Cn3 , v064
	.byte		N06   , En3 
	.byte	W07
	.byte		N05   , Cn2 , v060
	.byte		N06   , Gn2 
	.byte		N05   , Cn3 , v064
	.byte		N05   , En3 , v060
	.byte	W06
	.byte		N12   , Cn3 , v080
	.byte	W01
	.byte		        Cn2 , v084
	.byte		N12   , Gn2 , v080
	.byte		N12   , En3 , v084
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W01
	.byte		        Cn2 , v060
	.byte		N12   , Gn2 , v064
	.byte		N12   , En3 
	.byte	W13
	.byte		N06   , Cn2 , v080
	.byte		N05   , Gn2 
	.byte		N05   , Cn3 
	.byte		N05   , En3 
	.byte	W06
	.byte		N06   , Cn2 , v068
	.byte		N06   , Gn2 
	.byte		N05   , Cn3 
	.byte		N05   , En3 
	.byte	W01
@ 005   ----------------------------------------
	.byte	W06
	.byte		N12   , Cn2 , v064
	.byte		N12   , Gn2 , v060
	.byte		N12   , Cn3 , v064
	.byte		N12   , En3 
	.byte	W13
	.byte		N05   , Cn2 , v084
	.byte		N06   , Gn2 , v080
	.byte		N06   , Cn3 
	.byte		N05   , En3 , v084
	.byte	W06
	.byte		N06   , Gn2 , v060
	.byte		N06   , En3 
	.byte	W01
	.byte		N05   , Cn2 
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        Cn2 , v076
	.byte		N06   , Gn2 
	.byte		N05   , Cn3 , v080
	.byte		N05   , En3 
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte	W01
	.byte		        Gn2 , v064
	.byte		N05   , Cn3 
	.byte		N05   , En3 , v060
	.byte	W06
	.byte		N12   , Dn2 , v084
	.byte		N12   , Gn2 , v080
	.byte		N12   , Bn2 , v084
	.byte		N12   , Gn3 
	.byte	W13
	.byte		N06   , Dn2 , v064
	.byte		N05   , Gn2 
	.byte		N05   , Gn3 
	.byte	W01
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N05   , Gn2 
	.byte		N05   , Bn2 , v064
	.byte		N05   , Gn3 
	.byte	W07
	.byte		N12   , Dn2 , v084
	.byte		N12   , Gn2 , v080
	.byte		N12   , Bn2 , v084
	.byte		N12   , Gn3 , v080
	.byte	W13
	.byte		        Dn2 , v064
	.byte		N12   , Gn2 , v060
	.byte		N12   , Bn2 
	.byte		N12   , Gn3 , v064
	.byte	W11
@ 006   ----------------------------------------
	.byte	W02
	.byte		        Dn2 , v080
	.byte		N12   , An2 , v084
	.byte		N12   , Dn3 , v080
	.byte		N12   , Fs3 
	.byte	W13
	.byte		N05   , Dn2 , v064
	.byte		N05   , An2 , v060
	.byte		N06   , Dn3 , v064
	.byte		N05   , Fs3 , v060
	.byte	W06
	.byte		N06   , An2 
	.byte	W01
	.byte		N05   , Dn2 
	.byte		N05   , Dn3 , v064
	.byte		N05   , Fs3 , v060
	.byte	W06
	.byte		N12   , Dn2 , v080
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W13
	.byte		N06   , Dn2 , v064
	.byte		N06   , An2 , v060
	.byte		N06   , Fs3 , v064
	.byte	W01
	.byte		N05   , Dn3 , v060
	.byte	W06
	.byte		        Dn2 , v064
	.byte		N06   , An2 
	.byte		N06   , Dn3 
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N12   , An2 , v080
	.byte	W01
	.byte		        En2 
	.byte		N12   , Cn3 , v084
	.byte		N12   , En3 , v080
	.byte	W12
	.byte		N06   , En3 , v072
	.byte	W01
	.byte		N05   , En2 , v076
	.byte		N06   , An2 
	.byte		N06   , Cn3 , v072
	.byte	W06
	.byte		        En2 , v064
	.byte		N06   , Cn3 , v060
	.byte		N06   , En3 
	.byte	W07
	.byte		N05   , En2 , v080
	.byte		N05   , An2 
	.byte		N05   , Cn3 
	.byte		N05   , En3 , v084
	.byte	W06
	.byte		        En2 , v060
	.byte		N06   , Cn3 
	.byte		N06   , En3 
	.byte	W01
	.byte		N05   , An2 
	.byte	W06
	.byte		N18   , En2 , v076
	.byte		N19   , An2 
	.byte		N18   , Cn3 
	.byte		N18   , En3 
	.byte	W02
@ 007   ----------------------------------------
	.byte	W18
	.byte		N05   , En2 , v064
	.byte		N05   , An2 , v060
	.byte		N05   , Cn3 
	.byte		N06   , En3 
	.byte	W06
	.byte		N05   , An2 , v072
	.byte		N05   , Cn3 
	.byte		N05   , En3 , v068
	.byte	W01
	.byte		        En2 , v072
	.byte	W06
	.byte		        En2 , v064
	.byte		N05   , An2 
	.byte		N05   , Cn3 , v060
	.byte		N05   , En3 
	.byte	W06
	.byte		N06   , En2 , v080
	.byte		N06   , An2 , v084
	.byte		N06   , En3 
	.byte	W01
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        En2 , v060
	.byte		N05   , An2 
	.byte		N06   , Cn3 
	.byte		N06   , En3 , v064
	.byte	W06
	.byte		        An2 , v080
	.byte	W01
	.byte		N05   , En2 
	.byte		N05   , Cn3 , v076
	.byte		N05   , En3 
	.byte	W06
	.byte		        En2 , v060
	.byte		N05   , An2 
	.byte		N05   , Cn3 
	.byte		N05   , En3 , v064
	.byte	W06
	.byte		N12   , Dn2 , v080
	.byte		N12   , Gn2 
	.byte	W01
	.byte		        Bn2 , v084
	.byte		N12   , Gn3 , v080
	.byte	W13
	.byte		N05   , Dn2 , v064
	.byte		N05   , Gn2 
	.byte		N05   , Bn2 , v060
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        Dn2 , v064
	.byte	W01
	.byte		        Gn2 
	.byte		N05   , Bn2 , v060
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N12   , Dn2 , v080
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 
	.byte		N12   , Gn3 , v084
	.byte	W06
@ 008   ----------------------------------------
	.byte	W07
	.byte		        Dn2 , v060
	.byte		N12   , Gn2 , v064
	.byte		N12   , Bn2 
	.byte		N12   , Gn3 , v060
	.byte	W13
	.byte		        Dn3 , v084
	.byte	W01
	.byte		        Dn2 
	.byte		N12   , An2 , v080
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , An2 , v064
	.byte	W01
	.byte		N05   , Dn2 , v060
	.byte		N05   , Dn3 
	.byte		N05   , Fs3 , v064
	.byte	W06
	.byte		N06   , Dn2 , v060
	.byte		N06   , An2 
	.byte		N05   , Dn3 , v064
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N12   , An2 , v084
	.byte	W01
	.byte		        Dn2 
	.byte		N12   , Dn3 , v080
	.byte		N12   , Fs3 
	.byte	W13
	.byte		N05   , Dn2 , v064
	.byte		N05   , An2 , v060
	.byte		N05   , Dn3 
	.byte		N06   , Fs3 , v064
	.byte	W06
	.byte		N05   , Dn2 , v060
	.byte		N05   , An2 , v064
	.byte		N06   , Dn3 
	.byte	W01
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N12   , Gn2 , v084
	.byte		N12   , Cn3 , v080
	.byte		N12   , En3 
	.byte		N12   , Gn3 , v084
	.byte	W13
	.byte		N05   , Gn2 , v060
	.byte		N05   , Cn3 
	.byte		N05   , En3 
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N06   , Gn2 , v064
	.byte		N06   , Cn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 , v060
	.byte	W04
@ 009   ----------------------------------------
	.byte	W03
	.byte		N12   , Gn2 , v080
	.byte		N12   , Cn3 , v084
	.byte		N12   , Gn3 
	.byte	W01
	.byte		        En3 , v080
	.byte	W12
	.byte		        Gn2 , v064
	.byte		N12   , Cn3 , v060
	.byte		N12   , Gn3 
	.byte	W01
	.byte		        En3 , v064
	.byte	W12
	.byte		N06   , Cn2 , v080
	.byte		N06   , Gn2 
	.byte		N05   , Cn3 
	.byte	W01
	.byte		        En3 
	.byte	W06
	.byte		        Cn2 , v068
	.byte		N05   , Gn2 
	.byte		N05   , Cn3 
	.byte		N06   , En3 , v064
	.byte	W06
	.byte		N12   , Gn2 
	.byte		N12   , En3 
	.byte	W01
	.byte		        Cn2 
	.byte		N12   , Cn3 , v060
	.byte	W13
	.byte		N05   , Cn2 , v084
	.byte		N05   , Gn2 
	.byte		N05   , Cn3 , v080
	.byte		N05   , En3 , v084
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Gn2 , v064
	.byte		N06   , Cn3 , v060
	.byte		N05   , En3 
	.byte	W07
	.byte		N06   , Cn2 , v076
	.byte		N05   , Gn2 
	.byte		N06   , Cn3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cn2 , v064
	.byte		N05   , Gn2 
	.byte		N06   , Cn3 
	.byte		N05   , En3 
	.byte	W07
	.byte		N12   , Dn2 , v084
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 , v080
	.byte		N12   , Gn3 , v084
	.byte	W13
	.byte		N06   , Gn2 , v064
	.byte		N06   , Bn2 
	.byte		N05   , Gn3 
	.byte	W01
@ 010   ----------------------------------------
	.byte		        Dn2 
	.byte	W05
	.byte		N06   , Bn2 
	.byte	W01
	.byte		        Dn2 
	.byte		N05   , Gn2 , v060
	.byte		N05   , Gn3 , v064
	.byte	W06
	.byte		N12   , Bn2 , v080
	.byte		N12   , Gn3 , v084
	.byte	W01
	.byte		        Dn2 , v080
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Gn2 , v060
	.byte		N12   , Gn3 , v064
	.byte	W01
	.byte		        Dn2 
	.byte		N12   , Bn2 , v060
	.byte	W12
	.byte		        Dn2 , v080
	.byte		N12   , An2 , v084
	.byte	W01
	.byte		        Dn3 , v080
	.byte		N12   , Fs3 
	.byte	W13
	.byte		N05   , Dn2 , v060
	.byte		N05   , An2 
	.byte		N05   , Dn3 
	.byte		N05   , Fs3 , v064
	.byte	W06
	.byte		        Dn2 
	.byte		N05   , An2 , v060
	.byte		N06   , Fs3 , v064
	.byte	W01
	.byte		N05   , Dn3 
	.byte	W06
	.byte		N12   , Dn2 , v080
	.byte		N12   , An2 , v084
	.byte		N12   , Dn3 , v080
	.byte		N12   , Fs3 
	.byte	W13
	.byte		N05   , Dn2 , v064
	.byte		N05   , An2 
	.byte		N06   , Dn3 , v060
	.byte		N05   , Fs3 
	.byte	W07
	.byte		        Dn2 , v064
	.byte		N05   , An2 
	.byte		N05   , Dn3 
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N12   , En2 , v084
	.byte		N12   , An2 , v080
	.byte		N12   , Cn3 , v084
	.byte		N12   , En3 , v080
	.byte	W05
@ 011   ----------------------------------------
	.byte	W08
	.byte		N06   , En2 , v068
	.byte		N06   , Cn3 , v064
	.byte		N06   , En3 
	.byte	W01
	.byte		N05   , An2 , v068
	.byte	W06
	.byte		        En2 , v060
	.byte		N06   , An2 , v064
	.byte		N05   , Cn3 
	.byte		N05   , En3 , v060
	.byte	W06
	.byte		N12   , Cn3 , v080
	.byte		N12   , En3 
	.byte	W01
	.byte		        En2 , v084
	.byte		N12   , An2 , v080
	.byte	W12
	.byte		N06   , An2 , v068
	.byte	W01
	.byte		N05   , En2 , v064
	.byte		N05   , Cn3 , v068
	.byte		N05   , En3 
	.byte	W06
	.byte		        En2 , v064
	.byte		N05   , Cn3 
	.byte		N06   , En3 , v068
	.byte	W01
	.byte		N05   , An2 
	.byte	W06
	.byte		N12   , En2 , v080
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W13
	.byte		N06   , En2 , v068
	.byte		N06   , An2 
	.byte		N05   , Cn3 
	.byte		N05   , En3 
	.byte	W06
	.byte		N06   , Cn3 , v064
	.byte	W01
	.byte		N05   , En2 
	.byte		N05   , An2 
	.byte		N05   , En3 
	.byte	W06
	.byte		        En2 , v084
	.byte		N05   , An2 
	.byte		N05   , Cn3 
	.byte		N05   , En3 
	.byte	W06
	.byte		N06   , En2 , v060
	.byte		N06   , Cn3 
	.byte		N06   , En3 , v064
	.byte	W01
	.byte		N05   , An2 , v060
	.byte	W06
	.byte		N06   , En2 , v076
	.byte		N06   , An2 , v080
	.byte		N05   , Cn3 , v076
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cn3 , v064
	.byte	W01
	.byte		        En2 , v060
	.byte		N05   , An2 
	.byte		N05   , En3 , v064
	.byte	W02
@ 012   ----------------------------------------
	.byte	W04
	.byte		N12   , Dn2 , v084
	.byte		N12   , Gn2 
	.byte		N12   , Gn3 
	.byte	W01
	.byte		        Bn2 
	.byte	W12
	.byte		N06   , Gn2 , v064
	.byte	W01
	.byte		N05   , Dn2 
	.byte		N05   , Bn2 
	.byte		N05   , Gn3 , v060
	.byte	W06
	.byte		        Dn2 , v064
	.byte		N05   , Gn2 
	.byte		N05   , Bn2 
	.byte		N06   , Gn3 , v060
	.byte	W06
	.byte		N12   , Gn2 , v080
	.byte	W01
	.byte		        Dn2 , v084
	.byte		N12   , Bn2 , v080
	.byte		N12   , Gn3 , v084
	.byte	W12
	.byte		        Gn2 , v064
	.byte	W01
	.byte		        Dn2 , v060
	.byte		N12   , Bn2 
	.byte		N12   , Gn3 
	.byte	W13
	.byte		        Dn2 , v084
	.byte		N12   , An2 
	.byte		N12   , Dn3 , v080
	.byte		N12   , Fs3 , v084
	.byte	W08
	.byte		VOL   , 81*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W05
	.byte		N06   , Dn2 , v060
	.byte		N06   , Dn3 , v064
	.byte		N06   , Fs3 , v060
	.byte	W01
	.byte		N05   , An2 , v064
	.byte	W05
	.byte		VOL   , 76*mus_knockin_on_heavens_door_mvl/mxv
	.byte		N06   , Dn3 , v060
	.byte		N06   , Fs3 , v064
	.byte	W01
	.byte		N05   , Dn2 , v060
	.byte		N06   , An2 
	.byte	W06
	.byte		N12   , Dn2 , v080
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W05
	.byte		VOL   , 70*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W08
@ 013   ----------------------------------------
	.byte		N06   , An2 , v064
	.byte		N06   , Dn3 
	.byte		N06   , Fs3 
	.byte	W01
	.byte		N05   , Dn2 
	.byte	W02
	.byte		VOL   , 65*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W04
	.byte		N05   
	.byte		N05   , An2 
	.byte		N05   , Dn3 
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N12   , Gn2 , v084
	.byte		N12   , Cn3 
	.byte	W01
	.byte		VOL   , 59*mus_knockin_on_heavens_door_mvl/mxv
	.byte		N12   , En3 
	.byte		N12   , Gn3 
	.byte	W11
	.byte		VOL   , 54*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W01
	.byte		N06   , En3 , v064
	.byte	W01
	.byte		N05   , Gn2 , v060
	.byte		N05   , Cn3 , v064
	.byte		N05   , Gn3 , v060
	.byte	W06
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 , v064
	.byte		N06   , Gn3 
	.byte	W01
	.byte		N05   , En3 , v060
	.byte	W03
	.byte		VOL   , 48*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W03
	.byte		N12   , Gn2 , v084
	.byte		N12   , Cn3 , v080
	.byte		N12   , En3 
	.byte		N12   , Gn3 , v084
	.byte	W08
	.byte		VOL   , 43*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W05
	.byte		N12   , Gn2 , v060
	.byte		N12   , Cn3 
	.byte		N12   , En3 , v064
	.byte		N12   , Gn3 
	.byte	W06
	.byte		VOL   , 38*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W07
	.byte		N06   , Gn2 , v084
	.byte		N06   , Cn3 
	.byte		N06   , En3 , v080
	.byte		N06   , Gn3 , v084
	.byte	W05
	.byte		VOL   , 32*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W01
	.byte		N06   , Gn2 , v064
	.byte	W01
	.byte		N05   , Cn3 , v068
	.byte		N05   , En3 
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N12   , Gn2 , v064
	.byte		N12   , Cn3 
	.byte		N12   , Gn3 , v060
	.byte	W01
	.byte		        En3 , v064
	.byte	W02
	.byte		VOL   , 27*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W10
	.byte		N05   , En3 , v080
	.byte	W01
	.byte		VOL   , 21*mus_knockin_on_heavens_door_mvl/mxv
	.byte		N05   , Gn2 , v084
	.byte		N05   , Cn3 
	.byte		N05   , Gn3 
	.byte	W03
@ 014   ----------------------------------------
	.byte	W03
	.byte		N06   , Gn2 , v060
	.byte		N06   , Cn3 
	.byte		N05   , En3 
	.byte		N05   , Gn3 , v064
	.byte	W06
	.byte		VOL   , 16*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W01
	.byte		N05   , Gn2 , v076
	.byte		N05   , Cn3 
	.byte		N05   , En3 , v080
	.byte		N05   , Gn3 , v076
	.byte	W06
	.byte		N06   , Gn2 , v060
	.byte		N05   , Cn3 
	.byte		N05   , En3 
	.byte		N05   , Gn3 
	.byte	W04
	.byte		VOL   , 10*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W02
	.byte		N12   , Dn2 , v084
	.byte		N12   , Bn2 
	.byte	W01
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte	W08
	.byte		VOL   , 5*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W04
	.byte		N06   , Gn2 , v064
	.byte	W01
	.byte		N05   , Dn2 
	.byte		N05   , Bn2 
	.byte		N05   , Gn3 
	.byte	W06
	.byte		VOL   , 0*mus_knockin_on_heavens_door_mvl/mxv
	.byte		N06   , Dn2 , v060
	.byte		N05   , Gn2 
	.byte	W01
	.byte		        Bn2 
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        Dn2 , v080
	.byte		N05   , Gn2 
	.byte		N05   , Bn2 
	.byte		N05   , Gn3 , v084
	.byte	W06
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_knockin_on_heavens_door_4:
	.byte	KEYSH , mus_knockin_on_heavens_door_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 64
	.byte		PAN   , c_v+5
	.byte		VOL   , 116*mus_knockin_on_heavens_door_mvl/mxv
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
	.byte	W92
	.byte	W03
	.byte		N05   , Bn3 , v084
	.byte	W01
@ 010   ----------------------------------------
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N10   , Bn3 , v088
	.byte	W13
	.byte		N06   , Gn3 , v084
	.byte	W07
	.byte		N18   , An3 , v088
	.byte	W32
	.byte	W01
	.byte		N06   
	.byte	W07
	.byte		N05   , An3 , v084
	.byte	W06
	.byte		N03   , Gn3 , v088
	.byte	W06
	.byte		N19   , An3 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W30
	.byte		N06   , Dn4 
	.byte	W14
	.byte		N12   
	.byte	W13
	.byte		N05   
	.byte	W07
	.byte		        An3 , v084
	.byte	W01
	.byte		VOL   , 108*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W11
	.byte		        101*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W12
	.byte		        94*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W01
	.byte		N06   , Fs3 , v080
	.byte	W07
@ 013   ----------------------------------------
	.byte		N04   , Gn3 , v084
	.byte	W03
	.byte		VOL   , 87*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W04
	.byte		N18   , Gn3 , v088
	.byte	W07
	.byte		VOL   , 79*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W11
	.byte		        72*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W12
	.byte		        65*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W11
	.byte		        58*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W11
	.byte		        50*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W12
	.byte		        43*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W11
	.byte		        36*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W11
	.byte		        29*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W03
@ 014   ----------------------------------------
	.byte	W09
	.byte		        21*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W11
	.byte		        14*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W09
	.byte		N05   , Bn3 , v084
	.byte	W02
	.byte		VOL   , 7*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W04
	.byte		N06   , Dn4 , v088
	.byte	W07
	.byte		VOL   , 0*mus_knockin_on_heavens_door_mvl/mxv
	.byte		N04   , Dn4 , v084
	.byte	W07
	.byte		N05   , Dn4 , v092
	.byte	W06
	.byte	FINE

@**************** Track 5 (Midi-Chn.6) ****************@

mus_knockin_on_heavens_door_5:
	.byte	KEYSH , mus_knockin_on_heavens_door_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 27
	.byte		PAN   , c_v+16
	.byte		VOL   , 75*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W09
	.byte		N48   , Bn2 , v092, gtp3
	.byte	W13
	.byte		N36   , Dn3 , v076, gtp2
	.byte	W13
	.byte		N24   , Gn3 , v084, gtp1
	.byte	W24
	.byte	W02
	.byte		N48   , Dn3 , v084, gtp3
	.byte		N24   , Fs3 , v084, gtp1
	.byte	W01
	.byte		N36   , An2 , v088, gtp2
	.byte	W24
	.byte	W02
	.byte		N24   , Fs3 , v084, gtp1
	.byte	W08
@ 002   ----------------------------------------
	.byte	W04
	.byte		N12   , An2 , v064
	.byte	W14
	.byte		N48   , An2 , v088, gtp3
	.byte	W01
	.byte		        Cn3 , v092, gtp2
	.byte	W02
	.byte		        En3 , v088, gtp1
	.byte	W60
	.byte	W03
	.byte		N24   , En3 , v076, gtp1
	.byte	W12
@ 003   ----------------------------------------
	.byte	W01
	.byte		        Cn3 , v088, gtp1
	.byte	W13
	.byte		N12   , En3 , v076
	.byte	W07
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N52   , Bn2 , v088
	.byte		N48   , Dn3 , v088, gtp3
	.byte		N52   , Gn3 
	.byte	W52
	.byte	W01
	.byte		N24   , Fs3 , v084, gtp1
	.byte	W13
	.byte		N36   , Dn3 , v076, gtp2
	.byte	W03
@ 004   ----------------------------------------
	.byte	W10
	.byte		N24   , Fs3 , v084, gtp1
	.byte	W13
	.byte		N12   , An2 , v080
	.byte	W13
	.byte		N48   , Gn2 , v092, gtp1
	.byte		N48   , Cn3 , v092, gtp1
	.byte		N48   , En3 , v088, gtp1
	.byte	W52
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N32   , En2 , v084
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W01
@ 005   ----------------------------------------
	.byte	W06
	.byte		N12   , Gn2 , v076
	.byte	W13
	.byte		N19   , Gn2 , v088
	.byte	W07
	.byte		N18   , En2 , v072
	.byte	W07
	.byte		N12   , Cn3 , v076
	.byte	W05
	.byte		N06   , Gn2 
	.byte	W07
	.byte		N24   , Gn2 , v088, gtp1
	.byte	W01
	.byte		N12   , Dn2 
	.byte		N48   , Bn2 , v088, gtp3
	.byte	W12
	.byte		N36   , Dn2 , v068, gtp2
	.byte	W13
	.byte		N24   , Gn2 , v084, gtp1
	.byte	W24
	.byte	W01
@ 006   ----------------------------------------
	.byte	W02
	.byte		N36   , Dn2 , v084, gtp2
	.byte		N12   , Fs2 , v088
	.byte		N24   , An2 , v084, gtp1
	.byte	W13
	.byte		N36   , Fs2 , v072, gtp2
	.byte	W13
	.byte		N24   , An2 , v084, gtp1
	.byte	W13
	.byte		N12   , Dn2 , v076
	.byte	W13
	.byte		        Gn2 , v088
	.byte	W01
	.byte		        En2 
	.byte		N12   , Cn3 
	.byte	W13
	.byte		N05   , Gn2 , v076
	.byte		N05   , Cn3 
	.byte	W13
	.byte		        Gn2 , v084
	.byte		N06   , Cn3 , v088
	.byte	W13
	.byte		N05   , Gn2 , v076
	.byte		N06   , Cn3 
	.byte	W02
@ 007   ----------------------------------------
	.byte	W11
	.byte		N05   , Gn2 , v084
	.byte		N05   , Cn3 
	.byte	W13
	.byte		N06   , Gn2 , v080
	.byte		N06   , Cn3 , v076
	.byte	W14
	.byte		N24   , Cn3 , v088, gtp1
	.byte	W06
	.byte		N06   , Gn2 , v072
	.byte	W06
	.byte		N12   , An2 , v076
	.byte	W07
	.byte		N05   , En2 , v072
	.byte	W07
	.byte		N12   , Dn2 , v088
	.byte		N24   , Gn2 , v088, gtp1
	.byte		N36   , Bn2 , v088, gtp2
	.byte	W13
	.byte		        Dn2 , v080, gtp3
	.byte	W13
	.byte		N24   , Gn2 , v088, gtp1
	.byte	W06
@ 008   ----------------------------------------
	.byte	W07
	.byte		N12   , Bn2 , v076
	.byte	W13
	.byte		N48   , Dn2 , v084, gtp3
	.byte	W14
	.byte		N36   , Dn3 , v076, gtp2
	.byte	W13
	.byte		N24   , An2 , v084, gtp1
	.byte	W24
	.byte	W02
	.byte		N48   , Cn2 , v088, gtp3
	.byte		N44   , Gn2 
	.byte	W23
@ 009   ----------------------------------------
	.byte	W17
	.byte		N12   , Cn3 , v076
	.byte	W06
	.byte		N05   , Gn2 , v080
	.byte	W07
	.byte		N24   , En3 , v084, gtp1
	.byte	W13
	.byte		N05   , Cn3 , v076
	.byte	W06
	.byte		N06   , Dn3 
	.byte	W07
	.byte		N24   , En3 , v092, gtp1
	.byte	W07
	.byte		N18   , Cn3 , v068
	.byte	W06
	.byte		N06   , Gn2 , v076
	.byte	W06
	.byte		N05   , An2 , v072
	.byte	W07
	.byte		N19   , Gn2 , v088
	.byte	W13
	.byte		N32   , Bn2 , v080
	.byte	W01
@ 010   ----------------------------------------
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W07
	.byte		N24   , Gn3 , v088, gtp1
	.byte	W12
	.byte		N12   , Dn3 , v076
	.byte	W07
	.byte		N05   , Bn2 , v084
	.byte	W06
	.byte		N24   , Fs3 , v084, gtp1
	.byte	W20
	.byte		        An2 , v076, gtp1
	.byte	W06
	.byte		        Fs3 , v084, gtp2
	.byte	W14
	.byte		N12   , Dn3 , v080
	.byte	W07
	.byte		N05   , An2 , v076
	.byte	W06
	.byte		N12   , En3 , v088
	.byte	W05
@ 011   ----------------------------------------
	.byte	W08
	.byte		        En3 , v076
	.byte	W01
	.byte		N24   , An2 , v072, gtp1
	.byte	W06
	.byte		        Cn3 , v072, gtp1
	.byte	W06
	.byte		        En3 , v088, gtp1
	.byte	W14
	.byte		N12   , An2 , v076
	.byte	W06
	.byte		N05   , Cn3 , v080
	.byte	W07
	.byte		N24   , En3 , v084, gtp1
	.byte	W06
	.byte		N12   , Cn3 , v072
	.byte	W07
	.byte		N24   , An2 , v076, gtp1
	.byte	W07
	.byte		N12   , Cn3 , v080
	.byte	W06
	.byte		N24   , En3 , v088, gtp1
	.byte	W07
	.byte		N12   , Cn3 , v072
	.byte	W06
	.byte		        An2 , v076
	.byte	W07
	.byte		N05   , Cn3 , v072
	.byte	W02
@ 012   ----------------------------------------
	.byte	W04
	.byte		N24   , Gn2 , v088, gtp1
	.byte	W13
	.byte		        Bn2 , v076, gtp2
	.byte	W07
	.byte		N32   , Gn3 , v072
	.byte	W07
	.byte		N18   , Gn2 , v084
	.byte	W13
	.byte		N12   , Bn2 , v076
	.byte	W07
	.byte		N05   , Gn2 , v084
	.byte	W06
	.byte		N12   , Dn3 , v088
	.byte	W06
	.byte		N24   , An2 , v072, gtp1
	.byte	W02
	.byte		VOL   , 70*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W05
	.byte		N24   , Dn3 , v076, gtp1
	.byte	W06
	.byte		VOL   , 65*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W01
	.byte		N05   , En3 
	.byte	W07
	.byte		N24   , Fs3 , v084, gtp1
	.byte	W04
	.byte		VOL   , 60*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W01
	.byte		N12   , An2 , v072
	.byte	W07
@ 013   ----------------------------------------
	.byte		        Dn3 , v076
	.byte	W03
	.byte		VOL   , 56*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W04
	.byte		N05   , An2 
	.byte	W07
	.byte		VOL   , 51*mus_knockin_on_heavens_door_mvl/mxv
	.byte		N18   , Gn2 , v088
	.byte	W06
	.byte		N19   , Cn3 , v072
	.byte	W05
	.byte		VOL   , 46*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W02
	.byte		N36   , En3 , v076, gtp2
	.byte	W07
	.byte		N18   , Gn2 , v072
	.byte	W03
	.byte		VOL   , 42*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W03
	.byte		N06   , Cn3 , v084
	.byte	W06
	.byte		N19   , Bn2 , v072
	.byte	W02
	.byte		VOL   , 37*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W05
	.byte		N12   , Gn2 , v080
	.byte	W06
	.byte		VOL   , 32*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W07
	.byte		N24   , En3 , v084, gtp1
	.byte	W05
	.byte		VOL   , 28*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W02
	.byte		N12   , Gn2 , v072
	.byte	W06
	.byte		N19   , Cn3 , v076
	.byte	W03
	.byte		VOL   , 23*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W04
	.byte		N19   , Gn2 
	.byte	W07
	.byte		VOL   , 18*mus_knockin_on_heavens_door_mvl/mxv
	.byte		N24   , En3 , v092, gtp1
	.byte	W03
@ 014   ----------------------------------------
	.byte	W03
	.byte		N18   , Cn3 , v068
	.byte	W06
	.byte		VOL   , 14*mus_knockin_on_heavens_door_mvl/mxv
	.byte		N12   , Gn2 , v076
	.byte	W07
	.byte		N06   , An2 , v072
	.byte	W04
	.byte		VOL   , 9*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W03
	.byte		N32   , Gn2 , v088
	.byte	W07
	.byte		N12   , Bn2 , v072
	.byte	W01
	.byte		VOL   , 4*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W05
	.byte		N18   , Dn3 , v080
	.byte	W06
	.byte		VOL   , 0*mus_knockin_on_heavens_door_mvl/mxv
	.byte		N12   , Bn2 , v076
	.byte	W07
	.byte		N05   , Gn3 , v088
	.byte	W06
	.byte	FINE

@**************** Track 6 (Midi-Chn.10) ****************@

mus_knockin_on_heavens_door_6:
	.byte	KEYSH , mus_knockin_on_heavens_door_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		VOL   , 116*mus_knockin_on_heavens_door_mvl/mxv
	.byte		N01   , Fs1 , v076
	.byte	W24
	.byte	W02
	.byte		N01   
	.byte	W24
	.byte	W02
	.byte		N01   
	.byte	W20
	.byte		        En1 , v060
	.byte	W06
	.byte		N01   
	.byte	W14
	.byte		        Dn2 , v064
	.byte	W04
@ 001   ----------------------------------------
	.byte	W08
	.byte		        En3 , v040
	.byte	W01
	.byte		        Cn1 , v072
	.byte		N01   , Bn2 , v060
	.byte	W12
	.byte		        Ds3 , v040
	.byte	W01
	.byte		        Fs1 
	.byte	W13
	.byte		        Cs1 , v072
	.byte		N01   , Fs1 , v060
	.byte		N01   , Cs3 , v044
	.byte	W13
	.byte		        Fs1 , v040
	.byte		N01   , Dn3 
	.byte	W09
	.byte		        Cn1 , v060
	.byte	W04
	.byte		        Cn1 , v072
	.byte		N01   , En3 , v044
	.byte	W01
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Dn3 , v040
	.byte	W01
	.byte		        Fs1 , v044
	.byte	W13
	.byte		        Cs1 , v072
	.byte		N01   , Fs1 , v060
	.byte		N01   , Cs3 , v040
	.byte	W08
@ 002   ----------------------------------------
	.byte	W05
	.byte		        Fs1 , v044
	.byte		N01   , Ds3 , v040
	.byte	W13
	.byte		        Cn1 , v072
	.byte		N01   , Fs1 , v060
	.byte		N01   , En3 , v044
	.byte	W13
	.byte		        Fs1 , v040
	.byte		N01   , Ds3 
	.byte	W13
	.byte		        Cs1 , v072
	.byte		N01   , Fs1 , v060
	.byte		N01   , Cs3 , v044
	.byte	W13
	.byte		        As1 
	.byte		N01   , En3 , v040
	.byte	W07
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N01   , Cs3 , v040
	.byte	W01
	.byte		        Cs1 , v072
	.byte	W12
	.byte		        As1 , v040
	.byte		N01   , En3 
	.byte	W07
	.byte		        Ds3 , v044
	.byte	W06
@ 003   ----------------------------------------
	.byte	W01
	.byte		        Cs1 , v072
	.byte		N01   , Fs1 , v060
	.byte		N01   , Cs3 , v040
	.byte	W13
	.byte		        As1 , v044
	.byte		N01   , En3 , v040
	.byte	W06
	.byte		        Bn2 , v052
	.byte	W01
	.byte		        Ds3 , v044
	.byte	W02
	.byte		        Bn2 , v052
	.byte	W02
	.byte		        Bn2 , v056
	.byte	W02
	.byte		        Cn1 , v072
	.byte		N01   , Bn2 , v060
	.byte		N01   , En3 , v044
	.byte	W13
	.byte		        Fs1 , v040
	.byte		N01   , Ds3 , v044
	.byte	W07
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs1 , v072
	.byte		N01   , Fs1 , v060
	.byte		N01   , Cs3 , v040
	.byte	W13
	.byte		        Fs1 
	.byte	W01
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn1 , v060
	.byte		N01   , Dn3 , v044
	.byte	W07
	.byte		        Cn1 , v072
	.byte		N01   , Fs1 , v064
	.byte		N01   , En3 , v040
	.byte	W12
	.byte		        Fs1 
	.byte	W01
	.byte		        Dn3 , v044
	.byte	W03
@ 004   ----------------------------------------
	.byte	W03
	.byte		        Dn3 , v040
	.byte	W07
	.byte		        Cs1 , v072
	.byte		N01   , Fs1 , v064
	.byte		N01   , Cs3 , v044
	.byte	W13
	.byte		        Fs1 
	.byte		N01   , Ds3 , v040
	.byte	W07
	.byte		        Dn3 , v044
	.byte	W06
	.byte		        Cn1 , v072
	.byte		N01   , Fs1 , v060
	.byte		N01   , En3 , v040
	.byte	W13
	.byte		        Cn1 
	.byte		N01   , Gs1 
	.byte	W01
	.byte		        Cs1 
	.byte		N01   , Fn2 
	.byte		N01   , Cs3 , v020
	.byte	W12
	.byte		        Cs1 , v048
	.byte		N01   , Gs1 
	.byte		N01   , Cs3 , v024
	.byte	W01
	.byte		        Cn1 , v048
	.byte		N01   , Fn2 , v044
	.byte	W12
	.byte		        Cs1 , v052
	.byte	W01
	.byte		        Cn1 
	.byte		N01   , Gs1 
	.byte		N01   , Fn2 
	.byte		N01   , Cs3 , v028
	.byte	W13
	.byte		        Cn1 , v060
	.byte		N01   , Cs1 
	.byte		N01   , Gs1 
	.byte		N01   , Fn2 , v056
	.byte		N01   , Cs3 , v036
	.byte	W07
@ 005   ----------------------------------------
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , Cs1 
	.byte		N01   , Gs1 
	.byte		N01   , Fn2 , v060
	.byte		N01   , Cs3 , v040
	.byte	W13
	.byte		        Cn1 , v072
	.byte		N01   , Cs1 
	.byte		N01   , Gs1 , v064
	.byte		N01   , Cs3 , v040
	.byte	W01
	.byte		        Fn2 , v064
	.byte	W05
	.byte		        Bn1 
	.byte	W07
	.byte		        Cn1 , v076
	.byte		N01   , Cs1 
	.byte		N01   , Gs1 , v072
	.byte		N01   , Dn2 , v064
	.byte		N01   , En3 , v040
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W01
	.byte		        Ds3 , v044
	.byte	W06
	.byte		        Cn1 , v072
	.byte		N01   , An2 , v060
	.byte		N01   , En3 , v040
	.byte	W14
	.byte		        Fs1 
	.byte		N01   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fs1 , v060
	.byte	W01
	.byte		        Cs1 , v072
	.byte		N01   , Cs3 , v040
	.byte	W12
	.byte		        Dn3 
	.byte	W01
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn3 
	.byte	W05
@ 006   ----------------------------------------
	.byte	W02
	.byte		        Cn1 , v072
	.byte		N01   , Fs1 , v064
	.byte		N01   , En3 , v040
	.byte	W13
	.byte		        Fs1 
	.byte		N01   , Dn3 , v044
	.byte	W07
	.byte		        Dn3 , v040
	.byte	W06
	.byte		        Cs1 , v072
	.byte		N01   , Fs1 , v064
	.byte		N01   , Cs3 , v044
	.byte	W14
	.byte		        Fs1 , v040
	.byte		N01   , Ds3 , v044
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fs1 , v064
	.byte		N01   , En3 , v040
	.byte	W01
	.byte		        Cn1 , v072
	.byte	W13
	.byte		        Fs1 , v040
	.byte		N01   , Ds3 
	.byte	W06
	.byte		        Dn3 , v044
	.byte	W07
	.byte		        Cs1 , v072
	.byte		N01   , Fs1 , v064
	.byte		N01   , Cs3 , v040
	.byte	W13
	.byte		        As1 
	.byte		N01   , En3 
	.byte	W02
@ 007   ----------------------------------------
	.byte	W04
	.byte		        Ds3 
	.byte	W07
	.byte		        Fs1 , v060
	.byte		N01   , En3 , v044
	.byte	W07
	.byte		        En1 , v032
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        En1 , v036
	.byte		N01   , En3 , v040
	.byte	W01
	.byte		        Fs1 , v036
	.byte	W05
	.byte		        Ds3 , v040
	.byte	W01
	.byte		        En1 , v044
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        En1 , v048
	.byte		N01   , Fs1 
	.byte		N01   , Cs3 , v040
	.byte	W07
	.byte		        En1 , v056
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        En1 , v060
	.byte	W01
	.byte		        Fs1 , v064
	.byte		N01   , En3 , v044
	.byte	W07
	.byte		        Ds3 
	.byte	W06
	.byte		        Cn1 , v072
	.byte		N01   , An2 , v060
	.byte		N01   , En3 , v040
	.byte	W12
	.byte		        Bn2 
	.byte	W01
	.byte		        Ds3 
	.byte	W07
	.byte		        Dn3 , v044
	.byte	W06
	.byte		        En1 , v072
	.byte		N01   , Bn2 , v060
	.byte		N01   , Cs3 , v040
	.byte	W06
@ 008   ----------------------------------------
	.byte	W07
	.byte		        Bn2 
	.byte		N01   , Dn3 , v044
	.byte	W06
	.byte		        Bn2 , v040
	.byte	W01
	.byte		        Cn1 , v060
	.byte		N01   , Dn3 , v040
	.byte	W06
	.byte		        Cn1 , v072
	.byte		N01   , Bn2 , v064
	.byte		N01   , En3 , v044
	.byte	W13
	.byte		        Bn2 
	.byte	W01
	.byte		        Dn3 , v040
	.byte	W06
	.byte		        Bn2 
	.byte		N01   , Dn3 
	.byte	W06
	.byte		        En1 , v072
	.byte		N01   , Bn2 , v064
	.byte	W01
	.byte		        Cs3 , v044
	.byte	W12
	.byte		        Ds3 , v040
	.byte	W01
	.byte		        Bn2 , v044
	.byte	W06
	.byte		        Bn2 , v040
	.byte		N01   , Dn3 
	.byte	W07
	.byte		        Cn1 , v072
	.byte		N01   , Bn2 , v060
	.byte		N01   , En3 , v044
	.byte	W13
	.byte		        En1 , v032
	.byte		N01   , Bn2 , v040
	.byte		N01   , Dn3 , v044
	.byte	W07
	.byte		        Bn2 , v040
	.byte		N01   , Dn3 , v044
	.byte	W03
@ 009   ----------------------------------------
	.byte	W03
	.byte		        En1 , v040
	.byte		N01   , Dn3 , v044
	.byte	W01
	.byte		        Bn2 , v060
	.byte	W06
	.byte		        Dn3 , v052
	.byte	W06
	.byte		        En1 , v048
	.byte		N01   , Bn2 , v044
	.byte		N01   , Dn3 , v056
	.byte	W07
	.byte		        En1 , v048
	.byte		N01   , Bn2 , v040
	.byte		N01   , Dn3 , v056
	.byte	W06
	.byte		        Cn1 , v072
	.byte		N01   , Bn2 , v064
	.byte	W01
	.byte		        Dn3 , v060
	.byte	W06
	.byte		        En1 , v056
	.byte		N01   , Dn3 , v064
	.byte	W07
	.byte		        Bn2 , v040
	.byte		N01   , Dn3 , v064
	.byte	W06
	.byte		        Bn2 , v040
	.byte		N01   , Dn3 , v068
	.byte	W06
	.byte		        Dn3 , v072
	.byte	W01
	.byte		        En1 , v068
	.byte		N01   , Bn2 , v060
	.byte	W06
	.byte		        Dn3 , v056
	.byte	W07
	.byte		        En1 , v076
	.byte		N01   , As1 
	.byte		N01   , En3 , v044
	.byte	W07
	.byte		        Ds3 , v040
	.byte	W06
	.byte		        Cn1 , v072
	.byte		N01   , Fs1 , v060
	.byte		N01   , En3 , v044
	.byte	W13
	.byte		        Ds3 
	.byte	W01
@ 010   ----------------------------------------
	.byte	W06
	.byte		        Dn3 , v040
	.byte	W06
	.byte		        Cs1 , v072
	.byte		N01   , Bn2 , v060
	.byte		N01   , Cs3 , v044
	.byte	W13
	.byte		        Bn2 , v040
	.byte		N01   , Dn3 
	.byte	W07
	.byte		        Cn1 , v060
	.byte		N01   , Ds3 , v040
	.byte	W07
	.byte		        Cn1 , v072
	.byte		N01   , Bn2 , v060
	.byte		N01   , En3 , v044
	.byte	W13
	.byte		        Bn2 
	.byte		N01   , Dn3 
	.byte	W06
	.byte		        Dn3 , v040
	.byte	W07
	.byte		        Cs1 , v072
	.byte		N01   , Bn2 , v064
	.byte		N01   , Cs3 , v040
	.byte	W13
	.byte		        Bn2 , v044
	.byte		N01   , Ds3 , v040
	.byte	W06
	.byte		        Bn2 
	.byte		N01   , Dn3 
	.byte	W07
	.byte		        Cn1 , v072
	.byte		N01   , Bn2 , v064
	.byte		N01   , En3 , v044
	.byte	W05
@ 011   ----------------------------------------
	.byte	W08
	.byte		        Bn2 
	.byte		N01   , Ds3 
	.byte	W07
	.byte		        Bn2 , v040
	.byte		N01   , Dn3 , v044
	.byte	W06
	.byte		        Cs1 , v072
	.byte	W01
	.byte		        Bn2 , v064
	.byte		N01   , Cs3 , v040
	.byte	W12
	.byte		        Bn2 , v044
	.byte	W01
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W01
	.byte		        Bn2 , v040
	.byte	W05
	.byte		        En3 , v044
	.byte	W01
	.byte		        Cn1 , v072
	.byte		N01   , Bn2 , v064
	.byte	W13
	.byte		        Bn2 , v044
	.byte		N01   , Dn3 , v040
	.byte	W06
	.byte		        Bn2 
	.byte	W01
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs1 , v072
	.byte		N01   , Bn2 , v064
	.byte		N01   , Cs3 , v040
	.byte	W13
	.byte		        Ds3 
	.byte	W01
	.byte		        Bn2 , v044
	.byte	W06
	.byte		        Bn2 , v040
	.byte		N01   , Cs3 , v044
	.byte	W02
@ 012   ----------------------------------------
	.byte	W04
	.byte		        Cn1 , v072
	.byte		N01   , En3 , v040
	.byte	W01
	.byte		        Bn2 , v060
	.byte	W12
	.byte		        Bn2 , v044
	.byte		N01   , Ds3 , v040
	.byte	W07
	.byte		        Bn2 
	.byte		N01   , Dn3 
	.byte	W07
	.byte		        Cs1 , v072
	.byte		N01   , Bn2 , v060
	.byte		N01   , Cs3 , v044
	.byte	W13
	.byte		        Bn2 , v040
	.byte		N01   , Dn3 
	.byte	W07
	.byte		        Bn2 , v044
	.byte		N01   , Ds3 
	.byte	W06
	.byte		        Cn1 , v072
	.byte		N01   , Bn2 , v060
	.byte		N01   , En3 , v040
	.byte	W08
	.byte		VOL   , 108*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W05
	.byte		N01   , Bn2 
	.byte		N01   , Dn3 , v044
	.byte	W06
	.byte		VOL   , 101*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W01
	.byte		N01   , Bn2 
	.byte		N01   , Dn3 , v040
	.byte	W06
	.byte		        Cs1 , v072
	.byte		N01   , Bn2 , v060
	.byte	W01
	.byte		        Cs3 , v044
	.byte	W04
	.byte		VOL   , 94*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W08
@ 013   ----------------------------------------
	.byte	W01
	.byte		N01   , Bn2 
	.byte		N01   , Ds3 
	.byte	W02
	.byte		VOL   , 87*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W04
	.byte		N01   , Bn2 
	.byte		N01   , Dn3 
	.byte	W06
	.byte		        Cn1 , v072
	.byte		N01   , Bn2 , v060
	.byte	W01
	.byte		VOL   , 79*mus_knockin_on_heavens_door_mvl/mxv
	.byte		N01   , En3 , v040
	.byte	W11
	.byte		VOL   , 72*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W01
	.byte		N01   , Ds3 
	.byte	W01
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn2 , v044
	.byte		N01   , Dn3 , v040
	.byte	W04
	.byte		VOL   , 65*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W02
	.byte		N01   , Bn2 , v060
	.byte	W01
	.byte		        Cs1 , v072
	.byte		N01   , Cs3 , v044
	.byte	W08
	.byte		VOL   , 58*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W05
	.byte		N01   , Bn2 , v040
	.byte		N01   , En3 
	.byte	W06
	.byte		VOL   , 50*mus_knockin_on_heavens_door_mvl/mxv
	.byte		N01   , Ds3 , v044
	.byte	W01
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn1 , v072
	.byte		N01   , Cs1 
	.byte		N01   , Bn2 , v060
	.byte		N01   , En3 , v040
	.byte	W05
	.byte		VOL   , 43*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W08
	.byte		N01   , Cs1 , v072
	.byte		N01   , Dn3 , v044
	.byte	W01
	.byte		        Bn2 , v040
	.byte	W02
	.byte		VOL   , 36*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W04
	.byte		N01   
	.byte		N01   , Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W01
	.byte		VOL   , 29*mus_knockin_on_heavens_door_mvl/mxv
	.byte		N01   , Cs1 , v072
	.byte		N01   , Bn2 , v060
	.byte	W03
@ 014   ----------------------------------------
	.byte	W03
	.byte		        Cn3 , v040
	.byte	W06
	.byte		VOL   , 21*mus_knockin_on_heavens_door_mvl/mxv
	.byte		N01   , Bn2 , v044
	.byte	W01
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn2 , v040
	.byte	W01
	.byte		        Cs3 , v044
	.byte	W03
	.byte		VOL   , 14*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W03
	.byte		N01   , Cn1 , v072
	.byte		N01   , Bn2 , v064
	.byte		N01   , En3 , v044
	.byte	W08
	.byte		VOL   , 7*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W04
	.byte		N01   , Ds3 , v040
	.byte	W01
	.byte		        Bn2 , v044
	.byte	W06
	.byte		VOL   , 0*mus_knockin_on_heavens_door_mvl/mxv
	.byte	W01
	.byte		N01   , Dn3 , v040
	.byte	W06
	.byte		        Cs1 , v072
	.byte		N01   , Bn2 , v060
	.byte		N01   , Cs3 , v040
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

mus_knockin_on_heavens_door:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_knockin_on_heavens_door_pri	@ Priority
	.byte	mus_knockin_on_heavens_door_rev	@ Reverb.

	.word	mus_knockin_on_heavens_door_grp

	.word	mus_knockin_on_heavens_door_1
	.word	mus_knockin_on_heavens_door_2
	.word	mus_knockin_on_heavens_door_3
	.word	mus_knockin_on_heavens_door_4
	.word	mus_knockin_on_heavens_door_5
	.word	mus_knockin_on_heavens_door_6

	.end
