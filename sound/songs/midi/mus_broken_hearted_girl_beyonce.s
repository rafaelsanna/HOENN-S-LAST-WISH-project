	.include "MPlayDef.s"

	.equ	mus_broken_hearted_girl_beyonce_grp, voicegroup_pink_and_white
	.equ	mus_broken_hearted_girl_beyonce_pri, 0
	.equ	mus_broken_hearted_girl_beyonce_rev, reverb_set+12
	.equ	mus_broken_hearted_girl_beyonce_mvl, 84
	.equ	mus_broken_hearted_girl_beyonce_key, 0
	.equ	mus_broken_hearted_girl_beyonce_tbs, 1
	.equ	mus_broken_hearted_girl_beyonce_exg, 1
	.equ	mus_broken_hearted_girl_beyonce_cmp, 1

	.section .rodata
	.global	mus_broken_hearted_girl_beyonce
	.align	2

@**************** Track 1 (Midi-Chn.2) ****************@

mus_broken_hearted_girl_beyonce_1:
	.byte	KEYSH , mus_broken_hearted_girl_beyonce_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
@ 002   ----------------------------------------
@ 003   ----------------------------------------
@ 004   ----------------------------------------
@ 005   ----------------------------------------
@ 006   ----------------------------------------
@ 007   ----------------------------------------
@ 008   ----------------------------------------
@ 009   ----------------------------------------
@ 010   ----------------------------------------
	.byte	TEMPO , 120*mus_broken_hearted_girl_beyonce_tbs/2
	.byte	TEMPO , 83*mus_broken_hearted_girl_beyonce_tbs/2
	.byte	TEMPO , 85*mus_broken_hearted_girl_beyonce_tbs/2
	.byte	TEMPO , 83*mus_broken_hearted_girl_beyonce_tbs/2
	.byte	TEMPO , 83*mus_broken_hearted_girl_beyonce_tbs/2
	.byte	TEMPO , 83*mus_broken_hearted_girl_beyonce_tbs/2
	.byte	TEMPO , 83*mus_broken_hearted_girl_beyonce_tbs/2
	.byte	TEMPO , 83*mus_broken_hearted_girl_beyonce_tbs/2
	.byte	TEMPO , 83*mus_broken_hearted_girl_beyonce_tbs/2
	.byte	TEMPO , 83*mus_broken_hearted_girl_beyonce_tbs/2
	.byte	TEMPO , 83*mus_broken_hearted_girl_beyonce_tbs/2
	.byte		VOICE , 33
	.byte		VOL   , 127*mus_broken_hearted_girl_beyonce_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N66   , Dn2 , v104
	.byte	W66
	.byte		N06   , Dn3 , v076
	.byte	W06
	.byte	W18
	.byte		        As2 
	.byte	W06
@ 011   ----------------------------------------
	.byte		N66   , As1 , v104
	.byte	W66
	.byte		N06   , As2 , v076
	.byte	W06
	.byte	W18
	.byte		        Fn3 
	.byte	W06
@ 012   ----------------------------------------
mus_broken_hearted_girl_beyonce_1_012:
	.byte		N72   , Fn1 , v076
	.byte	W72
	.byte	PEND
	.byte		N24   
	.byte	W24
@ 013   ----------------------------------------
	.byte		N96   , En1 
	.byte	W96
@ 014   ----------------------------------------
mus_broken_hearted_girl_beyonce_1_014:
	.byte	TEMPO , 85*mus_broken_hearted_girl_beyonce_tbs/2
	.byte		N66   , Dn2 , v104
	.byte	W66
	.byte	PEND
	.byte		N06   , Dn3 , v076
	.byte	W06
	.byte	W18
	.byte		        As2 
	.byte	W06
@ 015   ----------------------------------------
	.byte		N66   , As1 , v104
	.byte	W66
	.byte		N06   , As2 , v076
	.byte	W06
	.byte	W18
	.byte		        Fn3 
	.byte	W06
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_1_012
	.byte		N24   , Fn1 , v076
	.byte	W24
@ 017   ----------------------------------------
	.byte		N96   , En1 
	.byte	W96
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_1_014
	.byte		N06   , Dn3 , v076
	.byte	W06
	.byte	W18
	.byte		        As2 
	.byte	W06
@ 019   ----------------------------------------
	.byte		N66   , As1 , v104
	.byte	W66
	.byte		N06   , As2 , v076
	.byte	W06
	.byte	W18
	.byte		        Fn3 
	.byte	W06
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_1_012
	.byte		N24   , Fn1 , v076
	.byte	W24
@ 021   ----------------------------------------
	.byte		N96   , En1 
	.byte	W96
@ 022   ----------------------------------------
	.byte		        Gn1 , v104
	.byte	W96
@ 023   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 024   ----------------------------------------
	.byte		        Fn2 
	.byte	W96
@ 025   ----------------------------------------
	.byte		        En2 
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 027   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 028   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 029   ----------------------------------------
	.byte		        Cn2 
	.byte	W96
@ 030   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 031   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 032   ----------------------------------------
	.byte	TEMPO , 85*mus_broken_hearted_girl_beyonce_tbs/2
	.byte		        Fn1 
	.byte	W96
@ 033   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 034   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 035   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 036   ----------------------------------------
	.byte		        Fn1 
	.byte	W96
@ 037   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 038   ----------------------------------------
	.byte		N66   , Gn1 
	.byte	W66
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
@ 039   ----------------------------------------
	.byte		N96   , As1 
	.byte	W96
@ 040   ----------------------------------------
	.byte		N42   , Dn2 
	.byte	W42
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N42   , Cn2 
	.byte	W42
	.byte		N06   , As0 
	.byte	W06
@ 041   ----------------------------------------
	.byte		N96   , As1 
	.byte	W96
@ 042   ----------------------------------------
	.byte	TEMPO , 85*mus_broken_hearted_girl_beyonce_tbs/2
	.byte		N66   , Dn3 , v048
	.byte	W66
	.byte		N06   , Dn4 
	.byte	W06
	.byte	W18
	.byte		        As3 
	.byte	W06
@ 043   ----------------------------------------
	.byte		N66   , As2 
	.byte	W66
	.byte		N06   , As3 
	.byte	W06
	.byte	W18
	.byte		        Fn4 
	.byte	W06
@ 044   ----------------------------------------
	.byte		N72   , Fn2 
	.byte	W72
	.byte		N24   
	.byte	W24
@ 045   ----------------------------------------
	.byte		N96   , En2 
	.byte	W96
@ 046   ----------------------------------------
	.byte		N66   , Dn2 , v104
	.byte	W66
	.byte		N06   , Dn3 , v076
	.byte	W06
	.byte	W18
	.byte		        As2 , v104
	.byte	W06
@ 047   ----------------------------------------
	.byte		N66   , As1 
	.byte	W66
	.byte		N06   , As2 , v076
	.byte	W06
	.byte	W18
	.byte		        Fn3 
	.byte	W06
@ 048   ----------------------------------------
mus_broken_hearted_girl_beyonce_1_048:
	.byte		N96   , Fn2 , v076
	.byte	W96
	.byte	PEND
@ 049   ----------------------------------------
mus_broken_hearted_girl_beyonce_1_049:
	.byte		N96   , En2 , v076
	.byte	W96
	.byte	PEND
