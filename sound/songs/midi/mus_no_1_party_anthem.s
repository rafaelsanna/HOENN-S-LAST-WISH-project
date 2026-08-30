	.include "MPlayDef.s"

	.equ	mus_no_1_party_anthem_grp, voicegroup_no_1_party_anthem
	.equ	mus_no_1_party_anthem_pri, 0
	.equ	mus_no_1_party_anthem_rev, reverb_set+50
	.equ	mus_no_1_party_anthem_mvl, 100
	.equ	mus_no_1_party_anthem_key, 0
	.equ	mus_no_1_party_anthem_tbs, 1
	.equ	mus_no_1_party_anthem_exg, 1
	.equ	mus_no_1_party_anthem_cmp, 1

	.section .rodata
	.global	mus_no_1_party_anthem
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_no_1_party_anthem_1:
	.byte	KEYSH , mus_no_1_party_anthem_key+0
mus_no_1_party_anthem_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 115*mus_no_1_party_anthem_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_no_1_party_anthem_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N48   , Gn0 , v060
	.byte	W60
	.byte		N11   , En1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
@ 001   ----------------------------------------
mus_no_1_party_anthem_1_001:
	.byte		N48   , Bn0 , v060
	.byte	W60
	.byte		N11   , An0 
	.byte	W12
	.byte		N23   , Bn0 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
	.byte		N96   , Cn1 
	.byte	W96
@ 003   ----------------------------------------
mus_no_1_party_anthem_1_003:
	.byte	W36
	.byte		N11   , An0 , v060
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte		N48   , An0 
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte		N23   , Cn1 
	.byte	W24
@ 005   ----------------------------------------
mus_no_1_party_anthem_1_005:
	.byte		N44   , Dn1 , v060, gtp3
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N23   , Bn0 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte		N96   , Gn0 
	.byte	W96
@ 007   ----------------------------------------
	.byte	W48
	.byte		N11   , En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N23   , Bn0 
	.byte	W24
@ 008   ----------------------------------------
mus_no_1_party_anthem_1_008:
	.byte		N48   , Gn0 , v060
	.byte	W60
	.byte		N11   , En1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_001
@ 010   ----------------------------------------
mus_no_1_party_anthem_1_010:
	.byte		N48   , Cn1 , v060
	.byte	W84
	.byte		N11   , An0 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_no_1_party_anthem_1_011:
	.byte		N44   , Cn1 , v060, gtp3
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N23   , Cn1 
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
	.byte		N44   , An0 , v060, gtp3
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_005
@ 014   ----------------------------------------
	.byte		N96   , Gn0 , v060
	.byte	W96
@ 015   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N23   , Bn0 
	.byte	W24
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_008
@ 017   ----------------------------------------
mus_no_1_party_anthem_1_017:
	.byte		N48   , Bn0 , v060
	.byte	W60
	.byte		N11   , Gn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_010
@ 019   ----------------------------------------
mus_no_1_party_anthem_1_019:
	.byte		N44   , Cn1 , v060, gtp3
	.byte	W48
	.byte		        Bn0 , v060, gtp3
	.byte	W48
	.byte	PEND
@ 020   ----------------------------------------
mus_no_1_party_anthem_1_020:
	.byte		N44   , An0 , v060, gtp3
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_no_1_party_anthem_1_021:
	.byte		N44   , Dn1 , v060, gtp3
	.byte	W48
	.byte		N23   , Bn0 
	.byte	W24
	.byte		        An0 
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
	.byte		N24   , Gn0 
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N24   
	.byte	W36
	.byte		N11   , Dn1 
	.byte	W12
@ 023   ----------------------------------------
mus_no_1_party_anthem_1_023:
	.byte		N48   , Gn1 , v060
	.byte	W72
	.byte		N23   , Dn1 
	.byte	W24
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_017
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_021
@ 030   ----------------------------------------
mus_no_1_party_anthem_1_030:
	.byte		N44   , Cn1 , v060, gtp3
	.byte	W48
	.byte		        En1 , v060, gtp3
	.byte	W48
	.byte	PEND
@ 031   ----------------------------------------
mus_no_1_party_anthem_1_031:
	.byte		N23   , Dn1 , v060
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        Bn0 
	.byte	W24
	.byte		        An0 
	.byte	W24
	.byte	PEND
@ 032   ----------------------------------------
	.byte		N96   , Gn0 
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte		        Cn1 
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte		        Gn0 
	.byte	W96
@ 039   ----------------------------------------
	.byte	W48
	.byte		N11   , Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N23   , Bn0 
	.byte	W24
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_001
@ 042   ----------------------------------------
	.byte		N96   , Cn1 , v060
	.byte	W96
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_003
@ 044   ----------------------------------------
	.byte		N24   , An0 , v060
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Cn1 
	.byte	W24
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_005
@ 046   ----------------------------------------
	.byte		N96   , Gn0 , v060
	.byte	W96
@ 047   ----------------------------------------
	.byte	W24
	.byte		N11   , En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N23   , Bn0 
	.byte	W24
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_008
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_001
@ 050   ----------------------------------------
	.byte		N44   , Cn1 , v060, gtp3
	.byte	W48
	.byte		N24   
	.byte	W36
	.byte		N11   , An0 
	.byte	W12
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_011
@ 052   ----------------------------------------
	.byte		N44   , An0 , v060, gtp3
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Cn1 
	.byte	W24
@ 053   ----------------------------------------
	.byte		N92   , Dn1 , v060, gtp3
	.byte	W96
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_030
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_031
@ 056   ----------------------------------------
	.byte		N96   , Gn0 , v060
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte		        Cn1 
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
mus_no_1_party_anthem_1_062:
	.byte		N48   , Gn0 , v060
	.byte	W60
	.byte		N11   , Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 063   ----------------------------------------
	.byte		N48   , Gn1 
	.byte	W60
	.byte		N11   , Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_062
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_023
@ 066   ----------------------------------------
	.byte		N48   , Cn1 , v060
	.byte	W60
	.byte		N11   , Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
