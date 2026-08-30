	.include "MPlayDef.s"

	.equ	mus_paper_moon_grp, voicegroup_paper_moon
	.equ	mus_paper_moon_pri, 0
	.equ	mus_paper_moon_rev, reverb_set+50
	.equ	mus_paper_moon_mvl, 100
	.equ	mus_paper_moon_key, 0
	.equ	mus_paper_moon_tbs, 1
	.equ	mus_paper_moon_exg, 1
	.equ	mus_paper_moon_cmp, 1

	.section .rodata
	.global	mus_paper_moon
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_paper_moon_1:
	.byte	KEYSH , mus_paper_moon_key+0
mus_paper_moon_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 160*mus_paper_moon_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_paper_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N23   , Gn0 , v088
	.byte	W24
	.byte		        Gn0 , v092
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
@ 001   ----------------------------------------
	.byte		        Gn0 , v096
	.byte	W24
	.byte		        Gn0 , v088
	.byte	W24
	.byte		        Gn0 , v096
	.byte	W24
	.byte		N23   
	.byte	W24
@ 002   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N11   , Gn1 , v108
	.byte	W12
	.byte		        Gn1 , v100
	.byte	W12
	.byte		        Gn1 , v096
	.byte	W12
	.byte		        Gn1 , v088
	.byte	W12
	.byte		        Gn1 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 003   ----------------------------------------
	.byte		        Gn0 , v084
	.byte	W12
	.byte		N11   , Gn1 , v108
	.byte	W12
	.byte		        Gn1 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn1 , v100
	.byte	W12
	.byte		        Gn1 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   , Gn1 , v088
	.byte	W12
@ 004   ----------------------------------------
	.byte		N11   , Fn1 
	.byte	W12
	.byte		        Fn1 , v100
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn1 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		N12   , Fn1 , v088
	.byte	W12
@ 005   ----------------------------------------
	.byte		N11   , Dn1 
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		N12   , Dn1 , v096
	.byte	W12
@ 006   ----------------------------------------
	.byte		N11   , Ds1 , v088
	.byte	W12
	.byte		        Ds1 , v100
	.byte	W12
	.byte		        Ds1 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Ds1 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Ds1 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
@ 007   ----------------------------------------
	.byte		        Ds1 , v084
	.byte	W12
	.byte		        Ds1 , v104
	.byte	W12
	.byte		        Ds1 , v096
	.byte	W12
	.byte		        Ds1 , v092
	.byte	W12
	.byte		        Ds1 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   , Ds1 , v092
	.byte	W12
@ 008   ----------------------------------------
	.byte		N24   , Fn1 , v080
	.byte	W96
@ 009   ----------------------------------------
	.byte		        Fn1 , v084
	.byte	W72
	.byte		        Fn1 , v108
	.byte	W24
@ 010   ----------------------------------------
	.byte		N12   , Gn0 , v080
	.byte	W36
	.byte		N24   , Gn2 , v092
	.byte	W60
@ 011   ----------------------------------------
	.byte		N12   , Ds1 , v084
	.byte	W24
	.byte		        Ds2 , v096
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		        Ds2 
	.byte	W24
@ 012   ----------------------------------------
	.byte		        Dn1 , v084
	.byte	W36
	.byte		        An1 
	.byte	W12
	.byte		        Fs2 , v092
	.byte	W48
@ 013   ----------------------------------------
	.byte		        Fs1 , v088
	.byte	W24
	.byte		        Fs2 
	.byte	W24
	.byte		        An2 , v100
	.byte	W24
	.byte		        Fs2 , v092
	.byte	W24
@ 014   ----------------------------------------
	.byte		        Fs1 , v080
	.byte	W72
	.byte		        Fs2 , v092
	.byte	W12
	.byte		        An2 , v088
	.byte	W12
@ 015   ----------------------------------------
	.byte	W60
	.byte		        Dn2 , v096
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 , v084
	.byte	W12
@ 016   ----------------------------------------
	.byte		        As0 , v080
	.byte	W24
	.byte		        Fn2 , v100
	.byte	W12
	.byte		        As1 , v096
	.byte	W36
	.byte		        Fn2 
	.byte	W24
@ 017   ----------------------------------------
	.byte		        Fn1 , v084
	.byte	W72
	.byte		        Fn2 , v092
	.byte	W24
@ 018   ----------------------------------------
	.byte		        Gn0 , v080
	.byte	W36
	.byte		N24   , Gn2 , v096
	.byte	W60
@ 019   ----------------------------------------
	.byte		N12   , Ds1 , v080
	.byte	W24
	.byte		        Ds2 , v096
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		        Ds2 , v092
	.byte	W24
@ 020   ----------------------------------------
	.byte		        Dn1 , v080
	.byte	W36
	.byte		        An1 , v088
	.byte	W12
	.byte		        Fs2 , v096
	.byte	W48
@ 021   ----------------------------------------
	.byte		        Fs1 , v084
	.byte	W24
	.byte		        Fs2 , v100
	.byte	W24
	.byte		        An2 , v096
	.byte	W24
	.byte		        Fs2 , v092
	.byte	W24
@ 022   ----------------------------------------
	.byte		        Fs1 , v080
	.byte	W48
	.byte		        An2 , v096
	.byte	W12
	.byte		        Cn2 , v084
	.byte	W24
	.byte		        An2 , v092
	.byte	W12
@ 023   ----------------------------------------
	.byte	W72
	.byte		        Dn2 , v096
	.byte	W24
@ 024   ----------------------------------------
	.byte		N23   , Ds1 , v092
	.byte	W24
	.byte		N12   , Ds1 , v084
	.byte	W12
	.byte		N24   , As1 , v100
	.byte	W24
	.byte		N12   , Ds1 , v084
	.byte	W12
	.byte		        As1 , v100
	.byte	W24
@ 025   ----------------------------------------
	.byte		N23   , Dn1 , v104
	.byte	W24
	.byte		N12   , Dn1 , v092
	.byte	W12
	.byte		N24   , An1 , v096
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v080
	.byte	W12
@ 026   ----------------------------------------
	.byte		        Ds1 , v104
	.byte	W12
	.byte		N11   , As1 , v112
	.byte	W12
	.byte		N12   , As1 , v104
	.byte	W24
	.byte		N11   , As1 , v108
	.byte	W12
	.byte		N12   , As1 , v104
	.byte	W12
	.byte		        Ds1 , v088
	.byte	W12
	.byte		        As1 , v108
	.byte	W12
@ 027   ----------------------------------------
	.byte		        Ds1 
	.byte	W12
	.byte		N11   , As1 , v112
	.byte	W12
	.byte		N12   , As1 , v108
	.byte	W12
	.byte		        Ds1 , v084
	.byte	W12
	.byte		N11   , As1 , v108
	.byte	W12
	.byte		N12   , As1 , v100
	.byte	W24
	.byte		        As1 , v112
	.byte	W12
@ 028   ----------------------------------------
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N23   , An1 , v112
	.byte	W24
	.byte		N24   , An1 , v104
	.byte	W24
	.byte		N12   , Dn1 , v092
	.byte	W24
	.byte		N12   
	.byte	W12
@ 029   ----------------------------------------
	.byte		        Gn0 , v116
	.byte	W12
	.byte		N11   , Dn2 
	.byte	W12
	.byte		N12   , Dn2 , v104
	.byte	W24
	.byte		N11   , Dn2 , v108
	.byte	W12
	.byte		N12   , Dn2 , v104
	.byte	W12
	.byte		        Gn1 , v096
	.byte	W12
	.byte		        Dn2 , v108
	.byte	W12
