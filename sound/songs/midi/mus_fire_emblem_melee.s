	.include "MPlayDef.s"

	.equ	mus_fire_emblem_melee_grp, voicegroup_brothers
	.equ	mus_fire_emblem_melee_pri, 0
	.equ	mus_fire_emblem_melee_rev, reverb_set+16
	.equ	mus_fire_emblem_melee_mvl, 90
	.equ	mus_fire_emblem_melee_key, 0
	.equ	mus_fire_emblem_melee_tbs, 1
	.equ	mus_fire_emblem_melee_exg, 0
	.equ	mus_fire_emblem_melee_cmp, 1

	.section .rodata
	.global	mus_fire_emblem_melee
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_fire_emblem_melee_1:
	.byte	KEYSH , mus_fire_emblem_melee_key+0
mus_fire_emblem_melee_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 214*mus_fire_emblem_melee_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 82*mus_fire_emblem_melee_mvl/mxv
	.byte		PAN   , c_v-10
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
mus_fire_emblem_melee_1_013:
	.byte		N96   , Dn3 , v072
	.byte		N96   , An3 
	.byte		N96   , Dn4 
	.byte	W96
	.byte	PEND
@ 014   ----------------------------------------
mus_fire_emblem_melee_1_014:
	.byte		N96   , As2 , v072
	.byte		N96   , Fn3 
	.byte		N96   , As3 
	.byte	W96
	.byte	PEND
@ 015   ----------------------------------------
mus_fire_emblem_melee_1_015:
	.byte		N96   , Gn2 , v072
	.byte		N96   , Dn3 
	.byte		N96   , Gn3 
	.byte	W96
	.byte	PEND
@ 016   ----------------------------------------
mus_fire_emblem_melee_1_016:
	.byte		N96   , An2 , v072
	.byte		N96   , En3 
	.byte		N96   , An3 
	.byte	W96
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_014
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_015
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_014
@ 023   ----------------------------------------
mus_fire_emblem_melee_1_023:
	.byte		N96   , Cn3 , v072
	.byte		N96   , An3 
	.byte		N96   , Cn4 
	.byte	W96
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_016
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
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_013
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_014
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_015
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_016
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_013
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_014
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_015
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_016
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_013
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_014
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_023
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_016
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
mus_fire_emblem_melee_1_050:
	.byte		N48   , As1 , v072
	.byte	W12
	.byte		N36   , As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N48   , As1 
	.byte	W12
	.byte		N36   , As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_050
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_050
@ 053   ----------------------------------------
mus_fire_emblem_melee_1_053:
	.byte		N48   , As1 , v072
	.byte	W12
	.byte		N36   , As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N48   , As1 
	.byte	W12
	.byte		N36   , As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N23   , Dn3 
	.byte	W12
	.byte	PEND
@ 054   ----------------------------------------
mus_fire_emblem_melee_1_054:
	.byte		N48   , Dn2 , v072
	.byte	W12
	.byte		N36   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N48   , Dn2 
	.byte	W12
	.byte		N36   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte	PEND
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_054
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_054
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_054
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_050
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_050
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_050
@ 061   ----------------------------------------
mus_fire_emblem_melee_1_061:
	.byte		N48   , As1 , v072
	.byte	W12
	.byte		N36   , As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N48   , As1 
	.byte	W12
	.byte		N36   , As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N22   , Dn3 
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_054
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_054
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_054
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_054
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
mus_fire_emblem_melee_1_100:
	.byte		N24   , Cs4 , v072
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte	PEND
@ 101   ----------------------------------------
mus_fire_emblem_melee_1_101:
	.byte		N24   , Fs3 , v072
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W36
	.byte	PEND
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
	.byte	W96
@ 115   ----------------------------------------
	.byte	W96
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_013
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_014
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_015
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_016
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_013
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_014
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_015
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_016
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_013
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_014
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_023
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_016
@ 128   ----------------------------------------
	.byte	W96
@ 129   ----------------------------------------
	.byte	W96
@ 130   ----------------------------------------
	.byte	W96
@ 131   ----------------------------------------
	.byte	W96
@ 132   ----------------------------------------
	.byte	W96
@ 133   ----------------------------------------
	.byte	W96
@ 134   ----------------------------------------
	.byte	W96
@ 135   ----------------------------------------
	.byte	W96
@ 136   ----------------------------------------
	.byte	W96
@ 137   ----------------------------------------
	.byte	W96
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
	.byte	W96
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_013
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_014
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_015
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_016
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_013
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_014
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_015
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_016
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_013
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_014
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_023
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_016
@ 152   ----------------------------------------
	.byte	W96
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_050
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_050
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_050
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_053
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_054
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_054
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_054
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_054
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_050
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_050
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_050
@ 164   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_061
@ 165   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_054
@ 166   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_054
@ 167   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_054
@ 168   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_054
@ 169   ----------------------------------------
	.byte	W96
@ 170   ----------------------------------------
	.byte	W96
@ 171   ----------------------------------------
	.byte	W96
@ 172   ----------------------------------------
	.byte	W96
@ 173   ----------------------------------------
	.byte	W96
@ 174   ----------------------------------------
	.byte	W96
@ 175   ----------------------------------------
	.byte	W96
@ 176   ----------------------------------------
	.byte	W96
@ 177   ----------------------------------------
	.byte	W96
@ 178   ----------------------------------------
	.byte	W96
@ 179   ----------------------------------------
	.byte	W96
@ 180   ----------------------------------------
	.byte	W96
@ 181   ----------------------------------------
	.byte	W96
@ 182   ----------------------------------------
	.byte	W96
@ 183   ----------------------------------------
	.byte	W96
@ 184   ----------------------------------------
	.byte	W96
@ 185   ----------------------------------------
	.byte	W96
@ 186   ----------------------------------------
	.byte	W96
@ 187   ----------------------------------------
	.byte	W96
@ 188   ----------------------------------------
	.byte	W96
@ 189   ----------------------------------------
	.byte	W96
@ 190   ----------------------------------------
	.byte	W96
@ 191   ----------------------------------------
	.byte	W96
@ 192   ----------------------------------------
	.byte	W96
@ 193   ----------------------------------------
	.byte	W96
@ 194   ----------------------------------------
	.byte	W96
@ 195   ----------------------------------------
	.byte	W96
@ 196   ----------------------------------------
	.byte	W96
@ 197   ----------------------------------------
	.byte	W96
@ 198   ----------------------------------------
	.byte	W96
@ 199   ----------------------------------------
	.byte	W96
