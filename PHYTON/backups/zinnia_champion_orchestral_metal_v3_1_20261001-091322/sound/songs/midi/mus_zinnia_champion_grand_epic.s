	.include "MPlayDef.s"

	.equ	mus_zinnia_champion_grand_epic_grp, voicegroup_brothers
	.equ	mus_zinnia_champion_grand_epic_pri, 0
	.equ	mus_zinnia_champion_grand_epic_rev, reverb_set+18
	.equ	mus_zinnia_champion_grand_epic_mvl, 90
	.equ	mus_zinnia_champion_grand_epic_key, 0
	.equ	mus_zinnia_champion_grand_epic_tbs, 1
	.equ	mus_zinnia_champion_grand_epic_exg, 0
	.equ	mus_zinnia_champion_grand_epic_cmp, 1

	.section .rodata
	.global	mus_zinnia_champion_grand_epic
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_zinnia_champion_grand_epic_1:
	.byte	KEYSH , mus_zinnia_champion_grand_epic_key+0
mus_zinnia_champion_grand_epic_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 175*mus_zinnia_champion_grand_epic_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 94*mus_zinnia_champion_grand_epic_mvl/mxv
	.byte		PAN   , c_v-10
	.byte	W36
	.byte		N12   , Bn2 , v068
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 002   ----------------------------------------
	.byte		N48   , Dn2 
	.byte	W48
	.byte		        En2 
	.byte	W48
@ 003   ----------------------------------------
	.byte		TIE   , Fs2 
	.byte		N12   , Cs3 , v056
	.byte		N12   , Cs4 , v048
	.byte	W12
	.byte		        Cs3 , v056
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v048
	.byte	W12
	.byte		        Fs3 , v056
	.byte		N12   , An3 
	.byte		N12   , An4 , v048
	.byte	W12
	.byte		        En3 , v056
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v048
	.byte	W12
	.byte		        Dn3 , v056
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v048
	.byte	W12
	.byte		        En3 , v056
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v048
	.byte	W12
	.byte		        Dn3 , v056
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v048
	.byte	W12
	.byte		        Cs3 , v056
	.byte		N12   , En3 
	.byte		N12   , En4 , v048
	.byte	W12
@ 004   ----------------------------------------
mus_zinnia_champion_grand_epic_1_004:
	.byte		N12   , An2 , v056
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 , v048
	.byte	W12
	.byte		        Cs3 , v056
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v048
	.byte	W12
	.byte		        En3 , v056
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v048
	.byte	W12
	.byte		        Gs3 , v056
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 , v048
	.byte	W06
	.byte		        En3 , v056
	.byte		N06   , An3 
	.byte		N06   , An4 , v048
	.byte	W06
	.byte		N12   , En3 , v056
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v048
	.byte	W12
	.byte		        Dn3 , v056
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v048
	.byte	W12
	.byte		        Cs3 , v056
	.byte		N12   , En3 
	.byte		N12   , En4 , v048
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_zinnia_champion_grand_epic_1_005:
	.byte		N12   , An2 , v056
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 , v048
	.byte	W12
	.byte		        Cs3 , v056
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v048
	.byte	W12
	.byte		        Fs3 , v056
	.byte		N12   , Fs4 , v048
	.byte		N12   , An4 
	.byte	W12
	.byte		        En3 , v056
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v048
	.byte	W12
	.byte		        Dn3 , v056
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v048
	.byte	W12
	.byte		        En3 , v056
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v048
	.byte	W12
	.byte		        Dn3 , v056
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v048
	.byte	W12
	.byte		        Cs3 , v056
	.byte		N12   , En3 
	.byte		N12   , En4 , v048
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte		        An2 , v056
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 , v048
	.byte	W12
	.byte		        Cs3 , v056
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v048
	.byte	W12
	.byte		        En3 , v056
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v048
	.byte	W12
	.byte		        Gs3 , v056
	.byte		N12   , Cs4 
	.byte		N12   , Gs4 , v048
	.byte	W12
	.byte		N06   , Fs3 , v056
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 , v048
	.byte	W06
	.byte		        En3 , v056
	.byte		N06   , An3 
	.byte		N06   , An4 , v048
	.byte	W06
	.byte		N12   , En3 , v056
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v048
	.byte	W12
	.byte		        Dn3 , v056
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v048
	.byte	W12
	.byte		        Cs3 , v056
	.byte		N12   , En3 
	.byte		N12   , En4 , v048
	.byte	W12
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_1_005
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_1_004
@ 009   ----------------------------------------
	.byte		N12   , An2 , v056
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 , v048
	.byte	W12
	.byte		        Cs3 , v056
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v048
	.byte	W12
	.byte		        Fs3 , v056
	.byte		N12   , An3 
	.byte		N12   , An4 , v048
	.byte	W12
	.byte		        En3 , v056
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v048
	.byte	W12
	.byte		        Dn3 , v056
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v048
	.byte	W12
	.byte		        En3 , v056
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v048
	.byte	W12
	.byte		        Dn3 , v056
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v048
	.byte	W12
	.byte		        Cs3 , v056
	.byte		N12   , En3 
	.byte		N12   , En4 , v048
	.byte	W12
@ 010   ----------------------------------------
	.byte		        An2 , v056
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v048
	.byte	W12
	.byte		        En3 , v052
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v048
	.byte	W12
	.byte		        Gs3 , v052
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Fs3 
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 , v048
	.byte	W06
	.byte		        En3 , v052
	.byte		N06   , An3 
	.byte		N06   , An4 , v048
	.byte	W06
	.byte		N12   , En3 , v052
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 , v048
	.byte	W12
	.byte		        Dn3 , v052
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v048
	.byte	W12
	.byte		        Cs3 , v052
	.byte		N12   , En3 
	.byte		N12   , En4 , v048
	.byte	W06
	.byte		EOT   , Fs2 
	.byte	W06
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
@ 112   ----------------------------------------
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte	W96
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
	.byte	W96
@ 129   ----------------------------------------
	.byte	W96
@ 130   ----------------------------------------
	.byte	W96
@ 131   ----------------------------------------
	.byte	W07
	.byte	GOTO
	 .word	mus_zinnia_champion_grand_epic_1_B1
mus_zinnia_champion_grand_epic_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_zinnia_champion_grand_epic_2:
	.byte	KEYSH , mus_zinnia_champion_grand_epic_key+0
mus_zinnia_champion_grand_epic_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 112*mus_zinnia_champion_grand_epic_mvl/mxv
	.byte		PAN   , c_v+18
	.byte	W72
	.byte		N12   , Fs4 , v080
	.byte	W12
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 001   ----------------------------------------
	.byte		N96   , Cs5 
	.byte	W96
@ 002   ----------------------------------------
	.byte	W06
	.byte		        Fs3 , v076
	.byte	W90
@ 003   ----------------------------------------
	.byte	W06
	.byte		N84   , Gs3 
	.byte	W84
	.byte		N06   , Fs3 
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Gs3 
	.byte	W06
	.byte		N84   , An3 
	.byte	W84
	.byte		N06   , Gs3 
	.byte	W06
@ 005   ----------------------------------------
	.byte		        An3 
	.byte	W06
	.byte		N96   , Bn3 
	.byte	W90
@ 006   ----------------------------------------
	.byte	W06
	.byte		N72   , Cs4 , v072
	.byte	W72
	.byte		N24   , En4 
	.byte	W18
@ 007   ----------------------------------------
	.byte	W06
	.byte		N72   , Cs4 
	.byte	W72
	.byte		N24   , Gs4 
	.byte	W18
@ 008   ----------------------------------------
	.byte	W06
	.byte		N84   , An4 
	.byte	W84
	.byte		N06   , Gs4 , v076
	.byte	W06
@ 009   ----------------------------------------
	.byte		        As4 , v072
	.byte	W06
	.byte		N48   , Bn4 
	.byte	W48
	.byte		        Cs5 
	.byte	W42
@ 010   ----------------------------------------
	.byte	W06
	.byte		TIE   , Fs4 
	.byte	W90
@ 011   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W06
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N24   , An4 
	.byte	W24
	.byte		        En5 
	.byte	W18
@ 012   ----------------------------------------
	.byte	W06
	.byte		N96   , Cs5 
	.byte	W90
@ 013   ----------------------------------------
	.byte	W18
	.byte		N12   , Bn4 , v076
	.byte	W12
	.byte		N06   , Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N12   , An4 
	.byte	W12
	.byte		N06   , Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gs4 
	.byte	W06
@ 014   ----------------------------------------
	.byte	W06
	.byte		N96   , Fs4 
	.byte	W90
@ 015   ----------------------------------------
	.byte	W15
	.byte		N36   , Gs4 
	.byte	W36
	.byte	W03
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte	W18
@ 016   ----------------------------------------
	.byte	W06
	.byte		TIE   , Cs4 
	.byte	W90
@ 017   ----------------------------------------
	.byte	W54
	.byte		EOT   
	.byte	W24
	.byte		N24   , Cn4 
	.byte	W18
@ 018   ----------------------------------------
	.byte	W06
	.byte		TIE   , Gn4 
	.byte	W90
@ 019   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W06
	.byte		N36   , An4 , v080
	.byte	W36
	.byte		N24   , As4 
	.byte	W24
	.byte		        Fn5 
	.byte	W18
@ 020   ----------------------------------------
	.byte	W06
	.byte		N96   , Dn5 
	.byte	W90
@ 021   ----------------------------------------
	.byte	W18
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        An4 
	.byte	W06
@ 022   ----------------------------------------
	.byte	W06
	.byte		N96   , Gn4 
	.byte	W90
@ 023   ----------------------------------------
	.byte	W15
	.byte		N36   , An4 
	.byte	W36
	.byte	W03
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Fn4 
	.byte	W18
@ 024   ----------------------------------------
	.byte	W06
	.byte		TIE   , Dn4 
	.byte	W90
@ 025   ----------------------------------------
	.byte	W54
	.byte		EOT   
	.byte	W42
@ 026   ----------------------------------------
	.byte	W06
	.byte		N96   , As4 , v096
	.byte	W90
@ 027   ----------------------------------------
	.byte	W06
	.byte		N48   , An4 
	.byte	W48
	.byte		        Cn5 
	.byte	W42
@ 028   ----------------------------------------
	.byte	W06
	.byte		        Bn4 
	.byte	W48
	.byte		        En4 
	.byte	W42
@ 029   ----------------------------------------
	.byte	W06
	.byte		        Ds4 
	.byte	W48
	.byte		        Gs4 
	.byte	W42
@ 030   ----------------------------------------
	.byte	W06
	.byte		N84   , Gn4 
	.byte	W84
	.byte		N06   , Fn4 
	.byte	W06
@ 031   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        Fn4 
	.byte	W42
@ 032   ----------------------------------------
	.byte	W06
	.byte		TIE   , Dn4 
	.byte	W90
@ 033   ----------------------------------------
	.byte	W54
	.byte		EOT   
	.byte	W42
@ 034   ----------------------------------------
	.byte	W06
	.byte		N96   , As4 
	.byte	W90
@ 035   ----------------------------------------
	.byte	W06
	.byte		N48   , An4 
	.byte	W48
	.byte		N24   , As4 
	.byte	W24
	.byte		        Cn5 , v100
	.byte	W18
@ 036   ----------------------------------------
	.byte	W06
	.byte		N06   , An4 
	.byte	W06
	.byte		N78   , As4 
	.byte	W78
	.byte		N06   , An4 
	.byte	W06
@ 037   ----------------------------------------
	.byte		        Gn4 
	.byte	W06
	.byte		N80   , Ds4 
	.byte	W90
@ 038   ----------------------------------------
	.byte	W06
	.byte		N96   
	.byte	W90
@ 039   ----------------------------------------
	.byte	W06
	.byte		N08   , Cn4 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		        Dn4 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		        Dn4 
	.byte	W08
	.byte		        Ds4 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		        Ds4 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Fn4 
	.byte	W08
	.byte		        Gn4 
	.byte	W02
@ 040   ----------------------------------------
	.byte	W06
	.byte		N84   , As4 
	.byte	W84
	.byte		N06   , Cn5 
	.byte	W06
@ 041   ----------------------------------------
	.byte		        As4 
	.byte	W06
	.byte		N96   , An4 
	.byte	W90
@ 042   ----------------------------------------
	.byte	W06
	.byte		N72   , Fs4 
	.byte	W72
	.byte		N08   
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        Fs4 
	.byte	W02
@ 043   ----------------------------------------
	.byte	W06
	.byte		        Gs4 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        An4 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        An4 
	.byte	W08
	.byte		        Bn4 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        Bn4 
	.byte	W08
	.byte		        En5 
	.byte	W08
	.byte		        En4 
	.byte	W08
	.byte		        Ds4 
	.byte	W02
@ 044   ----------------------------------------
	.byte	W06
	.byte		N84   , En4 
	.byte	W84
	.byte		N06   , Dn4 
	.byte	W06
@ 045   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        En4 
	.byte	W42
@ 046   ----------------------------------------
	.byte	W06
	.byte		N96   , Fs4 
	.byte	W90
@ 047   ----------------------------------------
	.byte	W06
	.byte		        En4 
	.byte	W90
@ 048   ----------------------------------------
	.byte	W06
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N08   , Bn3 
	.byte	W08
	.byte		        Dn3 
	.byte	W08
	.byte		        Fs3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        Dn3 
	.byte	W08
	.byte		        Fs3 
	.byte	W02
@ 049   ----------------------------------------
	.byte	W06
	.byte		N96   , Cs4 
	.byte	W90
@ 050   ----------------------------------------
mus_zinnia_champion_grand_epic_2_050:
	.byte	W06
	.byte		N72   , Fs5 , v084
	.byte	W72
	.byte		N24   , An5 
	.byte	W18
	.byte	PEND
@ 051   ----------------------------------------
	.byte	W06
	.byte		N36   , Gs5 
	.byte	W36
	.byte		        En5 
	.byte	W36
	.byte		N24   , Fs5 
	.byte	W18
@ 052   ----------------------------------------
	.byte	W06
	.byte		N72   , Cs5 
	.byte	W72
	.byte		N24   , Bn4 
	.byte	W18
