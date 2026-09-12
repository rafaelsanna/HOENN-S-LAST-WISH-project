	.include "MPlayDef.s"

	.equ	mus_everlasting_wanderers_grp, voicegroup_brothers
	.equ	mus_everlasting_wanderers_pri, 0
	.equ	mus_everlasting_wanderers_rev, reverb_set+15
	.equ	mus_everlasting_wanderers_mvl, 90
	.equ	mus_everlasting_wanderers_key, 0
	.equ	mus_everlasting_wanderers_tbs, 1
	.equ	mus_everlasting_wanderers_exg, 0
	.equ	mus_everlasting_wanderers_cmp, 1

	.section .rodata
	.global	mus_everlasting_wanderers
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_everlasting_wanderers_1:
	.byte	KEYSH , mus_everlasting_wanderers_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 125*mus_everlasting_wanderers_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 86*mus_everlasting_wanderers_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N19   , Cn2 , v076
	.byte	W28
	.byte	W01
	.byte		N19   
	.byte	W21
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W16
@ 001   ----------------------------------------
	.byte	W15
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W20
	.byte		        Bn1 
	.byte	W30
	.byte	W01
@ 002   ----------------------------------------
	.byte		N19   
	.byte	W20
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W30
	.byte	W01
	.byte		N19   
	.byte	W15
@ 003   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N20   , Ds2 
	.byte	W30
	.byte	W01
	.byte		N19   
	.byte	W21
	.byte		N19   
	.byte	W09
@ 004   ----------------------------------------
	.byte	W20
	.byte		N19   
	.byte	W30
	.byte	W01
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W15
@ 005   ----------------------------------------
	.byte	W06
	.byte		        Dn2 
	.byte	W30
	.byte		N19   
	.byte	W20
	.byte		N19   
	.byte	W21
	.byte		N19   
	.byte	W19
@ 006   ----------------------------------------
	.byte	W48
	.byte	W03
	.byte		N19   
	.byte	W21
	.byte		        Cn2 
	.byte	W24
@ 007   ----------------------------------------
	.byte	W06
	.byte		N19   
	.byte	W20
	.byte		N20   
	.byte	W30
	.byte	W01
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W09
@ 008   ----------------------------------------
	.byte	W22
	.byte		N19   
	.byte	W20
	.byte		        Bn1 
	.byte	W30
	.byte		N19   
	.byte	W21
	.byte		N19   
	.byte	W03
@ 009   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W36
	.byte	W03
@ 010   ----------------------------------------
	.byte	W12
	.byte		        Gn1 
	.byte	W30
	.byte		N19   
	.byte	W21
	.byte		N19   
	.byte	W30
	.byte		        An1 
	.byte	W03
@ 011   ----------------------------------------
	.byte	W28
	.byte		        Bn1 
	.byte	W30
	.byte		N19   
	.byte	W20
	.byte		        Cs2 
	.byte	W18
@ 012   ----------------------------------------
	.byte	W13
	.byte		N19   
	.byte	W20
	.byte		N19   
	.byte	W20
	.byte		N19   
	.byte	W42
	.byte	W01
@ 013   ----------------------------------------
	.byte	W28
	.byte		N19   
	.byte	W20
	.byte		        Dn2 
	.byte	W30
	.byte	W01
	.byte		N19   
	.byte	W17
@ 014   ----------------------------------------
	.byte	W03
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W30
	.byte	W01
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W02
@ 015   ----------------------------------------
	.byte	W19
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W20
	.byte		N19   
	.byte	W24
	.byte	W03
@ 016   ----------------------------------------
	.byte	W04
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W48
	.byte	W03
	.byte		N19   
	.byte	W11
@ 017   ----------------------------------------
	.byte	W19
	.byte		N19   
	.byte	W20
	.byte		N19   
	.byte	W30
	.byte	W01
	.byte		        Cs2 
	.byte	W24
	.byte	W02
@ 018   ----------------------------------------
	.byte	W04
	.byte		N19   
	.byte	W30
	.byte	W01
	.byte		N19   
	.byte	W20
	.byte		        Bn1 
	.byte	W30
	.byte		        En2 
	.byte	W11
@ 019   ----------------------------------------
	.byte	W10
	.byte		N19   
	.byte	W20
	.byte		        An1 
	.byte	W66
@ 020   ----------------------------------------
	.byte	W05
	.byte		N19   
	.byte	W20
	.byte		        Dn2 
	.byte	W30
	.byte		N19   
	.byte	W21
	.byte		N19   
	.byte	W20
