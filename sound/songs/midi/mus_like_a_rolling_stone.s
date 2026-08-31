	.include "MPlayDef.s"

	.equ	mus_like_a_rolling_stone_grp, voicegroup_hlw_classic_rock
	.equ	mus_like_a_rolling_stone_pri, 0
	.equ	mus_like_a_rolling_stone_rev, reverb_set+28
	.equ	mus_like_a_rolling_stone_mvl, 96
	.equ	mus_like_a_rolling_stone_key, 0
	.equ	mus_like_a_rolling_stone_tbs, 1
	.equ	mus_like_a_rolling_stone_exg, 1
	.equ	mus_like_a_rolling_stone_cmp, 1

	.section .rodata
	.global	mus_like_a_rolling_stone
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_like_a_rolling_stone_1:
	.byte	KEYSH , mus_like_a_rolling_stone_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 112*mus_like_a_rolling_stone_tbs/2
	.byte		VOICE , 82
	.byte		VOL   , 100*mus_like_a_rolling_stone_mvl/mxv
	.byte		PAN   , c_v-2
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
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W54
	.byte		N05   , Cn4 , v096
	.byte	W06
	.byte	W01
	.byte		N04   , Cn4 , v080
	.byte	W04
	.byte	W02
	.byte		N09   , Cn4 , v092
	.byte	W09
	.byte	W04
	.byte		N13   , Cn4 , v104
	.byte	W13
	.byte		N06   , An3 , v072
	.byte	W03
@ 007   ----------------------------------------
	.byte	W04
	.byte		N09   , Cn4 , v096
	.byte	W09
	.byte	W04
	.byte		N10   , Cn4 , v084
	.byte	W10
	.byte	W02
	.byte		N20   , Cn4 , v100
	.byte	W21
	.byte	W13
	.byte		N10   
	.byte	W10
	.byte	W03
	.byte		N04   , Cn4 , v088
	.byte	W04
	.byte	W03
	.byte		N13   , Cn4 , v100
	.byte	W13
@ 008   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte	W01
	.byte		N06   , An3 , v072
	.byte	W06
	.byte		N09   , Cn4 , v096
	.byte	W09
	.byte	W03
	.byte		N07   , Cn4 , v080
	.byte	W07
	.byte	W01
	.byte		N23   , Cn4 , v100
	.byte	W23
	.byte	W32
	.byte	W02
@ 009   ----------------------------------------
	.byte	W02
	.byte		BEND  , c_v+20
	.byte		N12   , Dn4 , v096
	.byte	W01
	.byte		BEND  , c_v+63
	.byte	W11
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+0
	.byte		N06   , En4 , v084
	.byte	W06
	.byte		N60   , Dn4 , v096, gtp3
	.byte	W01
	.byte		BEND  , c_v+27
	.byte		        c_v+63
	.byte	W18
	.byte		MOD   , 24
	.byte	W13
	.byte		        33
	.byte	W24
	.byte	W01
	.byte		BEND  , c_v+61
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+52
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+41
	.byte		        c_v+36
	.byte	W01
	.byte		MOD   , 0
	.byte		BEND  , c_v+27
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+0
	.byte	W11
@ 010   ----------------------------------------
	.byte	W90
	.byte		N05   , Cn4 , v092
	.byte	W06
@ 011   ----------------------------------------
	.byte	W01
	.byte		N04   , Cn4 , v080
	.byte	W04
	.byte	W02
	.byte		N08   , Cn4 , v068
	.byte	W09
	.byte	W04
	.byte		N12   , Cn4 , v100
	.byte	W13
	.byte		N04   , An3 , v064
	.byte	W05
	.byte	W02
	.byte		N10   , Cn4 , v092
	.byte	W10
	.byte	W03
	.byte		N11   , Cn4 , v084
	.byte	W12
	.byte	W01
	.byte		N18   , Cn4 , v096
	.byte	W19
	.byte	W01
	.byte		N06   , Cn4 , v084
	.byte	W06
	.byte	W01
	.byte		N07   , An3 , v064
	.byte	W03
@ 012   ----------------------------------------
	.byte	W04
	.byte	W06
	.byte		N08   , Cn4 , v096
	.byte	W09
	.byte	W03
	.byte		N04   , Cn4 , v080
	.byte	W05
	.byte	W03
	.byte		N13   , Cn4 , v096
	.byte	W13
	.byte		N06   , An3 , v072
	.byte	W06
	.byte	W01
	.byte		N09   , Cn4 , v096
	.byte	W09
	.byte	W03
	.byte		        Cn4 , v088
	.byte	W10
	.byte	W03
	.byte		N30   , Cn4 , v092
	.byte	W19
	.byte		MOD   , 24
	.byte	W02
@ 013   ----------------------------------------
	.byte	W09
	.byte		        0
	.byte	W01
	.byte	W16
	.byte		N06   , Dn4 , v100
	.byte	W02
	.byte		BEND  , c_v+32
	.byte		        c_v+63
	.byte	W05
	.byte		        c_v+0
	.byte		N05   , En4 , v084
	.byte	W06
	.byte		N72   , Dn4 , v096, gtp2
	.byte	W01
	.byte		BEND  , c_v+7
	.byte	W01
	.byte		        c_v+41
	.byte		        c_v+63
	.byte	W17
	.byte		MOD   , 24
	.byte	W13
	.byte		        33
	.byte	W24
	.byte	W01
@ 014   ----------------------------------------
	.byte	W12
	.byte		BEND  , c_v+61
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+54
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+52
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		MOD   , 0
	.byte		BEND  , c_v+44
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+18
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+0
	.byte	W76
@ 015   ----------------------------------------
	.byte	W56
	.byte	W02
	.byte		N12   , En4 , v100
	.byte	W12
	.byte	W01
	.byte		        Dn4 , v096
	.byte	W01
	.byte		BEND  , c_v+24
	.byte	W01
	.byte		        c_v+42
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+63
	.byte	W09
	.byte		        c_v+0
	.byte	W01
	.byte		N48   , En4 , v092
	.byte	W12
@ 016   ----------------------------------------
	.byte	W06
	.byte		MOD   , 24
	.byte	W14
	.byte		        33
	.byte	W09
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-12
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-20
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-34
	.byte		        c_v-38
	.byte	W01
	.byte		MOD   , 0
	.byte		BEND  , c_v-40
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v+0
	.byte	W30
	.byte		N12   , Dn4 , v100
	.byte	W13
	.byte	W01
	.byte		N04   , Cn4 , v080
	.byte	W04
	.byte	W02
	.byte		N32   , Dn4 , v104, gtp3
	.byte	W10
@ 017   ----------------------------------------
	.byte	W09
	.byte		MOD   , 24
	.byte	W10
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-15
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-22
	.byte	W01
	.byte		MOD   , 0
	.byte	W01
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W32
	.byte	W03
	.byte		N06   , En4 , v096
	.byte	W07
	.byte		        Dn4 , v084
	.byte	W06
	.byte		N12   , En4 , v096
	.byte	W13
	.byte	W01
	.byte		N05   , Dn4 , v088
	.byte	W05
	.byte	W01
	.byte		N12   , En4 , v096
	.byte	W01
@ 018   ----------------------------------------
	.byte	W12
	.byte		BEND  , c_v+3
	.byte		N48   , Dn4 , v096, gtp3
	.byte	W01
	.byte		BEND  , c_v+19
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+36
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+47
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+59
	.byte		        c_v+63
	.byte	W15
	.byte		MOD   , 24
	.byte	W13
	.byte		        33
	.byte	W08
	.byte		BEND  , c_v+61
	.byte	W01
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+54
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+44
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+28
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+9
	.byte		        c_v+0
	.byte	W01
	.byte		MOD   , 0
	.byte	W01
	.byte	W21
	.byte		N13   , Dn4 , v112
	.byte	W11
@ 019   ----------------------------------------
	.byte	W02
	.byte		N06   , Cn4 , v088
	.byte	W06
	.byte	W01
	.byte		N40   , Dn4 , v100
	.byte	W19
	.byte		MOD   , 24
	.byte	W11
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-13
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-31
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-37
	.byte		        c_v-38
	.byte	W01
	.byte		MOD   , 0
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W28
	.byte	W01
	.byte		N06   , An3 , v084
	.byte	W06
	.byte	W01
	.byte		N12   , Cn4 , v096
	.byte	W08
@ 020   ----------------------------------------
	.byte	W04
	.byte	W01
	.byte		N12   
	.byte	W12
	.byte	W01
	.byte		N36   , Cn4 , v100, gtp2
	.byte	W19
	.byte		MOD   , 24
	.byte	W17
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		MOD   , 0
	.byte		BEND  , c_v-35
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-51
	.byte	W02
	.byte		        c_v+0
	.byte	W19
	.byte		N12   , An3 , v096
	.byte	W13
	.byte		N24   , Gn3 
	.byte	W06
@ 021   ----------------------------------------
	.byte	W18
	.byte	W02
	.byte		N56   , Gn3 , v104, gtp3
	.byte	W19
	.byte		MOD   , 24
	.byte	W14
	.byte		        33
	.byte	W23
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-24
	.byte		        c_v-31
	.byte	W01
	.byte		MOD   , 0
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		        c_v-45
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v+0
	.byte	W15
@ 022   ----------------------------------------
	.byte	W04
	.byte		N18   , Cn4 
	.byte	W19
	.byte		N06   , An3 , v080
	.byte	W06
	.byte		N42   , Cn4 , v096, gtp1
	.byte	W19
	.byte		MOD   , 24
	.byte	W24
	.byte		        0
	.byte	W23
	.byte		N13   , An3 , v104
	.byte	W01
@ 023   ----------------------------------------
	.byte	W12
	.byte		N24   , Gn3 , v088
	.byte	W24
	.byte	W02
	.byte		N44   , Gn3 , v100, gtp2
	.byte	W19
	.byte		MOD   , 24
	.byte	W14
	.byte		        33
	.byte	W13
	.byte		        0
	.byte	W01
	.byte		N05   , Gn3 , v084
	.byte	W06
	.byte		N11   , An3 , v096
	.byte	W03
	.byte		BEND  , c_v-7
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-22
	.byte	W01
@ 024   ----------------------------------------
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v+0
	.byte	W04
	.byte	W01
	.byte		N12   , Cn4 , v100
	.byte	W13
	.byte		N24   , Cn4 , v108
	.byte	W24
	.byte	W01
	.byte	W01
	.byte		N54   , Cn4 , v104
	.byte	W02
	.byte		BEND  , c_v+5
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+44
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+63
	.byte	W15
	.byte		MOD   , 24
	.byte	W14
	.byte		        33
	.byte	W10
	.byte		BEND  , c_v+61
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+55
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+45
	.byte	W01
@ 025   ----------------------------------------
	.byte		        c_v+42
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+37
	.byte	W02
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+32
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W64
	.byte		N11   , Cn4 , v112
	.byte	W12
	.byte	W01
	.byte		N24   , Cn4 , v104
	.byte	W13
@ 026   ----------------------------------------
	.byte	W11
	.byte	W03
	.byte		TIE   
	.byte	W01
	.byte		BEND  , c_v+15
	.byte	W01
	.byte		        c_v+35
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+63
	.byte	W16
	.byte		MOD   , 24
	.byte	W13
	.byte		        33
	.byte	W48
	.byte	W02
@ 027   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		BEND  , c_v+61
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+57
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+50
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+35
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+12
	.byte		        c_v+6
	.byte	W01
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		EOT   
	.byte	W08
	.byte		N12   , Fn4 
	.byte	W08
@ 028   ----------------------------------------
	.byte	W05
	.byte		N13   , En4 , v084
	.byte	W13
	.byte		        Cn4 , v092
	.byte	W14
	.byte		N14   , En4 , v104
	.byte	W02
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		        c_v+6
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+21
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+3
	.byte		        c_v+0
	.byte	W06
	.byte		N60   , Cn4 , v096, gtp3
	.byte	W20
	.byte		MOD   , 24
	.byte	W13
	.byte		        33
	.byte	W17
@ 029   ----------------------------------------
	.byte	W14
	.byte		        0
	.byte	W80
	.byte	W02
@ 030   ----------------------------------------
	.byte	W11
	.byte		N12   , Fn4 , v104
	.byte	W13
	.byte		        En4 , v088
	.byte	W12
	.byte	W01
	.byte		N13   , Cn4 
	.byte	W13
	.byte		N60   , En4 , v092, gtp3
	.byte	W02
	.byte		BEND  , c_v+5
	.byte	W01
	.byte		        c_v+9
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+15
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+21
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+23
	.byte	W03
	.byte		        c_v+20
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+13
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+8
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+0
	.byte	W03
	.byte		MOD   , 24
	.byte	W13
	.byte		        33
	.byte	W14
@ 031   ----------------------------------------
	.byte	W17
	.byte		        0
	.byte	W01
	.byte	W78
@ 032   ----------------------------------------
	.byte	W03
	.byte		N11   , Cn4 , v096
	.byte	W12
	.byte	W01
	.byte		N12   
	.byte	W13
	.byte		N13   , Fn4 
	.byte	W13
	.byte		N24   , En4 , v096, gtp2
	.byte	W24
	.byte	W02
	.byte		N42   , Cn4 , v100, gtp1
	.byte	W19
	.byte		MOD   , 24
	.byte	W09
@ 033   ----------------------------------------
	.byte	W08
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-7
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-15
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-20
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		MOD   , 0
	.byte		BEND  , c_v-25
	.byte	W02
	.byte		        c_v-18
	.byte		        c_v+0
	.byte	W78
	.byte	W01
@ 034   ----------------------------------------
	.byte	W08
	.byte		N12   , Cn4 , v084
	.byte	W12
	.byte	W01
	.byte		N13   , En4 , v096
	.byte	W13
	.byte		N12   , Cn4 , v076
	.byte	W13
	.byte		        Fn4 , v100
	.byte	W13
	.byte		N13   , En4 , v084
	.byte	W13
	.byte		N11   , Cn4 , v064
	.byte	W12
	.byte	W01
	.byte		N40   , Cn4 , v100
	.byte	W10
@ 035   ----------------------------------------
	.byte	W09
	.byte		MOD   , 24
	.byte	W13
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-18
	.byte		        c_v-19
	.byte	W03
	.byte		MOD   , 0
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W64
	.byte	W01
@ 036   ----------------------------------------
	.byte	W36
	.byte	W03
	.byte		N08   , Cn4 , v104
	.byte	W09
	.byte	W04
	.byte		N12   , Cn4 , v096
	.byte	W13
	.byte		        En4 , v092
	.byte	W04
	.byte		BEND  , c_v+3
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+13
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+21
	.byte		        c_v+23
	.byte	W05
	.byte		        c_v+19
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+13
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N24   , En4 , v096, gtp2
	.byte	W17
@ 037   ----------------------------------------
	.byte	W02
	.byte		MOD   , 24
	.byte	W06
	.byte		        0
	.byte	W01
	.byte		N36   , Cn4 , v108, gtp2
	.byte	W19
	.byte		MOD   , 24
	.byte	W12
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-16
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-21
	.byte	W05
	.byte		        c_v+0
	.byte	W01
	.byte		MOD   , 0
	.byte	W48
@ 038   ----------------------------------------
	.byte	W56
	.byte	W02
	.byte		N10   , Cn4 , v100
	.byte	W08
	.byte		VOL   , 93*mus_like_a_rolling_stone_mvl/mxv
	.byte	W02
	.byte	W03
	.byte		N12   , Cn4 , v084
	.byte	W10
	.byte		VOL   , 87*mus_like_a_rolling_stone_mvl/mxv
	.byte	W03
	.byte		N12   , Fn4 , v100
	.byte	W12
@ 039   ----------------------------------------
	.byte		VOL   , 81*mus_like_a_rolling_stone_mvl/mxv
	.byte	W01
	.byte		N24   , En4 , v096, gtp1
	.byte	W13
	.byte		VOL   , 75*mus_like_a_rolling_stone_mvl/mxv
	.byte	W13
	.byte		N44   , Cn4 , v104, gtp3
	.byte	W02
	.byte		VOL   , 68*mus_like_a_rolling_stone_mvl/mxv
	.byte	W17
	.byte		        62*mus_like_a_rolling_stone_mvl/mxv
	.byte		MOD   , 24
	.byte	W13
	.byte		        33
	.byte	W01
	.byte		VOL   , 56*mus_like_a_rolling_stone_mvl/mxv
	.byte	W03
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W02
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-7
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-22
	.byte	W02
	.byte		MOD   , 0
	.byte	W01
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		VOL   , 50*mus_like_a_rolling_stone_mvl/mxv
	.byte	W17