@ 053   ----------------------------------------
	.byte	W06
	.byte		N48   , Cs5 
	.byte	W48
	.byte		N36   , Bn4 
	.byte	W36
	.byte		N06   , Cs5 
	.byte	W06
@ 054   ----------------------------------------
	.byte		        Bn4 
	.byte	W06
	.byte		N72   , Fs4 
	.byte	W72
	.byte		N24   , Cs5 
	.byte	W18
@ 055   ----------------------------------------
	.byte	W06
	.byte		N36   , Bn4 
	.byte	W36
	.byte		        An4 
	.byte	W36
	.byte		N24   , Gs4 
	.byte	W18
@ 056   ----------------------------------------
	.byte	W06
	.byte		N72   , Fs4 
	.byte	W72
	.byte		N24   , Cs5 
	.byte	W18
@ 057   ----------------------------------------
	.byte	W06
	.byte		        Bn4 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		        En5 
	.byte	W18
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_2_050
@ 059   ----------------------------------------
	.byte	W06
	.byte		N24   , Gs5 , v084
	.byte	W24
	.byte		        En5 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		        Gs5 
	.byte	W18
@ 060   ----------------------------------------
	.byte	W06
	.byte		TIE   , Fs5 
	.byte	W90
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W06
	.byte		EOT   
	.byte		N09   , Fs4 , v068
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N09   , An4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W06
@ 063   ----------------------------------------
	.byte	W06
	.byte		        Fs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N21   , Cs4 
	.byte	W18
@ 064   ----------------------------------------
mus_zinnia_champion_grand_epic_2_064:
	.byte	W18
	.byte		N09   , Cs4 , v068
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W06
	.byte	PEND
@ 065   ----------------------------------------
	.byte	W06
	.byte		        En4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N18   , En4 
	.byte	W18
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_2_064
@ 067   ----------------------------------------
	.byte	W06
	.byte		N09   , En4 , v068
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N21   , En4 
	.byte	W18
@ 068   ----------------------------------------
	.byte	W18
	.byte		N09   , Cs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N15   , An4 
	.byte	W12
	.byte		N09   , Gn4 , v072
	.byte	W24
	.byte		        Fs4 
	.byte	W06
@ 069   ----------------------------------------
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W18
@ 070   ----------------------------------------
	.byte	W06
	.byte		TIE   , Fs4 , v080
	.byte	W90
@ 071   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W06
	.byte		N36   , Gs4 , v084
	.byte	W36
	.byte		N24   , An4 
	.byte	W24
	.byte		        En5 
	.byte	W18
@ 072   ----------------------------------------
	.byte	W06
	.byte		N96   , Cs5 
	.byte	W90
@ 073   ----------------------------------------
	.byte	W18
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N06   , Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N12   , An4 
	.byte	W12
	.byte		N06   , Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gs4 
	.byte	W06
@ 074   ----------------------------------------
	.byte	W06
	.byte		N96   , Fs4 
	.byte	W90
@ 075   ----------------------------------------
	.byte	W15
	.byte		N36   , Gs4 
	.byte	W36
	.byte	W03
	.byte		N24   , Fs4 , v088
	.byte	W24
	.byte		        En4 
	.byte	W18
@ 076   ----------------------------------------
	.byte	W06
	.byte		TIE   , Cs4 
	.byte	W90
@ 077   ----------------------------------------
	.byte	W54
	.byte		EOT   
	.byte	W24
	.byte		N24   , Cn4 
	.byte	W18
@ 078   ----------------------------------------
	.byte	W06
	.byte		TIE   , Gn4 
	.byte	W90
@ 079   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W06
	.byte		N36   , An4 
	.byte	W36
	.byte		N24   , As4 
	.byte	W24
	.byte		        Fn5 
	.byte	W18
@ 080   ----------------------------------------
	.byte	W06
	.byte		N96   , Dn5 
	.byte	W90
@ 081   ----------------------------------------
	.byte	W18
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N12   , As4 , v092
	.byte	W12
	.byte		N06   , Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        An4 
	.byte	W06
@ 082   ----------------------------------------
	.byte	W06
	.byte		N96   , Gn4 
	.byte	W90
@ 083   ----------------------------------------
	.byte	W15
	.byte		N36   , An4 
	.byte	W36
	.byte	W03
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Fn4 
	.byte	W18
@ 084   ----------------------------------------
	.byte	W06
	.byte		TIE   , Dn4 
	.byte	W90
@ 085   ----------------------------------------
	.byte	W54
	.byte		EOT   
	.byte	W42
@ 086   ----------------------------------------
	.byte	W06
	.byte		N96   , As4 , v108
	.byte	W90
@ 087   ----------------------------------------
	.byte	W06
	.byte		N48   , An4 
	.byte	W48
	.byte		        Cn5 
	.byte	W42
@ 088   ----------------------------------------
	.byte	W06
	.byte		        Bn4 
	.byte	W48
	.byte		        En4 
	.byte	W42
@ 089   ----------------------------------------
	.byte	W06
	.byte		        Ds4 
	.byte	W48
	.byte		        Gs4 
	.byte	W42
@ 090   ----------------------------------------
	.byte	W06
	.byte		N84   , Gn4 
	.byte	W84
	.byte		N06   , Fn4 
	.byte	W06
@ 091   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        Fn4 
	.byte	W42
@ 092   ----------------------------------------
	.byte	W06
	.byte		TIE   , Dn4 
	.byte	W90
@ 093   ----------------------------------------
	.byte	W54
	.byte		EOT   
	.byte	W42
@ 094   ----------------------------------------
	.byte	W06
	.byte		N96   , As4 
	.byte	W90
@ 095   ----------------------------------------
	.byte	W06
	.byte		N48   , An4 
	.byte	W48
	.byte		N24   , As4 
	.byte	W24
	.byte		        Cn5 
	.byte	W18
@ 096   ----------------------------------------
	.byte	W06
	.byte		N06   , An4 
	.byte	W06
	.byte		N78   , As4 
	.byte	W78
	.byte		N06   , An4 
	.byte	W06
@ 097   ----------------------------------------
	.byte		        Gn4 
	.byte	W06
	.byte		N80   , Ds4 
	.byte	W90
@ 098   ----------------------------------------
	.byte	W06
	.byte		N96   
	.byte	W90
@ 099   ----------------------------------------
	.byte	W06
	.byte		N08   , Cn4 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		        Dn4 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		        Dn4 
	.byte	W08
	.byte		        Ds4 
	.byte	W08
	.byte		        Gn3 , v112
	.byte	W08
	.byte		        Ds4 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Fn4 
	.byte	W08
	.byte		        Gn4 
	.byte	W02
@ 100   ----------------------------------------
	.byte	W06
	.byte		N84   , As4 
	.byte	W84
	.byte		N06   , Cn5 
	.byte	W06
@ 101   ----------------------------------------
	.byte		        As4 
	.byte	W06
	.byte		N96   , An4 
	.byte	W90
@ 102   ----------------------------------------
	.byte	W06
	.byte		N72   , Fs4 
	.byte	W72
	.byte		N08   
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        Fs4 
	.byte	W02
@ 103   ----------------------------------------
	.byte	W06
	.byte		        Gs4 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        An4 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        An4 
	.byte	W08
	.byte		        Bn4 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        Bn4 
	.byte	W08
	.byte		        En5 
	.byte	W08
	.byte		        En4 
	.byte	W08
	.byte		        Ds4 
	.byte	W02
@ 104   ----------------------------------------
	.byte	W06
	.byte		N84   , En4 
	.byte	W84
	.byte		N06   , Dn4 
	.byte	W06
@ 105   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        En4 
	.byte	W42
@ 106   ----------------------------------------
	.byte	W06
	.byte		N96   , Fs4 
	.byte	W90
@ 107   ----------------------------------------
	.byte	W06
	.byte		        En4 
	.byte	W90
@ 108   ----------------------------------------
	.byte	W06
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N08   , Bn3 
	.byte	W08
	.byte		        Dn3 
	.byte	W08
	.byte		        Fs3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        Dn3 
	.byte	W08
	.byte		        Fs3 
	.byte	W02
@ 109   ----------------------------------------
	.byte	W06
	.byte		N96   , Cs4 
	.byte	W90
@ 110   ----------------------------------------
	.byte	W06
	.byte		N72   , Fs5 , v092
	.byte	W72
	.byte		N24   , An5 
	.byte	W18
@ 111   ----------------------------------------
	.byte	W06
	.byte		N36   , Gs5 
	.byte	W36
	.byte		        En5 
	.byte	W36
	.byte		N24   , Fs5 
	.byte	W18
@ 112   ----------------------------------------
	.byte	W06
	.byte		N72   , Cs5 
	.byte	W72
	.byte		N24   , Bn4 
	.byte	W18
@ 113   ----------------------------------------
	.byte	W06
	.byte		N48   , Cs5 
	.byte	W48
	.byte		N36   , Bn4 
	.byte	W36
	.byte		N06   , Cs5 
	.byte	W06
@ 114   ----------------------------------------
	.byte		        Bn4 
	.byte	W06
	.byte		N72   , Fs4 
	.byte	W72
	.byte		N24   , Cs5 
	.byte	W18
@ 115   ----------------------------------------
	.byte	W06
	.byte		N36   , Bn4 
	.byte	W36
	.byte		        An4 
	.byte	W36
	.byte		N24   , Gs4 
	.byte	W18
@ 116   ----------------------------------------
	.byte	W06
	.byte		N72   , Fs4 
	.byte	W72
	.byte		N24   , Cs5 , v096
	.byte	W18
@ 117   ----------------------------------------
	.byte	W06
	.byte		        Bn4 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		        En5 
	.byte	W18
@ 118   ----------------------------------------
	.byte	W06
	.byte		N72   , Fs5 
	.byte	W72
	.byte		N24   , An5 
	.byte	W18
@ 119   ----------------------------------------
	.byte	W06
	.byte		        Gs5 
	.byte	W24
	.byte		        En5 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		        Gs5 
	.byte	W18
@ 120   ----------------------------------------
	.byte	W06
	.byte		TIE   , Fs5 
	.byte	W90
@ 121   ----------------------------------------
	.byte	W96
@ 122   ----------------------------------------
	.byte	W06
	.byte		EOT   
	.byte		N09   , Fs4 , v076
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N09   , An4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W06
@ 123   ----------------------------------------
	.byte	W06
	.byte		        Fs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N21   , Cs4 
	.byte	W18
@ 124   ----------------------------------------
mus_zinnia_champion_grand_epic_2_124:
	.byte	W18
	.byte		N09   , Cs4 , v076
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W06
	.byte	PEND
@ 125   ----------------------------------------
	.byte	W06
	.byte		        En4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N18   , En4 
	.byte	W18
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_2_124
@ 127   ----------------------------------------
	.byte	W06
	.byte		N09   , En4 , v076
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N21   , En4 
	.byte	W18
@ 128   ----------------------------------------
	.byte	W18
	.byte		N09   , Cs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N15   , An4 
	.byte	W12
	.byte		N09   , Gn4 , v080
	.byte	W24
	.byte		        Fs4 
	.byte	W06
@ 129   ----------------------------------------
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W18
@ 130   ----------------------------------------
	.byte	W07
	.byte	GOTO
	 .word	mus_zinnia_champion_grand_epic_2_B1
mus_zinnia_champion_grand_epic_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_zinnia_champion_grand_epic_3:
	.byte	KEYSH , mus_zinnia_champion_grand_epic_key+0
mus_zinnia_champion_grand_epic_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 86*mus_zinnia_champion_grand_epic_mvl/mxv
	.byte		PAN   , c_v-24
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
	.byte	W72
	.byte		N24   , Bn2 , v056
	.byte	W24
@ 010   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte	W96
@ 011   ----------------------------------------
	.byte	W06
	.byte		EOT   
	.byte	W06
	.byte		N36   , Gs3 
	.byte	W36
	.byte		N24   , An3 
	.byte	W24
	.byte		        En4 
	.byte	W24
@ 012   ----------------------------------------
	.byte		N96   , Cs4 
	.byte	W96
@ 013   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N96   , Fs3 
	.byte	W96
@ 015   ----------------------------------------
	.byte	W09
	.byte		N36   , Gs3 
	.byte	W36
	.byte	W03
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
@ 016   ----------------------------------------
	.byte		TIE   , Cs3 
	.byte	W96
@ 017   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W24
	.byte		N24   , Cn3 
	.byte	W24
@ 018   ----------------------------------------
	.byte		TIE   , Gn3 
	.byte	W96
@ 019   ----------------------------------------
	.byte	W06
	.byte		EOT   
	.byte	W06
	.byte		N36   , An3 
	.byte	W36
	.byte		N24   , As3 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
@ 020   ----------------------------------------
	.byte		N96   , Dn4 
	.byte	W96
@ 021   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N12   , As3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 022   ----------------------------------------
	.byte		N96   , Gn3 
	.byte	W96
@ 023   ----------------------------------------
	.byte	W09
	.byte		N36   , An3 
	.byte	W36
	.byte	W03
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
@ 024   ----------------------------------------
	.byte		TIE   , Dn3 
	.byte	W96
@ 025   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
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
	.byte		N96   , Dn3 , v060
	.byte	W96
@ 043   ----------------------------------------
	.byte		        En3 
	.byte	W96
@ 044   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 045   ----------------------------------------
	.byte		        Bn3 
	.byte	W96
@ 046   ----------------------------------------
	.byte		N36   , Fs3 
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		N24   , An3 
	.byte	W24
@ 047   ----------------------------------------
	.byte		N36   , En3 
	.byte	W36
	.byte		N60   , Cs3 
	.byte	W60
@ 048   ----------------------------------------
	.byte		N36   , Dn3 
	.byte	W36
	.byte		        En3 
	.byte	W36
	.byte		N24   , Fs3 
	.byte	W24
@ 049   ----------------------------------------
	.byte		N36   , An3 
	.byte	W36
	.byte		N48   , Gs3 
	.byte	W48
	.byte		N06   , En3 , v068
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 050   ----------------------------------------
	.byte		N72   , Fs3 
	.byte	W72
	.byte		N24   , An3 , v072
	.byte	W24
