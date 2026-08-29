	.include "MPlayDef.s"

	.equ	mus_scars_of_time_grp, voicegroup_scars_of_time
	.equ	mus_scars_of_time_pri, 0
	.equ	mus_scars_of_time_rev, reverb_set+50
	.equ	mus_scars_of_time_mvl, 100
	.equ	mus_scars_of_time_key, 0
	.equ	mus_scars_of_time_tbs, 1
	.equ	mus_scars_of_time_exg, 1
	.equ	mus_scars_of_time_cmp, 1

	.section .rodata
	.global	mus_scars_of_time
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_scars_of_time_1:
	.byte		VOL   , 127*mus_scars_of_time_mvl/mxv
	.byte	KEYSH , mus_scars_of_time_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 80*mus_scars_of_time_tbs/2
	.byte		VOICE , 73
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		N96   , An3 , v064
	.byte	W96
@ 003   ----------------------------------------
	.byte		        Bn3 
	.byte	W96
@ 004   ----------------------------------------
	.byte		N24   , En4 , v076
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 005   ----------------------------------------
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N44   , An4 , v076, gtp1
	.byte	W42
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N21   
	.byte	W18
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		TIE   , En4 
	.byte	W72
@ 007   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 008   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cs5 
	.byte	W12
@ 009   ----------------------------------------
	.byte		        Dn5 
	.byte	W12
	.byte		N09   , En5 
	.byte	W06
	.byte		N03   , Dn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        An4 
	.byte	W12
	.byte		N09   , Bn4 
	.byte	W06
	.byte		N03   , An4 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		TIE   , An4 
	.byte	W72
@ 011   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N24   
	.byte	W24
	.byte		        Bn4 
	.byte	W24
@ 012   ----------------------------------------
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		TIE   , Gn4 
	.byte	W72
@ 013   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N24   
	.byte	W24
	.byte		        An4 
	.byte	W24
@ 014   ----------------------------------------
	.byte		N36   , Bn4 
	.byte	W36
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N48   , An4 
	.byte	W48
@ 015   ----------------------------------------
	.byte		N32   , Gn4 , v076, gtp1
	.byte	W30
	.byte		N03   , Fs4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N36   , En4 
	.byte	W36
	.byte		N12   , Dn4 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N30   , Bn4 
	.byte	W30
	.byte		N03   
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N18   , An4 
	.byte	W18
	.byte		        Gn4 
	.byte	W18
	.byte		N12   , Fs4 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N72   , En4 
	.byte	W72
	.byte		N12   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 018   ----------------------------------------
	.byte	TEMPO , 120*mus_scars_of_time_tbs/2
	.byte		TIE   , En4 
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
	.byte		EOT   
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
	.byte	W84
	.byte		N12   
	.byte	W12
@ 026   ----------------------------------------
mus_scars_of_time_1_026:
	.byte		N36   , Bn4 , v076
	.byte	W36
	.byte		N12   , En4 
	.byte	W12
	.byte		N56   , An4 , v076, gtp1
	.byte	W48
	.byte	PEND
@ 027   ----------------------------------------
mus_scars_of_time_1_027:
	.byte	W06
	.byte		N03   , Gn4 , v076
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_scars_of_time_1_028:
	.byte		N36   , Bn4 , v076
	.byte	W36
	.byte		N12   , En4 
	.byte	W12
	.byte		N32   , An4 , v076, gtp1
	.byte	W30
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		N12   , Gn4 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N60   , Dn5 
	.byte	W60
	.byte		N12   , En4 
	.byte	W12
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_1_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_1_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_1_028
@ 033   ----------------------------------------
	.byte		N12   , Fs4 , v076
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N60   , Dn5 
	.byte	W60
	.byte		N12   
	.byte	W12
@ 034   ----------------------------------------
mus_scars_of_time_1_034:
	.byte		N48   , Cn5 , v076
	.byte		N84   , En5 
	.byte	W48
	.byte		N36   , Dn5 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte	PEND
@ 035   ----------------------------------------
mus_scars_of_time_1_035:
	.byte		N48   , Bn4 , v076
	.byte	W48
	.byte		        An4 
	.byte	W48
	.byte	PEND
@ 036   ----------------------------------------
	.byte		        En4 
	.byte		N84   , Gn4 
	.byte	W48
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 037   ----------------------------------------
	.byte		N24   
	.byte		N48   , Dn5 
	.byte	W24
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte		N48   , Bn4 
	.byte	W24
	.byte		N24   , Dn4 
	.byte	W24
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_1_034
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_1_035
@ 040   ----------------------------------------
	.byte		N36   , En4 , v076
	.byte		N36   , Gn4 
	.byte	W36
	.byte		N06   , Fs4 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		N24   , Fs4 
	.byte		N24   , An4 
	.byte	W24
	.byte		        Dn4 
	.byte		N24   , Fs4 
	.byte	W24
@ 041   ----------------------------------------
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N84   , En4 
	.byte	W84
@ 042   ----------------------------------------
mus_scars_of_time_1_042:
	.byte		N84   , En5 , v088
	.byte	W84
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte	PEND
@ 043   ----------------------------------------
mus_scars_of_time_1_043:
	.byte		N48   , Bn4 , v088
	.byte	W48
	.byte		        An4 
	.byte	W48
	.byte	PEND
@ 044   ----------------------------------------
	.byte		N84   , Gn4 
	.byte	W84
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 045   ----------------------------------------
	.byte		N48   , Dn5 
	.byte	W48
	.byte		        Bn4 
	.byte	W48
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_1_042
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_1_043
@ 048   ----------------------------------------
	.byte		N36   , Gn4 , v088
	.byte	W36
	.byte		N06   , An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N24   , An4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
@ 049   ----------------------------------------
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N84   , En4 
	.byte	W84
@ 050   ----------------------------------------
mus_scars_of_time_1_050:
	.byte		N48   , Cn5 , v088
	.byte		N84   , En5 
	.byte	W48
	.byte		N36   , Dn5 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte	PEND
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_1_043
@ 052   ----------------------------------------
	.byte		N48   , En4 , v088
	.byte		N84   , Gn4 
	.byte	W48
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 053   ----------------------------------------
	.byte		N24   
	.byte		N48   , Dn5 
	.byte	W24
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte		N48   , Bn4 
	.byte	W24
	.byte		N24   , Dn4 
	.byte	W24
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_1_050
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_1_043
@ 056   ----------------------------------------
	.byte		N36   , Gn4 , v088
	.byte	W36
	.byte		N06   , An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N24   , An4 
	.byte	W24
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
@ 057   ----------------------------------------
	.byte		N12   , En5 , v112
	.byte	W12
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_scars_of_time_2:
	.byte		VOL   , 127*mus_scars_of_time_mvl/mxv
	.byte	KEYSH , mus_scars_of_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 68
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
	.byte	W84
	.byte		N12   , En4 , v064
	.byte	W12