@ 030   ----------------------------------------
	.byte		        Ds1 , v088
	.byte	W48
	.byte		        As1 , v096
	.byte	W12
	.byte		        Ds2 , v108
	.byte	W24
	.byte		        An2 , v104
	.byte	W12
@ 031   ----------------------------------------
	.byte	W72
	.byte		        Cn2 , v116
	.byte	W24
@ 032   ----------------------------------------
	.byte		        Dn1 , v092
	.byte	W60
	.byte		        Dn2 , v100
	.byte	W24
	.byte		        Gn2 , v104
	.byte	W12
@ 033   ----------------------------------------
	.byte	W36
	.byte		        An2 , v108
	.byte	W60
@ 034   ----------------------------------------
	.byte		        Gn0 
	.byte	W24
	.byte		N11   , Gn1 
	.byte	W12
	.byte		        Gn1 , v104
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn1 , v092
	.byte	W12
	.byte		        Gn1 , v108
	.byte	W12
	.byte		N12   , Gn1 , v092
	.byte	W12
@ 035   ----------------------------------------
	.byte		        As0 , v104
	.byte	W12
	.byte		N11   , As1 , v100
	.byte	W12
	.byte		        As1 , v108
	.byte	W12
	.byte		        As1 , v100
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        As1 , v088
	.byte	W12
	.byte		        As1 , v108
	.byte	W12
	.byte		N12   , As1 , v092
	.byte	W12
@ 036   ----------------------------------------
	.byte		        Ds1 
	.byte	W24
	.byte		N11   , Ds1 , v116
	.byte	W12
	.byte		        Ds1 , v100
	.byte	W12
	.byte		N12   , Ds1 , v104
	.byte	W24
	.byte		        Ds1 , v108
	.byte	W24
@ 037   ----------------------------------------
	.byte		        Dn1 , v100
	.byte	W24
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte		        Dn1 , v104
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N12   , Dn1 , v088
	.byte	W12
@ 038   ----------------------------------------
	.byte		        Gn0 , v104
	.byte	W24
	.byte		N11   , Gn1 , v108
	.byte	W12
	.byte		        Gn1 , v104
	.byte	W12
	.byte		N12   , Gn1 , v100
	.byte	W24
	.byte		        Gn1 , v108
	.byte	W24
@ 039   ----------------------------------------
	.byte		        Ds1 , v092
	.byte	W24
	.byte		N11   , Ds1 , v112
	.byte	W12
	.byte		        Ds1 , v104
	.byte	W12
	.byte		        Ds1 , v100
	.byte	W12
	.byte		        Ds1 , v092
	.byte	W12
	.byte		        Ds1 , v104
	.byte	W12
	.byte		N12   , Ds1 , v088
	.byte	W12
@ 040   ----------------------------------------
	.byte		        Dn1 , v092
	.byte	W24
	.byte		N11   , Dn1 , v112
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
@ 041   ----------------------------------------
	.byte		        Fs1 , v104
	.byte	W24
	.byte		N11   , Fs1 , v108
	.byte	W12
	.byte		        Fs1 , v100
	.byte	W12
	.byte		N12   , Fs1 , v092
	.byte	W24
	.byte		        Fs1 , v108
	.byte	W24
@ 042   ----------------------------------------
	.byte		        Gn0 
	.byte	W24
	.byte		N11   , Gn1 
	.byte	W12
	.byte		        Gn1 , v104
	.byte	W12
	.byte		        Gn1 , v108
	.byte	W12
	.byte		        Gn1 , v096
	.byte	W12
	.byte		        Gn1 , v108
	.byte	W12
	.byte		N12   , Gn1 , v092
	.byte	W12
@ 043   ----------------------------------------
	.byte		        As0 , v100
	.byte	W12
	.byte		N11   , As1 , v104
	.byte	W12
	.byte		        As1 , v112
	.byte	W12
	.byte		        As1 , v104
	.byte	W12
	.byte		        As1 , v096
	.byte	W12
	.byte		        As1 , v092
	.byte	W12
	.byte		        As1 , v112
	.byte	W12
	.byte		N12   , As1 , v088
	.byte	W12
@ 044   ----------------------------------------
	.byte		        Ds1 , v092
	.byte	W24
	.byte		N11   , Ds1 , v112
	.byte	W12
	.byte		        Ds1 , v104
	.byte	W12
	.byte		        Ds1 , v100
	.byte	W12
	.byte		        Ds1 , v092
	.byte	W12
	.byte		        Ds1 , v112
	.byte	W12
	.byte		N12   , Ds1 , v092
	.byte	W12
@ 045   ----------------------------------------
	.byte		        Dn1 , v100
	.byte	W24
	.byte		N11   , Dn1 , v116
	.byte	W12
	.byte		        Dn1 , v104
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Dn1 , v108
	.byte	W24
@ 046   ----------------------------------------
	.byte		        Gn0 , v104
	.byte	W24
	.byte		N11   , Gn1 , v108
	.byte	W12
	.byte		        Gn1 , v104
	.byte	W12
	.byte		        Gn1 , v100
	.byte	W12
	.byte		        Gn1 , v088
	.byte	W12
	.byte		        Gn1 , v112
	.byte	W12
	.byte		N12   , Gn1 , v088
	.byte	W12
@ 047   ----------------------------------------
	.byte		        Dn1 , v096
	.byte	W24
	.byte		N11   , Dn1 , v108
	.byte	W12
	.byte		        Dn1 , v104
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N12   , Dn1 , v096
	.byte	W12
@ 048   ----------------------------------------
	.byte		N11   , Fs1 , v108
	.byte	W12
	.byte		        Fs1 , v104
	.byte	W12
	.byte		        Fs1 , v112
	.byte	W12
	.byte		        Fs1 , v108
	.byte	W12
	.byte		        Fs1 , v088
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs1 , v112
	.byte	W12
	.byte		N12   , Fs1 , v092
	.byte	W12
@ 049   ----------------------------------------
	.byte		        Gn0 , v112
	.byte	W24
	.byte		N11   , Gn1 , v108
	.byte	W12
	.byte		        Gn1 , v104
	.byte	W12
	.byte		N12   , Gn1 , v100
	.byte	W24
	.byte		        Gn1 , v112
	.byte	W24
@ 050   ----------------------------------------
	.byte		        Gn0 , v100
	.byte	W24
	.byte		N11   , Gn1 , v112
	.byte	W12
	.byte		        Gn1 , v104
	.byte	W12
	.byte		        Gn1 , v100
	.byte	W12
	.byte		        Gn1 , v088
	.byte	W12
	.byte		N12   , Gn1 , v108
	.byte	W24
@ 051   ----------------------------------------
	.byte		        Fs1 , v100
	.byte	W24
	.byte		N11   , Fs1 , v112
	.byte	W12
	.byte		        Fs1 , v104
	.byte	W12
	.byte		        Fs1 , v088
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs1 , v108
	.byte	W12
	.byte		N12   , Fs1 , v092
	.byte	W12
@ 052   ----------------------------------------
	.byte		        Ds1 , v108
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Ds1 , v100
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Ds1 , v088
	.byte	W12
	.byte		N12   , Ds1 , v108
	.byte	W24
