	.include "MPlayDef.s"

	.equ	mus_poke_center_grp, voicegroup_poke_center
	.equ	mus_poke_center_pri, 0
	.equ	mus_poke_center_rev, reverb_set+50
	.equ	mus_poke_center_mvl, 92
	.equ	mus_poke_center_key, 0
	.equ	mus_poke_center_tbs, 1
	.equ	mus_poke_center_exg, 1
	.equ	mus_poke_center_cmp, 1

	.section .rodata
	.global	mus_poke_center
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_poke_center_1:
	.byte	KEYSH , mus_poke_center_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 212*mus_poke_center_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_poke_center_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N13   , As4 , v028
	.byte	W24
	.byte		N04   , Fs4 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N13   , As4 
	.byte	W24
	.byte		N04   , Fs4 
	.byte	W12
	.byte		N04   
	.byte	W12
@ 002   ----------------------------------------
	.byte		N01   
	.byte	W08
	.byte		N01   
	.byte	W08
	.byte		N01   
	.byte	W08
	.byte		N13   , As4 
	.byte	W24
	.byte		N01   , Fs4 
	.byte	W08
	.byte		N01   
	.byte	W08
	.byte		N01   
	.byte	W08
	.byte		N04   
	.byte	W12
	.byte		N01   , As4 
	.byte	W12
mus_poke_center_1_B1:
@ 003   ----------------------------------------
mus_poke_center_1_003:
	.byte		N04   , Fs4 , v028
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N13   , As4 
	.byte	W24
	.byte		N04   , Fs4 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_poke_center_1_004:
	.byte		N04   , Fs4 , v028
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N13   , As4 
	.byte	W24
	.byte		N04   , Fs4 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_003
@ 010   ----------------------------------------
mus_poke_center_1_010:
	.byte		N04   , Fs4 , v028
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N13   , As4 
	.byte	W24
	.byte		N04   , Fs4 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N13   , As4 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_003
@ 014   ----------------------------------------
	.byte		N04   , Fs4 , v028
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N13   , As4 
	.byte	W24
	.byte		N13   
	.byte	W24
	.byte		N04   , Fs4 
	.byte	W12
	.byte		N04   
	.byte	W12
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_003
@ 018   ----------------------------------------
	.byte		N04   , Fs4 , v028
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N13   , As4 
	.byte	W24
	.byte		N01   , Fs4 
	.byte	W08
	.byte		N01   
	.byte	W08
	.byte		N01   
	.byte	W08
	.byte		        As4 
	.byte	W12
	.byte		N01   
	.byte	W12
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_010
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_003
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_010
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_010
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_003
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_010
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_003
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_010
@ 031   ----------------------------------------
mus_poke_center_1_031:
	.byte		N13   , As4 , v028
	.byte	W24
	.byte		N04   , Fs4 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N16   
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N13   , As4 
	.byte	W24
	.byte		N13   
	.byte	W24
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_1_031
@ 034   ----------------------------------------
	.byte		N13   , As4 , v028
	.byte	W24
	.byte		N04   , Fs4 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N13   , As4 
	.byte	W24
	.byte		N04   , Fs4 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte	GOTO
	 .word	mus_poke_center_1_B1
mus_poke_center_1_B2:
@ 035   ----------------------------------------
	.byte		VOICE , 127
	.byte		        127
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_poke_center_2:
	.byte	KEYSH , mus_poke_center_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		VOL   , 115*mus_poke_center_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		TIE   , En1 , v080
	.byte	W96
@ 001   ----------------------------------------
	.byte	W84
	.byte	W02
	.byte		EOT   
	.byte	W10
