	.include "MPlayDef.s"

	.equ	mus_divine_grace_grp, voicegroup_brothers
	.equ	mus_divine_grace_pri, 0
	.equ	mus_divine_grace_rev, reverb_set+20
	.equ	mus_divine_grace_mvl, 90
	.equ	mus_divine_grace_key, 0
	.equ	mus_divine_grace_tbs, 1
	.equ	mus_divine_grace_exg, 0
	.equ	mus_divine_grace_cmp, 1

	.section .rodata
	.global	mus_divine_grace
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_divine_grace_1:
	.byte	KEYSH , mus_divine_grace_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 125*mus_divine_grace_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 94*mus_divine_grace_mvl/mxv
	.byte		PAN   , c_v-10
	.byte		TIE   , Bn1 , v072
	.byte		N22   , Fs2 , v044
	.byte		N24   , Bn2 , v064
	.byte	W24
	.byte	W01
	.byte		N22   , Fs2 
	.byte		N22   , Fs2 , v044
	.byte	W24
	.byte	W01
	.byte		N44   , Dn3 , v064
	.byte		N44   , Dn3 , v044
	.byte	W44
	.byte	W02
@ 001   ----------------------------------------
	.byte	W04
	.byte		        Cs3 , v064
	.byte		N44   , Cs3 , v044
	.byte	W44
	.byte	W03
	.byte		EOT   , Bn1 
	.byte	W44
	.byte	W01
@ 002   ----------------------------------------
	.byte	W08
	.byte		TIE   , Bn1 , v072
	.byte		N24   , Bn2 , v064
	.byte	W24
	.byte	W01
	.byte		N22   , Fs2 
	.byte		N22   , Fs2 , v044
	.byte	W24
	.byte	W01
	.byte		N32   , Dn3 , v064
	.byte		N32   , Dn3 , v044
	.byte	W36
	.byte	W01
	.byte		N10   , En3 , v064
	.byte	W01
@ 003   ----------------------------------------
	.byte	W12
	.byte		N44   , Cs3 
	.byte		N44   , Cs3 , v044
	.byte	W44
	.byte	W03
	.byte		EOT   , Bn1 
	.byte	W36
	.byte	W01
@ 004   ----------------------------------------
	.byte	W16
	.byte		TIE   , An1 , v072
	.byte		N24   , Fs3 , v064
	.byte		N24   , Fs3 , v044
	.byte	W24
	.byte	W01
	.byte		N22   , An2 
	.byte	W24
	.byte	W01
	.byte		        Dn3 
	.byte	W24
	.byte	W01
	.byte		        Fs3 
	.byte	W05
@ 005   ----------------------------------------
	.byte	W17
	.byte		EOT   , An1 
	.byte	W03
	.byte		TIE   , Gn1 , v072
	.byte		N24   , Gn3 , v064
	.byte		N24   , Gn3 , v044
	.byte	W24
	.byte	W01
	.byte		N22   , Dn3 
	.byte	W24
	.byte	W01
	.byte		N44   , Gn3 
	.byte	W24
	.byte	W02
@ 006   ----------------------------------------
	.byte	W21
	.byte		EOT   , Gn1 
	.byte	W03
	.byte		TIE   , Fs1 , v072
	.byte		N48   , Fs3 , v064
	.byte		N48   , Fs3 , v044
	.byte	W48
	.byte	W02
	.byte		N44   , Dn3 
	.byte	W22
@ 007   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		EOT   , Fs1 
	.byte	W03
	.byte		N44   , Cs2 , v072
	.byte		TIE   , Fn3 , v064
	.byte		TIE   , Fn3 , v044
	.byte	W48
	.byte	W02
	.byte		N44   , Bn1 , v072
	.byte	W18
@ 008   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		EOT   , Fn3 
	.byte		EOT   
	.byte	W03
	.byte		N44   , As1 
	.byte		TIE   , Fs3 , v064
	.byte		TIE   , Fs3 , v044
	.byte	W48
	.byte	W02
	.byte		N44   , Fs1 , v072
	.byte	W14
@ 009   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		EOT   , Fs3 
	.byte		EOT   
	.byte	W03
	.byte		N22   , Ds2 
	.byte		TIE   , Bn3 , v064
	.byte		TIE   , Bn3 , v044
	.byte	W24
	.byte	W01
	.byte		N22   , Cs2 , v072
	.byte	W24
	.byte	W01
	.byte		        Bn1 
	.byte	W10
