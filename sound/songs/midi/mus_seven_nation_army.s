	.include "MPlayDef.s"

	.equ	mus_seven_nation_army_grp, voicegroup_hlw_rock_metal
	.equ	mus_seven_nation_army_pri, 0
	.equ	mus_seven_nation_army_rev, reverb_set+15
	.equ	mus_seven_nation_army_mvl, 96
	.equ	mus_seven_nation_army_key, 0
	.equ	mus_seven_nation_army_tbs, 1
	.equ	mus_seven_nation_army_exg, 1
	.equ	mus_seven_nation_army_cmp, 1

	.section .rodata
	.global	mus_seven_nation_army
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_seven_nation_army_1:
	.byte		VOL   , 127*mus_seven_nation_army_mvl/mxv
	.byte	KEYSH , mus_seven_nation_army_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 120*mus_seven_nation_army_tbs/2
	.byte		VOICE , 29
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
mus_seven_nation_army_1_025:
	.byte		N12   , Gn1 , v080
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_seven_nation_army_1_026:
	.byte		N12   , En1 , v080
	.byte		N12   , An1 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W09
	.byte		N03   , An1 , v072
	.byte		N03   , En2 
	.byte		N03   , An2 
	.byte	W03
	.byte	PEND
@ 027   ----------------------------------------
mus_seven_nation_army_1_027:
	.byte		N36   , En2 , v080
	.byte		N36   , Bn2 
	.byte		N36   , En3 
	.byte	W36
	.byte		N12   , En2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W18
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W18
	.byte		        Dn2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_seven_nation_army_1_028:
	.byte		N48   , Cn2 , v080
	.byte		N48   , Gn2 
	.byte		N48   , Cn3 
	.byte	W48
	.byte		        Bn1 
	.byte		N48   , Fs2 
	.byte		N48   , Bn2 
	.byte	W44
	.byte	W01
	.byte		N03   , An1 , v072
	.byte		N03   , En2 
	.byte		N03   , An2 
	.byte	W03
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_027
@ 030   ----------------------------------------
mus_seven_nation_army_1_030:
	.byte		N18   , Cn2 , v080
	.byte		N18   , Gn2 
	.byte		N18   , Cn3 
	.byte	W18
	.byte		        Dn2 
	.byte		N18   , An2 
	.byte		N18   , Dn3 
	.byte	W18
	.byte		N12   , Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		        An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W21
	.byte		N03   , An1 , v072
	.byte		N03   , En2 
	.byte		N03   , An2 
	.byte	W03
	.byte	PEND
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_027
@ 034   ----------------------------------------
mus_seven_nation_army_1_034:
	.byte		N18   , Cn2 , v080
	.byte		N18   , Gn2 
	.byte		N18   , Cn3 
	.byte	W18
	.byte		        Dn2 
	.byte		N18   , An2 
	.byte		N18   , Dn3 
	.byte	W18
	.byte		N12   , Cn2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		        An1 
	.byte		N24   , En2 
	.byte		N24   , An2 
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_025
@ 036   ----------------------------------------
mus_seven_nation_army_1_036:
	.byte		N12   , En1 , v080
	.byte		N12   , An1 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
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
	.byte	PATT
	 .word	mus_seven_nation_army_1_025
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_026
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_027
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_028
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_027
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_030
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_027
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_028
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_027
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_030
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_027
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_028
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_027
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_030
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_027
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_028
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_027
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_034
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_025
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_036
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
	.byte	PATT
	 .word	mus_seven_nation_army_1_025
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_026
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_027
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_028
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_027
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_030
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_027
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_028
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_027
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_1_034
@ 113   ----------------------------------------
	.byte		N96   , En2 , v080
	.byte		N96   , Bn2 
	.byte		N96   , En3 
	.byte		N96   , Gs3 
	.byte	W96
@ 114   ----------------------------------------
	.byte	W72
	.byte		N24   , En2 
	.byte		N24   , Bn2 
	.byte		N24   , En3 
	.byte		N24   , Gs3 
	.byte	W24
@ 115   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_seven_nation_army_2:
	.byte		VOL   , 127*mus_seven_nation_army_mvl/mxv
	.byte	KEYSH , mus_seven_nation_army_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 28
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
mus_seven_nation_army_2_062:
	.byte		N36   , En3 , v080
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 063   ----------------------------------------
mus_seven_nation_army_2_063:
	.byte		N48   , Gn3 , v080
	.byte	W48
	.byte		        Fs3 
	.byte	W48
	.byte	PEND
@ 064   ----------------------------------------
mus_seven_nation_army_2_064:
	.byte		N36   , En3 , v080
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N18   , Gn3 
	.byte	W18
	.byte		        An3 
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , An3 
	.byte	W18
	.byte		N06   , Gn3 
	.byte	W12
	.byte		N48   , Fs3 
	.byte	W48
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_2_062
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_2_063
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_2_064
@ 069   ----------------------------------------
	.byte		N06   , Gn3 , v080
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , An3 
	.byte	W18
	.byte		N06   , Gn3 
	.byte	W12
	.byte		N48   , Fs3 
	.byte	W44
	.byte	W01
	.byte		N03   , Ds4 , v072
	.byte	W03
@ 070   ----------------------------------------
	.byte		N36   , En4 , v080
	.byte	W36
	.byte		N09   
	.byte	W09
	.byte		N03   , En4 , v072
	.byte	W03
	.byte		N18   , Gn4 , v080
	.byte	W18
	.byte		        En4 
	.byte	W18
	.byte		N12   
	.byte	W12