@ 053   ----------------------------------------
	.byte		N11   , Dn1 , v092
	.byte	W12
	.byte		N36   , Dn1 , v100
	.byte	W36
	.byte		N11   , Ds1 , v104
	.byte	W12
	.byte		N36   
	.byte	W36
@ 054   ----------------------------------------
	.byte		N12   , Dn1 
	.byte	W24
	.byte		N11   , Dn1 , v116
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W12
	.byte		        Dn1 , v088
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W12
	.byte		        Dn1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
@ 055   ----------------------------------------
	.byte		N24   , Gn0 , v104
	.byte	W24
	.byte		N11   , Gn1 , v100
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Dn2 , v108
	.byte	W36
	.byte		N12   
	.byte	W12
@ 056   ----------------------------------------
	.byte	W12
	.byte		N24   , Fn2 
	.byte	W36
	.byte		        Fn2 , v112
	.byte	W24
	.byte		N12   , As1 , v088
	.byte	W12
	.byte		        Fn2 , v112
	.byte	W12
@ 057   ----------------------------------------
	.byte		N23   , Ds1 , v092
	.byte	W24
	.byte		N12   , Ds1 , v100
	.byte	W24
	.byte		N24   , As1 , v116
	.byte	W36
	.byte		N12   , As1 , v108
	.byte	W12
@ 058   ----------------------------------------
	.byte	W12
	.byte		N24   , An1 , v112
	.byte	W24
	.byte		N12   , Dn1 , v092
	.byte	W12
	.byte		N24   , An1 , v112
	.byte	W12
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        An1 , v108
	.byte	W12
@ 059   ----------------------------------------
	.byte		N24   , Gn0 , v092
	.byte	W24
	.byte		N12   , Gn1 , v100
	.byte	W24
	.byte		N24   , Dn2 , v112
	.byte	W36
	.byte		N12   
	.byte	W12
@ 060   ----------------------------------------
	.byte	W12
	.byte		N24   , An1 , v108
	.byte	W24
	.byte		N12   , Dn1 , v092
	.byte	W12
	.byte		N24   , An1 , v112
	.byte	W24
	.byte		N12   , Dn1 , v088
	.byte	W12
	.byte		        An1 , v112
	.byte	W12
@ 061   ----------------------------------------
	.byte		N96   , Gn0 
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte		N36   , Fs1 , v127
	.byte	W48
	.byte		N48   , Fs1 , v108
	.byte	W48
@ 064   ----------------------------------------
	.byte		N24   , Gn0 , v116
	.byte	W24
	.byte	GOTO
	 .word	mus_paper_moon_1_B1
mus_paper_moon_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_paper_moon_2:
	.byte	KEYSH , mus_paper_moon_key+0
mus_paper_moon_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 48*mus_paper_moon_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N23   , Gn2 , v052
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
@ 001   ----------------------------------------
	.byte		        Gn2 , v056
	.byte	W24
	.byte		        Gn2 , v052
	.byte	W24
	.byte		        Gn2 , v056
	.byte	W24
	.byte		N24   
	.byte	W24
@ 002   ----------------------------------------
	.byte	W12
	.byte		N11   , Gn2 , v060
	.byte	W12
	.byte		N12   , Gn2 , v056
	.byte	W24
	.byte		        Gn2 , v052
	.byte	W24
	.byte		N12   
	.byte	W24
@ 003   ----------------------------------------
	.byte		        Gn2 , v048
	.byte		N44   , As2 , v060, gtp3
	.byte	W48
	.byte		N12   , Gn2 , v056
	.byte		N48   , As2 , v052
	.byte	W48
@ 004   ----------------------------------------
	.byte		N01   , Fn2 
	.byte		N01   
	.byte	W72
	.byte		N12   
	.byte	W24
@ 005   ----------------------------------------
	.byte		        Dn2 
	.byte		N44   , Fs2 , v056, gtp3
	.byte	W48
	.byte		N12   , Dn2 , v052
	.byte		N36   , Fs2 
	.byte	W36
	.byte		N12   , Dn2 , v056
	.byte	W12
@ 006   ----------------------------------------
	.byte	W12
	.byte		N11   , Ds2 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Ds2 , v052
	.byte	W24
	.byte		        Ds2 , v056
	.byte	W24
@ 007   ----------------------------------------
	.byte		        Ds2 , v048
	.byte		N44   , As2 , v060, gtp3
	.byte	W48
	.byte		N12   , Ds2 , v056
	.byte		N48   , As2 , v052
	.byte	W48
@ 008   ----------------------------------------
	.byte		N92   , Fn2 , v052, gtp3
	.byte	W96
@ 009   ----------------------------------------
	.byte		N72   , Cn2 
	.byte		N72   , Fn2 
	.byte	W96
@ 010   ----------------------------------------
	.byte		N36   , As3 
	.byte	W36
	.byte		N11   , Gn3 , v044
	.byte	W12
	.byte		N48   , Gn3 , v052
	.byte	W48
@ 011   ----------------------------------------
	.byte		N24   , Ds3 
	.byte	W48
	.byte		N23   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 012   ----------------------------------------
	.byte		N36   , Fs3 , v056
	.byte		N36   , Cn4 
	.byte	W48
	.byte		N44   , Fs3 , v056, gtp3
	.byte		N48   , An3 
	.byte	W48
@ 013   ----------------------------------------
	.byte		N23   , Fs3 , v052
	.byte	W24
	.byte		        Fs3 , v048
	.byte	W24
	.byte		N24   , Fs3 , v052
	.byte	W24
	.byte		N23   , Ds3 
	.byte	W24
@ 014   ----------------------------------------
	.byte		N72   , Cn3 
	.byte		N72   , Ds3 
	.byte	W84
	.byte		N60   , Cn3 , v056
	.byte	W12
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte		N23   , Gn3 , v052
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N32   , As3 , v052, gtp3
	.byte	W36
	.byte		N24   
	.byte	W24
@ 017   ----------------------------------------
	.byte		N72   , Cn3 , v048
	.byte		N72   , Fn3 
	.byte	W96
@ 018   ----------------------------------------
	.byte		N36   , As3 , v052
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N48   , Gn3 , v048
	.byte	W48
@ 019   ----------------------------------------
	.byte		N24   , Fn3 , v052
	.byte	W48
	.byte		N23   , Fn3 , v056
	.byte	W24
	.byte		N24   , Fn3 , v052
	.byte	W24
@ 020   ----------------------------------------
	.byte		N36   , Fs3 
	.byte		N36   , Cn4 
	.byte	W48
	.byte		N44   , Fs3 , v052, gtp3
	.byte		N48   , An3 
	.byte	W48
@ 021   ----------------------------------------
	.byte		N23   , Fs3 , v048
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N23   , Ds3 , v052
	.byte	W24
@ 022   ----------------------------------------
	.byte		N44   , Cn3 , v048, gtp3
	.byte		N48   , Ds3 
	.byte	W48
	.byte		N11   , Cn3 , v052
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N84   
	.byte	W12
@ 023   ----------------------------------------
	.byte	W72
	.byte		N23   , As3 , v056
	.byte	W24
@ 024   ----------------------------------------
	.byte		N24   , Ds2 , v052
	.byte		N23   , As3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N24   , Ds2 , v056
	.byte		N23   , As3 , v052
	.byte	W24
	.byte		N24   
	.byte	W36