@ 026   ----------------------------------------
mus_scars_of_time_2_026:
	.byte		N36   , Bn4 , v064
	.byte	W36
	.byte		N12   , En4 
	.byte	W12
	.byte		N56   , An4 , v064, gtp1
	.byte	W48
	.byte	PEND
@ 027   ----------------------------------------
mus_scars_of_time_2_027:
	.byte	W06
	.byte		N03   , Gn4 , v064
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_scars_of_time_2_028:
	.byte		N36   , Bn4 , v064
	.byte	W36
	.byte		N12   , En4 
	.byte	W12
	.byte		N32   , An4 , v064, gtp1
	.byte	W30
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		N12   , Gn4 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N60   , Dn5 
	.byte	W60
	.byte		N12   , En4 
	.byte	W12
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_2_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_2_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_2_028
@ 033   ----------------------------------------
	.byte		N12   , Fs4 , v064
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N60   , Dn4 
	.byte	W60
	.byte		N12   
	.byte	W12
@ 034   ----------------------------------------
mus_scars_of_time_2_034:
	.byte		N48   , Cn4 , v064
	.byte		N84   , En4 
	.byte	W48
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte	PEND
@ 035   ----------------------------------------
	.byte		N48   , Bn3 
	.byte	W48
	.byte		        An3 
	.byte	W48
@ 036   ----------------------------------------
	.byte		N84   , Gn3 
	.byte		N48   , En4 
	.byte	W48
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 037   ----------------------------------------
	.byte		N24   
	.byte		N48   , Dn4 
	.byte	W24
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N48   , Bn3 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_2_034
@ 039   ----------------------------------------
	.byte		TIE   , Bn3 , v064
	.byte	W48
	.byte		        An3 
	.byte	W48
@ 040   ----------------------------------------
	.byte		        Gn3 
	.byte		N36   , En4 
	.byte	W36
	.byte		TIE   , An3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		TIE   , Gn3 
	.byte		TIE   , Bn3 
	.byte	W06
	.byte		        An3 
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        Dn4 
	.byte		N24   , Fs4 
	.byte	W24
@ 041   ----------------------------------------
	.byte		TIE   , Gn3 
	.byte	W06
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N84   , En4 
	.byte	W84
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
	.byte		        Bn3 , v104
	.byte	W84
	.byte		EOT   
	.byte		EOT   
	.byte		N12   , An3 
	.byte	W12
	.byte		EOT   
	.byte		EOT   
	.byte		EOT   
@ 051   ----------------------------------------
	.byte		N84   , Bn3 
	.byte	W84
	.byte		N12   , An3 
	.byte	W12
@ 052   ----------------------------------------
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N24   , En4 
	.byte	W24
	.byte		TIE   , Bn3 
	.byte	W48
@ 053   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 054   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N60   , En4 
	.byte	W60
	.byte		N12   
	.byte	W12
@ 055   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N60   , Fs4 
	.byte	W60
	.byte		N24   , Dn4 
	.byte	W24
@ 056   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N06   , Gn3 
	.byte	W06
	.byte		EOT   
	.byte		EOT   
	.byte		EOT   
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 057   ----------------------------------------
	.byte		N12   , En4 , v127
	.byte	W12
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_scars_of_time_3:
	.byte		VOL   , 127*mus_scars_of_time_mvl/mxv
	.byte	KEYSH , mus_scars_of_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 71
	.byte		TIE   , En2 , v036
	.byte		TIE   , En3 
	.byte		TIE   , Dn4 
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
	.byte		EOT   , En2 
	.byte		        En3 
	.byte		        Dn4 
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
mus_scars_of_time_3_018:
	.byte		N18   , En1 , v076
	.byte	W18
	.byte		N06   , En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N18   , En1 
	.byte	W18
	.byte		N06   , En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_scars_of_time_3_019:
	.byte		N18   , En1 , v076
	.byte	W18
	.byte		N06   , En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_3_018
@ 021   ----------------------------------------
	.byte		N18   , En1 , v076
	.byte	W18
	.byte		N06   , En2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_3_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_3_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_3_018
@ 025   ----------------------------------------
	.byte		N18   , En1 , v076
	.byte	W18
	.byte		N06   , En2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
@ 026   ----------------------------------------
mus_scars_of_time_3_026:
	.byte		N18   , En1 , v076
	.byte		N36   , Bn3 
	.byte		N36   , Bn4 
	.byte	W18
	.byte		N06   , En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N18   , En1 
	.byte		N60   , An3 
	.byte		N56   , An4 , v076, gtp1
	.byte	W18
	.byte		N06   , En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_scars_of_time_3_027:
	.byte		N18   , En1 , v076
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W06
	.byte		N06   , Bn1 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Dn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_scars_of_time_3_028:
	.byte		N18   , En1 , v076
	.byte		N36   , Bn3 
	.byte		N36   , Bn4 
	.byte	W18
	.byte		N06   , En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , Dn2 
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N18   , En1 
	.byte		N36   , An3 
	.byte		N32   , An4 , v076, gtp1
	.byte	W18
	.byte		N06   , En2 
	.byte	W12
	.byte		        Bn1 
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		N12   , Dn2 
	.byte		N12   , Gn3 
	.byte		N12   , Gn4 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte		N18   , En1 
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N06   , En2 
	.byte	W06
	.byte		N60   , Dn4 
	.byte		N60   , Dn5 
	.byte	W06
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_3_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_3_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_3_028
@ 033   ----------------------------------------
	.byte		N18   , En1 , v076
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W06
	.byte		N06   , En2 
	.byte	W06
	.byte		N60   , Dn4 
	.byte		N60   , Dn5 
	.byte	W06
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
@ 034   ----------------------------------------
mus_scars_of_time_3_034:
	.byte		N18   , Cn2 , v076
	.byte		N84   , En4 
	.byte		N84   , En5 
	.byte	W18
	.byte		N18   , Gn1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N18   , Dn2 
	.byte	W18
	.byte		        An1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte		N06   , Dn4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte	PEND