@ 040   ----------------------------------------
	.byte		        43*mus_like_a_rolling_stone_mvl/mxv
	.byte	W19
	.byte		        37*mus_like_a_rolling_stone_mvl/mxv
	.byte	W16
	.byte		        31*mus_like_a_rolling_stone_mvl/mxv
	.byte	W24
	.byte		        25*mus_like_a_rolling_stone_mvl/mxv
	.byte	W15
	.byte		        18*mus_like_a_rolling_stone_mvl/mxv
	.byte	W19
	.byte		        12*mus_like_a_rolling_stone_mvl/mxv
	.byte	W03
@ 041   ----------------------------------------
	.byte	W16
	.byte		        6*mus_like_a_rolling_stone_mvl/mxv
	.byte	W15
	.byte		        0*mus_like_a_rolling_stone_mvl/mxv
	.byte	W18
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_like_a_rolling_stone_2:
	.byte	KEYSH , mus_like_a_rolling_stone_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 112*mus_like_a_rolling_stone_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W09
	.byte		N24   , Cn1 , v108
	.byte	W24
	.byte	W01
	.byte	W02
	.byte		N18   
	.byte	W19
	.byte		N06   , Cn1 , v096
	.byte	W06
	.byte		N04   , Fn1 , v108
	.byte	W04
	.byte	W10
	.byte		N24   , Fn1 , v100, gtp1
	.byte	W21
@ 002   ----------------------------------------
	.byte	W05
	.byte		N48   , Gn1 , v104, gtp3
	.byte	W09
	.byte		BEND  , c_v+43
	.byte		        c_v+63
	.byte	W04
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+0
	.byte	W36
	.byte	W02
	.byte		N06   , Gn1 , v096
	.byte	W07
	.byte		        Gn1 , v092
	.byte	W06
	.byte		        Gn1 , v108
	.byte	W06
	.byte	W01
	.byte		N12   , Bn0 , v092
	.byte	W13
	.byte	W01
	.byte		N06   , Cn1 , v088
	.byte	W05
@ 003   ----------------------------------------
	.byte	W01
	.byte		N05   , Dn1 , v108
	.byte	W06
	.byte	W01
	.byte		        Bn0 , v088
	.byte	W05
	.byte		N12   , Gn0 , v096
	.byte	W13
	.byte	W01
	.byte		N24   , Cn1 , v108, gtp2
	.byte	W24
	.byte	W02
	.byte	W01
	.byte		N12   
	.byte	W13
	.byte	W01
	.byte		N04   , Cn1 , v096
	.byte	W04
	.byte	W02
	.byte		N06   , Cn1 , v092
	.byte	W06
	.byte		        Fn1 , v108
	.byte	W06
	.byte	W01
	.byte		        Cn1 , v088
	.byte	W06
	.byte		N24   , Fn1 , v100, gtp2
	.byte	W03
@ 004   ----------------------------------------
	.byte	W23
	.byte	W01
	.byte		        Gn1 , v100, gtp1
	.byte	W01
	.byte		BEND  , c_v+8
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+44
	.byte		        c_v+63
	.byte	W10
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+0
	.byte	W11
	.byte		N12   
	.byte	W13
	.byte	W01
	.byte		N11   , Gn1 , v108
	.byte	W11
	.byte	W02
	.byte		N12   , Gn1 , v100
	.byte	W12
	.byte	W01
	.byte		        Gn1 , v108
	.byte	W07
@ 005   ----------------------------------------
	.byte	W05
	.byte	W01
	.byte		        Gn1 , v100
	.byte	W12
	.byte	W01
	.byte		N10   , Gn1 , v108
	.byte	W11
	.byte	W02
	.byte		        Gn1 , v100
	.byte	W11
	.byte	W02
	.byte		N11   , Gn1 , v108
	.byte	W12
	.byte	W02
	.byte		N12   , Gn1 , v100
	.byte	W12
	.byte	W01
	.byte		        Gn1 , v108
	.byte	W13
	.byte		N06   , Gn1 , v100
	.byte	W06
	.byte	W01
	.byte		        Gn1 , v092
	.byte	W04
@ 006   ----------------------------------------
	.byte	W02
	.byte		        Gn1 , v108
	.byte	W06
	.byte	W01
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N12   , Gn0 , v104
	.byte	W13
	.byte	W01
	.byte		        Gn0 , v112
	.byte	W05
	.byte		BEND  , c_v+39
	.byte	W01
	.byte		        c_v+63
	.byte	W06
	.byte		        c_v+0
	.byte	W01
	.byte		N12   , Cn1 , v100
	.byte	W12
	.byte		N36   , Cn1 , v108, gtp1
	.byte	W36
	.byte	W01
	.byte	W05
@ 007   ----------------------------------------
	.byte	W05
	.byte		N05   , Cn1 , v088
	.byte	W06
	.byte		N04   , Dn1 , v108
	.byte	W05
	.byte	W08
	.byte		N32   , Dn1 , v100
	.byte	W32
	.byte	W01
	.byte		N05   , Dn1 , v088
	.byte	W06
	.byte	W01
	.byte		N07   , En1 , v104
	.byte	W07
	.byte	W06
	.byte		N28   , En1 , v100, gtp1
	.byte	W19
@ 008   ----------------------------------------
	.byte	W11
	.byte	W03
	.byte		N06   , En1 , v088
	.byte	W06
	.byte		N05   , Fn1 , v104
	.byte	W06
	.byte		N06   , Cn1 , v084
	.byte	W07
	.byte		N24   , Fn1 , v096, gtp3
	.byte	W28
	.byte	W05
	.byte		N05   , Fn1 , v088
	.byte	W06
	.byte		N12   , Gn1 , v104
	.byte	W12
	.byte	W01
	.byte		        Gn1 , v096
	.byte	W11
@ 009   ----------------------------------------
	.byte	W02
	.byte		        Gn1 , v104
	.byte	W13
	.byte	W01
	.byte		        Gn1 , v096
	.byte	W12
	.byte	W01
	.byte		        Gn1 , v104
	.byte	W12
	.byte	W01
	.byte		N11   , Gn1 , v096
	.byte	W12
	.byte	W02
	.byte		        Gn1 , v108
	.byte	W11
	.byte	W02
	.byte		N12   , Gn1 , v100
	.byte	W13
	.byte		        Gn0 , v104
	.byte	W12
	.byte	W01
	.byte		        Gn0 , v096
	.byte	W01
@ 010   ----------------------------------------
	.byte	W12
	.byte		N11   , Gn0 , v108
	.byte	W12
	.byte	W02
	.byte		N12   , Gn0 , v096
	.byte	W12
	.byte	W01
	.byte		N10   , Gn0 , v108
	.byte	W10
	.byte	W03
	.byte		N12   , Gn0 , v096
	.byte	W13
	.byte		N11   , Gn1 , v108
	.byte	W11
	.byte	W02
	.byte		N12   , Gn1 , v100
	.byte	W13
	.byte		N36   , Cn1 , v108, gtp1
	.byte	W05
@ 011   ----------------------------------------
	.byte	W32
	.byte	W10
	.byte		N05   , Cn1 , v088
	.byte	W05
	.byte	W01
	.byte		N04   , Dn1 , v108
	.byte	W04
	.byte	W08
	.byte		N32   , Dn1 , v100
	.byte	W32
	.byte	W01
	.byte	W01
	.byte		N05   , Dn1 , v088
	.byte	W02
@ 012   ----------------------------------------
	.byte	W04
	.byte		N07   , En1 , v104
	.byte	W08
	.byte	W06
	.byte		N28   , En1 , v100, gtp1
	.byte	W28
	.byte	W01
	.byte	W03
	.byte		N06   , En1 , v088
	.byte	W07
	.byte		N05   , Fn1 , v104
	.byte	W06
	.byte		N06   , Cn1 , v084
	.byte	W06
	.byte	W01
	.byte		N24   , Fn1 , v096, gtp1
	.byte	W24
	.byte	W02
@ 013   ----------------------------------------
	.byte	W01
	.byte		N11   , Gn1 , v100
	.byte	W02
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		        c_v+43
	.byte		        c_v+63
	.byte	W09
	.byte		        c_v+0
	.byte		N12   , Gn1 , v104
	.byte	W12
	.byte	W01
	.byte		        Gn1 , v096
	.byte	W13
	.byte		        Gn1 , v104
	.byte	W13
	.byte		        Gn1 , v096
	.byte	W13
	.byte	W01
	.byte		        Gn1 , v104
	.byte	W13
	.byte		        Gn1 , v096
	.byte	W12
	.byte	W01
	.byte		N11   , Gn1 , v108
	.byte	W04
@ 014   ----------------------------------------
	.byte	W08
	.byte	W02
	.byte		N12   , Gn1 , v100
	.byte	W12
	.byte	W01
	.byte		        Gn1 , v104
	.byte	W12
	.byte	W01
	.byte		        Gn1 , v096
	.byte	W13
	.byte		        Gn1 , v108
	.byte	W12
	.byte	W01
	.byte		        Dn1 , v096
	.byte	W13
	.byte	W01
	.byte		N10   , Gn1 , v108
	.byte	W10
	.byte	W03
	.byte		N12   , Gn1 , v096
	.byte	W07
@ 015   ----------------------------------------
	.byte	W05
	.byte	W01
	.byte		N11   , Gn1 , v108
	.byte	W11
	.byte	W02
	.byte		N12   , Gn1 , v100
	.byte	W13
	.byte		N44   , Fn1 , v104, gtp1
	.byte	W44
	.byte	W02
	.byte		N06   , Cn1 , v084
	.byte	W06
	.byte		        Fn1 , v104
	.byte	W07
	.byte		        Cn1 , v084
	.byte	W05
@ 016   ----------------------------------------
	.byte	W01
	.byte	W01
	.byte		N24   , Fn1 , v096, gtp2
	.byte	W24
	.byte	W02
	.byte		N08   , Gn1 , v100
	.byte	W02
	.byte		BEND  , c_v+14
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+50
	.byte		        c_v+63
	.byte	W04
	.byte	W04
	.byte		        c_v+0
	.byte	W01
	.byte		N44   , Gn1 , v104, gtp1
	.byte	W44
	.byte	W01
	.byte	W01
	.byte		N06   , Bn0 , v088
	.byte	W06
	.byte	W01
	.byte		        Cn1 , v104
	.byte	W02
@ 017   ----------------------------------------
	.byte	W04
	.byte		        Dn1 , v092
	.byte	W06
	.byte	W01
	.byte		N12   , Gn1 , v100
	.byte	W12
	.byte	W01
	.byte		N06   , Gn1 , v108
	.byte	W06
	.byte		        An1 , v088
	.byte	W07
	.byte		N12   , Gn1 , v096
	.byte	W12
	.byte	W01
	.byte		N42   , Fn1 , v104
	.byte	W42
	.byte	W01
	.byte	W03
@ 018   ----------------------------------------
	.byte		N06   , Fn1 , v092
	.byte	W06
	.byte	W01
	.byte		        An0 , v104
	.byte	W06
	.byte		N05   , Cn1 , v088
	.byte	W06
	.byte	W01
	.byte		N24   , Fn1 , v100, gtp1
	.byte	W24
	.byte	W01
	.byte	W01
	.byte		N12   , Gn1 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+63
	.byte	W04
	.byte		        c_v+0
	.byte	W01
	.byte		N12   , Gn1 , v104
	.byte	W12
	.byte	W01
	.byte		        Gn1 , v096
	.byte	W13
	.byte		N19   , Gn1 , v108
	.byte	W10
@ 019   ----------------------------------------
	.byte	W09
	.byte	W01
	.byte		N06   , Dn1 , v088
	.byte	W06
	.byte		        Gn1 , v104
	.byte	W06
	.byte	W01
	.byte		        Dn1 , v088
	.byte	W06
	.byte		N12   , Gn1 , v096
	.byte	W13
	.byte		        Gn1 , v108
	.byte	W13
	.byte	W01
	.byte		        Fs1 , v096
	.byte	W12
	.byte	W01
	.byte		N11   , Fn1 , v104
	.byte	W12
	.byte	W01
	.byte		N09   , Fn1 , v096
	.byte	W10
	.byte	W03
	.byte		N12   , Fn1 , v108
	.byte	W01
@ 020   ----------------------------------------
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W13
	.byte		        En1 , v104
	.byte	W13
	.byte	W01
	.byte		        En1 , v100
	.byte	W12
	.byte	W01
	.byte		        En1 , v108
	.byte	W12
	.byte	W01
	.byte		        En1 , v100
	.byte	W12
	.byte	W01
	.byte		        Dn1 , v108
	.byte	W13
	.byte		        Dn1 , v100
	.byte	W05
@ 021   ----------------------------------------
	.byte	W07
	.byte	W01
	.byte		        Dn1 , v108
	.byte	W13
	.byte		        Gn0 , v096
	.byte	W13
	.byte		        Cn1 , v104
	.byte	W13
	.byte		        Cn1 , v100
	.byte	W13
	.byte		        Cn1 , v108
	.byte	W05
	.byte		BEND  , c_v+12
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+63
	.byte	W06
	.byte	W01
	.byte		        c_v+0
	.byte		N12   , Fn1 , v100
	.byte	W13
	.byte	W01
	.byte		N11   , Fn1 , v104
	.byte	W09
@ 022   ----------------------------------------
	.byte	W02
	.byte	W02
	.byte		        Fn1 , v096
	.byte	W12
	.byte	W01
	.byte		N12   , Fn1 , v108
	.byte	W13
	.byte		        Fn1 , v100
	.byte	W13
	.byte	W01
	.byte		        En1 , v108
	.byte	W12
	.byte	W01
	.byte		        En1 , v100
	.byte	W12
	.byte	W01
	.byte		        En1 , v108
	.byte	W13
	.byte		        En1 , v100
	.byte	W13
@ 023   ----------------------------------------
	.byte		N11   , Dn1 , v104
	.byte	W12
	.byte	W01
	.byte		N12   , Dn1 , v100
	.byte	W13
	.byte	W01
	.byte		N11   , Dn1 , v108
	.byte	W11
	.byte	W01
	.byte		N12   , Dn1 , v100
	.byte	W13
	.byte	W01
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W01
	.byte		        Cn1 , v100
	.byte	W12
	.byte	W01
	.byte		        Cn1 , v108
	.byte	W12
	.byte	W01
	.byte		N11   , Cn1 , v100
	.byte	W04
@ 024   ----------------------------------------
	.byte	W08
	.byte	W01
	.byte		N12   , Dn1 , v104
	.byte	W13
	.byte		        Dn1 , v096
	.byte	W12
	.byte	W01
	.byte		        Dn1 , v108
	.byte	W12
	.byte	W01
	.byte		        Dn1 , v100
	.byte	W12
	.byte	W01
	.byte		        Dn1 , v104
	.byte	W13
	.byte		N11   , Dn1 , v100
	.byte	W12
	.byte	W02
	.byte		N12   , Dn1 , v108
	.byte	W08
@ 025   ----------------------------------------
	.byte	W04
	.byte	W01
	.byte		        Dn1 , v096
	.byte	W12
	.byte	W01
	.byte		N11   , Dn1 , v104
	.byte	W12
	.byte	W01
	.byte		N12   , Dn1 , v096
	.byte	W13
	.byte	W01
	.byte		N11   , Dn1 , v108
	.byte	W11
	.byte	W02
	.byte		N12   , Dn1 , v100
	.byte	W13
	.byte		        Fn1 , v104
	.byte	W13
	.byte		        Dn1 , v096
	.byte	W12
@ 026   ----------------------------------------
	.byte	W01
	.byte		        Fn1 , v108
	.byte	W13
	.byte		        Gn1 , v100
	.byte	W01
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		        c_v+32
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+63
	.byte	W10
	.byte		        c_v+0
	.byte	W01
	.byte		N12   , Gn1 , v104
	.byte	W12
	.byte	W01
	.byte		        Gn1 , v100
	.byte	W12
	.byte	W01
	.byte		        Gn1 , v108
	.byte	W12
	.byte	W01
	.byte		        Gn1 , v096
	.byte	W13
	.byte		        Gn1 , v104
	.byte	W13
	.byte		        Gn1 , v100
	.byte	W03