mus_poke_center_2_B1:
@ 002   ----------------------------------------
mus_poke_center_2_002:
	.byte		N22   , An1 , v080
	.byte	W72
	.byte		N11   
	.byte	W12
	.byte		N32   , En1 , v080, gtp2
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_poke_center_2_003:
	.byte	W24
	.byte		N22   , En2 , v080
	.byte	W48
	.byte		        An1 
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
mus_poke_center_2_004:
	.byte		N22   , Bn1 , v080
	.byte	W72
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_poke_center_2_005:
	.byte	W24
	.byte		N22   , Dn2 , v080
	.byte	W48
	.byte		N11   , En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_poke_center_2_006:
	.byte		N22   , Bn1 , v080
	.byte	W72
	.byte		N11   , Gs1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_poke_center_2_007:
	.byte	W24
	.byte		N22   , Dn2 , v080
	.byte	W48
	.byte		        Gs1 
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_2_002
@ 009   ----------------------------------------
	.byte	W24
	.byte		N44   , En1 , v080, gtp1
	.byte	W48
	.byte		N22   , Dn2 
	.byte	W24
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_2_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_2_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_2_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_2_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_2_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_2_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_2_002
@ 017   ----------------------------------------
	.byte	W24
	.byte		N22   , En2 , v080
	.byte	W48
	.byte		N11   , En1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N22   , An1 
	.byte	W72
	.byte		N11   , En1 
	.byte	W12
	.byte		N32   , An1 , v080, gtp2
	.byte	W12
@ 019   ----------------------------------------
	.byte	W72
	.byte		N22   
	.byte	W24
@ 020   ----------------------------------------
	.byte		        Dn2 
	.byte	W72
	.byte		N11   , An1 
	.byte	W12
	.byte		N22   , Dn2 
	.byte	W12
@ 021   ----------------------------------------
	.byte	W12
	.byte		        En1 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N22   , Fs1 
	.byte	W24
	.byte		        Gn1 
	.byte	W24
@ 022   ----------------------------------------
	.byte		        Gs1 
	.byte	W72
	.byte		N11   , En1 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 023   ----------------------------------------
mus_poke_center_2_023:
	.byte		N44   , Bn1 , v080, gtp1
	.byte	W48
	.byte		        Gs1 , v080, gtp1
	.byte	W48
	.byte	PEND
@ 024   ----------------------------------------
	.byte		N22   , An1 
	.byte	W72
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Cs2 
	.byte	W12
	.byte		N22   , En1 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N22   , Fs1 
	.byte	W24
	.byte		        Gn1 
	.byte	W24
@ 026   ----------------------------------------
	.byte		        An1 
	.byte	W72
	.byte		N11   , En1 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 027   ----------------------------------------
	.byte		N22   , Cs2 
	.byte	W72
	.byte		N11   , An1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 028   ----------------------------------------
	.byte		N22   , Dn2 
	.byte	W72
	.byte		        En1 
	.byte	W24
@ 029   ----------------------------------------
	.byte		N11   , Dn2 
	.byte	W12
	.byte		N22   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N22   , Fs1 
	.byte	W24
	.byte		        An1 
	.byte	W24
@ 030   ----------------------------------------
	.byte		        Gs1 
	.byte	W72
	.byte		        En1 
	.byte	W24
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_2_023
@ 032   ----------------------------------------
	.byte		N22   , An1 , v080
	.byte	W72
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 033   ----------------------------------------
	.byte		        Dn2 
	.byte	W12
	.byte		N22   , En1 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N22   , Fs1 
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte	GOTO
	 .word	mus_poke_center_2_B1
mus_poke_center_2_B2:
@ 034   ----------------------------------------
	.byte		VOICE , 80
	.byte		        80
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_poke_center_3:
	.byte	KEYSH , mus_poke_center_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_poke_center_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N22   , En3 , v080
	.byte		N22   , Cs4 
	.byte	W24
	.byte		        An3 
	.byte		N22   , En4 
	.byte	W24
	.byte		        Cs3 
	.byte		N22   , An3 
	.byte	W24
	.byte		        Bn2 
	.byte		N22   , Gs3 
	.byte	W24
@ 001   ----------------------------------------
	.byte		        An2 
	.byte		N22   , Fs3 
	.byte	W24
	.byte		        Bn2 
	.byte		N22   , Gs3 
	.byte	W24
	.byte		        Cs3 
	.byte		N22   , An3 
	.byte	W24
	.byte		        Bn2 
	.byte		N22   , Bn3 
	.byte	W24