@ 035   ----------------------------------------
	.byte		N18   , En2 
	.byte		N48   , Bn3 
	.byte		N48   , Bn4 
	.byte	W18
	.byte		N18   , En2 
	.byte	W18
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N18   , En1 
	.byte		N48   , An3 
	.byte		N48   , An4 
	.byte	W18
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N18   , Cn2 
	.byte		N84   , Gn3 
	.byte		N84   , Gn4 
	.byte	W18
	.byte		N18   , Gn1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N18   , Dn2 
	.byte	W18
	.byte		        An1 
	.byte	W18
	.byte		N12   , Dn2 
	.byte		N06   , Fs3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Gn3 
	.byte		N06   , Gn4 
	.byte	W06
@ 037   ----------------------------------------
	.byte		N18   , En2 
	.byte		N48   , Dn4 
	.byte		N48   , Dn5 
	.byte	W18
	.byte		N18   , En2 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N18   , En1 
	.byte		N48   , Bn3 
	.byte		N48   , Bn4 
	.byte	W18
	.byte		N18   , Bn1 
	.byte	W18
	.byte		N12   , En1 
	.byte	W12
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_3_034
@ 039   ----------------------------------------
	.byte		N18   , En2 , v076
	.byte		N48   , Bn3 
	.byte		N48   , Bn4 
	.byte	W18
	.byte		N18   , En2 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N18   , En1 
	.byte		N48   , An3 
	.byte		N48   , An4 
	.byte	W18
	.byte		N18   , En2 
	.byte	W18
	.byte		N12   , Bn2 
	.byte	W12
@ 040   ----------------------------------------
	.byte		N18   , Cn2 
	.byte		N36   , Gn3 
	.byte		N36   , Gn4 
	.byte	W18
	.byte		N18   , Gn1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte		N06   , An3 
	.byte		N06   , An4 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		N18   , Dn2 
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W18
	.byte		N18   , An1 
	.byte	W06
	.byte		N24   , Fs3 
	.byte		N24   , Fs4 
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
@ 041   ----------------------------------------
	.byte		N18   , En2 
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N84   , En3 
	.byte		N84   , En4 
	.byte	W06
	.byte		N18   , En2 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N18   , En1 
	.byte	W18
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 042   ----------------------------------------
mus_scars_of_time_3_042:
	.byte		N48   , Bn2 , v064
	.byte		N48   , Bn3 
	.byte		N48   , En4 
	.byte	W48
	.byte		        An2 
	.byte		N48   , An3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte	PEND
@ 043   ----------------------------------------
mus_scars_of_time_3_043:
	.byte		N72   , Gn2 , v064
	.byte		N72   , Gn3 
	.byte		N72   , Bn3 
	.byte	W72
	.byte		N24   , An2 
	.byte		N24   , An3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
@ 044   ----------------------------------------
	.byte		N48   , Gn2 
	.byte		N48   , Gn3 
	.byte		N44   , Bn3 , v064, gtp1
	.byte	W42
	.byte		N03   , An2 
	.byte		N03   , An3 
	.byte	W03
	.byte		        Bn2 
	.byte		N03   , Bn3 
	.byte	W03
	.byte		N48   , An2 
	.byte		N12   , An3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 045   ----------------------------------------
	.byte		N96   , Bn2 
	.byte		N72   , Bn3 
	.byte	W72
	.byte		N24   , Dn4 
	.byte	W24
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_3_042
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_3_043
@ 048   ----------------------------------------
	.byte		N36   , Gn2 , v064
	.byte		N24   , Gn3 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N06   , An2 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N24   , An2 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Fs2 
	.byte		N24   , Fs3 
	.byte		N24   , Dn4 
	.byte	W24
@ 049   ----------------------------------------
	.byte		N06   , Gn2 
	.byte		N06   , Gn3 
	.byte		N96   , En4 
	.byte	W06
	.byte		N06   , Fs2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N84   , En2 
	.byte		N84   , En3 
	.byte	W84
@ 050   ----------------------------------------
	.byte		N48   , Cn2 , v104
	.byte		N84   , Bn3 
	.byte	W48
	.byte		N48   , Dn2 
	.byte	W36
	.byte		N12   , An3 
	.byte	W12
@ 051   ----------------------------------------
	.byte		N48   , Bn1 
	.byte		N84   , Bn3 
	.byte	W48
	.byte		N48   , An1 
	.byte	W36
	.byte		N12   , An3 
	.byte	W12
@ 052   ----------------------------------------
	.byte		N48   , En2 
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , En4 
	.byte	W24
	.byte		N48   , Fs2 
	.byte		TIE   , Bn3 
	.byte	W48
@ 053   ----------------------------------------
	.byte		N24   , Gn2 
	.byte	W24
	.byte		        Fs2 
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		EOT   , Bn3 
@ 054   ----------------------------------------
	.byte		N48   , Cn2 
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N60   , En4 
	.byte	W24
	.byte		N48   , Dn2 
	.byte	W36
	.byte		N12   , En4 
	.byte	W12
@ 055   ----------------------------------------
	.byte		N48   , Bn1 
	.byte		N12   , En4 
	.byte	W12
	.byte		N60   , Fs4 
	.byte	W36
	.byte		N48   , An1 
	.byte	W24
	.byte		N24   , Dn4 
	.byte	W24
@ 056   ----------------------------------------
	.byte		N36   , Gn2 
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N48   , Dn4 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N24   , An2 
	.byte	W24
	.byte		N06   , Dn2 
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        En2 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Dn4 
	.byte	W06
@ 057   ----------------------------------------
	.byte		N12   , En3 , v127
	.byte		N12   , En4 
	.byte	W12
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_scars_of_time_4:
	.byte		VOL   , 127*mus_scars_of_time_mvl/mxv
	.byte	KEYSH , mus_scars_of_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 65
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
mus_scars_of_time_4_022:
	.byte		N06   , An3 , v064
	.byte	W06
	.byte		        Bn3 
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
	.byte		N06   
	.byte	W06
	.byte		        Cn4 
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
	.byte	PEND
@ 023   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		        Dn4 
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
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_4_022
@ 025   ----------------------------------------
	.byte		N06   , Cn4 , v064
	.byte	W06
	.byte		        Dn4 
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
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W18
@ 026   ----------------------------------------
mus_scars_of_time_4_026:
	.byte	W12
	.byte		N02   , Bn3 , v064
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
mus_scars_of_time_4_027:
	.byte	W12
	.byte		N02   , Dn4 , v064
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W12
	.byte		N02   
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_4_026
@ 029   ----------------------------------------
mus_scars_of_time_4_029:
	.byte	W12
	.byte		N02   , Dn4 , v064
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W36
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_4_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_4_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_4_026
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_4_029
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
	.byte	W48
	.byte		N24   , An3 , v064
	.byte	W24
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W18
@ 057   ----------------------------------------
	.byte	W12
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_scars_of_time_5:
	.byte		VOL   , 127*mus_scars_of_time_mvl/mxv
	.byte	KEYSH , mus_scars_of_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 66
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
mus_scars_of_time_5_022:
	.byte		N12   , En2 , v064
	.byte		N12   , En3 
	.byte	W12
	.byte		N02   , En2 
	.byte		N02   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		N12   , En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		N02   , En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
	.byte		N12   , En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		N02   , En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		N12   , En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		N02   , En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		N02   
	.byte	W06
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_5_022
@ 025   ----------------------------------------
	.byte		N12   , En2 , v064
	.byte		N12   , En3 
	.byte	W12
	.byte		N02   , En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		N12   , En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		N02   , En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W18