@ 051   ----------------------------------------
	.byte		N36   , Gs3 
	.byte	W36
	.byte		        En3 
	.byte	W36
	.byte		N24   , Fs3 
	.byte	W24
@ 052   ----------------------------------------
	.byte		N72   , Cs3 
	.byte	W72
	.byte		N24   , Bn2 
	.byte	W24
@ 053   ----------------------------------------
	.byte		N48   , Cs3 
	.byte	W48
	.byte		N36   , Bn2 
	.byte	W36
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 054   ----------------------------------------
mus_zinnia_champion_grand_epic_3_054:
	.byte		N72   , Fs3 , v072
	.byte	W72
	.byte		N24   , Cs3 
	.byte	W24
	.byte	PEND
@ 055   ----------------------------------------
	.byte		N36   , Bn2 
	.byte	W36
	.byte		        An2 
	.byte	W36
	.byte		N24   , Gs2 
	.byte	W24
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_3_054
@ 057   ----------------------------------------
	.byte		N24   , Bn2 , v072
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
@ 058   ----------------------------------------
	.byte		N72   , Fs3 
	.byte	W72
	.byte		N24   , An3 
	.byte	W24
@ 059   ----------------------------------------
	.byte		        Gs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
@ 060   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 062   ----------------------------------------
	.byte		N09   , Fs3 , v056
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N09   , An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 063   ----------------------------------------
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N21   , Cs3 
	.byte	W24
@ 064   ----------------------------------------
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N21   , An3 
	.byte	W36
	.byte		N09   , Fs3 
	.byte	W12
@ 065   ----------------------------------------
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 , v052
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N18   , En3 
	.byte	W24
@ 066   ----------------------------------------
	.byte	W12
	.byte		N09   , Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N21   , An3 
	.byte	W36
	.byte		N09   , Fs3 
	.byte	W12
@ 067   ----------------------------------------
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N21   , En3 
	.byte	W24
@ 068   ----------------------------------------
	.byte	W12
	.byte		N09   , Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W36
	.byte		N09   , Fs3 
	.byte	W12
@ 069   ----------------------------------------
	.byte		N09   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Bn2 , v064
	.byte	W24
@ 070   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte	W96
@ 071   ----------------------------------------
	.byte	W06
	.byte		EOT   
	.byte	W06
	.byte		N36   , Gs3 
	.byte	W36
	.byte		N24   , An3 
	.byte	W24
	.byte		        En4 
	.byte	W24
@ 072   ----------------------------------------
	.byte		N96   , Cs4 
	.byte	W96
@ 073   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 074   ----------------------------------------
	.byte		N96   , Fs3 
	.byte	W96
@ 075   ----------------------------------------
	.byte	W09
	.byte		N36   , Gs3 
	.byte	W36
	.byte	W03
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
@ 076   ----------------------------------------
	.byte		TIE   , Cs3 
	.byte	W96
@ 077   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W24
	.byte		N24   , Cn3 , v068
	.byte	W24
@ 078   ----------------------------------------
	.byte		TIE   , Gn3 
	.byte	W96
@ 079   ----------------------------------------
	.byte	W06
	.byte		EOT   
	.byte	W06
	.byte		N36   , An3 
	.byte	W36
	.byte		N24   , As3 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
@ 080   ----------------------------------------
	.byte		N96   , Dn4 
	.byte	W96
@ 081   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N12   , As3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 082   ----------------------------------------
	.byte		N96   , Gn3 
	.byte	W96
@ 083   ----------------------------------------
	.byte	W09
	.byte		N36   , An3 
	.byte	W36
	.byte	W03
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
@ 084   ----------------------------------------
	.byte		TIE   , Dn3 
	.byte	W96
@ 085   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
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
	.byte		N96   , Dn3 , v072
	.byte	W96
@ 103   ----------------------------------------
	.byte		        En3 
	.byte	W96
@ 104   ----------------------------------------
	.byte		        An3 
	.byte	W96
@ 105   ----------------------------------------
	.byte		        Bn3 
	.byte	W96
@ 106   ----------------------------------------
	.byte		N36   , Fs3 
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		N24   , An3 
	.byte	W24
@ 107   ----------------------------------------
	.byte		N36   , En3 
	.byte	W36
	.byte		N60   , Cs3 
	.byte	W60
@ 108   ----------------------------------------
	.byte		N36   , Dn3 
	.byte	W36
	.byte		        En3 
	.byte	W36
	.byte		N24   , Fs3 
	.byte	W24
@ 109   ----------------------------------------
	.byte		N36   , An3 
	.byte	W36
	.byte		N48   , Gs3 
	.byte	W48
	.byte		N06   , En3 , v080
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 110   ----------------------------------------
	.byte		N72   , Fs3 
	.byte	W72
	.byte		N24   , An3 
	.byte	W24
@ 111   ----------------------------------------
	.byte		N36   , Gs3 
	.byte	W36
	.byte		        En3 
	.byte	W36
	.byte		N24   , Fs3 
	.byte	W24
@ 112   ----------------------------------------
	.byte		N72   , Cs3 
	.byte	W72
	.byte		N24   , Bn2 
	.byte	W24
@ 113   ----------------------------------------
	.byte		N48   , Cs3 
	.byte	W48
	.byte		N36   , Bn2 , v084
	.byte	W36
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 114   ----------------------------------------
mus_zinnia_champion_grand_epic_3_114:
	.byte		N72   , Fs3 , v084
	.byte	W72
	.byte		N24   , Cs3 
	.byte	W24
	.byte	PEND
@ 115   ----------------------------------------
	.byte		N36   , Bn2 
	.byte	W36
	.byte		        An2 
	.byte	W36
	.byte		N24   , Gs2 
	.byte	W24
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_3_114
@ 117   ----------------------------------------
	.byte		N24   , Bn2 , v084
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
@ 118   ----------------------------------------
	.byte		N72   , Fs3 
	.byte	W72
	.byte		N24   , An3 
	.byte	W24
@ 119   ----------------------------------------
	.byte		        Gs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
@ 120   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte	W96
@ 121   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 122   ----------------------------------------
	.byte		N09   , Fs3 , v064
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N09   , An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 123   ----------------------------------------
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N21   , Cs3 
	.byte	W24
@ 124   ----------------------------------------
mus_zinnia_champion_grand_epic_3_124:
	.byte	W12
	.byte		N09   , Cs3 , v064
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N21   , An3 
	.byte	W36
	.byte		N09   , Fs3 
	.byte	W12
	.byte	PEND
@ 125   ----------------------------------------
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N18   , En3 
	.byte	W24
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_3_124
@ 127   ----------------------------------------
	.byte		N09   , En3 , v064
	.byte	W12
	.byte		        Gn3 , v060
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N21   , En3 
	.byte	W24
@ 128   ----------------------------------------
	.byte	W12
	.byte		N09   , Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W36
	.byte		N09   , Fs3 
	.byte	W12
@ 129   ----------------------------------------
	.byte		N09   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Bn2 , v076
	.byte	W24
@ 130   ----------------------------------------
	.byte	W07
	.byte	GOTO
	 .word	mus_zinnia_champion_grand_epic_3_B1
mus_zinnia_champion_grand_epic_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_zinnia_champion_grand_epic_4:
	.byte	KEYSH , mus_zinnia_champion_grand_epic_key+0
mus_zinnia_champion_grand_epic_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 86*mus_zinnia_champion_grand_epic_mvl/mxv
	.byte		PAN   , c_v-14
	.byte		N06   , Cs4 , v040
	.byte		N06   , Fn4 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte		N12   , Fs4 , v052
	.byte	W06
	.byte		N06   , Fs4 , v040
	.byte	W06
	.byte		        Gs3 , v052
	.byte		N06   , En4 , v040
	.byte	W06
	.byte		        An3 , v052
	.byte		N06   , Dn4 , v040
	.byte	W06
@ 001   ----------------------------------------
	.byte		N78   , Gs3 , v052
	.byte		N24   , Cs4 
	.byte	W06
	.byte		N06   , En4 , v040
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Gs4 
	.byte	W06
@ 002   ----------------------------------------
	.byte		N96   , Cs3 
	.byte		N96   , Fs3 
	.byte	W96
@ 003   ----------------------------------------
	.byte		        En3 
	.byte		N96   , Gs3 
	.byte	W96
@ 004   ----------------------------------------
	.byte		        En3 
	.byte		N96   , An3 
	.byte	W96
@ 005   ----------------------------------------
	.byte		        En3 
	.byte		N96   , Bn3 
	.byte	W96
@ 006   ----------------------------------------
	.byte		        En3 
	.byte		N96   , Cs4 
	.byte	W96
@ 007   ----------------------------------------
	.byte		        An3 
	.byte		N96   , Cs4 
	.byte	W96
@ 008   ----------------------------------------
	.byte		        An3 
	.byte		N96   , Dn4 
	.byte	W96
@ 009   ----------------------------------------
	.byte		        An3 
	.byte		N96   , Cs4 
	.byte	W96
@ 010   ----------------------------------------
mus_zinnia_champion_grand_epic_4_010:
	.byte		N12   , Fs2 , v044
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v040
	.byte	W36
	.byte		        Fs2 , v044
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v040
	.byte	W36
	.byte		        Fs2 , v044
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v040
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
mus_zinnia_champion_grand_epic_4_011:
	.byte	W12
	.byte		N12   , An2 , v044
	.byte		N12   , An3 
	.byte		N12   , Fs4 , v040
	.byte	W36
	.byte		        Gs2 , v044
	.byte		N12   , Gs3 
	.byte		N12   , Fs4 , v040
	.byte	W24
	.byte		N24   , Gn2 , v044
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 , v040
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_011
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_010
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_011
@ 018   ----------------------------------------
mus_zinnia_champion_grand_epic_4_018:
	.byte		N12   , Gn2 , v044
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 , v040
	.byte	W36
	.byte		        Gn2 , v044
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 , v040
	.byte	W36
	.byte		        Gn2 , v044
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 , v040
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
mus_zinnia_champion_grand_epic_4_019:
	.byte	W12
	.byte		N12   , As2 , v044
	.byte		N12   , As3 
	.byte		N12   , Gn4 , v040
	.byte	W36
	.byte		        An2 , v044
	.byte		N12   , An3 
	.byte		N12   , Gn4 , v040
	.byte	W24
	.byte		N24   , Gs2 , v044
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 , v040
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_018
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_019
@ 024   ----------------------------------------
mus_zinnia_champion_grand_epic_4_024:
	.byte		N12   , Gn2 , v048
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 , v040
	.byte	W36
	.byte		        Gn2 , v048
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 , v040
	.byte	W36
	.byte		        Gn2 , v048
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 , v040
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
mus_zinnia_champion_grand_epic_4_025:
	.byte	W12
	.byte		N12   , As2 , v048
	.byte		N12   , As3 
	.byte		N12   , Gn4 , v040
	.byte	W36
	.byte		        An2 , v048
	.byte		N12   , An3 
	.byte		N12   , Gn4 , v040
	.byte	W24
	.byte		N24   , Gs2 , v048
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 , v040
	.byte	W24
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_024
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_025
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_024
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_025
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_024
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_024
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_025
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_024
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_025
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_024
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_025
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_024
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_025
@ 042   ----------------------------------------
	.byte		N96   , An2 , v044
	.byte		N96   , Fs3 , v040
	.byte		N96   , Dn4 
	.byte	W96
@ 043   ----------------------------------------
	.byte		        Bn2 , v044
	.byte		N96   , Gs3 , v040
	.byte		N96   , En4 
	.byte	W96
@ 044   ----------------------------------------
	.byte		        Cs3 , v044
	.byte		N96   , An3 , v040
	.byte		N96   , Fs4 
	.byte	W96
@ 045   ----------------------------------------
	.byte		        Dn3 , v044
	.byte		N96   , Bn3 , v040
	.byte		N96   , Gn4 
	.byte	W96
@ 046   ----------------------------------------
	.byte		        Dn3 , v044
	.byte		N96   , Dn4 , v040
	.byte		N96   , Fs4 
	.byte	W96
@ 047   ----------------------------------------
	.byte		        Cs3 , v044
	.byte		N96   , Cs4 , v040
	.byte		N96   , En4 
	.byte	W92
	.byte	W01
	.byte		        Dn3 
	.byte	W03
@ 048   ----------------------------------------
	.byte		        Bn2 , v044
	.byte		N96   , Bn3 , v040
	.byte		N96   , Dn4 
	.byte	W96
@ 049   ----------------------------------------
	.byte		        Gs2 , v044
	.byte		N96   , Gs3 , v040
	.byte		N96   , Cs4 
	.byte	W96
@ 050   ----------------------------------------
	.byte		N12   , An2 , v048
	.byte		N12   , Fs3 , v040
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        An2 , v048
	.byte		N12   , Fs3 , v040
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        An2 , v048
	.byte		N12   , Fs3 , v040
	.byte		N12   , Fs4 
	.byte	W24
@ 051   ----------------------------------------
	.byte	W12
	.byte		        Bn2 , v048
	.byte		N12   , Gs3 , v040
	.byte		N12   , Gs4 
	.byte	W36
	.byte		        Bn2 , v048
	.byte		N12   , Gs3 , v040
	.byte		N12   , Gs4 
	.byte	W24
	.byte		        Bn2 , v052
	.byte		N12   , Gs3 , v040
	.byte		N12   , Gs4 
	.byte	W24
@ 052   ----------------------------------------
	.byte		        Cs3 , v052
	.byte		N12   , An3 , v040
	.byte		N12   , An4 
	.byte	W36
	.byte		        Cs3 , v052
	.byte		N12   , An3 , v040
	.byte		N12   , An4 
	.byte	W36
	.byte		        Cs3 , v052
	.byte		N12   , An3 , v040
	.byte		N12   , An4 
	.byte	W24
@ 053   ----------------------------------------
	.byte	W12
	.byte		        Dn3 , v052
	.byte		N12   , Bn3 , v040
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Dn3 , v052
	.byte		N12   , Bn3 , v040
	.byte		N12   , Bn4 
	.byte	W24
	.byte		        Dn3 , v052
	.byte		N12   , Bn3 , v040
	.byte		N12   , Bn4 
	.byte	W24