@ 071   ----------------------------------------
	.byte		N48   , Gn4 
	.byte	W48
	.byte		        Fs4 
	.byte	W44
	.byte	W01
	.byte		N03   , Ds4 , v072
	.byte	W03
@ 072   ----------------------------------------
	.byte		N36   , En4 , v080
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N18   , Gn4 
	.byte	W18
	.byte		        An4 
	.byte	W18
	.byte		N12   , Gn4 
	.byte	W12
@ 073   ----------------------------------------
	.byte		N09   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , An4 
	.byte	W18
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N48   , Fs4 
	.byte	W44
	.byte	W01
	.byte		N03   , Ds4 , v072
	.byte	W03
@ 074   ----------------------------------------
mus_seven_nation_army_2_074:
	.byte		N36   , En4 , v080
	.byte	W36
	.byte		N09   
	.byte	W09
	.byte		N03   , En4 , v072
	.byte	W03
	.byte		N18   , Fs4 , v080
	.byte	W18
	.byte		        En4 
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 075   ----------------------------------------
	.byte		N48   , Gn4 
	.byte	W48
	.byte		N48   
	.byte	W44
	.byte	W01
	.byte		N03   , Ds4 , v072
	.byte	W03
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_2_074
@ 077   ----------------------------------------
	.byte		N18   , Fs4 , v080
	.byte	W18
	.byte		        En4 
	.byte	W18
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N48   , Bn3 
	.byte	W48
@ 078   ----------------------------------------
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 079   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 080   ----------------------------------------
	.byte		N96   , En1 
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte		N96   
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
@ 112   ----------------------------------------
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.5) ****************@

mus_seven_nation_army_3:
	.byte		VOL   , 127*mus_seven_nation_army_mvl/mxv
	.byte	KEYSH , mus_seven_nation_army_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		N36   , En1 , v080
	.byte	W36
	.byte		N06   
	.byte	W12
	.byte		        Gn1 
	.byte	W18
	.byte		        En1 
	.byte	W18
	.byte		N12   , Dn1 
	.byte	W12
@ 001   ----------------------------------------
mus_seven_nation_army_3_001:
	.byte		N48   , Cn1 , v080
	.byte	W48
	.byte		        Bn0 
	.byte	W48
	.byte	PEND
@ 002   ----------------------------------------
mus_seven_nation_army_3_002:
	.byte		N36   , En1 , v080
	.byte	W36
	.byte		N06   
	.byte	W12
	.byte		        Gn1 
	.byte	W18
	.byte		        En1 
	.byte	W18
	.byte		N12   , Dn1 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 024   ----------------------------------------
mus_seven_nation_army_3_024:
	.byte		N12   , Gn0 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_seven_nation_army_3_025:
	.byte		N12   , An0 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 029   ----------------------------------------
mus_seven_nation_army_3_029:
	.byte		N18   , Cn1 , v080
	.byte	W18
	.byte		        Dn1 
	.byte	W18
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N24   , Bn0 
	.byte	W24
	.byte		        An0 
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_029
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_024
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_025
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_024
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_025
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_029
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_029
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_029
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_029
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_024
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_025
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_024
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_025
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_029
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_001
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_002
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_3_029
@ 112   ----------------------------------------
	.byte		N96   , En1 , v080
	.byte	W96
@ 113   ----------------------------------------
	.byte	W72
	.byte		N24   
	.byte	W24
@ 114   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_seven_nation_army_4:
	.byte		VOL   , 127*mus_seven_nation_army_mvl/mxv
	.byte	KEYSH , mus_seven_nation_army_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_seven_nation_army_4_004:
	.byte		N24   , Bn0 , v080
	.byte		N24   , Fn1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Fn1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Fn1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Fn1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 016   ----------------------------------------
mus_seven_nation_army_4_016:
	.byte		N24   , Bn0 , v080
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Dn1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Dn1 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 024   ----------------------------------------
mus_seven_nation_army_4_024:
	.byte		N24   , Bn0 , v080
	.byte		N24   , An2 
	.byte	W24
	.byte		        Fs1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_024
@ 026   ----------------------------------------
mus_seven_nation_army_4_026:
	.byte		N24   , Bn0 , v080
	.byte		N24   , An2 
	.byte	W24
	.byte		        Dn1 
	.byte		N24   , An2 
	.byte	W24
	.byte		        Bn0 
	.byte		N24   , An2 
	.byte	W24
	.byte		        Dn1 
	.byte		N24   , An2 
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 028   ----------------------------------------
mus_seven_nation_army_4_028:
	.byte		N24   , Bn0 , v080
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Dn1 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N24   
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Bn0 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_024
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_024
@ 036   ----------------------------------------
	.byte		N96   , Bn0 , v080
	.byte		N96   , An2 
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_024
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_024
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_028
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_028
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_028
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_028
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_024
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_024
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_004
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_016
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_024
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_024
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_028
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_028
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_seven_nation_army_4_026
@ 112   ----------------------------------------
	.byte		N96   , Bn0 , v080
	.byte		N96   , An2 
	.byte	W96
@ 113   ----------------------------------------
	.byte	W72
	.byte		N24   , Bn0 
	.byte		N24   , An2 
	.byte	W24
@ 114   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_seven_nation_army:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_seven_nation_army_pri	@ Priority
	.byte	mus_seven_nation_army_rev	@ Reverb.

	.word	mus_seven_nation_army_grp

	.word	mus_seven_nation_army_1
	.word	mus_seven_nation_army_2
	.word	mus_seven_nation_army_3
	.word	mus_seven_nation_army_4

	.end