@ 025   ----------------------------------------
	.byte		        Dn2 , v060
	.byte		N24   , As3 , v048
	.byte	W24
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N24   , Dn2 , v056
	.byte		N32   , Gn3 , v056, gtp3
	.byte	W36
	.byte		N12   , Dn2 
	.byte		N11   , Gn3 , v052
	.byte	W12
	.byte		N60   
	.byte	W12
@ 026   ----------------------------------------
	.byte	W72
	.byte		N23   , As3 
	.byte	W24
@ 027   ----------------------------------------
	.byte		N11   , Ds2 , v060
	.byte		N11   , As3 , v056
	.byte	W12
	.byte		N12   , Ds2 , v064
	.byte		N23   , As3 , v056
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N12   , Fn2 
	.byte		N23   , As3 , v060
	.byte	W24
	.byte		N12   , Ds2 
	.byte		N36   , As3 , v056
	.byte	W12
@ 028   ----------------------------------------
	.byte	W60
	.byte		N24   , Cn3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N36   , Dn3 , v060
	.byte		N36   , Gn3 
	.byte	W12
@ 029   ----------------------------------------
mus_paper_moon_2_029:
	.byte	W72
	.byte		N24   , As3 , v052
	.byte		N23   , Ds4 
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
	.byte		N36   , An3 
	.byte		N36   , Ds4 
	.byte	W48
	.byte		N12   , An3 
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N24   , Gn3 , v056
	.byte		N23   , Ds4 
	.byte	W24
	.byte		N24   , As3 , v060
	.byte		N24   , Ds4 
	.byte	W12
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_paper_moon_2_029
@ 032   ----------------------------------------
	.byte		N48   , An3 , v056
	.byte		N48   , Ds4 
	.byte	W60
	.byte		N24   , An3 , v052
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N44   , Cn4 , v060, gtp3
	.byte		N44   , Fs4 , v060, gtp3
	.byte	W12
@ 033   ----------------------------------------
	.byte	W36
	.byte		N48   , Cn4 , v056
	.byte		N48   , Fs4 
	.byte	W60
@ 034   ----------------------------------------
	.byte		N12   , Gn2 , v060
	.byte		N24   , An3 , v064
	.byte	W24
	.byte		N11   , Gn2 , v060
	.byte		N12   , As3 , v072
	.byte	W12
	.byte		        Gn2 , v060
	.byte		N24   , An3 , v068
	.byte	W24
	.byte		        As3 , v072
	.byte	W24
	.byte		        Cn4 , v076
	.byte	W12
@ 035   ----------------------------------------
mus_paper_moon_2_035:
	.byte	W12
	.byte		N24   , As3 , v068
	.byte	W24
	.byte		N12   , As2 , v056
	.byte		N24   , An3 , v068
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		N36   , Fn3 
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
	.byte	W72
	.byte		N12   , Ds2 , v060
	.byte		N24   , Fn3 , v064
	.byte	W24
@ 037   ----------------------------------------
	.byte		N12   , Dn2 , v056
	.byte		N24   , Gn3 , v072
	.byte	W24
	.byte		N11   , Dn2 , v060
	.byte		N12   , Fn3 , v068
	.byte	W12
	.byte		        Dn2 , v060
	.byte		N24   , Ds3 , v068
	.byte	W24
	.byte		        Fn3 , v072
	.byte	W24
	.byte		        Dn3 , v064
	.byte	W12
@ 038   ----------------------------------------
	.byte	W72
	.byte		N12   , Gn2 , v060
	.byte		N24   , Dn3 , v068
	.byte	W24
@ 039   ----------------------------------------
	.byte		N12   , Ds2 , v052
	.byte		N24   , Ds3 , v072
	.byte	W24
	.byte		N11   , Ds2 , v064
	.byte		N12   , Gn3 , v076
	.byte	W12
	.byte		        Ds2 , v060
	.byte		N24   , Fn3 , v068
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		        Dn3 , v064
	.byte	W12
@ 040   ----------------------------------------
	.byte	W72
	.byte		N12   , Dn2 , v060
	.byte		N24   , Dn3 , v064
	.byte	W24
@ 041   ----------------------------------------
	.byte		N12   , Fs2 , v056
	.byte		N32   , An3 , v072, gtp3
	.byte	W36
	.byte		N12   , Fs2 , v056
	.byte		N32   , An3 , v068, gtp3
	.byte	W36
	.byte		N12   , Fs2 , v060
	.byte		N48   , An3 , v068
	.byte	W24
@ 042   ----------------------------------------
	.byte		N12   , Gn2 , v060
	.byte	W24
	.byte		N11   
	.byte		N12   , As3 , v076
	.byte	W12
	.byte		        Gn2 , v060
	.byte		N24   , An3 , v068
	.byte	W24
	.byte		        As3 , v072
	.byte	W36
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_paper_moon_2_035
@ 044   ----------------------------------------
	.byte	W60
	.byte		N24   , As3 , v064
	.byte	W24
	.byte		N48   , An3 , v068
	.byte	W12
@ 045   ----------------------------------------
	.byte	W72
	.byte		N12   , Dn2 , v060
	.byte		N23   , An3 , v064
	.byte	W24
@ 046   ----------------------------------------
	.byte		N12   , Gn2 , v060
	.byte		N36   , An3 , v068
	.byte	W60
	.byte		N24   , Gn3 , v064
	.byte	W24
	.byte		        As3 , v076
	.byte	W12
@ 047   ----------------------------------------
	.byte	W60
	.byte		N23   , Ds4 , v064
	.byte		N23   , Fs4 
	.byte	W24
	.byte		N24   , Ds4 , v072
	.byte		N23   , Fs4 
	.byte	W12
@ 048   ----------------------------------------
	.byte	W12
	.byte		N24   , Cn4 , v064
	.byte		N23   , Fs4 
	.byte	W24
	.byte		N12   , Fs2 , v060
	.byte		N23   , Fs4 , v068
	.byte	W24
	.byte		N24   , Cn4 , v072
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N48   , Gn3 , v068
	.byte	W12
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte		N12   , Gn2 , v056
	.byte		N24   , Gn3 , v064
	.byte	W24
	.byte		N11   , Gn2 , v060
	.byte		N12   , As3 , v076
	.byte	W12
	.byte		        Gn2 , v060
	.byte		N24   , Gn3 , v068
	.byte	W24
	.byte		N36   , Fn3 
	.byte	W36
@ 051   ----------------------------------------
	.byte		N12   , Fs2 , v056
	.byte		N24   , Ds3 , v064
	.byte	W24
	.byte		N11   , Fs2 , v060
	.byte		N12   , Dn3 , v068
	.byte	W12
	.byte		        Fs2 , v060
	.byte		N24   , As2 , v064
	.byte	W24
	.byte		        Ds3 , v076
	.byte	W24
	.byte		N60   , Fs3 
	.byte	W12
@ 052   ----------------------------------------
	.byte	W60
	.byte		N11   , Fs3 , v064
	.byte	W12
	.byte		N12   , Ds2 , v060
	.byte		N24   , Fs3 , v068
	.byte	W24
@ 053   ----------------------------------------
	.byte		N12   , Dn2 , v052
	.byte		N48   , Fn3 , v068
	.byte	W48
	.byte		N12   , Ds2 , v060
	.byte		N48   , Ds3 , v068
	.byte	W48