@ 027   ----------------------------------------
	.byte	W10
	.byte		N10   , Gn1 , v108
	.byte	W11
	.byte	W02
	.byte		N12   , Gn1 , v088
	.byte	W13
	.byte	W01
	.byte		        Gn1 , v104
	.byte	W12
	.byte	W01
	.byte		        Gn1 , v096
	.byte	W13
	.byte		        Gn1 , v108
	.byte	W13
	.byte		        Gn1 , v096
	.byte	W12
	.byte	W01
	.byte		        Gn1 , v104
	.byte	W07
@ 028   ----------------------------------------
	.byte	W05
	.byte	W01
	.byte		        Gn1 , v096
	.byte	W13
	.byte	W01
	.byte		        Gn1 , v108
	.byte	W12
	.byte	W01
	.byte		        Gn1 , v100
	.byte	W07
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte	W01
	.byte		        c_v+0
	.byte		N44   , Cn1 , v108
	.byte	W44
	.byte	W02
	.byte		N05   , Cn1 , v088
	.byte	W04
@ 029   ----------------------------------------
	.byte	W02
	.byte		N07   , Fn1 , v104
	.byte	W07
	.byte	W06
	.byte		N24   , Fn1 , v100, gtp2
	.byte	W24
	.byte	W02
	.byte	W01
	.byte		BEND  , c_v+3
	.byte		N11   , Gn1 
	.byte	W01
	.byte		BEND  , c_v+25
	.byte	W01
	.byte		        c_v+44
	.byte		        c_v+63
	.byte	W10
	.byte	W01
	.byte		        c_v+0
	.byte		N42   , Gn1 , v108, gtp1
	.byte	W40
	.byte	W01
@ 030   ----------------------------------------
	.byte	W03
	.byte	W03
	.byte		N06   , Gn1 , v092
	.byte	W06
	.byte		N09   , Gn0 , v104
	.byte	W10
	.byte	W03
	.byte		N12   , Gn0 , v100
	.byte	W13
	.byte		        An0 , v104
	.byte	W13
	.byte		        Bn0 , v096
	.byte	W13
	.byte	W01
	.byte		N11   , Cn1 , v104
	.byte	W11
	.byte	W02
	.byte		N12   , Cn1 , v100
	.byte	W13
	.byte		N10   , Cn1 , v108
	.byte	W05
@ 031   ----------------------------------------
	.byte	W06
	.byte	W02
	.byte		N12   , Cn1 , v096
	.byte	W13
	.byte		N06   , Fn1 , v104
	.byte	W07
	.byte		        Cn1 , v092
	.byte	W06
	.byte	W01
	.byte		N12   , Fn1 , v096
	.byte	W12
	.byte		        Fn1 , v104
	.byte	W13
	.byte	W01
	.byte		N11   , Gn1 , v096
	.byte	W04
	.byte		BEND  , c_v+14
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+63
	.byte	W06
	.byte	W02
	.byte		        c_v+0
	.byte		N24   , Gn1 , v104, gtp2
	.byte	W22
@ 032   ----------------------------------------
	.byte	W04
	.byte		N18   , Fn1 , v108
	.byte	W01
	.byte		BEND  , c_v+13
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+63
	.byte	W17
	.byte		        c_v+0
	.byte	W01
	.byte		N06   , An0 , v092
	.byte	W06
	.byte	W01
	.byte		N12   , Bn0 , v104
	.byte	W12
	.byte	W01
	.byte		        Dn1 , v100
	.byte	W13
	.byte		N24   , Gn0 , v108, gtp1
	.byte	W20
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-53
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N24   , Cn1 , v108, gtp1
	.byte	W13
@ 033   ----------------------------------------
	.byte	W12
	.byte	W01
	.byte		N19   
	.byte	W19
	.byte	W01
	.byte		N05   , Cn1 , v088
	.byte	W06
	.byte	W01
	.byte		N06   , Fn1 , v104
	.byte	W06
	.byte		N05   , Cn1 , v088
	.byte	W06
	.byte		N24   , Fn1 , v096, gtp2
	.byte	W24
	.byte	W02
	.byte	W01
	.byte		N11   , Gn1 
	.byte	W02
	.byte		BEND  , c_v+15
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+63
	.byte	W07
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N24   , Gn1 , v108, gtp2
	.byte	W04
@ 034   ----------------------------------------
	.byte	W22
	.byte		N19   
	.byte	W20
	.byte		N06   , Bn0 , v092
	.byte	W06
	.byte		N05   , Cn1 , v104
	.byte	W06
	.byte	W01
	.byte		N06   , Dn1 , v092
	.byte	W06
	.byte		N12   , Gn1 , v096
	.byte	W13
	.byte	W01
	.byte		N06   , Gn1 , v108
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte	W01
	.byte		N12   , Gn0 , v100
	.byte	W08
@ 035   ----------------------------------------
	.byte	W04
	.byte	W01
	.byte		N24   , Cn1 , v104, gtp1
	.byte	W24
	.byte	W02
	.byte		N19   
	.byte	W20
	.byte	W01
	.byte		N05   , Cn1 , v092
	.byte	W05
	.byte	W01
	.byte		        Fn1 , v104
	.byte	W06
	.byte		N06   , Cn1 , v088
	.byte	W06
	.byte	W01
	.byte		N12   , Fn1 , v100
	.byte	W13
	.byte		        Fn1 , v104
	.byte	W12
@ 036   ----------------------------------------
	.byte	W01
	.byte	W01
	.byte		        Gn1 , v096
	.byte	W02
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+63
	.byte	W08
	.byte	W01
	.byte		        c_v+0
	.byte		N23   , Gn1 , v104
	.byte	W24
	.byte	W02
	.byte		N17   , Gn1 , v108
	.byte	W17
	.byte	W03
	.byte		N12   , Gn1 , v092
	.byte	W12
	.byte	W01
	.byte		N06   , Dn1 , v088
	.byte	W06
	.byte		N12   , Gn0 , v096
	.byte	W13
	.byte		        An0 , v108
	.byte	W03
@ 037   ----------------------------------------
	.byte	W10
	.byte		        Bn0 , v100
	.byte	W13
	.byte	W01
	.byte		N24   , Cn1 , v104
	.byte	W24
	.byte	W02
	.byte		N17   , Cn1 , v108
	.byte	W17
	.byte	W02
	.byte		N05   , Cn1 , v088
	.byte	W06
	.byte	W01
	.byte		N06   , Fn1 , v104
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte	W01
	.byte		N24   , Fn1 , v096, gtp1
	.byte	W07
@ 038   ----------------------------------------
	.byte	W18
	.byte	W01
	.byte		N12   , Gn1 
	.byte	W01
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+48
	.byte		        c_v+63
	.byte	W09
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N12   , Gn1 , v104
	.byte	W12
	.byte	W01
	.byte		N11   , Gn1 , v100
	.byte	W11
	.byte	W02
	.byte		        Gn1 , v108
	.byte	W08
	.byte		VOL   , 105*mus_like_a_rolling_stone_mvl/mxv
	.byte	W04
	.byte	W01
	.byte		N11   , Gn1 , v100
	.byte	W10
	.byte		VOL   , 98*mus_like_a_rolling_stone_mvl/mxv
	.byte	W02
	.byte	W01
	.byte		N12   , Gn1 , v104
	.byte	W11
@ 039   ----------------------------------------
	.byte	W01
	.byte		VOL   , 91*mus_like_a_rolling_stone_mvl/mxv
	.byte	W01
	.byte		N11   , Gn1 , v100
	.byte	W12
	.byte	W01
	.byte		VOL   , 84*mus_like_a_rolling_stone_mvl/mxv
	.byte		N11   , Gn1 , v108
	.byte	W12
	.byte	W01
	.byte		        Gn1 , v100
	.byte	W02
	.byte		VOL   , 77*mus_like_a_rolling_stone_mvl/mxv
	.byte	W10
	.byte	W01
	.byte		N24   , Cn1 , v108, gtp1
	.byte	W06
	.byte		VOL   , 70*mus_like_a_rolling_stone_mvl/mxv
	.byte	W14
	.byte		        63*mus_like_a_rolling_stone_mvl/mxv
	.byte	W06
	.byte	W01
	.byte		N19   
	.byte	W11
	.byte		VOL   , 56*mus_like_a_rolling_stone_mvl/mxv
	.byte	W08
	.byte	W01
	.byte		N06   , Cn1 , v088
	.byte	W06
	.byte		        Fn1 , v104
	.byte	W02
@ 040   ----------------------------------------
	.byte	W04
	.byte	W01
	.byte		VOL   , 49*mus_like_a_rolling_stone_mvl/mxv
	.byte		N06   , Cn1 , v088
	.byte	W06
	.byte		N24   , Fn1 , v100, gtp2
	.byte	W08
	.byte		VOL   , 42*mus_like_a_rolling_stone_mvl/mxv
	.byte	W17
	.byte		        35*mus_like_a_rolling_stone_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		N12   , Gn1 
	.byte	W01
	.byte		BEND  , c_v+3
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+63
	.byte	W09
	.byte	W01
	.byte		        c_v+0
	.byte		N12   , Gn1 , v104
	.byte	W09
	.byte		VOL   , 28*mus_like_a_rolling_stone_mvl/mxv
	.byte	W04
	.byte		N12   , Gn1 , v096
	.byte	W10
	.byte		VOL   , 21*mus_like_a_rolling_stone_mvl/mxv
	.byte	W03
	.byte		N12   , Gn1 , v108
	.byte	W13
	.byte		N11   , Gn1 , v092
	.byte	W04
	.byte		VOL   , 14*mus_like_a_rolling_stone_mvl/mxv
	.byte	W02
@ 041   ----------------------------------------
	.byte	W06
	.byte	W01
	.byte		N12   , Gn1 , v104
	.byte	W10
	.byte		VOL   , 7*mus_like_a_rolling_stone_mvl/mxv
	.byte	W03
	.byte		N12   , Gn1 , v096
	.byte	W12
	.byte		VOL   , 0*mus_like_a_rolling_stone_mvl/mxv
	.byte	W01
	.byte		N12   , Gn1 , v108
	.byte	W13
	.byte	W01
	.byte		N02   , Gn1 , v096
	.byte	W02
	.byte	FINE

@**************** Track 3 (Midi-Chn.5) ****************@

mus_like_a_rolling_stone_3:
	.byte	KEYSH , mus_like_a_rolling_stone_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 17
	.byte		VOL   , 66*mus_like_a_rolling_stone_mvl/mxv
	.byte		PAN   , c_v+42
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W09
	.byte		N52   , En3 , v076
	.byte		N52   , Gn3 
	.byte		N52   , Cn4 
	.byte	W52
	.byte	W01
	.byte		        Fn3 
	.byte		N52   , An3 
	.byte		N52   , Cn4 
	.byte	W32
	.byte	W02
@ 002   ----------------------------------------
	.byte	W18
	.byte		TIE   , Dn3 
	.byte		TIE   , Gn3 
	.byte		TIE   , Bn3 
	.byte	W78
@ 003   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		EOT   , Dn3 
	.byte		        Gn3 
	.byte		        Bn3 
	.byte	W01
	.byte	W01
	.byte		N52   , En3 
	.byte		N52   , Gn3 
	.byte		N52   , Cn4 
	.byte	W52
	.byte		        Fn3 
	.byte		N52   , An3 
	.byte		N52   , Cn4 
	.byte	W16
@ 004   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte		TIE   , Dn3 
	.byte		TIE   , Gn3 
	.byte		TIE   , Bn3 
	.byte	W56
	.byte	W03
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W54
	.byte	W01
	.byte		EOT   , Dn3 
	.byte		        Gn3 
	.byte		        Bn3 
	.byte		N52   , En4 
	.byte		N52   , Gn4 
	.byte		N52   , Cn5 
	.byte	W40
	.byte	W01
@ 007   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		        Dn4 
	.byte		N52   , Gn4 
	.byte		N52   , Cn5 
	.byte	W52
	.byte		        En4 
	.byte		N52   , Gn4 
	.byte		N52   , Cn5 
	.byte	W32
@ 008   ----------------------------------------
	.byte	W21
	.byte		        Fn4 
	.byte		N52   , An4 
	.byte		N52   , Cn5 
	.byte	W52
	.byte		TIE   , Dn4 
	.byte		TIE   , Gn4 
	.byte		TIE   , Bn4 
	.byte	W23
@ 009   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   , Dn4 
	.byte		        Gn4 
	.byte		        Bn4 
	.byte	W01
	.byte	W01
	.byte		N36   , Cn4 , v076, gtp3
	.byte	W13
@ 010   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		N64   , Dn4 , v076, gtp1
	.byte	W64
	.byte	W01
	.byte	W01
	.byte		N52   , En4 
	.byte		N52   , Gn4 
	.byte		N52   , Cn5 
	.byte	W04
@ 011   ----------------------------------------
	.byte	W48
	.byte		        Dn4 
	.byte		N52   , Gn4 
	.byte		N52   , Cn5 
	.byte	W48
@ 012   ----------------------------------------
	.byte	W05
	.byte		        En4 
	.byte		N52   , Gn4 
	.byte		N52   , Cn5 
	.byte	W52
	.byte		        Fn4 
	.byte		N52   , An4 
	.byte		N52   , Cn5 
	.byte	W36
	.byte	W03
@ 013   ----------------------------------------
	.byte	W14
	.byte		TIE   , Dn4 
	.byte		TIE   , Gn4 
	.byte		TIE   , Bn4 
	.byte	W80
	.byte	W02
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W32
	.byte		EOT   , Dn4 
	.byte		        Gn4 
	.byte		        Bn4 
	.byte		TIE   , Fn4 
	.byte		TIE   , An4 
	.byte		TIE   , Cn5 
	.byte	W64
@ 016   ----------------------------------------
	.byte	W40
	.byte		EOT   , Fn4 
	.byte		        An4 
	.byte		        Cn5 
	.byte	W01
	.byte	W01
	.byte		TIE   , Dn4 
	.byte		TIE   , Gn4 
	.byte		TIE   , Bn4 
	.byte	W54
@ 017   ----------------------------------------
	.byte	W48
	.byte	W02
	.byte		EOT   , Dn4 
	.byte		        Gn4 
	.byte		        Bn4 
	.byte	W01
	.byte		TIE   , Fn4 
	.byte		TIE   , An4 
	.byte		TIE   , Cn5 
	.byte	W44
	.byte	W01
@ 018   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		EOT   , Fn4 
	.byte		        An4 
	.byte		        Cn5 
	.byte	W01
	.byte		TIE   , Dn4 
	.byte		TIE   , Gn4 
	.byte		TIE   , Bn4 
	.byte	W36
@ 019   ----------------------------------------
	.byte	W68
	.byte		EOT   , Dn4 
	.byte		        Gn4 
	.byte		        Bn4 
	.byte	W01
	.byte		N52   , Cn4 
	.byte		N52   , Fn4 
	.byte		N52   , Gn4 
	.byte	W24
	.byte	W03
@ 020   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte	W01
	.byte		        Cn4 
	.byte		N52   , En4 
	.byte		N52   , Gn4 
	.byte	W52
	.byte		N36   , Cn4 , v076, gtp3
	.byte		N36   , Dn4 , v076, gtp3
	.byte		N36   , Gn4 , v076, gtp3
	.byte	W18
@ 021   ----------------------------------------
	.byte	W21
	.byte	W01
	.byte		N52   , Cn4 
	.byte		N52   , En4 
	.byte		N52   , Gn4 
	.byte	W52
	.byte		        Cn4 
	.byte		N52   , Fn4 
	.byte		N52   , Gn4 
	.byte	W22
@ 022   ----------------------------------------
	.byte	W30
	.byte	W01
	.byte		        Cn4 
	.byte		N52   , En4 
	.byte		N52   , Gn4 
	.byte	W52
	.byte		        Cn4 
	.byte		N52   , Dn4 
	.byte		N52   , Gn4 
	.byte	W13
