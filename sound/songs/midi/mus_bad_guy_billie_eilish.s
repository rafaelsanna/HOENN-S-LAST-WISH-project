	.include "MPlayDef.s"

	.equ	mus_bad_guy_billie_eilish_grp, voicegroup_fly_me_to_the_moon
	.equ	mus_bad_guy_billie_eilish_pri, 0
	.equ	mus_bad_guy_billie_eilish_rev, reverb_set+12
	.equ	mus_bad_guy_billie_eilish_mvl, 82
	.equ	mus_bad_guy_billie_eilish_key, 0
	.equ	mus_bad_guy_billie_eilish_tbs, 1
	.equ	mus_bad_guy_billie_eilish_exg, 1
	.equ	mus_bad_guy_billie_eilish_cmp, 1

	.section .rodata
	.global	mus_bad_guy_billie_eilish
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_bad_guy_billie_eilish_1:
	.byte		VOL   , 127*mus_bad_guy_billie_eilish_mvl/mxv
	.byte	KEYSH , mus_bad_guy_billie_eilish_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*mus_bad_guy_billie_eilish_tbs/2
	.byte		VOICE , 42
	.byte		N24   , Gn1 , v036
	.byte	W36
	.byte		N12   , Gn1 , v032
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn1 , v028
	.byte	W24
	.byte		        Gn1 , v032
	.byte	W12
@ 001   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Gn1 , v024
	.byte		N12   , Gn2 , v032
	.byte	W12
	.byte		        As1 
	.byte		N12   , As2 , v028
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Fn1 
	.byte		N24   , Fn2 
	.byte	W24
@ 002   ----------------------------------------
	.byte		        Gn1 , v036
	.byte		N24   , Gn2 , v028
	.byte	W36
	.byte		N12   , Gn1 
	.byte		N12   , Gn2 , v016
	.byte	W12
	.byte		        As1 , v028
	.byte		N12   , As2 
	.byte	W12
	.byte		        Gn1 , v024
	.byte		N12   , Gn2 , v028
	.byte	W24
	.byte		        Gn1 , v032
	.byte		N12   , Gn2 , v024
	.byte	W12
@ 003   ----------------------------------------
	.byte	W12
	.byte		        Gn1 , v028
	.byte		N12   , Gn2 
	.byte	W24
	.byte		        Gn1 , v032
	.byte		N12   , Gn2 , v028
	.byte	W12
	.byte		        As1 , v032
	.byte		N12   , As2 , v020
	.byte	W12
	.byte		        Gn1 , v032
	.byte		N12   , Gn2 , v028
	.byte	W12
	.byte		N24   , Fn1 , v032
	.byte		N24   , Fn2 , v028
	.byte	W24
@ 004   ----------------------------------------
	.byte		        Cn2 , v032
	.byte	W36
	.byte		N12   , Cn2 , v028
	.byte	W12
	.byte		        Ds2 , v024
	.byte	W12
	.byte		        Cn2 , v032
	.byte	W24
	.byte		        Cn2 , v028
	.byte	W12
@ 005   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte		N12   , Cn3 , v032
	.byte	W12
	.byte		        Ds2 , v024
	.byte		N12   , Ds3 , v028
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Cn3 , v032
	.byte	W12
	.byte		N24   , Gn2 , v020
	.byte		N24   , As2 , v024
	.byte	W24
@ 006   ----------------------------------------
	.byte		        Dn2 , v028
	.byte		N24   , An2 
	.byte	W36
	.byte		N12   , Dn2 , v032
	.byte	W12
	.byte		        Fs2 , v024
	.byte	W12
	.byte		N24   , Dn2 , v028
	.byte	W24
	.byte		N12   , Dn1 , v024
	.byte	W12
@ 007   ----------------------------------------
	.byte	W12
	.byte		        Dn1 , v028
	.byte	W24
	.byte		N12   
	.byte	W60
@ 008   ----------------------------------------
	.byte		N24   , Gn1 , v036
	.byte		N12   , As2 , v024
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Gn1 , v032
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , As2 , v024
	.byte	W24
	.byte		        Gn1 , v032
	.byte		N12   , As2 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Gn2 
	.byte		N12   , As2 , v028
	.byte	W24
	.byte		        Gn1 
	.byte		N12   , Gn2 , v032
	.byte		N12   , As2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Gn2 , v028
	.byte		N12   , As2 
	.byte	W12
	.byte		N24   , Fn1 
	.byte		N12   , An2 , v036
	.byte		N12   , Cn3 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N24   , Gn1 
	.byte		N12   , Gn2 , v032
	.byte		N12   , As2 
	.byte	W24
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn1 , v028
	.byte		N12   , Gn2 , v032
	.byte		N12   , As2 
	.byte	W24
	.byte		        Gn1 
	.byte		N12   , Gn2 
	.byte		N12   , As2 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Gn2 , v028
	.byte		N12   , As2 
	.byte	W24
	.byte		        Gn1 , v032
	.byte		N12   , Gn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        As1 , v028
	.byte	W12
	.byte		        Gn1 , v036
	.byte		N12   , Gn2 , v028
	.byte		N12   , As2 
	.byte	W12
	.byte		N24   , Fn1 , v032
	.byte		N12   , An2 
	.byte		N12   , Cn3 , v036
	.byte	W24
@ 012   ----------------------------------------
	.byte		N24   , Cn2 , v032
	.byte		N12   , Gn2 
	.byte		N12   , As2 , v028
	.byte		N12   , Dn3 
	.byte	W24
	.byte		        Gn2 , v032
	.byte		N12   , As2 
	.byte		N12   , Dn3 , v036
	.byte	W12
	.byte		        Cn2 , v032
	.byte	W12
	.byte		        Ds2 , v028
	.byte	W12
	.byte		        Cn2 , v032
	.byte		N12   , Gn2 
	.byte		N12   , As2 , v028
	.byte		N12   , Dn3 , v032
	.byte	W24
	.byte		        Cn2 , v028
	.byte		N12   , Gn2 , v032
	.byte		N12   , As2 
	.byte		N12   , Dn3 , v036
	.byte	W12