@ 067   ----------------------------------------
mus_no_1_party_anthem_1_067:
	.byte		N48   , Cn1 , v060
	.byte	W72
	.byte		N23   , Dn1 
	.byte	W24
	.byte	PEND
@ 068   ----------------------------------------
	.byte		N96   , Gn1 
	.byte	W96
@ 069   ----------------------------------------
	.byte	W48
	.byte		N23   , En1 
	.byte	W24
	.byte		        Bn0 
	.byte	W24
@ 070   ----------------------------------------
mus_no_1_party_anthem_1_070:
	.byte		N24   , Cn1 , v060
	.byte	W36
	.byte		N11   , Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte	PEND
@ 071   ----------------------------------------
mus_no_1_party_anthem_1_071:
	.byte		N48   , An0 , v060
	.byte	W60
	.byte		N11   , Gn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte	PEND
@ 072   ----------------------------------------
mus_no_1_party_anthem_1_072:
	.byte		N24   , En1 , v060
	.byte	W36
	.byte		N11   , Bn0 
	.byte	W12
	.byte		N24   , En1 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 073   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Bn0 
	.byte	W12
	.byte		N23   , En1 
	.byte	W24
	.byte		N23   
	.byte	W24
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_070
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_071
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_072
@ 077   ----------------------------------------
	.byte	W12
	.byte		N23   , En1 , v060
	.byte	W24
	.byte		N11   , Bn0 
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W48
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_070
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_071
@ 080   ----------------------------------------
	.byte		N24   , En1 , v060
	.byte	W36
	.byte		N11   , Bn0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N12   , An0 
	.byte	W12
@ 081   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N48   
	.byte	W60
@ 082   ----------------------------------------
	.byte		N24   , Cn1 
	.byte	W36
	.byte		N11   , Gn0 
	.byte	W12
	.byte		N24   , Cn1 
	.byte	W36
	.byte		N12   
	.byte	W12
@ 083   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N11   , Gn0 
	.byte	W12
	.byte		N44   , Cn1 , v060, gtp3
	.byte	W48
@ 084   ----------------------------------------
	.byte		N24   , Dn1 
	.byte	W36
	.byte		N11   , An0 
	.byte	W12
	.byte		N24   , Dn1 
	.byte	W36
	.byte		N12   
	.byte	W12
@ 085   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N11   , An0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		N23   , Dn1 
	.byte	W24
@ 086   ----------------------------------------
	.byte		N96   , Gn0 
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte		        Cn1 
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_008
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_017
@ 094   ----------------------------------------
	.byte		N48   , Cn1 , v060
	.byte	W60
	.byte		N11   , Bn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 095   ----------------------------------------
	.byte		N48   , En1 
	.byte	W60
	.byte		N11   , Bn0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
@ 096   ----------------------------------------
	.byte		N48   , An0 
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 097   ----------------------------------------
	.byte		N48   , Dn1 
	.byte	W72
	.byte		N23   
	.byte	W24
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_008
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_017
@ 100   ----------------------------------------
	.byte		N48   , Cn1 , v060
	.byte	W60
	.byte		N11   , Gn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_067
@ 102   ----------------------------------------
mus_no_1_party_anthem_1_102:
	.byte		N24   , Gn0 , v060
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N24   
	.byte	W36
	.byte		N12   , Cn1 
	.byte	W12
	.byte	PEND
@ 103   ----------------------------------------
mus_no_1_party_anthem_1_103:
	.byte	W12
	.byte		N12   , Cn1 , v060
	.byte	W24
	.byte		N11   , Gn0 
	.byte	W12
	.byte		N12   , Cn1 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 104   ----------------------------------------
mus_no_1_party_anthem_1_104:
	.byte		N44   , Gn0 , v060, gtp3
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N12   , Cn1 
	.byte	W12
	.byte	PEND
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_103
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_102
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_103
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_104
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_1_103
@ 110   ----------------------------------------
	.byte		N96   , Gn0 , v060
	.byte	W96
@ 111   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_no_1_party_anthem_1_B1
mus_no_1_party_anthem_1_B2:
@ 112   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_no_1_party_anthem_2:
	.byte	KEYSH , mus_no_1_party_anthem_key+0
mus_no_1_party_anthem_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 62*mus_no_1_party_anthem_mvl/mxv
	.byte		PAN   , c_v-14
	.byte		N11   , Gn1 , v040
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 001   ----------------------------------------
	.byte		N03   , Fs3 
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		N28   , Bn2 , v040, gtp1
	.byte	W30
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N22   , An3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 002   ----------------------------------------
	.byte		N02   , Cn2 
	.byte	W02
	.byte		        Gn2 
	.byte	W02
	.byte		N07   , Cn3 
	.byte	W08
	.byte		N11   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N22   , Bn3 
	.byte	W12
@ 003   ----------------------------------------
	.byte	W12
	.byte		N32   , Gn3 , v040, gtp3
	.byte	W36
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N23   , En2 
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N23   , An2 
	.byte	W24
	.byte		N22   , An3 
	.byte	W24
	.byte		N22   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N02   , Gn1 
	.byte	W02
	.byte		        Dn2 
	.byte	W02
	.byte		N19   , Gn2 
	.byte	W20
	.byte		N11   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N22   , Bn3 
	.byte	W12
@ 007   ----------------------------------------
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 008   ----------------------------------------
	.byte		N15   , Gn2 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N22   
	.byte	W24
	.byte		        Gn3 
	.byte	W24
@ 009   ----------------------------------------
	.byte		N23   , Fs2 
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W36
	.byte		N11   , En3 
	.byte	W12