mus_poke_center_3_B1:
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		N22   , Bn3 , v080
	.byte	W24
	.byte		N44   , Dn4 , v080, gtp1
	.byte	W48
	.byte		N22   , Bn3 
	.byte	W24
@ 005   ----------------------------------------
	.byte		        Gs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W24
	.byte		        An3 
	.byte		N22   , En4 
	.byte	W24
	.byte		        An3 
	.byte		N22   , Fs4 
	.byte	W24
	.byte		        Bn3 
	.byte		N22   , Gs4 
	.byte	W24
@ 009   ----------------------------------------
	.byte		        Cs4 
	.byte		N22   , An4 
	.byte	W24
	.byte		N11   , Bn3 
	.byte		N11   , Gs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N22   , An3 
	.byte		N22   , Fs4 
	.byte	W24
	.byte		        Bn3 
	.byte		N22   , Gs4 
	.byte	W24
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W72
	.byte		        En4 
	.byte	W24
@ 013   ----------------------------------------
	.byte		        Dn4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
@ 014   ----------------------------------------
	.byte		        Gs3 
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte		N90   , Cs4 , v080, gtp1
	.byte	W96
@ 019   ----------------------------------------
	.byte		        En4 , v080, gtp1
	.byte	W96
@ 020   ----------------------------------------
	.byte		N22   , Dn4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
@ 021   ----------------------------------------
	.byte		N90   , Bn3 , v080, gtp1
	.byte	W96
@ 022   ----------------------------------------
	.byte		        Gs3 , v080, gtp1
	.byte	W96
@ 023   ----------------------------------------
	.byte		        Bn3 , v080, gtp1
	.byte	W96
@ 024   ----------------------------------------
mus_poke_center_3_024:
	.byte		N22   , Cs4 , v080
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
	.byte		N90   , An3 , v080, gtp1
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Cs4 , v080, gtp1
	.byte	W96
@ 027   ----------------------------------------
	.byte		        En4 , v080, gtp1
	.byte	W96
@ 028   ----------------------------------------
	.byte		N22   , Dn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        En4 
	.byte	W24
@ 029   ----------------------------------------
	.byte		N90   , Fs4 , v080, gtp1
	.byte	W96
@ 030   ----------------------------------------
	.byte		N44   , En4 , v080, gtp1
	.byte	W48
	.byte		N22   , Dn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
@ 031   ----------------------------------------
	.byte		N90   , Dn4 , v080, gtp1
	.byte	W96
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_3_024
@ 033   ----------------------------------------
	.byte		N90   , An3 , v080, gtp1
	.byte	W96
	.byte	GOTO
	 .word	mus_poke_center_3_B1
mus_poke_center_3_B2:
@ 034   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_poke_center_4:
	.byte	KEYSH , mus_poke_center_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 12
	.byte		VOL   , 127*mus_poke_center_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
mus_poke_center_4_B1:
@ 002   ----------------------------------------
mus_poke_center_4_002:
	.byte		N11   , An4 , v080
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N23   , Cs5 
	.byte	W24
	.byte		N44   , En5 , v080, gtp3
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		N11   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N23   , Bn4 
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte		N11   , Gs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N23   , Gs4 
	.byte	W24
	.byte		N44   , Cs5 , v080, gtp3
	.byte	W24
@ 007   ----------------------------------------
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        Gs4 
	.byte	W24
@ 008   ----------------------------------------
mus_poke_center_4_008:
	.byte		N23   , An4 , v080
	.byte	W24
	.byte		N68   , Cs5 , v080, gtp3
	.byte	W72
	.byte	PEND
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_4_002
@ 011   ----------------------------------------
	.byte	W24
	.byte		N23   , Dn5 , v080
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 012   ----------------------------------------
	.byte		N23   , Bn4 
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte		N11   , Gs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N23   , Gs4 
	.byte	W24
	.byte		N44   , Bn4 , v080, gtp3
	.byte	W24