@ 200   ----------------------------------------
	.byte	W96
@ 201   ----------------------------------------
	.byte	W96
@ 202   ----------------------------------------
	.byte	W96
@ 203   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_100
@ 204   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_1_101
@ 205   ----------------------------------------
	.byte	W92
	.byte	GOTO
	 .word	mus_fire_emblem_melee_1_B1
mus_fire_emblem_melee_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_fire_emblem_melee_2:
	.byte	KEYSH , mus_fire_emblem_melee_key+0
mus_fire_emblem_melee_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 94*mus_fire_emblem_melee_mvl/mxv
	.byte		PAN   , c_v+16
	.byte	W96
@ 001   ----------------------------------------
mus_fire_emblem_melee_2_001:
	.byte		N24   , En3 , v084
	.byte		N24   , An3 
	.byte	W36
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W24
	.byte		        En3 
	.byte		N06   , An3 
	.byte	W24
	.byte		        En3 
	.byte		N06   , An3 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_001
@ 006   ----------------------------------------
mus_fire_emblem_melee_2_006:
	.byte		N24   , En3 , v084
	.byte		N24   , An3 
	.byte	W36
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W24
	.byte		        En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		N06   
	.byte		N06   , En4 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		N12   , En4 
	.byte		N12   , An4 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_fire_emblem_melee_2_007:
	.byte		N42   , En4 , v084
	.byte		TIE   , An4 
	.byte	W36
	.byte		N06   , An3 
	.byte		N06   , En4 
	.byte	W24
	.byte		        An3 
	.byte		N06   , En4 
	.byte	W24
	.byte		        An3 
	.byte		N06   , En4 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_fire_emblem_melee_2_008:
	.byte		N24   , As3 , v084
	.byte		N24   , Fn4 
	.byte	W36
	.byte		N06   , As3 
	.byte		N06   , Fn4 
	.byte	W24
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W24
	.byte		        As3 
	.byte		N06   , Fn4 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_fire_emblem_melee_2_009:
	.byte		N24   , En4 , v084
	.byte		N24   , Gn4 
	.byte	W36
	.byte		N06   , En4 
	.byte		N06   , Gn4 
	.byte	W24
	.byte		        En4 
	.byte		N06   , Gn4 
	.byte	W24
	.byte		        En4 
	.byte		N06   , Gn4 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_fire_emblem_melee_2_010:
	.byte		N24   , Cn4 , v084
	.byte		N24   , Fn4 
	.byte	W36
	.byte		N06   , Cn4 
	.byte		N06   , Fn4 
	.byte	W24
	.byte		        Cn4 
	.byte		N06   , Fn4 
	.byte	W24
	.byte		        Cn4 
	.byte		N06   , Fn4 
	.byte	W12
	.byte	PEND
	.byte		EOT   , An4 
@ 011   ----------------------------------------
mus_fire_emblem_melee_2_011:
	.byte		N42   , En4 , v084
	.byte		N72   , An4 
	.byte	W36
	.byte		N06   , An3 
	.byte		N06   , En4 
	.byte	W24
	.byte		        An3 
	.byte		N06   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        As3 
	.byte		N06   , En4 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Gn4 
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
mus_fire_emblem_melee_2_012:
	.byte		N06   , En4 , v084
	.byte		N06   , An4 
	.byte	W72
	.byte		N12   , En4 
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
mus_fire_emblem_melee_2_013:
	.byte		N12   , En4 , v084
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N36   , Fn4 
	.byte	W60
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_013
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_013
@ 016   ----------------------------------------
mus_fire_emblem_melee_2_016:
	.byte		N12   , Gn4 , v084
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_fire_emblem_melee_2_017:
	.byte		N12   , En4 , v084
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N36   , An4 
	.byte	W60
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_017
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_017
@ 020   ----------------------------------------
mus_fire_emblem_melee_2_020:
	.byte		N12   , An4 , v084
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_fire_emblem_melee_2_021:
	.byte		N12   , Fn4 , v084
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N36   , An3 
	.byte	W60
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_021
@ 023   ----------------------------------------
mus_fire_emblem_melee_2_023:
	.byte		N12   , Fn4 , v084
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N36   , Cn4 
	.byte	W36
	.byte		N12   , En4 
	.byte	W24
	.byte	PEND
@ 024   ----------------------------------------
mus_fire_emblem_melee_2_024:
	.byte		N32   , En4 , v084
	.byte	W36
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N24   , An4 
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_001
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_006
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_007
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_008
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_009
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_010
	.byte		EOT   , An4 
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_011
@ 036   ----------------------------------------
mus_fire_emblem_melee_2_036:
	.byte		N12   , En4 , v084
	.byte		N12   , An4 
	.byte	W72
	.byte		        En4 
	.byte	W24
	.byte	PEND
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_013
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_013
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_013
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_016
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_017
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_017
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_017
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_020
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_021
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_023
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_024
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
mus_fire_emblem_melee_2_050:
	.byte		N48   , En3 , v080
	.byte		N48   , En4 
	.byte	W36
	.byte		        Dn3 
	.byte		N48   , Dn4 
	.byte	W36
	.byte		        An3 
	.byte		N48   , An4 
	.byte	W24
	.byte	PEND
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_050
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_050
@ 053   ----------------------------------------
mus_fire_emblem_melee_2_053:
	.byte		N48   , En3 , v080
	.byte		N48   , En4 
	.byte	W36
	.byte		        Dn3 
	.byte		N48   , Dn4 
	.byte	W60
	.byte	PEND
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_050
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_050
@ 056   ----------------------------------------
	.byte		N48   , En3 , v080
	.byte		N48   , En4 
	.byte	W36
	.byte		        Dn3 
	.byte		N48   , Dn4 
	.byte	W36
	.byte		N44   , An3 , v084
	.byte		N42   , An4 
	.byte	W24
@ 057   ----------------------------------------
mus_fire_emblem_melee_2_057:
	.byte		N22   , An3 , v084
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn5 
	.byte	W24
	.byte	PEND
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_050
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_050
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_050
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_053
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_050
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_050
@ 064   ----------------------------------------
mus_fire_emblem_melee_2_064:
	.byte		N48   , En3 , v080
	.byte		N48   , En4 
	.byte	W36
	.byte		        Dn3 
	.byte		N48   , Dn4 
	.byte	W36
	.byte		N24   , An3 , v084
	.byte		N42   , An4 
	.byte	W24
	.byte	PEND
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_057
@ 066   ----------------------------------------
mus_fire_emblem_melee_2_066:
	.byte		N48   , En3 , v068
	.byte		N48   , En4 
	.byte	W36
	.byte		        Dn3 
	.byte		N48   , Dn4 
	.byte	W36
	.byte		        An3 
	.byte		N48   , An4 
	.byte	W24
	.byte	PEND
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 069   ----------------------------------------
mus_fire_emblem_melee_2_069:
	.byte		N48   , En3 , v068
	.byte		N48   , En4 
	.byte	W36
	.byte		        Dn3 
	.byte		N48   , Dn4 
	.byte	W60
	.byte	PEND
