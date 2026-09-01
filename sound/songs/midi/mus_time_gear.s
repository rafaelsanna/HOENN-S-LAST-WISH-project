	.include "MPlayDef.s"

	.equ	mus_time_gear_grp, voicegroup_fly_me_to_the_moon
	.equ	mus_time_gear_pri, 0
	.equ	mus_time_gear_rev, reverb_set+50
	.equ	mus_time_gear_mvl, 100
	.equ	mus_time_gear_key, 0
	.equ	mus_time_gear_tbs, 1
	.equ	mus_time_gear_exg, 1
	.equ	mus_time_gear_cmp, 1

	.section .rodata
	.global	mus_time_gear
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_time_gear_1:
	.byte	KEYSH , mus_time_gear_key+0
mus_time_gear_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 80*mus_time_gear_tbs/2
	.byte	TEMPO , 79*mus_time_gear_tbs/2
	.byte	TEMPO , 79*mus_time_gear_tbs/2
	.byte	TEMPO , 79*mus_time_gear_tbs/2
	.byte		VOICE , 0
	.byte		        0
	.byte		VOL   , 101*mus_time_gear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 102*mus_time_gear_mvl/mxv
	.byte		        110*mus_time_gear_mvl/mxv
	.byte		BENDR , 12
	.byte		        12
	.byte		VOL   , 102*mus_time_gear_mvl/mxv
	.byte		        110*mus_time_gear_mvl/mxv
	.byte		TIE   , En3 , v044
	.byte		TIE   , Fs3 
	.byte		TIE   , An3 , v056
	.byte		N36   , Bn4 , v044
	.byte		TIE   , Bn5 , v056
	.byte	W07
	.byte		N32   , En4 , v040, gtp3
	.byte	W06
	.byte		        An4 , v040, gtp3
	.byte		N23   , En5 , v052
	.byte	W05
	.byte		N32   , Dn4 , v040, gtp3
	.byte	W06
	.byte		        Gn4 , v040, gtp3
	.byte		TIE   , Dn5 , v052
	.byte	W06
	.byte		N32   , Bn3 , v040, gtp3
	.byte	W06
	.byte		        Bn4 , v040, gtp3
	.byte		TIE   , En5 , v052
	.byte	W06
	.byte		N36   , En4 , v040
	.byte	W06
	.byte		N32   , An4 , v040, gtp3
	.byte	W06
	.byte		N36   , Dn4 
	.byte	W06
	.byte		N32   , Gn4 , v040, gtp3
	.byte	W06
	.byte		N36   , Bn3 
	.byte	W06
	.byte		N32   , Bn4 , v040, gtp3
	.byte	W06
	.byte		        En4 , v040, gtp3
	.byte	W06
	.byte		        An4 , v040, gtp3
	.byte	W06
	.byte		        Dn4 , v040, gtp3
	.byte	W06
	.byte		        Gn4 , v040, gtp3
	.byte	W06
	.byte		        Bn3 , v040, gtp3
	.byte	W06
	.byte		        Bn4 , v040, gtp3
	.byte	W06
	.byte		N36   , En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 001   ----------------------------------------