@ 010   ----------------------------------------
	.byte	W15
	.byte		        An1 
	.byte	W22
	.byte		EOT   , Bn3 
	.byte		EOT   
	.byte	W03
	.byte		N22   , Gn1 
	.byte		TIE   , Gn3 , v064
	.byte		TIE   , Gn3 , v044
	.byte	W24
	.byte	W01
	.byte		N10   , Fs1 , v072
	.byte	W12
	.byte		        En1 
	.byte	W13
	.byte		        Dn1 
	.byte	W06
@ 011   ----------------------------------------
	.byte	W06
	.byte		        En1 
	.byte	W13
	.byte		        Dn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W10
	.byte		EOT   , Gn3 
	.byte		EOT   
	.byte	W03
	.byte		N22   , Cs2 
	.byte		TIE   , An3 , v064
	.byte		TIE   , An3 , v044
	.byte	W24
	.byte	W01
	.byte		N22   , Bn1 , v072
	.byte	W24
	.byte	W01
	.byte		        An1 
	.byte	W02
@ 012   ----------------------------------------
	.byte	W23
	.byte		        Gn1 
	.byte	W22
	.byte		EOT   , An3 
	.byte		EOT   
	.byte	W03
	.byte		N22   , Fs1 
	.byte		TIE   , An3 , v064
	.byte		TIE   , An3 , v044
	.byte	W24
	.byte	W01
	.byte		N10   , En1 , v072
	.byte	W12
	.byte		        Dn1 
	.byte	W11
@ 013   ----------------------------------------
	.byte	W02
	.byte		        Cs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W13
	.byte		        Cs1 
	.byte	W12
	.byte		        Bn1 
	.byte	W10
	.byte		EOT   , An3 
	.byte		EOT   
	.byte	W03
	.byte		N22   , Gn1 
	.byte		TIE   , Bn3 , v064
	.byte		TIE   , Bn3 , v044
	.byte	W24
	.byte	W01
	.byte		N10   , Fs1 , v072
	.byte	W12
	.byte		        En1 
	.byte	W07
@ 014   ----------------------------------------
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W13
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W10
	.byte		EOT   , Bn3 
	.byte		EOT   
	.byte	W03
	.byte		N10   , Gs1 
	.byte		N48   , Gs3 , v064
	.byte		N48   , Gs3 , v044
	.byte	W12
	.byte		N10   , Fs1 , v072
	.byte	W13
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W03
@ 015   ----------------------------------------
	.byte	W10
	.byte		        Cs1 
	.byte		N22   , Ds3 , v044
	.byte	W12
	.byte		N10   , Cn1 , v072
	.byte	W13
	.byte		        As1 
	.byte		N22   , Fn3 , v044
	.byte	W12
	.byte		N10   , Cn1 , v072
	.byte	W13
	.byte		TIE   , Fs1 
	.byte		TIE   , Bn3 , v064
	.byte		TIE   , Bn3 , v044
	.byte	W36
@ 016   ----------------------------------------
	.byte	W60
	.byte	W01
	.byte		EOT   , Fs1 
	.byte		        Bn3 
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Fs1 , v072
	.byte		TIE   , As3 , v064
	.byte		TIE   , As3 , v044
	.byte	W32
@ 017   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		EOT   , Fs1 
	.byte		        As3 
	.byte		EOT   
	.byte	W30
	.byte	W01
@ 018   ----------------------------------------
	.byte	W72
	.byte		N72   , Fs2 
	.byte	W24
@ 019   ----------------------------------------
	.byte	W76
	.byte		TIE   , Fs3 
	.byte	W20
@ 020   ----------------------------------------
	.byte	W76
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Bn1 , v072
	.byte		N22   , Fs2 , v044
	.byte		N24   , Bn2 , v064
	.byte	W16
@ 021   ----------------------------------------
	.byte	W09
	.byte		N22   , Fs2 
	.byte		N22   , Fs2 , v044
	.byte	W24
	.byte	W01
	.byte		N44   , Dn3 , v064
	.byte		N44   , Dn3 , v044
	.byte	W48
	.byte	W02
	.byte		        Cs3 , v064
	.byte		N44   , Cs3 , v044
	.byte	W12
@ 022   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		EOT   , Bn1 
	.byte	W52
	.byte	W01
	.byte		TIE   , Bn1 , v072
	.byte		N24   , Bn2 , v064
	.byte	W08
@ 023   ----------------------------------------
	.byte	W17
	.byte		N22   , Fs2 
	.byte		N22   , Fs2 , v044
	.byte	W24
	.byte	W01
	.byte		N32   , Dn3 , v064
	.byte		N32   , Dn3 , v044
	.byte	W36
	.byte	W01
	.byte		N10   , En3 , v064
	.byte	W13
	.byte		N44   , Cs3 
	.byte		N44   , Cs3 , v044
	.byte	W04