@ 054   ----------------------------------------
mus_zinnia_champion_grand_epic_4_054:
	.byte		N12   , Dn3 , v052
	.byte		N12   , An3 , v040
	.byte		N12   , An4 
	.byte	W36
	.byte		        Dn3 , v052
	.byte		N12   , An3 , v040
	.byte		N12   , An4 
	.byte	W36
	.byte		        Dn3 , v052
	.byte		N12   , An3 , v040
	.byte		N12   , An4 
	.byte	W24
	.byte	PEND
@ 055   ----------------------------------------
mus_zinnia_champion_grand_epic_4_055:
	.byte	W12
	.byte		N12   , Cs3 , v052
	.byte		N12   , Gs3 , v040
	.byte		N12   , Gs4 
	.byte	W36
	.byte		        Cs3 , v052
	.byte		N12   , Gs3 , v040
	.byte		N12   , Gs4 
	.byte	W24
	.byte		        Cs3 , v052
	.byte		N12   , Gs3 , v040
	.byte		N12   , Gs4 
	.byte	W24
	.byte	PEND
@ 056   ----------------------------------------
	.byte		        Bn2 , v052
	.byte		N12   , Fs3 , v040
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Bn2 , v052
	.byte		N12   , Fs3 , v040
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Bn2 , v052
	.byte		N12   , Fs3 , v040
	.byte		N12   , Fs4 
	.byte	W24
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_055
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_054
@ 059   ----------------------------------------
	.byte	W12
	.byte		N12   , En3 , v052
	.byte		N12   , Bn3 , v040
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        En3 , v052
	.byte		N12   , Bn3 , v040
	.byte		N12   , Bn4 
	.byte	W24
	.byte		        En3 , v052
	.byte		N12   , Bn3 , v040
	.byte		N12   , Bn4 
	.byte	W24
@ 060   ----------------------------------------
mus_zinnia_champion_grand_epic_4_060:
	.byte		N12   , Cs3 , v052
	.byte		N12   , Bn3 , v040
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Cs3 , v052
	.byte		N12   , Bn3 , v040
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Cs3 , v052
	.byte		N12   , Bn3 , v040
	.byte		N12   , Bn4 
	.byte	W24
	.byte	PEND
@ 061   ----------------------------------------
	.byte	W12
	.byte		        Cs3 , v052
	.byte		N12   , Bn3 , v040
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Cs3 , v052
	.byte		N12   , Bn3 , v040
	.byte		N12   , Bn4 
	.byte	W24
	.byte		        Cs3 , v052
	.byte		N12   , Bn3 , v040
	.byte		N12   , Bn4 
	.byte	W24
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_060
@ 063   ----------------------------------------
	.byte	W12
	.byte		N12   , Cs3 , v052
	.byte		N12   , Bn3 , v040
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Cs3 , v052
	.byte		N12   , Bn3 , v044
	.byte		N12   , Bn4 
	.byte	W24
	.byte		        Cs3 , v052
	.byte		N12   , Bn3 , v044
	.byte		N12   , Bn4 
	.byte	W24
@ 064   ----------------------------------------
	.byte		TIE   , An2 , v040
	.byte		TIE   , En3 
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 066   ----------------------------------------
	.byte		TIE   
	.byte		TIE   , Bn3 
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
	.byte		EOT   , An2 
	.byte		        En3 
	.byte		        Bn3 
@ 068   ----------------------------------------
	.byte		N96   , En3 
	.byte		N96   , Bn3 
	.byte		N96   , En4 
	.byte	W96
@ 069   ----------------------------------------
	.byte		N24   , En3 
	.byte		N96   , En4 
	.byte		N48   , Gs4 
	.byte	W24
	.byte		N24   , En3 , v052
	.byte	W24
	.byte		        Fs3 , v040
	.byte		N24   , An4 
	.byte	W24
	.byte		        Gs3 
	.byte		N24   , Bn4 
	.byte	W24
@ 070   ----------------------------------------
mus_zinnia_champion_grand_epic_4_070:
	.byte		N12   , Fs2 , v052
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v044
	.byte	W36
	.byte		        Fs2 , v052
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v044
	.byte	W36
	.byte		        Fs2 , v052
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 , v044
	.byte	W24
	.byte	PEND
@ 071   ----------------------------------------
mus_zinnia_champion_grand_epic_4_071:
	.byte	W12
	.byte		N12   , An2 , v052
	.byte		N12   , An3 
	.byte		N12   , Fs4 , v044
	.byte	W36
	.byte		        Gs2 , v052
	.byte		N12   , Gs3 
	.byte		N12   , Fs4 , v044
	.byte	W24
	.byte		N24   , Gn2 , v052
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 , v044
	.byte	W24
	.byte	PEND
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_070
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_071
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_070
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_071
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_070
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_071
@ 078   ----------------------------------------
	.byte		N12   , Gn2 , v052
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 , v044
	.byte	W36
	.byte		        Gn2 , v052
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 , v044
	.byte	W36
	.byte		        Gn2 , v052
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 , v044
	.byte	W24
@ 079   ----------------------------------------
	.byte	W12
	.byte		        As2 , v052
	.byte		N12   , As3 
	.byte		N12   , Gn4 , v044
	.byte	W36
	.byte		        An2 , v056
	.byte		N12   , An3 
	.byte		N12   , Gn4 , v044
	.byte	W24
	.byte		N24   , Gs2 , v056
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 , v044
	.byte	W24
@ 080   ----------------------------------------
mus_zinnia_champion_grand_epic_4_080:
	.byte		N12   , Gn2 , v056
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 , v044
	.byte	W36
	.byte		        Gn2 , v056
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 , v044
	.byte	W36
	.byte		        Gn2 , v056
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 , v044
	.byte	W24
	.byte	PEND
@ 081   ----------------------------------------
mus_zinnia_champion_grand_epic_4_081:
	.byte	W12
	.byte		N12   , As2 , v056
	.byte		N12   , As3 
	.byte		N12   , Gn4 , v044
	.byte	W36
	.byte		        An2 , v056
	.byte		N12   , An3 
	.byte		N12   , Gn4 , v044
	.byte	W24
	.byte		N24   , Gs2 , v056
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 , v044
	.byte	W24
	.byte	PEND
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_080
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_081
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_080
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_081
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_080
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_081
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_080
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_081
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_080
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_081
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_080
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_081
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_080
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_081
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_080
@ 097   ----------------------------------------
	.byte	W12
	.byte		N12   , As2 , v056
	.byte		N12   , As3 
	.byte		N12   , Gn4 , v044
	.byte	W36
	.byte		        An2 , v056
	.byte		N12   , An3 
	.byte		N12   , Gn4 , v044
	.byte	W24
	.byte		N24   , Gs2 , v056
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 , v048
	.byte	W24
@ 098   ----------------------------------------
mus_zinnia_champion_grand_epic_4_098:
	.byte		N12   , Gn2 , v056
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 , v048
	.byte	W36
	.byte		        Gn2 , v056
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 , v048
	.byte	W36
	.byte		        Gn2 , v056
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 , v048
	.byte	W24
	.byte	PEND
@ 099   ----------------------------------------
mus_zinnia_champion_grand_epic_4_099:
	.byte	W12
	.byte		N12   , As2 , v056
	.byte		N12   , As3 
	.byte		N12   , Gn4 , v048
	.byte	W36
	.byte		        An2 , v056
	.byte		N12   , An3 
	.byte		N12   , Gn4 , v048
	.byte	W24
	.byte		N24   , Gs2 , v056
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 , v048
	.byte	W24
	.byte	PEND
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_098
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_099
@ 102   ----------------------------------------
	.byte		N96   , An2 , v052
	.byte		N96   , Fs3 , v040
	.byte		N96   , Dn4 
	.byte	W96
@ 103   ----------------------------------------
	.byte		        Bn2 , v052
	.byte		N96   , Gs3 , v040
	.byte		N96   , En4 
	.byte	W96
@ 104   ----------------------------------------
	.byte		        Cs3 , v052
	.byte		N96   , An3 , v040
	.byte		N96   , Fs4 
	.byte	W96
@ 105   ----------------------------------------
	.byte		        Dn3 , v052
	.byte		N96   , Bn3 , v040
	.byte		N96   , Gn4 
	.byte	W96
@ 106   ----------------------------------------
	.byte		        Dn3 , v048
	.byte		N96   , Dn4 , v040
	.byte		N96   , Fs4 
	.byte	W96
@ 107   ----------------------------------------
	.byte		        Cs3 , v052
	.byte		N96   , Cs4 , v040
	.byte		N96   , En4 
	.byte	W92
	.byte	W01
	.byte		        Dn3 
	.byte	W03
@ 108   ----------------------------------------
	.byte		        Bn2 , v052
	.byte		N96   , Bn3 , v040
	.byte		N96   , Dn4 
	.byte	W96
@ 109   ----------------------------------------
	.byte		        Gs2 , v052
	.byte		N96   , Gs3 , v040
	.byte		N96   , Cs4 
	.byte	W96
@ 110   ----------------------------------------
	.byte		N12   , An2 , v060
	.byte		N12   , Fs3 , v048
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        An2 , v060
	.byte		N12   , Fs3 , v048
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        An2 , v060
	.byte		N12   , Fs3 , v048
	.byte		N12   , Fs4 
	.byte	W24
@ 111   ----------------------------------------
	.byte	W12
	.byte		        Bn2 , v060
	.byte		N12   , Gs3 , v048
	.byte		N12   , Gs4 
	.byte	W36
	.byte		        Bn2 , v060
	.byte		N12   , Gs3 , v048
	.byte		N12   , Gs4 
	.byte	W24
	.byte		        Bn2 , v060
	.byte		N12   , Gs3 , v048
	.byte		N12   , Gs4 
	.byte	W24
@ 112   ----------------------------------------
	.byte		        Cs3 , v060
	.byte		N12   , An3 , v048
	.byte		N12   , An4 
	.byte	W36
	.byte		        Cs3 , v060
	.byte		N12   , An3 , v048
	.byte		N12   , An4 
	.byte	W36
	.byte		        Cs3 , v060
	.byte		N12   , An3 , v048
	.byte		N12   , An4 
	.byte	W24
@ 113   ----------------------------------------
	.byte	W12
	.byte		        Dn3 , v060
	.byte		N12   , Bn3 , v048
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Dn3 , v060
	.byte		N12   , Bn3 , v048
	.byte		N12   , Bn4 
	.byte	W24
	.byte		        Dn3 , v060
	.byte		N12   , Bn3 , v048
	.byte		N12   , Bn4 
	.byte	W24
@ 114   ----------------------------------------
mus_zinnia_champion_grand_epic_4_114:
	.byte		N12   , Dn3 , v060
	.byte		N12   , An3 , v048
	.byte		N12   , An4 
	.byte	W36
	.byte		        Dn3 , v060
	.byte		N12   , An3 , v048
	.byte		N12   , An4 
	.byte	W36
	.byte		        Dn3 , v060
	.byte		N12   , An3 , v048
	.byte		N12   , An4 
	.byte	W24
	.byte	PEND
@ 115   ----------------------------------------
mus_zinnia_champion_grand_epic_4_115:
	.byte	W12
	.byte		N12   , Cs3 , v060
	.byte		N12   , Gs3 , v048
	.byte		N12   , Gs4 
	.byte	W36
	.byte		        Cs3 , v060
	.byte		N12   , Gs3 , v048
	.byte		N12   , Gs4 
	.byte	W24
	.byte		        Cs3 , v060
	.byte		N12   , Gs3 , v048
	.byte		N12   , Gs4 
	.byte	W24
	.byte	PEND
@ 116   ----------------------------------------
	.byte		        Bn2 , v060
	.byte		N12   , Fs3 , v048
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Bn2 , v060
	.byte		N12   , Fs3 , v048
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Bn2 , v060
	.byte		N12   , Fs3 , v048
	.byte		N12   , Fs4 
	.byte	W24
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_115
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_114
@ 119   ----------------------------------------
	.byte	W12
	.byte		N12   , En3 , v060
	.byte		N12   , Bn3 , v048
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        En3 , v060
	.byte		N12   , Bn3 , v048
	.byte		N12   , Bn4 
	.byte	W24
	.byte		        En3 , v060
	.byte		N12   , Bn3 , v048
	.byte		N12   , Bn4 
	.byte	W24
@ 120   ----------------------------------------
mus_zinnia_champion_grand_epic_4_120:
	.byte		N12   , Cs3 , v060
	.byte		N12   , Bn3 , v048
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Cs3 , v060
	.byte		N12   , Bn3 , v048
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Cs3 , v060
	.byte		N12   , Bn3 , v048
	.byte		N12   , Bn4 
	.byte	W24
	.byte	PEND
@ 121   ----------------------------------------
mus_zinnia_champion_grand_epic_4_121:
	.byte	W12
	.byte		N12   , Cs3 , v060
	.byte		N12   , Bn3 , v048
	.byte		N12   , Bn4 
	.byte	W36
	.byte		        Cs3 , v060
	.byte		N12   , Bn3 , v048
	.byte		N12   , Bn4 
	.byte	W24
	.byte		        Cs3 , v060
	.byte		N12   , Bn3 , v048
	.byte		N12   , Bn4 
	.byte	W24
	.byte	PEND
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_120
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_4_121
@ 124   ----------------------------------------
	.byte		TIE   , An2 , v044
	.byte		TIE   , En3 
	.byte	W96
@ 125   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 126   ----------------------------------------
	.byte		TIE   
	.byte		TIE   , Bn3 
	.byte	W96
@ 127   ----------------------------------------
	.byte	W96
	.byte		EOT   , An2 
	.byte		        En3 
	.byte		        Bn3 
@ 128   ----------------------------------------
	.byte		N96   , En3 
	.byte		N96   , Bn3 
	.byte		N96   , En4 
	.byte	W96