mus_time_gear_1_001:
	.byte		N36   , Bn4 , v044
	.byte	W07
	.byte		N32   , En4 , v040, gtp3
	.byte	W06
	.byte		        An4 , v040, gtp3
	.byte	W05
	.byte		        Dn4 , v040, gtp3
	.byte	W06
	.byte		        Gn4 , v040, gtp3
	.byte	W06
	.byte		        Bn3 , v040, gtp3
	.byte	W06
	.byte		        Bn4 , v040, gtp3
	.byte	W06
	.byte		N36   , En4 
	.byte	W06
	.byte		N32   , An4 , v040, gtp3
	.byte	W06
	.byte		N36   , Dn4 
	.byte	W06
	.byte		N32   , Gn4 , v040, gtp3
	.byte	W06
	.byte		N36   , Bn3 
	.byte	W06
	.byte		N32   , Bn4 , v040, gtp3
	.byte	W06
	.byte		        En4 , v040, gtp3
	.byte	W06
	.byte		        An4 , v040, gtp3
	.byte	W06
	.byte		        Dn4 , v040, gtp3
	.byte	W06
	.byte		        Gn4 , v040, gtp3
	.byte	W06
	.byte		        Bn3 , v040, gtp3
	.byte	W06
	.byte		        Bn4 , v040, gtp3
	.byte	W06
	.byte		N28   , En4 , v040, gtp1
	.byte	W06
	.byte		N23   , An4 
	.byte	W06
	.byte		N17   , Dn4 
	.byte	W06
	.byte		N11   , Gn4 
	.byte	W06
	.byte		N06   , Bn3 
	.byte	W04
	.byte	PEND
	.byte		EOT   , Dn5 
	.byte		        En5 
	.byte	W01
	.byte		        En3 
	.byte		        Fs3 
	.byte		        An3 
	.byte		        Bn5 
	.byte	W01
@ 002   ----------------------------------------
mus_time_gear_1_002:
	.byte		TIE   , Dn3 , v044
	.byte		TIE   , En3 
	.byte		TIE   , Gn3 , v056
	.byte		N36   , An4 , v044
	.byte		TIE   , An5 , v056
	.byte	W07
	.byte		N17   , Dn4 , v040
	.byte	W06
	.byte		N32   , En4 , v040, gtp3
	.byte		TIE   , Dn5 , v052
	.byte	W05
	.byte		N32   , Bn3 , v040, gtp3
	.byte	W06
	.byte		N18   , Dn4 
	.byte		TIE   , En5 , v052
	.byte	W06
	.byte		N32   , An3 , v040, gtp3
	.byte	W06
	.byte		N68   , An4 , v052, gtp3
	.byte	W06
	.byte		N17   , Dn4 , v040
	.byte	W06
	.byte		N32   , En4 , v040, gtp3
	.byte	W06
	.byte		N36   , Bn3 
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W06
	.byte		N36   , An3 
	.byte	W06
	.byte		N32   , An4 , v040, gtp3
	.byte	W06
	.byte		N17   , Dn4 
	.byte	W06
	.byte		N32   , En4 , v040, gtp3
	.byte	W06
	.byte		        Bn3 , v040, gtp3
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W06
	.byte		N32   , An3 , v040, gtp3
	.byte	W06
	.byte		        An4 , v040, gtp3
	.byte	W06
	.byte		N17   , Dn4 
	.byte	W06
	.byte		N36   , En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N19   , Dn4 
	.byte	W06
	.byte		N36   , An3 
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        An4 , v044
	.byte	W07
	.byte		N17   , Dn4 , v040
	.byte	W06
	.byte		N32   , En4 , v040, gtp3
	.byte	W05
	.byte		        Bn3 , v040, gtp3
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W06
	.byte		N32   , An3 , v040, gtp3
	.byte	W06
	.byte		        An4 , v040, gtp3
	.byte	W06
	.byte		N17   , Dn4 
	.byte	W06
	.byte		N32   , En4 , v040, gtp3
	.byte	W06
	.byte		N36   , Bn3 
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W06
	.byte		N36   , An3 
	.byte	W06
	.byte		N32   , An4 , v040, gtp3
	.byte	W06
	.byte		N17   , Dn4 
	.byte	W06
	.byte		N32   , En4 , v040, gtp3
	.byte	W06
	.byte		        Bn3 , v040, gtp3
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W06
	.byte		N32   , An3 , v040, gtp3
	.byte	W06
	.byte		N36   , An4 
	.byte	W06
	.byte		N17   , Dn4 
	.byte	W06
	.byte		N24   , En4 
	.byte	W06
	.byte		N18   , Bn3 
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W06
	.byte		N06   , An3 
	.byte	W05
	.byte		EOT   , En5 
	.byte	W01
	.byte		        Dn3 
	.byte		        En3 
	.byte		        Gn3 
	.byte		        Dn5 
	.byte		        An5 