@ 024   ----------------------------------------
	.byte	W42
	.byte	W01
	.byte		EOT   , Bn1 
	.byte	W52
	.byte	W01
@ 025   ----------------------------------------
	.byte		N72   , Gn1 , v072
	.byte		N48   , Fs3 , v064
	.byte		N48   , Fs3 , v044
	.byte	W48
	.byte	W02
	.byte		N44   , Bn2 
	.byte	W24
	.byte	W01
	.byte		N22   , Fs1 , v072
	.byte	W21
@ 026   ----------------------------------------
	.byte	W04
	.byte		N72   , En1 
	.byte		N48   , Fs3 , v064
	.byte		N48   , Fs3 , v044
	.byte	W48
	.byte	W02
	.byte		N44   , Bn2 
	.byte	W24
	.byte	W01
	.byte		N22   , Dn1 , v072
	.byte	W17
@ 027   ----------------------------------------
	.byte	W08
	.byte		TIE   , Cn1 
	.byte		N44   , Fs3 , v064
	.byte		N44   , Fs3 , v044
	.byte	W48
	.byte	W02
	.byte		        Gn3 , v064
	.byte		N44   , Gn3 , v044
	.byte	W36
	.byte	W02
@ 028   ----------------------------------------
	.byte	W09
	.byte		EOT   , Cn1 
	.byte	W03
	.byte		TIE   , Dn1 , v072
	.byte		N24   , Gn3 , v064
	.byte		N24   , Gn3 , v044
	.byte	W24
	.byte	W01
	.byte		N22   , En3 
	.byte	W24
	.byte	W01
	.byte		N44   , Fs3 , v064
	.byte		N44   , Fs3 , v044
	.byte	W32
	.byte	W02
@ 029   ----------------------------------------
	.byte	W13
	.byte		EOT   , Dn1 
	.byte	W03
	.byte		N72   , Gn1 , v072
	.byte		N44   , Fs3 , v064
	.byte		N44   , Fs3 , v044
	.byte	W48
	.byte	W02
	.byte		        Bn2 
	.byte	W24
	.byte	W01
	.byte		N22   , Fs1 , v072
	.byte	W05
@ 030   ----------------------------------------
	.byte	W20
	.byte		N72   , En1 
	.byte		N44   , Fs3 , v064
	.byte		N44   , Fs3 , v044
	.byte	W48
	.byte	W02
	.byte		        Bn2 
	.byte	W24
	.byte	W01
	.byte		N22   , Dn1 , v072
	.byte	W01
@ 031   ----------------------------------------
	.byte	W24
	.byte		N44   , Cs1 
	.byte		N48   , En3 , v064
	.byte		N72   , An3 , v044
	.byte	W48
	.byte	W02
	.byte		N44   , An1 , v072
	.byte		N44   , An2 , v064
	.byte	W22
@ 032   ----------------------------------------
	.byte	W03
	.byte		N22   , Gn3 , v044
	.byte	W24
	.byte	W01
	.byte		TIE   , Dn1 , v072
	.byte		N44   , Gn3 , v064
	.byte		N44   , Gn3 , v044
	.byte	W48
	.byte	W02
	.byte		        Fs3 , v064
	.byte		N44   , Fs3 , v044
	.byte	W18
@ 033   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		EOT   , Dn1 
	.byte	W03
	.byte		TIE   , Cs1 , v072
	.byte		N44   , Fs3 , v064
	.byte		N44   , Fs3 , v044
	.byte	W48
	.byte	W02
	.byte		        Fn3 , v064
	.byte		N44   , Fn3 , v044
	.byte	W14
@ 034   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		EOT   , Cs1 
	.byte	W03
	.byte		TIE   , Fs1 , v072
	.byte		N44   , Fs3 , v064
	.byte		N44   , Fs3 , v044
	.byte	W48
	.byte	W02
	.byte		        Cs3 
	.byte	W10
@ 035   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte		EOT   , Fs1 
	.byte	W03
	.byte		TIE   , Bn1 , v072
	.byte		N44   , En3 , v064
	.byte		N44   , En3 , v044
	.byte	W48
	.byte	W02
	.byte		        Ds3 , v064
	.byte		N44   , Ds3 , v044
	.byte	W06
@ 036   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		EOT   , Bn1 
	.byte	W03
	.byte		TIE   , En1 , v072
	.byte		N44   , En3 , v064
	.byte		N44   , En3 , v044
	.byte	W48
	.byte	W02
	.byte		        Bn3 
	.byte	W02