@ 023   ----------------------------------------
	.byte	W40
	.byte		N64   , En4 , v076, gtp1
	.byte		N64   , Gn4 , v076, gtp1
	.byte	W56
@ 024   ----------------------------------------
	.byte	W09
	.byte	W01
	.byte		TIE   , An3 
	.byte		TIE   , Cn4 
	.byte		TIE   , Fn4 
	.byte	W84
	.byte	W02
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W28
	.byte		EOT   , An3 
	.byte		        Cn4 
	.byte		        Fn4 
	.byte		TIE   , Bn3 
	.byte		TIE   , Dn4 
	.byte		TIE   , Gn4 
	.byte	W68
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		EOT   , Bn3 
	.byte		        Dn4 
	.byte		        Gn4 
	.byte		N52   , En3 
	.byte		N52   , Gn3 
	.byte		N52   , Cn4 
	.byte	W48
	.byte	W02
@ 029   ----------------------------------------
	.byte	W03
	.byte		        Fn3 
	.byte		N52   , An3 
	.byte		N52   , Cn4 
	.byte	W52
	.byte	W01
	.byte		TIE   , Dn3 
	.byte		TIE   , Gn3 
	.byte		TIE   , Bn3 
	.byte	W40
@ 030   ----------------------------------------
	.byte	W64
	.byte		EOT   , Dn3 
	.byte		        Gn3 
	.byte		        Bn3 
	.byte	W01
	.byte		N52   , En3 
	.byte		N52   , Gn3 
	.byte		N52   , Cn4 
	.byte	W30
	.byte	W01
@ 031   ----------------------------------------
	.byte	W21
	.byte		        Fn3 
	.byte		N52   , An3 
	.byte		N52   , Cn4 
	.byte	W52
	.byte	W01
	.byte		TIE   , Dn3 
	.byte		TIE   , Gn3 
	.byte		TIE   , Bn3 
	.byte	W22
@ 032   ----------------------------------------
	.byte	W80
	.byte	W02
	.byte		EOT   , Dn3 
	.byte		        Gn3 
	.byte		        Bn3 
	.byte	W01
	.byte		N52   , En3 
	.byte		N52   , Gn3 
	.byte		N52   , Cn4 
	.byte	W13
@ 033   ----------------------------------------
	.byte	W36
	.byte	W03
	.byte	W01
	.byte		        Fn3 
	.byte		N52   , An3 
	.byte		N52   , Cn4 
	.byte	W52
	.byte		TIE   , Dn3 
	.byte		TIE   , Gn3 
	.byte		TIE   , Bn3 
	.byte	W04
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W04
	.byte		EOT   , Dn3 
	.byte		        Gn3 
	.byte		        Bn3 
	.byte	W01
	.byte		N52   , En3 
	.byte		N52   , Gn3 
	.byte		N52   , Cn4 
	.byte	W52
	.byte	W01
	.byte		        Fn3 
	.byte		N52   , An3 
	.byte		N52   , Cn4 
	.byte	W36
	.byte	W02
@ 036   ----------------------------------------
	.byte	W14
	.byte		TIE   , Dn3 
	.byte		TIE   , Gn3 
	.byte		TIE   , Bn3 
	.byte	W80
	.byte	W02
@ 037   ----------------------------------------
	.byte	W22
	.byte		EOT   , Dn3 
	.byte		        Gn3 
	.byte		        Bn3 
	.byte	W01
	.byte	W01
	.byte		N52   , En3 
	.byte		N52   , Gn3 
	.byte		N52   , Cn4 
	.byte	W52
	.byte		        Fn3 
	.byte		N52   , An3 
	.byte		N52   , Cn4 
	.byte	W20
@ 038   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		TIE   , Dn3 
	.byte		TIE   , Gn3 
	.byte		TIE   , Bn3 
	.byte	W36
	.byte	W01
	.byte		VOL   , 61*mus_like_a_rolling_stone_mvl/mxv
	.byte	W16
	.byte		        57*mus_like_a_rolling_stone_mvl/mxv
	.byte	W10
@ 039   ----------------------------------------
	.byte	W05
	.byte		        53*mus_like_a_rolling_stone_mvl/mxv
	.byte	W13
	.byte		        49*mus_like_a_rolling_stone_mvl/mxv
	.byte	W15
	.byte		        45*mus_like_a_rolling_stone_mvl/mxv
	.byte	W08
	.byte		EOT   , Dn3 
	.byte		        Gn3 
	.byte		        Bn3 
	.byte	W01
	.byte		N52   , En3 
	.byte		N52   , Gn3 
	.byte		N52   , Cn4 
	.byte	W07
	.byte		VOL   , 41*mus_like_a_rolling_stone_mvl/mxv
	.byte	W14
	.byte		        37*mus_like_a_rolling_stone_mvl/mxv
	.byte	W20
	.byte		        33*mus_like_a_rolling_stone_mvl/mxv
	.byte	W11
	.byte	W01
	.byte		N36   , Fn3 , v076, gtp3
	.byte		N36   , An3 , v076, gtp3
	.byte		N36   , Cn4 , v076, gtp3
	.byte	W01
@ 040   ----------------------------------------
	.byte	W08
	.byte		VOL   , 28*mus_like_a_rolling_stone_mvl/mxv
	.byte	W14
	.byte		        24*mus_like_a_rolling_stone_mvl/mxv
	.byte	W16
	.byte		TIE   , Dn3 
	.byte		TIE   , Gn3 
	.byte		TIE   , Bn3 
	.byte	W05
	.byte		VOL   , 20*mus_like_a_rolling_stone_mvl/mxv
	.byte	W19
	.byte		        16*mus_like_a_rolling_stone_mvl/mxv
	.byte	W15
	.byte		        12*mus_like_a_rolling_stone_mvl/mxv
	.byte	W19
@ 041   ----------------------------------------
	.byte		        8*mus_like_a_rolling_stone_mvl/mxv
	.byte	W19
	.byte		        4*mus_like_a_rolling_stone_mvl/mxv
	.byte	W18
	.byte		        0*mus_like_a_rolling_stone_mvl/mxv
	.byte	W12
	.byte		EOT   , Dn3 
	.byte		        Gn3 
	.byte		        Bn3 
	.byte	FINE

@**************** Track 4 (Midi-Chn.6) ****************@

mus_like_a_rolling_stone_4:
	.byte	KEYSH , mus_like_a_rolling_stone_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 91*mus_like_a_rolling_stone_mvl/mxv
	.byte		PAN   , c_v+25
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W08
	.byte		N48   , Gn2 , v096, gtp3
	.byte		N48   , Cn3 , v088, gtp3
	.byte		N48   , En3 , v080, gtp3
	.byte	W52
	.byte	W01
	.byte		N08   , An2 , v096
	.byte		N08   , Cn3 , v088
	.byte		N07   , Fn3 , v080
	.byte	W08
	.byte	W05
	.byte		N22   , Gn2 , v088
	.byte		N22   , Cn3 , v080
	.byte		N22   , En3 , v072
	.byte	W22
@ 002   ----------------------------------------
	.byte	W05
	.byte		N44   , Gn2 , v088, gtp3
	.byte		N44   , Bn2 , v080, gtp3
	.byte		N44   , Dn3 , v072, gtp3
	.byte	W44
	.byte	W03
	.byte	W05
	.byte		N12   , Gn2 , v084
	.byte		N12   , Bn2 , v080
	.byte		N12   , Dn3 , v068
	.byte	W13
	.byte		N05   , En3 , v080
	.byte	W01
	.byte		        Gn2 , v096
	.byte		N24   , Cn3 , v088, gtp1
	.byte	W05
	.byte	W01
	.byte		N19   , An2 , v076
	.byte		N19   , Fn3 , v064
	.byte	W19
@ 003   ----------------------------------------
	.byte	W01
	.byte		N06   , Gn2 , v092
	.byte		N24   , Cn3 , v088, gtp2
	.byte		N06   , En3 , v076
	.byte	W06
	.byte		        An2 , v084
	.byte		N05   , Fn3 , v060
	.byte	W05
	.byte	W01
	.byte		N13   , En3 , v064
	.byte	W01
	.byte		        Gn2 , v080
	.byte	W13
	.byte	W01
	.byte		N24   , Gn2 , v100, gtp1
	.byte		N12   , Cn3 , v088
	.byte		N36   , En3 , v080, gtp2
	.byte	W12
	.byte	W01
	.byte		N24   , Cn3 , v080, gtp1
	.byte	W13
	.byte		        Gn2 , v096, gtp1
	.byte	W12
	.byte	W01
	.byte		N23   , Cn3 , v080
	.byte		N12   , En3 , v072
	.byte	W12
	.byte	W01
	.byte		N10   , An2 , v100
	.byte		N10   , Fn3 , v080
	.byte	W10
	.byte	W03
	.byte		N24   , Gn2 , v088, gtp1
	.byte		N24   , Cn3 , v080, gtp1
	.byte		N24   , En3 , v072, gtp1
	.byte	W03
@ 004   ----------------------------------------
	.byte	W23
	.byte		        Gn2 , v092, gtp2
	.byte		N12   , Bn2 , v080
	.byte		N36   , Dn3 , v076, gtp3
	.byte	W13
	.byte		        Bn2 , v084, gtp3
	.byte	W13
	.byte	W01
	.byte		        Gn2 , v088, gtp3
	.byte	W12
	.byte	W01
	.byte		N14   , Dn3 , v076
	.byte	W13
	.byte		        Cn3 , v072
	.byte	W01
	.byte	W12
	.byte		N22   , Dn3 , v104
	.byte	W01
	.byte	W01
	.byte		BEND  , c_v+63
	.byte	W05
@ 005   ----------------------------------------
	.byte	W06
	.byte		N17   , Fn3 , v096
	.byte	W09
	.byte	W04
	.byte		N15   , Dn3 , v104
	.byte	W05
	.byte		BEND  , c_v+51
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N13   , Cn3 , v096
	.byte	W03
	.byte	W10
	.byte		N24   , Dn3 , v104
	.byte	W01
	.byte		BEND  , c_v+63
	.byte	W12
	.byte		N17   , Fn3 , v076
	.byte	W11
	.byte	W02
	.byte		N20   , Dn3 , v092
	.byte	W05
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W05
	.byte		N13   , Cn3 , v096
	.byte	W07
	.byte	W05
@ 006   ----------------------------------------
	.byte	W02
	.byte		N24   , En3 , v100, gtp1
	.byte		N24   , Gn3 , v080
	.byte	W13
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-64
	.byte	W09
	.byte	W01
	.byte	W01
	.byte		        c_v+0
	.byte		N12   , Cn3 , v096
	.byte		N12   , Fn3 , v076
	.byte	W13
	.byte		        En3 , v068
	.byte	W01
	.byte		N14   , Gn2 , v088
	.byte	W12
	.byte	W01
	.byte		N52   , Cn2 , v100
	.byte	W01
	.byte	W40
@ 007   ----------------------------------------
	.byte	W11
	.byte		        Dn2 
	.byte	W14
	.byte		N36   , Cn3 , v084, gtp2
	.byte		N36   , Fn3 , v072, gtp2
	.byte	W36
	.byte	W02
	.byte		N52   , En2 , v100
	.byte	W01
	.byte	W12
	.byte		N40   , Cn3 , v084, gtp1
	.byte		N42   , Gn3 , v072
	.byte	W20
@ 008   ----------------------------------------
	.byte	W19
	.byte	W01
	.byte		N52   , Fn2 , v100
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		N32   , Cn3 , v084, gtp3
	.byte		N32   , Fn3 , v072, gtp3
	.byte	W32
	.byte	W03
	.byte	W01
	.byte	W03
	.byte		N12   , An2 , v096
	.byte	W01
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+63
	.byte	W10
	.byte		        c_v+0
	.byte	W01
	.byte		N12   , Bn2 , v088
	.byte		N36   , Dn3 , v080, gtp2
	.byte		N36   , Gn3 , v068, gtp2
	.byte	W10
@ 009   ----------------------------------------
	.byte	W02
	.byte	W01
	.byte		N13   , Bn2 , v096
	.byte	W13
	.byte		        Gn2 , v092
	.byte	W12
	.byte	W01
	.byte		N12   , Cn3 , v100
	.byte		N48   , Gn3 , v076, gtp3
	.byte	W13
	.byte		N36   , Dn3 , v084, gtp3
	.byte	W24
	.byte	W03
	.byte		N11   , Gn2 , v092
	.byte	W11
	.byte		N03   , Cn3 , v100
	.byte	W01
	.byte	W01
	.byte		N24   , Dn3 , v088, gtp1
	.byte	W01
	.byte		        Gn3 , v096, gtp2
	.byte	W01
	.byte	W12
@ 010   ----------------------------------------
	.byte	W12
	.byte		N20   , Dn3 , v104
	.byte	W01
	.byte		BEND  , c_v+23
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+63
	.byte	W17
	.byte	W01
	.byte		N18   , Dn3 , v092
	.byte	W04
	.byte		BEND  , c_v+29
	.byte	W01
	.byte		        c_v+0
	.byte	W13
	.byte		N24   , Cn3 , v076, gtp2
	.byte	W14
	.byte		N13   , Gn2 , v100
	.byte	W12
	.byte	W01
	.byte	W01
	.byte		N12   , Dn2 
	.byte	W01
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+47
	.byte		        c_v+63
	.byte	W05
	.byte		        c_v+57
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+38
	.byte	W02
	.byte		        c_v+17
	.byte		        c_v+0
	.byte	W01
	.byte	W01
	.byte		N52   , Cn2 , v104
	.byte	W04
@ 011   ----------------------------------------
	.byte	W48
	.byte		        Dn2 
	.byte	W13
	.byte		N36   , Cn3 , v080, gtp2
	.byte		N36   , Fn3 , v072, gtp2
	.byte	W32
	.byte	W03
@ 012   ----------------------------------------
	.byte	W04
	.byte		N52   , En2 , v096
	.byte	W13
	.byte		N40   , Cn3 , v080, gtp1
	.byte		N42   , Gn3 , v072
	.byte	W36
	.byte	W03
	.byte	W01
	.byte		N52   , Fn2 , v100
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		N32   , Cn3 , v080, gtp3
	.byte		N32   , Fn3 , v072, gtp3
	.byte	W24
	.byte	W02
@ 013   ----------------------------------------
	.byte	W09
	.byte	W04
	.byte		N12   , An2 , v096
	.byte	W01
	.byte		BEND  , c_v+3
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+63
	.byte	W11
	.byte		        c_v+0
	.byte		N12   , Bn2 , v084
	.byte		N36   , Dn3 , v080, gtp2
	.byte		N36   , Gn3 , v068, gtp2
	.byte	W13
	.byte	W01
	.byte		N13   , Bn2 , v092
	.byte	W13
	.byte		        Gn2 , v088
	.byte	W12
	.byte	W01
	.byte		N12   , Cn3 , v096
	.byte		N48   , Gn3 , v076, gtp3
	.byte	W13
	.byte		N36   , Dn3 , v080, gtp3
	.byte	W17
@ 014   ----------------------------------------
	.byte	W09
	.byte		N11   , Gn2 , v092
	.byte	W12
	.byte	W01
	.byte		N03   , Cn3 , v100
	.byte	W01
	.byte		N52   , Gn3 , v080
	.byte	W02
	.byte		N48   , Dn3 , v096
	.byte	W48
	.byte	W01
	.byte		N04   , Cn3 , v100
	.byte	W01
	.byte		N24   , Gn3 , v080
	.byte	W04
	.byte		N20   , Dn3 , v076
	.byte	W09
	.byte		N13   , Gn2 , v088
	.byte	W08
@ 015   ----------------------------------------
	.byte	W04
	.byte	W01
	.byte	W01
	.byte		N24   , Cs3 , v084, gtp1
	.byte		N24   , Fs3 , v076, gtp1
	.byte	W13
	.byte		N11   , Gn2 , v092
	.byte	W12
	.byte		N04   , Gn2 , v088
	.byte	W01
	.byte		N36   , Cn3 , v088, gtp2
	.byte	W01
	.byte		N28   , Fn3 , v076, gtp1
	.byte	W03
	.byte		N32   , An2 , v072, gtp1
	.byte	W24
	.byte	W02
	.byte	W08
	.byte		N02   , Gn2 , v084
	.byte	W01
	.byte		N12   , Cn3 , v072
	.byte	W02
	.byte		N10   , An2 , v076
	.byte	W11
	.byte		N05   , Gn2 , v088
	.byte	W01
	.byte		N52   , Fn2 , v100
	.byte		N52   , Cn3 , v080
	.byte	W05
	.byte		N07   , An2 , v076
	.byte	W06