@ 004   ----------------------------------------
	.byte	TEMPO , 79*mus_time_gear_tbs/2
	.byte	TEMPO , 79*mus_time_gear_tbs/2
	.byte	TEMPO , 79*mus_time_gear_tbs/2
	.byte		VOL   , 102*mus_time_gear_mvl/mxv
	.byte		        110*mus_time_gear_mvl/mxv
	.byte		BENDR , 12
	.byte		        12
	.byte		VOL   , 102*mus_time_gear_mvl/mxv
	.byte		        110*mus_time_gear_mvl/mxv
	.byte		TIE   , En3 , v044
	.byte		TIE   , Fs3 
	.byte		N01   , An3 , v056
	.byte		N36   , Bn4 , v044
	.byte		TIE   , Bn5 , v056
	.byte	W07
	.byte		N32   , En4 , v040, gtp3
	.byte	W06
	.byte		        An4 , v040, gtp3
	.byte		N23   , En5 , v052
	.byte	W05
	.byte		N32   , Dn4 , v040, gtp3
	.byte	W06
	.byte		        Gn4 , v040, gtp3
	.byte		TIE   , Dn5 , v052
	.byte	W06
	.byte		N32   , Bn3 , v040, gtp3
	.byte	W06
	.byte		        Bn4 , v040, gtp3
	.byte		TIE   , En5 , v052
	.byte	W06
	.byte		N36   , En4 , v040
	.byte	W06
	.byte		N32   , An4 , v040, gtp3
	.byte	W06
	.byte		N36   , Dn4 
	.byte	W06
	.byte		N32   , Gn4 , v040, gtp3
	.byte	W06
	.byte		N36   , Bn3 
	.byte	W06
	.byte		N32   , Bn4 , v040, gtp3
	.byte	W06
	.byte		        En4 , v040, gtp3
	.byte	W06
	.byte		        An4 , v040, gtp3
	.byte	W06
	.byte		        Dn4 , v040, gtp3
	.byte	W06
	.byte		        Gn4 , v040, gtp3
	.byte	W06
	.byte		        Bn3 , v040, gtp3
	.byte	W06
	.byte		        Bn4 , v040, gtp3
	.byte	W06
	.byte		N36   , En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_time_gear_1_001
	.byte		EOT   , Dn5 
	.byte		        En5 
	.byte	W01
	.byte		        En3 
	.byte		        Fs3 
	.byte		        Bn5 
	.byte	W01
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_time_gear_1_002
@ 007   ----------------------------------------
	.byte		N36   , An4 , v044
	.byte	W07
	.byte		N17   , Dn4 , v040
	.byte	W06
	.byte		N32   , En4 , v040, gtp3
	.byte	W05
	.byte		        Bn3 , v040, gtp3
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W06
	.byte		N32   , An3 , v040, gtp3
	.byte	W06
	.byte		        An4 , v040, gtp3
	.byte	W06
	.byte		N17   , Dn4 
	.byte	W06
	.byte		N32   , En4 , v040, gtp3
	.byte	W06
	.byte		N36   , Bn3 
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W06
	.byte		N36   , An3 
	.byte	W06
	.byte		N32   , An4 , v040, gtp3
	.byte	W06
	.byte		N17   , Dn4 
	.byte	W06
	.byte		N32   , En4 , v040, gtp3
	.byte	W06
	.byte		        Bn3 , v040, gtp3
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W06
	.byte		N32   , An3 , v040, gtp3
	.byte	W06
	.byte		        An4 , v040, gtp3
	.byte	W06
	.byte		N17   , Dn4 
	.byte	W06
	.byte		N23   , En4 
	.byte	W06
	.byte		N17   , Bn3 
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W06
	.byte		N06   , An3 
	.byte	W04
	.byte		EOT   , En5 
	.byte	W01
	.byte		        Dn3 
	.byte		        En3 
	.byte		        Gn3 
	.byte		        Dn5 
	.byte		        An5 
	.byte	W01