@ 070   ----------------------------------------
mus_fire_emblem_melee_2_070:
	.byte		N48   , Fs3 , v068
	.byte		N48   , Fs4 
	.byte	W36
	.byte		        En3 
	.byte		N48   , En4 
	.byte	W36
	.byte		        An3 
	.byte		N48   , An4 
	.byte	W24
	.byte	PEND
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_070
@ 072   ----------------------------------------
mus_fire_emblem_melee_2_072:
	.byte		N48   , Fs3 , v068
	.byte		N48   , Fs4 
	.byte	W36
	.byte		        En3 
	.byte		N48   , En4 
	.byte	W36
	.byte		N24   , An3 
	.byte		N42   , An4 
	.byte	W24
	.byte	PEND
@ 073   ----------------------------------------
mus_fire_emblem_melee_2_073:
	.byte		N22   , An3 , v068
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn5 
	.byte	W24
	.byte	PEND
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_069
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_070
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_070
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_072
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_073
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_069
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_070
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_070
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_072
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_073
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_069
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_070
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_070
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_072
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_073
@ 098   ----------------------------------------
mus_fire_emblem_melee_2_098:
	.byte		N24   , Dn5 , v084
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte	PEND
@ 099   ----------------------------------------
mus_fire_emblem_melee_2_099:
	.byte		N24   , Gn4 , v084
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte	PEND
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
mus_fire_emblem_melee_2_101:
	.byte	W66
	.byte		N24   , Dn3 , v084
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte	PEND
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_001
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_001
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_001
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_001
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_001
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_006
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_007
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_008
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_009
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_010
	.byte		EOT   , An4 
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_011
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_012
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_013
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_013
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_013
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_016
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_017
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_017
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_017
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_020
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_021
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_021
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_023
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_024
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_001
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_001
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_001
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_001
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_001
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_006
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_007
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_008
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_009
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_010
	.byte		EOT   , An4 
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_011
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_036
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_013
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_013
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_013
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_016
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_017
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_017
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_017
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_020
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_021
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_021
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_023
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_024
@ 152   ----------------------------------------
	.byte	W96
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_050
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_050
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_050
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_053
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_050
@ 158   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_050
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_064
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_057
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_050
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_050
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_050
@ 164   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_053
@ 165   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_050
@ 166   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_050
@ 167   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_064
@ 168   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_057
@ 169   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 170   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 171   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 172   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_069
@ 173   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_070
@ 174   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_070
@ 175   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_072
@ 176   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_073
@ 177   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 178   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 179   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 180   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_069
@ 181   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_070
@ 182   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_070
@ 183   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_072
@ 184   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_073
@ 185   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 186   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 187   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 188   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_069
@ 189   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_070
@ 190   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_070
@ 191   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_072
@ 192   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_073
@ 193   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 194   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 195   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_066
@ 196   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_069
@ 197   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_070
@ 198   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_070
@ 199   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_072
@ 200   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_073
@ 201   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_098
@ 202   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_099
@ 203   ----------------------------------------
	.byte	W96
@ 204   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_2_101
@ 205   ----------------------------------------
	.byte	W92
	.byte	GOTO
	 .word	mus_fire_emblem_melee_2_B1
mus_fire_emblem_melee_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_fire_emblem_melee_3:
	.byte	KEYSH , mus_fire_emblem_melee_key+0
mus_fire_emblem_melee_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 80*mus_fire_emblem_melee_mvl/mxv
	.byte		PAN   , c_v-18
	.byte	W96
@ 001   ----------------------------------------
mus_fire_emblem_melee_3_001:
	.byte		N96   , An2 , v068
	.byte		N96   , An3 
	.byte		N96   , En4 
	.byte	W96
	.byte	PEND
@ 002   ----------------------------------------
mus_fire_emblem_melee_3_002:
	.byte		N96   , As2 , v068
	.byte		N96   , As3 
	.byte		N96   , Fn4 
	.byte	W96
	.byte	PEND
@ 003   ----------------------------------------
mus_fire_emblem_melee_3_003:
	.byte		N96   , Cn3 , v068
	.byte		N96   , Cn4 
	.byte		N96   , Gn4 
	.byte	W96
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_001
@ 012   ----------------------------------------
mus_fire_emblem_melee_3_012:
	.byte		N12   , An2 , v068
	.byte		N12   , An3 
	.byte		N12   , En4 
	.byte	W96
	.byte	PEND
@ 013   ----------------------------------------
mus_fire_emblem_melee_3_013:
	.byte		N96   , Dn2 , v068
	.byte		N96   , An2 
	.byte		N96   , Dn3 
	.byte	W96
	.byte	PEND
@ 014   ----------------------------------------
	.byte		        Fn2 
	.byte		N96   , As2 
	.byte	W96
@ 015   ----------------------------------------
	.byte		        Dn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 016   ----------------------------------------
	.byte		        En2 
	.byte		N96   , An2 
	.byte	W96
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_013
@ 018   ----------------------------------------
	.byte		N96   , Fn2 , v068
	.byte		N96   , As2 
	.byte	W96
@ 019   ----------------------------------------
	.byte		        Dn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 020   ----------------------------------------
	.byte		        En2 
	.byte		N96   , An2 
	.byte	W96
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_013
@ 022   ----------------------------------------
	.byte		N96   , Fn2 , v068
	.byte		N96   , As2 
	.byte	W96
@ 023   ----------------------------------------
mus_fire_emblem_melee_3_023:
	.byte		N96   , Cn2 , v068
	.byte		N96   , An2 
	.byte		N96   , Cn3 
	.byte	W96
	.byte	PEND
@ 024   ----------------------------------------
	.byte		        En2 
	.byte		N96   , An2 
	.byte	W96
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_001
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_003
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_012
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_013
@ 038   ----------------------------------------
	.byte		N96   , Fn2 , v068
	.byte		N96   , As2 
	.byte	W96