@ 013   ----------------------------------------
	.byte	W12
	.byte		        Cn2 , v028
	.byte		N12   , Gn2 , v032
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W24
	.byte		        Cn2 , v028
	.byte		N12   , Gn2 , v032
	.byte		N12   , As2 
	.byte		N12   , Dn3 , v036
	.byte	W12
	.byte		        Ds2 , v028
	.byte	W12
	.byte		        Cn2 , v032
	.byte		N12   , Gn2 , v024
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N24   , Gn1 
	.byte		N12   , Gn2 , v032
	.byte		N12   , Cn3 , v040
	.byte		N12   , Ds3 
	.byte	W24
@ 014   ----------------------------------------
	.byte		N24   , Dn2 , v028
	.byte		N12   , An2 , v032
	.byte		N12   , Dn3 , v036
	.byte		N12   , Fs3 
	.byte	W24
	.byte		        An2 , v032
	.byte		N12   , Dn3 , v036
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Dn2 , v032
	.byte	W12
	.byte		        Fs2 , v028
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An2 , v032
	.byte		N12   , Dn3 , v036
	.byte		N12   , Fs3 , v040
	.byte	W24
	.byte		        Dn1 , v028
	.byte		N12   , An2 , v032
	.byte		N12   , Dn3 , v036
	.byte		N12   , Fs3 
	.byte	W12
@ 015   ----------------------------------------
	.byte	W12
	.byte		        Dn1 , v028
	.byte		N12   , An2 , v032
	.byte		N12   , Dn3 
	.byte		N12   , En3 , v036
	.byte	W12
	.byte		        An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Dn1 , v032
	.byte	W60
@ 016   ----------------------------------------
	.byte		N24   , Gn1 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 , v036
	.byte		N12   , As3 , v028
	.byte	W24
	.byte		        Dn3 , v036
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v032
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 , v028
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn3 , v032
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v028
	.byte	W24
	.byte		        Gn1 
	.byte		N12   , Dn3 , v032
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v028
	.byte	W12
@ 017   ----------------------------------------
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn3 , v036
	.byte		N12   , Gn3 , v032
	.byte		N12   , As3 , v028
	.byte	W24
	.byte		        Gn1 , v024
	.byte		N12   , Dn3 , v036
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v028
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v020
	.byte	W12
	.byte		N24   , Fn1 , v028
	.byte		N12   , Dn3 , v032
	.byte		N12   , An3 , v036
	.byte		N12   , Cn4 
	.byte	W24
@ 018   ----------------------------------------
	.byte		N24   , Gn1 , v032
	.byte		N12   , Dn3 , v028
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v032
	.byte	W24
	.byte		        Dn3 
	.byte		N12   , Gn3 , v036
	.byte		N12   , As3 , v028
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn1 , v024
	.byte		N12   , Dn3 , v032
	.byte		N12   , Gn3 , v036
	.byte		N12   , As3 , v024
	.byte	W24
	.byte		        Gn1 , v028
	.byte		N12   , Dn3 , v032
	.byte		N12   , Gn3 , v036
	.byte		N12   , As3 , v028
	.byte	W12
@ 019   ----------------------------------------
	.byte	W12
	.byte		        Gn1 , v024
	.byte		N12   , Dn3 , v032
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v028
	.byte	W24
	.byte		        Gn1 , v032
	.byte		N12   , Dn3 , v036
	.byte		N12   , Gn3 , v032
	.byte		N12   , As3 , v028
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn1 , v032
	.byte		N12   , Dn3 , v028
	.byte		N12   , Gn3 , v032
	.byte		N12   , As3 , v028
	.byte	W12
	.byte		N24   , Fn1 
	.byte		N12   , Dn3 
	.byte		N12   , An3 , v036
	.byte		N12   , Cn4 
	.byte	W24
@ 020   ----------------------------------------
	.byte		N24   , Cn2 , v028
	.byte		N12   , Cn3 
	.byte		N12   , Gn3 , v032
	.byte		N12   , As3 
	.byte	W24
	.byte		        Cn3 , v028
	.byte		N12   , Gn3 , v036
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cn2 , v028
	.byte	W12
	.byte		        Ds2 , v024
	.byte	W12
	.byte		        Cn2 , v028
	.byte		N12   , Cn3 
	.byte		N12   , Gn3 , v036
	.byte		N12   , As3 
	.byte	W24
	.byte		        Cn2 , v024
	.byte		N12   , Cn3 , v028
	.byte		N12   , Gn3 , v032
	.byte		N12   , As3 
	.byte	W12
@ 021   ----------------------------------------
	.byte	W12
	.byte		        Cn2 , v024
	.byte		N12   , Cn3 , v032
	.byte		N12   , Gn3 , v036
	.byte		N12   , As3 
	.byte	W24
	.byte		        Cn2 , v024
	.byte		N12   , Cn3 , v032
	.byte		N12   , Gn3 , v036
	.byte		N12   , As3 , v032
	.byte	W12
	.byte		        Ds2 , v024
	.byte	W12
	.byte		        Cn2 , v028
	.byte		N12   , Cn3 
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N24   , Gn2 , v024
	.byte		N12   , Ds3 , v036
	.byte		N12   , Gn3 
	.byte		N12   , Dn4 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N24   , Dn2 , v028
	.byte		N12   , An2 , v032
	.byte		N12   , Dn3 , v036
	.byte		N12   , Fs3 , v032
	.byte		N12   , An3 
	.byte	W24
	.byte		        An2 
	.byte		N12   , Dn3 , v036
	.byte		N12   , Fs3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Dn2 , v028
	.byte	W12
	.byte		        Fs2 , v024
	.byte	W12
	.byte		N24   , Dn2 , v028
	.byte		N12   , An2 , v032
	.byte		N12   , Dn3 , v036
	.byte		N12   , Fs3 
	.byte		N12   , An3 , v032
	.byte	W24
	.byte		        Dn1 , v024
	.byte		N12   , An2 , v032
	.byte		N12   , Dn3 , v036
	.byte		N12   , Fs3 , v032
	.byte		N12   , An3 
	.byte	W12