@ 054   ----------------------------------------
	.byte		N12   , Dn2 , v060
	.byte		N96   , Cn4 , v072
	.byte	W96
@ 055   ----------------------------------------
	.byte		N24   , Gn2 , v060
	.byte		N23   , Dn3 
	.byte	W24
	.byte		N11   , Dn3 , v068
	.byte	W12
	.byte		        Dn3 , v072
	.byte	W12
	.byte		N24   , Gn2 , v060
	.byte		N11   , Dn3 , v072
	.byte	W12
	.byte		N23   , Dn3 , v076
	.byte	W24
	.byte		N12   , Gn2 , v060
	.byte		N23   , Dn3 , v072
	.byte	W12
@ 056   ----------------------------------------
	.byte	W12
	.byte		N24   , As2 , v060
	.byte		N11   , Dn3 , v072
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N24   , As2 , v060
	.byte		N23   , Dn3 , v072
	.byte	W24
	.byte		N24   
	.byte	W24
@ 057   ----------------------------------------
	.byte		        Ds2 , v052
	.byte		N23   , As3 , v076
	.byte	W24
	.byte		        Gn3 , v068
	.byte		N24   , As3 
	.byte	W24
	.byte		        Ds2 , v064
	.byte		N11   , Gn3 , v072
	.byte	W12
	.byte		N23   
	.byte		N24   , As3 
	.byte	W24
	.byte		N12   , Ds2 , v060
	.byte		N23   , Gn3 , v068
	.byte	W12
@ 058   ----------------------------------------
	.byte	W12
	.byte		N24   , Dn2 , v064
	.byte		N24   , Gn3 , v072
	.byte	W24
	.byte		        Cn3 , v068
	.byte		N23   , Fs3 
	.byte	W24
	.byte		N11   , Fs3 , v072
	.byte	W12
	.byte		N24   , Cn3 , v068
	.byte		N24   , Fs3 
	.byte	W24
@ 059   ----------------------------------------
	.byte		        Gn2 , v052
	.byte		N23   , Dn3 , v064
	.byte	W24
	.byte		        Dn3 , v068
	.byte	W24
	.byte		N24   , Gn2 , v060
	.byte		N11   , Dn3 , v068
	.byte	W12
	.byte		N23   , Dn3 , v072
	.byte	W24
	.byte		N12   , Gn2 , v060
	.byte		N23   , Dn3 , v068
	.byte	W12
@ 060   ----------------------------------------
	.byte	W12
	.byte		N24   , Dn2 , v060
	.byte		N24   , Dn3 , v072
	.byte	W24
	.byte		N23   , Cn3 
	.byte		N23   , Fs3 
	.byte	W24
	.byte		N11   , Cn3 , v068
	.byte		N11   , Fs3 
	.byte	W12
	.byte		N24   , Cn3 , v072
	.byte		N24   , Fs3 
	.byte	W24
@ 061   ----------------------------------------
	.byte		N96   , Gn2 , v064
	.byte		N96   , Dn3 , v076
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte		N36   , Fs2 , v072
	.byte		N96   , Fs4 
	.byte	W96
@ 064   ----------------------------------------
	.byte		N24   , Gn2 , v064
	.byte		N24   , Dn4 , v072
	.byte	W24
	.byte	GOTO
	 .word	mus_paper_moon_2_B1
mus_paper_moon_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_paper_moon_3:
	.byte	KEYSH , mus_paper_moon_key+0
mus_paper_moon_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 106*mus_paper_moon_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N12   , Gn4 , v084
	.byte	W12
	.byte		        As4 , v092
	.byte	W12
	.byte		        An4 , v084
	.byte	W12
	.byte		        Gn4 , v088
	.byte	W12
	.byte		        As4 , v096
	.byte	W12
	.byte		        An4 , v084
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As4 , v096
	.byte	W12
@ 001   ----------------------------------------
	.byte		        An4 , v084
	.byte	W12
	.byte		        Gn4 , v088
	.byte	W12
	.byte		        Ds4 , v084
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Ds3 , v076
	.byte	W12
	.byte		N23   , As2 , v080
	.byte	W12
@ 002   ----------------------------------------
	.byte		N12   , Gn2 , v092
	.byte	W12
	.byte		N11   , As2 , v088
	.byte	W12
	.byte		N24   , As2 , v096
	.byte	W12
	.byte		N12   , Gn2 , v092
	.byte	W12
	.byte		N24   , Fn3 , v100
	.byte	W12
	.byte		N12   , Gn2 , v088
	.byte	W12
	.byte		N24   , As2 , v084
	.byte	W12
	.byte		N12   , Gn2 , v088
	.byte	W12
@ 003   ----------------------------------------
	.byte		N48   , Ds3 , v096
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        Gn2 , v088
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N48   , Dn3 
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   , Gn2 , v084
	.byte	W12
@ 004   ----------------------------------------
	.byte		N68   , Cn3 , v084, gtp3
	.byte	W12
	.byte		N11   , Fn3 , v092
	.byte	W12
	.byte		        Fn3 , v088
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   , Fn3 , v092
	.byte	W12
	.byte		N24   , Cn3 , v088
	.byte	W12
	.byte		N12   , Fn3 , v084
	.byte	W12
@ 005   ----------------------------------------
	.byte		N11   , Dn3 , v092
	.byte	W12
	.byte		        Dn3 , v096
	.byte	W12
	.byte		        Dn3 , v088
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N36   , Cn3 
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N23   , As2 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N12   , Ds3 , v084
	.byte	W12
	.byte		N11   , As2 , v092
	.byte	W12
	.byte		N24   , As2 , v088
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N24   , Fn3 , v096
	.byte	W12
	.byte		N12   , Ds3 , v088
	.byte	W12
	.byte		N24   , As2 
	.byte	W12
	.byte		N11   , Ds3 
	.byte	W12
@ 007   ----------------------------------------
	.byte		        Ds3 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Ds3 , v092
	.byte	W12
	.byte		N12   , Ds3 , v088
	.byte	W12
	.byte		N48   , Dn3 
	.byte	W12
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 008   ----------------------------------------
	.byte		N96   , Cn3 
	.byte	W24
	.byte		N11   , Fn3 , v096
	.byte	W12
	.byte		N23   , Fn3 , v080
	.byte	W24
	.byte		N11   , Fn3 , v088
	.byte	W12
	.byte		N24   , Fn3 , v096
	.byte	W24
@ 009   ----------------------------------------
	.byte		N72   , An2 , v088
	.byte	W24
	.byte		N11   , Fn3 , v096
	.byte	W12
	.byte		N23   , Fn3 , v080
	.byte	W24
	.byte		N12   , Fn3 , v084
	.byte	W12
	.byte		N23   , Fn4 , v104
	.byte	W24
@ 010   ----------------------------------------
	.byte		N36   , Fn4 , v088
	.byte	W12
	.byte		N12   , Gn2 , v092
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N11   , As3 , v072
	.byte	W12
	.byte		N44   , As3 , v084, gtp3
	.byte	W12
	.byte		N12   , Gn2 , v080
	.byte	W12
	.byte		        Dn3 , v088
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N24   , As3 , v084
	.byte	W12
	.byte		N12   , As2 , v088
	.byte	W12
	.byte		N24   , Gn3 , v080
	.byte	W12
	.byte		N12   , As2 , v084
	.byte	W12
	.byte		N24   , As3 , v088
	.byte	W12
	.byte		N12   , As2 , v080
	.byte	W12
	.byte		N24   , Cn4 , v084
	.byte	W12
	.byte		N12   , Gn2 , v088
	.byte	W12