@ 039   ----------------------------------------
	.byte		        Dn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 040   ----------------------------------------
	.byte		        En2 
	.byte		N96   , An2 
	.byte	W96
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_013
@ 042   ----------------------------------------
	.byte		N96   , Fn2 , v068
	.byte		N96   , As2 
	.byte	W96
@ 043   ----------------------------------------
	.byte		        Dn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 044   ----------------------------------------
	.byte		        En2 
	.byte		N96   , An2 
	.byte	W96
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_013
@ 046   ----------------------------------------
	.byte		N96   , Fn2 , v068
	.byte		N96   , As2 
	.byte	W96
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_023
@ 048   ----------------------------------------
	.byte		N96   , En2 , v068
	.byte		N96   , An2 
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
	.byte		N96   
	.byte		N96   , An3 
	.byte	W96
@ 059   ----------------------------------------
mus_fire_emblem_melee_3_059:
	.byte		N48   , Dn3 , v068
	.byte		N48   , Dn4 
	.byte	W48
	.byte		TIE   , An3 
	.byte	W48
	.byte	PEND
@ 060   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 061   ----------------------------------------
	.byte		N96   , Fn3 
	.byte		N96   , Fn4 
	.byte	W96
@ 062   ----------------------------------------
	.byte		        En3 
	.byte		N96   , En4 
	.byte	W96
@ 063   ----------------------------------------
mus_fire_emblem_melee_3_063:
	.byte		N48   , Cn3 , v068
	.byte		N48   , Cn4 
	.byte	W48
	.byte		TIE   
	.byte	W48
	.byte	PEND
@ 064   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 065   ----------------------------------------
	.byte		N96   , An3 
	.byte	W96
@ 066   ----------------------------------------
mus_fire_emblem_melee_3_066:
	.byte		TIE   , Dn2 , v068
	.byte		N12   , Dn3 
	.byte		N96   , An3 
	.byte	W24
	.byte		N12   , Fs2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W48
	.byte		        Fs2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W24
	.byte	PEND
@ 067   ----------------------------------------
mus_fire_emblem_melee_3_067:
	.byte		N12   , Fs2 , v068
	.byte		N12   , Dn3 
	.byte		N48   , Dn4 
	.byte	W24
	.byte		N12   , Fs2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W24
	.byte		N48   , Fs4 
	.byte	W24
	.byte		N12   , Fs2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W24
	.byte	PEND
	.byte		EOT   , Dn2 
@ 068   ----------------------------------------
mus_fire_emblem_melee_3_068:
	.byte		N12   , Fs2 , v068
	.byte		N12   , Dn3 
	.byte		N92   , Fs4 
	.byte	W24
	.byte		N12   , Fs2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W48
	.byte		        Fs2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W24
	.byte	PEND
@ 069   ----------------------------------------
mus_fire_emblem_melee_3_069:
	.byte		N12   , Fs2 , v068
	.byte		N12   , Dn3 
	.byte		TIE   , Bn3 
	.byte	W24
	.byte		N12   , Fs2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W24
	.byte		N36   , Fs2 
	.byte	W24
	.byte		N12   
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W24
	.byte	PEND
@ 070   ----------------------------------------
mus_fire_emblem_melee_3_070:
	.byte		TIE   , En2 , v068
	.byte		N12   , Bn2 
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W48
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte	PEND
	.byte		EOT   , Bn3 
@ 071   ----------------------------------------
mus_fire_emblem_melee_3_071:
	.byte		N12   , Gn2 , v068
	.byte		N12   , Dn3 
	.byte		N36   , Cs4 
	.byte	W24
	.byte		N12   , Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N12   , Gn2 
	.byte		N12   , Dn3 
	.byte		N24   , En4 
	.byte	W24
	.byte	PEND
	.byte		EOT   , En2 
@ 072   ----------------------------------------
mus_fire_emblem_melee_3_072:
	.byte		N12   , Gn2 , v068
	.byte		N12   , Dn3 
	.byte		N96   , Dn4 
	.byte	W24
	.byte		N12   , Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W48
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte	PEND
@ 073   ----------------------------------------
mus_fire_emblem_melee_3_073:
	.byte		N12   , Gn2 , v068
	.byte		N12   , Dn3 
	.byte		N96   , Cs4 
	.byte	W24
	.byte		N12   , Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte		N36   , Gn2 
	.byte	W24
	.byte		N12   
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte	PEND
@ 074   ----------------------------------------
mus_fire_emblem_melee_3_074:
	.byte		N36   , Fs2 , v068
	.byte		N12   , Dn3 
	.byte		N96   , An3 
	.byte	W24
	.byte		N12   , Fs2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W48
	.byte		        Fs2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W24
	.byte	PEND
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_067
@ 076   ----------------------------------------
mus_fire_emblem_melee_3_076:
	.byte		N12   , Fs2 , v068
	.byte		N12   , Dn3 
	.byte		N96   , An3 
	.byte	W24
	.byte		N12   , Fs2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W48
	.byte		        Fs2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W24
	.byte	PEND
@ 077   ----------------------------------------
mus_fire_emblem_melee_3_077:
	.byte		N12   , Fs2 , v068
	.byte		N12   , Dn3 
	.byte		N48   , Gn4 
	.byte	W24
	.byte		N12   , Fs2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W24
	.byte		N48   , Fs4 
	.byte	W24
	.byte		N12   , Fs2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W24
	.byte	PEND
@ 078   ----------------------------------------
mus_fire_emblem_melee_3_078:
	.byte		TIE   , En2 , v068
	.byte		N12   , Dn3 
	.byte		N96   , Bn3 
	.byte	W24
	.byte		N12   , Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W48
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte	PEND
@ 079   ----------------------------------------
mus_fire_emblem_melee_3_079:
	.byte		N12   , Gn2 , v068
	.byte		N12   , Dn3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Gn2 
	.byte		N12   , Dn3 
	.byte		N23   , Dn4 
	.byte	W24
	.byte		N44   , En4 
	.byte	W24
	.byte		N12   , Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte	PEND
	.byte		EOT   , En2 
@ 080   ----------------------------------------
mus_fire_emblem_melee_3_080:
	.byte		N12   , Gn2 , v068
	.byte		N12   , Dn3 
	.byte		TIE   , En4 
	.byte	W24
	.byte		N12   , Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W48
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte	PEND
@ 081   ----------------------------------------
mus_fire_emblem_melee_3_081:
	.byte		N12   , Gn2 , v064
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Gn2 , v068
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 , v064
	.byte	W48
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte	PEND
	.byte		EOT   , En4 