@ 023   ----------------------------------------
	.byte	W12
	.byte		        An2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 , v028
	.byte		N12   , Gn3 , v032
	.byte	W12
	.byte		        An2 , v036
	.byte		N12   , Dn3 , v040
	.byte		N12   , Fs3 , v036
	.byte	W36
	.byte		        As2 
	.byte	W12
	.byte		        As2 , v032
	.byte	W12
	.byte		        Cn3 , v036
	.byte	W12
@ 024   ----------------------------------------
	.byte		N24   , Gn1 , v040
	.byte		N12   , As2 , v032
	.byte	W24
	.byte		        Dn2 
	.byte		N12   , Gn2 , v036
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 , v032
	.byte		N12   , Gn2 , v036
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn1 , v032
	.byte		N12   , Gn2 , v036
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn1 , v032
	.byte		N12   , Gn2 
	.byte		N12   , As2 
	.byte	W12
@ 025   ----------------------------------------
	.byte		        As2 , v036
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N24   , Dn2 , v032
	.byte		N24   , Gn2 
	.byte	W12
	.byte		N12   , Gn1 , v028
	.byte	W12
	.byte		        As1 , v032
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N24   , Fn1 , v028
	.byte		N12   , Gn2 , v032
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W12
@ 026   ----------------------------------------
	.byte		N24   , Gn1 , v036
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W24
	.byte		        Dn2 
	.byte		N12   , Gn2 , v032
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Gn2 , v036
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn1 , v032
	.byte		N12   , Gn2 , v036
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 , v032
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn1 , v036
	.byte		N12   , As2 , v032
	.byte	W12
@ 027   ----------------------------------------
	.byte		        As2 , v036
	.byte		N12   , Dn3 , v032
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W12
	.byte		N12   , Gn2 
	.byte		N12   , As2 
	.byte	W48
	.byte		        As2 , v036
	.byte	W12
	.byte		        Cn3 , v040
	.byte	W12
@ 028   ----------------------------------------
	.byte		N24   , Cn2 , v032
	.byte		N12   , Dn3 , v036
	.byte		N12   , As3 , v040
	.byte	W24
	.byte		        Dn3 , v036
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Cn2 , v032
	.byte	W12
	.byte		        Ds2 , v028
	.byte		N12   , Gn2 , v036
	.byte		N12   , As2 
	.byte	W12
	.byte		        Cn2 , v032
	.byte		N12   , Gn2 , v036
	.byte		N12   , Cn3 , v040
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , As2 
	.byte	W12
	.byte		        Cn2 , v032
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 , v040
	.byte	W12
@ 029   ----------------------------------------
	.byte		        Dn3 , v036
	.byte		N12   , As3 
	.byte	W12
	.byte		N24   , Cn2 , v032
	.byte	W12
	.byte		N12   , Dn3 , v036
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Cn2 , v028
	.byte	W12
	.byte		        Ds2 
	.byte		N12   , Gn2 , v032
	.byte		N12   , As2 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 , v036
	.byte	W12
	.byte		N24   , Gn1 , v024
	.byte		N12   , Gn2 , v032
	.byte		N12   , As2 , v036
	.byte	W12
	.byte		        Gn2 , v032
	.byte		N12   , Cn3 , v036
	.byte	W12
@ 030   ----------------------------------------
	.byte		N24   , Dn2 , v028
	.byte		N12   , Dn3 , v036
	.byte		N12   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N12   , Fs3 , v032
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fs1 , v028
	.byte		N12   , Fs2 , v040
	.byte		N12   , As2 , v036
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , Fs2 , v036
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        Dn1 , v028
	.byte		N12   , Fs2 , v036
	.byte		N12   , Cn3 
	.byte	W12
@ 031   ----------------------------------------
	.byte		        Dn3 
	.byte		N12   , As3 , v032
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Dn3 , v036
	.byte		N12   , Fs3 
	.byte	W48
	.byte		N18   , Cn3 , v032
	.byte	W18
	.byte		        As2 , v036
	.byte	W06
@ 032   ----------------------------------------
mus_bad_guy_billie_eilish_1_032:
	.byte	W12
	.byte		N60   , An2 , v036
	.byte	W60
	.byte		TIE   , Gn2 , v024
	.byte	W24
	.byte	PEND
@ 033   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 034   ----------------------------------------
	.byte		N24   , Gn0 , v040
	.byte		N24   , Gn1 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W24
	.byte		        Gn0 
	.byte		N12   , Gn1 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        As0 , v036
	.byte		N12   , As1 
	.byte		N12   , Cs4 , v040
	.byte	W12
	.byte		        Gn0 , v036
	.byte		N12   , Gn1 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Cs4 , v044
	.byte	W12
	.byte		        Gn0 , v036
	.byte		N12   , Gn1 
	.byte		N12   , As3 , v040
	.byte	W12
@ 035   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Gn0 , v036
	.byte		N12   , Gn1 
	.byte		N12   , Dn4 , v040
	.byte	W24
	.byte		        Gn0 , v032
	.byte		N12   , Gn1 
	.byte		N12   , Gn3 , v036
	.byte	W12
	.byte		        As0 
	.byte		N12   , As1 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Gn0 
	.byte		N12   , Gn1 
	.byte		N12   , Dn4 , v040
	.byte	W12
	.byte		N24   , Fn0 , v036
	.byte		N24   , Fn1 
	.byte		N12   , Cs4 , v044
	.byte	W12
	.byte		        As3 , v032
	.byte	W12
@ 036   ----------------------------------------
	.byte		N24   , Gn0 , v040
	.byte		N24   , Gn1 
	.byte		N12   , Gn3 , v036
	.byte	W12
	.byte		        Dn4 , v040
	.byte	W24
	.byte		        Gn0 , v036
	.byte		N12   , Gn1 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        As0 
	.byte		N12   , As1 
	.byte		N12   , Cs4 , v040
	.byte	W12
	.byte		        Gn0 , v036
	.byte		N12   , Gn1 , v032
	.byte		N12   , Dn4 , v040
	.byte	W12
	.byte		        Cs4 , v044
	.byte	W12
	.byte		        Gn0 , v036
	.byte		N12   , Gn1 , v040
	.byte		N12   , As3 , v036
	.byte	W12