@ 016   ----------------------------------------
	.byte	W01
	.byte	W01
	.byte		N36   , Gn2 , v084, gtp3
	.byte	W36
	.byte	W03
	.byte		        Bn2 , v100, gtp3
	.byte	W13
	.byte		        Dn3 , v080, gtp3
	.byte		N36   , Gn3 , v068, gtp3
	.byte	W24
	.byte	W02
	.byte		N12   , Gn2 , v092
	.byte	W13
	.byte		N04   , Cn3 , v100
	.byte	W01
	.byte		N52   , Gn3 , v076
	.byte	W01
	.byte		N24   , Dn3 , v100
	.byte	W01
@ 017   ----------------------------------------
	.byte	W02
	.byte	W21
	.byte	W01
	.byte		        Cn3 , v096
	.byte	W24
	.byte		N48   , Fn2 , v100, gtp3
	.byte		N03   , Gn2 , v088
	.byte		N52   , Cn3 , v080
	.byte	W01
	.byte		N15   , An2 , v088
	.byte	W01
	.byte	W02
	.byte	W13
	.byte		N02   , Gn2 , v080
	.byte	W03
	.byte		N14   , An2 , v076
	.byte	W15
	.byte	W01
	.byte		N02   , Gn2 
	.byte	W02
	.byte		N12   , An2 
	.byte	W10
@ 018   ----------------------------------------
	.byte	W03
	.byte	W01
	.byte	W01
	.byte		N54   , Fn2 , v100
	.byte		N01   , Gn2 , v092
	.byte		N52   , Cn3 , v080, gtp1
	.byte	W01
	.byte	W01
	.byte		N24   , An2 , v088
	.byte	W24
	.byte	W01
	.byte		        Gn2 , v088, gtp3
	.byte	W24
	.byte	W03
	.byte	W01
	.byte		BEND  , c_v+5
	.byte		N24   , Dn3 , v104, gtp1
	.byte	W01
	.byte		BEND  , c_v+39
	.byte	W01
	.byte		        c_v+63
	.byte	W11
	.byte		N17   , Fn3 , v072
	.byte	W12
	.byte	W01
	.byte		N13   , Dn3 , v104
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v+30
	.byte		        c_v+0
	.byte	W05
@ 019   ----------------------------------------
	.byte	W03
	.byte		N13   , Cn3 , v096
	.byte	W13
	.byte		BEND  , c_v+22
	.byte		N23   , Dn2 , v100
	.byte	W01
	.byte		BEND  , c_v+43
	.byte	W01
	.byte		        c_v+63
	.byte	W11
	.byte		N17   , As2 , v072
	.byte	W11
	.byte	W02
	.byte		N12   , Dn2 , v104
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v+53
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		N15   , Cn2 , v096
	.byte	W14
	.byte		N12   , Fn2 , v100
	.byte	W01
	.byte	W11
	.byte	W01
	.byte		N24   , Fn2 , v092, gtp1
	.byte		N36   , An2 , v084, gtp3
	.byte		N36   , Cn3 , v072, gtp3
	.byte	W14
@ 020   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn2 , v092
	.byte	W13
	.byte		        En2 , v100
	.byte	W13
	.byte	W01
	.byte		N24   , En2 , v092, gtp1
	.byte		N36   , Gn2 , v080, gtp2
	.byte		N36   , Cn3 , v072, gtp2
	.byte	W24
	.byte	W01
	.byte	W01
	.byte		N12   , Cn2 , v092
	.byte	W12
	.byte	W01
	.byte		N36   , Dn2 , v100, gtp3
	.byte		N36   , Fn2 , v088, gtp3
	.byte		N36   , Cn3 , v080, gtp2
	.byte	W18
@ 021   ----------------------------------------
	.byte	W21
	.byte		N52   , Cn2 , v092
	.byte		N52   , Gn2 , v084
	.byte		N52   , Cn3 , v072
	.byte	W52
	.byte	W01
	.byte		N36   , Fn2 , v092, gtp3
	.byte		N64   , An2 , v080, gtp1
	.byte		N64   , Cn3 , v072, gtp1
	.byte	W22
@ 022   ----------------------------------------
	.byte	W17
	.byte		N12   , Fn2 , v096
	.byte	W13
	.byte	W01
	.byte		        Cn2 , v092
	.byte	W12
	.byte	W01
	.byte		N24   , En2 , v100, gtp1
	.byte		N36   , Gn2 , v088, gtp2
	.byte		N36   , Cn3 , v080, gtp2
	.byte	W24
	.byte	W01
	.byte		N12   , En2 , v096
	.byte	W13
	.byte	W01
	.byte		N48   , Dn2 , v092, gtp3
	.byte		N48   , Fn2 , v084, gtp3
	.byte		N48   , Cn3 , v072, gtp3
	.byte	W13
@ 023   ----------------------------------------
	.byte	W36
	.byte	W03
	.byte		N64   , Cn2 , v092, gtp1
	.byte		N64   , Gn2 , v084, gtp1
	.byte		N64   , Cn3 , v072, gtp1
	.byte	W56
	.byte	W01
@ 024   ----------------------------------------
	.byte	W08
	.byte	W01
	.byte		N12   , Dn2 , v096
	.byte	W13
	.byte	W01
	.byte		N12   
	.byte	W12
	.byte	W01
	.byte		        Gn2 , v100
	.byte	W01
	.byte		BEND  , c_v+12
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+52
	.byte		        c_v+63
	.byte	W10
	.byte		        c_v+0
	.byte		N42   , Cn3 , v096
	.byte	W01
	.byte		N40   , Fn3 , v076, gtp1
	.byte	W36
	.byte	W03
	.byte		N24   , An2 , v100, gtp1
	.byte	W02
	.byte	W01
	.byte	W05
@ 025   ----------------------------------------
	.byte	W13
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-64
	.byte	W02
	.byte	W01
	.byte		        c_v+0
	.byte		N12   , Gn2 , v104
	.byte	W01
	.byte		BEND  , c_v+6
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+63
	.byte	W10
	.byte	W01
	.byte		        c_v+0
	.byte		N36   , An2 , v096, gtp3
	.byte		N36   , Cn3 , v076, gtp2
	.byte	W36
	.byte	W03
	.byte	W01
	.byte		N15   , Gn2 , v100
	.byte	W02
	.byte		BEND  , c_v+38
	.byte		        c_v+63
	.byte	W11
	.byte		        c_v+52
	.byte		        c_v+0
	.byte		N36   , An2 , v096, gtp3
	.byte		N36   , Cn3 , v076, gtp3
	.byte	W02
	.byte	W10
@ 026   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte	W01
	.byte		N12   , Gn2 , v100
	.byte		TIE   , Bn2 , v092
	.byte		TIE   , Dn3 , v080
	.byte	W12
	.byte	W01
	.byte		N12   , Gn2 , v092
	.byte	W12
	.byte	W01
	.byte		        Gn2 , v100
	.byte	W12
	.byte	W01
	.byte		        Gn2 , v092
	.byte	W13
	.byte		        Gn2 , v100
	.byte	W13
	.byte		        Gn2 , v092
	.byte	W03
@ 027   ----------------------------------------
	.byte	W10
	.byte		        Gn2 , v100
	.byte	W13
	.byte		        Gn2 , v092
	.byte	W13
	.byte	W01
	.byte		        Gn2 , v100
	.byte	W12
	.byte		EOT   , Bn2 
	.byte		        Dn3 
	.byte	W01
	.byte		N12   , Gn2 , v096
	.byte		N36   , Bn2 , v084, gtp3
	.byte		N36   , Dn3 , v076, gtp3
	.byte	W13
	.byte		N12   , Gn2 , v100
	.byte	W13
	.byte		        Gn2 , v092
	.byte	W13
	.byte		        Gn2 , v100
	.byte		N24   , Bn2 , v092, gtp1
	.byte		N24   , Dn3 , v080, gtp1
	.byte	W07
@ 028   ----------------------------------------
	.byte	W06
	.byte		        Gn2 , v092, gtp1
	.byte	W12
	.byte	W01
	.byte		        Bn2 , v088, gtp2
	.byte		N24   , Dn3 , v080, gtp2
	.byte	W13
	.byte		N13   , Gn2 , v092
	.byte	W13
	.byte	W01
	.byte		N52   , Gn2 , v100
	.byte	W24
	.byte	W02
	.byte		N24   , Cn3 , v088, gtp1
	.byte		N24   , En3 , v076
	.byte	W24
@ 029   ----------------------------------------
	.byte	W01
	.byte		N02   , En3 , v100
	.byte	W01
	.byte		N13   , An2 
	.byte		N13   , Cn3 , v088
	.byte	W01
	.byte		N12   , Fn3 , v080
	.byte	W13
	.byte		N24   , Gn2 , v096, gtp1
	.byte		N24   , Cn3 , v080, gtp2
	.byte		N24   , En3 , v072, gtp2
	.byte	W24
	.byte	W02
	.byte		N64   , Gn2 , v096, gtp1
	.byte		N64   , Bn2 , v084, gtp1
	.byte		N64   , Dn3 , v076, gtp1
	.byte	W54
@ 030   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		BEND  , c_v+5
	.byte		N12   , As2 , v108
	.byte	W01
	.byte		BEND  , c_v+39
	.byte	W01
	.byte		        c_v+63
	.byte	W09
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+0
	.byte		N24   , An2 , v096, gtp1
	.byte	W13
	.byte		N13   , Cn3 , v080
	.byte	W13
	.byte	W01
	.byte		N36   , Dn2 , v100, gtp2
	.byte	W01
	.byte		BEND  , c_v+3
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+63
	.byte	W30
	.byte	W01
	.byte		        c_v+60
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+44
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+24
	.byte		        c_v+0
	.byte	W01
	.byte		N12   , Gn2 , v096
	.byte		N12   , Cn3 , v076
	.byte	W05
@ 031   ----------------------------------------
	.byte	W07
	.byte	W01
	.byte		        Gn2 , v092
	.byte		N12   , Cn3 , v084
	.byte		N12   , En3 , v072
	.byte	W12
	.byte	W01
	.byte		N10   , An2 , v100
	.byte		N10   , Cn3 , v088
	.byte		N10   , Fn3 , v080
	.byte	W10
	.byte	W03
	.byte		N24   , Gn2 , v092, gtp2
	.byte		N24   , Cn3 , v084, gtp2
	.byte		N24   , En3 , v072, gtp2
	.byte	W24
	.byte	W02
	.byte	W01
	.byte		N36   , Gn2 , v092
	.byte		N36   , Bn2 , v084
	.byte		N24   , Dn3 , v072, gtp1
	.byte	W24
	.byte	W01
	.byte		        Dn3 , v080, gtp1
	.byte	W10
@ 032   ----------------------------------------
	.byte	W01
	.byte	W02
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+43
	.byte		        c_v+63
	.byte	W11
	.byte		        c_v+0
	.byte		N12   , Gn3 , v096
	.byte	W13
	.byte	W01
	.byte		BEND  , c_v+14
	.byte		N12   , Dn3 , v104
	.byte	W01
	.byte		BEND  , c_v+41
	.byte	W01
	.byte		        c_v+63
	.byte	W04
	.byte		        c_v+46
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte	W01
	.byte		N12   , Cn3 , v096
	.byte	W12
	.byte	W01
	.byte		N13   , An2 , v100
	.byte	W13
	.byte		N36   , Gn2 , v096, gtp3
	.byte	W24
	.byte	W03
@ 033   ----------------------------------------
	.byte	W13
	.byte		N24   , Gn2 , v096, gtp1
	.byte		N24   , Cn3 , v088, gtp2
	.byte		N24   , En3 , v076, gtp2
	.byte	W24
	.byte	W02
	.byte	W01
	.byte		N12   , An2 , v100
	.byte		N12   , Cn3 , v088
	.byte		N12   , Fn3 , v080
	.byte	W12
	.byte	W01
	.byte		N24   , Gn2 , v092, gtp2
	.byte		N24   , Cn3 , v080, gtp2
	.byte		N24   , En3 , v072, gtp2
	.byte	W24
	.byte	W02
	.byte		TIE   , Gn2 , v088
	.byte		TIE   , Bn2 , v080
	.byte		TIE   , Dn3 , v072
	.byte	W17
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W04
	.byte		EOT   , Gn2 
	.byte		        Bn2 
	.byte		        Dn3 
	.byte	W01
	.byte		N24   , Cn3 , v108, gtp1
	.byte	W24
	.byte	W02
	.byte		        Gn2 , v100, gtp2
	.byte		N24   , Cn3 , v088, gtp2
	.byte		N24   , En3 , v076, gtp2
	.byte	W24
	.byte	W02
	.byte		N08   , Fn3 , v080
	.byte	W01
	.byte		        An2 , v100
	.byte		N08   , Cn3 , v088
	.byte	W08
	.byte	W05
	.byte		N24   , Gn2 , v092, gtp2
	.byte		N24   , Cn3 , v084, gtp2
	.byte		N24   , En3 , v072, gtp2
	.byte	W24
	.byte	W01
@ 036   ----------------------------------------
	.byte	W01
	.byte		TIE   , Gn2 , v096
	.byte		TIE   , Bn2 , v088
	.byte		TIE   , Dn3 , v076
	.byte	W92
	.byte	W03
@ 037   ----------------------------------------
	.byte	W22
	.byte		EOT   , Gn2 
	.byte		        Bn2 
	.byte		        Dn3 
	.byte	W01
	.byte		N13   , Cn2 , v108
	.byte	W13
	.byte	W01
	.byte		N12   , Cn3 , v100
	.byte	W13
	.byte		        Gn2 , v104
	.byte	W12
	.byte	W01
	.byte		        En2 
	.byte	W13
	.byte		        En2 , v108
	.byte	W04
	.byte		BEND  , c_v+9
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+30
	.byte	W08
	.byte		        c_v+0
	.byte		N24   , An2 , v100, gtp2
	.byte	W07
@ 038   ----------------------------------------
	.byte	W19
	.byte	W01
	.byte		TIE   , Gn2 , v104
	.byte	W48
	.byte	W03
	.byte		VOL   , 85*mus_like_a_rolling_stone_mvl/mxv
	.byte	W16
	.byte		        79*mus_like_a_rolling_stone_mvl/mxv
	.byte	W09
@ 039   ----------------------------------------
	.byte	W06
	.byte		        73*mus_like_a_rolling_stone_mvl/mxv
	.byte	W13
	.byte		        68*mus_like_a_rolling_stone_mvl/mxv
	.byte	W14
	.byte		        62*mus_like_a_rolling_stone_mvl/mxv
	.byte	W09
	.byte		EOT   
	.byte		N52   , Cn2 
	.byte	W08
	.byte		VOL   , 56*mus_like_a_rolling_stone_mvl/mxv
	.byte	W15
	.byte		        51*mus_like_a_rolling_stone_mvl/mxv
	.byte	W19
	.byte		        45*mus_like_a_rolling_stone_mvl/mxv
	.byte	W10
	.byte	W01
	.byte		N12   , Dn3 
	.byte	W01
@ 040   ----------------------------------------
	.byte	W01
	.byte		BEND  , c_v+5
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+45
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+63
	.byte	W04
	.byte		VOL   , 39*mus_like_a_rolling_stone_mvl/mxv
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N12   , Gn3 , v096
	.byte	W10
	.byte		VOL   , 34*mus_like_a_rolling_stone_mvl/mxv
	.byte	W02
	.byte	W01
	.byte		BEND  , c_v+15
	.byte		N11   , Dn3 , v100
	.byte	W01
	.byte		BEND  , c_v+44
	.byte		        c_v+63
	.byte	W04
	.byte		        c_v+29
	.byte		        c_v+0
	.byte	W07
	.byte		N13   , Cn3 , v096
	.byte	W07
	.byte		VOL   , 28*mus_like_a_rolling_stone_mvl/mxv
	.byte	W06
	.byte	W01
	.byte		N12   , Dn3 , v104
	.byte	W01
	.byte		BEND  , c_v+2
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+52
	.byte		        c_v+63
	.byte	W09
	.byte		VOL   , 22*mus_like_a_rolling_stone_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N13   , Gn3 , v096
	.byte	W13
	.byte		N12   , Dn3 , v100
	.byte	W01
	.byte		BEND  , c_v+22
	.byte	W01
	.byte		        c_v+45
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte		VOL   , 17*mus_like_a_rolling_stone_mvl/mxv
	.byte	W05
	.byte		BEND  , c_v+55
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+0
	.byte	W03
	.byte		N12   , Cn3 , v092
	.byte	W06