@ 082   ----------------------------------------
mus_fire_emblem_melee_3_082:
	.byte		TIE   , Dn2 , v068
	.byte		N36   , Dn3 
	.byte		N96   , An3 
	.byte	W24
	.byte		N12   , Fs2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W48
	.byte		        Fs2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W24
	.byte	PEND
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_067
	.byte		EOT   , Dn2 
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_068
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_069
@ 086   ----------------------------------------
mus_fire_emblem_melee_3_086:
	.byte		TIE   , En2 , v068
	.byte		N12   , Bn2 
	.byte		N36   , Gn3 
	.byte	W24
	.byte		N12   , Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W48
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte	PEND
	.byte		EOT   , Bn3 
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_071
	.byte		EOT   , En2 
@ 088   ----------------------------------------
mus_fire_emblem_melee_3_088:
	.byte		N12   , Gn2 , v068
	.byte		TIE   , En3 
	.byte		N96   , Dn4 
	.byte	W24
	.byte		N12   , Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W48
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte	PEND
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_073
	.byte		EOT   , En3 
@ 090   ----------------------------------------
mus_fire_emblem_melee_3_090:
	.byte		N36   , Fs2 , v068
	.byte		N36   , Dn3 
	.byte		N96   , An3 
	.byte	W24
	.byte		N12   , Fs2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W48
	.byte		        Fs2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W24
	.byte	PEND
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_067
@ 092   ----------------------------------------
mus_fire_emblem_melee_3_092:
	.byte		N12   , Fs2 , v068
	.byte		N36   , Fs3 
	.byte		TIE   , Bn3 
	.byte	W24
	.byte		N12   , Fs2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W48
	.byte		        Fs2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W24
	.byte	PEND
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_077
	.byte		EOT   , Bn3 
@ 094   ----------------------------------------
mus_fire_emblem_melee_3_094:
	.byte		N96   , En2 , v068
	.byte		N12   , Dn3 
	.byte		N96   , Bn3 
	.byte	W24
	.byte		N12   , Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W48
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte	PEND
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_071
@ 096   ----------------------------------------
mus_fire_emblem_melee_3_096:
	.byte		TIE   , Dn2 , v068
	.byte		N12   , Bn2 
	.byte		TIE   , Dn4 
	.byte	W24
	.byte		N12   , Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W48
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte	PEND
@ 097   ----------------------------------------
	.byte		N96   , Dn2 
	.byte		TIE   , Dn3 
	.byte		TIE   , Gn3 
	.byte	W96
	.byte		EOT   , Dn2 
@ 098   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
	.byte		EOT   
	.byte		EOT   , Dn3 
	.byte		        Gn3 
	.byte		        Dn4 
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_001
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_002
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_003
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_002
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_001
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_001
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_001
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_002
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_003
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_002
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_001
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_012
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_013
@ 117   ----------------------------------------
	.byte		N96   , Fn2 , v068
	.byte		N96   , As2 
	.byte	W96
@ 118   ----------------------------------------
	.byte		        Dn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 119   ----------------------------------------
	.byte		        En2 
	.byte		N96   , An2 
	.byte	W96
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_013
@ 121   ----------------------------------------
	.byte		N96   , Fn2 , v068
	.byte		N96   , As2 
	.byte	W96
@ 122   ----------------------------------------
	.byte		        Dn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 123   ----------------------------------------
	.byte		        En2 
	.byte		N96   , An2 
	.byte	W96
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_013
@ 125   ----------------------------------------
	.byte		N96   , Fn2 , v068
	.byte		N96   , As2 
	.byte	W96
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_023
@ 127   ----------------------------------------
	.byte		N96   , En2 , v068
	.byte		N96   , An2 
	.byte	W96
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_001
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_002
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_003
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_002
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_001
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_001
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_001
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_002
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_003
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_002
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_001
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_012
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_013
@ 141   ----------------------------------------
	.byte		N96   , Fn2 , v068
	.byte		N96   , As2 
	.byte	W96
@ 142   ----------------------------------------
	.byte		        Dn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 143   ----------------------------------------
	.byte		        En2 
	.byte		N96   , An2 
	.byte	W96
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_013
@ 145   ----------------------------------------
	.byte		N96   , Fn2 , v068
	.byte		N96   , As2 
	.byte	W96
@ 146   ----------------------------------------
	.byte		        Dn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 147   ----------------------------------------
	.byte		        En2 
	.byte		N96   , An2 
	.byte	W96
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_013
@ 149   ----------------------------------------
	.byte		N96   , Fn2 , v068
	.byte		N96   , As2 
	.byte	W96
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_023
@ 151   ----------------------------------------
	.byte		N96   , En2 , v068
	.byte		N96   , An2 
	.byte	W96
@ 152   ----------------------------------------
	.byte	W96
@ 153   ----------------------------------------
	.byte	W96
@ 154   ----------------------------------------
	.byte	W96
@ 155   ----------------------------------------
	.byte	W96
@ 156   ----------------------------------------
	.byte	W96
@ 157   ----------------------------------------
	.byte	W96
@ 158   ----------------------------------------
	.byte	W96
@ 159   ----------------------------------------
	.byte	W96
@ 160   ----------------------------------------
	.byte	W96
@ 161   ----------------------------------------
	.byte		N96   
	.byte		N96   , An3 
	.byte	W96
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_059
@ 163   ----------------------------------------
	.byte	W96
	.byte		EOT   , An3 
@ 164   ----------------------------------------
	.byte		N96   , Fn3 , v068
	.byte		N96   , Fn4 
	.byte	W96
@ 165   ----------------------------------------
	.byte		        En3 
	.byte		N96   , En4 
	.byte	W96
@ 166   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_063
@ 167   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn4 
@ 168   ----------------------------------------
	.byte		N96   , An3 , v068
	.byte	W96
@ 169   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_066
@ 170   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_067
	.byte		EOT   , Dn2 
@ 171   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_068
@ 172   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_069
@ 173   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_070
	.byte		EOT   , Bn3 
@ 174   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_071
	.byte		EOT   , En2 
@ 175   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_072
@ 176   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_073
@ 177   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_074
@ 178   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_067
@ 179   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_076
@ 180   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_077
@ 181   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_078
@ 182   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_079
	.byte		EOT   , En2 
@ 183   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_080
@ 184   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_081
	.byte		EOT   , En4 
@ 185   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_082
@ 186   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_067
	.byte		EOT   , Dn2 
@ 187   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_068
@ 188   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_069
@ 189   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_086
	.byte		EOT   , Bn3 
@ 190   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_071
	.byte		EOT   , En2 