@ 037   ----------------------------------------
	.byte		        Gn3 , v032
	.byte	W12
	.byte		        Gn0 , v036
	.byte		N12   , Gn1 
	.byte		N12   , Dn4 , v044
	.byte	W24
	.byte		        Gn0 , v040
	.byte		N12   , Gn1 
	.byte		N12   , Gn3 , v036
	.byte	W12
	.byte		        As0 
	.byte		N12   , As1 
	.byte		N12   , Cs4 , v040
	.byte	W12
	.byte		        Gn0 , v036
	.byte		N12   , Gn1 , v040
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Fn0 
	.byte		N24   , Fn1 
	.byte		N12   , Cs4 , v036
	.byte	W12
	.byte		        As3 , v032
	.byte	W12
@ 038   ----------------------------------------
	.byte		N24   , Cn1 , v036
	.byte		N24   , Cn2 
	.byte		N12   , Cn4 , v040
	.byte	W12
	.byte		        Gn4 
	.byte	W24
	.byte		        Cn1 , v036
	.byte		N12   , Cn2 
	.byte		N12   , Cn4 , v040
	.byte	W12
	.byte		        Ds1 , v036
	.byte		N12   , Ds2 
	.byte		N12   , Fs4 , v040
	.byte	W12
	.byte		        Cn1 , v036
	.byte		N12   , Cn2 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs4 , v044
	.byte	W12
	.byte		        Cn1 , v036
	.byte		N12   , Cn2 
	.byte		N12   , Ds4 , v040
	.byte	W12
@ 039   ----------------------------------------
	.byte		        Cn4 , v036
	.byte	W12
	.byte		        Cn1 
	.byte		N12   , Cn2 
	.byte		N12   , Gn4 , v040
	.byte	W24
	.byte		        Cn1 , v032
	.byte		N12   , Cn2 , v036
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds1 , v032
	.byte		N12   , Ds2 
	.byte		N12   , Fs4 , v036
	.byte	W12
	.byte		        Cn1 
	.byte		N12   , Cn2 
	.byte		N12   , Gn4 , v044
	.byte	W12
	.byte		        Gn1 , v028
	.byte		N12   , Gn2 
	.byte		N12   , Fs4 , v044
	.byte	W12
	.byte		        Ds4 , v032
	.byte	W12
@ 040   ----------------------------------------
	.byte		N24   , Dn1 
	.byte		N24   , Dn2 
	.byte		N12   , Dn4 , v040
	.byte	W12
	.byte		        An4 
	.byte	W24
	.byte		        Dn1 , v036
	.byte		N12   , Dn2 
	.byte		N12   , Dn4 , v040
	.byte	W12
	.byte		        Fs1 , v032
	.byte		N12   , Fs2 
	.byte		N12   , Fs4 , v044
	.byte	W12
	.byte		        Dn1 , v036
	.byte		N12   , Dn2 
	.byte		N12   , Dn4 , v040
	.byte	W24
	.byte		        Dn1 , v032
	.byte		N12   , Cn4 , v044
	.byte	W12
@ 041   ----------------------------------------
	.byte		N24   
	.byte	W12
	.byte		N12   , Dn1 , v036
	.byte	W24
	.byte		        Dn1 , v032
	.byte	W60
@ 042   ----------------------------------------
	.byte		        Dn4 , v036
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v032
	.byte	W24
	.byte		        Dn4 , v036
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v032
	.byte	W36
	.byte		        Dn4 , v036
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v032
	.byte	W24
	.byte		        Dn4 , v036
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v032
	.byte	W12
@ 043   ----------------------------------------
	.byte	W12
	.byte		        Dn4 , v036
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v032
	.byte	W24
	.byte		        Dn4 , v040
	.byte		N12   , Gn4 , v036
	.byte		N12   , As4 , v032
	.byte	W24
	.byte		        Dn4 , v028
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v024
	.byte	W12
	.byte		        Dn4 , v032
	.byte		N12   , An4 , v036
	.byte		N12   , Cn5 , v040
	.byte	W24
@ 044   ----------------------------------------
	.byte		        Dn4 , v032
	.byte		N12   , Gn4 
	.byte		N12   , As4 
	.byte	W24
	.byte		        Dn4 , v036
	.byte		N12   , Gn4 , v040
	.byte		N12   , As4 , v028
	.byte	W36
	.byte		        Dn4 , v036
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v028
	.byte	W24
	.byte		        Dn4 , v036
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v032
	.byte	W12
@ 045   ----------------------------------------
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Gn4 , v036
	.byte		N12   , As4 , v028
	.byte	W24
	.byte		        Dn4 , v036
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v032
	.byte	W24
	.byte		        Dn4 
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v028
	.byte	W12
	.byte		        Dn4 , v032
	.byte		N12   , An4 , v040
	.byte		N12   , Cn5 , v036
	.byte	W24
@ 046   ----------------------------------------
	.byte		        Cn4 , v028
	.byte		N12   , Gn4 , v036
	.byte		N12   , As4 
	.byte	W24
	.byte		        Cn4 , v032
	.byte		N12   , Gn4 , v036
	.byte		N12   , As4 
	.byte	W36
	.byte		        Cn4 , v032
	.byte		N12   , Gn4 , v036
	.byte		N12   , As4 
	.byte	W24
	.byte		        Cn4 , v032
	.byte		N12   , Gn4 
	.byte		N12   , As4 
	.byte	W12
@ 047   ----------------------------------------
	.byte	W12
	.byte		        Cn4 , v036
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v040
	.byte	W24
	.byte		        Cn4 , v036
	.byte		N12   , Gn4 
	.byte		N12   , As4 
	.byte	W24
	.byte		        Cn4 , v028
	.byte		N12   , Gn4 
	.byte		N12   , As4 , v032
	.byte	W12
	.byte		        Ds4 , v040
	.byte		N12   , Gn4 
	.byte		N12   , Dn5 , v036
	.byte	W24