@ 010   ----------------------------------------
	.byte		N23   , Cn3 
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W36
	.byte		N11   , En3 
	.byte	W12
@ 011   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		N22   , Bn3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N22   , An3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
@ 012   ----------------------------------------
	.byte		N03   , Cn2 
	.byte	W03
	.byte		        En2 
	.byte	W03
	.byte		N88   , An2 , v040, gtp1
	.byte	W90
@ 013   ----------------------------------------
	.byte		N15   
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N22   , An3 
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N22   , Gn1 
	.byte	W24
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N22   , Fs2 , v044
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		        An1 
	.byte	W24
@ 016   ----------------------------------------
	.byte		N15   , Gn2 
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		        Dn3 
	.byte	W16
	.byte		        An3 
	.byte	W15
	.byte		        Gn3 
	.byte	W16
	.byte		N32   , Bn2 , v044, gtp3
	.byte	W01
@ 017   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   , Fs3 
	.byte	W12
	.byte		N15   
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		        Fs3 
	.byte	W16
	.byte		N32   , Cn3 , v044, gtp3
	.byte	W01
@ 018   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N32   , En3 , v044, gtp3
	.byte	W36
	.byte		N11   
	.byte	W13
@ 019   ----------------------------------------
	.byte		N15   , Bn3 
	.byte	W16
	.byte		        An3 
	.byte	W15
	.byte		        Gn3 
	.byte	W16
	.byte		        En3 
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		N32   , An2 , v044, gtp3
	.byte	W01
@ 020   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   , En3 
	.byte	W12
	.byte		N15   , Cn3 
	.byte	W16
	.byte		        Fs3 
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		N32   , Dn2 , v044, gtp3
	.byte	W01
@ 021   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   , Fs3 
	.byte	W12
	.byte		N15   , Fs2 
	.byte	W16
	.byte		        En3 
	.byte	W16
	.byte		        An2 
	.byte	W16
	.byte		N32   , Gn2 , v044, gtp3
	.byte	W01
@ 022   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N44   , Bn2 , v044, gtp1
	.byte	W48
	.byte		N15   
	.byte	W01
@ 023   ----------------------------------------
	.byte	W15
	.byte		        Dn3 , v048
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W01
@ 024   ----------------------------------------
	.byte	W15
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N32   , Bn2 , v048, gtp3
	.byte	W01
@ 025   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   , Fs3 
	.byte	W12
	.byte		N15   , Ds3 
	.byte	W16
	.byte		        En3 
	.byte	W16
	.byte		        Ds3 
	.byte	W16
	.byte		N32   , Cn3 , v048, gtp3
	.byte	W01
@ 026   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N17   , En3 
	.byte	W18
	.byte		        Gn2 
	.byte	W18
	.byte		N11   , En3 
	.byte	W12
	.byte		N15   
	.byte	W01
@ 027   ----------------------------------------
	.byte	W15
	.byte		N15   
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		        En3 
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		N32   , An2 , v048, gtp3
	.byte	W01
@ 028   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   , En3 
	.byte	W12
	.byte		N15   , Cn3 
	.byte	W16
	.byte		        An3 , v044
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		N32   , Dn2 , v044, gtp3
	.byte	W01
@ 029   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N15   , Fs2 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		N32   , Ds3 , v044, gtp2
	.byte	W01
@ 030   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   
	.byte	W12
	.byte		N15   , Ds2 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		N11   , Dn2 
	.byte	W01
@ 031   ----------------------------------------
	.byte	W11
	.byte		N22   , Fs3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N22   , Dn2 
	.byte	W01
@ 032   ----------------------------------------
	.byte	W23
	.byte		        Bn1 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		N11   , Bn1 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N15   , Ds2 
	.byte	W01
@ 033   ----------------------------------------
mus_no_1_party_anthem_2_033:
	.byte	W15
	.byte		N07   , An3 , v044
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		N15   , Bn3 
	.byte	W16
	.byte		        Cn4 
	.byte	W16
	.byte		N07   , Bn3 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		N15   , An3 
	.byte	W16
	.byte		N22   , En2 
	.byte	W01
	.byte	PEND
@ 034   ----------------------------------------
	.byte	W23
	.byte		        Bn1 
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte		N11   , Bn1 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N15   , Fn2 
	.byte	W01
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_2_033
@ 036   ----------------------------------------
	.byte	W23
	.byte		N11   , Cn2 , v044
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N22   , Ds2 
	.byte	W01
@ 037   ----------------------------------------
	.byte	W23
	.byte		N11   , Cn2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N22   , Dn2 
	.byte	W01
@ 038   ----------------------------------------
	.byte	W23
	.byte		        Dn3 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		        Dn2 
	.byte	W01
@ 039   ----------------------------------------
	.byte	W23
	.byte		        Bn1 
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N44   , Gn1 , v044, gtp1
	.byte	W01
@ 040   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N08   , Dn3 
	.byte	W09
	.byte		N08   
	.byte	W09
	.byte		        An3 
	.byte	W09
	.byte		        Bn3 
	.byte	W09
	.byte		N32   , Ds3 , v044, gtp2
	.byte	W01
@ 041   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   
	.byte	W12
	.byte		N22   
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N23   , Cn2 
	.byte	W01
@ 042   ----------------------------------------
	.byte	W23
	.byte		N11   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn2 
	.byte	W01
@ 043   ----------------------------------------
	.byte	W11
	.byte		        Gn3 
	.byte	W12
	.byte		N23   , En3 
	.byte	W24
	.byte		N22   , En2 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		N23   , An1 
	.byte	W01
@ 044   ----------------------------------------
	.byte	W23
	.byte		N11   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N22   , Dn3 
	.byte	W01
@ 045   ----------------------------------------
	.byte	W23
	.byte		        An3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W13