@ 191   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_088
@ 192   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_073
	.byte		EOT   , En3 
@ 193   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_090
@ 194   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_067
@ 195   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_092
@ 196   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_077
	.byte		EOT   , Bn3 
@ 197   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_094
@ 198   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_071
@ 199   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_3_096
@ 200   ----------------------------------------
	.byte		TIE   , Dn2 , v068
	.byte		TIE   , Dn3 
	.byte		TIE   , Gn3 
	.byte	W96
@ 201   ----------------------------------------
	.byte	W96
@ 202   ----------------------------------------
	.byte	W96
@ 203   ----------------------------------------
	.byte	W96
@ 204   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn2 
	.byte		EOT   
	.byte		EOT   , Dn3 
	.byte		        Gn3 
	.byte		        Dn4 
@ 205   ----------------------------------------
	.byte	W92
	.byte	GOTO
	 .word	mus_fire_emblem_melee_3_B1
mus_fire_emblem_melee_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_fire_emblem_melee_4:
	.byte	KEYSH , mus_fire_emblem_melee_key+0
mus_fire_emblem_melee_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 4
	.byte		VOL   , 98*mus_fire_emblem_melee_mvl/mxv
	.byte		PAN   , c_v+8
	.byte	W96
@ 001   ----------------------------------------
mus_fire_emblem_melee_4_001:
	.byte		N24   , An1 , v072
	.byte		N24   , An2 
	.byte	W36
	.byte		N06   , An1 
	.byte		N06   , An2 
	.byte	W60
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 006   ----------------------------------------
mus_fire_emblem_melee_4_006:
	.byte		N06   , An2 , v088
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N48   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W60
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_006
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
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_006
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_006
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
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_006
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_006
@ 115   ----------------------------------------
	.byte	W96
@ 116   ----------------------------------------
	.byte	W96
@ 117   ----------------------------------------
	.byte	W96
@ 118   ----------------------------------------
	.byte	W96
@ 119   ----------------------------------------
	.byte	W96
@ 120   ----------------------------------------
	.byte	W96
@ 121   ----------------------------------------
	.byte	W96
@ 122   ----------------------------------------
	.byte	W96
@ 123   ----------------------------------------
	.byte	W96
@ 124   ----------------------------------------
	.byte	W96
@ 125   ----------------------------------------
	.byte	W96
@ 126   ----------------------------------------
	.byte	W96
@ 127   ----------------------------------------
	.byte	W96
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_006
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_001
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_4_006
@ 139   ----------------------------------------
	.byte	W96
@ 140   ----------------------------------------
	.byte	W96
@ 141   ----------------------------------------
	.byte	W96
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W96
@ 144   ----------------------------------------
	.byte	W96
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	W96
@ 149   ----------------------------------------
	.byte	W96
@ 150   ----------------------------------------
	.byte	W96
@ 151   ----------------------------------------
	.byte	W96
@ 152   ----------------------------------------
	.byte	W96
@ 153   ----------------------------------------
	.byte	W96
@ 154   ----------------------------------------
	.byte	W96
@ 155   ----------------------------------------
	.byte	W96
@ 156   ----------------------------------------
	.byte	W96
@ 157   ----------------------------------------
	.byte	W96
@ 158   ----------------------------------------
	.byte	W96
@ 159   ----------------------------------------
	.byte	W96
@ 160   ----------------------------------------
	.byte	W96
@ 161   ----------------------------------------
	.byte	W96
@ 162   ----------------------------------------
	.byte	W96
@ 163   ----------------------------------------
	.byte	W96
@ 164   ----------------------------------------
	.byte	W96
@ 165   ----------------------------------------
	.byte	W96
@ 166   ----------------------------------------
	.byte	W96
@ 167   ----------------------------------------
	.byte	W96
@ 168   ----------------------------------------
	.byte	W96
@ 169   ----------------------------------------
	.byte	W96
@ 170   ----------------------------------------
	.byte	W96
@ 171   ----------------------------------------
	.byte	W96
@ 172   ----------------------------------------
	.byte	W96
@ 173   ----------------------------------------
	.byte	W96
@ 174   ----------------------------------------
	.byte	W96
@ 175   ----------------------------------------
	.byte	W96
@ 176   ----------------------------------------
	.byte	W96
@ 177   ----------------------------------------
	.byte	W96
@ 178   ----------------------------------------
	.byte	W96
@ 179   ----------------------------------------
	.byte	W96
@ 180   ----------------------------------------
	.byte	W96
@ 181   ----------------------------------------
	.byte	W96
@ 182   ----------------------------------------
	.byte	W96
@ 183   ----------------------------------------
	.byte	W96
@ 184   ----------------------------------------
	.byte	W96
@ 185   ----------------------------------------
	.byte	W96
@ 186   ----------------------------------------
	.byte	W96
@ 187   ----------------------------------------
	.byte	W96
@ 188   ----------------------------------------
	.byte	W96
@ 189   ----------------------------------------
	.byte	W96
@ 190   ----------------------------------------
	.byte	W96
@ 191   ----------------------------------------
	.byte	W96
@ 192   ----------------------------------------
	.byte	W96
@ 193   ----------------------------------------
	.byte	W96
@ 194   ----------------------------------------
	.byte	W96
@ 195   ----------------------------------------
	.byte	W96
@ 196   ----------------------------------------
	.byte	W96
@ 197   ----------------------------------------
	.byte	W96
@ 198   ----------------------------------------
	.byte	W96
@ 199   ----------------------------------------
	.byte	W96
@ 200   ----------------------------------------
	.byte	W96
@ 201   ----------------------------------------
	.byte	W96
@ 202   ----------------------------------------
	.byte	W96
@ 203   ----------------------------------------
	.byte	W96
@ 204   ----------------------------------------
	.byte	W96
@ 205   ----------------------------------------
	.byte	W92
	.byte	GOTO
	 .word	mus_fire_emblem_melee_4_B1
mus_fire_emblem_melee_4_B2:
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_fire_emblem_melee_5:
	.byte	KEYSH , mus_fire_emblem_melee_key+0
mus_fire_emblem_melee_5_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 96*mus_fire_emblem_melee_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
mus_fire_emblem_melee_5_001:
	.byte		N24   , An0 , v092
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		        As0 
	.byte	W24
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_fire_emblem_melee_5_002:
	.byte		N24   , An0 , v092
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 012   ----------------------------------------
	.byte		N24   , An0 , v092
	.byte	W96