@ 050   ----------------------------------------
	.byte		N66   , Dn2 , v104
	.byte	W66
	.byte	W24
	.byte		N06   , As2 
	.byte	W06
@ 051   ----------------------------------------
	.byte		N66   , As1 
	.byte	W66
	.byte		N06   , As2 , v076
	.byte	W06
	.byte	W18
	.byte		        Fn3 
	.byte	W06
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_1_048
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_1_049
@ 054   ----------------------------------------
	.byte		N78   , Gn1 , v104
	.byte	W78
	.byte		N06   
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
@ 055   ----------------------------------------
	.byte		N96   , As1 
	.byte	W96
@ 056   ----------------------------------------
	.byte		        Fn1 
	.byte	W96
@ 057   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 058   ----------------------------------------
	.byte		N72   , Gn1 
	.byte	W72
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
@ 059   ----------------------------------------
	.byte		N96   , As1 
	.byte	W96
@ 060   ----------------------------------------
	.byte		N90   , Fn1 
	.byte	W90
	.byte		N06   , En1 
	.byte	W06
@ 061   ----------------------------------------
	.byte		N42   , Cn2 
	.byte	W42
	.byte		N06   , En1 
	.byte	W06
	.byte		N48   , Cn2 
	.byte	W48
@ 062   ----------------------------------------
	.byte		N96   , Dn2 
	.byte	W96
@ 063   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 064   ----------------------------------------
	.byte		        Fn1 
	.byte	W96
@ 065   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 066   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 067   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 068   ----------------------------------------
	.byte		        Fn1 
	.byte	W96
@ 069   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 070   ----------------------------------------
	.byte		N78   , Gn1 
	.byte	W78
	.byte		N06   
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
@ 071   ----------------------------------------
	.byte		N96   , As1 
	.byte	W96
@ 072   ----------------------------------------
	.byte		N48   , Dn2 
	.byte	W48
	.byte		N42   , Cn2 
	.byte	W42
	.byte		N06   , As0 
	.byte	W06
@ 073   ----------------------------------------
	.byte		N96   , As1 
	.byte	W96
@ 074   ----------------------------------------
	.byte		N90   , Gn1 
	.byte	W90
	.byte		N06   , As0 
	.byte	W06
@ 075   ----------------------------------------
	.byte		N96   , Dn2 
	.byte	W96
@ 076   ----------------------------------------
	.byte		N90   , Gn1 
	.byte	W90
	.byte		N06   , As0 
	.byte	W06
@ 077   ----------------------------------------
	.byte		N48   , Dn2 
	.byte	W48
	.byte		N24   , Cn2 
	.byte	W24
	.byte		        An1 
	.byte	W24
@ 078   ----------------------------------------
	.byte		N96   , As1 
	.byte	W96
@ 079   ----------------------------------------
	.byte		        An1 
	.byte	W96
@ 080   ----------------------------------------
	.byte		N24   , As1 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		        Fn1 
	.byte	W24
@ 081   ----------------------------------------
	.byte		N48   , Gn1 
	.byte	W48
	.byte		        An1 
	.byte	W48
@ 082   ----------------------------------------
	.byte		N96   , Dn3 , v060
	.byte	W96
@ 083   ----------------------------------------
	.byte		N66   , As2 
	.byte	W66
	.byte		N06   , As3 
	.byte	W06
	.byte	W18
	.byte		        Fn4 
	.byte	W06
@ 084   ----------------------------------------
	.byte		N96   , Fn3 
	.byte	W96
@ 085   ----------------------------------------
	.byte		        En3 
	.byte	W96
@ 086   ----------------------------------------
	.byte		        Dn2 , v104
	.byte	W96
@ 087   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 088   ----------------------------------------
	.byte		        Fn1 
	.byte	W96
@ 089   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 090   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 091   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 092   ----------------------------------------
	.byte		        Fn1 
	.byte	W96
@ 093   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 094   ----------------------------------------
	.byte		N66   , Gn1 
	.byte	W66
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
@ 095   ----------------------------------------
	.byte		N96   , As1 
	.byte	W96
@ 096   ----------------------------------------
	.byte		N42   , Dn2 
	.byte	W42
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N42   , Cn2 
	.byte	W42
	.byte		N06   , As0 
	.byte	W06
@ 097   ----------------------------------------
	.byte		N96   , As1 
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	W36
	.byte	TEMPO , 80*mus_broken_hearted_girl_beyonce_tbs/2
	.byte	W54
	.byte	TEMPO , 80*mus_broken_hearted_girl_beyonce_tbs/2
	.byte	W06
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	W24
	.byte		N72   , Fn1 
	.byte	W72
@ 105   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_broken_hearted_girl_beyonce_2:
	.byte	KEYSH , mus_broken_hearted_girl_beyonce_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
@ 002   ----------------------------------------
@ 003   ----------------------------------------
@ 004   ----------------------------------------
@ 005   ----------------------------------------
@ 006   ----------------------------------------
@ 007   ----------------------------------------
@ 008   ----------------------------------------
@ 009   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 127*mus_broken_hearted_girl_beyonce_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N24   , Fn3 , v104
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
@ 010   ----------------------------------------
mus_broken_hearted_girl_beyonce_2_010:
	.byte		N24   , Fn3 , v104
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
	.byte		        Fn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N12   , As3 
	.byte	W12
@ 011   ----------------------------------------
mus_broken_hearted_girl_beyonce_2_011:
	.byte		N24   , Fn3 , v104
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte	PEND
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 012   ----------------------------------------
	.byte		N24   , En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
@ 013   ----------------------------------------
mus_broken_hearted_girl_beyonce_2_013:
	.byte		N24   , Fn3 , v104
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_010
	.byte		N24   , Fn3 , v104
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N12   , As3 
	.byte	W12
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_011
	.byte		N24   , Fn3 , v104
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N24   , En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_013
	.byte		N24   , Fn3 , v104
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_010
	.byte		N24   , Fn3 , v104
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N12   , As3 
	.byte	W12
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_011
	.byte		N24   , Fn3 , v104
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N24   , En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
@ 021   ----------------------------------------
mus_broken_hearted_girl_beyonce_2_021:
	.byte		N24   , Dn3 , v104
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
	.byte	PEND
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
@ 022   ----------------------------------------
mus_broken_hearted_girl_beyonce_2_022:
	.byte		N24   , Dn3 , v104
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte	PEND
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
@ 023   ----------------------------------------
mus_broken_hearted_girl_beyonce_2_023:
	.byte		N24   , Fn3 , v104
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte	PEND
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
@ 024   ----------------------------------------
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_021
	.byte		N24   , Dn3 , v104
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_022
	.byte		N24   , Dn3 , v104
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_023
	.byte		N24   , Fn3 , v104
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
@ 028   ----------------------------------------
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
@ 029   ----------------------------------------
mus_broken_hearted_girl_beyonce_2_029:
	.byte		N24   , Dn3 , v104
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte	PEND
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_022
	.byte		N24   , Dn3 , v104
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_023
	.byte		N24   , Fn3 , v104
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
@ 032   ----------------------------------------
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_029
	.byte		N24   , Dn3 , v104
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_022
	.byte		N24   , Dn3 , v104
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_023
	.byte		N24   , Fn3 , v104
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
@ 036   ----------------------------------------
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
@ 037   ----------------------------------------
	.byte		        Gn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Gn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Gn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Gn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