@ 046   ----------------------------------------
	.byte		N23   , Gn2 
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 047   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		N32   , Gn3 , v044, gtp3
	.byte	W36
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 048   ----------------------------------------
	.byte		N15   , Dn3 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N23   , Bn1 
	.byte	W24
	.byte		N22   , Gn3 
	.byte	W24
@ 049   ----------------------------------------
	.byte		N15   , En3 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		N32   , Ds2 , v044, gtp3
	.byte	W36
	.byte		N11   , En3 
	.byte	W12
@ 050   ----------------------------------------
	.byte		N15   
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		        En2 
	.byte	W16
	.byte		        Gn3 
	.byte	W15
	.byte		N13   , En3 
	.byte	W16
	.byte		N15   , Cn2 
	.byte	W01
@ 051   ----------------------------------------
	.byte	W15
	.byte		        Bn3 
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		        En2 
	.byte	W16
	.byte		N07   , Gn3 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		N15   , En3 
	.byte	W16
	.byte		N22   
	.byte	W01
@ 052   ----------------------------------------
	.byte	W23
	.byte		N11   , Bn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N44   , Dn2 , v044, gtp1
	.byte	W01
@ 053   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N23   , Fs2 
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N22   , Ds3 
	.byte	W01
@ 054   ----------------------------------------
	.byte	W23
	.byte		        Bn3 
	.byte	W24
	.byte		N15   , Ds3 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		N11   , Dn2 
	.byte	W01
@ 055   ----------------------------------------
	.byte	W11
	.byte		N22   , Fs3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn2 
	.byte	W01
@ 056   ----------------------------------------
	.byte	W11
	.byte		N32   , Gn3 , v044, gtp3
	.byte	W36
	.byte		        Bn2 , v044, gtp3
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N15   , Bn2 
	.byte	W01
@ 057   ----------------------------------------
	.byte	W15
	.byte		        An3 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		N23   , Ds3 
	.byte	W24
	.byte		N15   , Cn4 
	.byte	W16
	.byte		N07   , Bn3 
	.byte	W08
	.byte		N11   , Bn1 
	.byte	W01
@ 058   ----------------------------------------
	.byte	W11
	.byte		        An3 
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N15   , Fn2 
	.byte	W01
@ 059   ----------------------------------------
	.byte	W15
	.byte		        An3 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		N23   , An2 
	.byte	W24
	.byte		N15   , Cn4 
	.byte	W16
	.byte		N07   , Bn3 
	.byte	W08
	.byte		N11   , Cn2 
	.byte	W01
@ 060   ----------------------------------------
	.byte	W11
	.byte		        An3 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , Ds2 
	.byte	W01
@ 061   ----------------------------------------
mus_no_1_party_anthem_2_061:
	.byte	W11
	.byte		N11   , Cn2 , v044
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		        Dn2 
	.byte	W01
	.byte	PEND
@ 062   ----------------------------------------
	.byte	W23
	.byte		N22   , Dn3 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N15   , Bn2 
	.byte	W01
@ 063   ----------------------------------------
	.byte	W15
	.byte		        An3 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		N22   , Ds3 
	.byte	W24
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N03   , Fs2 
	.byte	W04
	.byte		N07   , Bn3 
	.byte	W08
	.byte		N11   , Bn1 
	.byte	W01
@ 064   ----------------------------------------
	.byte	W11
	.byte		        An3 
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		N11   , En2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N23   , Fn2 
	.byte	W01
@ 065   ----------------------------------------
	.byte	W23
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn2 
	.byte	W01
@ 066   ----------------------------------------
	.byte	W11
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , Ds2 
	.byte	W01
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_2_061
@ 068   ----------------------------------------
	.byte	W23
	.byte		N23   , Bn3 , v044
	.byte	W24
	.byte		N44   , Bn2 , v044, gtp1
	.byte	W48
	.byte		N15   , Fn2 
	.byte	W01
@ 069   ----------------------------------------
	.byte	W15
	.byte		        An3 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		N22   , An3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		N11   , Cn2 
	.byte	W01
@ 070   ----------------------------------------
mus_no_1_party_anthem_2_070:
	.byte	W11
	.byte		N11   , Gn2 , v044
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N03   , Cn3 
	.byte	W04
	.byte		N07   , Bn3 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		N15   , Dn4 
	.byte	W16
	.byte		N11   , An1 
	.byte	W01
	.byte	PEND
@ 071   ----------------------------------------
mus_no_1_party_anthem_2_071:
	.byte	W11
	.byte		N11   , En2 , v044
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N03   , An2 
	.byte	W04
	.byte		N07   , Bn3 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		N15   , Dn4 
	.byte	W16
	.byte		N11   , En2 
	.byte	W01
	.byte	PEND
@ 072   ----------------------------------------
mus_no_1_party_anthem_2_072:
	.byte	W11
	.byte		N11   , Bn1 , v044
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N03   , En2 
	.byte	W04
	.byte		N07   , En4 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		N15   , Fs3 
	.byte	W16
	.byte		N11   , En2 
	.byte	W01
	.byte	PEND
@ 073   ----------------------------------------
mus_no_1_party_anthem_2_073:
	.byte	W11
	.byte		N11   , Bn1 , v044
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N23   , Dn4 
	.byte	W24
	.byte		N11   , En2 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn2 
	.byte	W01
	.byte	PEND
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_2_070
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_2_071
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_2_072
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_2_073
@ 078   ----------------------------------------
	.byte	W11
	.byte		N11   , Gn2 , v044
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        An1 
	.byte	W01
@ 079   ----------------------------------------
	.byte	W11
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N05   , An2 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N11   , En2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        En2 
	.byte	W01
@ 080   ----------------------------------------
	.byte	W11
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En2 
	.byte	W01