@ 013   ----------------------------------------
mus_fire_emblem_melee_5_013:
	.byte		N24   , Dn1 , v092
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		        An0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
mus_fire_emblem_melee_5_014:
	.byte		N23   , As0 , v092
	.byte	W36
	.byte		N12   
	.byte	W60
	.byte	PEND
@ 015   ----------------------------------------
mus_fire_emblem_melee_5_015:
	.byte		N24   , Gn1 , v092
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		        An0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_fire_emblem_melee_5_016:
	.byte		N24   , An0 , v092
	.byte	W36
	.byte		N12   
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_014
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_015
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_014
@ 023   ----------------------------------------
mus_fire_emblem_melee_5_023:
	.byte		N24   , Cn1 , v092
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		        An0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
mus_fire_emblem_melee_5_024:
	.byte		N24   , Dn1 , v092
	.byte	W36
	.byte		N12   
	.byte	W60
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 036   ----------------------------------------
	.byte		N24   , An0 , v092
	.byte	W96
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_013
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_014
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_015
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_016
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_013
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_014
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_015
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_016
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_013
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_014
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_023
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_024
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
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_002
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_002
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_002
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_002
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_002
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 115   ----------------------------------------
	.byte		N24   , An0 , v092
	.byte	W96
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_013
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_014
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_015
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_016
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_013
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_014
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_015
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_016
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_013
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_014
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_023
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_024
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_002
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_002
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_002
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_002
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_002
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_001
@ 139   ----------------------------------------
	.byte		N24   , An0 , v092
	.byte	W96
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_013
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_014
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_015
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_016
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_013
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_014
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_015
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_016
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_013
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_014
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_023
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_5_024
@ 152   ----------------------------------------
	.byte	W96
@ 153   ----------------------------------------
	.byte	W96
@ 154   ----------------------------------------
	.byte	W96
@ 155   ----------------------------------------
	.byte	W96
@ 156   ----------------------------------------
	.byte	W96
@ 157   ----------------------------------------
	.byte	W96
@ 158   ----------------------------------------
	.byte	W96
@ 159   ----------------------------------------
	.byte	W96
@ 160   ----------------------------------------
	.byte	W96
@ 161   ----------------------------------------
	.byte	W96
@ 162   ----------------------------------------
	.byte	W96
@ 163   ----------------------------------------
	.byte	W96
@ 164   ----------------------------------------
	.byte	W96
@ 165   ----------------------------------------
	.byte	W96
@ 166   ----------------------------------------
	.byte	W96
@ 167   ----------------------------------------
	.byte	W96
@ 168   ----------------------------------------
	.byte	W96
@ 169   ----------------------------------------
	.byte	W96
@ 170   ----------------------------------------
	.byte	W96
@ 171   ----------------------------------------
	.byte	W96
@ 172   ----------------------------------------
	.byte	W96
@ 173   ----------------------------------------
	.byte	W96
@ 174   ----------------------------------------
	.byte	W96
@ 175   ----------------------------------------
	.byte	W96
@ 176   ----------------------------------------
	.byte	W96
@ 177   ----------------------------------------
	.byte	W96
@ 178   ----------------------------------------
	.byte	W96
@ 179   ----------------------------------------
	.byte	W96
@ 180   ----------------------------------------
	.byte	W96
@ 181   ----------------------------------------
	.byte	W96
@ 182   ----------------------------------------
	.byte	W96
@ 183   ----------------------------------------
	.byte	W96
@ 184   ----------------------------------------
	.byte	W96
@ 185   ----------------------------------------
	.byte	W96
@ 186   ----------------------------------------
	.byte	W96
@ 187   ----------------------------------------
	.byte	W96
@ 188   ----------------------------------------
	.byte	W96
@ 189   ----------------------------------------
	.byte	W96
@ 190   ----------------------------------------
	.byte	W96
@ 191   ----------------------------------------
	.byte	W96
@ 192   ----------------------------------------
	.byte	W96
@ 193   ----------------------------------------
	.byte	W96
@ 194   ----------------------------------------
	.byte	W96
@ 195   ----------------------------------------
	.byte	W96
@ 196   ----------------------------------------
	.byte	W96
@ 197   ----------------------------------------
	.byte	W96
@ 198   ----------------------------------------
	.byte	W96
@ 199   ----------------------------------------
	.byte	W96
@ 200   ----------------------------------------
	.byte	W96
@ 201   ----------------------------------------
	.byte	W96
@ 202   ----------------------------------------
	.byte	W96
@ 203   ----------------------------------------
	.byte	W96
@ 204   ----------------------------------------
	.byte	W96
@ 205   ----------------------------------------
	.byte	W92
	.byte	GOTO
	 .word	mus_fire_emblem_melee_5_B1
mus_fire_emblem_melee_5_B2:
	.byte	FINE

@**************** Track 6 (Midi-Chn.10) ****************@

mus_fire_emblem_melee_6:
	.byte	KEYSH , mus_fire_emblem_melee_key+0
mus_fire_emblem_melee_6_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 112*mus_fire_emblem_melee_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Fs1 , v072
	.byte	W24
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v072
	.byte	W24