@ 048   ----------------------------------------
	.byte		        An3 , v032
	.byte		N12   , Dn4 , v036
	.byte		N12   , Fs4 , v032
	.byte		N12   , An4 , v036
	.byte	W24
	.byte		        An3 
	.byte		N12   , Dn4 , v040
	.byte		N12   , Fs4 
	.byte		N12   , An4 , v036
	.byte	W36
	.byte		        An3 
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte		N12   , An4 
	.byte	W24
	.byte		        An3 , v032
	.byte		N12   , Dn4 , v040
	.byte		N12   , Fs4 , v036
	.byte		N12   , An4 , v032
	.byte	W12
@ 049   ----------------------------------------
	.byte	W12
	.byte		        An3 , v036
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 , v032
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        An3 , v036
	.byte		N12   , Dn4 , v040
	.byte		N12   , Fs4 
	.byte	W24
	.byte		        Cn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        As1 , v032
	.byte	W12
@ 050   ----------------------------------------
	.byte		        Gn1 , v036
	.byte		N12   , Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v036
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 , v040
	.byte		N12   , Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W12
	.byte		        Dn2 , v036
	.byte	W12
	.byte		        Gn2 , v040
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v036
	.byte	W12
	.byte		        Gn2 , v040
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 , v044
	.byte		N12   , Gn3 , v040
	.byte		N12   , As3 
	.byte	W12
@ 051   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W12
	.byte		        Gn2 , v036
	.byte	W12
	.byte		        Dn2 , v040
	.byte		N12   , Dn3 , v036
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v028
	.byte	W12
	.byte		        Gn2 , v044
	.byte		N12   , Dn3 , v040
	.byte		N12   , An3 , v044
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Dn2 , v032
	.byte	W12
@ 052   ----------------------------------------
	.byte		        Gn1 , v040
	.byte		N12   , Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Dn2 , v036
	.byte	W12
	.byte		        Gn2 , v044
	.byte		N12   
	.byte		N12   , Dn3 , v040
	.byte		N12   , Gn3 , v044
	.byte		N12   , As3 , v036
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 , v040
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v036
	.byte	W12
	.byte		        Gn2 , v040
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , Dn3 , v044
	.byte		N12   , Gn3 , v040
	.byte		N12   , As3 
	.byte	W12
@ 053   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , Dn3 , v040
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v036
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , Dn3 , v044
	.byte		N12   , Gn3 , v040
	.byte		N12   , As3 , v036
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 , v040
	.byte		N12   , Dn3 , v036
	.byte		N12   , Gn3 , v040
	.byte		N12   , As3 , v036
	.byte	W12
	.byte		        Gn2 , v044
	.byte		N12   , Dn3 , v036
	.byte		N12   , An3 , v048
	.byte		N12   , Cn4 , v040
	.byte	W12
	.byte		        Dn2 , v036
	.byte	W12
@ 054   ----------------------------------------
	.byte		        Cn1 , v040
	.byte		N12   , Cn3 , v036
	.byte		N12   , Gn3 , v040
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 , v036
	.byte		N12   , Cn3 
	.byte		N12   , Gn3 , v044
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gn1 , v040
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Cn3 
	.byte		N12   , Gn3 , v044
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cn2 , v040
	.byte	W12
	.byte		        Gn1 , v036
	.byte		N12   , Cn3 
	.byte		N12   , Gn3 , v040
	.byte		N12   , As3 
	.byte	W12
@ 055   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Cn3 
	.byte		N12   , Gn3 , v044
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cn2 , v036
	.byte	W12
	.byte		        Gn1 , v040
	.byte		N12   , Cn3 
	.byte		N12   , Gn3 , v044
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cn2 , v036
	.byte	W12
	.byte		        Gn1 , v040
	.byte		N12   , Cn3 , v036
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Ds3 , v044
	.byte		N12   , Gn3 , v048
	.byte		N12   , Dn4 , v044
	.byte	W12
	.byte		        Gn1 , v040
	.byte	W12
@ 056   ----------------------------------------
	.byte		        Dn1 
	.byte		N12   , An2 
	.byte		N12   , Dn3 , v044
	.byte		N12   , Fs3 , v040
	.byte		N12   , An3 , v044
	.byte	W12
	.byte		        An1 , v040
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , An2 , v040
	.byte		N12   , Dn3 , v044
	.byte		N12   , Fs3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        An1 , v032
	.byte	W12
	.byte		        Dn2 , v036
	.byte	W12
	.byte		        An1 , v040
	.byte		N12   , An2 
	.byte		N12   , Dn3 , v044
	.byte		N12   , Fs3 
	.byte		N12   , An3 , v040
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An1 , v032
	.byte		N12   , An2 , v040
	.byte		N12   , Dn3 , v044
	.byte		N12   , Fs3 , v040
	.byte		N12   , An3 
	.byte	W12
@ 057   ----------------------------------------
	.byte		        Dn1 
	.byte	W12
	.byte		        An2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        An2 , v044
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W36
	.byte		        As3 , v036
	.byte	W12
	.byte		        As3 , v032
	.byte	W12
	.byte		        Cn4 , v036
	.byte	W12
@ 058   ----------------------------------------
	.byte		        Gn1 , v028
	.byte		N12   , As3 , v036
	.byte	W12
	.byte		        Dn2 , v032
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 , v036
	.byte	W12
	.byte		        Dn2 , v032
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 , v036
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , Gn3 , v036
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Gn2 , v032
	.byte		N12   , Gn3 , v036
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , Gn3 , v036
	.byte		N12   , As3 
	.byte	W12
@ 059   ----------------------------------------
	.byte		        Gn1 
	.byte		N12   , As3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Dn2 , v028
	.byte	W12
	.byte		        Gn2 , v032
	.byte		N12   , Gn3 , v036
	.byte	W12
	.byte		        Dn2 , v028
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 , v032
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Gn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gn2 , v040
	.byte		N12   , Gn3 , v032
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Dn2 , v028
	.byte		N12   , Gn3 , v032
	.byte		N12   , As3 
	.byte	W12
@ 060   ----------------------------------------
	.byte		        Gn1 
	.byte		N12   , As3 , v036
	.byte		N12   , Dn4 , v040
	.byte	W12
	.byte		        Dn2 , v028
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn2 , v032
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 , v036
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , Gn3 , v036
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 , v032
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , As3 
	.byte	W12