@ 129   ----------------------------------------
	.byte		N24   , En3 
	.byte		N96   , En4 
	.byte		N48   , Gs4 
	.byte	W24
	.byte		N24   , En3 , v060
	.byte	W24
	.byte		        Fs3 , v044
	.byte		N24   , An4 
	.byte	W24
	.byte		        Gs3 
	.byte		N24   , Bn4 
	.byte	W24
@ 130   ----------------------------------------
	.byte	W07
	.byte	GOTO
	 .word	mus_zinnia_champion_grand_epic_4_B1
mus_zinnia_champion_grand_epic_4_B2:
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_zinnia_champion_grand_epic_5:
	.byte	KEYSH , mus_zinnia_champion_grand_epic_key+0
mus_zinnia_champion_grand_epic_5_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 88*mus_zinnia_champion_grand_epic_mvl/mxv
	.byte		PAN   , c_v-2
	.byte		N96   , Cs1 , v064
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
	.byte		N48   , En1 
	.byte	W48
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
mus_zinnia_champion_grand_epic_5_006:
	.byte		N12   , Fs1 , v064
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_006
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_006
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_006
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_006
@ 011   ----------------------------------------
mus_zinnia_champion_grand_epic_5_011:
	.byte		N12   , Fs1 , v064
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_006
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_011
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_006
@ 017   ----------------------------------------
	.byte		N12   , Fs1 , v064
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Dn1 
	.byte	W24
@ 018   ----------------------------------------
	.byte		        Gn1 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
@ 019   ----------------------------------------
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Gs1 
	.byte	W24
@ 020   ----------------------------------------
	.byte		        Gn1 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Gn1 , v068
	.byte	W24
	.byte		N12   
	.byte	W24
@ 021   ----------------------------------------
mus_zinnia_champion_grand_epic_5_021:
	.byte		N12   , Gn1 , v068
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
mus_zinnia_champion_grand_epic_5_022:
	.byte		N12   , Gn1 , v068
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_021
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_022
@ 025   ----------------------------------------
mus_zinnia_champion_grand_epic_5_025:
	.byte		N12   , Gn1 , v068
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_022
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_021
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_022
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_021
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_022
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_021
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_022
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_025
@ 034   ----------------------------------------
mus_zinnia_champion_grand_epic_5_034:
	.byte		N12   , Ds1 , v068
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_034
@ 036   ----------------------------------------
	.byte		N12   , Ds1 , v068
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 037   ----------------------------------------
mus_zinnia_champion_grand_epic_5_037:
	.byte	W12
	.byte		N12   , Cn1 , v068
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_037
@ 039   ----------------------------------------
mus_zinnia_champion_grand_epic_5_039:
	.byte	W12
	.byte		N12   , Dn1 , v068
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_039
@ 041   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn1 , v068
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N48   
	.byte	W48
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte		N96   , En1 , v072
	.byte	W96
@ 044   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 045   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 046   ----------------------------------------
	.byte		N36   , Dn1 
	.byte	W36
	.byte		N06   , Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N48   
	.byte	W48
@ 047   ----------------------------------------
	.byte		        Cs1 
	.byte	W48
	.byte		N24   , An1 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 048   ----------------------------------------
	.byte		N48   , Bn1 
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 049   ----------------------------------------
	.byte		        Cs1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 050   ----------------------------------------
mus_zinnia_champion_grand_epic_5_050:
	.byte		N12   , Dn1 , v072
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
@ 051   ----------------------------------------
mus_zinnia_champion_grand_epic_5_051:
	.byte		N12   , En1 , v072
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
@ 052   ----------------------------------------
mus_zinnia_champion_grand_epic_5_052:
	.byte		N12   , Fs1 , v072
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
@ 053   ----------------------------------------
	.byte		        Gn1 
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
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_050
@ 055   ----------------------------------------
mus_zinnia_champion_grand_epic_5_055:
	.byte		N12   , Cs1 , v072
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
@ 056   ----------------------------------------
	.byte		        Bn1 
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
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_055
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_050
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_051
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_052
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_052
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_052
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_052
@ 064   ----------------------------------------
	.byte		N12   , Fs1 , v072
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
	.byte		        Fs1 , v076
	.byte	W12
@ 065   ----------------------------------------
mus_zinnia_champion_grand_epic_5_065:
	.byte		N12   , Fs1 , v076
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
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_065
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_065
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_065
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_065
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_065
@ 071   ----------------------------------------
mus_zinnia_champion_grand_epic_5_071:
	.byte		N12   , Fs1 , v076
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
	.byte		        Gn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_065
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_071
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_065
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_071
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_065
@ 077   ----------------------------------------
	.byte		N12   , Fs1 , v076
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
	.byte		        Dn1 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 078   ----------------------------------------
mus_zinnia_champion_grand_epic_5_078:
	.byte		N12   , Gn1 , v076
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
@ 079   ----------------------------------------
mus_zinnia_champion_grand_epic_5_079:
	.byte		N12   , Gn1 , v076
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
	.byte		        Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_078
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_079
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_078
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_079
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_078
@ 085   ----------------------------------------
	.byte		N12   , Gn1 , v076
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
	.byte		        Gs1 
	.byte	W12
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_078
@ 087   ----------------------------------------
	.byte		N12   , Gn1 , v076
	.byte	W12
	.byte		        Gn1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 088   ----------------------------------------
mus_zinnia_champion_grand_epic_5_088:
	.byte		N12   , Gn1 , v080
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
@ 089   ----------------------------------------
mus_zinnia_champion_grand_epic_5_089:
	.byte		N12   , Gn1 , v080
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
	.byte		        Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_088
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_089
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_088
@ 093   ----------------------------------------
	.byte		N12   , Gn1 , v080
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
	.byte		        Gn1 , v088
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 094   ----------------------------------------
mus_zinnia_champion_grand_epic_5_094:
	.byte		N12   , Ds1 , v088
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
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_094
@ 096   ----------------------------------------
	.byte		N12   , Ds1 , v088
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
	.byte		        Fs1 
	.byte		N12   , Gn1 
	.byte	W12
@ 097   ----------------------------------------
mus_zinnia_champion_grand_epic_5_097:
	.byte		N12   , Cn1 , v088
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
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_097
@ 099   ----------------------------------------
mus_zinnia_champion_grand_epic_5_099:
	.byte		N12   , Dn1 , v088
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
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_099
@ 101   ----------------------------------------
	.byte		N12   , Dn1 , v088
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N48   
	.byte	W48
@ 102   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 103   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 104   ----------------------------------------
	.byte		        Fs1 
	.byte	W96
@ 105   ----------------------------------------
	.byte		        Gn1 
	.byte	W96
@ 106   ----------------------------------------
	.byte		N36   , Dn1 
	.byte	W36
	.byte		N06   , Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N48   
	.byte	W48
@ 107   ----------------------------------------
	.byte		        Cs1 
	.byte	W48
	.byte		N24   , An1 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 108   ----------------------------------------
	.byte		N48   , Bn1 
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 109   ----------------------------------------
	.byte		        Cs1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_099
@ 111   ----------------------------------------
mus_zinnia_champion_grand_epic_5_111:
	.byte		N12   , En1 , v088
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
@ 112   ----------------------------------------
mus_zinnia_champion_grand_epic_5_112:
	.byte		N12   , Fs1 , v088
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
@ 113   ----------------------------------------
	.byte		        Gn1 
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
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_099
@ 115   ----------------------------------------
mus_zinnia_champion_grand_epic_5_115:
	.byte		N12   , Cs1 , v088
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
@ 116   ----------------------------------------
	.byte		        Bn1 
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
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_115
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_099
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_111
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_112
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_112
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_112
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_112
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_112
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_112
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_112
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_112
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_112
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_5_112
@ 130   ----------------------------------------
	.byte	W07
	.byte	GOTO
	 .word	mus_zinnia_champion_grand_epic_5_B1
mus_zinnia_champion_grand_epic_5_B2:
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_zinnia_champion_grand_epic_6:
	.byte	KEYSH , mus_zinnia_champion_grand_epic_key+0
mus_zinnia_champion_grand_epic_6_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 4
	.byte		VOL   , 100*mus_zinnia_champion_grand_epic_mvl/mxv
	.byte		PAN   , c_v+6
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
	.byte	W72
	.byte		N24   , Gn2 , v056
	.byte		N24   , As2 
	.byte	W24
@ 014   ----------------------------------------
mus_zinnia_champion_grand_epic_6_014:
	.byte		N12   , Fs2 , v056
	.byte		N12   , An2 
	.byte	W36
	.byte		        Fs2 
	.byte		N12   , An2 
	.byte	W36
	.byte		        Fs2 
	.byte		N12   , An2 
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
mus_zinnia_champion_grand_epic_6_015:
	.byte	W12
	.byte		N12   , An2 , v056
	.byte		N12   , Cs3 
	.byte	W36
	.byte		        Gs2 
	.byte		N12   , Bn2 
	.byte	W24
	.byte		N24   , Gn2 
	.byte		N24   , As2 
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_6_014
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_6_015
@ 018   ----------------------------------------
	.byte		N12   , Gn2 , v056
	.byte		N96   , Dn4 
	.byte	W36
	.byte		N12   , Gn2 
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W24
@ 019   ----------------------------------------
	.byte		N48   , Cn3 
	.byte		N48   , Cn4 
	.byte	W12
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W36
	.byte		        An2 
	.byte		N32   , Fn3 
	.byte	W24
	.byte		N24   , Gs2 
	.byte		N24   , Bn2 
	.byte	W12
	.byte		N06   , En3 
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte	W06
@ 020   ----------------------------------------
	.byte		N12   , Gn2 
	.byte		N72   , Dn4 
	.byte	W36
	.byte		N12   , Gn2 
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 021   ----------------------------------------
	.byte		N36   , As3 
	.byte	W12
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W24
	.byte		N36   , An3 
	.byte	W12
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte	W24
	.byte		N24   , Gs2 
	.byte		N24   , Fn3 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N12   , Gn2 
	.byte		N84   , Gn3 
	.byte	W36
	.byte		N12   , Gn2 
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Dn4 
	.byte	W06
@ 023   ----------------------------------------
	.byte		N48   , Cn3 
	.byte		N48   , Cn4 
	.byte	W12
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W36
	.byte		        An2 
	.byte		N48   , Fn3 
	.byte	W24
	.byte		N24   , Gs2 
	.byte		N24   , Bn2 
	.byte	W24
@ 024   ----------------------------------------
	.byte		N12   , Gn2 
	.byte		TIE   , Dn4 
	.byte	W36
	.byte		N12   , Gn2 
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W24
@ 025   ----------------------------------------
mus_zinnia_champion_grand_epic_6_025:
	.byte	W12
	.byte		N12   , As2 , v056
	.byte		N36   , Dn3 
	.byte	W36
	.byte	PEND
	.byte		EOT   , Dn4 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte	W24
	.byte		N24   , Gs2 
	.byte		N24   , Bn2 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 026   ----------------------------------------
	.byte		N12   , Gn2 
	.byte		N96   , As3 
	.byte	W36
	.byte		N12   , Gn2 
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W24
@ 027   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , An3 
	.byte	W12
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W36
	.byte		        An2 
	.byte		N48   , Cn4 
	.byte	W24
	.byte		N24   , Gs2 
	.byte		N24   , Bn2 
	.byte	W24
@ 028   ----------------------------------------
	.byte		N12   , Gn2 
	.byte		N48   , Bn3 
	.byte	W36
	.byte		N12   , Gn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N48   , En3 
	.byte		N48   , En4 
	.byte	W24
	.byte		N12   , Gn2 
	.byte		N12   , As2 
	.byte	W24
@ 029   ----------------------------------------
	.byte		N48   , Ds3 
	.byte		N48   , Ds4 
	.byte	W12
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W36
	.byte		        An2 
	.byte		N48   , Bn3 
	.byte	W24
	.byte		N24   , Gs2 
	.byte		N24   , Bn2 
	.byte	W24
@ 030   ----------------------------------------
	.byte		N12   , Gn2 
	.byte		N96   , As3 
	.byte	W36
	.byte		N12   , Gn2 
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte	W06
@ 031   ----------------------------------------
	.byte		N24   , Dn3 
	.byte		N48   , Dn4 
	.byte	W12
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte	W36
	.byte		        An2 
	.byte		N48   , As3 
	.byte	W24
	.byte		N24   , Gs2 
	.byte		N24   , Bn2 
	.byte	W24
@ 032   ----------------------------------------
	.byte		N12   , Gn2 
	.byte		TIE   , Dn4 , v064
	.byte	W36
	.byte		N12   , Gn2 , v056
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W24
@ 033   ----------------------------------------
mus_zinnia_champion_grand_epic_6_033:
	.byte	W12
	.byte		N12   , As2 , v056
	.byte		N32   , Dn3 
	.byte	W36
	.byte	PEND
	.byte		EOT   , Dn4 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte	W24
	.byte		N24   , Gs2 
	.byte		N24   , Bn2 
	.byte	W24
@ 034   ----------------------------------------
	.byte		N12   , Gn2 
	.byte		N96   , As3 , v064
	.byte	W36
	.byte		N12   , Gn2 , v056
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W24
@ 035   ----------------------------------------
	.byte		N48   , An3 , v064
	.byte	W12
	.byte		N12   , As2 , v056
	.byte		N12   , Dn3 
	.byte	W36
	.byte		        An2 
	.byte		N24   , As3 , v064
	.byte	W24
	.byte		        Gs2 , v056
	.byte		N24   , Cn4 , v064
	.byte	W24
@ 036   ----------------------------------------
	.byte		N12   , Gn2 , v056
	.byte		N06   , An3 , v064
	.byte	W06
	.byte		N78   , As3 
	.byte	W30
	.byte		N12   , Gn2 , v056
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , An3 , v064
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 037   ----------------------------------------
	.byte		N80   , Ds3 
	.byte		N80   , Ds4 
	.byte	W12
	.byte		N12   , As2 , v056
	.byte		N12   , Dn3 
	.byte	W36
	.byte		        An2 
	.byte		N12   , Cn3 
	.byte	W24
	.byte		N24   , Gs2 
	.byte		N24   , Bn2 
	.byte	W18
	.byte		N06   , Dn3 , v064
	.byte		N06   , Dn4 
	.byte	W06