@ 001   ----------------------------------------
mus_fire_emblem_melee_6_001:
	.byte		N02   , Cn1 , v096
	.byte		N02   , En1 , v092
	.byte	W36
	.byte		        Cn1 , v096
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N02   , En1 , v092
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v072
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 006   ----------------------------------------
mus_fire_emblem_melee_6_006:
	.byte		N02   , Cn1 , v096
	.byte		N02   , En1 , v092
	.byte	W36
	.byte		        Cn1 , v096
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N02   , En1 , v092
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        En1 , v076
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		N02   
	.byte		N02   , Fs1 , v072
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		        En1 , v092
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 009   ----------------------------------------
mus_fire_emblem_melee_6_009:
	.byte		N02   , Cn1 , v096
	.byte		N02   , En1 , v092
	.byte	W36
	.byte		        Cn1 , v096
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N02   , En1 , v092
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte		N02   , Fs1 , v072
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_009
@ 011   ----------------------------------------
mus_fire_emblem_melee_6_011:
	.byte		N02   , En1 , v092
	.byte	W12
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_fire_emblem_melee_6_012:
	.byte		N02   , En1 , v092
	.byte	W24
	.byte		        Cn1 , v096
	.byte	W24
	.byte		N02   
	.byte	W24
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v072
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
mus_fire_emblem_melee_6_013:
	.byte		N02   , Cn1 , v096
	.byte		N02   , Fs1 , v072
	.byte	W24
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v072
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 020   ----------------------------------------
mus_fire_emblem_melee_6_020:
	.byte		N02   , Cn1 , v096
	.byte		N02   , Fs1 , v072
	.byte	W24
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N02   , En1 , v092
	.byte	W12
	.byte		N02   
	.byte		N02   , Fs1 , v072
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_fire_emblem_melee_6_021:
	.byte		N02   , Cn1 , v096
	.byte		N02   , Fs1 , v072
	.byte	W24
	.byte		        En1 , v092
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        En1 , v092
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_021
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_021
@ 024   ----------------------------------------
mus_fire_emblem_melee_6_024:
	.byte		N02   , Cn1 , v096
	.byte		N02   , Fs1 , v072
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        En1 , v084
	.byte		N02   , Fs1 , v072
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        Cn1 , v096
	.byte		N02   , En1 , v088
	.byte	W03
	.byte		N02   
	.byte	W09
	.byte		        En1 , v092
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 030   ----------------------------------------
mus_fire_emblem_melee_6_030:
	.byte		N02   , Cn1 , v096
	.byte		N02   , En1 , v092
	.byte	W36
	.byte		        Cn1 , v096
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N02   , En1 , v092
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        En1 , v080
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        En1 , v088
	.byte		N02   , Fs1 , v072
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte	PEND
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_009
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_009
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_011
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_012
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_020
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_021
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_021
@ 048   ----------------------------------------
mus_fire_emblem_melee_6_048:
	.byte		N02   , Cn1 , v096
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v072
	.byte	W36
	.byte		        Cn1 , v096
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v072
	.byte	W12
	.byte		N02   
	.byte	W24
	.byte		        Cn1 , v096
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v072
	.byte	W24
	.byte	PEND
@ 049   ----------------------------------------
mus_fire_emblem_melee_6_049:
	.byte		N02   , Cn1 , v096
	.byte		N02   , En1 , v092
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v096
	.byte		N02   , En1 , v092
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		        Cn1 
	.byte		N02   , En1 
	.byte		N02   , Fs1 , v072
	.byte	W12
	.byte	PEND
@ 050   ----------------------------------------
mus_fire_emblem_melee_6_050:
	.byte		N02   , Cn1 , v092
	.byte		N02   , Fs1 , v072
	.byte	W96
	.byte	PEND
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
mus_fire_emblem_melee_6_058:
	.byte	W48
	.byte		N02   , Fs1 , v060
	.byte	W36
	.byte		N02   
	.byte	W12
	.byte	PEND
@ 059   ----------------------------------------
mus_fire_emblem_melee_6_059:
	.byte		N02   , Fs1 , v060
	.byte	W48
	.byte		N02   
	.byte	W36
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 060   ----------------------------------------
mus_fire_emblem_melee_6_060:
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 061   ----------------------------------------
mus_fire_emblem_melee_6_061:
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
mus_fire_emblem_melee_6_062:
	.byte		N02   , Fs1 , v060
	.byte	W48
	.byte		N02   
	.byte	W48
	.byte	PEND
@ 063   ----------------------------------------
mus_fire_emblem_melee_6_063:
	.byte	W48
	.byte		N02   , Fs1 , v060
	.byte	W36
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v060
	.byte	W06
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v060
	.byte	W06
	.byte	PEND
@ 064   ----------------------------------------
mus_fire_emblem_melee_6_064:
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v080
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 065   ----------------------------------------
mus_fire_emblem_melee_6_065:
	.byte		N02   , Cn1 , v092
	.byte		N02   , En1 , v088
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v088
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v088
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte	PEND
@ 066   ----------------------------------------
mus_fire_emblem_melee_6_066:
	.byte		N02   , Cn1 , v096
	.byte		N02   , En1 , v076
	.byte		N02   , Fs1 , v068
	.byte	W24
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v092
	.byte	W24
	.byte		        Cn1 , v096
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 067   ----------------------------------------
mus_fire_emblem_melee_6_067:
	.byte		N02   , Cn1 , v096
	.byte		N02   , En1 , v076
	.byte	W24
	.byte		        Cn1 , v096
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v092
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte	PEND
@ 068   ----------------------------------------
mus_fire_emblem_melee_6_068:
	.byte		N02   , Cn1 , v096
	.byte		N02   , En1 , v076
	.byte	W24
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v092
	.byte	W24
	.byte		        Cn1 , v096
	.byte		N02   , En1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_066
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_066
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 102   ----------------------------------------
	.byte		N02   , Fs1 , v072
	.byte	W96
@ 103   ----------------------------------------
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v072
	.byte	W24
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_006
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_009
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_009
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_011
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_012
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_020
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_021
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_021
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_021
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_024
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_030
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_001
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_009
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_009
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_011
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_012
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_013
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_020
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_021
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_021
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_021
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_048
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_049
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_050
@ 154   ----------------------------------------
	.byte	W96
@ 155   ----------------------------------------
	.byte	W96
@ 156   ----------------------------------------
	.byte	W96
@ 157   ----------------------------------------
	.byte	W96
@ 158   ----------------------------------------
	.byte	W96
@ 159   ----------------------------------------
	.byte	W96
@ 160   ----------------------------------------
	.byte	W96
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_058
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_059
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_060
@ 164   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_061
@ 165   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_062
@ 166   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_063
@ 167   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_064
@ 168   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_065
@ 169   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_066
@ 170   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 171   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 172   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 173   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 174   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 175   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 176   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 177   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 178   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 179   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 180   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 181   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 182   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 183   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 184   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 185   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_066
@ 186   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 187   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 188   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 189   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 190   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 191   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 192   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 193   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_066
@ 194   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 195   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 196   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 197   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 198   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 199   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 200   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 201   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 202   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 203   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_068
@ 204   ----------------------------------------
	.byte	PATT
	 .word	mus_fire_emblem_melee_6_067
@ 205   ----------------------------------------
	.byte		N02   , Fs1 , v072
	.byte	W90
	.byte		        Fs1 , v048
	.byte	W02
	.byte	GOTO
	 .word	mus_fire_emblem_melee_6_B1
mus_fire_emblem_melee_6_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_fire_emblem_melee:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_fire_emblem_melee_pri	@ Priority
	.byte	mus_fire_emblem_melee_rev	@ Reverb.

	.word	mus_fire_emblem_melee_grp

	.word	mus_fire_emblem_melee_1
	.word	mus_fire_emblem_melee_2
	.word	mus_fire_emblem_melee_3
	.word	mus_fire_emblem_melee_4
	.word	mus_fire_emblem_melee_5
	.word	mus_fire_emblem_melee_6

	.end