@ 061   ----------------------------------------
	.byte		        Gn1 
	.byte		N12   , As3 , v036
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Dn2 , v028
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   
	.byte		N12   , Gn3 , v032
	.byte		N12   , As3 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , As2 , v036
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , Cn3 , v040
	.byte	W12
@ 062   ----------------------------------------
	.byte		        Cn1 , v032
	.byte		N12   , Dn3 , v040
	.byte		N12   , As3 , v036
	.byte	W12
	.byte		        Gn1 , v032
	.byte	W12
	.byte		        Cn2 , v028
	.byte		N12   , Dn3 , v040
	.byte		N12   , Gn3 , v032
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 , v036
	.byte		N12   , As2 
	.byte	W12
	.byte		        Gn1 , v032
	.byte		N12   , Gn2 , v036
	.byte		N12   , Cn3 , v040
	.byte	W12
	.byte		        Cn2 , v036
	.byte		N12   , Gn2 
	.byte		N12   , As2 , v040
	.byte	W12
	.byte		        Gn1 , v028
	.byte		N12   , Gn2 , v032
	.byte		N12   , Cn3 , v040
	.byte	W12
@ 063   ----------------------------------------
	.byte		        Cn1 , v032
	.byte		N12   , Dn3 , v036
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 , v032
	.byte		N12   , Dn3 , v036
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn1 , v032
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 , v036
	.byte		N12   , As2 
	.byte	W12
	.byte		        Gn1 , v032
	.byte		N12   , Gn2 , v036
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        Gn1 , v032
	.byte		N12   , Gn2 , v036
	.byte		N12   , Cn3 
	.byte	W12
@ 064   ----------------------------------------
	.byte		        Dn1 , v032
	.byte		N12   , Dn3 , v036
	.byte		N12   , As3 
	.byte	W12
	.byte		        An1 , v032
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 , v036
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        An1 , v028
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Fs2 , v040
	.byte		N12   , As2 , v036
	.byte	W12
	.byte		        An1 , v032
	.byte		N12   , Fs2 , v040
	.byte		N12   , Cn3 , v036
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , Fs2 , v036
	.byte		N12   , As2 
	.byte	W12
	.byte		        An1 , v028
	.byte		N12   , Fs2 , v040
	.byte		N12   , Cn3 
	.byte	W12
@ 065   ----------------------------------------
	.byte		        Dn1 , v036
	.byte		N12   , Dn3 , v040
	.byte		N12   , As3 , v036
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W48
	.byte		N18   , Cn3 , v032
	.byte	W18
	.byte		        As2 
	.byte	W06
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_guy_billie_eilish_1_032
@ 067   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn2 
@ 068   ----------------------------------------
	.byte		N12   , Gn1 , v036
	.byte		N12   , Gn3 , v040
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , Dn4 , v040
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        As2 
	.byte		N12   , Cs4 , v040
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , Cs4 , v044
	.byte	W12
	.byte		        Gn2 , v040
	.byte		N12   , As3 
	.byte	W12
@ 069   ----------------------------------------
	.byte		        Gn1 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , Dn4 , v044
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        As2 , v044
	.byte		N12   , Cs4 , v032
	.byte	W12
	.byte		        Gn2 , v040
	.byte		N12   , Dn4 , v044
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , Cs4 , v044
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , As3 , v036
	.byte	W12
@ 070   ----------------------------------------
	.byte		        Gn1 , v040
	.byte		N12   , Gn3 , v036
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , Dn4 , v040
	.byte	W12
	.byte		        Gn2 , v044
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        As2 , v044
	.byte		N12   , Cs4 , v040
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , Cs4 , v044
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , As3 , v036
	.byte	W12
@ 071   ----------------------------------------
	.byte		        Gn1 , v040
	.byte		N12   , Gn3 , v036
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn4 , v044
	.byte	W12
	.byte		        Gn2 , v048
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , Gn3 , v040
	.byte	W12
	.byte		        As2 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Dn4 , v044
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , Cs4 , v040
	.byte	W12
	.byte		        Gn2 , v044
	.byte		N12   , As3 , v032
	.byte	W12
@ 072   ----------------------------------------
	.byte		        Cn2 
	.byte		N12   , Cn4 , v040
	.byte	W12
	.byte		        Gn2 , v032
	.byte		N12   , Gn4 , v040
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , Cn4 , v040
	.byte	W12
	.byte		        Ds3 , v036
	.byte		N12   , Fs4 , v040
	.byte	W12
	.byte		        Cn3 , v036
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Gn2 , v032
	.byte		N12   , Fs4 , v044
	.byte	W12
	.byte		        Cn3 , v040
	.byte		N12   , Ds4 
	.byte	W12
@ 073   ----------------------------------------
	.byte		        Cn2 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gn2 , v032
	.byte		N12   , Gn4 , v044
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn2 , v032
	.byte		N12   , Cn4 , v036
	.byte	W12
	.byte		        Ds3 , v044
	.byte		N12   , Fs4 , v032
	.byte	W12
	.byte		        Cn3 , v040
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , Fs4 , v044
	.byte	W12
	.byte		        Cn3 , v032
	.byte		N12   , Ds4 , v036
	.byte	W12
@ 074   ----------------------------------------
	.byte		        Dn2 , v032
	.byte		N12   , Dn4 , v044
	.byte	W12
	.byte		        An2 , v032
	.byte		N12   , An4 , v040
	.byte	W12
	.byte		        Dn3 , v036
	.byte	W12
	.byte		        An2 , v028
	.byte		N12   , Dn4 , v040
	.byte	W12
	.byte		        Fs3 , v036
	.byte		N12   , Fs4 , v044
	.byte	W12
	.byte		        Dn3 , v032
	.byte		N12   , Dn4 , v040
	.byte	W12
	.byte		        An2 , v036
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Cn4 , v044
	.byte	W12
@ 075   ----------------------------------------
	.byte		        Dn2 , v036
	.byte		N12   , Cn4 , v044
	.byte	W24
	.byte		        Dn2 , v036
	.byte	W72