@ 026   ----------------------------------------
mus_scars_of_time_5_026:
	.byte	W12
	.byte		N02   , En2 , v064
	.byte		N02   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W36
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
mus_scars_of_time_5_027:
	.byte	W12
	.byte		N02   , En2 , v064
	.byte		N02   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W36
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W36
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_5_026
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_5_027
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_5_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_5_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_5_026
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_5_027
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
	.byte	W12
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_scars_of_time_6:
	.byte		VOL   , 127*mus_scars_of_time_mvl/mxv
	.byte	KEYSH , mus_scars_of_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 67
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
	.byte	W30
	.byte		N06   , Bn1 , v076
	.byte	W18
	.byte		N12   , En1 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
@ 020   ----------------------------------------
	.byte		N18   , En1 
	.byte	W30
	.byte		N06   , Bn1 
	.byte	W18
	.byte		N18   , En1 
	.byte	W30
	.byte		N06   , Bn1 
	.byte	W18
@ 021   ----------------------------------------
	.byte		N18   , En1 
	.byte	W30
	.byte		N06   , En2 
	.byte	W18
	.byte		N12   , Gn1 
	.byte	W24
	.byte		        An1 
	.byte	W24
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
	.byte	W72
	.byte		N06   , An2 
	.byte	W24
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W72
	.byte		N06   
	.byte	W24
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W72
	.byte		N06   
	.byte	W24
@ 055   ----------------------------------------
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Fs2 
	.byte	W72
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W12
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_scars_of_time_7:
	.byte		VOL   , 127*mus_scars_of_time_mvl/mxv
	.byte	KEYSH , mus_scars_of_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 70
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
	.byte		N18   , En1 , v076
	.byte	W30
	.byte		N06   , Bn1 
	.byte	W18
	.byte		N18   , En1 
	.byte	W30
	.byte		N06   , Bn1 
	.byte	W18
@ 019   ----------------------------------------
	.byte		N18   , En1 
	.byte	W18
	.byte		N06   , En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N18   , En1 
	.byte	W18
	.byte		N06   , En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N18   , En1 
	.byte	W18
	.byte		N06   , En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N18   , En1 
	.byte	W18
	.byte		N06   , En2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 022   ----------------------------------------
mus_scars_of_time_7_022:
	.byte	W30
	.byte		N06   , Bn1 , v076
	.byte	W18
	.byte		N18   , En1 
	.byte	W30
	.byte		N06   , Bn1 
	.byte	W18
	.byte	PEND
@ 023   ----------------------------------------
	.byte		N18   , En1 
	.byte	W30
	.byte		N06   , Bn1 
	.byte	W18
	.byte		N12   , En1 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_7_022
@ 025   ----------------------------------------
	.byte		N18   , En1 , v076
	.byte	W30
	.byte		N06   , En2 
	.byte	W18
	.byte		N12   , Gn1 
	.byte	W24
	.byte		        An1 
	.byte	W24
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
	.byte	W84
	.byte		        Dn2 
	.byte	W12
@ 035   ----------------------------------------
	.byte	W36
	.byte		        Bn1 
	.byte	W42
	.byte		N06   
	.byte	W18
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W36
	.byte		N12   , Dn2 
	.byte	W60
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N18   , En1 
	.byte	W48
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
	.byte	W72
	.byte		N06   , An2 
	.byte	W24
@ 051   ----------------------------------------
	.byte	W30
	.byte		        Dn3 
	.byte	W42
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W18
@ 052   ----------------------------------------
	.byte	W72
	.byte		        An2 
	.byte	W24
@ 053   ----------------------------------------
	.byte	W30
	.byte		        Dn2 
	.byte	W30
	.byte		        Gn2 
	.byte	W36
@ 054   ----------------------------------------
	.byte	W36
	.byte		N12   , Cn2 
	.byte	W36
	.byte		N06   , An2 
	.byte	W24
@ 055   ----------------------------------------
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Fs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W30
	.byte		        Fs2 
	.byte	W06
	.byte		        En2 
	.byte	W18
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W12
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_scars_of_time_8:
	.byte		VOL   , 127*mus_scars_of_time_mvl/mxv
	.byte	KEYSH , mus_scars_of_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 60
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
	.byte		N06   , An2 , v064
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N12   , En3 
	.byte		N12   , Gn3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte		N12   , Gn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N06   , Cn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
@ 019   ----------------------------------------
mus_scars_of_time_8_019:
	.byte		N06   , Cn3 , v064
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N12   , Dn3 
	.byte		N12   , En3 
	.byte		N12   , Gn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N06   , Dn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte		N12   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , An3 
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
mus_scars_of_time_8_020:
	.byte		N06   , An2 , v064
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte		N12   , Gn3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte		N12   , Gn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N06   , Cn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_8_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_8_020
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_8_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_8_020
@ 025   ----------------------------------------
	.byte		N06   , Cn3 , v064
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N12   , Dn3 
	.byte		N12   , En3 
	.byte		N12   , Gn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N06   , Dn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte		N12   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        En3 
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N06   
	.byte		N06   , An3 
	.byte	W06
@ 026   ----------------------------------------
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N12   , Gn3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N12   , En3 
	.byte		N12   , Gn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N06   , Cn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte		N06   , Cn4 
	.byte	W06
@ 027   ----------------------------------------
mus_scars_of_time_8_027:
	.byte		N06   , Cn3 , v064
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W12
	.byte		N12   , En3 
	.byte		N12   , Gn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N06   , Dn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte		N12   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        En3 
	.byte		N06   , Gn3 
	.byte		N06   , An3 
	.byte	W06
	.byte	PEND
@ 028   ----------------------------------------
mus_scars_of_time_8_028:
	.byte		N06   , En3 , v064
	.byte		N06   , Gn3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N12   , Gn3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte		N12   , Gn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte	PEND