@ 021   ----------------------------------------
	.byte	W10
	.byte		N19   
	.byte	W30
	.byte	W01
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W20
	.byte		N19   
	.byte	W05
@ 022   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		N19   
	.byte	W20
	.byte		N19   
	.byte	W30
	.byte		N19   
	.byte	W20
@ 023   ----------------------------------------
	.byte	W11
	.byte		N19   
	.byte	W48
	.byte	W02
	.byte		N19   
	.byte	W30
	.byte	W01
	.byte		N19   
	.byte	W04
@ 024   ----------------------------------------
	.byte	W16
	.byte		N19   
	.byte	W30
	.byte		        Cs2 
	.byte	W30
	.byte	W01
	.byte		N19   
	.byte	W19
@ 025   ----------------------------------------
	.byte	W11
	.byte		N19   
	.byte	W21
	.byte		        Cn2 
	.byte	W30
	.byte		        Bn1 
	.byte	W20
	.byte		N19   
	.byte	W14
@ 026   ----------------------------------------
	.byte	W06
	.byte		        Cs2 
	.byte	W20
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_everlasting_wanderers_2:
	.byte	KEYSH , mus_everlasting_wanderers_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 64*mus_everlasting_wanderers_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N17   , Gn3 , v048
	.byte	W48
	.byte		N17   
	.byte	W48
@ 001   ----------------------------------------
	.byte		N17   
	.byte	W48
	.byte		N16   
	.byte	W17
	.byte		N17   
	.byte	W30
	.byte	W01
@ 002   ----------------------------------------
	.byte	W17
	.byte		N17   
	.byte	W48
	.byte		N17   
	.byte	W30
	.byte	W01
@ 003   ----------------------------------------
	.byte	W17
	.byte		N17   
	.byte	W18
	.byte		N17   
	.byte	W48
	.byte		N17   
	.byte	W13
@ 004   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N17   
	.byte	W48
	.byte		N17   
	.byte	W13
@ 005   ----------------------------------------
	.byte	W06
	.byte		N17   
	.byte	W48
	.byte		N17   
	.byte	W42
@ 006   ----------------------------------------
	.byte	W06
	.byte		N17   
	.byte	W48
	.byte		N17   
	.byte	W18
	.byte		N17   
	.byte	W24
@ 007   ----------------------------------------
	.byte	W24
	.byte		N17   
	.byte	W48
	.byte		N17   
	.byte	W24
@ 008   ----------------------------------------
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N17   
	.byte	W48
	.byte		N17   
	.byte	W06
@ 009   ----------------------------------------
	.byte	W42
	.byte		N17   
	.byte	W48
	.byte		N17   
	.byte	W06
@ 010   ----------------------------------------
	.byte	W12
	.byte		N17   
	.byte	W48
	.byte		N17   
	.byte	W32
	.byte	W01
	.byte		        Fs3 
	.byte	W03
@ 011   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		N17   
	.byte	W32
	.byte	W01
	.byte		        Fn3 
	.byte	W18
@ 012   ----------------------------------------
	.byte	W30
	.byte		N17   
	.byte	W48
	.byte		N17   
	.byte	W18
@ 013   ----------------------------------------
	.byte	W30
	.byte		N04   
	.byte	W05
	.byte		N03   , Dn3 , v060
	.byte	W03
	.byte		        En3 
	.byte	W04
	.byte		N02   , Fs3 
	.byte	W03
	.byte		N03   , Gs3 
	.byte	W03
	.byte		N48   , Dn3 
	.byte	W48
@ 014   ----------------------------------------
	.byte	W03
	.byte		N09   , Gs3 
	.byte	W10
	.byte		        An3 
	.byte	W10
	.byte		        En3 
	.byte	W10
	.byte		N17   , Dn3 , v048
	.byte	W48
	.byte		N12   
	.byte	W13
	.byte		N14   , Dn3 , v060
	.byte	W02
@ 015   ----------------------------------------
	.byte	W13
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N28   , Dn3 
	.byte	W30
	.byte		N19   , Bn3 
	.byte	W20
	.byte		N09   , An3 
	.byte	W10
	.byte		        Gs3 
	.byte	W10
	.byte		N10   , En3 
	.byte	W07
@ 016   ----------------------------------------
	.byte	W04
	.byte		N17   , Dn3 , v048
	.byte	W48
	.byte		N17   
	.byte	W19
	.byte		N03   , En3 , v060
	.byte	W04
	.byte		N02   , Fs3 
	.byte	W03
	.byte		N03   , Gs3 
	.byte	W03
	.byte		N02   , An3 
	.byte	W04
	.byte		N30   , Dn3 
	.byte	W11