@ 012   ----------------------------------------
	.byte		N36   , Ds4 , v092
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N11   , Dn4 , v080
	.byte	W12
	.byte		N48   , Dn4 , v088
	.byte	W12
	.byte		N12   , An2 , v076
	.byte	W12
	.byte		        Dn3 , v092
	.byte	W12
	.byte		        An2 , v084
	.byte	W12
@ 013   ----------------------------------------
	.byte		N24   , Cn4 
	.byte	W12
	.byte		N12   , Cn3 , v088
	.byte	W12
	.byte		N24   , As3 , v080
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N24   , An3 , v084
	.byte	W12
	.byte		N12   , Cn3 , v076
	.byte	W12
	.byte		N24   , As3 , v088
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N72   , An3 , v084
	.byte	W12
	.byte		N12   , Cn3 , v088
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cn3 , v084
	.byte	W12
	.byte		        An2 , v092
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N60   , As3 , v092
	.byte	W12
@ 015   ----------------------------------------
	.byte		N11   , Gn2 , v080
	.byte	W12
	.byte		N12   , Gn2 , v092
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N11   , Gn2 , v088
	.byte	W12
	.byte		N12   , Gn2 , v080
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As3 , v092
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N23   , Dn4 , v084
	.byte	W12
	.byte		N12   , As2 , v092
	.byte	W12
	.byte		        Dn4 , v084
	.byte	W12
	.byte		N36   , Ds4 , v088
	.byte	W12
	.byte		N12   , Fn3 , v084
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W12
	.byte		N12   , As2 , v088
	.byte	W12
@ 017   ----------------------------------------
	.byte		N72   , An3 , v080
	.byte	W12
	.byte		N12   , Cn3 , v088
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn3 , v096
	.byte	W12
	.byte		        Fn3 , v080
	.byte	W12
	.byte		        Cn3 , v092
	.byte	W12
	.byte		N23   , Fn4 
	.byte	W12
	.byte		N12   , Cn3 , v080
	.byte	W12
@ 018   ----------------------------------------
	.byte		N32   , Fn4 , v088, gtp3
	.byte	W12
	.byte		N12   , Gn2 , v096
	.byte	W12
	.byte		        Dn3 , v092
	.byte	W12
	.byte		        Fn4 , v088
	.byte	W12
	.byte		N44   , As3 , v080, gtp3
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Dn3 , v084
	.byte	W12
	.byte		        Gn2 , v092
	.byte	W12
@ 019   ----------------------------------------
	.byte		N24   , As3 , v084
	.byte	W12
	.byte		N12   , As2 , v088
	.byte	W12
	.byte		N24   , Gn3 , v080
	.byte	W12
	.byte		N12   , As2 , v084
	.byte	W12
	.byte		N24   , As3 , v092
	.byte	W12
	.byte		N12   , As2 , v080
	.byte	W12
	.byte		N24   , Cn4 , v088
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N36   , Ds4 
	.byte	W12
	.byte		N12   , An2 , v092
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N11   , Dn4 , v084
	.byte	W12
	.byte		N48   
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn3 , v088
	.byte	W12
	.byte		        An2 , v080
	.byte	W12
@ 021   ----------------------------------------
	.byte		N24   , Cn4 
	.byte	W12
	.byte		N12   , Cn3 , v088
	.byte	W12
	.byte		N24   , As3 , v080
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N24   , An3 , v084
	.byte	W12
	.byte		N12   , Cn3 , v080
	.byte	W12
	.byte		N24   , As3 , v088
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
@ 022   ----------------------------------------
	.byte		N48   , An3 , v080
	.byte	W12
	.byte		N12   , Cn3 , v084
	.byte	W12
	.byte		        Fs3 , v092
	.byte	W12
	.byte		        Cn3 , v084
	.byte	W12
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N24   , Gn3 , v088
	.byte	W12
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N84   , As3 
	.byte	W12
@ 023   ----------------------------------------
	.byte		N11   , Gn2 , v080
	.byte	W12
	.byte		N12   , Gn2 , v092
	.byte	W12
	.byte		        Dn3 , v088
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 , v084
	.byte	W12
	.byte		        Gn2 , v080
	.byte	W12
	.byte		N23   , Fn4 , v092
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N24   , Fn4 , v088
	.byte	W24
	.byte		N12   , Ds4 , v084
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Ds4 
	.byte	W12
	.byte		N11   , Ds3 , v092
	.byte	W12
	.byte		N12   , Ds3 , v080
	.byte	W12
@ 025   ----------------------------------------
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N12   , Cn4 , v084
	.byte	W12
	.byte		N36   , Ds4 , v092
	.byte	W24
	.byte		N12   , Dn3 , v080
	.byte	W12
	.byte		N11   , Dn4 , v084
	.byte	W12
	.byte		N60   , Dn4 , v088
	.byte	W12
@ 026   ----------------------------------------
	.byte		N11   , Ds3 , v096
	.byte	W12
	.byte		        Ds3 , v100
	.byte	W12
	.byte		        Ds3 , v096
	.byte	W12
	.byte		N12   , Ds3 , v084
	.byte	W12
	.byte		N11   , Fn3 , v100
	.byte	W12
	.byte		N12   , Fn3 , v096
	.byte	W12
	.byte		N23   , Fn4 , v088
	.byte	W12
	.byte		N12   , Ds3 , v096
	.byte	W12
@ 027   ----------------------------------------
	.byte		        Fn4 , v092
	.byte	W12
	.byte		N24   , Ds4 
	.byte	W12
	.byte		N12   , Ds3 , v096
	.byte	W12
	.byte		N24   , Dn4 , v088
	.byte	W12
	.byte		N12   , Fn3 , v100
	.byte	W12
	.byte		N24   , Ds4 
	.byte	W12
	.byte		N12   , Ds3 , v088
	.byte	W12
	.byte		N36   , Dn4 , v092
	.byte	W12
@ 028   ----------------------------------------
	.byte		N11   , Dn3 , v096
	.byte	W12
	.byte		N23   , Dn3 , v100
	.byte	W24
	.byte		N24   , Dn3 , v096
	.byte	W24
	.byte		        As3 , v092
	.byte	W12
	.byte		N12   , Dn3 , v100
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W12
@ 029   ----------------------------------------
	.byte		N11   , Gn2 , v108
	.byte	W12
	.byte		        Gn2 , v104
	.byte	W12
	.byte		        Gn2 , v096
	.byte	W12
	.byte		        Gn2 , v088
	.byte	W12
	.byte		        Gn2 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , As4 , v088
	.byte	W12
	.byte		N12   , Gn2 , v100
	.byte	W12
@ 030   ----------------------------------------
	.byte		N36   , An4 , v088
	.byte	W12
	.byte		N12   , As2 , v100
	.byte	W12
	.byte		        Ds3 , v096
	.byte	W12
	.byte		        Gn2 , v100
	.byte	W12
	.byte		        An4 , v084
	.byte	W12
	.byte		N24   , Gn4 , v092
	.byte	W12
	.byte		N12   , As2 , v100
	.byte	W12
	.byte		N24   , As4 
	.byte	W12