@ 008   ----------------------------------------
mus_time_gear_1_008:
	.byte	TEMPO , 79*mus_time_gear_tbs/2
	.byte		TIE   , Cn3 , v044
	.byte		TIE   , Dn3 
	.byte		TIE   , Fn3 , v056
	.byte		N36   , Gn4 , v044
	.byte		TIE   , Bn5 , v056
	.byte	W07
	.byte		N17   , Cn4 , v040
	.byte	W06
	.byte		N32   , Dn4 , v040, gtp3
	.byte		N23   , En5 , v052
	.byte	W05
	.byte		N32   , An3 , v040, gtp3
	.byte	W06
	.byte		N18   , Cn4 
	.byte		TIE   , Dn5 , v052
	.byte	W06
	.byte		N32   , Gn3 , v040, gtp3
	.byte	W06
	.byte		        Gn4 , v040, gtp3
	.byte		TIE   , En5 , v052
	.byte	W06
	.byte		N17   , Cn4 , v040
	.byte	W06
	.byte		N32   , Dn4 , v040, gtp3
	.byte	W06
	.byte		N36   , An3 
	.byte	W06
	.byte		N18   , Cn4 
	.byte	W06
	.byte		N36   , Gn3 
	.byte	W06
	.byte		N32   , Gn4 , v040, gtp3
	.byte	W06
	.byte		N17   , Cn4 
	.byte	W06
	.byte		N32   , Dn4 , v040, gtp3
	.byte	W06
	.byte		        An3 , v040, gtp3
	.byte	W06
	.byte		N18   , Cn4 
	.byte	W06
	.byte		N32   , Gn3 , v040, gtp3
	.byte	W06
	.byte		        Gn4 , v040, gtp3
	.byte	W06
	.byte		N17   , Cn4 
	.byte	W06
	.byte		N23   , Dn4 
	.byte	W06
	.byte		N17   , An3 
	.byte	W06
	.byte		N11   , Cn4 
	.byte	W06
	.byte		N06   , Gn3 
	.byte	W04
	.byte	PEND
	.byte		EOT   , Dn5 
	.byte	W01
	.byte		        En5 
	.byte		        Bn5 
	.byte	W01
	.byte		        Cn3 
	.byte		        Dn3 
	.byte		        Fn3 
@ 009   ----------------------------------------
	.byte		TIE   , Bn2 , v044
	.byte		TIE   , Cs3 
	.byte		TIE   , Fs3 , v056
	.byte		N36   , An4 , v044
	.byte		TIE   , An5 , v056
	.byte	W07
	.byte		N17   , Dn4 , v040
	.byte	W06
	.byte		N32   , En4 , v040, gtp3
	.byte		TIE   , Dn5 , v052
	.byte	W05
	.byte		N32   , Bn3 , v040, gtp3
	.byte	W06
	.byte		N18   , Dn4 
	.byte		TIE   , En5 , v052
	.byte	W06
	.byte		N32   , An3 , v040, gtp3
	.byte	W06
	.byte		N68   , An4 , v052, gtp3
	.byte	W06
	.byte		N17   , Dn4 , v040
	.byte	W06
	.byte		N32   , En4 , v040, gtp3
	.byte	W06
	.byte		N36   , Bn3 
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W06
	.byte		N36   , An3 
	.byte	W06
	.byte		N32   , An4 , v040, gtp3
	.byte	W06
	.byte		N17   , Dn4 
	.byte	W06
	.byte		N32   , En4 , v040, gtp3
	.byte	W06
	.byte		        Bn3 , v040, gtp3
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W06
	.byte		N32   , An3 , v040, gtp3
	.byte	W06
	.byte		        An4 , v040, gtp3
	.byte	W06
	.byte		N17   , Dn4 
	.byte	W06
	.byte		N23   , En4 
	.byte	W06
	.byte		N17   , Bn3 
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W06
	.byte		N06   , An3 
	.byte	W04
	.byte		EOT   , En5 
	.byte	W01
	.byte		        Dn5 
	.byte		        An5 
	.byte	W01
	.byte		        Bn2 
	.byte		        Cs3 
	.byte		        Fs3 
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_time_gear_1_008
	.byte		EOT   , Dn5 
	.byte	W01
	.byte		        En5 
	.byte		        Bn5 
	.byte	W01
	.byte		        Cn3 
	.byte		        Dn3 
	.byte		        Fn3 