@ 017   ----------------------------------------
	.byte	W19
	.byte		N19   
	.byte	W20
	.byte		N09   , Cs3 
	.byte	W11
	.byte		        Bn3 
	.byte	W10
	.byte		        An3 
	.byte	W10
	.byte		N30   , Cs3 
	.byte	W24
	.byte	W02
@ 018   ----------------------------------------
	.byte	W04
	.byte		N04   , An3 
	.byte	W05
	.byte		        Gs3 
	.byte	W05
	.byte		N40   , En3 
	.byte	W40
	.byte	W01
	.byte		N20   , Bn2 
	.byte	W20
	.byte		N09   , An3 
	.byte	W10
	.byte		N20   , En3 
	.byte	W11
@ 019   ----------------------------------------
	.byte	W10
	.byte		N19   , An3 
	.byte	W20
	.byte		N48   , An2 
	.byte	W48
	.byte	W02
	.byte		N14   , Cs3 
	.byte	W16
@ 020   ----------------------------------------
	.byte		        Dn3 
	.byte	W15
	.byte		N09   , En3 
	.byte	W10
	.byte		N19   , Dn3 
	.byte	W20
	.byte		N48   , An3 
	.byte	W48
	.byte	W03
@ 021   ----------------------------------------
	.byte		N09   , En3 
	.byte	W10
	.byte		N14   , Dn3 
	.byte	W15
	.byte		        Cs3 
	.byte	W16
	.byte		N28   , Bn3 
	.byte	W30
	.byte		N09   , Cs3 
	.byte	W10
	.byte		        Dn3 
	.byte	W10
	.byte		N09   
	.byte	W05
@ 022   ----------------------------------------
	.byte	W05
	.byte		N09   
	.byte	W10
	.byte		        En3 
	.byte	W11
	.byte		        Fs3 
	.byte	W10
	.byte		N19   , An3 
	.byte	W20
	.byte		N09   , Gs3 
	.byte	W10
	.byte		        Fs3 
	.byte	W10
	.byte		N17   , Dn3 , v048
	.byte	W20
@ 023   ----------------------------------------
	.byte	W28
	.byte		N13   
	.byte	W14
	.byte		N08   , Dn3 , v060
	.byte	W09
	.byte		N04   , Cs3 
	.byte	W05
	.byte		        Bn3 
	.byte	W05
	.byte		N17   , Dn3 , v048
	.byte	W32
	.byte	W03
@ 024   ----------------------------------------
	.byte	W13
	.byte		N12   
	.byte	W13
	.byte		N09   , An3 , v060
	.byte	W10
	.byte		N04   , Gs3 
	.byte	W05
	.byte		        Fs3 
	.byte	W05
	.byte		N17   , Cs3 , v048
	.byte	W48
	.byte		N17   
	.byte	W02
@ 025   ----------------------------------------
	.byte	W32
	.byte		N19   , Cn3 , v060
	.byte	W20
	.byte		N09   , En3 
	.byte	W10
	.byte		N20   , Bn2 
	.byte	W20
	.byte		N19   , Bn3 
	.byte	W14
@ 026   ----------------------------------------
	.byte	W06
	.byte		N17   , Cs3 , v048
	.byte	W48
	.byte		N17   
	.byte	W17
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_everlasting_wanderers_3:
	.byte	KEYSH , mus_everlasting_wanderers_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 96*mus_everlasting_wanderers_mvl/mxv
	.byte		PAN   , c_v+14
	.byte		N02   , En4 , v076
	.byte	W02
	.byte		N09   
	.byte	W17
	.byte		N03   , Dn4 
	.byte	W04
	.byte		N09   
	.byte	W17
	.byte		N02   , An3 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Dn4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , En4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N02   , Dn4 
	.byte	W03
	.byte		N09   
	.byte	W17
	.byte		N03   , An3 
	.byte	W04
	.byte		N06   
	.byte	W02
@ 001   ----------------------------------------
	.byte	W04
	.byte		N03   , Dn4 
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N02   , Gn3 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , En4 
	.byte	W04
	.byte		N05   
	.byte	W06
	.byte		N03   , Dn4 
	.byte	W03
	.byte		N09   
	.byte	W24
	.byte	W03
	.byte		N03   , En4 
	.byte	W04
	.byte		N09   
	.byte	W17
	.byte		N02   , Dn4 
	.byte	W03
	.byte		N09   
	.byte	W07