@ 038   ----------------------------------------
	.byte		        Fn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
@ 039   ----------------------------------------
	.byte		N48   , Dn3 
	.byte		N48   , Fn3 
	.byte		N48   , An3 
	.byte	W48
	.byte		        Cn3 
	.byte		N48   , En3 
	.byte		N48   , Gn3 
	.byte	W48
@ 040   ----------------------------------------
	.byte		N72   , As2 
	.byte		N72   , Dn3 
	.byte		N72   , Fn3 
	.byte	W72
	.byte	W24
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_013
	.byte		N24   , Fn3 , v104
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_010
	.byte		N24   , Fn3 , v104
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N12   , As3 
	.byte	W12
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_011
	.byte		N24   , Fn3 , v104
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 044   ----------------------------------------
	.byte		N24   , En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
@ 045   ----------------------------------------
mus_broken_hearted_girl_beyonce_2_045:
	.byte		N24   , Fn3 , v092
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 046   ----------------------------------------
mus_broken_hearted_girl_beyonce_2_046:
	.byte		N24   , Dn3 , v092
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte	PEND
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
@ 047   ----------------------------------------
mus_broken_hearted_girl_beyonce_2_047:
	.byte		N24   , Fn3 , v092
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte	PEND
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 048   ----------------------------------------
	.byte		N24   , En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_045
	.byte		N24   , Fn3 , v092
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_046
	.byte		N24   , Dn3 , v092
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		N18   , Dn3 
	.byte		N18   , Fn3 
	.byte		N18   , As3 
	.byte	W18
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 051   ----------------------------------------
	.byte		N03   , Gn3 
	.byte	W03
	.byte		N05   , Fn3 
	.byte		N21   , An3 
	.byte	W03
	.byte		N18   , Cn4 
	.byte	W02
	.byte	W16
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 052   ----------------------------------------
	.byte		N24   , En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N12   , En3 
	.byte		N12   , Gn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N18   
	.byte		N18   , Dn4 
	.byte	W18
	.byte		        Fn3 
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte	W12
@ 053   ----------------------------------------
mus_broken_hearted_girl_beyonce_2_053:
	.byte		N24   , Dn3 , v092
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
	.byte	PEND
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		N06   , Dn3 
	.byte		N06   , Gn3 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_046
	.byte		N24   , Dn3 , v092
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
@ 055   ----------------------------------------
mus_broken_hearted_girl_beyonce_2_055:
	.byte		N24   , Cn3 , v092
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte	PEND
	.byte		        Cn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Cn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Cn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
@ 056   ----------------------------------------
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_053
	.byte		N24   , Dn3 , v092
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_046
	.byte		N24   , Dn3 , v092
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_055
	.byte		N24   , Cn3 , v092
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Cn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Cn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
@ 060   ----------------------------------------
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
@ 061   ----------------------------------------
mus_broken_hearted_girl_beyonce_2_061:
	.byte		N24   , Fn3 , v060
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
@ 062   ----------------------------------------
mus_broken_hearted_girl_beyonce_2_062:
	.byte		N24   , Fn3 , v060
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
	.byte		        Fn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
@ 063   ----------------------------------------
mus_broken_hearted_girl_beyonce_2_063:
	.byte		N24   , Fn3 , v060
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte	PEND
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
@ 064   ----------------------------------------
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_061
	.byte		N24   , Fn3 , v060
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_062
	.byte		N24   , Fn3 , v060
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_063
	.byte		N24   , Fn3 , v060
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
@ 068   ----------------------------------------
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
@ 069   ----------------------------------------
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
@ 070   ----------------------------------------
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
@ 071   ----------------------------------------
	.byte		N48   , Dn3 
	.byte		N48   , Fn3 
	.byte		N48   , An3 
	.byte	W48
	.byte		        Cn3 
	.byte		N48   , En3 
	.byte		N48   , Gn3 
	.byte	W48
@ 072   ----------------------------------------
	.byte		N72   , As2 
	.byte		N72   , Dn3 
	.byte		N72   , Fn3 
	.byte	W72
	.byte	W24
@ 073   ----------------------------------------
mus_broken_hearted_girl_beyonce_2_073:
	.byte		N24   , As2 , v092
	.byte		N24   , Dn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte	PEND
	.byte		        As2 
	.byte		N24   , Dn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N18   , As2 
	.byte		N18   , Dn3 
	.byte		N18   , Gn3 
	.byte	W18
	.byte		N06   , As2 
	.byte	W06
	.byte		N18   
	.byte		N18   , Dn3 
	.byte		N18   , Gn3 
	.byte	W18
	.byte		N06   , As2 
	.byte	W06
@ 074   ----------------------------------------
mus_broken_hearted_girl_beyonce_2_074:
	.byte		N24   , An2 , v092
	.byte		N24   , Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte	PEND
	.byte		        An2 
	.byte		N24   , Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        An2 
	.byte		N24   , Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        An2 
	.byte		N24   , Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_073
	.byte		N24   , As2 , v092
	.byte		N24   , Dn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N18   , As2 
	.byte		N18   , Dn3 
	.byte		N18   , Gn3 
	.byte	W18
	.byte		N06   , As2 
	.byte	W06
	.byte		N18   
	.byte		N18   , Dn3 
	.byte		N18   , Gn3 
	.byte	W18
	.byte		N06   , As2 
	.byte	W06
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_074
	.byte		N24   , An2 , v092
	.byte		N24   , Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        An2 
	.byte		N24   , Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        An2 
	.byte		N24   , Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
@ 077   ----------------------------------------
	.byte		        Fn2 
	.byte		N24   , As2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Fn2 
	.byte		N24   , As2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Fn2 
	.byte		N24   , As2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Fn2 
	.byte		N24   , As2 
	.byte		N24   , Dn3 
	.byte	W24
@ 078   ----------------------------------------
	.byte		        Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte		        Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte		        Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte	W24
	.byte		        Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte	W24
@ 079   ----------------------------------------
	.byte		        As2 
	.byte		N24   , Dn3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        An2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , As2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Fn2 
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte	W24
@ 080   ----------------------------------------
	.byte		N48   , Gn2 
	.byte		N48   , As2 
	.byte		N48   , Dn3 
	.byte	W48
	.byte		        An2 
	.byte		N48   , Cs3 
	.byte		N48   , En3 
	.byte	W48
@ 081   ----------------------------------------
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        An3 
	.byte		N24   , Dn4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        An3 
	.byte		N24   , Dn4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        An3 
	.byte		N24   , Dn4 
	.byte		N24   , Fn4 
	.byte	W24
@ 082   ----------------------------------------
	.byte		        As3 
	.byte		N24   , Dn4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        As3 
	.byte		N24   , Dn4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        As3 
	.byte		N24   , Dn4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        As3 
	.byte		N24   , Dn4 
	.byte		N24   , Fn4 
	.byte	W24
@ 083   ----------------------------------------
	.byte		        An3 
	.byte		N24   , Cn4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        An3 
	.byte		N24   , Cn4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        An3 
	.byte		N24   , Cn4 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        An3 
	.byte		N24   , Cn4 
	.byte		N24   , Fn4 
	.byte	W24