@ 038   ----------------------------------------
	.byte		N12   , Gn2 , v056
	.byte		N96   , Ds4 , v064
	.byte	W36
	.byte		N12   , Gn2 , v056
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W24
@ 039   ----------------------------------------
	.byte		N08   , Cn3 , v064
	.byte		N08   , Cn4 
	.byte	W08
	.byte		        Gn2 
	.byte		N08   , Gn3 
	.byte	W04
	.byte		N12   , As2 , v056
	.byte		N12   , Dn3 
	.byte	W04
	.byte		N08   , Cn3 , v064
	.byte		N08   , Cn4 
	.byte	W08
	.byte		        Dn3 
	.byte		N08   , Dn4 
	.byte	W08
	.byte		        Gn2 
	.byte		N08   , Gn3 
	.byte	W08
	.byte		        Dn3 
	.byte		N08   , Dn4 
	.byte	W08
	.byte		N12   , An2 , v056
	.byte		N08   , Ds4 , v064
	.byte	W08
	.byte		        Gn2 
	.byte		N08   , Gn3 
	.byte	W08
	.byte		        Ds3 
	.byte		N08   , Ds4 
	.byte	W08
	.byte		N24   , Gs2 , v056
	.byte		N08   , Ds4 , v064
	.byte	W08
	.byte		        Fn3 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
@ 040   ----------------------------------------
	.byte		N12   , Gn2 , v056
	.byte		N84   , As3 , v064
	.byte	W36
	.byte		N12   , Gn2 , v056
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Cn4 , v064
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 041   ----------------------------------------
	.byte		N96   , An3 
	.byte	W12
	.byte		N12   , As2 , v056
	.byte		N12   , Dn3 
	.byte	W36
	.byte		        An2 
	.byte		N12   , Cn3 
	.byte	W24
	.byte		N24   , Gs2 
	.byte		N24   , Bn2 
	.byte	W24
@ 042   ----------------------------------------
	.byte		N96   , Dn3 
	.byte		N80   , Fs3 
	.byte	W72
	.byte		N08   , Fs3 , v064
	.byte	W08
	.byte		        Cs3 
	.byte		N08   , Cs4 
	.byte	W08
	.byte		        Fs3 
	.byte	W08
@ 043   ----------------------------------------
	.byte		N88   , En3 , v056
	.byte		N24   , Gs3 
	.byte	W08
	.byte		N08   , Cs3 , v064
	.byte		N08   , Cs4 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		        Cs3 
	.byte		N08   , Cs4 
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        Cs3 
	.byte		N08   , Cs4 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        En4 
	.byte	W08
	.byte		        En3 
	.byte		N08   , En4 
	.byte	W08
	.byte		        Ds3 
	.byte		N08   , Ds4 
	.byte	W08
@ 044   ----------------------------------------
	.byte		N84   , En3 
	.byte		N84   , En4 
	.byte	W84
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W06
@ 045   ----------------------------------------
	.byte		N48   , Dn3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        En3 
	.byte		N48   , En4 
	.byte	W48
@ 046   ----------------------------------------
	.byte		N96   , Fs3 
	.byte		N96   , Dn4 
	.byte	W96
@ 047   ----------------------------------------
	.byte		        En3 
	.byte		N96   , En4 
	.byte	W92
	.byte	W01
	.byte		N48   , Dn3 , v056
	.byte	W03
@ 048   ----------------------------------------
	.byte		N44   , Dn3 , v064
	.byte		N64   , Dn4 , v056
	.byte	W48
	.byte		N32   , Bn3 , v068
	.byte	W08
	.byte		N08   , Dn3 
	.byte		N08   , Dn4 
	.byte	W08
	.byte		        Fs3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        Dn3 
	.byte		N08   , Dn4 
	.byte	W08
	.byte		        Fs3 
	.byte	W08
@ 049   ----------------------------------------
	.byte		N96   , Cs3 , v064
	.byte		N96   , Cs4 , v068
	.byte	W96
@ 050   ----------------------------------------
	.byte		N12   , Dn3 , v056
	.byte		N72   , Cs4 
	.byte	W36
	.byte		N12   , Dn3 
	.byte		N36   , Fs3 
	.byte	W36
	.byte		N12   , Dn3 
	.byte		N24   , En4 
	.byte	W24
@ 051   ----------------------------------------
	.byte		        Gs3 
	.byte		N36   , Ds4 
	.byte	W12
	.byte		N12   , En3 
	.byte		N12   , Gs3 
	.byte	W24
	.byte		N24   , En3 
	.byte		N36   , Bn3 
	.byte	W12
	.byte		N12   , En3 
	.byte		N12   , Gs3 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gs3 
	.byte	W24
@ 052   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , An3 
	.byte	W36
	.byte		N12   , Fs3 
	.byte		N12   , An3 
	.byte	W36
	.byte		N24   , En3 
	.byte		N12   , An3 
	.byte	W24
@ 053   ----------------------------------------
	.byte		N48   , En3 
	.byte		N24   , Gn3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Bn3 
	.byte	W36
	.byte		N48   , En3 
	.byte		N12   , Bn3 
	.byte	W24
	.byte		N24   , Gn3 
	.byte		N12   , Bn3 
	.byte	W24
@ 054   ----------------------------------------
	.byte		        Fs3 
	.byte		N72   , Dn4 
	.byte	W36
	.byte		N12   , Fs3 
	.byte		N36   , An3 
	.byte	W36
	.byte		N24   , Fs3 
	.byte		N24   , Cs4 
	.byte	W24
@ 055   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N36   , En4 
	.byte	W12
	.byte		N12   , En3 
	.byte		N12   , Gs3 
	.byte	W24
	.byte		N36   , An3 
	.byte		N36   , Dn4 
	.byte	W12
	.byte		N12   , En3 
	.byte		N12   , Gs3 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Cs4 
	.byte	W24
@ 056   ----------------------------------------
	.byte		N12   , Dn3 
	.byte		N96   , Bn3 
	.byte	W36
	.byte		N12   , Dn3 
	.byte		N48   , Fs3 
	.byte	W36
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W24
@ 057   ----------------------------------------
	.byte		N24   , Bn2 
	.byte		N24   , Gs3 
	.byte	W12
	.byte		N12   , En3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N24   , Cs3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gs3 
	.byte	W24
@ 058   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N96   , Dn4 
	.byte	W36
	.byte		N12   , Fs3 
	.byte		N12   , An3 
	.byte	W36
	.byte		        Fs3 
	.byte		N12   , An3 
	.byte	W24
@ 059   ----------------------------------------
	.byte		N24   , Gs3 
	.byte		N96   , En4 
	.byte	W12
	.byte		N12   , Gs3 
	.byte		N12   , Bn3 
	.byte	W36
	.byte		        Gs3 
	.byte		N12   , Bn3 
	.byte	W24
	.byte		        Gs3 
	.byte		N12   , Bn3 
	.byte	W24
@ 060   ----------------------------------------
	.byte		N96   , Fs3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		N48   , Bn3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W24
@ 061   ----------------------------------------
	.byte		N96   , Fs3 
	.byte	W12
	.byte		N12   , Bn3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W24
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W24
@ 062   ----------------------------------------
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W24
@ 063   ----------------------------------------
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W24
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W24
@ 064   ----------------------------------------
	.byte		TIE   , En3 
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 066   ----------------------------------------
	.byte		TIE   , Bn3 
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 068   ----------------------------------------
	.byte		N96   
	.byte		N96   , En4 
	.byte	W96
@ 069   ----------------------------------------
	.byte		N96   
	.byte		N48   , Gs4 
	.byte	W48
	.byte		N24   , An3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
@ 070   ----------------------------------------
	.byte		N12   , Fs2 , v060
	.byte		N12   , An2 
	.byte	W36
	.byte		        Fs2 
	.byte		N12   , An2 
	.byte	W36
	.byte		        Fs2 
	.byte		N12   , An2 
	.byte	W24
@ 071   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte		N12   , Cs3 
	.byte	W36
	.byte		        Gs2 
	.byte		N12   , Bn2 
	.byte	W24
	.byte		N24   , Gn2 , v056
	.byte		N24   , As2 
	.byte	W24
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_6_014
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_6_015
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_6_014
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_6_015
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_6_014
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_6_015
@ 078   ----------------------------------------
	.byte		N12   , Gn2 , v056
	.byte		N96   , Dn4 , v072
	.byte	W36
	.byte		N12   , Gn2 , v056
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W24
@ 079   ----------------------------------------
	.byte		N48   , Cn3 , v060
	.byte		N48   , Cn4 , v072
	.byte	W12
	.byte		N12   , As2 , v056
	.byte		N12   , Dn3 
	.byte	W36
	.byte		        An2 
	.byte		N32   , Fn3 , v072
	.byte	W24
	.byte		N24   , Gs2 , v056
	.byte		N24   , Bn2 
	.byte	W12
	.byte		N06   , En3 , v060
	.byte		N06   , En4 , v072
	.byte	W06
	.byte		        Ds3 , v060
	.byte		N06   , Ds4 , v072
	.byte	W06
@ 080   ----------------------------------------
	.byte		N12   , Gn2 , v056
	.byte		N72   , Dn4 , v072
	.byte	W36
	.byte		N12   , Gn2 , v056
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Gn3 , v080
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 081   ----------------------------------------
	.byte		N36   , As3 
	.byte	W12
	.byte		N12   , As2 , v056
	.byte		N12   , Dn3 
	.byte	W24
	.byte		N36   , An3 , v076
	.byte	W12
	.byte		N12   , An2 , v056
	.byte		N12   , Cn3 
	.byte	W24
	.byte		N24   , Gs2 
	.byte		N24   , Fn3 , v076
	.byte	W24
@ 082   ----------------------------------------
	.byte		N12   , Gn2 , v056
	.byte		N84   , Gn3 , v072
	.byte	W36
	.byte		N12   , Gn2 , v056
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Fs3 , v068
	.byte	W06
	.byte		        Dn3 , v060
	.byte		N06   , Dn4 , v068
	.byte	W06
@ 083   ----------------------------------------
	.byte		N48   , Cn3 , v060
	.byte		N48   , Cn4 , v068
	.byte	W12
	.byte		N12   , As2 , v056
	.byte		N12   , Dn3 
	.byte	W36
	.byte		        An2 
	.byte		N48   , Fn3 , v068
	.byte	W24
	.byte		N24   , Gs2 , v056
	.byte		N24   , Bn2 
	.byte	W24
@ 084   ----------------------------------------
	.byte		N12   , Gn2 
	.byte		TIE   , Dn4 , v068
	.byte	W36
	.byte		N12   , Gn2 , v056
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W24
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_6_025
	.byte		EOT   , Dn4 
	.byte		N12   , An2 , v056
	.byte		N12   , Cn3 
	.byte	W24
	.byte		N24   , Gs2 
	.byte		N24   , Bn2 
	.byte	W12
	.byte		N06   , Gn3 , v076
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 086   ----------------------------------------
mus_zinnia_champion_grand_epic_6_086:
	.byte		N12   , Gn2 , v056
	.byte		N96   , As3 , v076
	.byte	W36
	.byte		N12   , Gn2 , v056
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W24
	.byte	PEND
@ 087   ----------------------------------------
	.byte		N48   , Fs3 , v060
	.byte		N48   , An3 , v076
	.byte	W12
	.byte		N12   , As2 , v056
	.byte		N12   , Dn3 
	.byte	W36
	.byte		        An2 
	.byte		N48   , Cn4 , v076
	.byte	W24
	.byte		N24   , Gs2 , v056
	.byte		N24   , Bn2 
	.byte	W24
@ 088   ----------------------------------------
	.byte		N12   , Gn2 
	.byte		N48   , Bn3 , v076
	.byte	W36
	.byte		N12   , Gn2 , v056
	.byte		N12   , As2 
	.byte	W12
	.byte		N48   , En3 , v060
	.byte		N48   , En4 , v076
	.byte	W24
	.byte		N12   , Gn2 , v056
	.byte		N12   , As2 
	.byte	W24
@ 089   ----------------------------------------
	.byte		N48   , Ds3 , v076
	.byte		N48   , Ds4 
	.byte	W12
	.byte		N12   , As2 , v056
	.byte		N12   , Dn3 
	.byte	W36
	.byte		        An2 
	.byte		N48   , Bn3 , v076
	.byte	W24
	.byte		N24   , Gs2 , v056
	.byte		N24   , Bn2 
	.byte	W24
@ 090   ----------------------------------------
	.byte		N12   , Gn2 
	.byte		N96   , As3 , v076
	.byte	W36
	.byte		N12   , Gn2 , v056
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Fn3 , v076
	.byte	W06
	.byte		        Ds3 
	.byte		N06   , Ds4 
	.byte	W06
@ 091   ----------------------------------------
	.byte		N24   , Dn3 
	.byte		N48   , Dn4 
	.byte	W12
	.byte		N12   , As2 , v056
	.byte		N12   , Dn3 
	.byte	W36
	.byte		        An2 
	.byte		N48   , As3 , v060
	.byte	W24
	.byte		N24   , Gs2 , v056
	.byte		N24   , Bn2 
	.byte	W24
@ 092   ----------------------------------------
	.byte		N12   , Gn2 
	.byte		TIE   , Dn4 , v076
	.byte	W36
	.byte		N12   , Gn2 , v056
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W24
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_6_033
	.byte		EOT   , Dn4 
	.byte		N12   , An2 , v056
	.byte		N12   , Cn3 
	.byte	W24
	.byte		N24   , Gs2 
	.byte		N24   , Bn2 
	.byte	W24
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_6_086
@ 095   ----------------------------------------
	.byte		N48   , An3 , v076
	.byte	W12
	.byte		N12   , As2 , v056
	.byte		N12   , Dn3 
	.byte	W36
	.byte		        An2 
	.byte		N24   , As3 , v076
	.byte	W24
	.byte		        Gs2 , v056
	.byte		N24   , Cn4 , v076
	.byte	W24