@ 015   ----------------------------------------
	.byte	W24
	.byte		        Dn5 , v080, gtp3
	.byte	W48
	.byte		N23   , Gs4 
	.byte	W24
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_4_008
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
	.byte	GOTO
	 .word	mus_poke_center_4_B1
mus_poke_center_4_B2:
@ 034   ----------------------------------------
	.byte		VOICE , 12
	.byte		        12
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_poke_center_5:
	.byte	KEYSH , mus_poke_center_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte		VOL   , 113*mus_poke_center_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
mus_poke_center_5_B1:
@ 002   ----------------------------------------
	.byte	W72
	.byte		N32   , En4 , v080, gtp2
	.byte	W24
@ 003   ----------------------------------------
	.byte	W24
	.byte		N22   
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N11   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N22   , Bn3 
	.byte	W24
	.byte		N68   , Gs3 
	.byte	W72
@ 005   ----------------------------------------
	.byte	W48
	.byte		N22   , Fs3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
@ 006   ----------------------------------------
	.byte	W72
	.byte		N44   , Cs4 , v080, gtp1
	.byte	W24
@ 007   ----------------------------------------
	.byte	W24
	.byte		        Bn3 , v080, gtp1
	.byte	W48
	.byte		N22   , Gs3 
	.byte	W24
@ 008   ----------------------------------------
	.byte		        An3 
	.byte	W24
	.byte		N68   , Cs4 
	.byte	W72
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W72
	.byte		N32   , En5 , v080, gtp2
	.byte	W24
@ 011   ----------------------------------------
	.byte	W24
	.byte		N44   , Dn5 , v080, gtp1
	.byte	W48
	.byte		N22   , Cs5 
	.byte	W24
@ 012   ----------------------------------------
	.byte		        Bn4 
	.byte	W24
	.byte		N68   , Gs4 
	.byte	W72
@ 013   ----------------------------------------
	.byte	W48
	.byte		N22   , Bn4 
	.byte	W24
	.byte		N11   , As4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N22   , Gs4 
	.byte	W48
	.byte		N22   
	.byte	W24
	.byte		N44   , Cs5 , v080, gtp1
	.byte	W24
@ 015   ----------------------------------------
	.byte	W24
	.byte		        Bn4 , v080, gtp1
	.byte	W48
	.byte		N22   , Gs4 
	.byte	W24
@ 016   ----------------------------------------
	.byte		N44   , An4 , v080, gtp1
	.byte	W48
	.byte		N06   , An3 
	.byte	W06
	.byte		        As3 
	.byte	W07
	.byte		        Bn3 
	.byte	W07
	.byte		        Cn4 
	.byte	W07
	.byte		        Cs4 
	.byte	W07
	.byte		        Dn4 
	.byte	W07
	.byte		        Ds4 
	.byte	W07
@ 017   ----------------------------------------
	.byte		N44   , En4 , v080, gtp1
	.byte	W48
	.byte		N04   
	.byte	W05
	.byte		        Fn4 
	.byte	W05
	.byte		        Fs4 
	.byte	W05
	.byte		N05   , Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W05
	.byte		        An4 
	.byte	W05
	.byte		N04   , As4 
	.byte	W06
	.byte		        Bn4 
	.byte	W05
	.byte		N05   , Cn5 
	.byte	W06
@ 018   ----------------------------------------
	.byte		N90   , Cs5 , v080, gtp1
	.byte	W96
@ 019   ----------------------------------------
	.byte		N68   , En5 
	.byte	W72
	.byte		N11   , Cn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N22   , Dn5 
	.byte	W24
	.byte		        En5 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
@ 021   ----------------------------------------
	.byte		N32   , Bn4 , v080, gtp2
	.byte	W36
	.byte		N11   , Gs4 
	.byte	W12
	.byte		N22   , Cs5 
	.byte	W24
	.byte		N11   , Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 022   ----------------------------------------
	.byte		        Bn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 023   ----------------------------------------
	.byte		        Dn5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N22   , Dn5 
	.byte	W24
	.byte		        Gs4 
	.byte	W24