@ 081   ----------------------------------------
	.byte	W11
	.byte		        Bn1 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , En2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn2 
	.byte	W01
@ 082   ----------------------------------------
	.byte	W11
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N22   , En3 
	.byte	W24
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N22   , Gn2 
	.byte	W24
	.byte		N11   , Cn2 
	.byte	W01
@ 083   ----------------------------------------
	.byte	W11
	.byte		        Gn2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N22   , Gn2 
	.byte	W24
	.byte		N03   , Dn4 
	.byte	W01
@ 084   ----------------------------------------
	.byte	W02
	.byte		        Fs3 
	.byte	W03
	.byte		N05   , Bn3 
	.byte	W06
	.byte		N11   , An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N22   , An2 
	.byte	W24
	.byte		N23   , Gn2 
	.byte	W01
@ 085   ----------------------------------------
	.byte	W23
	.byte		N22   , Bn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N23   , Bn2 
	.byte	W01
@ 086   ----------------------------------------
	.byte	W23
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		N15   , Ds4 
	.byte	W16
	.byte		        En4 
	.byte	W16
	.byte		        Fs3 
	.byte	W16
	.byte		N22   , En3 
	.byte	W01
@ 087   ----------------------------------------
	.byte	W23
	.byte		N11   , Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N22   , Gn2 
	.byte	W01
@ 088   ----------------------------------------
	.byte	W23
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N22   , Cn2 
	.byte	W01
@ 089   ----------------------------------------
	.byte	W23
	.byte		N11   , En3 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cn2 
	.byte	W13
@ 090   ----------------------------------------
	.byte		        En4 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 091   ----------------------------------------
	.byte		N22   , Ds3 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
@ 092   ----------------------------------------
	.byte		        As3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
@ 093   ----------------------------------------
	.byte		N44   , Gn2 , v044, gtp1
	.byte	W48
	.byte		N32   , Bn2 , v044, gtp3
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
@ 094   ----------------------------------------
mus_no_1_party_anthem_2_094:
	.byte		N15   , Bn2 , v044
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		N23   , Ds3 
	.byte	W24
	.byte		N15   , Cn4 
	.byte	W16
	.byte		N07   , Bn3 
	.byte	W08
	.byte	PEND
@ 095   ----------------------------------------
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W24
	.byte		N32   , En3 , v044, gtp3
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
@ 096   ----------------------------------------
	.byte		N15   , En2 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		N23   , Gn2 
	.byte	W24
	.byte		N15   , Cn4 
	.byte	W16
	.byte		N07   , Bn3 
	.byte	W08
@ 097   ----------------------------------------
	.byte		N11   , En2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W24
	.byte		N32   , Cn3 , v044, gtp3
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
@ 098   ----------------------------------------
	.byte		N15   , Dn3 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		N23   , Fs3 
	.byte	W24
	.byte		N15   , Cn4 
	.byte	W16
	.byte		N07   , Bn3 
	.byte	W08
@ 099   ----------------------------------------
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W24
	.byte		N32   , Bn2 , v044, gtp3
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_2_094
@ 101   ----------------------------------------
	.byte		N11   , Cn3 , v044
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W24
	.byte		N32   , En3 , v044, gtp3
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
@ 102   ----------------------------------------
	.byte		N22   
	.byte	W24
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 103   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
@ 104   ----------------------------------------
mus_no_1_party_anthem_2_104:
	.byte		N11   , Cn2 , v044
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte	PEND
@ 105   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_2_104
@ 107   ----------------------------------------
	.byte		N11   , Gn2 , v044
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_2_104
@ 109   ----------------------------------------
	.byte		N11   , Gn2 , v044
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N22   , Bn2 
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N22   , Dn2 
	.byte	W24
@ 110   ----------------------------------------
	.byte		N11   , Cn2 
	.byte	W12
	.byte		N03   , Gn1 
	.byte	W04
	.byte		N07   , Dn3 
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		N04   , En3 
	.byte	W04
	.byte		N11   , En2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 111   ----------------------------------------
	.byte		N22   , As3 
	.byte	W24
	.byte		N22   
	.byte	W24
	.byte		N03   , Bn2 
	.byte	W03
	.byte		        Fs3 
	.byte	W04
	.byte		N40   , Bn3 , v044, gtp1
	.byte	W40
	.byte	W01
	.byte	GOTO
	 .word	mus_no_1_party_anthem_2_B1
mus_no_1_party_anthem_2_B2:
@ 112   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_no_1_party_anthem_3:
	.byte	KEYSH , mus_no_1_party_anthem_key+0
mus_no_1_party_anthem_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 108*mus_no_1_party_anthem_mvl/mxv
	.byte		PAN   , c_v+14
	.byte	W60
	.byte		N11   , Dn3 , v056
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 001   ----------------------------------------
	.byte		N32   , Bn3 , v056, gtp3
	.byte	W36
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N22   , An3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 002   ----------------------------------------
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N22   , Bn3 
	.byte	W12
@ 003   ----------------------------------------
mus_no_1_party_anthem_3_003:
	.byte	W12
	.byte		N44   , Gn3 , v056, gtp1
	.byte	W84
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N22   , An3 
	.byte	W24
	.byte		N22   
	.byte	W24
	.byte		N22   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N32   , Bn3 , v056, gtp2
	.byte	W12
@ 006   ----------------------------------------
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N22   , Bn3 
	.byte	W12
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_3_003
@ 008   ----------------------------------------
	.byte		N15   , Gn3 , v056
	.byte	W16
	.byte		        An3 
	.byte	W15
	.byte		N15   
	.byte	W16
	.byte		N22   
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        An3 
	.byte	W01
@ 009   ----------------------------------------
	.byte	W23
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W36
	.byte		N11   , En3 
	.byte	W12
	.byte		N22   , An3 
	.byte	W01