@ 076   ----------------------------------------
	.byte		        Gn1 
	.byte		N12   , Gn3 , v044
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , Dn4 , v040
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , Gn3 , v040
	.byte	W12
	.byte		        As2 , v036
	.byte		N12   , An3 , v040
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , As3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , An3 , v044
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Gn2 , v040
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte	W12
@ 077   ----------------------------------------
	.byte		        Gn1 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , Dn4 , v040
	.byte	W12
	.byte		        Gn2 , v044
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        As2 , v044
	.byte		N12   , An3 , v040
	.byte		N12   , Cs4 , v036
	.byte	W12
	.byte		        Gn2 , v040
	.byte		N12   , As3 , v036
	.byte		N12   , Dn4 , v040
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , An3 , v044
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , As3 , v032
	.byte	W12
@ 078   ----------------------------------------
	.byte		        Gn1 , v040
	.byte		N12   , Gn3 , v036
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Dn4 , v040
	.byte	W12
	.byte		        Gn2 , v044
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        As2 , v044
	.byte		N12   , An3 , v040
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , As3 , v036
	.byte		N12   , Dn4 , v040
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , An3 , v044
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Gn2 , v040
	.byte		N12   , As3 , v036
	.byte	W12
@ 079   ----------------------------------------
	.byte		        Gn1 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , As3 , v032
	.byte		N12   , Dn4 , v044
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N12   , Gn3 , v040
	.byte	W12
	.byte		        As2 
	.byte		N12   , An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , As3 , v036
	.byte		N12   , Dn4 , v040
	.byte	W12
	.byte		        Dn2 , v032
	.byte		N12   , An3 
	.byte		N12   , Cs4 , v040
	.byte	W12
	.byte		        Gn2 , v044
	.byte		N12   , Gn3 , v040
	.byte		N12   , As3 , v032
	.byte	W12
@ 080   ----------------------------------------
	.byte		        Cn2 , v036
	.byte		N12   , Cn4 , v040
	.byte	W12
	.byte		        Gn2 , v032
	.byte		N12   , Gn4 , v040
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , An3 , v040
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cn3 , v036
	.byte		N12   , As3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Gn2 , v032
	.byte		N12   , An3 , v044
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , Ds4 , v040
	.byte	W12
@ 081   ----------------------------------------
	.byte		        Cn2 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gn2 , v032
	.byte		N12   , Gn4 , v044
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn2 , v036
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 , v044
	.byte		N12   , An3 , v040
	.byte		N12   , Fs4 , v032
	.byte	W12
	.byte		        Cn3 , v040
	.byte		N12   , As3 , v036
	.byte		N12   , Gn4 , v040
	.byte	W12
	.byte		        Gn2 , v032
	.byte		N12   , An3 , v044
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cn3 , v036
	.byte		N12   , Ds4 
	.byte	W12
@ 082   ----------------------------------------
	.byte		        Dn2 , v032
	.byte		N12   , An3 , v036
	.byte		N12   , Dn4 , v040
	.byte	W12
	.byte		        An2 , v032
	.byte		N12   , An4 , v040
	.byte	W12
	.byte		        Dn3 , v036
	.byte	W12
	.byte		        An2 , v028
	.byte		N12   , An3 , v040
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 , v036
	.byte		N12   , Fs4 , v044
	.byte	W12
	.byte		        Dn3 , v032
	.byte		N12   , An3 , v044
	.byte		N12   , Dn4 , v040
	.byte	W12
	.byte		        An2 , v036
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Cn4 , v044
	.byte	W12
@ 083   ----------------------------------------
	.byte		N12   
	.byte	W92
	.byte	W03
	.byte		N48   , Gn0 , v040
	.byte		N48   , Gn1 , v044
	.byte	W01
@ 084   ----------------------------------------
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W24
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W36
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W12
	.byte		N72   , Gn0 , v044
	.byte		N72   , Gn1 , v048
	.byte	W12
	.byte		N12   , Dn3 , v044
	.byte		N12   , Gn3 , v040
	.byte		N12   , As3 , v036
	.byte	W12
@ 085   ----------------------------------------
	.byte	W12
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W24
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 , v048
	.byte		N12   , As3 , v040
	.byte	W24
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v032
	.byte	W12
	.byte		        Dn3 , v044
	.byte		N12   , An3 
	.byte		N12   , Cn4 , v048
	.byte	W23
	.byte		N48   , Gn0 , v044
	.byte		N48   , Gn1 , v048
	.byte	W01
@ 086   ----------------------------------------
	.byte		N12   , Dn3 , v040
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte	W24
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v036
	.byte	W36
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v036
	.byte	W11
	.byte		N72   , Gn0 , v048
	.byte		N72   , Gn1 , v044
	.byte	W13
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W12
@ 087   ----------------------------------------
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Gn3 , v044
	.byte		N12   , As3 , v036
	.byte	W24
	.byte		        Dn3 , v048
	.byte		N12   , Gn3 , v040
	.byte		N12   , As3 , v036
	.byte	W24
	.byte		        Dn3 , v040
	.byte		N12   , Gn3 , v044
	.byte		N12   , As3 , v036
	.byte	W12
	.byte		        Dn3 , v040
	.byte		N12   , An3 , v044
	.byte		N12   , Cn4 
	.byte	W24
@ 088   ----------------------------------------
	.byte		N48   , Gn0 
	.byte		N48   , Gn1 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W18
	.byte		N06   , Gn2 , v044
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 , v048
	.byte	W12
	.byte		        An2 
	.byte	W11
	.byte		N72   , Gn1 , v044
	.byte	W01
	.byte		        Gn0 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Gn3 , v040
	.byte		N12   , As3 
	.byte	W12
@ 089   ----------------------------------------
	.byte	W12
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W24
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W24
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 , v040
	.byte		N12   , As3 , v036
	.byte	W12
	.byte		        Dn3 , v040
	.byte		N12   , An3 , v048
	.byte		N12   , Cn4 
	.byte	W24