@ 002   ----------------------------------------
	.byte	W10
	.byte		N03   , An3 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Dn4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N02   , En4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Dn4 
	.byte	W04
	.byte		N09   
	.byte	W16
	.byte		N03   , An3 
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N02   , Dn4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Gn3 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , En4 
	.byte	W03
	.byte		N06   
	.byte	W02
@ 003   ----------------------------------------
	.byte	W05
	.byte		N03   , Dn4 
	.byte	W03
	.byte		N09   
	.byte	W24
	.byte	W03
	.byte		N03   
	.byte	W04
	.byte		N09   
	.byte	W17
	.byte		N03   , Cn4 
	.byte	W03
	.byte		N09   
	.byte	W17
	.byte		N03   , Gn3 
	.byte	W03
	.byte		N07   
	.byte	W08
	.byte		N02   , Cn4 
	.byte	W02
	.byte		N06   
	.byte	W07
@ 004   ----------------------------------------
	.byte		N03   , Dn4 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn4 
	.byte	W04
	.byte		N09   
	.byte	W17
	.byte		N02   , Gn3 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Cn4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Ds4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N02   , Dn4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Cn4 
	.byte	W04
	.byte		N09   
	.byte	W21
@ 005   ----------------------------------------
	.byte	W06
	.byte		N02   , Dn4 
	.byte	W03
	.byte		N09   
	.byte	W17
	.byte		N03   , Cn4 
	.byte	W03
	.byte		N09   
	.byte	W17
	.byte		N02   , Gn3 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Cn4 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N03   , Dn4 
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N02   , Cn4 
	.byte	W03
	.byte		N09   
	.byte	W16
@ 006   ----------------------------------------
	.byte	W01
	.byte		N03   , Gn3 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Cn4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N02   , En4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Dn4 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn4 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N09   , Bn2 
	.byte	W11
	.byte		        An2 
	.byte	W10
	.byte		N03   , En4 
	.byte	W03
	.byte		N09   
	.byte	W17
	.byte		N03   , Dn4 
	.byte	W03
	.byte		N06   
	.byte	W01
@ 007   ----------------------------------------
	.byte	W06
	.byte		N09   , Gn2 
	.byte	W10
	.byte		N03   , An3 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N03   , Dn4 
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N02   , En4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Dn4 
	.byte	W03
	.byte		N09   
	.byte	W17
	.byte		N03   , An3 
	.byte	W03
	.byte		N07   
	.byte	W08
	.byte		N02   , Dn4 
	.byte	W02
	.byte		N06   
	.byte	W07
	.byte		N03   , Gn3 
	.byte	W04
	.byte		N06   
	.byte	W05
@ 008   ----------------------------------------
	.byte	W01
	.byte		N03   , En4 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N03   , Dn4 
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N04   , Bn2 
	.byte	W10
	.byte		N09   , An2 
	.byte	W10
	.byte		N03   , En4 
	.byte	W03
	.byte		N09   
	.byte	W17
	.byte		N03   , Dn4 
	.byte	W04
	.byte		N09   
	.byte	W16
	.byte		N03   , An3 
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N02   , Dn4 
	.byte	W03
@ 009   ----------------------------------------
	.byte		N06   
	.byte	W07
	.byte		N03   , En4 
	.byte	W04
	.byte		N05   
	.byte	W06
	.byte		N03   , Dn4 
	.byte	W03
	.byte		N09   
	.byte	W17
	.byte		N02   , An3 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Dn4 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N02   , En4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , Dn4 
	.byte	W03
	.byte		N09   
	.byte	W15
@ 010   ----------------------------------------
	.byte	W12
	.byte		N02   , En4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , An3 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N03   , Cs4 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N03   , Dn4 
	.byte	W04
	.byte		N09   
	.byte	W17
	.byte		N03   , En4 
	.byte	W03
	.byte		N09   
	.byte	W24
	.byte	W03
	.byte		N03   , Ds4 
	.byte	W03
@ 011   ----------------------------------------
	.byte	W01
	.byte		N09   
	.byte	W16
	.byte		N03   , Bn3 
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N02   , Fs3 
	.byte	W03
	.byte		N09   
	.byte	W17
	.byte		N03   , Bn3 
	.byte	W03
	.byte		N09   
	.byte	W18
	.byte		N02   , Cs4 
	.byte	W02
	.byte		N09   
	.byte	W24
	.byte	W01