@ 010   ----------------------------------------
	.byte	W23
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W36
	.byte		N11   , En3 
	.byte	W12
	.byte		        An3 
	.byte	W01
@ 011   ----------------------------------------
	.byte	W11
	.byte		N22   , Bn3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N22   , An3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte	W01
@ 012   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N15   , An3 
	.byte	W01
@ 013   ----------------------------------------
	.byte	W15
	.byte		        Bn3 
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N22   , An3 
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		TIE   , Gn3 
	.byte	W13
@ 014   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		EOT   
	.byte	W07
@ 015   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N15   , Gn3 , v068
	.byte	W01
@ 016   ----------------------------------------
	.byte	W15
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		N22   , Fs3 
	.byte	W01
@ 017   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   
	.byte	W12
	.byte		N15   
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		        Fs3 
	.byte	W16
	.byte		N32   , An3 , v068, gtp2
	.byte	W01
@ 018   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N32   , Gn3 , v068, gtp2
	.byte	W36
	.byte		N11   , En3 
	.byte	W12
	.byte		N15   , Bn3 
	.byte	W01
@ 019   ----------------------------------------
	.byte	W15
	.byte		        An3 
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		N22   , En3 
	.byte	W01
@ 020   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   
	.byte	W12
	.byte		N15   
	.byte	W16
	.byte		        Fs3 
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		N22   , Fs3 
	.byte	W01
@ 021   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   
	.byte	W12
	.byte		N15   
	.byte	W16
	.byte		        En3 
	.byte	W16
	.byte		        An2 
	.byte	W16
	.byte		N32   , En3 , v068, gtp2
	.byte	W01
@ 022   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N44   , Dn3 , v068, gtp1
	.byte	W48
	.byte		N15   , Gn3 
	.byte	W01
@ 023   ----------------------------------------
	.byte	W15
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Gn3 
	.byte	W01
@ 024   ----------------------------------------
	.byte	W15
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		        An3 , v072
	.byte	W16
	.byte		N32   , Fs3 , v072, gtp2
	.byte	W01
@ 025   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   
	.byte	W12
	.byte		N15   
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		        Fs3 
	.byte	W16
	.byte		N32   , An3 , v072, gtp2
	.byte	W01
@ 026   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N32   , Gn3 , v072, gtp2
	.byte	W36
	.byte		N11   , En3 
	.byte	W12
	.byte		N15   , Bn3 
	.byte	W01
@ 027   ----------------------------------------
	.byte	W15
	.byte		        An3 
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		N32   , An3 , v072, gtp2
	.byte	W01
@ 028   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   , En3 
	.byte	W12
	.byte		N15   , Bn3 
	.byte	W16
	.byte		        An3 , v060
	.byte	W15
	.byte		        Gn3 
	.byte	W16
	.byte		N32   , Fs3 , v060, gtp2
	.byte	W02
@ 029   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N15   , Bn3 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		N32   , Gn3 , v060, gtp2
	.byte	W02
@ 030   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N15   , Bn3 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Gn3 
	.byte	W18
@ 031   ----------------------------------------
	.byte	W10
	.byte		N22   , Fs3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N78   , Gn3 , v060, gtp1
	.byte	W14
@ 032   ----------------------------------------
mus_no_1_party_anthem_3_032:
	.byte	W80
	.byte	W02
	.byte		N11   , Gn3 , v060
	.byte	W12
	.byte		N15   
	.byte	W02
	.byte	PEND
@ 033   ----------------------------------------
	.byte	W14
	.byte		        An3 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		        Cn4 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		N68   , Gn3 
	.byte	W02
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_3_032
@ 035   ----------------------------------------
	.byte	W14
	.byte		N15   , An3 , v060
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		        Cn4 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		N32   , Gn3 , v060, gtp2
	.byte	W02
@ 036   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N22   
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		N32   , Gn3 , v060, gtp2
	.byte	W24
	.byte	W02
@ 037   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N22   
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		N44   , Gn3 , v060, gtp1
	.byte	W24
	.byte	W02
@ 038   ----------------------------------------
	.byte	W22
	.byte		N22   , Dn3 
	.byte	W72
	.byte	W02
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W56
	.byte	W02
	.byte		N08   
	.byte	W09
	.byte		N08   
	.byte	W09
	.byte		        An3 
	.byte	W09
	.byte		        Bn3 
	.byte	W09
	.byte		N32   , Bn3 , v060, gtp3
	.byte	W02
@ 041   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N22   , An3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Bn3 
	.byte	W14
@ 042   ----------------------------------------
	.byte	W22
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N22   , Bn3 
	.byte	W14
@ 043   ----------------------------------------
	.byte	W10
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N44   , En3 , v060, gtp1
	.byte	W72
	.byte	W02
@ 044   ----------------------------------------
	.byte	W22
	.byte		N11   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N22   , An3 
	.byte	W02
@ 045   ----------------------------------------
	.byte	W22
	.byte		N22   
	.byte	W24
	.byte		N22   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Bn3 
	.byte	W14
@ 046   ----------------------------------------
	.byte	W22
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N22   , Bn3 
	.byte	W14
@ 047   ----------------------------------------
	.byte	W10
	.byte		N44   , Gn3 , v064, gtp1
	.byte	W84
	.byte		N15   , Gn3 , v068
	.byte	W02
@ 048   ----------------------------------------
	.byte	W14
	.byte		        An3 
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N22   
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		N15   
	.byte	W02
@ 049   ----------------------------------------
	.byte	W14
	.byte		        An3 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		N32   , Gn3 , v068, gtp2
	.byte	W36
	.byte		N11   , En3 
	.byte	W12
	.byte		N15   , An3 
	.byte	W02