@ 037   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		EOT   , En1 
	.byte	W03
	.byte		TIE   , An1 , v072
	.byte		N44   , Dn3 , v064
	.byte		N44   , Dn3 , v044
	.byte	W48
@ 038   ----------------------------------------
	.byte	W02
	.byte		        Cs3 , v064
	.byte		N44   , Cs3 , v044
	.byte	W44
	.byte	W03
	.byte		EOT   , An1 
	.byte	W03
	.byte		TIE   , Dn1 , v072
	.byte		N44   , Dn3 , v064
	.byte		N44   , Dn3 , v044
	.byte	W44
@ 039   ----------------------------------------
	.byte	W06
	.byte		N22   , An3 
	.byte	W24
	.byte	W01
	.byte		N22   
	.byte	W22
	.byte		EOT   , Dn1 
	.byte	W03
	.byte		TIE   , Gn1 , v072
	.byte		TIE   , Gn3 , v064
	.byte		N44   , An3 , v044
	.byte	W40
@ 040   ----------------------------------------
	.byte	W10
	.byte		        Gn3 
	.byte	W44
	.byte	W03
	.byte		EOT   , Gn1 
	.byte		        Gn3 
	.byte	W03
	.byte		TIE   , An1 , v072
	.byte		N48   , Gn3 , v064
	.byte		N48   , Gn3 , v044
	.byte	W36
@ 041   ----------------------------------------
	.byte	W14
	.byte		N44   , Cs3 
	.byte	W44
	.byte	W03
	.byte		EOT   , An1 
	.byte	W03
	.byte		TIE   , Dn1 , v072
	.byte		TIE   , Gn3 , v064
	.byte		TIE   , Gn3 , v044
	.byte	W32
@ 042   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		EOT   
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Fs3 , v064
	.byte		TIE   , Fs3 , v044
	.byte	W28
@ 043   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		EOT   , Dn1 
	.byte		        Fs3 
	.byte		EOT   
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_divine_grace_2:
	.byte	KEYSH , mus_divine_grace_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 78*mus_divine_grace_mvl/mxv
	.byte		PAN   , c_v+18
	.byte		N22   , Fs3 , v076
	.byte	W24
	.byte	W01
	.byte		N22   
	.byte	W24
	.byte	W01
	.byte		N44   , Dn4 
	.byte	W44
	.byte	W02
@ 001   ----------------------------------------
	.byte	W04
	.byte		        Cs4 
	.byte	W92
@ 002   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		N22   , Fs3 
	.byte	W24
	.byte	W01
	.byte		N32   , Dn4 
	.byte	W36
	.byte	W01
	.byte		N10   , En4 
	.byte	W01
@ 003   ----------------------------------------
	.byte	W12
	.byte		N44   , Cs4 
	.byte	W84
@ 004   ----------------------------------------
	.byte	W16
	.byte		N24   , Fs4 
	.byte	W24
	.byte	W01
	.byte		N22   , An3 
	.byte	W24
	.byte	W01
	.byte		        Dn4 
	.byte	W24
	.byte	W01
	.byte		        Fs4 
	.byte	W05
@ 005   ----------------------------------------
	.byte	W20
	.byte		N24   , Gn4 
	.byte	W24
	.byte	W01
	.byte		N22   , Dn4 
	.byte	W24
	.byte	W01
	.byte		N44   , Gn4 
	.byte	W24
	.byte	W02
@ 006   ----------------------------------------
	.byte	W24
	.byte		N48   , Fs4 
	.byte	W48
	.byte	W02
	.byte		N44   , Dn4 
	.byte	W22
@ 007   ----------------------------------------
	.byte	W28
	.byte		TIE   , Fn4 
	.byte	W68
@ 008   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Fs4 
	.byte	W64
@ 009   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Bn4 
	.byte	W60
@ 010   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Gn4 
	.byte	W56
@ 011   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , An4 
	.byte	W52
@ 012   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Bn4 
	.byte	W44
@ 014   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		N48   , Gs4 
	.byte	W40
@ 015   ----------------------------------------
	.byte	W10
	.byte		N22   , Ds4 
	.byte	W24
	.byte	W01
	.byte		        Fn4 
	.byte	W24
	.byte	W01
	.byte		TIE   , Bn4 
	.byte	W36
@ 016   ----------------------------------------
	.byte	W60
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , As4 
	.byte	W32
@ 017   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		EOT   
	.byte	W30
	.byte	W01