@ 084   ----------------------------------------
	.byte		N96   , Gn3 
	.byte		N96   , Cn4 
	.byte		N96   , En4 
	.byte	W96
@ 085   ----------------------------------------
mus_broken_hearted_girl_beyonce_2_085:
	.byte		N24   , Dn3 , v092
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte	PEND
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_046
	.byte		N24   , Dn3 , v092
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_047
	.byte		N24   , Fn3 , v092
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
@ 088   ----------------------------------------
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_085
	.byte		N24   , Dn3 , v092
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_046
	.byte		N24   , Dn3 , v092
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W24
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_047
	.byte		N24   , Fn3 , v092
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
@ 092   ----------------------------------------
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gn3 
	.byte		N24   , Cn4 
	.byte	W24
@ 093   ----------------------------------------
	.byte		        Gn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Gn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Gn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Gn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
@ 094   ----------------------------------------
mus_broken_hearted_girl_beyonce_2_094:
	.byte		N24   , Fn3 , v092
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
	.byte		        Fn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
@ 095   ----------------------------------------
	.byte		N48   , Dn3 
	.byte		N48   , Fn3 
	.byte		N48   , An3 
	.byte	W48
	.byte		        Cn3 
	.byte		N48   , En3 
	.byte		N48   , Gn3 
	.byte	W48
@ 096   ----------------------------------------
	.byte		N72   , As2 
	.byte		N72   , Dn3 
	.byte		N72   , Fn3 
	.byte	W72
	.byte	W24
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_045
	.byte		N24   , Fn3 , v092
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_2_094
	.byte		N24   , Fn3 , v092
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
@ 099   ----------------------------------------
	.byte		N36   , Fn3 
	.byte		N36   , An3 
	.byte		N36   , Cn4 
	.byte	W36
	.byte		N06   , As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N42   , En3 
	.byte		N42   , Gn3 
	.byte		N42   , Cn4 
	.byte	W42
	.byte		N06   , An3 
	.byte	W06
@ 100   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		N78   , Dn3 
	.byte		N72   , Fn3 
	.byte		N72   , As3 
	.byte	W72
	.byte	W06
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 101   ----------------------------------------
	.byte		N36   , Dn3 
	.byte		N36   , Fn3 
	.byte		N36   , An3 
	.byte	W36
	.byte		N06   , As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N36   , Cn3 
	.byte		N36   , En3 
	.byte		N36   , Gn3 
	.byte	W36
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 102   ----------------------------------------
	.byte		N66   , As2 
	.byte		N72   , Dn3 
	.byte		N72   , Fn3 
	.byte	W66
	.byte	W06
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 103   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N72   , Fn2 
	.byte		N72   , An2 
	.byte		N72   , Cn3 
	.byte	W72
@ 104   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.4) ****************@

mus_broken_hearted_girl_beyonce_3:
	.byte	KEYSH , mus_broken_hearted_girl_beyonce_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
@ 002   ----------------------------------------
@ 003   ----------------------------------------
@ 004   ----------------------------------------
@ 005   ----------------------------------------
@ 006   ----------------------------------------
@ 007   ----------------------------------------
@ 008   ----------------------------------------
@ 009   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 127*mus_broken_hearted_girl_beyonce_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W18
	.byte		N06   , An2 , v104
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Fn3 
	.byte	W12
@ 014   ----------------------------------------
	.byte	W18
	.byte		N06   , An2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   
	.byte	W12
@ 015   ----------------------------------------
	.byte	W18
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   
	.byte	W12
@ 016   ----------------------------------------
	.byte	W18
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 017   ----------------------------------------
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Fn3 
	.byte	W12
@ 018   ----------------------------------------
	.byte	W18
	.byte		N06   , An2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   
	.byte	W12
@ 019   ----------------------------------------
	.byte	W18
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   , Gn2 
	.byte	W24
@ 020   ----------------------------------------
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N18   , Dn3 
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N12   , An2 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N18   , As2 
	.byte	W18
	.byte		N12   , An2 
	.byte	W12
	.byte	W06
	.byte		        Fn2 
	.byte	W12
	.byte		N18   , As2 
	.byte	W18
	.byte		N12   , An2 
	.byte	W12
	.byte	W06
	.byte		        Fn2 
	.byte	W12
@ 022   ----------------------------------------
	.byte		N18   , As2 
	.byte	W18
	.byte		N12   , An2 
	.byte	W12
	.byte	W06
	.byte		N08   , Fn2 
	.byte	W08
	.byte	W04
	.byte		N36   , As2 
	.byte	W36
	.byte		N12   , Fn2 
	.byte	W12
@ 023   ----------------------------------------
	.byte		N18   , Gn2 
	.byte	W18
	.byte		N12   , An2 
	.byte	W12
	.byte	W06
	.byte		        Fn2 
	.byte	W12
	.byte		N18   , Gn2 
	.byte	W18
	.byte		N12   , An2 
	.byte	W12
	.byte	W06
	.byte		        Fn2 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N18   , Gn2 
	.byte	W18
	.byte		N12   , An2 
	.byte	W12
	.byte	W06
	.byte		        Fn2 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte	W06
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 025   ----------------------------------------
	.byte		N18   , As2 
	.byte	W18
	.byte		N12   , An2 
	.byte	W12
	.byte	W06
	.byte		        Fn2 
	.byte	W12
	.byte		N18   , As2 
	.byte	W18
	.byte		N12   , An2 
	.byte	W12
	.byte	W06
	.byte		        Fn2 
	.byte	W12
@ 026   ----------------------------------------
	.byte		N18   , As2 
	.byte	W18
	.byte		N12   , An2 
	.byte	W12
	.byte	W06
	.byte		        Fn2 
	.byte	W12
	.byte		N36   , As2 
	.byte	W36
	.byte		N12   , Fn2 
	.byte	W12
@ 027   ----------------------------------------
	.byte		N18   , Dn3 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N08   
	.byte	W08
	.byte	W04
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
@ 028   ----------------------------------------
	.byte		N18   , Dn3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N18   , Gn3 
	.byte	W18
@ 029   ----------------------------------------
	.byte		N06   , An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N36   
	.byte	W36
@ 030   ----------------------------------------
	.byte		N06   , An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N30   , Gn3 
	.byte	W30
	.byte		N06   , Fn3 
	.byte	W06
@ 031   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		        Dn3 
	.byte	W18
@ 032   ----------------------------------------
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
@ 033   ----------------------------------------
	.byte		N18   , Fn3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		N08   , Cn3 
	.byte	W08
	.byte	W04
	.byte		N18   , Fn3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		N08   , Cn3 
	.byte	W08
	.byte	W04
@ 034   ----------------------------------------
	.byte		N18   , Fn3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N36   , Fn3 
	.byte	W36
	.byte		N12   
	.byte	W12
@ 035   ----------------------------------------
	.byte		N18   , An3 
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		N08   , Fn3 
	.byte	W08
	.byte	W04
	.byte		N18   , An3 
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		N08   , Fn3 
	.byte	W08
	.byte	W04
@ 036   ----------------------------------------
	.byte		N18   , An3 
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		N08   , Fn3 
	.byte	W08
	.byte	W04
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 037   ----------------------------------------
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N24   , Fn3 
	.byte	W24