@ 011   ----------------------------------------
	.byte		TIE   , Bn2 , v044
	.byte		TIE   , Cs3 
	.byte		TIE   , Fs3 , v052
	.byte		N36   , An4 , v044
	.byte		TIE   , An5 , v056
	.byte	W07
	.byte		N17   , Dn4 , v040
	.byte	W06
	.byte		N32   , En4 , v040, gtp3
	.byte		TIE   , Dn5 , v052
	.byte	W05
	.byte		N32   , Bn3 , v040, gtp3
	.byte	W06
	.byte		N18   , Dn4 
	.byte		TIE   , En5 , v052
	.byte	W06
	.byte		N32   , An3 , v040, gtp3
	.byte	W06
	.byte		N68   , An4 , v052, gtp3
	.byte	W06
	.byte		N17   , Dn4 , v040
	.byte	W06
	.byte		N32   , En4 , v040, gtp3
	.byte	W06
	.byte		N36   , Bn3 
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W06
	.byte		N36   , An3 
	.byte	W06
	.byte		N32   , An4 , v040, gtp3
	.byte	W06
	.byte		N17   , Dn4 
	.byte	W06
	.byte		N32   , En4 , v040, gtp3
	.byte	W06
	.byte		        Bn3 , v040, gtp3
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W06
	.byte		N32   , An3 , v040, gtp3
	.byte	W06
	.byte		        An4 , v040, gtp3
	.byte	W06
	.byte		N17   , Dn4 
	.byte	W06
	.byte		N36   , En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N19   , Dn4 
	.byte	W06
	.byte		N36   , An3 
	.byte	W06
@ 012   ----------------------------------------
	.byte		        An4 , v044
	.byte	W05
	.byte		VOL   , 102*mus_time_gear_mvl/mxv
	.byte	W02
	.byte		N17   , Dn4 , v040
	.byte	W06
	.byte		N32   , En4 , v040, gtp3
	.byte	W05
	.byte		        Bn3 , v040, gtp3
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W06
	.byte		N32   , An3 , v040, gtp3
	.byte	W06
	.byte		        An4 , v040, gtp3
	.byte	W06
	.byte		N17   , Dn4 
	.byte	W06
	.byte		N32   , En4 , v040, gtp3
	.byte	W06
	.byte		N36   , Bn3 
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W06
	.byte		N36   , An3 
	.byte	W06
	.byte		N32   , An4 , v040, gtp3
	.byte	W06
	.byte		N17   , Dn4 
	.byte	W06
	.byte		N32   , En4 , v040, gtp3
	.byte	W06
	.byte		        Bn3 , v040, gtp3
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W06
	.byte		N32   , An3 , v040, gtp3
	.byte	W06
	.byte		N36   , An4 
	.byte	W06
	.byte		N17   , Dn4 
	.byte	W06
	.byte		N24   , En4 
	.byte	W06
	.byte		N18   , Bn3 
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W06
	.byte		N06   , An3 
	.byte	W05
	.byte		EOT   , En5 
	.byte	W01
	.byte		        Bn2 
	.byte		        Cs3 
	.byte		        Fs3 
	.byte		        Dn5 
	.byte		        An5 
	.byte	GOTO
	 .word	mus_time_gear_1_B1
mus_time_gear_1_B2:
@ 013   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_time_gear:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_time_gear_pri	@ Priority
	.byte	mus_time_gear_rev	@ Reverb.

	.word	mus_time_gear_grp

	.word	mus_time_gear_1

	.end