@ 041   ----------------------------------------
	.byte	W01
	.byte		VOL   , 11*mus_like_a_rolling_stone_mvl/mxv
	.byte	W06
	.byte		N12   , Dn3 , v104
	.byte	W02
	.byte		BEND  , c_v+12
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+44
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+63
	.byte	W09
	.byte		VOL   , 5*mus_like_a_rolling_stone_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N12   , Gn3 , v096
	.byte	W13
	.byte		        Dn3 , v100
	.byte	W01
	.byte		BEND  , c_v+13
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+63
	.byte	W02
	.byte		VOL   , 0*mus_like_a_rolling_stone_mvl/mxv
	.byte	W04
	.byte		BEND  , c_v+59
	.byte	W01
	.byte		        c_v+43
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+0
	.byte	W03
	.byte	W01
	.byte		N02   , Cn3 , v096
	.byte	W02
	.byte	FINE

@**************** Track 5 (Midi-Chn.8) ****************@

mus_like_a_rolling_stone_5:
	.byte	KEYSH , mus_like_a_rolling_stone_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 26
	.byte		VOL   , 88*mus_like_a_rolling_stone_mvl/mxv
	.byte		PAN   , c_v-23
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W22
	.byte		N12   , Gn3 , v068
	.byte		N36   , Cn4 , v092, gtp3
	.byte	W12
	.byte	W01
	.byte		N12   , Gn3 , v076
	.byte	W13
	.byte		N11   , Gn3 , v068
	.byte	W11
	.byte	W01
	.byte		N05   , Gn3 , v076
	.byte	W01
	.byte	W01
	.byte		N12   , An3 , v100
	.byte	W03
	.byte	W09
	.byte		        Gn3 , v096
	.byte	W13
	.byte		N04   , Gn3 , v076
	.byte	W01
	.byte		N11   , An3 , v096
	.byte	W03
	.byte	W05
@ 002   ----------------------------------------
	.byte	W04
	.byte		N02   , Gn3 , v092
	.byte	W03
	.byte		N03   , An3 , v088
	.byte	W04
	.byte		N84   , Gn3 , v084, gtp1
	.byte	W84
	.byte	W01
@ 003   ----------------------------------------
	.byte	W01
	.byte		N06   , Gn3 , v096
	.byte	W06
	.byte		        An3 , v080
	.byte	W07
	.byte		N64   , Cn4 , v092
	.byte	W64
	.byte	W01
	.byte		N03   , Gn3 , v076
	.byte	W01
	.byte		N13   , Cn4 , v092
	.byte	W02
	.byte	W01
	.byte		N10   , An3 , v076
	.byte	W10
	.byte		N12   , Gn3 , v092
	.byte	W01
	.byte	W02
@ 004   ----------------------------------------
	.byte	W10
	.byte		        An3 , v096
	.byte	W12
	.byte		N04   , Gn3 , v092
	.byte	W04
	.byte		N03   , An3 , v084
	.byte	W04
	.byte		N68   , Gn3 
	.byte	W56
	.byte	W03
	.byte		N09   , Gn3 , v068
	.byte	W05
	.byte		BEND  , c_v+8
	.byte	W01
	.byte		        c_v+28
	.byte	W01
@ 005   ----------------------------------------
	.byte		        c_v+47
	.byte		        c_v+63
	.byte	W02
	.byte	W03
	.byte		        c_v+0
	.byte	W01
	.byte		N52   , Cn4 , v088, gtp1
	.byte	W52
	.byte	W01
	.byte		N12   , Gn4 
	.byte	W13
	.byte		        Gn4 , v104
	.byte	W13
	.byte		        Gn4 , v092
	.byte	W11
@ 006   ----------------------------------------
	.byte	W02
	.byte		N52   , An3 , v096
	.byte	W09
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		        c_v+8
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+25
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+33
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+49
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+54
	.byte	W01
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+62
	.byte		        c_v+63
	.byte	W30
	.byte	W01
	.byte		        c_v+0
	.byte		N52   , En3 , v076
	.byte	W13
	.byte		N48   , Cn4 , v092, gtp3
	.byte	W28
@ 007   ----------------------------------------
	.byte	W11
	.byte	W01
	.byte		N52   , Fn3 , v076
	.byte	W12
	.byte	W01
	.byte		N48   , Cn4 , v092, gtp3
	.byte	W36
	.byte	W03
	.byte		        Gn3 , v076, gtp1
	.byte	W12
	.byte	W01
	.byte		        Cn4 , v092
	.byte	W19
@ 008   ----------------------------------------
	.byte	W18
	.byte	W02
	.byte		N42   , An3 , v076
	.byte	W09
	.byte	W05
	.byte		N32   , Cn4 , v092, gtp2
	.byte	W28
	.byte	W01
	.byte	W06
	.byte	W03
	.byte		N06   , An3 , v104
	.byte	W01
	.byte		N84   , Gn3 , v076, gtp1
	.byte	W04
	.byte		N80   , Bn3 , v084, gtp1
	.byte	W01
	.byte	W18
@ 009   ----------------------------------------
	.byte	W60
	.byte	W03
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N13   , An3 , v092
	.byte	W13
	.byte	W01
	.byte		TIE   , Dn3 , v072
	.byte		N05   , An3 , v100
	.byte	W05
	.byte	W01
	.byte		N92   , Bn3 , v084, gtp2
	.byte	W07
@ 010   ----------------------------------------
	.byte	W84
	.byte	W02
	.byte		EOT   , Dn3 
	.byte	W01
	.byte	W05
	.byte		N52   , En3 , v076
	.byte	W04
@ 011   ----------------------------------------
	.byte	W09
	.byte		N48   , Cn4 , v092, gtp3
	.byte	W36
	.byte	W03
	.byte		N52   , Fn3 , v076
	.byte	W13
	.byte	W01
	.byte		N48   , Cn4 , v092, gtp3
	.byte	W32
	.byte	W02
@ 012   ----------------------------------------
	.byte	W04
	.byte	W01
	.byte		        Gn3 , v076, gtp1
	.byte	W12
	.byte	W01
	.byte		        Cn4 , v092
	.byte	W36
	.byte	W03
	.byte		N42   , An3 , v076
	.byte	W09
	.byte	W04
	.byte		N36   , Cn4 , v092, gtp2
	.byte	W24
	.byte	W02
@ 013   ----------------------------------------
	.byte	W04
	.byte	W09
	.byte		N06   , An3 , v100
	.byte	W01
	.byte		N84   , Gn3 , v076, gtp1
	.byte	W04
	.byte		N80   , Bn3 , v084, gtp1
	.byte	W01
	.byte	W76
	.byte	W01
@ 014   ----------------------------------------
	.byte	W03
	.byte	W01
	.byte		N05   , Gn3 
	.byte	W05
	.byte	W01
	.byte		N13   , An3 , v092
	.byte	W13
	.byte		TIE   , Dn3 , v072
	.byte		N05   , An3 , v100
	.byte	W06
	.byte		TIE   , Bn3 , v084
	.byte	W66
	.byte	W01
@ 015   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		EOT   , Dn3 
	.byte	W01
	.byte	W04
	.byte		        Bn3 
	.byte	W01
	.byte		TIE   , Fn3 , v100
	.byte	W01
	.byte		        Cn3 , v076
	.byte	W60
	.byte	W03
@ 016   ----------------------------------------
	.byte	W40
	.byte		EOT   , Fn3 
	.byte	W01
	.byte		        Cn3 
	.byte	W01
	.byte		N78   , Dn3 
	.byte		N76   , Gn3 , v100, gtp1
	.byte	W54
@ 017   ----------------------------------------
	.byte	W23
	.byte	W01
	.byte		N24   , Dn3 , v072
	.byte		N06   , Gn3 , v088
	.byte	W03
	.byte		N11   , An3 , v096
	.byte	W03
	.byte	W07
	.byte		N13   , Gn3 , v092
	.byte	W01
	.byte	W10
	.byte	W02
	.byte		TIE   , Fn3 , v100
	.byte	W01
	.byte		        Cn3 , v080
	.byte	W44
	.byte	W01
@ 018   ----------------------------------------
	.byte	W56
	.byte	W02
	.byte		EOT   , Fn3 
	.byte	W01
	.byte		        Cn3 
	.byte	W01
	.byte		N78   , Dn3 , v076
	.byte		N76   , Gn3 , v100, gtp1
	.byte	W36
@ 019   ----------------------------------------
	.byte	W42
	.byte		N12   , Dn3 , v072
	.byte		N07   , Gn3 , v088
	.byte	W03
	.byte		N10   , An3 , v096
	.byte	W05
	.byte	W05
	.byte	W01
	.byte		N12   , Gn3 , v092
	.byte	W12
	.byte	W01
	.byte		N52   , Cn3 , v076
	.byte		N52   , Fn3 , v088
	.byte		N52   , An3 , v100
	.byte	W24
	.byte	W03
@ 020   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		        Cn3 , v076
	.byte		N52   , En3 , v092
	.byte	W01
	.byte		        Gn3 , v100
	.byte	W52
	.byte		N36   , Cn3 , v076, gtp3
	.byte		N36   , Dn3 , v092, gtp3
	.byte		N36   , Fn3 , v100, gtp3
	.byte	W18
@ 021   ----------------------------------------
	.byte	W22
	.byte		N48   , Gn2 , v068, gtp3
	.byte		N48   , Cn3 , v080, gtp3
	.byte		N48   , En3 , v092, gtp3
	.byte	W52
	.byte		N52   , Cn3 , v076
	.byte		N52   , Fn3 , v084
	.byte		N52   , An3 , v096
	.byte	W22
@ 022   ----------------------------------------
	.byte	W30
	.byte	W01
	.byte		        Cn3 , v072
	.byte		N52   , En3 , v084
	.byte		N52   , Gn3 , v092
	.byte	W52
	.byte		        Dn3 , v084
	.byte	W01
	.byte		N48   , Cn3 , v072, gtp3
	.byte		N48   , Fn3 , v096, gtp3
	.byte	W12
@ 023   ----------------------------------------
	.byte	W36
	.byte	W03
	.byte	W01
	.byte		N64   , Gn2 , v072, gtp1
	.byte		N64   , Cn3 , v084, gtp1
	.byte		N64   , En3 , v096, gtp1
	.byte	W56
@ 024   ----------------------------------------
	.byte	W10
	.byte		        An2 , v076
	.byte		N64   , Cn3 , v100
	.byte	W64
	.byte	W01
	.byte		N19   , Gn2 , v068
	.byte	W13
	.byte		N14   , An2 , v096
	.byte	W06
	.byte	W02
@ 025   ----------------------------------------
	.byte	W05
	.byte		N36   , Cn3 , v068, gtp2
	.byte		N36   , Fn3 , v096, gtp1
	.byte	W02
	.byte	W36
	.byte	W02
	.byte		BEND  , c_v+2
	.byte		N24   , Dn3 , v076, gtp1
	.byte		N24   , Fn3 , v100, gtp1
	.byte	W01
	.byte		BEND  , c_v+31
	.byte		        c_v+63
	.byte	W24
	.byte	W01
	.byte		N24   , Dn3 , v076
	.byte		N24   , Fn3 , v100, gtp1
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W24
@ 026   ----------------------------------------
	.byte	W01
	.byte		N24   , Cn3 , v076
	.byte		N24   , En3 , v096, gtp1
	.byte	W24
	.byte	W01
	.byte	W02
	.byte		N16   , Gn2 , v100
	.byte	W13
	.byte		N24   , Dn3 , v080, gtp3
	.byte		N24   , Gn3 , v092
	.byte	W03
	.byte	W10
	.byte		        Bn2 , v088
	.byte	W12
	.byte	W01
	.byte		N11   , Gn2 , v096
	.byte	W02
	.byte	W10
	.byte		N04   , Cn3 , v100
	.byte	W01
	.byte		N36   , Gn2 , v076, gtp3
	.byte	W04
	.byte		N42   , Dn3 , v084
	.byte	W12
@ 027   ----------------------------------------
	.byte	W24
	.byte		N60   , An2 , v072, gtp2
	.byte	W06
	.byte	W06
	.byte		BEND  , c_v+6
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+49
	.byte		        c_v+63
	.byte	W12
	.byte		N44   , Cn3 , v096, gtp2
	.byte	W36
	.byte	W04
	.byte		N12   , An2 , v100
	.byte	W06
@ 028   ----------------------------------------
	.byte	W01
	.byte		BEND  , c_v+35
	.byte	W01
	.byte		        c_v+0
	.byte	W04
	.byte		N36   , Gn2 , v092, gtp2
	.byte	W36
	.byte	W02
	.byte	W16
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gn3 , v096
	.byte	W13
	.byte		        En3 , v092
	.byte	W11
@ 029   ----------------------------------------
	.byte	W02
	.byte		N01   , Gn3 , v104
	.byte	W01
	.byte	W02
	.byte		N09   , An3 , v100
	.byte	W10
	.byte		N13   , Gn3 , v092
	.byte	W13
	.byte	W01
	.byte		N10   , An3 , v100
	.byte	W10
	.byte	W01
	.byte		N03   , Gn3 , v088
	.byte	W03
	.byte		N02   , An3 , v092
	.byte	W02
	.byte		TIE   , Gn3 
	.byte	W48
	.byte	W03
@ 030   ----------------------------------------
	.byte	W78
	.byte		EOT   
	.byte	W01
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gn3 , v096
	.byte	W05
@ 031   ----------------------------------------
	.byte	W08
	.byte	W01
	.byte		N11   , En3 , v092
	.byte	W12
	.byte		N04   , Gn3 , v076
	.byte	W02
	.byte		N10   , An3 , v096
	.byte	W02
	.byte	W09
	.byte		N12   , Gn3 , v092
	.byte	W13
	.byte	W01
	.byte		N10   , An3 , v096
	.byte	W10
	.byte		N03   , Gn3 , v088
	.byte	W04
	.byte		N05   , An3 , v092
	.byte	W03
	.byte		TIE   , Gn3 , v064
	.byte	W02
	.byte	W28
	.byte	W01
@ 032   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte	W02
@ 033   ----------------------------------------
	.byte		N12   , Cn4 , v092
	.byte	W13
	.byte		N13   , Gn3 , v096
	.byte	W13
	.byte	W01
	.byte		N12   , En3 , v092
	.byte	W12
	.byte		N02   , Gn3 , v096
	.byte	W01
	.byte		N11   , An3 , v100
	.byte	W02
	.byte	W10
	.byte	W01
	.byte		N12   , Gn3 , v096
	.byte	W12
	.byte	W01
	.byte		N11   , An3 
	.byte	W11
	.byte		N02   , Gn3 , v088
	.byte	W03
	.byte		N05   , An3 , v092
	.byte	W03
	.byte		TIE   , Gn3 , v064
	.byte	W02
	.byte	W11
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W16
	.byte		EOT   
	.byte	W03
	.byte		N12   , Cn4 , v092
	.byte	W12
	.byte		        Gn3 , v096
	.byte	W13
	.byte	W01
	.byte		        En3 , v092
	.byte	W12
	.byte		N03   , Gn3 , v072
	.byte	W01
	.byte		N12   , An3 , v100
	.byte	W03
	.byte	W10
	.byte		        Gn3 , v092
	.byte	W13
	.byte		N11   , An3 , v096
	.byte	W12
@ 036   ----------------------------------------
	.byte		N03   , Gn3 , v084
	.byte	W03
	.byte		N04   , An3 , v092
	.byte	W03
	.byte		TIE   , Gn3 , v064
	.byte	W02
	.byte	W88