@ 038   ----------------------------------------
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N42   , An3 
	.byte	W06
@ 039   ----------------------------------------
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N48   , Gn3 
	.byte	W48
	.byte		N06   
	.byte	W06
@ 040   ----------------------------------------
	.byte		N48   , Fn3 
	.byte	W48
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 041   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte	W60
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W18
	.byte		N06   , An2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Fn3 
	.byte	W12
@ 046   ----------------------------------------
	.byte	W18
	.byte		N06   , An2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   
	.byte	W12
@ 047   ----------------------------------------
	.byte	W18
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   
	.byte	W12
@ 048   ----------------------------------------
	.byte	W18
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 049   ----------------------------------------
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , Fn3 
	.byte	W12
@ 050   ----------------------------------------
	.byte	W18
	.byte		N06   , An2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   
	.byte	W12
@ 051   ----------------------------------------
	.byte	W18
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   , Gn2 
	.byte	W24
@ 052   ----------------------------------------
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N18   , En3 
	.byte	W18
	.byte		        Fn3 
	.byte	W18
	.byte		N12   , An3 
	.byte	W12
@ 053   ----------------------------------------
	.byte		N18   , As3 
	.byte	W18
	.byte		        An3 
	.byte	W18
	.byte		N08   , Fn3 
	.byte	W08
	.byte	W04
	.byte		N18   , As3 
	.byte	W18
	.byte		        An3 
	.byte	W18
	.byte		N08   , Fn3 
	.byte	W08
	.byte	W04
@ 054   ----------------------------------------
	.byte		N18   , As3 
	.byte	W18
	.byte		        An3 
	.byte	W18
	.byte		N08   , Fn3 
	.byte	W08
	.byte	W04
	.byte		N36   , As3 
	.byte	W36
	.byte		N12   , Fn3 
	.byte	W12
@ 055   ----------------------------------------
	.byte		N18   , Gn3 
	.byte	W18
	.byte		        An3 
	.byte	W18
	.byte		N08   , Fn3 
	.byte	W08
	.byte	W04
	.byte		N18   , Gn3 
	.byte	W18
	.byte		        An3 
	.byte	W18
	.byte		N08   , Fn3 
	.byte	W08
	.byte	W04
@ 056   ----------------------------------------
	.byte		N18   , Gn3 
	.byte	W18
	.byte		        An3 
	.byte	W18
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N30   , Gn3 
	.byte	W30
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 057   ----------------------------------------
	.byte		N18   , As3 
	.byte	W18
	.byte		        An3 
	.byte	W18
	.byte		N08   , Fn3 
	.byte	W08
	.byte	W04
	.byte		N18   , As3 
	.byte	W18
	.byte		        An3 
	.byte	W18
	.byte		N08   , Fn3 
	.byte	W08
	.byte	W04
@ 058   ----------------------------------------
	.byte		N18   , As3 
	.byte	W18
	.byte		        An3 
	.byte	W18
	.byte		N08   , Fn3 
	.byte	W08
	.byte	W04
	.byte		N36   , As3 
	.byte	W36
	.byte		N12   , Fn3 
	.byte	W12
@ 059   ----------------------------------------
	.byte		N18   , Gn3 
	.byte	W18
	.byte		        An3 
	.byte	W18
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , An3 
	.byte	W06
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N12   
	.byte	W12
@ 060   ----------------------------------------
	.byte		N18   , Dn4 
	.byte	W18
	.byte		        Cn4 
	.byte	W18
	.byte		N12   , An3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte	W12
@ 061   ----------------------------------------
	.byte		N06   , An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N36   
	.byte	W36
@ 062   ----------------------------------------
	.byte		N06   , An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N30   , Gn3 
	.byte	W30
	.byte		N06   , Fn3 
	.byte	W06
@ 063   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		        Dn3 
	.byte	W18
@ 064   ----------------------------------------
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
@ 065   ----------------------------------------
	.byte		N18   , Fn3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		N08   , Cn3 
	.byte	W08
	.byte	W04
	.byte		N18   , Fn3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		N08   , Cn3 
	.byte	W08
	.byte	W04
@ 066   ----------------------------------------
	.byte		N18   , Fn3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N36   , Fn3 
	.byte	W36
	.byte		N12   
	.byte	W12
@ 067   ----------------------------------------
	.byte		N18   , An3 
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		N08   , Fn3 
	.byte	W08
	.byte	W04
	.byte		N18   , An3 
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		N08   , Fn3 
	.byte	W08
	.byte	W04
@ 068   ----------------------------------------
	.byte		N18   , An3 
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		N08   , Fn3 
	.byte	W08
	.byte	W04
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 069   ----------------------------------------
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N24   , Fn3 
	.byte	W24
@ 070   ----------------------------------------
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N42   , An3 
	.byte	W06
@ 071   ----------------------------------------
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N48   , Gn3 
	.byte	W48
	.byte		N06   
	.byte	W06
@ 072   ----------------------------------------
	.byte		N36   , Fn3 
	.byte	W36
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
@ 073   ----------------------------------------
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N18   , Cn4 
	.byte	W18
@ 074   ----------------------------------------
	.byte		N12   , As3 
	.byte	W12
	.byte		N06   , An3 
	.byte	W06
	.byte		N48   
	.byte	W48
	.byte	W30
@ 075   ----------------------------------------
	.byte	W18
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W12
@ 076   ----------------------------------------
	.byte		N06   , As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N48   , An3 
	.byte	W48
	.byte	W12
@ 077   ----------------------------------------
	.byte	W18
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   
	.byte	W18
@ 078   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N42   
	.byte	W42
	.byte		N06   
	.byte	W06
	.byte		N12   , As3 
	.byte	W12
	.byte		N18   , Cn4 
	.byte	W18
@ 079   ----------------------------------------
	.byte		N24   , As3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 080   ----------------------------------------
	.byte		N36   , Gn3 
	.byte	W36
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N06   , An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   , Fn4 
	.byte	W12
@ 081   ----------------------------------------
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		N06   , En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 082   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N18   , Dn3 
	.byte	W18
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte		N06   , An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N36   
	.byte	W36
@ 086   ----------------------------------------
	.byte		N06   , An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N30   , Gn3 
	.byte	W30
	.byte		N06   , Fn3 
	.byte	W06
@ 087   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		        Dn3 
	.byte	W18
@ 088   ----------------------------------------
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
@ 089   ----------------------------------------
	.byte		N18   , Fn3 
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W12
	.byte	W06
	.byte		        En3 
	.byte	W12
	.byte		N18   , Fn3 
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W12
	.byte	W06
	.byte		        En3 
	.byte	W12
@ 090   ----------------------------------------
	.byte		N18   , Fn3 
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W12
	.byte	W06
	.byte		        En3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 091   ----------------------------------------
	.byte		N18   , An3 
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		N08   , Fn3 
	.byte	W08
	.byte	W04
	.byte		N18   , An3 
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		N08   , Fn3 
	.byte	W08
	.byte	W04
@ 092   ----------------------------------------
	.byte		N18   , An3 
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		N08   , Fn3 
	.byte	W08
	.byte	W04
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 093   ----------------------------------------
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N24   , Fn3 
	.byte	W24