@ 029   ----------------------------------------
mus_scars_of_time_8_029:
	.byte		N06   , Cn3 , v064
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N12   , En3 
	.byte		N12   , Gn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N06   , Dn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte		N12   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        En3 
	.byte		N06   , Gn3 
	.byte		N06   , An3 
	.byte	W06
	.byte	PEND
@ 030   ----------------------------------------
	.byte		        En3 
	.byte		N06   , Gn3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N12   , Gn3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte		N12   , Gn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N06   , Cn3 
	.byte		N06   , En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        En3 
	.byte		N06   , Gn3 
	.byte		N06   , Cn4 
	.byte	W06
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_8_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_8_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_8_029
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		N03   , Gn3 , v064
	.byte	W48
	.byte	W03
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
	.byte	W48
	.byte		N48   , Fs3 
	.byte	W48
@ 052   ----------------------------------------
	.byte	W42
	.byte		N03   
	.byte	W03
	.byte		        En3 
	.byte		N03   , Gn3 
	.byte	W03
	.byte		N48   , Fs3 
	.byte	W48
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W48
	.byte		        An3 
	.byte	W48
@ 055   ----------------------------------------
	.byte	W48
	.byte		        Fs3 
	.byte	W48
@ 056   ----------------------------------------
	.byte	W36
	.byte		N06   , An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N24   , An2 
	.byte	W24
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
@ 057   ----------------------------------------
	.byte	W12
	.byte	FINE

@**************** Track 9 (Midi-Chn.9) ****************@

mus_scars_of_time_9:
	.byte		VOL   , 127*mus_scars_of_time_mvl/mxv
	.byte	KEYSH , mus_scars_of_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 56
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
mus_scars_of_time_9_034:
	.byte	W48
	.byte		N36   , Dn4 , v064
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte	PEND
@ 035   ----------------------------------------
	.byte	W48
	.byte		N48   , An3 
	.byte	W48
@ 036   ----------------------------------------
	.byte	W84
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W84
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 039   ----------------------------------------
	.byte	W48
	.byte		N48   , An3 
	.byte	W48
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
	.byte	PATT
	 .word	mus_scars_of_time_9_034
@ 051   ----------------------------------------
mus_scars_of_time_9_051:
	.byte		N48   , Bn3 , v064
	.byte	W48
	.byte		        An3 
	.byte	W48
	.byte	PEND
@ 052   ----------------------------------------
	.byte	W48
	.byte		N36   , Fs3 
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 053   ----------------------------------------
	.byte	W24
	.byte		N24   , Fs3 
	.byte	W72
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_9_034
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_9_051
@ 056   ----------------------------------------
	.byte		N36   , Gn3 , v064
	.byte	W36
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N24   , An3 
	.byte	W24
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 057   ----------------------------------------
	.byte		N12   , En4 , v080
	.byte	W12
	.byte	FINE

@**************** Track 10 (Midi-Chn.10) ****************@

mus_scars_of_time_10:
	.byte		VOL   , 127*mus_scars_of_time_mvl/mxv
	.byte	KEYSH , mus_scars_of_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
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
	.byte	W72
	.byte		TIE   , En2 , v064
	.byte	W24
@ 018   ----------------------------------------
	.byte		N07   , Cn1 
	.byte		N02   , Dn1 
	.byte		N96   , Bn2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Fs2 , v080
	.byte		N06   , As3 , v064
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N08   , Cn1 , v064
	.byte	W02
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N12   , Fs2 , v080
	.byte		N06   , As3 , v064
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Fs2 , v080
	.byte		N06   , As3 , v064
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N12   , Fs2 , v080
	.byte		N06   , As3 , v064
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		EOT   , En2 
@ 019   ----------------------------------------
mus_scars_of_time_10_019:
	.byte		N07   , Cn1 , v064
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Fs2 , v080
	.byte		N06   , As3 , v064
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N08   , Cn1 , v064
	.byte	W02
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N12   , Fs2 , v080
	.byte		N06   , As3 , v064
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Fs2 , v080
	.byte		N06   , As3 , v064
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N12   , Fs2 , v080
	.byte		N06   , As3 , v064
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_10_019
@ 021   ----------------------------------------
mus_scars_of_time_10_021:
	.byte		N07   , Cn1 , v064
	.byte		N06   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Fs2 , v080
	.byte		N06   , As3 , v064
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N08   , Cn1 , v064
	.byte	W02
	.byte		N06   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N04   , Cs1 , v080
	.byte		N12   , Fs2 
	.byte		N06   , As3 , v064
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N03   , Cs1 
	.byte	W02
	.byte		N06   , As3 , v064
	.byte	W01
	.byte		N04   , Cs1 , v080
	.byte	W05
	.byte		N06   
	.byte		N06   , As3 , v064
	.byte	W06
	.byte		        Cs1 , v080
	.byte		N06   , As3 , v064
	.byte	W06
	.byte		N12   , Fs2 , v080
	.byte		N06   , As3 , v064
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N06   , Cs1 
	.byte		N06   , As3 , v064
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N24   , Cs1 , v080
	.byte		N06   , As3 , v064
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , Fs2 , v080
	.byte		N06   , As3 , v064
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N06   , As3 , v064
	.byte	W06
	.byte	PEND