@ 018   ----------------------------------------
	.byte	W72
	.byte		N72   , Fs3 
	.byte	W24
@ 019   ----------------------------------------
	.byte	W60
	.byte	W03
	.byte		N10   , Cs4 
	.byte	W13
	.byte		TIE   , Fs4 
	.byte	W20
@ 020   ----------------------------------------
	.byte	W76
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		N22   , Fs3 
	.byte	W16
@ 021   ----------------------------------------
	.byte	W09
	.byte		N22   
	.byte	W24
	.byte	W01
	.byte		N44   , Dn4 
	.byte	W48
	.byte	W02
	.byte		        Cs4 
	.byte	W12
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W17
	.byte		N22   , Fs3 
	.byte	W24
	.byte	W01
	.byte		N32   , Dn4 
	.byte	W36
	.byte	W01
	.byte		N10   , En4 
	.byte	W13
	.byte		N44   , Cs4 
	.byte	W04
@ 024   ----------------------------------------
	.byte	W90
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W05
@ 025   ----------------------------------------
	.byte		N48   , Fs4 
	.byte	W48
	.byte	W02
	.byte		N44   , Bn3 
	.byte	W44
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W01
@ 026   ----------------------------------------
	.byte	W04
	.byte		N48   , Fs4 
	.byte	W48
	.byte	W02
	.byte		N44   , Bn3 
	.byte	W42
@ 027   ----------------------------------------
	.byte	W08
	.byte		        Fs4 
	.byte	W48
	.byte	W02
	.byte		        Gn4 
	.byte	W36
	.byte	W02
@ 028   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	W01
	.byte		N22   , En4 
	.byte	W24
	.byte	W01
	.byte		N44   , Fs4 
	.byte	W32
	.byte	W02
@ 029   ----------------------------------------
	.byte	W11
	.byte		N04   , Dn4 
	.byte	W05
	.byte		N44   , Fs4 
	.byte	W48
	.byte	W02
	.byte		        Bn3 
	.byte	W30
@ 030   ----------------------------------------
	.byte	W15
	.byte		N04   , Dn4 
	.byte	W05
	.byte		N44   , Fs4 
	.byte	W48
	.byte	W02
	.byte		        Bn3 
	.byte	W24
	.byte	W02
@ 031   ----------------------------------------
	.byte	W24
	.byte		N72   , An4 
	.byte	W72
@ 032   ----------------------------------------
	.byte	W03
	.byte		N22   , Gn4 
	.byte	W24
	.byte	W01
	.byte		N44   
	.byte	W48
	.byte	W02
	.byte		        Fs4 
	.byte	W18
@ 033   ----------------------------------------
	.byte	W32
	.byte		N44   
	.byte	W48
	.byte	W02
	.byte		        Fn4 
	.byte	W14
@ 034   ----------------------------------------
	.byte	W36
	.byte		        Fs4 
	.byte	W48
	.byte	W02
	.byte		        Cs4 
	.byte	W10
@ 035   ----------------------------------------
	.byte	W40
	.byte		        En4 
	.byte	W48
	.byte	W02
	.byte		        Ds4 
	.byte	W06
@ 036   ----------------------------------------
	.byte	W44
	.byte		        En4 
	.byte	W48
	.byte	W02
	.byte		        Bn4 
	.byte	W02
@ 037   ----------------------------------------
	.byte	W48
	.byte		        Dn4 
	.byte	W48
@ 038   ----------------------------------------
	.byte	W02
	.byte		        Cs4 
	.byte	W48
	.byte	W02
	.byte		        Dn4 
	.byte	W44
@ 039   ----------------------------------------
	.byte	W06
	.byte		N22   , An4 
	.byte	W24
	.byte	W01
	.byte		N22   
	.byte	W24
	.byte	W01
	.byte		N44   
	.byte	W40
@ 040   ----------------------------------------
	.byte	W10
	.byte		        Gn4 
	.byte	W48
	.byte	W02
	.byte		N48   
	.byte	W36
@ 041   ----------------------------------------
	.byte	W14
	.byte		N44   , Cs4 
	.byte	W48
	.byte	W02
	.byte		TIE   , Gn4 
	.byte	W32
@ 042   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Fs4 
	.byte	W28
@ 043   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		EOT   
	.byte	FINE

@******************************************************@
	.align	2

mus_divine_grace:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_divine_grace_pri	@ Priority
	.byte	mus_divine_grace_rev	@ Reverb.

	.word	mus_divine_grace_grp

	.word	mus_divine_grace_1
	.word	mus_divine_grace_2

	.end