@ 094   ----------------------------------------
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N42   , An3 
	.byte	W06
@ 095   ----------------------------------------
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N48   , Gn3 
	.byte	W48
	.byte		N06   
	.byte	W06
@ 096   ----------------------------------------
	.byte		N36   , Fn3 
	.byte	W36
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
@ 097   ----------------------------------------
	.byte		N36   , Fn3 
	.byte	W36
	.byte	W60
@ 098   ----------------------------------------
	.byte	W48
	.byte		N12   , As3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N12   , An3 
	.byte	W12
@ 099   ----------------------------------------
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		N42   , Gn3 
	.byte	W42
	.byte	W06
	.byte		N06   
	.byte	W06
@ 100   ----------------------------------------
	.byte		N24   , Fn3 
	.byte	W24
	.byte	W24
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N42   , An2 
	.byte	W06
@ 101   ----------------------------------------
	.byte	W36
	.byte		N06   , As2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N36   , Gn2 
	.byte	W36
	.byte		N06   , An2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 102   ----------------------------------------
	.byte		N42   , Fn2 
	.byte	W42
	.byte		N12   , En3 
	.byte	W12
	.byte		N18   , Fn3 
	.byte	W18
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 103   ----------------------------------------
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N72   , An2 
	.byte	W72
@ 104   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.5) ****************@

mus_broken_hearted_girl_beyonce_4:
	.byte	KEYSH , mus_broken_hearted_girl_beyonce_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
@ 002   ----------------------------------------
@ 003   ----------------------------------------
@ 004   ----------------------------------------
@ 005   ----------------------------------------
@ 006   ----------------------------------------
@ 007   ----------------------------------------
@ 008   ----------------------------------------
@ 009   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 127*mus_broken_hearted_girl_beyonce_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N72   , Fn3 , v104
	.byte	W72
	.byte		N24   , En3 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N96   , Dn3 
	.byte	W96
@ 011   ----------------------------------------
	.byte		N72   , Cn3 
	.byte	W72
	.byte		N24   , Fn2 
	.byte	W24
@ 012   ----------------------------------------
	.byte		N96   , Gn2 
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
	.byte		N72   
	.byte	W72
	.byte		N24   , An2 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N96   , As2 
	.byte	W96
@ 023   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 024   ----------------------------------------
	.byte		        Gn2 
	.byte	W96
@ 025   ----------------------------------------
	.byte		N72   , As2 
	.byte	W72
	.byte		N24   , Cn3 
	.byte	W24
@ 026   ----------------------------------------
	.byte		N96   , Dn3 
	.byte	W96
@ 027   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 028   ----------------------------------------
	.byte		        Gn2 
	.byte	W96
@ 029   ----------------------------------------
	.byte		N72   , Fn3 
	.byte	W72
	.byte		N24   , En3 
	.byte	W24
@ 030   ----------------------------------------
	.byte		N96   , Dn3 
	.byte	W96
@ 031   ----------------------------------------
	.byte		N72   , Cn3 
	.byte	W72
	.byte		N24   , An2 
	.byte	W24
@ 032   ----------------------------------------
	.byte		N72   , Gn2 
	.byte	W72
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 033   ----------------------------------------
	.byte		N72   , Fn3 
	.byte	W72
	.byte		N24   , En3 
	.byte	W24
@ 034   ----------------------------------------
	.byte		N96   , Dn3 
	.byte	W96
@ 035   ----------------------------------------
	.byte		N72   , Cn3 
	.byte	W72
	.byte		N24   , Fn2 
	.byte	W24
@ 036   ----------------------------------------
	.byte		N72   , Gn2 
	.byte	W72
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 037   ----------------------------------------
	.byte		N72   , As2 
	.byte	W72
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 038   ----------------------------------------
	.byte		N72   , Fn2 
	.byte	W72
	.byte		N24   , Gn2 
	.byte	W24
@ 039   ----------------------------------------
	.byte		N48   , An2 
	.byte	W48
	.byte		        Gn2 
	.byte	W48
@ 040   ----------------------------------------
	.byte		N72   , Fn2 
	.byte	W72
	.byte	W24
@ 041   ----------------------------------------
	.byte		        Fn3 , v076
	.byte	W72
	.byte		N24   , En3 
	.byte	W24
@ 042   ----------------------------------------
	.byte		N96   , Dn3 
	.byte	W96
@ 043   ----------------------------------------
	.byte		N72   , Cn3 
	.byte	W72
	.byte		N24   , Fn2 
	.byte	W24
@ 044   ----------------------------------------
	.byte		N96   , Gn2 
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
	.byte		N72   
	.byte	W72
	.byte		N24   , An2 
	.byte	W24
@ 054   ----------------------------------------
	.byte		N96   , As2 
	.byte	W96
@ 055   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 056   ----------------------------------------
	.byte		N72   , Gn2 
	.byte	W72
	.byte		N24   , An2 
	.byte	W24
@ 057   ----------------------------------------
	.byte		N72   , As2 
	.byte	W72
	.byte		N24   , Cn3 
	.byte	W24
@ 058   ----------------------------------------
	.byte		N96   , Dn3 
	.byte	W96
@ 059   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 060   ----------------------------------------
	.byte		        Gn2 
	.byte	W96
@ 061   ----------------------------------------
	.byte		N72   , Fn3 
	.byte	W72
	.byte		N24   , En3 
	.byte	W24
@ 062   ----------------------------------------
	.byte		N96   , Dn3 
	.byte	W96
@ 063   ----------------------------------------
	.byte		N72   , Cn3 
	.byte	W72
	.byte		N24   , An2 
	.byte	W24
@ 064   ----------------------------------------
	.byte		N72   , Gn2 
	.byte	W72
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 065   ----------------------------------------
	.byte		N72   , Fn3 
	.byte	W72
	.byte		N24   , En3 
	.byte	W24
@ 066   ----------------------------------------
	.byte		N96   , Dn3 
	.byte	W96
@ 067   ----------------------------------------
	.byte		N72   , Cn3 
	.byte	W72
	.byte		N24   , Fn2 
	.byte	W24
@ 068   ----------------------------------------
	.byte		N72   , Gn2 
	.byte	W72
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 069   ----------------------------------------
	.byte		N72   , As2 
	.byte	W72
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 070   ----------------------------------------
	.byte		N72   , Fn2 
	.byte	W72
	.byte		N24   , Gn2 
	.byte	W24
@ 071   ----------------------------------------
	.byte		N48   , An2 
	.byte	W48
	.byte		        Gn2 
	.byte	W48
@ 072   ----------------------------------------
	.byte		N72   , Fn2 
	.byte	W72
	.byte	W24
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte		N96   , Dn3 
	.byte	W96
@ 078   ----------------------------------------
	.byte		        Cn3 
	.byte	W96
@ 079   ----------------------------------------
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte		        Fn2 
	.byte	W24
@ 080   ----------------------------------------
	.byte		N48   , Gn2 
	.byte	W48
	.byte		        An2 
	.byte	W48
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W72
	.byte		N24   , Dn3 
	.byte	W24
@ 083   ----------------------------------------
	.byte		N72   , Cn3 
	.byte	W72
	.byte		N24   , An2 
	.byte	W24