@ 050   ----------------------------------------
	.byte	W14
	.byte		        Bn3 
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		N13   , En3 
	.byte	W16
	.byte		N15   , An3 
	.byte	W02
@ 051   ----------------------------------------
	.byte	W14
	.byte		        Bn3 
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		        En3 
	.byte	W16
	.byte		N22   , Bn3 
	.byte	W02
@ 052   ----------------------------------------
	.byte	W22
	.byte		N11   
	.byte	W12
	.byte		N22   
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N56   , Fs3 
	.byte	W14
@ 053   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N22   , Bn3 
	.byte	W02
@ 054   ----------------------------------------
	.byte	W22
	.byte		N22   
	.byte	W24
	.byte		N15   
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		N24   , Gn3 , v068, gtp2
	.byte	W18
@ 055   ----------------------------------------
	.byte	W10
	.byte		N22   , Fs3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N22   , An3 
	.byte	W14
@ 056   ----------------------------------------
	.byte	W10
	.byte		N44   , Gn3 , v068, gtp1
	.byte	W72
	.byte		N11   
	.byte	W12
	.byte		N15   
	.byte	W02
@ 057   ----------------------------------------
mus_no_1_party_anthem_3_057:
	.byte	W14
	.byte		N15   , An3 , v068
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		N22   
	.byte	W24
	.byte		N15   , Cn4 
	.byte	W16
	.byte		N18   , Bn3 
	.byte	W10
	.byte	PEND
@ 058   ----------------------------------------
	.byte	W10
	.byte		N11   , An3 
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte		N15   
	.byte	W02
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_3_057
@ 060   ----------------------------------------
	.byte	W10
	.byte		N11   , An3 , v068
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W12
	.byte		N22   
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		N32   , Gn3 , v068, gtp2
	.byte	W24
	.byte	W02
@ 061   ----------------------------------------
mus_no_1_party_anthem_3_061:
	.byte	W32
	.byte	W02
	.byte		N22   , Gn3 , v068
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		N44   , Gn3 , v068, gtp1
	.byte	W24
	.byte	W02
	.byte	PEND
@ 062   ----------------------------------------
	.byte	W22
	.byte		N22   , Dn3 
	.byte	W60
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N15   
	.byte	W02
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_3_057
@ 064   ----------------------------------------
	.byte	W10
	.byte		N11   , An3 , v068
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte		N22   , Dn4 
	.byte	W02
@ 065   ----------------------------------------
	.byte	W22
	.byte		N11   , Bn3 
	.byte	W12
	.byte		N22   , Dn4 
	.byte	W24
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N44   , Gn3 , v068, gtp1
	.byte	W14
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_3_061
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_3_061
@ 068   ----------------------------------------
	.byte	W22
	.byte		N44   , Bn3 , v068, gtp1
	.byte	W72
	.byte		N15   
	.byte	W02
@ 069   ----------------------------------------
	.byte	W14
	.byte		        An3 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		N22   , An3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte	W02
@ 070   ----------------------------------------
mus_no_1_party_anthem_3_070:
	.byte	W32
	.byte	W02
	.byte		N11   , Gn3 , v068
	.byte	W12
	.byte		N15   , Dn4 
	.byte	W16
	.byte		        Bn3 
	.byte	W15
	.byte		N36   , Dn4 , v068, gtp2
	.byte	W19
	.byte	PEND
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_3_070
@ 072   ----------------------------------------
mus_no_1_party_anthem_3_072:
	.byte	W32
	.byte	W02
	.byte		N11   , Gn3 , v068
	.byte	W12
	.byte		N15   , Dn4 
	.byte	W16
	.byte		        En4 
	.byte	W15
	.byte		N36   , Fs4 , v068, gtp2
	.byte	W19
	.byte	PEND
@ 073   ----------------------------------------
	.byte	W22
	.byte		N11   , En4 
	.byte	W12
	.byte		N32   , Dn4 , v068, gtp2
	.byte	W36
	.byte		N11   , En4 
	.byte	W12
	.byte		N32   , Bn3 , v068, gtp2
	.byte	W14
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_3_070
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_3_070
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_3_072
@ 077   ----------------------------------------
	.byte	W22
	.byte		N11   , En4 , v068
	.byte	W12
	.byte		N32   , Dn4 , v068, gtp2
	.byte	W36
	.byte		N11   , En4 
	.byte	W12
	.byte		N32   , Bn3 , v064, gtp2
	.byte	W14
@ 078   ----------------------------------------
mus_no_1_party_anthem_3_078:
	.byte	W32
	.byte	W02
	.byte		N11   , En4 , v060
	.byte	W12
	.byte		N17   , Bn4 
	.byte	W18
	.byte		        En4 
	.byte	W18
	.byte		N32   , An4 , v060, gtp2
	.byte	W14
	.byte	PEND
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_3_078
@ 080   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N11   , En4 , v060
	.byte	W12
	.byte		N17   , Bn4 
	.byte	W18
	.byte		        Cn5 
	.byte	W18
	.byte		N32   , Bn4 , v060, gtp2
	.byte	W14
@ 081   ----------------------------------------
	.byte	W22
	.byte		N11   , An4 
	.byte	W12
	.byte		N32   , Gn4 , v060, gtp2
	.byte	W36
	.byte		N11   , An4 
	.byte	W12
	.byte		N32   , Bn4 , v060, gtp2
	.byte	W14
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W22
	.byte		N22   , An4 
	.byte	W24
	.byte		N17   , Gn4 
	.byte	W18
	.byte		N28   , An4 
	.byte	W30
	.byte		N03   , Dn4 
	.byte	W02
@ 084   ----------------------------------------
	.byte	W01
	.byte		        Fs4 
	.byte	W03
	.byte		N40   , Bn4 , v060, gtp1
	.byte	W42
	.byte		N44   , An4 , v060, gtp1
	.byte	W48
	.byte		N22   , Dn4 
	.byte	W02