@ 022   ----------------------------------------
mus_scars_of_time_10_022:
	.byte		N07   , Cn1 , v064
	.byte		N02   , Dn1 
	.byte		N24   , Bn2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Fs2 , v080
	.byte		N06   , As3 , v064
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N08   , Cn1 , v064
	.byte	W02
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N12   , Fs2 , v080
	.byte		N06   , As3 , v064
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Fs2 , v080
	.byte		N06   , As3 , v064
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N12   , Fs2 , v080
	.byte		N06   , As3 , v064
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_10_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_10_022
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_10_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_10_019
@ 027   ----------------------------------------
mus_scars_of_time_10_027:
	.byte		N07   , Cn1 , v064
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N08   , Cn1 , v064
	.byte	W02
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte	PEND
@ 028   ----------------------------------------
mus_scars_of_time_10_028:
	.byte		N07   , Cn1 , v064
	.byte		N02   , Dn1 
	.byte		N24   , Bn2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N08   , Cn1 , v064
	.byte	W02
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte	PEND
@ 029   ----------------------------------------
mus_scars_of_time_10_029:
	.byte		N07   , Cn1 , v064
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N08   , Cn1 , v064
	.byte	W02
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N04   , Cs1 , v080
	.byte		N06   , As3 , v064
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N03   , Cs1 
	.byte	W02
	.byte		N06   , As3 , v064
	.byte	W01
	.byte		N04   , Cs1 , v080
	.byte	W05
	.byte		N06   
	.byte		N06   , As3 , v064
	.byte	W06
	.byte		        Cs1 , v080
	.byte		N06   , As3 , v064
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N06   , Cs1 
	.byte		N06   , As3 , v064
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N24   , Cs1 , v080
	.byte		N06   , As3 , v064
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N06   , As3 , v064
	.byte	W06
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_10_028
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_10_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_10_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_10_029
@ 034   ----------------------------------------
	.byte		N07   , Cn1 , v064
	.byte		N02   , Dn1 
	.byte		N24   , Bn2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N08   , Cn1 , v064
	.byte	W02
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
@ 035   ----------------------------------------
mus_scars_of_time_10_035:
	.byte		N07   , Cn1 , v064
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N24   , Bn2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N08   , Cn1 , v064
	.byte	W02
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte	PEND
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_10_035
@ 037   ----------------------------------------
	.byte		N07   , Cn1 , v064
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N24   , Bn2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N08   , Cn1 , v064
	.byte	W02
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_10_035
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_10_035
@ 040   ----------------------------------------
mus_scars_of_time_10_040:
	.byte		N07   , Cn1 , v064
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N08   , Cn1 , v064
	.byte	W02
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte	PEND
@ 041   ----------------------------------------
	.byte		N07   , Cn1 
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N24   , Bn2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N08   , Cn1 , v064
	.byte	W02
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		TIE   , En2 
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
@ 042   ----------------------------------------
	.byte	W96
	.byte		EOT   , En2 
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
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte	W12
	.byte		N18   
	.byte	W12
	.byte		N06   , As3 , v104
	.byte	W06
	.byte		N01   , Cs1 , v127
	.byte		N06   , As3 , v104
	.byte	W01
	.byte		N01   , Cs1 , v127
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N06   
	.byte		N06   , Fs2 , v104
	.byte		N06   , As3 
	.byte	W06
	.byte		        Cs1 , v127
	.byte		N06   , Fs2 , v104
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N06   , Fs2 , v104
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N24   , Cs1 , v127
	.byte		TIE   , En2 , v104
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 
	.byte	W12
@ 050   ----------------------------------------
	.byte		N07   , Cn1 , v064
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N24   , Bn2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N08   , Cn1 , v064
	.byte	W02
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		EOT   , En2 
@ 051   ----------------------------------------
	.byte		N07   , Cn1 
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N08   , Cn1 , v064
	.byte	W02
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
@ 052   ----------------------------------------
	.byte		N07   , Cn1 
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N08   , Cn1 , v064
	.byte	W02
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
@ 053   ----------------------------------------
	.byte		N07   , Cn1 
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N08   , Cn1 , v064
	.byte	W02
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N04   , Cs1 , v080
	.byte		N06   , As3 , v064
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N03   , Cs1 
	.byte	W02
	.byte		N06   , As3 , v064
	.byte	W01
	.byte		N04   , Cs1 , v080
	.byte	W05
	.byte		N06   
	.byte		N06   , Fs2 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		        Cs1 , v080
	.byte		N06   , Fs2 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N06   , Cs1 
	.byte		N06   , Fs2 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N24   , Cs1 , v080
	.byte		N24   , Fs2 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N06   , As3 , v064
	.byte	W06
@ 054   ----------------------------------------
	.byte		N07   , Cn1 
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N08   , Cn1 , v064
	.byte	W02
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
@ 055   ----------------------------------------
	.byte		N07   , Cn1 
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte		N12   , Gs4 , v080
	.byte	W04
	.byte		N08   , Cn1 , v064
	.byte	W02
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N24   , Fs2 
	.byte		N06   , As3 
	.byte	W06
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N02   , Dn1 
	.byte		N06   , As3 
	.byte		N12   , Gs4 , v080
	.byte	W06
	.byte		N02   , Dn1 , v064
	.byte		N06   , As3 
	.byte	W06
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_10_040
@ 057   ----------------------------------------
	.byte		N12   , Cn1 , v080
	.byte		N12   , Dn1 
	.byte		N12   , Fs2 
	.byte		N12   , As3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte	FINE

@**************** Track 11 (Midi-Chn.11) ****************@

mus_scars_of_time_11:
	.byte		VOL   , 127*mus_scars_of_time_mvl/mxv
	.byte	KEYSH , mus_scars_of_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 57
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
	.byte	W30
	.byte		N06   , Bn1 , v076
	.byte	W18
	.byte		N18   , En1 
	.byte	W48
@ 019   ----------------------------------------
	.byte		N18   
	.byte	W30
	.byte		N06   , Bn1 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W24
@ 020   ----------------------------------------
	.byte		N18   , En1 
	.byte	W18
	.byte		N06   , En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N18   , En1 
	.byte	W18
	.byte		N06   , En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N18   , En1 
	.byte	W18
	.byte		N06   , En2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 022   ----------------------------------------
mus_scars_of_time_11_022:
	.byte	W12
	.byte		N02   , En2 , v076
	.byte		N02   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		N06   , Bn1 
	.byte	W18
	.byte		N18   , En1 
	.byte	W12
	.byte		N02   , En2 
	.byte		N02   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
	.byte	W12
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		N06   , Bn1 
	.byte	W18
	.byte		N12   , En1 
	.byte	W12
	.byte		N02   , En2 
	.byte	W36
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_11_022
@ 025   ----------------------------------------
	.byte	W12
	.byte		N02   , En2 , v076
	.byte		N02   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W06
	.byte		        En2 
	.byte	W18
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N02   , En2 
	.byte	W36
@ 026   ----------------------------------------
	.byte	W12
	.byte		N02   
	.byte		N02   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W36
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W12
	.byte		        En2 
	.byte	W24
@ 027   ----------------------------------------
mus_scars_of_time_11_027:
	.byte	W12
	.byte		N02   , En2 , v076
	.byte		N02   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W72
	.byte	PEND
@ 028   ----------------------------------------
mus_scars_of_time_11_028:
	.byte	W12
	.byte		N02   , En2 , v076
	.byte		N02   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W36
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W36
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_11_027
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_11_028
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_11_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_11_028
@ 033   ----------------------------------------
	.byte	W12
	.byte		N02   , En2 , v076
	.byte		N02   , En3 
	.byte	W12
	.byte		        En2 
	.byte	W72
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
	.byte	W48
	.byte		N18   , En1 
	.byte	W48
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
	.byte	W72
	.byte		N06   , An2 
	.byte	W24
@ 051   ----------------------------------------
	.byte	W30
	.byte		        Dn3 
	.byte	W66
@ 052   ----------------------------------------
	.byte	W72
	.byte		        An2 
	.byte	W24
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W72
	.byte		N06   
	.byte	W24