@ 090   ----------------------------------------
	.byte		N48   , Gn0 , v044
	.byte		N48   , Gn1 , v048
	.byte		N12   , Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W18
	.byte		N06   , Gn2 , v044
	.byte	W06
	.byte		N12   , Cn3 , v048
	.byte	W12
	.byte		        Gn2 , v044
	.byte	W12
	.byte		        Cn3 , v040
	.byte	W12
	.byte		        As2 
	.byte	W11
	.byte		N72   , Gn0 , v044
	.byte		N72   , Gn1 
	.byte	W01
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W12
@ 091   ----------------------------------------
	.byte	W18
	.byte		N06   , An2 , v044
	.byte	W06
	.byte		N18   , As2 , v048
	.byte	W18
	.byte		N06   , An2 , v044
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Dn3 , v040
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v036
	.byte	W12
	.byte		        Dn3 , v040
	.byte		N12   , An3 , v048
	.byte		N12   , Cn4 
	.byte	W24
@ 092   ----------------------------------------
	.byte		N48   , Gn0 , v040
	.byte		N48   , Gn1 , v044
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W18
	.byte		N06   , Gn2 , v044
	.byte	W06
	.byte		N12   , Cn3 , v048
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N06   , Dn3 , v040
	.byte	W06
	.byte		        Ds3 , v048
	.byte	W05
	.byte		N72   , Gn1 , v044
	.byte	W01
	.byte		        Gn0 , v048
	.byte		N12   , Dn3 , v044
	.byte	W12
	.byte		N12   
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v036
	.byte	W12
@ 093   ----------------------------------------
	.byte	W12
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W12
	.byte		        As2 , v044
	.byte	W12
	.byte		N24   , An2 , v048
	.byte	W24
	.byte		N12   , Dn3 , v044
	.byte		N12   , Gn3 , v040
	.byte		N12   , As3 , v036
	.byte	W12
	.byte		        Cn3 , v044
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 094   ----------------------------------------
	.byte		N48   , Gn0 
	.byte		N48   , Gn1 
	.byte		N06   , Fs3 , v040
	.byte	W06
	.byte		        Ds3 , v044
	.byte	W06
	.byte		N36   , As2 
	.byte		N12   , Dn3 , v040
	.byte	W12
	.byte		N18   , Dn3 , v044
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N24   , As2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn3 , v048
	.byte	W11
	.byte		N72   , Gn1 , v044
	.byte	W01
	.byte		        Gn0 
	.byte		N24   , Gn2 
	.byte		N18   , Cn3 , v048
	.byte	W18
	.byte		N06   
	.byte	W06
@ 095   ----------------------------------------
	.byte		N24   , Gn2 , v040
	.byte		N12   , Cn3 , v048
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Gn2 , v040
	.byte		N24   , Cn3 , v044
	.byte	W24
	.byte		N06   , Fs2 
	.byte		N06   , As2 , v040
	.byte	W06
	.byte		        An2 , v044
	.byte	W06
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , An3 , v044
	.byte		N12   , Cn4 , v048
	.byte	W24
@ 096   ----------------------------------------
	.byte		N48   , Gn0 , v044
	.byte		N48   , Gn1 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W24
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W36
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W11
	.byte		N72   , Gn1 , v044
	.byte	W01
	.byte		        Gn0 
	.byte	W12
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 , v040
	.byte		N12   , As3 
	.byte	W12
@ 097   ----------------------------------------
	.byte	W12
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W12
	.byte		        Gn3 , v044
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn3 , v040
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Gn3 , v044
	.byte		N12   , Gn4 
	.byte	W24
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
@ 098   ----------------------------------------
	.byte		N48   , Gn0 , v048
	.byte		N48   , Gn1 
	.byte		N12   , Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W24
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W36
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W11
	.byte		N72   , Gn0 , v044
	.byte		N72   , Gn1 , v048
	.byte	W13
	.byte		N12   , Dn3 , v044
	.byte		N12   , Gn3 , v040
	.byte		N12   , As3 
	.byte	W12
@ 099   ----------------------------------------
	.byte	W12
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W24
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W24
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 , v040
	.byte		N12   , As3 , v036
	.byte	W12
	.byte		        Dn3 , v040
	.byte		N12   , An3 , v048
	.byte		N12   , Cn4 
	.byte	W23
	.byte		N48   , Gn0 , v044
	.byte		N48   , Gn1 
	.byte	W01
@ 100   ----------------------------------------
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W24
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W36
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte	W11
	.byte		N72   , Gn0 , v044
	.byte		N72   , Gn1 , v048
	.byte	W13
	.byte		N12   , Dn3 , v044
	.byte		N12   , Gn3 , v040
	.byte		N12   , As3 
	.byte	W12
@ 101   ----------------------------------------
	.byte	W12
	.byte		        Gn3 , v044
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Gn3 , v048
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn3 , v040
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Gn3 , v044
	.byte		N12   , Gn4 
	.byte	W24
	.byte		N24   , Gn3 , v040
	.byte		N24   , Gn4 
	.byte	W24
@ 102   ----------------------------------------
	.byte		N48   , Gn0 , v044
	.byte		N48   , Gn1 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte		N12   , Dn4 
	.byte	W24
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte		N12   , Dn4 
	.byte	W36
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte		N12   , Dn4 
	.byte	W11
	.byte		N72   , Gn0 , v044
	.byte		N72   , Gn1 , v040
	.byte	W13
	.byte		N12   , Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v036
	.byte		N12   , Dn4 , v040
	.byte	W12
@ 103   ----------------------------------------
	.byte	W12
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte		N12   , Dn4 
	.byte	W24
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte		N12   , Dn4 
	.byte	W24
	.byte		        Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v036
	.byte		N12   , Dn4 , v040
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , An3 , v044
	.byte		N12   , Cn4 , v048
	.byte		N12   , Dn4 , v040
	.byte	W24
@ 104   ----------------------------------------
	.byte		        Gn0 , v044
	.byte		N12   , Gn1 
	.byte		N12   , Gn3 
	.byte		N12   , As3 , v040
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 , v044
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

mus_bad_guy_billie_eilish:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_bad_guy_billie_eilish_pri	@ Priority
	.byte	mus_bad_guy_billie_eilish_rev	@ Reverb.

	.word	mus_bad_guy_billie_eilish_grp

	.word	mus_bad_guy_billie_eilish_1

	.end