@ 024   ----------------------------------------
mus_poke_center_5_024:
	.byte		N05   , Cn5 , v080
	.byte	W05
	.byte		N17   , Cs5 
	.byte	W19
	.byte		N22   , Dn5 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
	.byte		N11   , An4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N05   , Ds5 
	.byte	W05
	.byte		N17   , En5 
	.byte	W19
	.byte		N11   , Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
@ 026   ----------------------------------------
	.byte		        Cs5 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
@ 027   ----------------------------------------
	.byte		        En5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
@ 028   ----------------------------------------
	.byte		        An5 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 029   ----------------------------------------
	.byte		        Fs5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
@ 030   ----------------------------------------
	.byte		N05   , Ds5 
	.byte	W05
	.byte		N40   , En5 
	.byte	W42
	.byte	W01
	.byte		N22   , Dn5 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
@ 031   ----------------------------------------
	.byte		N90   , Dn5 , v080, gtp1
	.byte	W96
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_poke_center_5_024
@ 033   ----------------------------------------
	.byte		N90   , An4 , v080, gtp1
	.byte	W96
	.byte	GOTO
	 .word	mus_poke_center_5_B1
mus_poke_center_5_B2:
@ 034   ----------------------------------------
	.byte		VOICE , 73
	.byte		        73
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_poke_center_6:
	.byte	KEYSH , mus_poke_center_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 81
	.byte		VOL   , 93*mus_poke_center_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
mus_poke_center_6_B1:
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
	.byte		N44   , En3 , v080, gtp1
	.byte	W96
@ 017   ----------------------------------------
	.byte		        An2 , v080, gtp1
	.byte	W96
@ 018   ----------------------------------------
	.byte		N90   , Cs3 , v080, gtp1
	.byte	W96
@ 019   ----------------------------------------
	.byte		N68   , En3 
	.byte	W72
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N22   , Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
@ 021   ----------------------------------------
	.byte		N32   , Bn2 , v080, gtp2
	.byte	W36
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N22   , Cs3 
	.byte	W24
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 022   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 023   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N22   , Dn3 
	.byte	W24
	.byte		        Gs2 
	.byte	W24
@ 024   ----------------------------------------
	.byte		N05   , Ds3 
	.byte	W05
	.byte		N17   , En3 
	.byte	W19
	.byte		N22   , Fs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
@ 025   ----------------------------------------
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W05
	.byte		N17   , Gs3 
	.byte	W19
	.byte		N11   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 026   ----------------------------------------
	.byte		N90   , Cs3 , v080, gtp1
	.byte	W96
@ 027   ----------------------------------------
	.byte		        En3 , v080, gtp1
	.byte	W96
@ 028   ----------------------------------------
	.byte		        Dn3 , v080, gtp1
	.byte	W96
@ 029   ----------------------------------------
	.byte		        Fs3 , v080, gtp1
	.byte	W96
@ 030   ----------------------------------------
	.byte		N05   , Gn3 
	.byte	W05
	.byte		N40   , Gs3 
	.byte	W42
	.byte	W01
	.byte		N22   , Fs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
@ 031   ----------------------------------------
	.byte		N44   , An3 , v080, gtp1
	.byte	W48
	.byte		        Gs3 , v080, gtp1
	.byte	W48
@ 032   ----------------------------------------
	.byte		N05   , En3 
	.byte	W05
	.byte		N17   
	.byte	W19
	.byte		N22   , Fs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
@ 033   ----------------------------------------
	.byte		N90   , Cs3 , v080, gtp1
	.byte	W96
	.byte	GOTO
	 .word	mus_poke_center_6_B1
mus_poke_center_6_B2:
@ 034   ----------------------------------------
	.byte		VOICE , 81
	.byte		        81
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_poke_center:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_poke_center_pri	@ Priority
	.byte	mus_poke_center_rev	@ Reverb.

	.word	mus_poke_center_grp

	.word	mus_poke_center_1
	.word	mus_poke_center_2
	.word	mus_poke_center_3
	.word	mus_poke_center_4
	.word	mus_poke_center_5
	.word	mus_poke_center_6

	.end