@ 012   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		N03   , Gs3 
	.byte	W04
	.byte		N09   
	.byte	W16
	.byte		N03   , Cs4 
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N02   
	.byte	W03
	.byte		N09   
	.byte	W09
@ 013   ----------------------------------------
	.byte	W48
	.byte		N28   , Fs2 
	.byte	W30
	.byte	W01
	.byte		N19   , Gs2 
	.byte	W17
@ 014   ----------------------------------------
	.byte	W03
	.byte		N28   , An2 
	.byte	W30
	.byte		N40   , Gs2 
	.byte	W40
	.byte	W01
	.byte		N09   , Dn3 
	.byte	W10
	.byte		N28   , Gs2 
	.byte	W12
@ 015   ----------------------------------------
	.byte	W19
	.byte		        Fs2 
	.byte	W30
	.byte		N19   , Gs2 
	.byte	W20
	.byte		        An2 
	.byte	W20
	.byte		N40   , Gs2 
	.byte	W07
@ 016   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N09   , En3 
	.byte	W10
	.byte		N36   , Bn2 
	.byte	W40
	.byte	W01
	.byte		N28   , Fs2 
	.byte	W11
@ 017   ----------------------------------------
	.byte	W19
	.byte		N19   , Gs2 
	.byte	W20
	.byte		N28   , An2 
	.byte	W30
	.byte	W01
	.byte		N28   
	.byte	W24
	.byte	W02
@ 018   ----------------------------------------
	.byte	W04
	.byte		N19   , Gs2 
	.byte	W20
	.byte		N30   , An2 
	.byte	W30
	.byte	W01
	.byte		N28   
	.byte	W30
	.byte		N19   
	.byte	W11
@ 019   ----------------------------------------
	.byte	W10
	.byte		N19   
	.byte	W20
	.byte		N20   , Gs2 
	.byte	W21
	.byte		N02   , Cs4 
	.byte	W02
	.byte		N06   
	.byte	W07
	.byte		N03   , Dn4 
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N03   , En4 
	.byte	W04
	.byte		N04   
	.byte	W17
	.byte		N02   , Fs3 
	.byte	W03
	.byte		N06   
	.byte	W02
@ 020   ----------------------------------------
	.byte	W05
	.byte		N03   , Cs4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   , An3 
	.byte	W03
	.byte		N04   
	.byte	W07
	.byte		N28   , Fs2 
	.byte	W30
	.byte		N19   , Gs2 
	.byte	W21
	.byte		N28   , An2 
	.byte	W20
@ 021   ----------------------------------------
	.byte	W10
	.byte		N36   , Gs2 
	.byte	W40
	.byte	W01
	.byte		N09   , Dn3 
	.byte	W10
	.byte		N28   , Gs2 
	.byte	W30
	.byte		        Fs2 
	.byte	W05
@ 022   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		N19   , Gs2 
	.byte	W20
	.byte		        An2 
	.byte	W20
	.byte		N40   , Gs2 
	.byte	W30
@ 023   ----------------------------------------
	.byte	W11
	.byte		N09   , Bn3 
	.byte	W10
	.byte		N19   , Cs4 
	.byte	W21
	.byte		N09   , Gs3 
	.byte	W09
	.byte		N04   , Fs3 
	.byte	W05
	.byte		        En3 
	.byte	W05
	.byte		N30   , Fs3 
	.byte	W30
	.byte	W01
	.byte		N19   , Gs2 
	.byte	W04
@ 024   ----------------------------------------
	.byte	W16
	.byte		N28   , An2 
	.byte	W30
	.byte		N28   
	.byte	W30
	.byte	W01
	.byte		N28   
	.byte	W19
@ 025   ----------------------------------------
	.byte	W32
	.byte		        Cn3 
	.byte	W30
	.byte		N19   , Fs2 
	.byte	W20
	.byte		        Bn2 
	.byte	W14
@ 026   ----------------------------------------
	.byte	W06
	.byte		N20   , Fn2 
	.byte	W21
	.byte		N03   , Cs4 
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte	FINE

@******************************************************@
	.align	2

mus_everlasting_wanderers:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_everlasting_wanderers_pri	@ Priority
	.byte	mus_everlasting_wanderers_rev	@ Reverb.

	.word	mus_everlasting_wanderers_grp

	.word	mus_everlasting_wanderers_1
	.word	mus_everlasting_wanderers_2
	.word	mus_everlasting_wanderers_3

	.end