@ 055   ----------------------------------------
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Fs2 
	.byte	W06
	.byte		N06   
	.byte	W66
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W12
	.byte	FINE

@**************** Track 12 (Midi-Chn.12) ****************@

mus_scars_of_time_12:
	.byte		VOL   , 127*mus_scars_of_time_mvl/mxv
	.byte	KEYSH , mus_scars_of_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 58
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
mus_scars_of_time_12_018:
	.byte	W24
	.byte		N04   , Dn1 , v076
	.byte	W48
	.byte		N04   
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
	.byte		N18   , En0 
	.byte	W24
	.byte		N04   , Dn1 
	.byte	W24
	.byte		N18   , En0 
	.byte	W24
	.byte		N04   , Dn1 
	.byte	W24
@ 020   ----------------------------------------
	.byte		N18   , En0 
	.byte	W24
	.byte		N04   , Dn1 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N18   , En0 
	.byte	W18
	.byte		N06   , En1 
	.byte	W06
	.byte		N04   , Dn1 
	.byte	W24
@ 021   ----------------------------------------
	.byte		N18   , En0 
	.byte	W24
	.byte		N04   , Dn1 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N18   , En0 
	.byte	W18
	.byte		N06   , En1 
	.byte	W06
	.byte		N04   , Dn1 
	.byte	W12
	.byte		N04   
	.byte	W12
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_12_018
@ 023   ----------------------------------------
	.byte	W24
	.byte		N04   , Dn1 , v076
	.byte	W72
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_12_018
@ 025   ----------------------------------------
	.byte	W24
	.byte		N04   , Dn1 , v076
	.byte	W72
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
	.byte	W72
	.byte		N06   , An1 
	.byte	W24
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W72
	.byte		N06   
	.byte	W24
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W72
	.byte		N06   
	.byte	W24
@ 055   ----------------------------------------
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W72
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W12
	.byte	FINE

@**************** Track 13 (Midi-Chn.13) ****************@

mus_scars_of_time_13:
	.byte		VOL   , 127*mus_scars_of_time_mvl/mxv
	.byte	KEYSH , mus_scars_of_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 9
	.byte	W24
	.byte		N24   , Dn5 , v064
	.byte		N24   , Dn6 
	.byte	W72
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W24
	.byte		        Dn5 
	.byte		N24   , Dn6 
	.byte	W72
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
	.byte	W12
	.byte	FINE

@**************** Track 14 (Midi-Chn.14) ****************@

mus_scars_of_time_14:
	.byte		VOL   , 127*mus_scars_of_time_mvl/mxv
	.byte	KEYSH , mus_scars_of_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 25
	.byte		N12   , En1 , v064
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 001   ----------------------------------------
mus_scars_of_time_14_001:
	.byte		N12   , En1 , v064
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_001
@ 003   ----------------------------------------
	.byte		N12   , En1 , v064
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N48   , En2 
	.byte		N48   , Bn2 
	.byte		N48   , En3 
	.byte	W48
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_001
@ 006   ----------------------------------------
mus_scars_of_time_14_006:
	.byte		N12   , Cn2 , v064
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_006
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_001
@ 009   ----------------------------------------
	.byte		N12   , En1 , v064
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 010   ----------------------------------------
mus_scars_of_time_14_010:
	.byte		N12   , Fn1 , v064
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   , Gn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N12   
	.byte		N12   , Gn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_010
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_001
@ 013   ----------------------------------------
	.byte		N12   , En1 , v064
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 014   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , Fs2 
	.byte		N12   , An2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N36   , En3 
	.byte	W36
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 017   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		N04   , Dn2 
	.byte		N04   , Bn2 
	.byte		N04   , Dn3 
	.byte	W12
	.byte		N36   , En2 
	.byte		N36   , Cn3 
	.byte		N36   , En3 
	.byte	W36
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 018   ----------------------------------------
mus_scars_of_time_14_018:
	.byte		N06   , En1 , v064
	.byte		N06   , An1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Bn1 
	.byte	W12
	.byte		N12   , En1 
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Cn2 
	.byte	W12
	.byte		N12   , En1 
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
mus_scars_of_time_14_019:
	.byte		N06   , En1 , v064
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N12   , En1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , An1 
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_018
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_018
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_019
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_018
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_019
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_018
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_019
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_018
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_019
@ 034   ----------------------------------------
	.byte		N12   , En1 , v064
	.byte		N12   , Gn1 
	.byte		N12   , Cn2 
	.byte	W18
	.byte		N06   , En1 
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte		N12   , Fs2 
	.byte	W18
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
@ 035   ----------------------------------------
mus_scars_of_time_14_035:
	.byte		N12   , En1 , v064
	.byte		N12   , Gn1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W18
	.byte		N06   , En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , En1 
	.byte		N12   , Gn1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W18
	.byte		N06   , En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte	PEND
@ 036   ----------------------------------------
mus_scars_of_time_14_036:
	.byte		N12   , En1 , v064
	.byte		N12   , Gn1 
	.byte	W18
	.byte		N06   , En1 
	.byte	W06
	.byte		N06   
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte		N12   , Fs2 
	.byte	W18
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte	PEND
@ 037   ----------------------------------------
	.byte		N12   , En1 
	.byte		N12   , Gn1 
	.byte	W18
	.byte		N06   , En1 
	.byte	W06
	.byte		N06   
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte	W06
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_036
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_035
@ 040   ----------------------------------------
	.byte		N06   , En1 , v064
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte	W06
@ 041   ----------------------------------------
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte	W06
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
	.byte	W12
	.byte		N12   , En1 
	.byte		N12   , Gn1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , Gn1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		N04   , En1 
	.byte		N04   , Gn1 
	.byte		N04   , Bn1 
	.byte		N04   , En2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W12
@ 050   ----------------------------------------
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte	W12
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte	W12
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W12
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W12
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
@ 051   ----------------------------------------
mus_scars_of_time_14_051:
	.byte		N06   , En1 , v064
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte	PEND
@ 052   ----------------------------------------
mus_scars_of_time_14_052:
	.byte		N06   , En1 , v064
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W12
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W12
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte	PEND
@ 053   ----------------------------------------
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W12
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_052
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_14_051
@ 056   ----------------------------------------
	.byte		N06   , En1 , v064
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Gn1 
	.byte		N06   , Cn2 
	.byte		N06   , En2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Fs2 
	.byte	W06
@ 057   ----------------------------------------
	.byte		N12   , En1 , v080
	.byte		N12   , Gn1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte	FINE

@**************** Track 15 (Midi-Chn.15) ****************@