@ 096   ----------------------------------------
	.byte		N12   , Gn2 , v056
	.byte		N06   , An3 , v076
	.byte	W06
	.byte		N78   , As3 
	.byte	W30
	.byte		N12   , Gn2 , v056
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , An3 , v076
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 097   ----------------------------------------
	.byte		N80   , Ds3 
	.byte		N80   , Ds4 
	.byte	W12
	.byte		N12   , As2 , v056
	.byte		N12   , Dn3 
	.byte	W36
	.byte		        An2 
	.byte		N12   , Cn3 
	.byte	W24
	.byte		N24   , Gs2 
	.byte		N24   , Bn2 
	.byte	W18
	.byte		N06   , Dn3 , v076
	.byte		N06   , Dn4 
	.byte	W06
@ 098   ----------------------------------------
	.byte		N12   , Gn2 , v056
	.byte		N96   , Ds4 , v076
	.byte	W36
	.byte		N12   , Gn2 , v056
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W24
@ 099   ----------------------------------------
	.byte		N08   , Cn3 , v076
	.byte		N08   , Cn4 
	.byte	W08
	.byte		        Gn2 
	.byte		N08   , Gn3 
	.byte	W04
	.byte		N12   , As2 , v056
	.byte		N12   , Dn3 
	.byte	W04
	.byte		N08   , Cn3 , v076
	.byte		N08   , Cn4 
	.byte	W08
	.byte		        Dn3 
	.byte		N08   , Dn4 
	.byte	W08
	.byte		        Gn2 
	.byte		N08   , Gn3 
	.byte	W08
	.byte		        Dn3 
	.byte		N08   , Dn4 
	.byte	W08
	.byte		N12   , An2 , v056
	.byte		N08   , Ds4 , v076
	.byte	W08
	.byte		        Gn2 
	.byte		N08   , Gn3 
	.byte	W08
	.byte		        Ds3 
	.byte		N08   , Ds4 
	.byte	W08
	.byte		N24   , Gs2 , v056
	.byte		N08   , Ds4 , v076
	.byte	W08
	.byte		        Fn3 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
@ 100   ----------------------------------------
	.byte		N12   , Gn2 , v056
	.byte		N84   , As3 , v076
	.byte	W36
	.byte		N12   , Gn2 , v056
	.byte		N12   , As2 
	.byte	W36
	.byte		        Gn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Cn4 , v076
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 101   ----------------------------------------
	.byte		N96   , An3 
	.byte	W12
	.byte		N12   , As2 , v056
	.byte		N12   , Dn3 
	.byte	W36
	.byte		        An2 , v064
	.byte		N12   , Cn3 
	.byte	W24
	.byte		N24   , Gs2 
	.byte		N24   , Bn2 
	.byte	W24
@ 102   ----------------------------------------
	.byte		N96   , Dn3 
	.byte		N80   , Fs3 
	.byte	W72
	.byte		N08   , Fs3 , v084
	.byte	W08
	.byte		        Cs3 
	.byte		N08   , Cs4 
	.byte	W08
	.byte		        Fs3 
	.byte	W08
@ 103   ----------------------------------------
	.byte		N88   , En3 , v064
	.byte		N24   , Gs3 
	.byte	W08
	.byte		N08   , Cs3 , v084
	.byte		N08   , Cs4 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		        Cs3 
	.byte		N08   , Cs4 
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        Cs3 
	.byte		N08   , Cs4 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        En4 
	.byte	W08
	.byte		        En3 
	.byte		N08   , En4 
	.byte	W08
	.byte		        Ds3 
	.byte		N08   , Ds4 
	.byte	W08
@ 104   ----------------------------------------
	.byte		N84   , En3 
	.byte		N84   , En4 
	.byte	W84
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Cs4 
	.byte	W06
@ 105   ----------------------------------------
	.byte		N48   , Dn3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        En3 
	.byte		N48   , En4 
	.byte	W48
@ 106   ----------------------------------------
	.byte		N96   , Fs3 , v088
	.byte		N96   , Dn4 
	.byte	W96
@ 107   ----------------------------------------
	.byte		        En3 , v084
	.byte		N96   , En4 , v088
	.byte	W92
	.byte	W01
	.byte		N48   , Dn3 , v064
	.byte	W03
@ 108   ----------------------------------------
	.byte		N44   , Dn3 , v084
	.byte		N64   , Dn4 , v064
	.byte	W48
	.byte		N32   , Bn3 , v092
	.byte	W08
	.byte		N08   , Dn3 
	.byte		N08   , Dn4 
	.byte	W08
	.byte		        Fs3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        Dn3 
	.byte		N08   , Dn4 
	.byte	W08
	.byte		        Fs3 
	.byte	W08
@ 109   ----------------------------------------
	.byte		N96   , Cs3 , v084
	.byte		N96   , Cs4 , v092
	.byte	W96
@ 110   ----------------------------------------
	.byte		N12   , Dn3 , v068
	.byte		N72   , Cs4 , v072
	.byte	W36
	.byte		N12   , Dn3 , v068
	.byte		N36   , Fs3 
	.byte	W36
	.byte		N12   , Dn3 
	.byte		N24   , En4 , v072
	.byte	W24
@ 111   ----------------------------------------
	.byte		        Gs3 
	.byte		N36   , Ds4 
	.byte	W12
	.byte		N12   , En3 , v068
	.byte		N12   , Gs3 
	.byte	W24
	.byte		N24   , En3 , v072
	.byte		N36   , Bn3 
	.byte	W12
	.byte		N12   , En3 , v068
	.byte		N12   , Gs3 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gs3 , v072
	.byte	W24
@ 112   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , An3 
	.byte	W36
	.byte		N12   , Fs3 , v068
	.byte		N12   , An3 
	.byte	W36
	.byte		N24   , En3 , v072
	.byte		N12   , An3 , v068
	.byte	W24
@ 113   ----------------------------------------
	.byte		N48   , En3 , v072
	.byte		N24   , Gn3 
	.byte	W12
	.byte		N12   , Gn3 , v068
	.byte		N12   , Bn3 
	.byte	W36
	.byte		N48   , En3 , v072
	.byte		N12   , Bn3 , v068
	.byte	W24
	.byte		N24   , Gn3 
	.byte		N12   , Bn3 
	.byte	W24
@ 114   ----------------------------------------
	.byte		        Fs3 
	.byte		N72   , Dn4 , v072
	.byte	W36
	.byte		N12   , Fs3 , v068
	.byte		N36   , An3 
	.byte	W36
	.byte		N24   , Fs3 , v072
	.byte		N24   , Cs4 
	.byte	W24
@ 115   ----------------------------------------
	.byte		N36   , Bn3 
	.byte		N36   , En4 
	.byte	W12
	.byte		N12   , En3 , v068
	.byte		N12   , Gs3 
	.byte	W24
	.byte		N36   , An3 , v072
	.byte		N36   , Dn4 
	.byte	W12
	.byte		N12   , En3 , v068
	.byte		N12   , Gs3 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Cs4 , v072
	.byte	W24
@ 116   ----------------------------------------
	.byte		N12   , Dn3 , v068
	.byte		N96   , Bn3 , v072
	.byte	W36
	.byte		N12   , Dn3 , v068
	.byte		N48   , Fs3 
	.byte	W36
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W24
@ 117   ----------------------------------------
	.byte		N24   , Bn2 , v072
	.byte		N24   , Gs3 
	.byte	W12
	.byte		N12   , En3 , v068
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N24   , Cs3 , v072
	.byte		N24   , An3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        En3 
	.byte		N24   , Gs3 
	.byte	W24
@ 118   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N96   , Dn4 
	.byte	W36
	.byte		N12   , Fs3 , v068
	.byte		N12   , An3 
	.byte	W36
	.byte		        Fs3 
	.byte		N12   , An3 
	.byte	W24
@ 119   ----------------------------------------
	.byte		N24   , Gs3 , v072
	.byte		N96   , En4 
	.byte	W12
	.byte		N12   , Gs3 , v068
	.byte		N12   , Bn3 
	.byte	W36
	.byte		        Gs3 
	.byte		N12   , Bn3 
	.byte	W24
	.byte		        Gs3 
	.byte		N12   , Bn3 
	.byte	W24
@ 120   ----------------------------------------
	.byte		N96   , Fs3 , v072
	.byte		N12   , Fs4 , v068
	.byte	W36
	.byte		N48   , Bn3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W24
@ 121   ----------------------------------------
	.byte		N96   , Fs3 , v072
	.byte	W12
	.byte		N12   , Bn3 , v068
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W24
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W24
@ 122   ----------------------------------------
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W24
@ 123   ----------------------------------------
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W36
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W24
	.byte		        Bn3 
	.byte		N12   , Fs4 
	.byte	W24
@ 124   ----------------------------------------
	.byte		TIE   , En3 , v064
	.byte	W96
@ 125   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 126   ----------------------------------------
	.byte		TIE   , Bn3 
	.byte	W96
@ 127   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 128   ----------------------------------------
	.byte		N96   
	.byte		N96   , En4 
	.byte	W96
@ 129   ----------------------------------------
	.byte		N96   
	.byte		N48   , Gs4 
	.byte	W48
	.byte		N24   , An3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
@ 130   ----------------------------------------
	.byte	W07
	.byte	GOTO
	 .word	mus_zinnia_champion_grand_epic_6_B1
mus_zinnia_champion_grand_epic_6_B2:
	.byte	FINE

@**************** Track 7 (Midi-Chn.10) ****************@

mus_zinnia_champion_grand_epic_7:
	.byte	KEYSH , mus_zinnia_champion_grand_epic_key+0
mus_zinnia_champion_grand_epic_7_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 116*mus_zinnia_champion_grand_epic_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Cn1 , v068
	.byte		N02   , Cs2 , v064
	.byte	W96
@ 001   ----------------------------------------
	.byte		        Cn1 , v068
	.byte		N02   , Cs2 , v064
	.byte	W72
	.byte		        Cs2 , v052
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
@ 002   ----------------------------------------
	.byte		        Cs2 , v064
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W72
	.byte		        Cs2 , v052
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		        Cs2 , v056
	.byte	W03
@ 006   ----------------------------------------
mus_zinnia_champion_grand_epic_7_006:
	.byte		N02   , Cn1 , v068
	.byte		N02   , Cs2 , v064
	.byte	W96
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W12
	.byte		        Cn1 , v068
	.byte	W84
@ 008   ----------------------------------------
	.byte		N02   
	.byte	W96
@ 009   ----------------------------------------
	.byte	W12
	.byte		N02   
	.byte	W84
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_006
@ 011   ----------------------------------------
	.byte	W12
	.byte		N02   , Cn1 , v068
	.byte	W60
	.byte		        Cn1 , v076
	.byte		N02   , En1 , v068
	.byte		N02   , Fs1 , v044
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
@ 012   ----------------------------------------
	.byte		N02   
	.byte		N02   , Fs1 , v044
	.byte		N02   , Ds2 , v064
	.byte	W24
	.byte		        En1 , v068
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v072
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , En1 , v068
	.byte		N02   , Fs1 , v044
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v072
	.byte	W12
@ 013   ----------------------------------------
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        En1 , v068
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v076
	.byte		N02   , Fs1 , v048
	.byte		N02   , Ds2 , v064
	.byte	W06
	.byte		        Cn1 , v076
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte		N02   , En1 , v068
	.byte		N02   , Fs1 , v044
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
@ 014   ----------------------------------------
	.byte		        Cn1 , v076
	.byte		N02   , Fs1 , v044
	.byte		N03   , Cs2 , v096
	.byte		N02   , Ds2 , v064
	.byte	W24
	.byte		        En1 , v068
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v072
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , En1 , v068
	.byte		N02   , Fs1 , v044
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v072
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        En1 , v068
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v076
	.byte		N02   , Fs1 , v048
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v072
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , En1 , v068
	.byte		N02   , Fs1 , v044
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
@ 016   ----------------------------------------
	.byte		N02   
	.byte		N02   , Fs1 , v044
	.byte		N02   , Ds2 , v064
	.byte	W24
	.byte		        En1 , v068
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v072
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , En1 , v064
	.byte		N02   , Fs1 , v044
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v072
	.byte	W12
@ 017   ----------------------------------------
	.byte		        Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        En1 
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v076
	.byte		N02   , Fs1 , v048
	.byte		N02   , Ds2 , v064
	.byte	W06
	.byte		        Cn1 , v076
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte		N02   , En1 , v064
	.byte		N02   , Fs1 , v044
	.byte		N02   , Cs2 , v056
	.byte		N02   , Ds2 , v064
	.byte	W03
	.byte		        Cn1 , v076
	.byte		N02   , Cs2 , v056
	.byte	W03
	.byte		        Cn1 , v076
	.byte		N02   , Cs2 , v056
	.byte	W03
	.byte		        Cn1 , v076
	.byte		N02   , Cs2 , v056
	.byte	W03
	.byte		        Cn1 , v076
	.byte		N02   , Cs2 , v056
	.byte	W03
	.byte		        Cn1 , v076
	.byte		N02   , Cs2 , v056
	.byte	W03
	.byte		        Cn1 , v076
	.byte		N02   , Cs2 , v060
	.byte	W03
	.byte		        Cn1 , v076
	.byte		N02   , Cs2 , v060
	.byte	W03
@ 018   ----------------------------------------
	.byte		        Cn1 , v076
	.byte		N02   , Fs1 , v044
	.byte		N02   , Cs2 , v072
	.byte		N02   , Ds2 , v064
	.byte	W24
	.byte		        Cn1 , v076
	.byte		N02   , En1 , v068
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v072
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , En1 , v068
	.byte		N02   , Fs1 , v044
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v072
	.byte	W12