@ 084   ----------------------------------------
	.byte		        Gn2 
	.byte	W24
	.byte		        Fn2 
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte		        Cn2 
	.byte	W24
@ 085   ----------------------------------------
	.byte		N72   , Dn2 
	.byte	W72
	.byte		N12   
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 086   ----------------------------------------
	.byte		N96   , Fn2 
	.byte	W96
@ 087   ----------------------------------------
	.byte		N72   , Cn2 
	.byte	W72
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 088   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 089   ----------------------------------------
	.byte		        Fn2 
	.byte	W96
@ 090   ----------------------------------------
	.byte		        Dn3 
	.byte	W96
@ 091   ----------------------------------------
	.byte		N72   , Cn3 
	.byte	W72
	.byte		N24   , Fn2 
	.byte	W24
@ 092   ----------------------------------------
	.byte		N72   , Gn2 
	.byte	W72
	.byte		N24   , An2 
	.byte	W24
@ 093   ----------------------------------------
	.byte		N96   , As2 
	.byte	W96
@ 094   ----------------------------------------
	.byte		N72   , Fn2 
	.byte	W72
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 095   ----------------------------------------
	.byte		N48   , An2 
	.byte	W48
	.byte		        Gn2 
	.byte	W48
@ 096   ----------------------------------------
	.byte		N96   , Fn2 
	.byte	W96
@ 097   ----------------------------------------
	.byte		N72   , Fn3 
	.byte	W72
	.byte		N24   , En3 
	.byte	W24
@ 098   ----------------------------------------
	.byte		N96   , Dn3 
	.byte	W96
@ 099   ----------------------------------------
	.byte		N48   , Cn3 
	.byte	W48
	.byte		        Gn2 
	.byte	W48
@ 100   ----------------------------------------
	.byte	W06
	.byte		N90   , Fn2 
	.byte	W90
@ 101   ----------------------------------------
	.byte		N48   , An2 
	.byte	W48
	.byte		        Gn2 
	.byte	W48
@ 102   ----------------------------------------
	.byte		TIE   , Fn2 
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 104   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.6) ****************@

mus_broken_hearted_girl_beyonce_5:
	.byte	KEYSH , mus_broken_hearted_girl_beyonce_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
@ 002   ----------------------------------------
@ 003   ----------------------------------------
@ 004   ----------------------------------------
@ 005   ----------------------------------------
@ 006   ----------------------------------------
@ 007   ----------------------------------------
@ 008   ----------------------------------------
@ 009   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 127*mus_broken_hearted_girl_beyonce_mvl/mxv
	.byte		PAN   , c_v+0
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
	.byte		N96   , Dn2 , v060
	.byte	W96
@ 046   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 047   ----------------------------------------
	.byte		        Fn2 
	.byte	W96
@ 048   ----------------------------------------
	.byte		        En2 
	.byte	W96
@ 049   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 050   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 051   ----------------------------------------
	.byte		        Fn2 
	.byte	W96
@ 052   ----------------------------------------
	.byte		        En2 
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
	.byte		        An2 , v076
	.byte	W96
@ 062   ----------------------------------------
	.byte		        As2 
	.byte	W96
@ 063   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 064   ----------------------------------------
	.byte		        Gn2 
	.byte	W96
@ 065   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 066   ----------------------------------------
	.byte		        As2 
	.byte	W96
@ 067   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 068   ----------------------------------------
	.byte		TIE   , Gn2 
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 070   ----------------------------------------
	.byte		N96   , Fn2 
	.byte	W96
@ 071   ----------------------------------------
	.byte		N48   , An2 
	.byte	W48
	.byte		        Gn2 
	.byte	W48
@ 072   ----------------------------------------
	.byte		N60   , Fn2 
	.byte	W60
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 073   ----------------------------------------
	.byte		N96   , As2 , v092
	.byte	W96
@ 074   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 075   ----------------------------------------
	.byte		        As2 
	.byte	W96
@ 076   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 077   ----------------------------------------
	.byte		        Dn3 
	.byte	W96
@ 078   ----------------------------------------
	.byte		        Cn3 
	.byte	W96
@ 079   ----------------------------------------
	.byte		N24   , As2 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		        Fn2 
	.byte	W24
@ 080   ----------------------------------------
	.byte		N48   , Dn2 
	.byte	W48
	.byte		        Cs3 
	.byte	W48
@ 081   ----------------------------------------
	.byte		N96   , Fn3 , v048
	.byte	W96
@ 082   ----------------------------------------
	.byte		        Dn3 
	.byte	W96
@ 083   ----------------------------------------
	.byte		        Fn3 
	.byte	W96
@ 084   ----------------------------------------
	.byte		        Cn4 
	.byte	W96
@ 085   ----------------------------------------
	.byte		        An2 , v076
	.byte	W96
@ 086   ----------------------------------------
	.byte		        As2 
	.byte	W96
@ 087   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 088   ----------------------------------------
	.byte		        Gn2 
	.byte	W96
@ 089   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 090   ----------------------------------------
	.byte		        As2 
	.byte	W96
@ 091   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 092   ----------------------------------------
	.byte		TIE   , Gn2 
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 094   ----------------------------------------
	.byte		N96   , Fn2 
	.byte	W96
@ 095   ----------------------------------------
	.byte		N48   , An2 
	.byte	W48
	.byte		        Gn2 
	.byte	W48
@ 096   ----------------------------------------
	.byte		N96   , Fn2 , v048
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.7) ****************@

mus_broken_hearted_girl_beyonce_6:
	.byte	KEYSH , mus_broken_hearted_girl_beyonce_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
@ 002   ----------------------------------------
@ 003   ----------------------------------------
@ 004   ----------------------------------------
@ 005   ----------------------------------------
@ 006   ----------------------------------------
@ 007   ----------------------------------------
@ 008   ----------------------------------------
@ 009   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 127*mus_broken_hearted_girl_beyonce_mvl/mxv
	.byte		PAN   , c_v+0
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
	.byte		N96   , Dn2 , v076
	.byte		N96   , An2 
	.byte		N96   , Dn3 
	.byte	W96
@ 046   ----------------------------------------
	.byte		        As1 
	.byte		N96   , Fn2 
	.byte		N96   , As2 
	.byte	W96
@ 047   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Cn2 
	.byte		N96   , Fn2 
	.byte	W96
@ 048   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 049   ----------------------------------------
	.byte		        Dn2 
	.byte		N96   , An2 
	.byte		N96   , Dn3 
	.byte	W96
@ 050   ----------------------------------------
	.byte		        As1 
	.byte		N96   , Fn2 
	.byte		N96   , As2 
	.byte	W96
@ 051   ----------------------------------------
	.byte		        Fn1 
	.byte		N96   , Cn2 
	.byte		N96   , Fn2 
	.byte	W96
@ 052   ----------------------------------------
	.byte		        En1 
	.byte		N96   , Cn2 
	.byte		N96   , Gn2 
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
	.byte		VOICE , 5
	.byte		N96   , Dn2 
	.byte	W96
@ 062   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 063   ----------------------------------------
	.byte		        Fn1 
	.byte	W96
@ 064   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 065   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 066   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 067   ----------------------------------------
	.byte		        Fn1 
	.byte	W96