mus_scars_of_time_15:
	.byte		VOL   , 127*mus_scars_of_time_mvl/mxv
	.byte	KEYSH , mus_scars_of_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 35
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W24
	.byte		N07   , Fs2 , v076
	.byte	W07
	.byte		N08   , Gn2 
	.byte	W09
	.byte		        Fs2 
	.byte	W08
	.byte		TIE   , En2 
	.byte	W48
@ 003   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 004   ----------------------------------------
mus_scars_of_time_15_004:
	.byte		N84   , En0 , v088
	.byte	W84
	.byte		N12   , Bn0 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte		N60   , En0 
	.byte	W60
	.byte		N12   , En1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        En0 
	.byte	W12
@ 006   ----------------------------------------
mus_scars_of_time_15_006:
	.byte		N84   , Cn1 , v088
	.byte	W84
	.byte		N12   , Gn0 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte		N60   , Cn1 
	.byte	W60
	.byte		N12   , An1 
	.byte	W12
	.byte		N24   , En1 
	.byte	W24
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_004
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_006
@ 011   ----------------------------------------
	.byte		N96   , Cn1 , v088
	.byte	W96
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_004
@ 013   ----------------------------------------
	.byte		N72   , En0 , v088
	.byte	W72
	.byte		N12   , Gn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
@ 014   ----------------------------------------
mus_scars_of_time_15_014:
	.byte		N48   , Gn0 , v088
	.byte	W48
	.byte		        Dn1 
	.byte	W48
	.byte	PEND
@ 015   ----------------------------------------
	.byte		N36   , En1 
	.byte	W36
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N48   , Cn1 
	.byte	W48
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_014
@ 017   ----------------------------------------
	.byte		N72   , Cn1 , v088
	.byte	W72
	.byte		N12   , En0 
	.byte	W12
	.byte		        Dn0 
	.byte	W12
@ 018   ----------------------------------------
mus_scars_of_time_15_018:
	.byte		N18   , En0 , v104
	.byte	W18
	.byte		N06   , En1 
	.byte	W12
	.byte		        Bn0 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N18   , En0 
	.byte	W18
	.byte		N06   , En1 
	.byte	W12
	.byte		        Bn0 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_scars_of_time_15_019:
	.byte		N18   , En0 , v104
	.byte	W18
	.byte		N06   , En1 
	.byte	W12
	.byte		        Bn0 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_018
@ 021   ----------------------------------------
mus_scars_of_time_15_021:
	.byte		N18   , En0 , v104
	.byte	W18
	.byte		N06   , En1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_018
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_018
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_021
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_018
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_019
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_018
@ 033   ----------------------------------------
	.byte		N18   , En0 , v104
	.byte	W18
	.byte		        Bn0 
	.byte	W18
	.byte		N12   , En1 
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N06   , Bn0 
	.byte	W06
	.byte		N12   , En0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
@ 034   ----------------------------------------
mus_scars_of_time_15_034:
	.byte		N18   , Cn1 , v104
	.byte	W18
	.byte		        Gn0 
	.byte	W18
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N18   , Dn1 
	.byte	W18
	.byte		        An0 
	.byte	W18
	.byte		N12   , Dn1 
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
	.byte		N18   , En1 
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N18   , En0 
	.byte	W18
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Bn0 
	.byte	W06
	.byte		N12   , En0 
	.byte	W12
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_034
@ 037   ----------------------------------------
	.byte		N18   , En1 , v104
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N18   , En0 
	.byte	W18
	.byte		        Bn0 
	.byte	W18
	.byte		N12   , En0 
	.byte	W12
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_034
@ 039   ----------------------------------------
	.byte		N18   , En1 , v104
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N18   , En0 
	.byte	W18
	.byte		        En1 
	.byte	W18
	.byte		N12   , Bn1 
	.byte	W12
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_034
@ 041   ----------------------------------------
	.byte		N18   , En1 , v104
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N18   , En0 
	.byte	W18
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Bn0 
	.byte	W06
	.byte		        En0 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
@ 042   ----------------------------------------
mus_scars_of_time_15_042:
	.byte		N48   , Cn1 , v104
	.byte	W48
	.byte		        Dn1 
	.byte	W48
	.byte	PEND
@ 043   ----------------------------------------
mus_scars_of_time_15_043:
	.byte		N72   , En1 , v104
	.byte	W72
	.byte		N24   , Dn1 
	.byte	W24
	.byte	PEND
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_042
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_043
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_042
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_043
@ 048   ----------------------------------------
	.byte		N36   , Cn1 , v104
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N48   , Dn1 
	.byte	W48
@ 049   ----------------------------------------
	.byte		N12   , En0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W18
	.byte		        Dn2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 050   ----------------------------------------
mus_scars_of_time_15_050:
	.byte		N18   , Cn1 , v104
	.byte	W18
	.byte		        Gn1 
	.byte	W18
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N24   , Dn1 
	.byte	W24
	.byte		N06   , An1 
	.byte	W06
	.byte		        Dn1 
	.byte	W18
	.byte	PEND
@ 051   ----------------------------------------
	.byte		N12   , En1 
	.byte	W18
	.byte		        Bn1 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		N18   , En2 
	.byte	W18
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W18
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_050
@ 053   ----------------------------------------
	.byte		N12   , En0 , v104
	.byte	W18
	.byte		        Bn0 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N24   , En1 
	.byte	W24
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_scars_of_time_15_050
@ 055   ----------------------------------------
	.byte		N06   , En1 , v104
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 056   ----------------------------------------
	.byte		N18   , Cn1 
	.byte	W18
	.byte		        Gn1 
	.byte	W18
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N18   , Dn1 
	.byte	W18
	.byte		        An1 
	.byte	W18
	.byte		N12   , Dn1 
	.byte	W12
@ 057   ----------------------------------------
	.byte		        En1 , v127
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

mus_scars_of_time:
	.byte	15	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_scars_of_time_pri	@ Priority
	.byte	mus_scars_of_time_rev	@ Reverb.

	.word	mus_scars_of_time_grp

	.word	mus_scars_of_time_1
	.word	mus_scars_of_time_2
	.word	mus_scars_of_time_3
	.word	mus_scars_of_time_4
	.word	mus_scars_of_time_5
	.word	mus_scars_of_time_6
	.word	mus_scars_of_time_7
	.word	mus_scars_of_time_8
	.word	mus_scars_of_time_9
	.word	mus_scars_of_time_10
	.word	mus_scars_of_time_11
	.word	mus_scars_of_time_12
	.word	mus_scars_of_time_13
	.word	mus_scars_of_time_14
	.word	mus_scars_of_time_15

	.end