@ 031   ----------------------------------------
	.byte		N12   , Fn3 , v088
	.byte	W12
	.byte		        Cn3 , v096
	.byte	W12
	.byte		        Fn3 , v100
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 , v092
	.byte	W12
	.byte		        Fn3 , v096
	.byte	W12
	.byte		N24   , As4 , v088
	.byte	W12
	.byte		N12   , As2 , v092
	.byte	W12
@ 032   ----------------------------------------
	.byte		N48   , An4 
	.byte	W12
	.byte		N12   , An2 , v100
	.byte	W12
	.byte		        Dn3 , v096
	.byte	W12
	.byte		        Fn3 , v100
	.byte	W12
	.byte		        An2 , v088
	.byte	W12
	.byte		N24   , An4 
	.byte	W12
	.byte		N12   , An2 , v100
	.byte	W12
	.byte		N48   , As4 , v096
	.byte	W12
@ 033   ----------------------------------------
	.byte		N12   , Fs3 , v084
	.byte	W12
	.byte		        Cn3 , v100
	.byte	W12
	.byte		        Fs3 , v112
	.byte	W12
	.byte		N48   , An4 , v088
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fs3 , v092
	.byte	W12
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N12   , Cn3 , v100
	.byte	W12
@ 034   ----------------------------------------
	.byte		N24   , An4 , v108
	.byte	W12
	.byte		N12   , Gn2 , v096
	.byte	W12
	.byte		        As4 , v116
	.byte	W12
	.byte		N24   , An4 , v112
	.byte	W12
	.byte		N12   , Gn2 , v096
	.byte	W12
	.byte		N24   , As4 , v116
	.byte	W12
	.byte		N12   , Gn2 , v100
	.byte	W12
	.byte		N24   , Cn5 , v124
	.byte	W12
@ 035   ----------------------------------------
	.byte		N12   , As2 , v096
	.byte	W12
	.byte		N24   , As4 , v108
	.byte	W12
	.byte		N12   , As2 , v100
	.byte	W12
	.byte		N24   , An4 , v112
	.byte	W12
	.byte		N12   , As2 , v092
	.byte	W12
	.byte		N24   , Gn4 , v112
	.byte	W12
	.byte		N12   , As2 , v100
	.byte	W12
	.byte		N36   , Fn4 , v112
	.byte	W12
@ 036   ----------------------------------------
	.byte		N11   , Ds3 , v088
	.byte	W12
	.byte		        Ds3 , v096
	.byte	W12
	.byte		        Ds3 , v104
	.byte	W12
	.byte		        Ds3 , v092
	.byte	W12
	.byte		        Ds3 , v096
	.byte	W12
	.byte		N12   , Ds3 , v088
	.byte	W12
	.byte		N24   , Fn4 , v108
	.byte	W12
	.byte		N12   , Ds3 , v084
	.byte	W12
@ 037   ----------------------------------------
	.byte		N24   , Gn4 , v120
	.byte	W12
	.byte		N12   , Dn3 , v092
	.byte	W12
	.byte		        Fn4 , v108
	.byte	W12
	.byte		N24   , Ds4 , v112
	.byte	W12
	.byte		N12   , Dn3 , v096
	.byte	W12
	.byte		N24   , Fn4 , v116
	.byte	W12
	.byte		N12   , Dn3 , v100
	.byte	W12
	.byte		N24   , Dn4 , v104
	.byte	W12
@ 038   ----------------------------------------
	.byte		N11   , Gn2 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn2 , v092
	.byte	W12
	.byte		N12   , Gn2 , v084
	.byte	W12
	.byte		N24   , Dn4 , v112
	.byte	W12
	.byte		N12   , Gn2 , v088
	.byte	W12
@ 039   ----------------------------------------
	.byte		N24   , Ds4 , v116
	.byte	W12
	.byte		N12   , Ds3 , v096
	.byte	W12
	.byte		        Gn4 , v124
	.byte	W12
	.byte		N24   , Fn4 , v112
	.byte	W12
	.byte		N12   , Ds3 , v096
	.byte	W12
	.byte		N24   , Ds4 , v112
	.byte	W12
	.byte		N12   , Ds3 , v096
	.byte	W12
	.byte		N24   , Dn4 , v108
	.byte	W12
@ 040   ----------------------------------------
	.byte		N11   , Dn3 , v088
	.byte	W12
	.byte		        Dn3 , v096
	.byte	W12
	.byte		        Dn3 , v104
	.byte	W12
	.byte		        Dn3 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   , Dn3 , v084
	.byte	W12
	.byte		N24   , Dn4 , v104
	.byte	W12
	.byte		N12   , Dn3 , v088
	.byte	W12
@ 041   ----------------------------------------
	.byte		N36   , Ds4 , v120
	.byte	W12
	.byte		N11   , Fs3 , v096
	.byte	W12
	.byte		N12   , Fs3 , v100
	.byte	W12
	.byte		N36   , Dn4 , v112
	.byte	W12
	.byte		N11   , Fs3 , v088
	.byte	W12
	.byte		N12   , Fs3 , v084
	.byte	W12
	.byte		TIE   , Cn4 , v112
	.byte	W12
	.byte		N12   , Fs3 , v084
	.byte	W12
@ 042   ----------------------------------------
	.byte		N24   , An4 , v124
	.byte	W12
	.byte		N12   , Gn2 , v096
	.byte	W12
	.byte		        As4 , v120
	.byte	W12
	.byte		N24   , An4 , v112
	.byte	W12
	.byte		N12   , Gn2 , v100
	.byte	W12
	.byte		N24   , As4 , v116
	.byte	W12
	.byte		N12   , Gn2 , v100
	.byte	W12
	.byte		N24   , Cn5 , v120
	.byte	W12
@ 043   ----------------------------------------
	.byte		N12   , As2 , v092
	.byte	W12
	.byte		EOT   , Cn4 
	.byte		N24   , As4 , v108
	.byte	W12
	.byte		N12   , As2 , v100
	.byte	W12
	.byte		N24   , An4 , v112
	.byte	W12
	.byte		N12   , As2 , v092
	.byte	W12
	.byte		N24   , Gn4 , v108
	.byte	W12
	.byte		N12   , As2 , v100
	.byte	W12
	.byte		N36   , Fn4 , v108
	.byte	W12
@ 044   ----------------------------------------
	.byte		N11   , Ds3 , v088
	.byte	W12
	.byte		        Ds3 , v092
	.byte	W12
	.byte		        Ds3 , v104
	.byte	W12
	.byte		        Ds3 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , As4 , v108
	.byte	W12
	.byte		N12   , Ds3 , v100
	.byte	W12
	.byte		N48   , An4 , v108
	.byte	W12
@ 045   ----------------------------------------
	.byte		N11   , Dn3 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn3 , v104
	.byte	W12
	.byte		        Dn3 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   , Dn3 , v088
	.byte	W12
	.byte		N23   , An4 , v104
	.byte	W12
	.byte		N12   , Dn3 , v084
	.byte	W12
@ 046   ----------------------------------------
	.byte		N36   , An4 , v112
	.byte	W12
	.byte		N11   , Gn2 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   , Gn2 , v092
	.byte	W12
	.byte		N24   , Gn4 , v108
	.byte	W12
	.byte		N12   , Gn2 , v104
	.byte	W12
	.byte		N24   , As4 , v120
	.byte	W12