@ 037   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		EOT   
	.byte	W02
	.byte		N12   , Cn4 , v092
	.byte	W12
	.byte	W01
	.byte		        Gn3 , v108
	.byte	W13
	.byte		        En3 , v092
	.byte	W12
	.byte	W01
	.byte		N02   , Gn3 , v096
	.byte	W01
	.byte		N12   , An3 , v100
	.byte	W01
	.byte	W11
	.byte		N13   , Gn3 , v092
	.byte	W07
@ 038   ----------------------------------------
	.byte	W06
	.byte	W01
	.byte		N11   , An3 , v096
	.byte	W11
	.byte	W01
	.byte		N02   , Gn3 , v092
	.byte	W02
	.byte	W01
	.byte		        An3 
	.byte	W02
	.byte	W01
	.byte		TIE   , Gn3 , v084
	.byte	W48
	.byte	W01
	.byte		VOL   , 82*mus_like_a_rolling_stone_mvl/mxv
	.byte	W15
	.byte		        77*mus_like_a_rolling_stone_mvl/mxv
	.byte	W07
@ 039   ----------------------------------------
	.byte	W07
	.byte		        71*mus_like_a_rolling_stone_mvl/mxv
	.byte	W13
	.byte		        66*mus_like_a_rolling_stone_mvl/mxv
	.byte	W16
	.byte		        60*mus_like_a_rolling_stone_mvl/mxv
	.byte	W15
	.byte		        55*mus_like_a_rolling_stone_mvl/mxv
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N12   , Cn4 , v092
	.byte	W12
	.byte	W01
	.byte		        Gn3 , v096
	.byte	W01
	.byte		VOL   , 49*mus_like_a_rolling_stone_mvl/mxv
	.byte	W11
	.byte		N11   , En3 , v092
	.byte	W05
	.byte		VOL   , 44*mus_like_a_rolling_stone_mvl/mxv
	.byte	W07
	.byte		N02   , Gn3 , v072
	.byte	W01
	.byte		N12   , An3 , v100
	.byte	W02
	.byte	W01
@ 040   ----------------------------------------
	.byte	W09
	.byte	W01
	.byte		N13   , Gn3 , v092
	.byte	W01
	.byte		VOL   , 38*mus_like_a_rolling_stone_mvl/mxv
	.byte	W12
	.byte	W01
	.byte		N12   , An3 , v096
	.byte	W03
	.byte		VOL   , 33*mus_like_a_rolling_stone_mvl/mxv
	.byte	W09
	.byte	W01
	.byte		N12   , Gn3 , v092
	.byte	W08
	.byte		VOL   , 27*mus_like_a_rolling_stone_mvl/mxv
	.byte	W05
	.byte	W01
	.byte		N12   , An3 , v100
	.byte	W06
	.byte		BEND  , c_v+10
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+63
	.byte	W06
	.byte		        c_v+0
	.byte		N06   , Dn4 , v092
	.byte	W02
	.byte		VOL   , 22*mus_like_a_rolling_stone_mvl/mxv
	.byte	W04
	.byte	W01
	.byte		N12   , An3 , v088
	.byte	W06
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		        c_v+41
	.byte		        c_v+63
	.byte	W04
	.byte		VOL   , 16*mus_like_a_rolling_stone_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N12   , An3 , v092
	.byte	W06
@ 041   ----------------------------------------
	.byte	W02
	.byte		BEND  , c_v+5
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+63
	.byte	W02
	.byte		VOL   , 11*mus_like_a_rolling_stone_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+0
	.byte		N06   , Dn4 , v100
	.byte	W07
	.byte		N12   , An3 , v088
	.byte	W07
	.byte		BEND  , c_v+24
	.byte	W01
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte		VOL   , 5*mus_like_a_rolling_stone_mvl/mxv
	.byte	W03
	.byte		BEND  , c_v+0
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W01
	.byte		N12   , An3 , v096
	.byte	W05
	.byte		VOL   , 0*mus_like_a_rolling_stone_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+63
	.byte	W04
	.byte	W01
	.byte		        c_v+0
	.byte		N02   , Dn4 
	.byte	W02
	.byte	FINE

@**************** Track 6 (Midi-Chn.10) ****************@

mus_like_a_rolling_stone_6:
	.byte	KEYSH , mus_like_a_rolling_stone_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		VOL   , 110*mus_like_a_rolling_stone_mvl/mxv
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W24
	.byte	W01
	.byte		        Fs1 , v048
	.byte	W01
	.byte	W24
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte	W42
@ 001   ----------------------------------------
	.byte	W09
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v076
	.byte		N78   , Cs2 , v052
	.byte	W01
	.byte	W12
	.byte		N01   , Fs1 
	.byte		N01   , Ds2 , v044
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Fs1 , v060
	.byte		N01   , Ds2 , v032
	.byte	W01
	.byte	W01
	.byte	W05
	.byte		        Bn0 , v080
	.byte	W01
	.byte	W05
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Bn0 , v088
	.byte		N01   , Fs1 , v060
	.byte		N01   , Ds2 , v048
	.byte	W02
	.byte	W11
	.byte	W01
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v068
	.byte	W01
	.byte	W07
@ 002   ----------------------------------------
	.byte	W05
	.byte		        Fs1 , v060
	.byte		N01   , Ds2 , v044
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v068
	.byte	W02
	.byte	W05
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v052
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v096
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Fs1 , v064
	.byte		N01   , Ds2 , v040
	.byte	W02
	.byte	W05
	.byte		        Bn0 , v080
	.byte	W01
	.byte	W05
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte	W01
	.byte		        Ds2 , v060
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v084
	.byte		N01   , Fs1 , v064
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W05
	.byte		        Ds2 , v040
	.byte	W01
	.byte	W05
@ 003   ----------------------------------------
mus_like_a_rolling_stone_6_003:
	.byte	W01
	.byte		N01   , Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	PEND
	.byte	W12
	.byte		        As1 , v052
	.byte		N01   , Ds2 , v040
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v072
	.byte	W02
	.byte	W05
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N01   , Ds2 , v044
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v064
	.byte		N78   , An2 , v048
	.byte	W02
	.byte	W11
	.byte		N01   , Fs1 , v064
	.byte		N01   , Ds2 , v040
	.byte	W02
	.byte	W05
	.byte		        Bn0 , v084
	.byte	W01
	.byte	W06
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v060
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v096
	.byte		N01   , Fs1 , v064
	.byte		N01   , Ds2 , v044
	.byte	W01
	.byte	W02
@ 004   ----------------------------------------
	.byte	W10
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v060
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v064
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N78   , Cs2 , v064
	.byte		N01   , Fn2 , v052
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v064
	.byte		N01   , Ds2 , v032
	.byte	W02
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v064
	.byte		N01   , Ds2 , v036
	.byte	W01
	.byte	W05
	.byte		        Bn0 , v084
	.byte	W02
	.byte	W05
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v052
	.byte	W01
	.byte	W06
@ 005   ----------------------------------------
	.byte	W06
	.byte		        Bn0 , v096
	.byte		N01   , Fs1 , v064
	.byte		N01   , Fn2 , v044
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v044
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        As1 , v056
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N78   , Cs2 , v056
	.byte		N01   , Ds2 
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Ds2 , v044
	.byte	W01
	.byte		        Bn0 , v096
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W11
	.byte		        Fn2 
	.byte	W01
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v064
	.byte		N01   , Ds2 , v044
	.byte	W01
	.byte	W05
	.byte		        Bn0 , v092
	.byte	W02
	.byte	W03
@ 006   ----------------------------------------
	.byte	W02
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v052
	.byte	W01
	.byte	W06
	.byte		        Dn1 , v076
	.byte	W01
	.byte	W05
	.byte		        Fs1 , v064
	.byte		N01   , Ds2 , v040
	.byte	W01
	.byte	W06
	.byte		        Bn0 , v096
	.byte	W01
	.byte	W05
	.byte		        Dn1 
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v052
	.byte	W02
	.byte	W11
	.byte		        Bn0 , v096
	.byte		N01   , Fs1 , v064
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		N78   , Cs2 , v060
	.byte	W01
	.byte		N01   , Bn0 , v108
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v052
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v064
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N01   , Ds2 , v036
	.byte	W01
	.byte	W01
@ 007   ----------------------------------------
	.byte	W11
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v064
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v096
	.byte		N01   , Fs1 , v060
	.byte		N01   , Ds2 , v044
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte	W01
	.byte		        Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N01   , Ds2 , v036
	.byte	W01
	.byte	W11
	.byte		        Ds2 , v056
	.byte	W01
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v060
	.byte	W01
	.byte	W05
@ 008   ----------------------------------------
	.byte	W07
	.byte		        Fs1 
	.byte		N01   , Ds2 , v044
	.byte	W01
	.byte	W01
	.byte	W05
	.byte		        Bn0 , v084
	.byte	W01
	.byte	W05
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W02
	.byte	W11
	.byte		        Bn0 , v096
	.byte		N01   , Fs1 , v060
	.byte		N01   , Ds2 , v052
	.byte	W02
	.byte	W11
	.byte		        Fn2 , v048
	.byte	W01
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v064
	.byte		N01   , Ds2 , v040
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v064
	.byte	W02
	.byte	W05
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v060
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v060
	.byte		N01   , Ds2 , v032
	.byte	W01
	.byte	W09
@ 009   ----------------------------------------
	.byte	W03
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W02
	.byte	W11
	.byte		        Fs1 , v064
	.byte		N01   , Ds2 , v048
	.byte	W02
	.byte	W05
	.byte		        Bn0 , v080
	.byte	W01
	.byte	W05
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W02
	.byte	W11
	.byte		        Ds2 , v036
	.byte	W01
	.byte		        Bn0 , v088
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v060
	.byte	W01
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v060
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Fs1 
	.byte		N01   , Ds2 , v032
	.byte	W01
@ 010   ----------------------------------------
	.byte	W01
	.byte	W11
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v064
	.byte	W02
	.byte	W11
	.byte		        Fs1 , v060
	.byte		N01   , Ds2 , v032
	.byte	W02
	.byte	W12
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v096
	.byte		N01   , Fs1 , v064
	.byte		N01   , Fn2 , v060
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v036
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v064
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W06
	.byte		        Dn1 , v068
	.byte	W01
	.byte	W05
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W02
	.byte	W03
@ 011   ----------------------------------------
	.byte	W08
	.byte		        Bn0 , v088
	.byte		N01   , Fs1 , v064
	.byte		N01   , Ds2 , v036
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v060
	.byte	W02
	.byte	W12
	.byte		        Fs1 , v064
	.byte		N01   , Ds2 , v032
	.byte	W01
	.byte	W05
	.byte		        Bn0 , v084
	.byte	W02
	.byte	W04
	.byte		        Ds2 , v060
	.byte	W01
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N01   , Ds2 , v040
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N01   , Ds2 , v036
	.byte	W02
	.byte	W07
@ 012   ----------------------------------------
	.byte	W04
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W02
	.byte	W11
	.byte		        Fs1 , v060
	.byte	W01
	.byte		        Ds2 , v048
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v060
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v064
	.byte		N01   , Ds2 , v036
	.byte	W01
	.byte	W05
	.byte		        Bn0 , v084
	.byte	W02
	.byte	W05
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v088
	.byte		N01   , Fs1 , v060
	.byte		N01   , Fn2 , v056
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v064
	.byte	W02
	.byte	W11
@ 013   ----------------------------------------
	.byte		        Bn0 , v088
	.byte		N01   , Fs1 , v064
	.byte		N01   , Ds2 , v040
	.byte	W02
	.byte	W11
	.byte		        Fn2 , v060
	.byte	W01
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v052
	.byte		N01   , Ds2 , v036
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N01   , Ds2 , v032
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v096
	.byte		N01   , Fs1 , v064
	.byte		N01   , Ds2 , v044
	.byte	W02
	.byte	W11
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W01
	.byte	W02
@ 014   ----------------------------------------
	.byte	W09
	.byte		        Ds2 , v040
	.byte	W01
	.byte		        Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v060
	.byte	W01
	.byte	W05
	.byte		        Fn2 , v056
	.byte	W01
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N01   , Ds2 , v036
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v064
	.byte	W01
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Ds2 , v040
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v052
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Bn0 , v096
	.byte		N01   , Fs1 , v060
	.byte		N01   , Fn2 
	.byte	W02
	.byte	W06
@ 015   ----------------------------------------
	.byte	W06
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W11
	.byte		        As1 , v060
	.byte	W01
	.byte		        Ds2 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v072
	.byte	W02
	.byte	W05
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N78   , An2 , v048
	.byte	W01
	.byte	W12
	.byte		N01   , Bn0 , v092
	.byte		N01   , Fs1 , v064
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v060
	.byte	W02
	.byte	W11
	.byte		        Fs1 , v064
	.byte		N01   , Ds2 , v036
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v068
	.byte	W01
	.byte		        Ds2 , v056
	.byte	W01
	.byte	W10
@ 016   ----------------------------------------
	.byte	W01
	.byte		        Ds2 , v044
	.byte	W01
	.byte		        Bn0 , v096
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W11
	.byte	W01
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v052
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v064
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N78   , Cs2 , v060
	.byte	W01
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte		N01   , Ds2 , v052
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W02
	.byte	W11
	.byte		        Fs1 , v064
	.byte		N01   , Ds2 , v032
	.byte	W02
	.byte	W12
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v060
	.byte	W01
	.byte	W01
@ 017   ----------------------------------------
	.byte	W10
	.byte		        Ds2 , v048
	.byte	W01
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v064
	.byte		N01   , Ds2 , v060
	.byte	W01
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W01
	.byte	W05
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte		N78   , An2 , v048
	.byte	W02
	.byte	W11
	.byte		N01   , Fs1 , v060
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v060
	.byte	W02
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Ds2 , v040
	.byte	W01
	.byte	W05
@ 018   ----------------------------------------
	.byte	W07
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v068
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v060
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W11
	.byte	W01
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v064
	.byte	W01
	.byte	W12
	.byte		        Fs1 
	.byte		N01   , Ds2 , v044
	.byte	W02
	.byte	W05
	.byte		        Bn0 , v072
	.byte	W01
	.byte	W05
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v064
	.byte	W02
	.byte	W11
	.byte		        Fs1 , v060
	.byte	W01
	.byte		        Ds2 , v044
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W09
@ 019   ----------------------------------------
	.byte	W02
	.byte		        Ds2 , v044
	.byte	W01
	.byte		        Fs1 , v064
	.byte	W01
	.byte	W05
	.byte		        Dn1 
	.byte	W02
	.byte	W05
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v088
	.byte		N01   , Fs1 , v064
	.byte		N01   , Ds2 , v052
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        As1 , v052
	.byte		N78   , An2 
	.byte	W02
	.byte	W05
	.byte		N01   , Dn1 , v072
	.byte	W01
	.byte	W05
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N78   , Cs2 , v060
	.byte	W02
	.byte	W12
	.byte		N01   , Fs1 
	.byte		N01   , Ds2 
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
@ 020   ----------------------------------------
	.byte	W12
	.byte		        Fs1 , v064
	.byte		N01   , Ds2 , v036
	.byte	W01
	.byte	W06
	.byte		        Bn0 , v084
	.byte	W01
	.byte	W05
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v088
	.byte		N01   , Fs1 , v064
	.byte		N01   , Ds2 , v052
	.byte	W02
	.byte	W11
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W02
	.byte	W12
	.byte		        Bn0 , v088
	.byte		N01   , Fs1 , v060
	.byte		N01   , Ds2 , v040
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N01   , Ds2 , v040
	.byte	W01
	.byte	W04
@ 021   ----------------------------------------
	.byte	W08
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N01   , Ds2 , v040
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W02
	.byte	W11
	.byte		        Bn0 , v096
	.byte		N01   , Fs1 , v064
	.byte		N01   , Ds2 , v048
	.byte	W02
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W11
	.byte		        As1 , v048
	.byte		N01   , Ds2 , v056
	.byte	W02
	.byte	W12
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N78   , Cs2 , v060
	.byte	W01
	.byte	W08
@ 022   ----------------------------------------
	.byte	W04
	.byte		N01   , Fs1 , v056
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N01   , Ds2 , v048
	.byte	W02
	.byte	W11
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v096
	.byte		N01   , Fs1 , v060
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W11
	.byte		        Ds2 , v056
	.byte	W01
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N01   , Ds2 , v040
	.byte	W01
	.byte	W12