@ 019   ----------------------------------------
mus_zinnia_champion_grand_epic_7_019:
	.byte		N02   , Cn1 , v076
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , En1 , v068
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v076
	.byte		N02   , Fs1 , v048
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v072
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , En1 , v068
	.byte		N02   , Fs1 , v044
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
mus_zinnia_champion_grand_epic_7_020:
	.byte		N02   , Cn1 , v076
	.byte		N02   , Fs1 , v044
	.byte		N02   , Ds2 , v064
	.byte	W24
	.byte		        Cn1 , v076
	.byte		N02   , En1 , v068
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v072
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , En1 , v068
	.byte		N02   , Fs1 , v044
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v072
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte		        Cn1 , v076
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , En1 , v068
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v076
	.byte		N02   , Fs1 , v048
	.byte		N02   , Ds2 , v064
	.byte	W06
	.byte		        Cn1 , v076
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte		N02   , En1 , v068
	.byte		N02   , Fs1 , v044
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N02   
	.byte	W06
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_020
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_019
@ 024   ----------------------------------------
	.byte		N02   , Cn1 , v076
	.byte		N02   , Fs1 , v044
	.byte		N02   , Ds2 , v064
	.byte	W24
	.byte		        Cn1 , v076
	.byte		N02   , En1 , v068
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		        Cn1 , v072
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , En1 , v064
	.byte		N02   , Fs1 , v044
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v072
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Cn1 , v076
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , En1 , v064
	.byte		N02   , Fs1 , v048
	.byte	W24
	.byte		        Cn1 , v076
	.byte		N02   , Fs1 , v048
	.byte		N02   , Ds2 , v064
	.byte	W06
	.byte		        Cn1 , v076
	.byte	W06
	.byte		        Cn1 , v064
	.byte	W12
	.byte		        Cn1 , v076
	.byte		N02   , En1 , v064
	.byte		N02   , Fs1 , v044
	.byte		N02   , Cs2 , v056
	.byte		N02   , Ds2 , v064
	.byte	W03
	.byte		        Cn1 
	.byte		N02   , Cs2 , v056
	.byte	W03
	.byte		        Cn1 , v064
	.byte		N02   , Cs2 , v056
	.byte	W03
	.byte		        Cn1 , v064
	.byte		N02   , Cs2 , v056
	.byte	W03
	.byte		        Cn1 , v064
	.byte		N02   , Cs2 , v056
	.byte	W03
	.byte		        Cn1 , v064
	.byte		N02   , Cs2 , v056
	.byte	W03
	.byte		        Cn1 , v064
	.byte		N02   , Cs2 , v060
	.byte	W03
	.byte		        Cn1 , v064
	.byte		N02   , Cs2 , v060
	.byte	W03
@ 026   ----------------------------------------
	.byte		        Cn1 , v076
	.byte		N02   , Fs1 , v044
	.byte		N02   , Cs2 , v072
	.byte		N02   , Ds2 , v064
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
@ 027   ----------------------------------------
mus_zinnia_champion_grand_epic_7_027:
	.byte		N02   , Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte	PEND
@ 028   ----------------------------------------
mus_zinnia_champion_grand_epic_7_028:
	.byte		N02   , Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_zinnia_champion_grand_epic_7_029:
	.byte		N02   , Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v080
	.byte	W06
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_028
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_027
@ 032   ----------------------------------------
	.byte		N02   , Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte		N03   , Cs2 , v100
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
@ 033   ----------------------------------------
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte		N02   , Cs2 , v072
	.byte		N02   , Ds2 , v076
	.byte	W03
	.byte		        Cn1 , v080
	.byte		N02   , Cs2 , v072
	.byte	W03
	.byte		        Cn1 , v080
	.byte		N02   , Cs2 , v072
	.byte	W03
	.byte		        Cn1 , v080
	.byte		N02   , Cs2 , v072
	.byte	W03
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v048
	.byte		N02   , Cs2 , v072
	.byte	W03
	.byte		        Cn1 , v080
	.byte		N02   , Cs2 , v072
	.byte	W03
	.byte		        Cn1 , v080
	.byte		N02   , Cs2 , v072
	.byte	W03
	.byte		        Cn1 , v080
	.byte		N02   , Cs2 , v076
	.byte	W03
@ 034   ----------------------------------------
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte		N02   , Cs2 , v088
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_027
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_028
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_029
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_028
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_027
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_028
@ 041   ----------------------------------------
	.byte		N02   , Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v052
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte		N02   , Cs2 , v072
	.byte		N02   , Ds2 , v076
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Cs2 , v072
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Cs2 , v072
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Cs2 , v072
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v048
	.byte		N02   , Cs2 , v072
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Cs2 , v072
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Cs2 , v072
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Cs2 , v072
	.byte	W03
@ 042   ----------------------------------------
	.byte		        Cn1 , v084
	.byte		N02   , Cs2 , v088
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte		        Cn1 , v084
	.byte	W96
@ 045   ----------------------------------------
	.byte	W72
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
@ 046   ----------------------------------------
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte		N02   , Cs2 , v080
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
@ 047   ----------------------------------------
mus_zinnia_champion_grand_epic_7_047:
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte	PEND
@ 048   ----------------------------------------
	.byte		N02   
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_047
@ 050   ----------------------------------------
mus_zinnia_champion_grand_epic_7_050:
	.byte		N02   , Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte		N02   , Cs2 , v080
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
mus_zinnia_champion_grand_epic_7_051:
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte	PEND
@ 052   ----------------------------------------
mus_zinnia_champion_grand_epic_7_052:
	.byte		N02   , Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte	PEND
@ 053   ----------------------------------------
mus_zinnia_champion_grand_epic_7_053:
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte	PEND
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_050
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_051
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_052
@ 057   ----------------------------------------
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_050
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_053
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_052
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_053
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_050
@ 063   ----------------------------------------
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W06
	.byte		        Cs2 , v072
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte		N02   , Cs2 , v072
	.byte	W06
	.byte		        Cn1 , v084
	.byte		N02   , Cs2 , v072
	.byte	W06
@ 064   ----------------------------------------
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte		N02   , Cs2 , v084
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
@ 065   ----------------------------------------
	.byte		        Fs1 , v056
	.byte		N03   , Cs2 , v104
	.byte	W12
	.byte		N02   , Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
@ 066   ----------------------------------------
mus_zinnia_champion_grand_epic_7_066:
	.byte		N02   , Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte	PEND
@ 067   ----------------------------------------
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_066
@ 069   ----------------------------------------
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte		N02   , Cs2 , v072
	.byte	W07
	.byte		N02   
	.byte	W05
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v048
	.byte	W01
	.byte		        Cs2 , v072
	.byte	W05
	.byte		        Cn1 , v092
	.byte	W01
	.byte		        Cs2 , v080
	.byte	W05
@ 070   ----------------------------------------
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte		N02   , Cs2 , v088
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v048
	.byte	W12
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_051
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_052
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_053
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_052
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_051
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_052
@ 077   ----------------------------------------
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v052
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        En1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte		N02   , Ds2 , v076
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , En1 , v080
	.byte		N02   , Fs1 , v056
	.byte		N02   , Cs2 , v072
	.byte		N02   , Ds2 , v076
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Cs2 , v072
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Cs2 , v072
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Cs2 , v072
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v048
	.byte		N02   , Cs2 , v072
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Cs2 , v072
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Cs2 , v072
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Cs2 , v076
	.byte	W03
@ 078   ----------------------------------------
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte		N02   , Cs2 , v088
	.byte		N02   , Ds2 , v076
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 079   ----------------------------------------
mus_zinnia_champion_grand_epic_7_079:
	.byte		N02   , Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte	PEND
@ 080   ----------------------------------------
mus_zinnia_champion_grand_epic_7_080:
	.byte		N02   , Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte	PEND
@ 081   ----------------------------------------
mus_zinnia_champion_grand_epic_7_081:
	.byte		N02   , Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W06
	.byte		        Cn1 , v108
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte	PEND
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_080
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_079
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_080
@ 085   ----------------------------------------
mus_zinnia_champion_grand_epic_7_085:
	.byte		N02   , Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W06
	.byte		        Cn1 , v108
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte		N02   , Cs2 , v080
	.byte		N02   , Ds2 , v088
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Cs2 , v080
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Cs2 , v080
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Cs2 , v080
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v056
	.byte		N02   , Cs2 , v080
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Cs2 , v080
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Cs2 , v084
	.byte	W03
	.byte		        Cn1 , v092
	.byte		N02   , Cs2 , v088
	.byte	W03
	.byte	PEND
@ 086   ----------------------------------------
mus_zinnia_champion_grand_epic_7_086:
	.byte		N02   , Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte		N02   , Cs2 , v104
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte	PEND
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_079
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_080
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_081
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_080
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_079
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_080
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_085
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_086
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_079
@ 096   ----------------------------------------
	.byte		N02   , Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte		N03   , Cs2 , v108
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_081
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_080
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_079
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_080
@ 101   ----------------------------------------
	.byte		N02   , Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , Fs1 , v060
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte		N02   , Cs2 , v080
	.byte		N02   , Ds2 , v088
	.byte	W03
	.byte		        Cn1 , v108
	.byte		N02   , Cs2 , v080
	.byte	W03
	.byte		        Cn1 , v108
	.byte		N02   , Cs2 , v080
	.byte	W03
	.byte		        Cn1 , v108
	.byte		N02   , Cs2 , v080
	.byte	W03
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v056
	.byte		N02   , Cs2 , v080
	.byte	W03
	.byte		        Cn1 , v108
	.byte		N02   , Cs2 , v080
	.byte	W03
	.byte		        Cn1 , v108
	.byte		N02   , Cs2 , v084
	.byte	W03
	.byte		        Cn1 , v108
	.byte		N02   , Cs2 , v084
	.byte	W03
@ 102   ----------------------------------------
	.byte		        Cn1 , v100
	.byte		N02   , Cs2 , v104
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte		        Cn1 , v096
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W24
	.byte		        Ds2 , v076
	.byte	W24
	.byte		        Ds2 , v088
	.byte	W24
	.byte		        Ds2 , v076
	.byte	W20
@ 105   ----------------------------------------
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W24
	.byte		        Ds2 , v076
	.byte	W24
	.byte		        Ds2 , v088
	.byte	W20
	.byte		        Cn1 , v100
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Cn1 , v100
	.byte	W12
@ 106   ----------------------------------------
	.byte		N02   
	.byte		N02   , Fs1 , v072
	.byte		N02   , Cs2 , v092
	.byte		N02   , Ds2 , v088
	.byte	W04
	.byte		N02   
	.byte	W08
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 107   ----------------------------------------
mus_zinnia_champion_grand_epic_7_107:
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W04
	.byte		N02   
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte	PEND
@ 108   ----------------------------------------
	.byte		N02   
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W04
	.byte		N02   
	.byte	W08
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_107
@ 110   ----------------------------------------
mus_zinnia_champion_grand_epic_7_110:
	.byte		N02   , Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte		N02   , Cs2 , v092
	.byte		N02   , Ds2 , v088
	.byte	W04
	.byte		N02   
	.byte	W08
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v060
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte	PEND
@ 111   ----------------------------------------
mus_zinnia_champion_grand_epic_7_111:
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W08
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v060
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W04
	.byte		N02   
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v108
	.byte	W06
	.byte	PEND
@ 112   ----------------------------------------
mus_zinnia_champion_grand_epic_7_112:
	.byte		N02   , Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W04
	.byte		N02   
	.byte	W08
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v060
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte	PEND
@ 113   ----------------------------------------
mus_zinnia_champion_grand_epic_7_113:
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W08
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v060
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W04
	.byte		N02   
	.byte	W02
	.byte		        Cn1 , v108
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte	PEND
@ 114   ----------------------------------------
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte		N03   , Cs2 , v112
	.byte		N02   , Ds2 , v088
	.byte	W04
	.byte		N02   
	.byte	W08
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v060
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_111
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_112
@ 117   ----------------------------------------
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W08
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v060
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W04
	.byte		N02   
	.byte	W02
	.byte		        Cn1 , v108
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_110
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_113
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_112
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_113
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_110
@ 123   ----------------------------------------
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W08
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v060
	.byte		N02   , Ds2 , v088
	.byte	W12
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W04
	.byte		N02   
	.byte	W02
	.byte		        Cn1 , v108
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte		N02   , Ds2 , v088
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W02
	.byte		        Cs2 , v080
	.byte	W06
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte		N02   , Cs2 , v084
	.byte	W06
	.byte		        Cn1 , v100
	.byte		N02   , Cs2 , v084
	.byte	W06
@ 124   ----------------------------------------
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte		N02   , Cs2 , v096
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W08
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 125   ----------------------------------------
mus_zinnia_champion_grand_epic_7_125:
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W08
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W02
	.byte		        Cn1 , v108
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte	PEND
@ 126   ----------------------------------------
mus_zinnia_champion_grand_epic_7_126:
	.byte		N02   , Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W08
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte	PEND
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_125
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_zinnia_champion_grand_epic_7_126
@ 129   ----------------------------------------
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W08
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        En1 , v092
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W08
	.byte		        Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , Fs1 , v064
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W02
	.byte		        Cn1 , v108
	.byte	W06
	.byte		N02   
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N02   , En1 , v092
	.byte		N02   , Fs1 , v064
	.byte		N02   , Cs2 , v080
	.byte	W04
	.byte		        Ds2 , v076
	.byte	W03
	.byte		        Cs2 , v080
	.byte	W05
	.byte		        Cn1 , v100
	.byte		N02   , Fs1 , v056
	.byte	W01
	.byte		        Cs2 , v080
	.byte	W05
	.byte		        Cn1 , v100
	.byte	W01
	.byte		        Cs2 , v092
	.byte	W05
@ 130   ----------------------------------------
	.byte	W04
	.byte		        Ds2 , v088
	.byte	W03
	.byte	GOTO
	 .word	mus_zinnia_champion_grand_epic_7_B1
mus_zinnia_champion_grand_epic_7_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_zinnia_champion_grand_epic:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_zinnia_champion_grand_epic_pri	@ Priority
	.byte	mus_zinnia_champion_grand_epic_rev	@ Reverb.

	.word	mus_zinnia_champion_grand_epic_grp

	.word	mus_zinnia_champion_grand_epic_1
	.word	mus_zinnia_champion_grand_epic_2
	.word	mus_zinnia_champion_grand_epic_3
	.word	mus_zinnia_champion_grand_epic_4
	.word	mus_zinnia_champion_grand_epic_5
	.word	mus_zinnia_champion_grand_epic_6
	.word	mus_zinnia_champion_grand_epic_7

	.end