@ 085   ----------------------------------------
	.byte	W22
	.byte		        Bn3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        Ds4 
	.byte	W02
@ 086   ----------------------------------------
	.byte	W22
	.byte		        Bn3 
	.byte	W24
	.byte		N15   , Ds4 
	.byte	W16
	.byte		        En4 
	.byte	W15
	.byte		        Fs4 
	.byte	W16
	.byte		N22   , Gn4 
	.byte	W03
@ 087   ----------------------------------------
	.byte	W21
	.byte		        Fs4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        En4 
	.byte	W03
@ 088   ----------------------------------------
	.byte	W21
	.byte		        Dn4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Gn3 
	.byte	W03
@ 089   ----------------------------------------
	.byte	W21
	.byte		        En3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        En4 
	.byte	W03
@ 090   ----------------------------------------
	.byte	W21
	.byte		        Gn3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Ds4 
	.byte	W03
@ 091   ----------------------------------------
	.byte	W21
	.byte		        Cn4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        As4 
	.byte	W03
@ 092   ----------------------------------------
	.byte	W21
	.byte		        Gn4 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        Ds5 
	.byte	W24
	.byte		N44   , Gn4 , v060, gtp1
	.byte	W03
@ 093   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N15   
	.byte	W03
@ 094   ----------------------------------------
mus_no_1_party_anthem_3_094:
	.byte	W13
	.byte		N15   , An3 , v060
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		N22   
	.byte	W24
	.byte		N15   , Cn4 
	.byte	W16
	.byte		N18   , Bn3 
	.byte	W11
	.byte	PEND
@ 095   ----------------------------------------
mus_no_1_party_anthem_3_095:
	.byte	W09
	.byte		N11   , An3 , v060
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte		N15   
	.byte	W03
	.byte	PEND
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_3_094
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_3_095
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_3_094
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_3_095
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_3_094
@ 101   ----------------------------------------
	.byte	W09
	.byte		N11   , An3 , v060
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte		N22   , Dn4 
	.byte	W03
@ 102   ----------------------------------------
	.byte	W21
	.byte		N11   , Bn3 
	.byte	W12
	.byte		N22   , Dn4 
	.byte	W24
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N22   , Gn3 
	.byte	W15
@ 103   ----------------------------------------
mus_no_1_party_anthem_3_103:
	.byte	W32
	.byte	W01
	.byte		N22   , Gn3 , v060
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		N44   , Gn3 , v060, gtp1
	.byte	W24
	.byte	W03
	.byte	PEND
@ 104   ----------------------------------------
mus_no_1_party_anthem_3_104:
	.byte	W32
	.byte	W01
	.byte		N22   , Gn3 , v060
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		N32   , Gn3 , v060, gtp2
	.byte	W24
	.byte	W03
	.byte	PEND
@ 105   ----------------------------------------
mus_no_1_party_anthem_3_105:
	.byte	W09
	.byte		N22   , Dn3 , v060
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		N44   , Gn3 , v060, gtp1
	.byte	W24
	.byte	W03
	.byte	PEND
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_3_104
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_3_105
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_3_103
@ 109   ----------------------------------------
	.byte	W21
	.byte		N22   , Dn3 , v060
	.byte	W72
	.byte		N15   , En3 
	.byte	W03
@ 110   ----------------------------------------
	.byte	W13
	.byte		        Dn3 
	.byte	W16
	.byte		        En3 
	.byte	W16
	.byte		N11   , Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N22   , As3 
	.byte	W03
@ 111   ----------------------------------------
	.byte	W21
	.byte		N22   
	.byte	W24
	.byte		N03   , Dn3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		N40   , Bn3 , v060, gtp1
	.byte	W44
	.byte	W01
	.byte	GOTO
	 .word	mus_no_1_party_anthem_3_B1
mus_no_1_party_anthem_3_B2:
@ 112   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_no_1_party_anthem_4:
	.byte	KEYSH , mus_no_1_party_anthem_key+0
mus_no_1_party_anthem_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 96*mus_no_1_party_anthem_mvl/mxv
	.byte		N01   , An2 , v044
	.byte	W24
	.byte		N01   
	.byte	W24
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W12
	.byte		        Gn1 
	.byte		N01   , An1 
	.byte	W12
@ 001   ----------------------------------------
	.byte		        Gn1 
	.byte		N01   , Cs2 
	.byte	W48
	.byte		        An2 
	.byte	W48
@ 002   ----------------------------------------
mus_no_1_party_anthem_4_002:
	.byte		N01   , Cn1 , v044
	.byte	W48
	.byte		        An2 
	.byte	W48
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_4_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_4_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_4_002
@ 006   ----------------------------------------
	.byte		N01   , Cn1 , v044
	.byte	W48
	.byte		        An2 
	.byte	W24
	.byte		        Ds3 
	.byte		N01   , En3 
	.byte	W24
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_4_002
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_4_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_4_002
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_no_1_party_anthem_4_002
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
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
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
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
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
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	W96
@ 107   ----------------------------------------
	.byte	W96
@ 108   ----------------------------------------
	.byte	W96
@ 109   ----------------------------------------
	.byte	W96
@ 110   ----------------------------------------
	.byte	W96
@ 111   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_no_1_party_anthem_4_B1
mus_no_1_party_anthem_4_B2:
@ 112   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_no_1_party_anthem:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_no_1_party_anthem_pri	@ Priority
	.byte	mus_no_1_party_anthem_rev	@ Reverb.

	.word	mus_no_1_party_anthem_grp

	.word	mus_no_1_party_anthem_1
	.word	mus_no_1_party_anthem_2
	.word	mus_no_1_party_anthem_3
	.word	mus_no_1_party_anthem_4

	.end