@ 047   ----------------------------------------
	.byte		N11   , Dn3 , v092
	.byte	W12
	.byte		        Dn3 , v096
	.byte	W12
	.byte		        Dn3 , v100
	.byte	W12
	.byte		        Dn3 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , As4 , v108
	.byte	W12
	.byte		N12   , Dn3 , v100
	.byte	W12
	.byte		N24   , Cn5 , v120
	.byte	W12
@ 048   ----------------------------------------
	.byte		N12   , Fs3 , v100
	.byte	W12
	.byte		N24   , As4 , v108
	.byte	W12
	.byte		N12   , Fs3 , v100
	.byte	W12
	.byte		N24   , An4 , v108
	.byte	W12
	.byte		N12   , Fs3 , v084
	.byte	W12
	.byte		N24   , As4 , v120
	.byte	W12
	.byte		N12   , Fs3 , v100
	.byte	W12
	.byte		N48   , Gn4 , v108
	.byte	W12
@ 049   ----------------------------------------
	.byte		N11   , Gn2 , v100
	.byte	W12
	.byte		        Gn2 , v096
	.byte	W12
	.byte		        Gn2 , v100
	.byte	W12
	.byte		        Gn2 , v096
	.byte	W12
	.byte		        Gn2 , v092
	.byte	W12
	.byte		        Gn2 , v088
	.byte	W12
	.byte		        Gn2 , v100
	.byte	W12
	.byte		N12   , Gn2 , v084
	.byte	W12
@ 050   ----------------------------------------
	.byte		N24   , Gn4 , v108
	.byte	W12
	.byte		N12   , Gn2 , v096
	.byte	W12
	.byte		        As4 , v120
	.byte	W12
	.byte		N24   , Gn4 , v108
	.byte	W12
	.byte		N12   , Gn2 , v092
	.byte	W12
	.byte		N36   , Fn4 , v108
	.byte	W12
	.byte		N11   , Gn2 , v100
	.byte	W12
	.byte		N12   , Gn2 , v088
	.byte	W12
@ 051   ----------------------------------------
	.byte		N24   , Ds4 , v108
	.byte	W12
	.byte		N12   , Fs3 , v092
	.byte	W12
	.byte		        Dn4 , v112
	.byte	W12
	.byte		N24   , As3 , v104
	.byte	W12
	.byte		N12   , Fs3 , v084
	.byte	W12
	.byte		N24   , Ds4 , v124
	.byte	W12
	.byte		N12   , Fs3 , v100
	.byte	W12
	.byte		N60   , Fs4 , v124
	.byte	W12
@ 052   ----------------------------------------
	.byte		N11   , Ds3 , v100
	.byte	W12
	.byte		        Ds3 , v096
	.byte	W12
	.byte		        Ds3 , v100
	.byte	W12
	.byte		        Ds3 , v092
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Fs4 , v104
	.byte	W12
	.byte		N24   , Fs4 , v112
	.byte	W12
	.byte		N12   , Ds3 , v084
	.byte	W12
@ 053   ----------------------------------------
	.byte		N48   , Fn4 , v108
	.byte	W12
	.byte		N36   , Dn3 , v096
	.byte	W36
	.byte		N48   , Ds4 , v108
	.byte	W12
	.byte		N36   , Ds3 , v096
	.byte	W36
@ 054   ----------------------------------------
	.byte		N96   , Fn4 , v120
	.byte	W12
	.byte		N11   , Dn3 , v096
	.byte	W12
	.byte		        Dn3 , v104
	.byte	W12
	.byte		        Dn3 , v092
	.byte	W12
	.byte		        Dn3 , v084
	.byte	W12
	.byte		        Dn3 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 055   ----------------------------------------
	.byte		N23   , Gn3 , v096
	.byte	W24
	.byte		N11   , Gn3 , v112
	.byte	W12
	.byte		        Gn3 , v116
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , An3 , v124
	.byte	W12
	.byte		N12   , Gn2 , v088
	.byte	W12
	.byte		N23   , As3 , v116
	.byte	W12
@ 056   ----------------------------------------
	.byte		N12   , As2 , v092
	.byte	W12
	.byte		N11   , As3 , v116
	.byte	W12
	.byte		N23   
	.byte	W12
	.byte		N12   , As2 , v088
	.byte	W12
	.byte		N23   , As3 , v116
	.byte	W24
	.byte		N24   
	.byte	W12
	.byte		N12   , As2 , v100
	.byte	W12
@ 057   ----------------------------------------
	.byte		N23   , Ds4 , v124
	.byte	W24
	.byte		        Ds4 , v112
	.byte	W12
	.byte		N12   , Ds3 , v096
	.byte	W12
	.byte		N11   , Ds4 , v116
	.byte	W12
	.byte		N24   
	.byte	W12
	.byte		N12   , Ds3 , v084
	.byte	W12
	.byte		N23   , Dn4 , v112
	.byte	W12
@ 058   ----------------------------------------
	.byte		N12   , Dn3 , v088
	.byte	W12
	.byte		N24   , Dn4 , v120
	.byte	W24
	.byte		N23   , Cn4 , v108
	.byte	W12
	.byte		N24   , Dn3 , v100
	.byte	W12
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte		N24   , Cn4 , v112
	.byte	W12
	.byte		N12   , Dn3 , v100
	.byte	W12
@ 059   ----------------------------------------
	.byte		N23   , As3 , v108
	.byte	W24
	.byte		        As3 , v112
	.byte	W12
	.byte		N12   , Gn2 , v096
	.byte	W12
	.byte		N11   , As3 , v112
	.byte	W12
	.byte		N24   , As3 , v116
	.byte	W12
	.byte		N12   , Gn2 , v088
	.byte	W12
	.byte		N23   , An3 , v112
	.byte	W12
@ 060   ----------------------------------------
	.byte		N12   , Dn3 , v088
	.byte	W12
	.byte		N23   , An3 , v120
	.byte	W24
	.byte		        An3 , v116
	.byte	W12
	.byte		N24   , Dn3 , v104
	.byte	W12
	.byte		N11   , An3 , v112
	.byte	W12
	.byte		N24   , An3 , v116
	.byte	W12
	.byte		N12   , Dn3 , v100
	.byte	W12
@ 061   ----------------------------------------
	.byte		N96   , Gn3 , v124
	.byte	W96
@ 062   ----------------------------------------
	.byte		N06   , Fs3 , v108
	.byte	W06
	.byte		        An3 , v124
	.byte	W06
	.byte		        Cn4 , v120
	.byte	W06
	.byte		        Ds4 , v124
	.byte	W06
	.byte		        An3 , v104
	.byte	W06
	.byte		        Cn4 , v120
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs4 , v124
	.byte	W06
	.byte		        Cn4 , v104
	.byte	W06
	.byte		        Ds4 , v120
	.byte	W06
	.byte		        Fs4 , v124
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		N12   , Fs4 , v120
	.byte	W12
@ 063   ----------------------------------------
	.byte		N96   , Cn5 , v116
	.byte	W48
	.byte		N48   , Fs3 , v096
	.byte	W48
@ 064   ----------------------------------------
	.byte		N24   , Gn4 , v120
	.byte	W24
	.byte	GOTO
	 .word	mus_paper_moon_3_B1
mus_paper_moon_3_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_paper_moon:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_paper_moon_pri	@ Priority
	.byte	mus_paper_moon_rev	@ Reverb.

	.word	mus_paper_moon_grp

	.word	mus_paper_moon_1
	.word	mus_paper_moon_2
	.word	mus_paper_moon_3

	.end