@ 023   ----------------------------------------
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v060
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v056
	.byte		N01   , Ds2 , v036
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W02
	.byte	W11
	.byte		        Fs1 , v064
	.byte		N01   , Ds2 , v040
	.byte	W02
	.byte	W05
	.byte		        Dn1 , v068
	.byte	W01
	.byte	W06
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v096
	.byte		N01   , Fs1 , v064
	.byte		N01   , Fn2 
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v052
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v088
	.byte		N01   , Fs1 , v060
	.byte		N01   , Ds2 
	.byte	W01
	.byte	W03
@ 024   ----------------------------------------
	.byte	W09
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N78   , Cs2 , v064
	.byte	W02
	.byte	W11
	.byte		N01   , Fs1 , v060
	.byte		N01   , Ds2 , v056
	.byte	W02
	.byte	W11
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte	W01
	.byte		        Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v064
	.byte		N01   , Ds2 , v028
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v068
	.byte	W02
	.byte	W05
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v064
	.byte		N01   , Ds2 , v036
	.byte	W01
	.byte	W11
	.byte	W01
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W07
@ 025   ----------------------------------------
	.byte	W05
	.byte		        Bn0 , v084
	.byte		N01   , Fs1 , v064
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v064
	.byte	W02
	.byte	W11
	.byte		        Fs1 , v056
	.byte	W01
	.byte		        Ds2 , v044
	.byte	W01
	.byte	W11
	.byte		        Ds2 , v056
	.byte	W01
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v064
	.byte		N01   , Ds2 , v052
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v068
	.byte	W02
	.byte	W05
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v096
	.byte		N01   , Fs1 , v064
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W11
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_like_a_rolling_stone_6_003
	.byte	W01
	.byte	W11
	.byte		N01   , Dn1 , v068
	.byte		N01   , Fs1 , v064
	.byte		N78   , An2 , v052
	.byte	W02
	.byte	W11
	.byte		N01   , Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N78   , Cs2 , v064
	.byte	W02
	.byte	W12
	.byte		N01   , Fs1 , v060
	.byte		N01   , Ds2 , v036
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N01   , Fn2 , v040
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v064
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Bn0 , v096
	.byte		N01   , Fs1 , v064
	.byte		N01   , Ds2 , v040
	.byte	W02
	.byte	W01
@ 027   ----------------------------------------
	.byte	W10
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v060
	.byte	W02
	.byte	W11
	.byte		        Bn0 , v088
	.byte		N01   , Fs1 , v060
	.byte	W01
	.byte		        Ds2 , v036
	.byte	W01
	.byte	W11
	.byte		        Fn2 , v044
	.byte	W01
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v084
	.byte		N01   , Fs1 , v060
	.byte		N01   , Fn2 , v048
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v064
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v088
	.byte		N01   , Fs1 , v064
	.byte		N01   , Fn2 
	.byte	W01
	.byte	W06
	.byte		        Bn1 , v060
	.byte	W01
	.byte	W05
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Bn1 , v048
	.byte		N01   , Fn2 , v072
	.byte	W01
	.byte	W01
	.byte	W05
@ 028   ----------------------------------------
	.byte	W06
	.byte		        Bn0 , v088
	.byte		N01   , Fs1 , v064
	.byte		N01   , Bn1 , v080
	.byte		N01   , Ds2 , v040
	.byte	W01
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v060
	.byte	W01
	.byte	W05
	.byte		        Gn1 , v040
	.byte	W02
	.byte	W04
	.byte		        As1 , v060
	.byte		N01   , Fn2 , v056
	.byte	W01
	.byte		        Gn1 , v084
	.byte	W01
	.byte	W05
	.byte		N01   
	.byte	W02
	.byte	W05
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v064
	.byte		N78   , Cs2 , v060
	.byte	W01
	.byte	W12
	.byte		N01   , Bn0 , v096
	.byte		N01   , Fs1 , v048
	.byte		N01   , Ds2 , v044
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v064
	.byte		N01   , Fn2 , v072
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v084
	.byte		N01   , Fs1 , v048
	.byte		N01   , Ds2 , v028
	.byte	W01
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v064
	.byte	W01
	.byte	W03
@ 029   ----------------------------------------
	.byte	W02
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v064
	.byte	W01
	.byte		        Ds2 , v056
	.byte	W01
	.byte	W11
	.byte		        Fn2 , v064
	.byte	W01
	.byte		        Bn0 , v096
	.byte		N01   , Fs1 , v052
	.byte	W01
	.byte	W11
	.byte		        Ds2 , v044
	.byte	W01
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v068
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v084
	.byte		N01   , Fs1 , v060
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v088
	.byte		N01   , Fs1 , v052
	.byte		N01   , Ds2 
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Bn0 , v088
	.byte		N01   , Fs1 , v052
	.byte		N01   , Ds2 , v048
	.byte	W02
@ 030   ----------------------------------------
	.byte	W05
	.byte		        Dn1 , v064
	.byte	W01
	.byte	W05
	.byte		        Ds2 , v060
	.byte	W01
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v060
	.byte		N01   , Ds2 , v052
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v084
	.byte		N01   , As1 , v056
	.byte		N01   , Ds2 
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v064
	.byte		N78   , Cs2 , v056
	.byte	W01
	.byte	W12
	.byte		N01   , Bn0 , v084
	.byte		N01   , Fs1 , v048
	.byte		N01   , Ds2 
	.byte	W02
	.byte	W11
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N78   , An2 , v056
	.byte	W02
	.byte	W04
@ 031   ----------------------------------------
	.byte	W07
	.byte		N01   , Ds2 
	.byte	W01
	.byte		        Bn0 , v084
	.byte		N01   , Fs1 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v068
	.byte	W01
	.byte	W05
	.byte		        Ds2 , v060
	.byte	W01
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v088
	.byte		N01   , Fs1 , v060
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        As1 
	.byte		N01   , Ds2 , v036
	.byte	W02
	.byte	W11
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v068
	.byte		N01   , Ds2 , v060
	.byte	W02
	.byte	W11
	.byte		        Bn0 , v096
	.byte		N01   , Fs1 , v048
	.byte		N01   , Ds2 , v060
	.byte	W02
	.byte	W08
@ 032   ----------------------------------------
	.byte	W04
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v088
	.byte		N01   , Fs1 , v060
	.byte		N01   , Ds2 , v044
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v072
	.byte	W02
	.byte	W05
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , As1 , v048
	.byte		N01   , Ds2 
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , As1 , v060
	.byte		N01   , Ds2 , v056
	.byte	W02
	.byte	W11
	.byte		        Bn0 , v084
	.byte		N01   , As1 , v060
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N78   , An2 , v048
	.byte	W02
	.byte	W11
	.byte		N01   , Ds2 
	.byte	W01
@ 033   ----------------------------------------
	.byte		        Bn0 , v080
	.byte		N01   , Fs1 , v052
	.byte	W01
	.byte	W11
	.byte		N78   , Cs2 , v064
	.byte	W01
	.byte		N01   , Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v060
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v072
	.byte	W02
	.byte	W05
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v076
	.byte		N01   , Ds2 , v052
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fn2 , v068
	.byte	W02
	.byte	W11
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W02
	.byte	W11
	.byte		        Fs1 
	.byte	W01
	.byte		        Ds2 
	.byte	W01
	.byte	W05
	.byte		        Bn0 , v088
	.byte	W01
	.byte	W05
	.byte		        Ds2 , v056
	.byte	W01
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte	W01
	.byte	W03
@ 034   ----------------------------------------
	.byte	W08
	.byte		        Ds2 , v048
	.byte	W01
	.byte		        Bn0 , v096
	.byte		N01   , As1 , v048
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v064
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v080
	.byte		N01   , Fs1 , v056
	.byte		N01   , Ds2 
	.byte	W01
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v072
	.byte	W01
	.byte	W05
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v076
	.byte		N01   , Fn2 , v064
	.byte	W02
	.byte	W11
	.byte		        Bn0 , v096
	.byte		N01   , As1 , v048
	.byte		N01   , Ds2 
	.byte	W02
	.byte	W11
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v068
	.byte	W01
	.byte		        Fn2 , v064
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v080
	.byte		N01   , As1 , v048
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v068
	.byte	W02
@ 035   ----------------------------------------
	.byte	W05
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte		N78   , Cs2 , v060
	.byte	W01
	.byte	W12
	.byte		N01   , Bn0 , v088
	.byte		N01   , Fs1 , v056
	.byte		N01   , Ds2 , v052
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N78   , An2 , v056
	.byte	W01
	.byte	W12
	.byte		N01   , Fs1 , v048
	.byte		N01   , Ds2 , v056
	.byte	W02
	.byte	W11
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v060
	.byte	W02
	.byte	W11
	.byte		        Bn0 , v096
	.byte		N01   , Fs1 , v056
	.byte		N01   , Fn2 , v060
	.byte	W02
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v064
	.byte	W01
	.byte	W11
@ 036   ----------------------------------------
	.byte	W01
	.byte		        Bn0 , v084
	.byte		N01   , Fs1 , v056
	.byte		N01   , Ds2 
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v068
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v088
	.byte		N01   , Fs1 , v056
	.byte		N01   , Ds2 , v044
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Bn0 , v084
	.byte		N01   , Fs1 , v056
	.byte		N01   , Ds2 
	.byte	W01
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v072
	.byte	W01
	.byte	W06
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v088
	.byte		N01   , Fs1 , v060
	.byte		N01   , Ds2 , v040
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 , v068
	.byte	W01
	.byte	W02
@ 037   ----------------------------------------
	.byte	W10
	.byte		        Bn0 , v084
	.byte		N01   , As1 , v060
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W06
	.byte		        Dn1 , v068
	.byte	W01
	.byte	W05
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v068
	.byte		N78   , Cs2 , v060
	.byte	W01
	.byte	W12
	.byte		N01   , Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Ds2 , v052
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N78   , An2 , v056
	.byte	W02
	.byte	W12
	.byte		N01   , Fs1 , v060
	.byte		N01   , Ds2 
	.byte	W01
	.byte	W11
	.byte		        Ds2 , v056
	.byte	W01
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Ds2 
	.byte	W01
	.byte	W06
@ 038   ----------------------------------------
	.byte	W05
	.byte	W01
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fn2 
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v084
	.byte		N01   , Fs1 , v056
	.byte		N01   , Ds2 
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v060
	.byte	W02
	.byte	W11
	.byte		        Bn0 , v092
	.byte		N01   , Fs1 , v056
	.byte		N01   , Ds2 , v052
	.byte	W02
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N78   , An2 , v056
	.byte	W01
	.byte	W12
	.byte		N01   , Fs1 , v060
	.byte		N01   , Ds2 , v032
	.byte	W01
	.byte	W02
	.byte		VOL   , 103*mus_like_a_rolling_stone_mvl/mxv
	.byte	W03
	.byte		N01   , Bn0 , v076
	.byte	W02
	.byte	W05
	.byte		        Bn0 , v104
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v060
	.byte	W01
	.byte	W04
	.byte		VOL   , 96*mus_like_a_rolling_stone_mvl/mxv
	.byte	W06
@ 039   ----------------------------------------
	.byte	W02
	.byte		N01   , Bn0 , v096
	.byte		N01   , Fs1 , v060
	.byte		N01   , Fn2 , v064
	.byte	W01
	.byte	W06
	.byte		VOL   , 89*mus_like_a_rolling_stone_mvl/mxv
	.byte	W06
	.byte		N01   , Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W01
	.byte	W05
	.byte		VOL   , 82*mus_like_a_rolling_stone_mvl/mxv
	.byte	W06
	.byte		N01   , Bn0 , v084
	.byte		N01   , As1 , v048
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W01
	.byte	W05
	.byte		        Dn1 , v072
	.byte	W01
	.byte	W02
	.byte		VOL   , 75*mus_like_a_rolling_stone_mvl/mxv
	.byte	W03
	.byte		N01   , Bn0 , v104
	.byte		N01   , Fs1 , v068
	.byte		N01   , Ds2 , v060
	.byte	W02
	.byte	W10
	.byte		VOL   , 68*mus_like_a_rolling_stone_mvl/mxv
	.byte	W01
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte		        Bn0 , v088
	.byte		N01   , Fs1 , v056
	.byte	W01
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N01   , Fs1 , v072
	.byte		N78   , Cs2 , v060
	.byte	W01
	.byte	W03
	.byte		VOL   , 61*mus_like_a_rolling_stone_mvl/mxv
	.byte	W09
	.byte		N01   , Fs1 , v048
	.byte		N01   , Ds2 
	.byte	W01
	.byte	W05
	.byte		VOL   , 55*mus_like_a_rolling_stone_mvl/mxv
	.byte	W07
	.byte		N01   , Bn0 , v108
	.byte		N01   , Fs1 , v072
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W01
@ 040   ----------------------------------------
	.byte	W11
	.byte		        Bn0 , v088
	.byte		N01   , Fs1 , v052
	.byte		N01   , Fn2 , v072
	.byte	W01
	.byte	W01
	.byte		VOL   , 48*mus_like_a_rolling_stone_mvl/mxv
	.byte	W11
	.byte		N01   , Dn1 , v096
	.byte		N01   , Fs1 , v076
	.byte		N01   , Ds2 , v052
	.byte	W02
	.byte	W03
	.byte		VOL   , 41*mus_like_a_rolling_stone_mvl/mxv
	.byte	W08
	.byte		N01   , Bn0 , v076
	.byte		N01   , As1 , v048
	.byte		N01   , Ds2 , v056
	.byte	W02
	.byte	W08
	.byte		VOL   , 34*mus_like_a_rolling_stone_mvl/mxv
	.byte	W03
	.byte	W01
	.byte		N01   , Bn0 , v108
	.byte		N01   , Fs1 , v068
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W12
	.byte		        Bn0 , v088
	.byte		N01   , As1 , v040
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte	W02
	.byte		VOL   , 27*mus_like_a_rolling_stone_mvl/mxv
	.byte	W10
	.byte		N01   , Dn1 , v096
	.byte		N01   , As1 , v056
	.byte		N68   , Cs2 , v060
	.byte	W01
	.byte	W07
	.byte		VOL   , 20*mus_like_a_rolling_stone_mvl/mxv
	.byte	W05
	.byte		N01   , Bn0 , v084
	.byte		N01   , As1 , v032
	.byte		N01   , Ds2 , v052
	.byte	W01
	.byte	W05
@ 041   ----------------------------------------
	.byte	W01
	.byte		        Dn1 , v072
	.byte	W01
	.byte	W04
	.byte		VOL   , 13*mus_like_a_rolling_stone_mvl/mxv
	.byte	W01
	.byte		N01   , Bn0 , v108
	.byte		N01   , As1 , v052
	.byte		N01   , Ds2 , v056
	.byte	W01
	.byte	W01
	.byte	W11
	.byte		        Bn0 , v096
	.byte		N01   , As1 , v040
	.byte		N01   , Ds2 , v056
	.byte	W02
	.byte	W03
	.byte		VOL   , 6*mus_like_a_rolling_stone_mvl/mxv
	.byte	W08
	.byte		N01   , Dn1 , v096
	.byte		N01   , As1 , v060
	.byte		N16   , An2 , v052
	.byte	W02
	.byte	W05
	.byte		VOL   , 0*mus_like_a_rolling_stone_mvl/mxv
	.byte	W06
	.byte		N01   , As1 , v044
	.byte		N01   , Ds2 , v048
	.byte	W01
	.byte		        Bn0 , v088
	.byte	W01
	.byte	W01
	.byte	FINE

@******************************************************@
	.align	2

mus_like_a_rolling_stone:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_like_a_rolling_stone_pri	@ Priority
	.byte	mus_like_a_rolling_stone_rev	@ Reverb.

	.word	mus_like_a_rolling_stone_grp

	.word	mus_like_a_rolling_stone_1
	.word	mus_like_a_rolling_stone_2
	.word	mus_like_a_rolling_stone_3
	.word	mus_like_a_rolling_stone_4
	.word	mus_like_a_rolling_stone_5
	.word	mus_like_a_rolling_stone_6

	.end