@ 068   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 069   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 070   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 071   ----------------------------------------
	.byte		N48   , Dn2 
	.byte	W48
	.byte		        Cn2 
	.byte	W48
@ 072   ----------------------------------------
	.byte		        As1 
	.byte	W48
	.byte	W48
@ 073   ----------------------------------------
	.byte		N96   , Gn2 
	.byte	W96
@ 074   ----------------------------------------
	.byte		        Fn2 
	.byte	W96
@ 075   ----------------------------------------
	.byte		        Gn2 
	.byte	W96
@ 076   ----------------------------------------
	.byte		        Fn2 
	.byte	W96
@ 077   ----------------------------------------
	.byte		        As2 
	.byte	W96
@ 078   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 079   ----------------------------------------
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte		        An2 
	.byte	W24
@ 080   ----------------------------------------
	.byte		N48   , As2 
	.byte	W48
	.byte		        En3 
	.byte	W48
@ 081   ----------------------------------------
	.byte		N96   , Dn4 , v048
	.byte	W96
@ 082   ----------------------------------------
	.byte		        As3 
	.byte	W96
@ 083   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 084   ----------------------------------------
	.byte		        Gn3 
	.byte	W96
@ 085   ----------------------------------------
	.byte		VOICE , 5
	.byte		N96   , Dn3 , v076
	.byte	W96
@ 086   ----------------------------------------
	.byte		        As2 
	.byte	W96
@ 087   ----------------------------------------
	.byte		        Fn2 
	.byte	W96
@ 088   ----------------------------------------
	.byte		        En2 
	.byte	W96
@ 089   ----------------------------------------
	.byte		        Dn3 
	.byte	W96
@ 090   ----------------------------------------
	.byte		        As2 
	.byte	W96
@ 091   ----------------------------------------
	.byte		        Fn2 
	.byte	W96
@ 092   ----------------------------------------
	.byte		        En2 
	.byte	W96
@ 093   ----------------------------------------
	.byte		        Gn2 
	.byte	W96
@ 094   ----------------------------------------
	.byte		        As2 
	.byte	W96
@ 095   ----------------------------------------
	.byte		N48   , Dn3 
	.byte	W48
	.byte		        Cn3 
	.byte	W48
@ 096   ----------------------------------------
	.byte		N96   , As2 , v048
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.9) ****************@

mus_broken_hearted_girl_beyonce_7:
	.byte	KEYSH , mus_broken_hearted_girl_beyonce_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
@ 002   ----------------------------------------
@ 003   ----------------------------------------
@ 004   ----------------------------------------
@ 005   ----------------------------------------
@ 006   ----------------------------------------
@ 007   ----------------------------------------
@ 008   ----------------------------------------
@ 009   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 127*mus_broken_hearted_girl_beyonce_mvl/mxv
	.byte		PAN   , c_v+0
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
	.byte	W12
	.byte		N06   , Fn4 , v076
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 , v060
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 042   ----------------------------------------
	.byte	W12
	.byte		        Fn4 , v076
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 043   ----------------------------------------
	.byte	W12
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 , v060
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
@ 044   ----------------------------------------
	.byte		        Dn4 , v048
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N12   , Dn4 
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
	.byte		        Cn5 , v076
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 062   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 063   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 064   ----------------------------------------
	.byte		        Gn4 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
@ 065   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 066   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 067   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 068   ----------------------------------------
	.byte		        Gn4 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 069   ----------------------------------------
	.byte		        As4 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 070   ----------------------------------------
	.byte		        Fn4 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 071   ----------------------------------------
	.byte		        An4 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
@ 072   ----------------------------------------
	.byte		        Fn4 
	.byte	W12
	.byte	W84
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
	.byte	W12
	.byte		N06   , Fn4 , v060
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 , v048
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
@ 082   ----------------------------------------
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 , v060
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte	W12
@ 083   ----------------------------------------
	.byte	W12
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn4 , v048
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
@ 084   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
@ 085   ----------------------------------------
	.byte		N12   , Cn5 , v076
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 086   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 087   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 088   ----------------------------------------
	.byte		        Gn4 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
@ 089   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 090   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 091   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 092   ----------------------------------------
	.byte		        Gn4 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 093   ----------------------------------------
	.byte		        As4 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 094   ----------------------------------------
	.byte		        Fn4 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 095   ----------------------------------------
	.byte		        An4 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	W12
@ 096   ----------------------------------------
	.byte		        Fn4 
	.byte	W12
	.byte	W84
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	FINE

@**************** Track 8 (Midi-Chn.10) ****************@

mus_broken_hearted_girl_beyonce_8:
	.byte	KEYSH , mus_broken_hearted_girl_beyonce_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
@ 002   ----------------------------------------
@ 003   ----------------------------------------
@ 004   ----------------------------------------
@ 005   ----------------------------------------
@ 006   ----------------------------------------
@ 007   ----------------------------------------
@ 008   ----------------------------------------
@ 009   ----------------------------------------
	.byte		VOICE , 118
	.byte		        118
	.byte		VOL   , 127*mus_broken_hearted_girl_beyonce_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 127*mus_broken_hearted_girl_beyonce_mvl/mxv
	.byte		PAN   , c_v+0
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
	.byte	W42
	.byte		N06   , En1 , v104
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 045   ----------------------------------------
	.byte		N24   , Cn1 
	.byte		N24   , Cs2 
	.byte		N24   , An2 
	.byte	W12
	.byte		N12   , As1 
	.byte	W12
	.byte		        En1 
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 046   ----------------------------------------
mus_broken_hearted_girl_beyonce_8_046:
	.byte		N24   , Cn1 , v104
	.byte	W12
	.byte		N12   , As1 
	.byte	W12
	.byte	PEND
	.byte		        En1 
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N18   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N18   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N18   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N18   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N18   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N18   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N18   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N18   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 081   ----------------------------------------
	.byte		        Cn1 
	.byte	W24
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N24   , Cn1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte	W12
@ 082   ----------------------------------------
	.byte		N24   , Cn1 
	.byte	W24
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N24   , Cn1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte	W12
@ 083   ----------------------------------------
	.byte		N24   , Cn1 
	.byte	W24
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N24   , Cn1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte	W12
@ 084   ----------------------------------------
	.byte		N24   , Cn1 
	.byte	W24
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N18   , Cn1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte	W12
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N18   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N18   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_broken_hearted_girl_beyonce_8_046
	.byte		N12   , En1 , v104
	.byte		N06   , As1 
	.byte	W06
	.byte	W06
	.byte		N18   , Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte		N24   , As1 
	.byte	W12
	.byte	W12
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_broken_hearted_girl_beyonce:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_broken_hearted_girl_beyonce_pri	@ Priority
	.byte	mus_broken_hearted_girl_beyonce_rev	@ Reverb.

	.word	mus_broken_hearted_girl_beyonce_grp

	.word	mus_broken_hearted_girl_beyonce_1
	.word	mus_broken_hearted_girl_beyonce_2
	.word	mus_broken_hearted_girl_beyonce_3
	.word	mus_broken_hearted_girl_beyonce_4
	.word	mus_broken_hearted_girl_beyonce_5
	.word	mus_broken_hearted_girl_beyonce_6
	.word	mus_broken_hearted_girl_beyonce_7
	.word	mus_broken_hearted_girl_beyonce_8

	.end
